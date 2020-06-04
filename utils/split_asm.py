#!/usr/bin/env python3

''' Split an asm (.s) file into a series of function.s files 
    and a GLOBAL_ASM .c file that imports those funcion.s files
'''

import sys
from pathlib import Path

if len(sys.argv) != 4:
    print(f"Usage: {sys.argv[0]} <ASM file> <non-matching dir> <C output dir>")
    exit()

def fail(msg):
    print(msg, file=sys.stderr)
    exit(1)


def assert_is_dir(p):
    if not p.is_dir():
        fail(f"Path <{p}> is not a directory")

def is_routine_glabel(line):
    return "glabel" in line and "D_" not in line and "jtgt" not in line and "L8" not in line

def id_routines(input):
    # name => text
    routines = dict()
    with open(input, 'r') as f:
        # (name, textbuf)
        state = None
        for line in f:
            if is_routine_glabel(line):
                name = line.split()[-1]
                # store "completed" prior routine
                if state is not None:
                    routines[state[0]] = state[1]
                
                state = (name, line)
            elif state is not None:
                state = (state[0], state[1] + line)

        # output final routine
        if state is not None:
            routines[state[0]] = state[1]

    return routines

def write_split_files(nm_dir, c_out, routines):
    # routineName => routineNonMatchingFile
    with open(c_out, "w+") as cf:
        for (routine, text) in routines.items():
            nm_out = nm_dir / Path(routine).with_suffix('.s')

            f = open(nm_out, "w")
            f.write(text)
            f.close()

            cf.write(f'\n#pragma GLOBAL_ASM("{nm_out}")\n')

def main():
    s_in = Path(sys.argv[1])
    s_out = Path(sys.argv[2])
    c_out_dir = Path(sys.argv[3])
    
    input_filename = s_in.stem
    s_out_dir = s_out / input_filename
    c_out_file = c_out_dir / s_in.with_suffix('.asm.c').name

    s_out_dir.mkdir(parents=True, exist_ok=True)
    c_out_dir.mkdir(parents=True, exist_ok=True)
    assert_is_dir(s_out_dir)
    assert_is_dir(c_out_dir)

    routines = id_routines(s_in)
    write_split_files(s_out_dir, c_out_file, routines)
    #print(routines)


if __name__ == '__main__':
    main()
