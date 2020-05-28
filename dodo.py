from doit import get_var
from pathlib import Path
import subprocess
import sys

sys.path.append('utils')
from doit_parsemk import parse_mk_dependencies

DOIT_CONFIG = {'default_tasks': ['compare'], 'reporter': 'executed-only'}

config = {
    'cc': get_var('CC', 'ido'),
    'qemu': get_var('QEMU_IRIX', 'qemu-irix'),
    'version': get_var('VERSION', 'us'),
    'matching': get_var('MATCHING', True),
    'avoid_ub': get_var('AVOID_UB', False),
}

if config['cc'] == 'ido':
    version = config['version']
else:
    version = config['version'] + "-" + config['cc']

# Helper Functions (make module)
def append_suffix(src, ext):
    return src.parent / (src.name + ext)

def to_output_path(src, out_ext, append_sufix=False):
    ''' Take an input Path and convert an output path with
        `out_ext` in the proper build directory
        This will also ensure that the all output directories
        are created
    '''
    t = build_dir.joinpath(src.relative_to(base_dir))
    if append_sufix:
        o = append_suffix(t, out_ext)
    else:
        o = t.with_suffix(out_ext)
    o.parent.mkdir(parents=True, exist_ok=True)

    return o

def up_one_dir(src, out_ext=None):
    ''' Return `src` Path with the file up one directory
        If there is an `out_ext`, the `src` file's extension is changed
    '''
    if not (out_ext is None):
        src = src.with_suffix(out_ext)
    
    gp = src.parents[1]
    return gp.joinpath(src.name)


# Paths and Files
build_base = Path('build')
build_dir = build_base / version
base_dir = Path('game')
inc_dir = base_dir / 'include'
asm_dir = base_dir / 'asm'
c_dir = base_dir / 'src'
unk_symbols = list(asm_dir.rglob('*.unresolved.ld')) + [base_dir / 'hardware-registers.ld', base_dir / 'not-found-sym.ld']

# Tools
tool_dir = Path('tools')
ido5_3 = Path('tools', 'ido5.3')
ido7_1 = tool_dir / 'ido7.1'
n64gfx = tool_dir / 'n64gfx'
imgbank = tool_dir / 'imgbank'
shasum = 'shasum'

rust_tools = [n64gfx, imgbank]
rust_dir = tool_dir / 'rust'
rust_manifest = rust_dir / 'Cargo.toml'
rust_output_dir = rust_dir / 'target' / 'release'

# Setup toolchain (also turn into a module)
cross = 'mips64-elf-' # todo: check for mips-linux-gnu-
# probably turn into a ToolChain class 
if config['cc'] == "ido":
    tc = {
        'cc': [config['qemu'], '-silent', '-L', ido7_1, (ido7_1 / 'usr' / 'bin' / 'cc'), '-c'],
        'cc_flags': ['-G', '0', '-non_shared', '-Xfullwarn', '-Xcpluscomm'],
        'mips_ver': ['-mips2'],
        'as': f"{cross}as",
        'as_flags': ["-march=vr4300", "-mabi=32"],
        'ld': f"{cross}ld",
        'cpp': f"{cross}cpp",
        'objcopy': f"{cross}objcopy",
    }
elif config['cc'] == "gcc":
    tc = {
        'cc': f"{cross}gcc",
        'as': f"{cross}as",
        'ld': f"{cross}ld",
    }
else:
    raise Exception(f"Unsupported toolchain \"{config['cc']}\"")


def task_tools():
    ''' Compile all tooling required for building the ROM '''

    class checkRustUpToDate:
        def __init__(self, bin_path):
            self.path = bin_path
            self.mtime = bin_path.stat().st_mtime
        
        def __call__(self, task, values):
            def save_mtime():
                return {'mtime': self.mtime}
            task.value_savers.append(save_mtime)
            prev_mtime = values.get('mtime', None)
            if prev_mtime is None:
                return False
            return self.path.stat().st_mtime <= prev_mtime

    for prog in rust_tools:
        prog_name = prog.name
        cargo_out = rust_output_dir.joinpath(prog_name)

        yield {
            'name': prog_name,
            'actions': [
                ['cp', cargo_out, prog],
            ],
            'task_dep': [f'run_cargo:{prog_name}'],
            'targets': [prog],
            'uptodate': [checkRustUpToDate(cargo_out)]
        }


def task_run_cargo():
    ''' Run Cargo to check if a rust based tool is outdated '''

    for prog in rust_tools:
        prog_name = prog.name
        cargo_out = rust_output_dir.joinpath(prog_name)

        yield {
            'name': prog_name,
            'actions': [
                ['cargo', 'build', 
                '--release', 
                '--manifest-path', rust_manifest,
                '-p', prog_name
                ]
            ],
            'targets': [cargo_out],
        }


####### Files and Outputs #######
# Linker Scripts
ssb_lds_in = base_dir / 'ssb64.in.ld'
ssb_lds = build_dir / 'ssb64.ld'
# ROM and Build Artifacts
rom_name = f"ssb64.{version}"
rom_elf = build_dir / (rom_name + '.elf')
rom_map = rom_elf.with_suffix('.map')
rom = rom_elf.with_suffix('.z64')

# Assembly Files
s_files = list(asm_dir.rglob('*.s'))
s_objs = list(map(lambda f: to_output_path(f, '.o'), s_files))

# C Files
c_files = list(c_dir.rglob('*.c'))
c_objs = list(map(lambda f: to_output_path(f, '.o'), c_files))

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
    """Build an SSB ROM
    
    Options:
    CC => {ido, gcc}
    QEMU_IRIX => Path to `qemu-irix` binary if not in Path
    VERSION => {us}
    MATCHING => {True, False}
    AVOID_UB => {True, False}
    """
    

    link_rom = [
        tc['ld'], 
        '--no-check-sections',
        '-Map', rom_map,
        '-T', ssb_lds,
        '-T'] + \
        unk_symbols + \
        ['-o', rom_elf,
        '-L', build_dir ]
    
    copy_rom = [
        tc['objcopy'], 
        '--pad-to=0x1000000',
        '--gap-fill=0xFF',
        '-O', 'binary',
        rom_elf,
        rom
    ]

    return { 
        'actions': [link_rom, copy_rom],
        'file_dep': [ssb_lds] + unk_symbols + c_objs + s_objs,
        'task_dep': [
            'assemble',
            'cc', 
            'link_resources',
            'link_sprite_bank',
            'temp_bin_obj'
        ],
        'targets': [rom_elf, rom_map, rom],
        'clean': True,
    }

def task_preproc_ldscript():
    ''' Run C preprocessor on game ldscript '''
    return {
        'actions': [
            [tc['cpp'], '-P', '-o', ssb_lds, ssb_lds_in]
        ],
        'file_dep': [ssb_lds_in],
        'targets': [ssb_lds],
    }

def task_assemble():
    ''' Assemble .s files into .o with dependencies .d '''

    for f, o in zip(s_files, s_objs):
        d = o.with_suffix('.d')
        found_deps = parse_mk_dependencies(d)
        # No .d file for `f` (not generated yet)
        if found_deps is None:
            deps = [f]
        else:
            deps = found_deps[o]

        yield {
            'name': o,
            'actions': [ 
                [ tc['as'] ]
                + tc['as_flags']
                + [
                    '-I', inc_dir,
                    '-I', asm_dir,
                    '-I', f.parent,
                    '--MD', d,
                    '-o', o,
                    f,
                ]
            ],
            'file_dep': deps,
            'targets': [o, d],
        }

def task_cc():
    ''' Compile .c files into .o '''

    invoke_cc = tc['cc'] + tc['cc_flags'] + tc['mips_ver'] + ['-O2', '-I', inc_dir, '-I', c_dir]

    for f, o in zip(c_files, c_objs):
        d = o.with_suffix('.d')
        found_deps = parse_mk_dependencies(d)
        if found_deps is None:
            deps = [f]
        else:
            deps = found_deps[o]
        
        yield {
            'name': o,
            'actions': [invoke_cc + ['-o', o, f]],
            'file_dep': deps,
            'targets': [o, d],
        }

# Resource table
res_dir = base_dir / 'resources'
res_tempbins = list(res_dir.glob('tempbins/files/*'))
res_tempbins_o = list(map(lambda f: to_output_path(f, '.o'), res_tempbins))
res_table = res_dir / 'tempbins' / 'resfiletable.bin'
res_table_o = build_dir / 'resources' / 'resfiletable.o'
res_link  = res_dir / 'tempbins' / 'templink.ld'
res_archive = to_output_path(res_dir / 'resourcefiles.o', '.o')

def task_link_resources():
    ''' Link resource files into a relocatable binary for linking '''

    return {
        # $(LD) -T %f -r -o %o %<resbins> 
        'actions': [
            [tc['ld'], '-T', res_link, '-r', '-o', res_archive] + res_tempbins_o
        ],
        'file_dep': [res_link] + res_tempbins_o,
        'targets': [res_archive]
    }


# Sprites
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
        raise Exception(f"Unknown image format '{fmt}' (from file: s)")
    
    return (cmd, out)

sprite_dir = base_dir / 'sprites'
sprite_output = build_dir / 'sprites'
sprite_pngs = list(sprite_dir.rglob('*.*.png'))
sprite_bins = list(map(lambda f: to_output_path(f, ''), sprite_pngs))

def task_convert_sprite_pngs():
    ''' Convert sprite.format.png into sprite.format.bin ''' 

    for f, o in zip(sprite_pngs, sprite_bins):
        invocation, outs = gfx_encode_cmd(f, o)

        yield {
            'name': o,
            'actions': [invocation],
            'file_dep': [f, n64gfx],
            #'task_dep': ['tools:n64gfx'],
            'targets': outs,
        }

imgbank_entry_tomls = list(sprite_dir.glob('*/*/*.toml'))
imgbank_entry_s = list(map(lambda f: to_output_path(f, '.s'), imgbank_entry_tomls))
imgbank_entry_o = list(map(lambda f: up_one_dir(f, '.o'), imgbank_entry_s))

def task_pack_sprite_bank_entry():
    ''' Convert a .toml sprite/img bank spec file
        into an gnu as .s file to assemble
    '''

    for (t, s) in zip(imgbank_entry_tomls, imgbank_entry_s):
        yield {
            'name': s,
            'actions': [[imgbank, 'pack-entry', t, '-o', s]],
            'file_dep': [t],
            'task_dep': ['tools:imgbank'],
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

        yield {
            'name': o,
            'actions': [                
                [ tc['as'] ]
                + tc['as_flags']
                + [
                    '-I', s.parent,
                    '--MD', d,
                    '-o', o,
                    s,
                ]
            ],
            'file_dep': deps,
            'task_dep': ['convert_sprite_pngs'],
            'targets': [o, d],
        }

imgbank_tomls = list(sprite_dir.glob('*/*.toml'))
imgbank_ldscripts = list(map(lambda f: to_output_path(f, '.ld'), imgbank_tomls))
imgbank_o = list(map(lambda f: up_one_dir(f, '.o'), imgbank_ldscripts))

def task_generate_sprite_bank_link():
    ''' Create a linkerscript from a sprite bank .toml '''

    for (t, lds) in zip(imgbank_tomls, imgbank_ldscripts):
        yield {
            'name': lds,
            'actions': [[imgbank, 'link', t, '-o', lds]],
            'file_dep': [t],
            'task_dep': ['tools:imgbank'],
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
            'actions': [[tc['ld'], '-d', '-T', lds, '-L', obj_dir, '-o', o]],
            'file_dep': [lds] + bank_objs,
            'targets': [o],
        }    

temp_sprbank_bins = list(sprite_dir.glob('tempbins/*'))
temp_sprbank_o = list(
    map(lambda b: to_output_path(up_one_dir(b), '.o'), temp_sprbank_bins)
)

# Audio
temp_audio_bins = list(base_dir.glob('audio/tempbins/*'))
temp_audio_o = list(map(lambda b: to_output_path(up_one_dir(b), '.o', True), temp_audio_bins))

# Temporary .bin handling

temp_unk_bins = list(base_dir.glob('unknown/tempbins/*'))
temp_unk_o = list(
    map(lambda b: to_output_path(b, '.o'),
    map(up_one_dir, temp_unk_bins))
)

def task_temp_bin_obj():
    ''' Convert a raw binary to a linkable .o file 
        This task should be temporary until all binary files are 
        converted to real source files
    '''

    invoke_ld = [tc['ld'], '-r', '-b', 'binary', '-o']

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
        'targets': [res_table_o]
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
