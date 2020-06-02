.include "macros.inc"

.section .rodata

glabel D_8003D670
  /* 3D270 03E270 8003D670 */
  .asciz "rdp_output_buff over !! size = %d\n byte"
  .balign 4

glabel jtbl_8003D698
  /* 3D298 03E298 8003D698 */  .4byte jtgt_80001A3C
  /* 3D29C 03E29C 8003D69C */  .4byte jtgt_80001AC8
  /* 3D2A0 03E2A0 8003D6A0 */  .4byte jtgt_80001AE4
  /* 3D2A4 03E2A4 8003D6A4 */  .4byte jtgt_80001B1C
  /* 3D2A8 03E2A8 8003D6A8 */  .4byte jtgt_80001B68
  /* 3D2AC 03E2AC 8003D6AC */  .4byte jtgt_80001BB0
  /* 3D2B0 03E2B0 8003D6B0 */  .4byte jtgt_80001D28
  /* 3D2B4 03E2B4 8003D6B4 */  .4byte jtgt_80001D48
  /* 3D2B8 03E2B8 8003D6B8 */  .4byte jtgt_80001D80
  /* 3D2BC 03E2BC 8003D6BC */  .4byte jtgt_80001DB8
  /* 3D2C0 03E2C0 8003D6C0 */  .4byte jtgt_80001DE0
  .incbin "system.raw.bin", 0x3D2C4, 0xC
