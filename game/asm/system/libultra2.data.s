.include "macros.inc"

.section .data

glabel D_8003D3D0
  .incbin "system.raw.bin", 0x3CFD0, 0x10

glabel D_8003D3E0
  .incbin "system.raw.bin", 0x3CFE0, 0x10

#glabel osClockRate
#  .incbin "system.raw.bin", 0x3CFF0, 0x4
#
#glabel D_8003D3F4
#  .incbin "system.raw.bin", 0x3CFF4, 0x4
#
#glabel osViClock
#  .incbin "system.raw.bin", 0x3CFF8, 0x4
#
#glabel __osShutdown
#  .incbin "system.raw.bin", 0x3CFFC, 0x4
#
#glabel __OSGlobalIntMask
#  .incbin "system.raw.bin", 0x3D000, 0x10
