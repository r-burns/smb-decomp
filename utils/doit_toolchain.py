from pathlib import Path
from shutil import which
import os
import sys

tool_dir = Path('tools')
ido5_3 = tool_dir / 'ido5.3'
ido7_1 = tool_dir / 'ido7.1'
ido7_1_cc = ido7_1 / 'usr' / 'bin' / 'cc'

class MissingGNUToolchain(Exception):
    def __init__(self):
        self.message = """
            Missing a proper GNU toolchain for MIPS
            Install one of the following cross binutils
              * mips-linux-gnu
              * mips64-linux-gnu
              * mips64-elf 
            """
        super().__init__(self.message)

class MissingQemuIrix(Exception):
    def __init__(self):
        self.message = """
            Missing path to qemu-irix binary. 
            Ensure that one of these is true:
              * Pass a path to the binary on CLI (QEMU_IRIX=<path>)
              * Define env variable 'QEMU_IRIX' with a path to the binary
              * Put directory containing 'qemu-irix' in PATH
            """
        super().__init__(self.message)

def _which_gnu_prefix():
    if which('mips-linux-gnu-ld') is not None:
        return "mips-linux-gnu-"
    elif which('mips64-linux-gnu-ld') is not None:
        return "mips64-linux-gnu-"
    elif which('mips64-elf-ld') is not None:
        return "mips64-elf-"
    else:
        raise MissingGNUToolchain()

def _find_qemu_irix(cli_path):
    if cli_path is not None:
        return cli_path
    elif os.environ.get('QEMU_IRIX') is not None:
        return os.environ.get('QEMU_IRIX')
    elif which('qemu-irix') is not None:
        return 'qemu-irix'
    else:
        raise MissingQemuIrix()

def _append_intersperse(iterable, val):
    it = iter(iterable)
    for x in it:
        yield val
        yield x

class ToolChain:
    def __init__(self, config):
        cross = _which_gnu_prefix()
        # Common toolchain
        self.AS = [cross + 'as']
        self.ASFLAGS = ['-march=vr4300', '-mabi=32']
        self.LD = [cross + 'ld']
        self.OBJCOPY = [cross + 'objcopy']
        self.CPP = ['cpp'] if sys.platform != 'darwin' else [cross + 'cpp']
        self.CC_CHECK = ['gcc', 
            '-fsyntax-only', '-fsigned-char', '-std=gnu90', '-fno-builtin',
            '-m32',
            '-Wall', '-Wextra', '-Wno-format-security', '-Wno-main', 
            '-DNON_MATCHING', '-DAVOID_UB']
        self.MIPSISET = ['-mips2']
        self.C_DEFINES = ['-D_LANGUAGE_C']
        
        # Compiler specific
        possible_tc = config['tc']
        if possible_tc == 'ido':
            qemu = _find_qemu_irix(config['qemu'])
            self.CC = [qemu, '-silent', '-L', ido7_1, ido7_1_cc, '-c']
            self.CFLAGS = ['-Wab,-r4300_mul', '-G', '0', '-non_shared', 
                '-Xfullwarn', '-Xcpluscomm', '-signed']
            self.CC_ALT = {
                'ido7.1': {
                    'cc': self.CC,
                    'flags': self.CFLAGS,
                },
                'ido5.3':{
                    'cc':None,
                    'flags':None,
                },
            }
        elif possible_tc == 'gcc':
            self.CC = [cross + 'gcc']
            self.CFLAGS = ['-march=vr4300', '-mfix4300', '-mabi=32', 
                '-mno-shared', '-G', '0', '-mhard-float', '-fno-stack-protector',
                '-fno-common', '-fno-zero-initialized-in-bss', '-fno-PIC', 
                '-mno-abicalls', '-fno-strict-aliasing', '-fno-inline-functions', 
                '-ffreestanding', '-fwrapv', '-Wall', '-Wextra']
            self.CC_ALT = None
        else:
            raise Exception(f"Unknown toolchain {possible_tc}")
    
    def invoke_as(self, includes):
        # TODO: add defines
        incs = list(_append_intersperse(includes, '-I'))
        return self.AS + self.ASFLAGS + incs
    
    def invoke_cc(self, includes, opt="O2"):
        # TODO: add defines
        incs = list(_append_intersperse(includes, '-I'))
        opt = ['-'+opt]

        return self.CC + self.CFLAGS + self.MIPSISET + self.C_DEFINES + opt + incs
    
    def invoke_cc_check(self, includes, input, output, depfile):
        incs = list(_append_intersperse(includes, '-I'))
        return self.CC_CHECK + incs + self.C_DEFINES + ['-MMD', '-MP', '-MT', output, '-MF', depfile, input]
            
