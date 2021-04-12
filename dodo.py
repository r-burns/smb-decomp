from doit import get_var, create_after
from pathlib import Path
import subprocess
import sys
import shutil

sys.path.append('doit')
from parsemk import parse_mk_dependencies
from toolchain import ToolChain
from config import Config
from pathutil import append_suffix, up_one_dir


############ Configuration ###########################
# Read CLI options to configure this build
config = Config(
    Path('build'), # Location for build artifacts
    Path('game'),  # Location for all game source files
    Path('tools')  # Location for supporting tool binaries and scripts
)
# Toolchain (cc, as, ld, objcopy) based on user config
tc = ToolChain.from_config(config)

DOIT_CONFIG = {
    'default_tasks': [
        'print_config', 
        'compare' if not config.no_match else 'build_rom'
    ], 
    'reporter': 'executed-only'
}

########## Tools #####################################
# General System Utilities
shasum = 'shasum'

# Rust Tooling
rust_dir = config.tools / 'rust'
rust_manifest = rust_dir / 'Cargo.toml'
rust_output_dir = rust_dir / 'target' / 'release'
n64gfx = rust_output_dir / 'n64gfx'
imgbank = rust_output_dir / 'imgbank'
restool = rust_output_dir / 'resources'
extract = rust_output_dir / 'extract'
rust_tools = [n64gfx, imgbank, restool, extract]

def task_rust_tools():
    ''' Use cargo to check and rebuild rust based tools '''
    cargo_build = ['cargo', 'build', '--release', '--manifest-path', rust_manifest]
    outputs = []
    for tool in rust_tools:
        name = tool.name
        cargo_build.extend(['-p', name])
        outputs.append(tool)

    return {
        'actions': [cargo_build],
        'targets': outputs
    }

# Libultra 64bit mips3 Patcher
patcher_src = config.tools / 'patch_libultra_math.c'
patcher = patcher_src.with_suffix('')

def task_libultra_patcher():
    ''' Build the libultra math pather tool '''
    flags = ['-I', '.', '-Wall', '-Wextra', '-Wno-unused-parameter', '-pedantic', '-O2']
    compile = tc.system.c.CC + flags + ['-o', patcher, patcher_src]

    return {
        'actions': [compile],
        'targets': [patcher],
        'file_dep': [patcher_src],
    }

# Ido Recompiled Toolchain
recomp = config.tools / 'recomp'
recomp_base = config.tools / 'ido-recomp'
recomp_src = recomp_base / 'recomp.cpp'
irix_root = config.tools / 'irix'
irix_53 = irix_root / 'ido5.3'
irix_71 = irix_root / 'ido7.1'
irix_lib = Path('usr/lib')
irix_bin = Path('usr/bin')

recomp_53_out = config.tools / 'ido5.3'
recomp_71_out = config.tools / 'ido7.1'

# Irix libc wrapper library
recomp_libc = recomp_base / 'libc_impl.c'
recomp_libc_h = recomp_libc.with_suffix('.h')
recomp_libc_flags = ['-fno-strict-aliasing', '-O2']

# (Prog, Irix Bin/Lib Path, Recomp Flags, Build Flags)
common_flags = ['-fno-strict-aliasing', '-fno-pie', '-lm']
ido53_progs = [
    ('as',   irix_53 / irix_lib / 'as',   [], common_flags + ['-O2']),
    ('as0',  irix_53 / irix_lib / 'as0',  [], common_flags + ['-O2']),
    ('as1',  irix_53 / irix_lib / 'as1',  [], common_flags + ['-O2']),
    ('cc',   irix_53 / irix_bin / 'cc',   [], common_flags + ['-O2']),
    ('cfe',  irix_53 / irix_lib / 'cfe',  [], common_flags + ['-O2']),
    ('ugen', irix_53 / irix_lib / 'ugen', ['--conservative'], common_flags + ['-O2']),
    ('ujoin', irix_53 / irix_lib / 'ujoin', [], common_flags + ['-O2']),
    ('uld', irix_53 / irix_lib / 'uld', [], common_flags + ['-O2']),
    ('umerge', irix_53 / irix_lib / 'umerge', [], common_flags + ['-O2']),
    ('uopt', irix_53 / irix_lib / 'uopt', [], common_flags + ['-O2']),
    ('usplit', irix_53 / irix_lib / 'usplit', [], common_flags + ['-O2']),
]

ido71_progs = [
    ('as1',  irix_71 / irix_lib / 'as1',  [], common_flags + ['-O2']),
    ('cc',   irix_71 / irix_bin / 'cc',   [], common_flags + ['-O2']),
    ('cfe',  irix_71 / irix_lib / 'cfe',  [], common_flags + ['-O2']),
    ('ugen', irix_71 / irix_lib / 'ugen', [], common_flags + ['-O2']),
    ('uopt', irix_71 / irix_lib / 'uopt', [], common_flags + ['-O2']),
]

# (name, programs, output directory, version defines, error strings)
ido_toolchains = [
    ('ido5.3', ido53_progs, recomp_53_out, '-DIDO53', irix_53/irix_lib/'err.english.cc'),
    ('ido7.1', ido71_progs, recomp_71_out, '-DIDO71', irix_71/irix_lib/'err.english.cc')
]

# Recompiled binaries
ido71_tools = [recomp_71_out / p[0] for p in ido71_progs]
ido53_tools = [recomp_53_out / p[0] for p in ido53_progs]

def task_build_recomp():
    ''' Build the IDO recompiler tool '''
    return {
        'actions': [tc.system.cxx.CXX + [recomp_src, '-o', recomp, '-O2', '-std=c++11', '-lcapstone']],
        'file_dep': [recomp_src],
        'targets': [recomp],
    }

def task_recompile_ido():
    ''' Translate IDO toolchain (5.3, 7.1) into native binaries '''
    CC = tc.system.c.CC

    for (name, programs, out_dir, libc_defs, errstr) in ido_toolchains:
        libc = out_dir / 'libc_impl.o'
        mkdir_task = f'recompile_ido:{name}-create-output-dir'
        errstr_dst = out_dir / errstr.name

        yield {
            'name': name + '-create-output-dir',
            'actions': [['mkdir', '-p', out_dir]],
            'targets': [out_dir],
            'uptodate': [out_dir.exists()],
        }

        yield {
            'name': name + '-libc',
            'actions': [CC + recomp_libc_flags + ['-c', recomp_libc, libc_defs, '-o', libc]],
            'targets': [libc],
            'file_dep': [recomp_libc, recomp_libc_h],
            'task_dep': [mkdir_task]
        }

        yield {
            'name': name + '-copy-error-strings',
            'actions': [['cp', '-f', errstr, errstr_dst]],
            'targets': [errstr_dst],
            'file_dep': [errstr]
        }

        for (prog, src, recomp_flags, build_flags) in programs:
            rf = " ".join(recomp_flags)
            prog_exe = out_dir / prog
            prog_c = prog_exe.with_suffix('.c')
            yield {
                'name': name + '-translate-' + prog,
                'actions': [f'{recomp} {rf} {src} > {prog_c}'],
                'targets': [prog_c],
                'file_dep': [src, recomp],
                'task_dep': [mkdir_task]
            }

            yield {
                'name': name + '-compile-' + prog,
                'actions': [CC + build_flags + [libc, prog_c, '-o', prog_exe, '-I', recomp_base]],
                'targets': [prog_exe],
                'file_dep': [libc, prog_c, errstr_dst],
                'task_dep': [mkdir_task]
            }

def task_clean_recompiled_ido():
    return {
        'actions': [['rm', '-rf', recomp_53_out, recomp_71_out, recomp]]
    }

########## Housekeeping ##############################
def task_distclean():
    ''' Remove all possible build artifacts '''

    # Asset removal must happen before tool cleaning
    return {
        'actions': [
            f'rm -rf {config.all_builds}',
            f'rm -rf {patcher}',
            f'cargo clean --manifest-path {rust_manifest}',
        ],
        'task_dep': [
            'clean_recompiled_ido',
            'clean_assets',
        ],
    }

def task_print_config():
    ''' Print build config info to stdout '''
    info = str(config) #+ str(tc)

    return {
        'actions': [['echo', info]],
        'verbosity': 2,
    }

########## Asset Extraction ##########################
asset_cache = Path('.localassets')
assets = Path('assets.toml')
extracted_assets = config.build_dir / 'extracted-assets.txt'
baserom = Path(f'baserom.{config.version}.z64')

def task_generate_asset_list():
    ''' Create a list of assets that are extracted from the baserom '''
    list_assets = [ extract,
        'list',
        '-v', config.version,
        '-r', baserom,
        '-a', assets,
        '-o', extracted_assets,
    ]

    return {
        'actions': [list_assets],
        'file_dep': [extract, baserom, assets],
        'targets': [extracted_assets],
    }

@create_after(executed='generate_asset_list', target_regex='*')
def task_extract_assets():
    ''' Extract necessary assets from SSB64 baserom '''

    extract_cmd = [ extract,
        'extract',
        '-a', assets,
        '-l', asset_cache,
        '-r', baserom,
        '-v', config.version
    ]

    files = []
    try:
        with open(extracted_assets) as f:
            files = [line.strip() for line in f]
    except FileNotFoundError:
        # doit will only create this task after making the list if 
        # there is an active run. For other commands (list, info, etc.),
        # it create this task as normal
        pass
    
    return {
        'actions': [extract_cmd],
        'file_dep': [extract, baserom, assets, asset_cache, extracted_assets],
        'targets': files,
    }

def task_clean_assets():
    clean_cmd = [ extract, 'clean', asset_cache ]
    remove_list = [ 'rm', '-f', extracted_assets ]

    return {
        'actions': [clean_cmd, remove_list],
        'file_dep': [extract],
        'uptodate': [False],
    }

def ensure_asset_extraction():
    ''' Return the asset extraction task name if assets are not yet extracted '''
    assets_are_extracted = asset_cache.exists() and extracted_assets.exists()

    return [] if assets_are_extracted else ['extract_assets']

########## ROM Linking and Creation ##################
# ROM and Build Artifacts
rom_name = f"ssb64.{config.target_version}"
rom_elf = config.build_dir / (rom_name + '.elf')
rom_map = rom_elf.with_suffix('.map')
rom = rom_elf.with_suffix('.z64')

# Assembly Files
# TODO: move into assembly section once there are no more unresolved symbols
asm_dir = config.game_dir / 'asm'
s_files = list(asm_dir.rglob('*.s'))
s_objs = list(map(lambda f: config.to_output(f, '.o'), s_files))

# Linker Scripts
ssb_lds_in = config.game_dir / 'ssb64.in.ld'
ssb_lds = config.to_output(ssb_lds_in.with_name('ssb64'), ".ld")
unk_symbols = list(asm_dir.rglob('*.unresolved.ld')) + [
    config.game_dir / 'hardware-registers.ld',
    config.game_dir / 'not-found-sym.ld',
]

def task_compare():
    ''' Build SS64 ROM and compare to known sha1 checksum '''
    chksum = Path(rom_name + '.sha1')

    return {
        'actions': [[shasum, '-c', chksum]],
        'task_dep': ['build_rom'],
        'uptodate': [False],
        'verbosity': 2,
    }

libultra_exports = [
    '-u', 'spHide',
    '-u', 'spShow',
    '-u', 'spScale',
]

def task_build_rom():
    """ Build the ROM """

    binutils = tc.game.utils
    ssb64_d, linking_deps = get_make_dependencies(ssb_lds, rom_elf)
 
    link_rom = binutils.LD + [
        '--no-check-sections', 
        '-Map', rom_map, 
        '-T', ssb_lds, 
        '-T' ] + unk_symbols + [
        '-o', rom_elf, 
        '-L', config.build_dir, 
        '-lultra'] + libultra_exports + [
        f'--dependency-file={ssb64_d}'
    ]
    
    copy_rom = binutils.OBJCOPY + [
        '--pad-to=0x1000000', 
        '--gap-fill=0xFF', 
        '-O', 'binary', 
        rom_elf, rom
    ]

    return { 
        'actions': [link_rom, copy_rom],
        'file_dep': linking_deps,
        'task_dep': [
            'assemble',
            'cc', 
            'libultra',
            'link_resources',
            'link_sprite_bank',
            'temp_bin_obj'
        ],
        'targets': [rom_elf, rom_map, rom, ssb64_d],
        'clean': [f'rm -rf {config.all_builds}'],
    }

def task_preprocess_ldscript():
    ''' Run C preprocessor on game ldscript '''
    return {
        'actions': [
            tc.system.CPP + ['-P', '-o', ssb_lds, ssb_lds_in]
        ],
        'file_dep': [ssb_lds_in],
        'targets': [ssb_lds],
    }

########## Game Assembling ###########################
def task_assemble():
    ''' Assemble .s files into .o with dependencies .d '''

    for f, o in zip(s_files, s_objs):
        d, deps = get_make_dependencies(f, o)

        assemble = tc.invoke_as(
            includes = [inc_dir, asm_dir, f.parent],
            depfile = d,
            input = f,
            output = o
        )

        yield {
            'name': o,
            'actions': [assemble],
            'targets': [o, d],
            'file_dep': deps,
            'task_dep': ensure_asset_extraction(),
        }

########## Game C Compiling ##########################
inc_dir = config.game_dir / 'include'
c_dir = config.game_dir / 'src'
c_files = c_dir.rglob('*.c')
#c_objs = list(map(lambda f: config.to_output(f, '.o'), c_files))

def task_cc():
    ''' Compile .c files into .o '''

    includes = [inc_dir, c_dir]
    tools_dep = get_toolchain_deps(config.toolchain)

    for f in c_files:
        o = config.to_output(f, '.o')
        d, deps = get_make_dependencies(f, o)
        
        syntax_check = tc.invoke_cc_check(includes, d, f, o)
        # if the input needs to have asm processed
        if f.name.endswith('.asm.c'):
            actions = [syntax_check] + tc.invoke_asm_prepoc(includes, f, o)
        else:
            actions = [syntax_check, tc.invoke_cc(includes, f, o)]

        yield {
            'name': o,
            'actions': actions,
            'file_dep': deps + tools_dep,
            'targets': [o, d],
        }

def task_fmt():
    ''' Use clang-tidy to format game C source code '''

    from config import ALL_VERSIONS 

    flags  = [
        '--',
        '-fsigned-char', '-fno-builtin',
        '-std=gnu90', '-m32', 
        '-Wno-format-security', '-Wno-main', 
        f'-I{inc_dir}',
        f'-I{c_dir}',
        '-D_LANGUAGE_C','-D_MIPS_SZINT=32', '-D_MIPS_SZLONG=32', '-DF3DEX_GBI_2'
    ]

    tidy = ['clang-tidy', '--fix'] + list(c_dir.rglob('*.c')) + flags

    cmds = [ tidy + [f'-DVERSION_{ver.upper()}'] for ver in ALL_VERSIONS ]

    return {
        'actions' : cmds,
    }

def get_toolchain_deps(tc):
    if tc == "ido5.3":
        return ido53_tools
    elif tc == "ido7.1":
        return ido71_tools
    else:
        return []

########## Libultra ##################################
libultra_includes = inc_dir / 'PR'
libultra_root = config.game_dir / 'libultra'
libultra_a = config.build_dir / 'libultra.a'
libultra_objs = []
# (module, mipsiset, C Opt, ASM Opt)
libultra_srcs = [
    (libultra_root/'gu', ['-mips2', '-32'], '-O3', '-O1'),
    (libultra_root/'gt', ['-mips2', '-32'], '-O3', '-O1'),
    (libultra_root/'rg', ['-mips2', '-32'], '-O3', '-O1'),
    (libultra_root/'sp', ['-mips2', '-32'], '-O3', '-O1'),
    (libultra_root/'sched', ['-mips2', '-32'], '-O3', '-O1'),
    (libultra_root/'audio', ['-mips2', '-32'], '-O3', '-O1'),
    (libultra_root/'libc', ['-mips2', '-32'], '-O3', '-O1'),
    (libultra_root/'io', ['-mips2', '-32'], '-O1', '-O1'),
    (libultra_root/'os', ['-mips2', '-32'], '-O1', '-O1'),
]
# (mipsiset, C Opt, ASM Opt))
libultra_exceptions = {
    libultra_root/'os'/'exceptasm.s': (['-mips3', '-o32'], None, None),
    libultra_root/'io'/'sirawdma.c': (None, '-O2', None),
    libultra_root/'io'/'pimgr.c': (None, '-O2', None),
    libultra_root/'io'/'epirawdma.c': (None, '-O2', None),
    libultra_root/'io'/'aisetfreq.c': (None, '-O2', None),
    libultra_root/'io'/'viswapcontext.c': (None, '-O2', None),
    libultra_root/'io'/'cartrominit.c': (None, '-O2', None),
    libultra_root/'io'/'pfsselectbank.c': (None, '-O2', None),
    libultra_root/'io'/'epirawread.c': (None, '-O2', None),
    libultra_root/'io'/'epirawwrite.c': (None, '-O2', None),
    libultra_root/'libc'/'bcmp.s': (None, None, '-O2'),
    libultra_root/'libc'/'bcopy.s': (None, None, '-O2'),
    libultra_root/'libc'/'bzero.s': (None, None, '-O2'),
    libultra_root/'libc'/'ll.c': (['-mips3', '-o32'], '-O1', None),
    libultra_root/'libc'/'llbit.c': (['-mips3', '-o32'], '-O1', None),
    libultra_root/'libc'/'llcvt.c': (['-mips3', '-o32'], '-O1', None),
}

def task_compile_libultra():
    ''' Build the various C and ASM libultra modules '''
    includes = [inc_dir, libultra_includes]
    tools_dep = get_toolchain_deps(config.libultra)
    # TODO: make tools_dep a global under tools? cc_deps? as_deps? cross_compile_deps?

    for module, mipsiset, c_opt, as_opt in libultra_srcs:
        c_files = module.glob('*.c')
        s_files = module.glob('*.s')
        check_file = lambda f: check_libultra_exceptions(f, mipsiset, c_opt, as_opt)

        for src in c_files:
            out = config.to_output(src, '.o')
            (d, make_deps) = get_make_dependencies(src, out)
            src_mi, src_copt, _ = check_file(src)

            # nice global state manipulation
            libultra_objs.append(out)

            syntax_check = tc.invoke_cc_check(includes, d, src, out)
            compile_src = tc.libultra_cc(includes, src, out, src_mi, src_copt)

            yield {
                'name': out,
                'actions': [syntax_check, compile_src],
                'targets': [out, d],
                'file_dep': make_deps + tools_dep
            }
        
        for src in s_files:
            out = config.to_output(src, '.o')
            # no .d file generation from ido as?
            src_mi, _, src_asopt = check_file(src)

            # nice global state manipulation
            libultra_objs.append(out)

            assemble = tc.libultra_as(includes, src, out, src_mi, src_asopt)

            yield {
                'name': out,
                'actions': [assemble],
                'targets': [out],
                'file_dep': [src] + tools_dep,
            }


def task_libultra():
    ''' Create the libultra archive '''

    AR = tc.libultra.utils.AR
    bundle_archive = AR + ['rcs', '-o', libultra_a] + libultra_objs
    patch = [patcher, libultra_a]

    return {
        'actions': [bundle_archive, patch],
        'targets': [libultra_a],
        'file_dep': libultra_objs + [patcher],
    }

def check_libultra_exceptions(file, mipsiset, copt, asopt):
    ''' check for special instruction set or opt flags for file '''
    possible = libultra_exceptions.get(file)
    if possible is None:
        return (mipsiset, copt, asopt)
    else:
        mb_mi, mb_copt, mb_asopt = possible
        return (
            option_or(mb_mi, mipsiset), 
            option_or(mb_copt, copt),
            option_or(mb_asopt, asopt),
        )

def option_or(a, b):
    if a is None:
        return b
    else:
        return a

def get_make_dependencies(src_file, obj_file):
    ''' (Path to .d file, List[Make Dependancies]) '''
    d = obj_file.with_suffix('.d')
    found_deps = parse_mk_dependencies(d)
    if found_deps is None:
        deps = [src_file]
    else:
        deps = found_deps[obj_file]

    return (d, deps)

########## Resource Table ############################
res_dir = config.game_dir / 'resources'
res_list = res_dir / 'resources.json'

res_link  = config.to_output(res_dir / 'resources.ld', '.ld')
res_archive = res_link.with_suffix('.o')
res_bundle_dir = config.create_output_dir(res_dir / 'bundles')

@create_after(executed='extract_assets', target_regex=res_link)
def task_generate_resources_linkerscript():
    ''' Generate the linkerscript for building the resource files together '''
    return {
        'actions': [
            [restool, 'table', '-i', res_list, '-o', res_link]
        ],
        'file_dep': [restool, res_list],
        'targets': [res_link],
    }

@create_after(executed='extract_assets', target_regex='*.o')
def task_bundle_resources():
    res_tempbins = res_dir.glob('files/raw/*')
    invoke_ld = tc.game.utils.LD + ['-r', '-b', 'binary']

    for f in res_tempbins:
        o = (res_bundle_dir / f.name).with_suffix('.o')
        yield {
            'name': o,
            'actions': [
                invoke_ld + ['-o', o, f],
            ],
            'file_dep': [f],
            'targets': [o],
        }


@create_after(executed='bundle_resources', target_regex=res_archive)
def task_link_resources():
    ''' Link resource files into a relocatable binary for linking '''
    (res_d, deps) = get_make_dependencies(res_link, res_archive)

    # other deps? as passed clousure?
    # resource_temp_o = [config.to_output(f, '.o') for f in res_dir.glob('temp/files/*')]

    link_all_resources = tc.game.utils.LD + [
        '-T', res_link, 
        '-L', res_bundle_dir,
        '-r', 
        '-o', res_archive, 
        f'--dependency-file={res_d}',
    ]

    return {
        # $(LD) -T %f -r -o %o %<resbins> 
        'actions': [link_all_resources],
        'file_dep': deps,
        'task_dep': ['generate_resources_linkerscript'],
        'targets': [res_archive],
    }


########## Sprites ###################################
def gfx_encode_cmd(f, o):
    ''' Assuming `img-name.(format)(bitdepth).png` 
        Returns ([cmd], [outputs])
    '''

    cmd = [n64gfx, 'encode', '-i', f]
    out = [o]
    s = str(f)
    end = s.rfind('.png')
    start = s.rfind('.', 0, end) + 1
    fmt = s[start:end]
    
    if fmt == 'rgba32':
        cmd.extend(['-f', 'rgba', '-d', '32', '-o', o])
    elif fmt == 'rgba16':
        cmd.extend(['-f', 'rgba', '-d', '16', '-o', o])
    elif fmt == 'ci8':
        pal = append_suffix(o, '.pal.bin')
        cmd.extend(['-f', 'ci', '-d', '8', '-o', o, '-p', pal])
        out.append(pal)
    elif fmt == 'ci4':
        pal = append_suffix(o, '.pal.bin')
        cmd.extend(['-f', 'ci', '-d', '4', '-o', o, '-p', pal])
        out.append(pal)
    elif fmt == 'ia16':
        cmd.extend(['-f', 'ia', '-d', '16', '-o', o])
    elif fmt == 'ia8':
        cmd.extend(['-f', 'ia', '-d', '8', '-o', o])
    elif fmt == 'ia4':
        cmd.extend(['-f', 'ia', '-d', '4', '-o', o])
    elif fmt == 'i8':
        cmd.extend(['-f', 'i', '-d', '8', '-o', o])
    elif fmt == 'i4':
        cmd.extend(['-f', 'i', '-d', '4', '-o', o])
    else:
        raise Exception(f"Unknown image format '{fmt}' (from file: {f})")
    
    return (cmd, out)

sprite_dir = config.game_dir / 'sprites'
sprite_output = config.build_dir / 'sprites'

# TODO: list image extensions for target_regex
@create_after(executed='extract_assets', target_regex='*')
def task_convert_sprite_pngs():
    ''' Convert sprite.format.png into sprite.format ''' 

    sprite_pngs = list(sprite_dir.rglob('*.*.png'))

    for png in sprite_pngs:
        o = config.to_output(png, '')
        invocation, outs = gfx_encode_cmd(png, o)

        yield {
            'name': o,
            'actions': [invocation],
            'targets': outs,
            'file_dep': [png, n64gfx],
        }

imgbank_entry_tomls = list(sprite_dir.glob('*/*/*.toml'))
imgbank_entry_s = [config.to_output(f, '.s') for f in imgbank_entry_tomls]
imgbank_entry_o = [up_one_dir(s, '.o') for s in imgbank_entry_s]

def task_pack_sprite_bank_entry():
    ''' Convert a .toml sprite/img bank spec file
        into an gnu as .s file to assemble
    '''

    for (t, s) in zip(imgbank_entry_tomls, imgbank_entry_s):
        yield {
            'name': s,
            'actions': [[imgbank, 'pack-entry', t, '-o', s]],
            'file_dep': [t, imgbank],
            'targets': [s],
        }

def task_assemble_sprite_bank_entry():
    ''' Assemble an sprite bank entry into an object for linking'''

    for (s, o) in zip(imgbank_entry_s, imgbank_entry_o):
        d, deps = get_make_dependencies(s, o)

        assemble_entry = tc.invoke_as(
            includes=[s.parent],
            depfile=d,
            input=s,
            output=o
        )
        yield {
            'name': o,
            'actions': [ assemble_entry ],
            'file_dep': deps,
            'task_dep': ['convert_sprite_pngs'],
            'targets': [o, d],
        }

# These .toml files are perseved in the repo, even though 
# they can be extracted from the baserom
imgbank_tomls = list(sprite_dir.glob('*/*.toml'))
imgbank_ldscripts = list(map(lambda f: config.to_output(f, '.ld'), imgbank_tomls))
imgbank_o = list(map(lambda f: up_one_dir(f, '.o'), imgbank_ldscripts))

def task_generate_sprite_bank_link():
    ''' Create a linkerscript from a sprite bank .toml '''

    for (t, lds) in zip(imgbank_tomls, imgbank_ldscripts):
        yield {
            'name': lds,
            'actions': [[imgbank, 'link', t, '-o', lds]],
            'file_dep': [t, imgbank],
            'targets': [lds],
        }

def task_link_sprite_bank():
    ''' Link together all of the sprite entry objects into a bank object '''

    for (lds, o) in zip(imgbank_ldscripts, imgbank_o):
        
        # only link to entry objects for a given bank
        bank_name = o.stem
        obj_dir = sprite_output / bank_name
        d, deps = get_make_dependencies(lds, o)

        # no relink (want symbols to be resolved)
        link_bank = tc.game.utils.LD + [
            '-T', lds,
            '-L', obj_dir,
            '-o', o,
            f'--dependency-file={d}',
        ]

        yield {
            'name': o,
            'actions': [link_bank],
            'targets': [o, d],
            'file_dep': deps,
            'task_dep': ['assemble_sprite_bank_entry']
        }

########## Audio #####################################

########## Temporary .bin handling ####################
@create_after(executed='extract_assets', target_regex='*.o')
def task_temp_bin_obj():
    ''' Convert a raw binary to a linkable .o file 
        This task should be temporary until all binary files are 
        converted to real source files
    '''

    invoke_ld = tc.game.utils.LD + ['-r', '-b', 'binary']

    temp_audio_bins = config.game_dir.glob('audio/tempbins/*')
    for audio_bin in temp_audio_bins:
        o = config.to_output(up_one_dir(audio_bin), '.o', True)
        yield {
            'name': o,
            'actions': [
                invoke_ld + ['-o', o, audio_bin],
            ],
            'file_dep': [audio_bin],
            'targets': [o],
        }

    

    # res_table = res_dir / 'temp' / 'resource-filetable.bin'
    # res_table_o = config.to_output(up_one_dir(res_table), '.o')
    # yield {
    #     'name': res_table_o,
    #     'actions': [
    #         invoke_ld + ['-o', res_table_o, res_table],
    #     ],
    #     'file_dep': [res_table],
    #     'targets': [res_table_o],
    # }

    temp_sprbank_bins = sprite_dir.glob('*/*.bin')
    for b in temp_sprbank_bins:
        o = config.to_output(up_one_dir(b), '.o')
        yield {
            'name': o,
            'actions': [invoke_ld + ['-o', o, b]],
            'file_dep': [b],
            'targets': [o],
        }
    
    temp_unk_bins = config.game_dir.glob('unknown/tempbins/*')
    for b in temp_unk_bins:
        o = config.to_output(up_one_dir(b), '.o')
        yield {
            'name': o,
            'actions': [invoke_ld + ['-o', o, b]],
            'file_dep': [b],
            'targets': [o],
        }
