from doit import get_var

ALL_VERSIONS = ['us']

def _get_choice(var, default, choices):
    possible = get_var(var, default)
    if possible in choice: 
        return possible
    else:
        raise Exception("Unknown " + var + ": " + possible)

def _get_flag(flag):
    flag = get_var(flag, False)
    return not not flag

def _target_version(toolchain, version):
    if toolchain != 'ido':
        return version + '-' + toolchain
    else:
        return version


class Config():
    def __init__():
        self.tc_name = get_var('TOOLCHAIN', 'ido')
        self.qemu = get_var('QEMU_IRIX', None)
        self.version = _get_choice('VERSION', 'us', ALL_VERSIONS)
        self.no_match = _get_flag('NON_MATCHING')
        self.avoid_ub = _get_flag('AVOID_UB')

        #self.host = platform.sys
        self.target = 'n64'
        self.target_version = _target_version(self.tc_name, self.version)