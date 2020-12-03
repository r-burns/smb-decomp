.include "macros.inc"

.section .data

glabel D_8003D080
  .incbin "system.raw.bin", 0x3CC80, 0x68

glabel D_8003D0E8
  .incbin "system.raw.bin", 0x3CCE8, 0x88

glabel D_8003D170
  .incbin "system.raw.bin", 0x3CD70, 0x28

glabel D_8003D198
  .incbin "system.raw.bin", 0x3CD98, 0x28

glabel D_8003D1C0
  .incbin "system.raw.bin", 0x3CDC0, 0x28

glabel D_8003D1E8
  .incbin "system.raw.bin", 0x3CDE8, 0x28

glabel D_8003D210
  .incbin "system.raw.bin", 0x3CE10, 0xFE

glabel D_8003D30E
  .incbin "system.raw.bin", 0x3CF0E, 0x2

glabel D_8003D310
  .incbin "system.raw.bin", 0x3CF10, 0x4

glabel D_8003D314
  .incbin "system.raw.bin", 0x3CF14, 0x4

glabel D_8003D318
  /* 3CF18 03DF18 8003D318 */
  .4byte 0x3f800000 # .float 1.0

glabel D_8003D31C
  .incbin "system.raw.bin", 0x3CF1C, 0x4

glabel D_8003D320
  .incbin "system.raw.bin", 0x3CF20, 0x4

glabel D_8003D324
  .incbin "system.raw.bin", 0x3CF24, 0xC
