.include "macros.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text

.balign 16
glabel D_800396C0 #F3DEX boot?
  .incbin "system.raw.bin", 0x392C0, 0xC60

# F3DEX fifo 2.04H
# F3DEX2 bin @ 0x39F20 in system.raw.bin
#   to 0x3B2B0?
# Audio bin after?
glabel D_8003A320 
  .incbin "system.raw.bin", 0x39F20, 0xF4
  /* 3A014 03B014 8003A414 */
  .asciz "7X"
  .balign 4
  .incbin "system.raw.bin", 0x3A018, 0x1D0
  /* 3A1E8 03B1E8 8003A5E8 */
  .asciz "5p"
  .balign 4
  .incbin "system.raw.bin", 0x3A1EC, 0x4
  /* 3A1F0 03B1F0 8003A5F0 */
  .asciz "4S"
  .balign 4
  /* 3A1F4 03B1F4 8003A5F4 */
  .asciz "4s"
  .balign 4
  /* 3A1F8 03B1F8 8003A5F8 */
  .asciz "4C"
  .balign 4
  .incbin "system.raw.bin", 0x3A1FC, 0x144
  /* 3A340 03B340 8003A740 */
  .asciz "4C"
  .balign 4
  .incbin "system.raw.bin", 0x3A344, 0x33C
  /* 3A680 03B680 8003AA80 */
  .asciz "4$"
  .balign 4
  .incbin "system.raw.bin", 0x3A684, 0x918
  /* 3AF9C 03BF9C 8003B39C */
  .asciz "4X"
  .balign 4
  .incbin "system.raw.bin", 0x3AFA0, 0x310

.section .rodata

.balign 16
# F3DEX2 data @ 0x3F2B0 in system.raw.bin
#   end + 0x420 => 0x3F6D0
# audio after?
glabel D_8003F6B0
  .incbin "system.raw.bin", 0x3F2B0, 0x3CC
  /* 3F67C 04067C 8003FA7C */
  .asciz "00@@"
  .balign 4
  .incbin "system.raw.bin", 0x3F684, 0x30
  /* 3F6B4 0406B4 8003FAB4 */
  .asciz " "
  .balign 4
  .incbin "system.raw.bin", 0x3F6B8, 0x18
