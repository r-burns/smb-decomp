.include "macros.inc"

.section .data
# om
glabel D_8003B870
  .incbin "system.raw.bin", 0x3B470, 0x4

glabel D_8003B874
  .incbin "system.raw.bin", 0x3B474, 0x4

glabel D_8003B878
  .incbin "system.raw.bin", 0x3B478, 0x14
  /* 3B48C 03C48C 8003B88C */
  .asciz "FH"
  .balign 4
  .incbin "system.raw.bin", 0x3B490, 0x4

glabel D_8003B894
  .incbin "system.raw.bin", 0x3B494, 0x8
  /* 3B49C 03C49C 8003B89C */
  .asciz "C "
  .balign 4
  .incbin "system.raw.bin", 0x3B4A0, 0xC
  /* 3B4AC 03C4AC 8003B8AC */
  .asciz "FH"
  .balign 4
  .incbin "system.raw.bin", 0x3B4B0, 0x4

glabel D_8003B8B4
  .incbin "system.raw.bin", 0x3B4B4, 0x28

glabel D_8003B8DC
  .incbin "system.raw.bin", 0x3B4DC, 0x4

glabel D_8003B8E0
  .incbin "system.raw.bin", 0x3B4E0, 0xC

glabel D_8003B8EC
  .incbin "system.raw.bin", 0x3B4EC, 0x14

glabel D_8003B900
  .incbin "system.raw.bin", 0x3B500, 0x8

glabel D_8003B908
  .incbin "system.raw.bin", 0x3B508, 0xC

glabel D_8003B914
  .incbin "system.raw.bin", 0x3B514, 0x4

glabel D_8003B918
  .incbin "system.raw.bin", 0x3B518, 0x18
