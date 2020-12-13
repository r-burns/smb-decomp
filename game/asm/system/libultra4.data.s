.include "macros.inc"

.section .data

#glabel D_8003D5C0
#  .incbin "system.raw.bin", 0x3D1C0, 0x10

#glabel D_8003D5D0
#  .incbin "system.raw.bin", 0x3D1D0, 0x4
#
#glabel D_8003D5D4
#  .incbin "system.raw.bin", 0x3D1D4, 0xC
#
#glabel D_8003D5E0
#  .incbin "system.raw.bin", 0x3D1E0, 0x10

#glabel D_8003D5F0
#  /* 3D1F0 03E1F0 8003D5F0 */
#  .asciz "0123456789abcdef"
#  .balign 4
#
#glabel D_8003D604
#  /* 3D204 03E204 8003D604 */
#  .asciz "0123456789ABCDEF"
#  .balign 4
#  .incbin "system.raw.bin", 0x3D218, 0x8

#glabel D_8003D620
#  .incbin "system.raw.bin", 0x3D220, 0x1C
#
#glabel D_8003D63C
#  .incbin "system.raw.bin", 0x3D23C, 0x4

glabel D_8003D640
  .incbin "system.raw.bin", 0x3D240, 0x10
