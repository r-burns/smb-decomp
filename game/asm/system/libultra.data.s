.include "macros.inc"

.section .data

glabel D_8003D330
  .incbin "system.raw.bin", 0x3CF30, 0x50

glabel D_8003D380
  .incbin "system.raw.bin", 0x3CF80, 0x30

#glabel __osThreadTail
#  .incbin "system.raw.bin", 0x3CFB0, 0x8
#
#glabel __osRunQueue
#  /* 3CFB8 03DFB8 8003D3B8 */  .4byte __osThreadTail
#
#glabel __osActiveQueue
#  /* 3CFBC 03DFBC 8003D3BC */  .4byte __osThreadTail
#
#glabel __osRunningThread
#  .incbin "system.raw.bin", 0x3CFC0, 0x4
#
#glabel __osFaultedThread
#  .incbin "system.raw.bin", 0x3CFC4, 0xC
