from doit import get_var
from pathlib import Path
import subprocess
import sys
import shutil

import extract_assets

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
    'default_tasks': ['compare' if not config.no_match else 'build_rom'], 
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
rust_tools = [n64gfx, imgbank]

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
    ('as1',  irix_53 / irix_lib / 'as1',  [], common_flags + ['-O2']),
    ('cc',   irix_53 / irix_bin / 'cc',   [], common_flags + ['-O2']),
    ('cfe',  irix_53 / irix_lib / 'cfe',  [], common_flags + ['-O2']),
    ('ugen', irix_53 / irix_lib / 'ugen', ['--conservative'], common_flags + ['-O2']),
    ('uopt', irix_53 / irix_lib / 'uopt', [], common_flags + ['-O2']),
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

def task_build_rom():
    """ Build the ROM """

    binutils = tc.game.utils
 
    link_rom = binutils.LD                                                \
        + ['--no-check-sections', '-Map', rom_map, '-T', ssb_lds, '-T', ] \
        + unk_symbols                                                     \
        + ['-o', rom_elf, '-L', config.build_dir]
    
    copy_rom = binutils.OBJCOPY \
        + ['--pad-to=0x1000000', '--gap-fill=0xFF', '-O', 'binary', rom_elf, rom]

    return { 
        'actions': [link_rom, copy_rom],
        'file_dep': [ssb_lds] + unk_symbols + c_objs + s_objs + temp_objs,
        'task_dep': [
            'assemble',
            'cc', 
            'link_resources',
            'link_sprite_bank',
            'temp_bin_obj'
        ],
        'targets': [rom_elf, rom_map, rom],
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

########## Housekeeping ##############################
def task_distclean():
    ''' Remove all possible build artifacts '''

    # Asset removal must happen before tool cleaning
    return {
        'actions': [
            (extract_assets.clean, [None], None),
            f'rm -rf {config.all_builds}',
            f'cargo clean --manifest-path {rust_manifest}',
        ],
        'task_dep': ['clean_recompiled_ido']
    }

########## Game Assembling ###########################
def task_assemble():
    ''' Assemble .s files into .o with dependencies .d '''

    for f, o in zip(s_files, s_objs):
        d = o.with_suffix('.d')
        found_deps = parse_mk_dependencies(d)
        deps = found_deps[o] if found_deps is not None else [f]

        assemble = tc.invoke_as(
            includes = [inc_dir, asm_dir, f.parent],
            depfile = d,
            input = f,
            output = o
        )

        yield {
            'name': o,
            'actions': [assemble],
            'file_dep': deps,
            'targets': [o, d],
        }

########## Game C Compiling ##########################
inc_dir = config.game_dir / 'include'
c_dir = config.game_dir / 'src'
c_files = list(c_dir.rglob('*.c'))
c_objs = list(map(lambda f: config.to_output(f, '.o'), c_files))

def task_cc():
    ''' Compile .c files into .o '''

    includes = [inc_dir, c_dir]
    tools_dep = get_toolchain_deps(config.toolchain)

    for f, o in zip(c_files, c_objs):
        d = o.with_suffix('.d')
        found_deps = parse_mk_dependencies(d)
        deps = found_deps[o] if found_deps is not None else [f]
        
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

def get_toolchain_deps(tc):
    if tc == "ido5.3":
        return ido53_tools
    elif tc == "ido7.1":
        return ido71_tools
    else:
        return []

########## Resource Table ############################
res_dir = config.game_dir / 'resources'
res_tempbins = list(res_dir.glob('temp/files/*'))
res_tempbins_o = list(map(lambda f: config.to_output(f, '.o'), res_tempbins))
res_table = res_dir / 'temp' / 'resource-filetable.bin'
res_table_o = config.to_output(up_one_dir(res_table), '.o')
res_link  = res_dir / 'templink.ld'
res_archive = config.to_output(res_dir / 'resource-files.o', '.o')

def task_link_resources():
    ''' Link resource files into a relocatable binary for linking '''

    return {
        # $(LD) -T %f -r -o %o %<resbins> 
        'actions': [
            tc.game.utils.LD + ['-T', res_link, '-r', '-o', res_archive] + res_tempbins_o
        ],
        'file_dep': [res_link] + res_tempbins_o,
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
sprite_pngs = list(sprite_dir.rglob('*.*.png'))
sprite_bins = list(map(lambda f: config.to_output(f, ''), sprite_pngs))

def task_convert_sprite_pngs():
    ''' Convert sprite.format.png into sprite.format.bin ''' 

    for f, o in zip(sprite_pngs, sprite_bins):
        invocation, outs = gfx_encode_cmd(f, o)

        yield {
            'name': o,
            'actions': [invocation],
            'file_dep': [f, n64gfx],
            'targets': outs,
        }

imgbank_entry_tomls = list(sprite_dir.glob('*/*/*.toml'))
imgbank_entry_s = list(map(lambda f: config.to_output(f, '.s'), imgbank_entry_tomls))
imgbank_entry_o = list(map(lambda f: up_one_dir(f, '.o'), imgbank_entry_s))

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
        d = o.with_suffix('.d')
        found_deps = parse_mk_dependencies(d)
        # No .d file for `f` (not generated yet)
        if found_deps is None:
            deps = [s]
        else:
            deps = found_deps[o]

        invocation = tc.invoke_as(
            includes=[s.parent],
            depfile=d,
            input=s,
            output=o
        )
        yield {
            'name': o,
            'actions': [ invocation ],
            'file_dep': deps,
            'task_dep': ['convert_sprite_pngs'],
            'targets': [o, d],
        }

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
        bank_glob = f'*/{bank_name}/*'
        bank_objs = list(filter(lambda obj: obj.match(bank_glob), imgbank_entry_o))
        obj_dir = sprite_output / bank_name

        # no relink (want symbols to be resolved)
        yield {
            'name': o,
            'actions': [tc.game.utils.LD + ['-d', '-T', lds, '-L', obj_dir, '-o', o]],
            'file_dep': [lds] + bank_objs,
            'targets': [o],
        }

temp_sprbank_bins = list(sprite_dir.glob('*/*.bin'))
temp_sprbank_o = list(
    map(lambda b: config.to_output(up_one_dir(b), '.o'), temp_sprbank_bins)
)

########## Audio #####################################
temp_audio_bins = list(config.game_dir.glob('audio/tempbins/*'))
temp_audio_o = list(map(lambda b: config.to_output(up_one_dir(b), '.o', True), temp_audio_bins))

########## Temporary .bin handling ####################
temp_unk_bins = list(config.game_dir.glob('unknown/tempbins/*'))
temp_unk_o = list(
    map(lambda b: config.to_output(b, '.o'),
    map(up_one_dir, temp_unk_bins))
)

# all temporary objects
temp_objs = temp_sprbank_o + temp_audio_o + temp_unk_o

def task_temp_bin_obj():
    ''' Convert a raw binary to a linkable .o file 
        This task should be temporary until all binary files are 
        converted to real source files
    '''

    invoke_ld = tc.game.utils.LD + ['-r', '-b', 'binary', '-o']

    for b, o in zip(temp_audio_bins, temp_audio_o):
        yield {
            'name': o,
            'actions': [
                invoke_ld + [o, b],
            ],
            'file_dep': [b],
            'targets': [o],
        }
    
    for f, o in zip(res_tempbins, res_tempbins_o):
        yield {
            'name': o,
            'actions': [
                invoke_ld + [o, f],
            ],
            'file_dep': [f],
            'targets': [o],
        }
    
    yield {
        'name': res_table_o,
        'actions': [
            invoke_ld + [res_table_o, res_table],
        ],
        'file_dep': [res_table],
        'targets': [res_table_o],
    }

    for b, o in zip(temp_sprbank_bins, temp_sprbank_o):
        yield {
            'name': o,
            'actions': [invoke_ld + [o, b]],
            'file_dep': [b],
            'targets': [o],
        }
    
    for b, o in zip(temp_unk_bins, temp_unk_o):
        yield {
            'name': o,
            'actions': [invoke_ld + [o, b]],
            'file_dep': [b],
            'targets': [o],
        }
