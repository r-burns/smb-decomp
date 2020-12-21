import os
from dataclasses import dataclass
from pathlib import Path
from typing import List, Union, Tuple, Dict
from shutil import which

# Game cross toolchain flags
IDO_CC_FLAGS = [
    '-Wab,-r4300_mul', '-G', '0', '-non_shared', '-Xfullwarn', '-Xcpluscomm', 
    '-signed', '-32', '-mips2',
    '-D_LANGUAGE_C'
]
GCC_AS_FLAGS = ['-march=vr4300', '-mabi=32']
C_SYNTAX_CHECK_FLAGS = [
    '-fsyntax-only', '-fsigned-char', '-fno-builtin',
    '-std=gnu90', '-m32', 
    '-Wall', '-Wextra', '-Wno-format-security', '-Wno-main', 
    '-D_LANGUAGE_C', '-DNON_MATCHING', '-DAVOID_UB', '-DIGNORE_SYNTAX_CHECK',
    '-D_MIPS_SZINT=32', '-D_MIPS_SZLONG=32',
]

# ASM processor for IDO
# TODO: dynamic under config tools direction?
IDO_ASMPROC = {
    'proc': 'utils/asm-processor/asm_processor.py',
    'cin': 'utils/asm-processor/include-stdin.c',
    'prelude': 'utils/asm-processor/prelude.s',
}

# Libultra flags
IDO_ULTRA_CFLAGS = [
    '-Wab,-r4300_mul', '-non_shared', '-G', '0', '-nostdinc',
    '-Xcpluscomm', '-fullwarn',
    '-D_LANGUAGE_C', '-D_FINALROM', '-DF3DEX_GBI', '-DNDEBUG',
]
IDO_ULTRA_ASFLAGS = [
    '-Wab,-r4300_mul', '-non_shared', '-G', '0', '-nostdinc',
    '-D_FINALROM', '-DF3DEX_GBI', '-DNDEBUG',
]

# Structs
@dataclass
class Compiler:
    CC: List[Union[str, Path]]
    CFLAGS: List[str]
    needsAsmPrepoc: bool = False

@dataclass
class CXX:
    CXX: List[Union[str, Path]]
    CXXFLAGS: List[str]

@dataclass
class Assembler:
    AS: List[Union[str, Path]]
    ASFLAGS: List[str]

@dataclass
class Binutils:
    LD: List[Union[str, Path]]
    OBJCOPY: List[Union[str, Path]]
    AR: List[Union[str, Path]]

@dataclass
class SystemTools:
    c: Compiler
    cxx: CXX
    CPP: List[Union[str, Path]]

@dataclass
class CrossTools:
    c: Compiler
    assembler: Assembler
    utils: Binutils

# The main class for using the system, game, or libultra toolchain
@dataclass
class ToolChain:
    system: SystemTools
    game: CrossTools
    libultra: CrossTools
    user_defines: List[str] # NON_MATCHING, AVOID_UB, VERSION_XX, TARGET_YY, etc.

    def from_config(config):
        # Configure system C/C++ compiler
        if config.host == 'darwin':
            sys_cc = Compiler(['clang'], ['-O2'])
            sys_cxx = CXX(['clang++'], ['-O2'])
            system = SystemTools(sys_cc, sys_cxx, ['clang', '-E', '-P', '-x', 'c'])
        elif config.host == 'linux':
            sys_cc = Compiler(['gcc'], ['-O2'])
            sys_cxx = CXX(['g++'], ['-O2'])
            system = SystemTools(sys_cc, sys_cxx, ['cpp'])
        else:
            raise Exception(f'Unsupported Host OS: {config.host}')
        # Configure cross toolchain for game
        game = _get_game_crosschain(config.toolchain, config)
        # Configure libultra cross toolchain for game
        libultra = _get_libultra_crosschain(config.libultra, config)
        # TODO: Encode user CLI options
        defines = []

        return ToolChain(system, game, libultra, defines)
    
    def invoke_as(self, includes, depfile, input, output):
        ''' create a list for calling the current game cross-assembler '''
        incs = list(_prefix_it(includes, '-I'))
        files = ['--MD', depfile, '-o', output, input]
        tc = self.game.assembler

        return tc.AS + tc.ASFLAGS + incs + files
    
    def invoke_cc(self, includes, input, output, opt = 'O2'):
        ''' create a list for calling the current game cross-compiler '''
        incs = list(_prefix_it(includes, '-I'))
        # TODO: do this once when creating user_defines?
        defines = ['-D'+d for d in self.user_defines]
        opt = ['-'+opt]
        files = ['-o', output, input]
        tc = self.game.c

        return tc.CC + tc.CFLAGS + incs + defines + opt + files

    def invoke_cc_check(self, includes, depfile, input, output):
        ''' use the system CC to check syntax and to create dependency files '''
        incs = list(_prefix_it(includes, '-I'))
        files = ['-MMD', '-MP', '-MT', output, '-MF', depfile, input]
        tc = self.system.c

        return tc.CC + C_SYNTAX_CHECK_FLAGS + incs + files

    def invoke_asm_prepoc(self, includes, input, output, opt = 'O2'):
        ''' 
        IDO has no inline ASM, so an external tool must be used.
        This returns two commands in a list: 
          the first is a string for the shell
          the second is a list for .o file post-processing
        '''
        if not self.game.c.needsAsmPrepoc:
            return [self.invoke_cc(includes, input, output, opt)]

        cc = self.invoke_cc(includes, IDO_ASMPROC['cin'], output, opt)
        gas = self.game.assembler.AS + self.game.assembler.ASFLAGS
        asmproc_flags = ['-'+opt, input, '--input-enc', 'utf-8', '--output-enc', 'utf-8']
        asmproc_invocation = [IDO_ASMPROC['proc']] + asmproc_flags

        compile_cmd = map(str, asmproc_invocation + ['|'] + cc)
        shell_str = " ".join(compile_cmd)
        gas_str = " ".join(map(str, gas))
        postproc_options = [
            '--post-process', output, 
            '--asm-prelude', IDO_ASMPROC['prelude'], 
            '--assembler', gas_str
        ]
        postproc = asmproc_invocation + postproc_options

        return [ shell_str, postproc ]

    def libultra_cc(self, includes, input, output, mipsiset, opt):
        incs = list(_prefix_it(includes, '-I'))
        files = ['-o', output, input]
        tc = self.libultra.c
        # TODO: do this once when creating user_defines?
        defines = ['-D'+d for d in self.user_defines]
        settings = mipsiset + [opt]

        return tc.CC + tc.CFLAGS + settings + incs + defines + files
    
    def libultra_as(self, includes, input, output, mipsiset, opt):
        incs = list(_prefix_it(includes, '-I'))
        files = ['-o', output, input]
        tc = self.libultra.assembler
        settings = mipsiset + [opt]

        return tc.AS + tc.ASFLAGS + settings + incs + files
    
    def __str__(self):
        stringify = lambda iter: ' '.join(map(str, iter))
        s = (
            "======= Toolchain Info =======\n"
            f"  Defines: {stringify(self.user_defines)}\n"
            "  System:\n"
            f"    CC:       {stringify(self.system.c.CC)}\n"
            #f"    CFLAGS:   {stringify(self.system.c.CFLAGS)}\n"
            f"    CXX:      {stringify(self.system.cxx.CXX)}\n"
            #f"    CXXFLAGS: {stringify(self.system.cxx.CXXFLAGS)}\n"
            f"    CPP:      {stringify(self.system.CPP)}\n"
            "  Game:\n"
            f"    CC:      {stringify(self.game.c.CC)}\n"
            #f"    CFLAGS:  {stringify(self.game.c.CFLAGS)}\n"
            f"    AS:      {stringify(self.game.assembler.AS)}\n"
            #f"    ASFLAGS: {stringify(self.game.assembler.ASFLAGS)}\n"
            f"    LD:      {stringify(self.game.utils.LD)}\n"
            f"    OBJCOPY: {stringify(self.game.utils.OBJCOPY)}\n"
            f"    AR:      {stringify(self.game.utils.AR)}\n"
            "  Libultra:\n"
            f"    CC:      {stringify(self.libultra.c.CC)}\n"
            #f"    CFLAGS:  {stringify(self.libultra.c.CFLAGS)}\n"
            f"    AS:      {stringify(self.libultra.assembler.AS)}\n"
            #f"    ASFLAGS: {stringify(self.libultra.assembler.ASFLAGS)}\n"
            f"    LD:      {stringify(self.libultra.utils.LD)}\n"
            f"    OBJCOPY: {stringify(self.libultra.utils.OBJCOPY)}\n"
            f"    AR:      {stringify(self.libultra.utils.AR)}\n"
        )

        return s


### Helper Routines ###
def _get_game_crosschain(requested_tc, config):
    ''' 
    Get `CrossTools` used for building game code
    '''
    prefix = _which_gnu_prefix()
    binutils = Binutils([prefix + 'ld'], [prefix + 'objcopy'], [prefix + 'ar'])
    assembler = Assembler([prefix + 'as'], GCC_AS_FLAGS)

    tools = config.tools

    if requested_tc == 'qemu-ido7.1':
        compiler = _get_qemu_ido('7.1', config, IDO_CC_FLAGS)
    elif requested_tc == 'qemu-ido5.3':
        compiler = _get_qemu_ido('5.3', config, IDO_CC_FLAGS)
    elif requested_tc == 'ido7.1':
        compiler = _get_recomp_ido('7.1', tools, IDO_CC_FLAGS)
    elif requested_tc == 'ido5.3':
        compiler = _get_recomp_ido('5.3', tools, IDO_CC_FLAGS)
    else:
        raise Exception("Unsupported toolchain: " + requested_tc)

    return CrossTools(compiler, assembler, binutils)

def _get_libultra_crosschain(requested_tc, config):
    ''' 
    Get `CrossTools` used for building libultra code
    '''
    prefix = _which_gnu_prefix()
    binutils = Binutils([prefix + 'ld'], [prefix + 'objcopy'], [prefix + 'ar'])

    tools = config.tools

    if requested_tc == 'qemu-ido5.3':
        compiler = _get_qemu_ido('5.3', config, IDO_ULTRA_CFLAGS)
        assembler = Assembler([prefix + 'as'], GCC_AS_FLAGS)
    elif requested_tc == 'ido5.3':
        compiler = _get_recomp_ido('5.3', tools, IDO_ULTRA_CFLAGS)
        #assembler = _get_recomp_as('5.3', tools, IDO_ULTRA_ASFLAGS)
        assembler = _get_qemu_as('5.3', config, IDO_ULTRA_ASFLAGS)
    else:
        raise Exception("Unsupported toolchain: " + requested_tc)

    return CrossTools(compiler, assembler, binutils)

def _get_qemu_ido(version, config, cflags):
    ''' 
    Create a `Compiler` for an ido cc running in qemu 
    '''
    qemu = _find_qemu_irix(config.qemu)
    # TODO: put the ido raw binary directory somewhere else (const at top?)
    ido_base = config.tools / 'irix'
    if version == '5.3':
        ido_home = ido_base / 'ido5.3'
    elif version == '7.1':
        ido_home = ido_base / 'ido7.1'
    else:
        raise Exception("Unknown IDO version for QEMU: " + version)

    cc = ido_home / 'usr' / 'bin' / 'cc'
    invocation = [qemu, '-silent', '-L', ido_home, cc, '-c']

    return Compiler(invocation, cflags, True)

def _get_recomp_ido(version, tools, cflags):
    ''' Create a `Compiler` for the recompiled native version of IDO '''
    cc = tools / ('ido' + version) / 'cc'

    return Compiler([cc, '-c'], cflags, True)

def _get_qemu_as(version, config, asflags):
    qemu = _find_qemu_irix(config.qemu)
    # TODO: put the ido raw binary directory somewhere else (const at top?)
    ido_base = config.tools / 'irix'
    if version == '5.3':
        ido_home = ido_base / 'ido5.3'
    elif version == '7.1':
        ido_home = ido_base / 'ido7.1'
    else:
        raise Exception("Unknown IDO version for QEMU: " + version)

    AS = ido_home / 'usr' / 'bin' / 'as'
    invocation = [qemu, '-silent', '-L', ido_home, AS]

    return Assembler(invocation, asflags)

def _get_recomp_as(version, tools, asflags):
    asm = tools / ('ido' + version) / 'as'

    return Assembler([asm], asflags)

class MissingGNUToolchain(Exception):
    def __init__(self):
        self.message = """
            Missing a proper GNU toolchain for MIPS
            Install one of the following cross binutils:
              * mips-linux-gnu
              * mips64-linux-gnu
              * mips64-elf 
            """
        super().__init__(self.message)

class MissingQemuIrix(Exception):
    def __init__(self):
        self.message = """
            Missing qemu-irix binary 
            There are three ways to select the qemu-irix binary:
              * Pass a path to the binary on CLI (doit QEMU_IRIX=<path>)
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
        return which('qemu-irix')
    else:
        raise MissingQemuIrix()

def _prefix_it(iterable, prefix):
    it = iter(iterable)
    for x in it:
        yield prefix
        yield x
