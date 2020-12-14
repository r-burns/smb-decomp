#!/usr/bin/env python3
import sys
import subprocess
from pathlib import Path

'''
Run the C preprocessor on `input` for use as context in mips_to_c.py
'''

USAGE = '''m2ctx.py
Run cpp on <input> and write preprocessed output to stdout

USAGE:
    m2ctx.py [OPTIONS] <input>

ARGS:
    <input>     C file to preprocess for mips_to_c

OPTIONS:
    -h, --help      print this message
'''

def print_usage():
    print(USAGE)

def run_cpp(file):
    cmd = ['cpp', '-P', 
        '-Igame/include',
        '-Igame/src',
        '-undef',
        '-D__sgi',
        '-D_LANGUAGE_C',
        '-DNON_MATCHING',
        file,
    ]

    try:
        return subprocess.check_output(cmd, encoding="utf-8")
    except subprocess.CalledProcessError:
        print("Failed to preprocess file:\n" + cmd, file=sys.stderr)
        sys.exit(1)

def main():
    if len(sys.argv) < 2:
        print_usage()
    elif sys.argv[1] == "-h" or sys.argv[1] == "--help":
        print_usage()
    else:
        c_file = Path(sys.argv[1])
        processed = run_cpp(c_file)
        print(processed)

if __name__ == "__main__":
    main()