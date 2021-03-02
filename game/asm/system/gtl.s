.include "macros.inc"

.section .data

glabel D_8003B6E0
  .incbin "system.raw.bin", 0x3B2E0, 0x4

glabel D_8003B6E4
  .incbin "system.raw.bin", 0x3B2E4, 0x4

glabel D_8003B6E8
  .incbin "system.raw.bin", 0x3B2E8, 0x3

glabel D_8003B6EB
  .incbin "system.raw.bin", 0x3B2EB, 0x1

glabel D_8003B6EC
  /* 3B2EC 03C2EC 8003B6EC */  .4byte D_8003A320
  /* 3B2F0 03C2F0 8003B6F0 */  .4byte D_8003F6B0
  .incbin "system.raw.bin", 0x3B2F4, 0x5C


.section .rodata

# glabel D_8003D6F0
#   /* 3D2F0 03E2F0 8003D6F0 */
#   .asciz "gtl : DLBuffer over flow !  kind = %d  vol = %d byte\n"
#   .balign 4

# glabel D_8003D728
#   /* 3D328 03E328 8003D728 */
#   .asciz "gtl : DynamicBuffer over flow !  %d byte\n"
#   .balign 4


# glabel D_8003D754
#   /* 3D354 03E354 8003D754 */
#   .asciz "bad addr sc_rdp_output_len = %x\n"
#   .balign 4

# glabel D_8003D778
#   /* 3D378 03E378 8003D778 */
#   .asciz "gtl : Buffer size for RDP is zero !!\n"
#   .balign 4

glabel D_8003D7A0
  /* 3D3A0 03E3A0 8003D7A0 */
  .asciz "gtl : not defined SCTaskGfx\n"
  .balign 4

glabel D_8003D7C0
  /* 3D3C0 03E3C0 8003D7C0 */
  .asciz "gtl : couldn\'t get SCTaskGfx\n"
  .balign 4

glabel D_8003D7E0
  /* 3D3E0 03E3E0 8003D7E0 */
  .asciz "gtl : not defined SCTaskGfxEnd\n"
  .balign 4

glabel D_8003D800
  /* 3D400 03E400 8003D800 */
  .asciz "gtl : not defined SCTaskGfxEnd\n"
  .balign 4

glabel D_8003D820
  /* 3D420 03E420 8003D820 */
  .asciz "gtl : ucode isn\'t included  kind = %d\n"
  .balign 4

glabel D_8003D848
  /* 3D448 03E448 8003D848 */
  .asciz "gtl : not defined SCTaskGfxEnd\n"
  .balign 4

glabel jtbl_8003D868
  /* 3D468 03E468 8003D868 */  .4byte jtgt_80005164
  /* 3D46C 03E46C 8003D86C */  .4byte jtgt_80005180
  /* 3D470 03E470 8003D870 */  .4byte jtgt_80005164
  /* 3D474 03E474 8003D874 */  .4byte jtgt_80005180
  /* 3D478 03E478 8003D878 */  .4byte jtgt_80005164
  /* 3D47C 03E47C 8003D87C */  .4byte jtgt_80005180
  /* 3D480 03E480 8003D880 */  .4byte jtgt_80005164
  /* 3D484 03E484 8003D884 */  .4byte jtgt_80005180
  /* 3D488 03E488 8003D888 */  .4byte jtgt_80005164
  /* 3D48C 03E48C 8003D88C */  .4byte jtgt_80005180

glabel D_8003D890
  /* 3D490 03E490 8003D890 */  .4byte jtgt_8000522C
  /* 3D494 03E494 8003D894 */  .4byte jtgt_80005234
  /* 3D498 03E498 8003D898 */  .4byte jtgt_8000522C
  /* 3D49C 03E49C 8003D89C */  .4byte jtgt_80005234
  /* 3D4A0 03E4A0 8003D8A0 */  .4byte jtgt_8000522C
  /* 3D4A4 03E4A4 8003D8A4 */  .4byte jtgt_80005234
  /* 3D4A8 03E4A8 8003D8A8 */  .4byte jtgt_8000522C
  /* 3D4AC 03E4AC 8003D8AC */  .4byte jtgt_80005234
  /* 3D4B0 03E4B0 8003D8B0 */  .4byte jtgt_8000522C

glabel D_8003D8B4
  /* 3D4B4 03E4B4 8003D8B4 */  .4byte jtgt_800052F4
  /* 3D4B8 03E4B8 8003D8B8 */  .4byte jtgt_800052BC
  /* 3D4BC 03E4BC 8003D8BC */  .4byte jtgt_800052F4
  /* 3D4C0 03E4C0 8003D8C0 */  .4byte jtgt_800052BC
  /* 3D4C4 03E4C4 8003D8C4 */  .4byte jtgt_800052F4
  /* 3D4C8 03E4C8 8003D8C8 */  .4byte jtgt_800052BC
  /* 3D4CC 03E4CC 8003D8CC */  .4byte jtgt_800052F4
  /* 3D4D0 03E4D0 8003D8D0 */  .4byte jtgt_800052BC
  /* 3D4D4 03E4D4 8003D8D4 */  .4byte jtgt_800052F4
  /* 3D4D8 03E4D8 8003D8D8 */  .4byte jtgt_800052BC

glabel D_8003D8DC
  /* 3D4DC 03E4DC 8003D8DC */  .4byte jtgt_80005364
  /* 3D4E0 03E4E0 8003D8E0 */  .4byte jtgt_800053A8
  /* 3D4E4 03E4E4 8003D8E4 */  .4byte jtgt_800053A8
  /* 3D4E8 03E4E8 8003D8E8 */  .4byte jtgt_800053A8
  /* 3D4EC 03E4EC 8003D8EC */  .4byte jtgt_800053A8
  /* 3D4F0 03E4F0 8003D8F0 */  .4byte jtgt_800053A8
  /* 3D4F4 03E4F4 8003D8F4 */  .4byte jtgt_800053A8
  /* 3D4F8 03E4F8 8003D8F8 */  .4byte jtgt_800053A8
  /* 3D4FC 03E4FC 8003D8FC */  .4byte jtgt_800053A8
  /* 3D500 03E500 8003D900 */  .4byte jtgt_800053A8
  .incbin "system.raw.bin", 0x3D504, 0xC
