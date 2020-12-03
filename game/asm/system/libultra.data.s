.include "macros.inc"

.section .data

glabel D_8003D330
  .incbin "system.raw.bin", 0x3CF30, 0x50

glabel D_8003D380
  .incbin "system.raw.bin", 0x3CF80, 0x30

glabel D_8003D3B0
  .incbin "system.raw.bin", 0x3CFB0, 0x8

glabel D_8003D3B8
  /* 3CFB8 03DFB8 8003D3B8 */  .4byte D_8003D3B0

glabel D_8003D3BC
  /* 3CFBC 03DFBC 8003D3BC */  .4byte D_8003D3B0

glabel D_8003D3C0
  .incbin "system.raw.bin", 0x3CFC0, 0x4

glabel D_8003D3C4
  .incbin "system.raw.bin", 0x3CFC4, 0xC

glabel D_8003D3D0
  .incbin "system.raw.bin", 0x3CFD0, 0x10

glabel D_8003D3E0
  .incbin "system.raw.bin", 0x3CFE0, 0x10

glabel D_8003D3F0
  .incbin "system.raw.bin", 0x3CFF0, 0x4

glabel D_8003D3F4
  .incbin "system.raw.bin", 0x3CFF4, 0x4

glabel D_8003D3F8
  .incbin "system.raw.bin", 0x3CFF8, 0x4

glabel D_8003D3FC
  .incbin "system.raw.bin", 0x3CFFC, 0x4

glabel D_8003D400
  .incbin "system.raw.bin", 0x3D000, 0x10

glabel D_8003D410
  .incbin "system.raw.bin", 0x3D010, 0x8

glabel D_8003D418
  .incbin "system.raw.bin", 0x3D018, 0x14

glabel D_8003D42C
  .incbin "system.raw.bin", 0x3D02C, 0x4

glabel D_8003D430
  /* 3D030 03E030 8003D430 */  .4byte D_8009F1F0
  /* 3D034 03E034 8003D434 */  .4byte D_8009F268
  .incbin "system.raw.bin", 0x3D038, 0x8

glabel D_8003D440
  .incbin "system.raw.bin", 0x3D040, 0x10

glabel D_8003D450
  /* 3D050 03E050 8003D450 */
  .asciz "                                "
  .balign 4

glabel D_8003D474
  /* 3D074 03E074 8003D474 */
  .asciz "00000000000000000000000000000000"
  .balign 4
  .incbin "system.raw.bin", 0x3D098, 0x8

glabel D_8003D4A0
  /* 3D0A0 03E0A0 8003D4A0 */  .4byte D_800A0550
  .incbin "system.raw.bin", 0x3D0A4, 0xC

glabel osViModeNtscLan1
  .incbin "system.raw.bin", 0x3D0B0, 0x50

glabel osViModeMpalLan1
  .incbin "system.raw.bin", 0x3D100, 0x50

glabel D_8003D550
  .incbin "system.raw.bin", 0x3D150, 0x30

glabel D_8003D580
  .incbin "system.raw.bin", 0x3D180, 0x30

glabel D_8003D5B0
  /* 3D1B0 03E1B0 8003D5B0 */  .4byte D_8003D550

glabel D_8003D5B4
  /* 3D1B4 03E1B4 8003D5B4 */  .4byte D_8003D580
  .incbin "system.raw.bin", 0x3D1B8, 0x8

glabel D_8003D5C0
  .incbin "system.raw.bin", 0x3D1C0, 0x10

glabel D_8003D5D0
  .incbin "system.raw.bin", 0x3D1D0, 0x4

glabel D_8003D5D4
  .incbin "system.raw.bin", 0x3D1D4, 0xC

glabel D_8003D5E0
  .incbin "system.raw.bin", 0x3D1E0, 0x10

glabel D_8003D5F0
  /* 3D1F0 03E1F0 8003D5F0 */
  .asciz "0123456789abcdef"
  .balign 4

glabel D_8003D604
  /* 3D204 03E204 8003D604 */
  .asciz "0123456789ABCDEF"
  .balign 4
  .incbin "system.raw.bin", 0x3D218, 0x8

glabel D_8003D620
  .incbin "system.raw.bin", 0x3D220, 0x1C

glabel D_8003D63C
  .incbin "system.raw.bin", 0x3D23C, 0x4

glabel D_8003D640
  .incbin "system.raw.bin", 0x3D240, 0x10
