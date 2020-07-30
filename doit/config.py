from doit import get_var
from pathutil import append_suffix
import sys

ALL_VERSIONS = ['us']

def _get_choice(var, default, choices):
    possible = get_var(var, default)
    if possible in choices: 
        return possible
    else:
        raise Exception("Unknown " + var + ". Should be: " + possible)

def _get_flag(flag):
    flag = get_var(flag, False)
    return not not flag

def _target_version(toolchain, version):
    ''' Create the version string used for the output directory, 
        and for naming the build artifacts. 
        It builds this string based on the version of the game
        being compiled, as well as the toolchain that is doing the compiling.
        `ido` is the default toolchain, while other toolchains (gcc, clang)
        are explicit in the string.
    ''' 
    if toolchain != 'ido':
        return version + '-' + toolchain
    else:
        return version


class Config():
    def __init__(self, build_base, game_base, tools_dir):
        # CLI Options
        self.toolchain = get_var('TOOLCHAIN', 'ido')
        self.qemu = get_var('QEMU_IRIX', None)
        self.version = _get_choice('VERSION', 'us', ALL_VERSIONS)
        self.no_match = _get_flag('NON_MATCHING')
        self.avoid_ub = _get_flag('AVOID_UB')

        self.host = sys.platform
        self.target = 'n64'
        self.target_version = _target_version(self.toolchain, self.version)

        # Build directories
        self.all_builds = build_base
        self.build_dir = build_base / self.target_version
        self.game_dir = game_base
        self.tools = tools_dir
    
    def to_output(self, src, out_ext, append=False):
        ''' Take an input Path and convert an output path with
            `out_ext` in the proper build directory.
            This will also ensure that the all output directories
            are created
        '''
        t = self.build_dir.joinpath(src.relative_to(self.game_dir))
        o = append_suffix(t, out_ext) if append else t.with_suffix(out_ext)
        o.parent.mkdir(parents=True, exist_ok=True)

        return o