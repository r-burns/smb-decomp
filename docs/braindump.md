# Brain Dump
Collection of things that should be explained more throughly 

## Howtos
### Split File / Use ASM preprocessor
1. Try to find a split point in the ASM. Compiled objects are 0x10 byte aligned,
  so extra `nop`s indicate a file split. Also can look at data + bss to see alignment
2. Create a new asm file by moving `.text`, `.data`, `.rodata`, and `.bss` into a standalone file
3. Use script to split asm into "C" file:
```
utils/split_asm.py <input.s> game/nonmatching/ game/src/<output directory>
```
4. Delete routines from the split asm from step 2
5. Check that rebuild works.
6. Move over any `.rodata` (strings and arrays) and `.late_rodata` (jump tables and float constants) from split asm file into that data's nonmatching file. This helps with `mips2c`
  * TODO: update asm-preprocessor to make/edit `.d` for included ASM files
  * `.4byte` not supported. Change to `.word` or update asm-preprocessor
  * Also, replace any `.incbin` with the raw data. The data probably is padding zeroes.
7. Check that build is still OK
8. Move bss over:
```
utils/convert_bss.py <bss.s>
```
9. Check build. If not OK, then there is probably some alignment issue due to the script only outputing basic types and arrays. Check the `.map` and split up arrays to `u32`, `u16`, or `u8` as necessary to match
10. Once you get an OK, do a clean build to double check
11. Commit!
12. Create header and start decompiling

### Using mips to c


## Links
* [Online MIPS to C](https://simonsoftware.se/other/mips_to_c.py)
* [IDO O2 Notes](https://hackmd.io/vPmcgdaFSlq4R2mfkq4bJg#Rematerialization-of-constants)
* [IDO Compiler Explorer](https://compiler.queueram.com/)
