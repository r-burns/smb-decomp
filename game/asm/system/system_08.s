.include "macros.inc"

.section .data
# 08
glabel D_8003B950
  .incbin "system.raw.bin", 0x3B550, 0xEA8
  /* 3C3F8 03D3F8 8003C7F8 */
  .asciz "!1!"
  .balign 4
  .incbin "system.raw.bin", 0x3C3FC, 0x154

