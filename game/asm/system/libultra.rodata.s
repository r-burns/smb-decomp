.include "macros.inc"

.section .rodata

# This probably isn't fully correct, but will have to do until more files are
# split from system.s

#glabel __osRcpImTable
#  .incbin "system.raw.bin", 0x3ECE0, 0x80

#glabel D_8003F160
#  .incbin "system.raw.bin", 0x3ED60, 0x28
#
#glabel D_8003F188
#  /* 3ED88 03FD88 8003F188 */
#  .8byte 0x3fd45f306dc9c883 # .double 0.3183098861837907
#
#glabel D_8003F190
#  /* 3ED90 03FD90 8003F190 */
#  .8byte 0x400921fb50000000 # .double 3.1415926218032837
#
#glabel D_8003F198
#  /* 3ED98 03FD98 8003F198 */
#  .8byte 0x3e6110b4611a6263 # .double 3.178650954705639e-8
#  .incbin "system.raw.bin", 0x3EDA0, 0x10

#glabel D_8003F1B0
#  .incbin "system.raw.bin", 0x3EDB0, 0x20
#
#glabel jtbl_8003F1D0
#  /* 3EDD0 03FDD0 8003F1D0 */  .4byte jtgt_80031128
#  /* 3EDD4 03FDD4 8003F1D4 */  .4byte jtgt_800310F0
#  /* 3EDD8 03FDD8 8003F1D8 */  .4byte jtgt_800310D0
#  /* 3EDDC 03FDDC 8003F1DC */  .4byte jtgt_80030F34
#  /* 3EDE0 03FDE0 8003F1E0 */  .4byte jtgt_80030EF0
#  /* 3EDE4 03FDE4 8003F1E4 */  .4byte jtgt_80031074
#  /* 3EDE8 03FDE8 8003F1E8 */  .4byte jtgt_80030EB8
#  /* 3EDEC 03FDEC 8003F1EC */  .4byte jtgt_80030EC4
#  /* 3EDF0 03FDF0 8003F1F0 */  .4byte jtgt_80030ED0
#  .incbin "system.raw.bin", 0x3EDF4, 0xC

#glabel jtbl_8003F200
#  /* 3EE00 03FE00 8003F200 */  .4byte jtgt_8003331C
#  /* 3EE04 03FE04 8003F204 */  .4byte jtgt_80033214
#  /* 3EE08 03FE08 8003F208 */  .4byte jtgt_80033250
#  /* 3EE0C 03FE0C 8003F20C */  .4byte jtgt_8003333C
#  /* 3EE10 03FE10 8003F210 */  .4byte jtgt_8003333C
#  /* 3EE14 03FE14 8003F214 */  .4byte jtgt_8003328C
#  /* 3EE18 03FE18 8003F218 */  .4byte jtgt_800332D4
#  .incbin "system.raw.bin", 0x3EE1C, 0x4

#glabel D_8003F220
#  /* 3EE20 03FE20 8003F220 */
#  .asciz "hlL"
#  .balign 4

#glabel D_8003F224
#  /* 3EE24 03FE24 8003F224 */
#  .asciz " +-#0"
#  .balign 4

#glabel D_8003F22C
#  .incbin "system.raw.bin", 0x3EE2C, 0x18

#glabel jtbl_8003F244
#  /* 3EE44 03FE44 8003F244 */  .4byte jtgt_80033958
#  /* 3EE48 03FE48 8003F248 */  .4byte jtgt_80033C38
#  /* 3EE4C 03FE4C 8003F24C */  .4byte jtgt_80033958
#  /* 3EE50 03FE50 8003F250 */  .4byte jtgt_80033C38
#  /* 3EE54 03FE54 8003F254 */  .4byte jtgt_80033C38
#  /* 3EE58 03FE58 8003F258 */  .4byte jtgt_80033C38
#  /* 3EE5C 03FE5C 8003F25C */  .4byte jtgt_80033C38
#  /* 3EE60 03FE60 8003F260 */  .4byte jtgt_80033C38
#  /* 3EE64 03FE64 8003F264 */  .4byte jtgt_80033C38
#  /* 3EE68 03FE68 8003F268 */  .4byte jtgt_80033C38
#  /* 3EE6C 03FE6C 8003F26C */  .4byte jtgt_80033C38
#  /* 3EE70 03FE70 8003F270 */  .4byte jtgt_80033C38
#  /* 3EE74 03FE74 8003F274 */  .4byte jtgt_80033C38
#  /* 3EE78 03FE78 8003F278 */  .4byte jtgt_80033C38
#  /* 3EE7C 03FE7C 8003F27C */  .4byte jtgt_80033C38
#  /* 3EE80 03FE80 8003F280 */  .4byte jtgt_80033C38
#  /* 3EE84 03FE84 8003F284 */  .4byte jtgt_80033C38
#  /* 3EE88 03FE88 8003F288 */  .4byte jtgt_80033C38
#  /* 3EE8C 03FE8C 8003F28C */  .4byte jtgt_80033C38
#  /* 3EE90 03FE90 8003F290 */  .4byte jtgt_80033808
#  /* 3EE94 03FE94 8003F294 */  .4byte jtgt_80033C38
#  /* 3EE98 03FE98 8003F298 */  .4byte jtgt_80033C38
#  /* 3EE9C 03FE9C 8003F29C */  .4byte jtgt_80033C38
#  /* 3EEA0 03FEA0 8003F2A0 */  .4byte jtgt_80033C38
#  /* 3EEA4 03FEA4 8003F2A4 */  .4byte jtgt_80033C38
#  /* 3EEA8 03FEA8 8003F2A8 */  .4byte jtgt_80033C38
#  /* 3EEAC 03FEAC 8003F2AC */  .4byte jtgt_80033C38
#  /* 3EEB0 03FEB0 8003F2B0 */  .4byte jtgt_80033C38
#  /* 3EEB4 03FEB4 8003F2B4 */  .4byte jtgt_80033C38
#  /* 3EEB8 03FEB8 8003F2B8 */  .4byte jtgt_80033C38
#  /* 3EEBC 03FEBC 8003F2BC */  .4byte jtgt_80033660
#  /* 3EEC0 03FEC0 8003F2C0 */  .4byte jtgt_80033698
#  /* 3EEC4 03FEC4 8003F2C4 */  .4byte jtgt_80033958
#  /* 3EEC8 03FEC8 8003F2C8 */  .4byte jtgt_80033958
#  /* 3EECC 03FECC 8003F2CC */  .4byte jtgt_80033958
#  /* 3EED0 03FED0 8003F2D0 */  .4byte jtgt_80033C38
#  /* 3EED4 03FED4 8003F2D4 */  .4byte jtgt_80033698
#  /* 3EED8 03FED8 8003F2D8 */  .4byte jtgt_80033C38
#  /* 3EEDC 03FEDC 8003F2DC */  .4byte jtgt_80033C38
#  /* 3EEE0 03FEE0 8003F2E0 */  .4byte jtgt_80033C38
#  /* 3EEE4 03FEE4 8003F2E4 */  .4byte jtgt_80033C38
#  /* 3EEE8 03FEE8 8003F2E8 */  .4byte jtgt_80033ABC
#  /* 3EEEC 03FEEC 8003F2EC */  .4byte jtgt_80033808
#  /* 3EEF0 03FEF0 8003F2F0 */  .4byte jtgt_80033B8C
#  /* 3EEF4 03FEF4 8003F2F4 */  .4byte jtgt_80033C38
#  /* 3EEF8 03FEF8 8003F2F8 */  .4byte jtgt_80033C38
#  /* 3EEFC 03FEFC 8003F2FC */  .4byte jtgt_80033BD4
#  /* 3EF00 03FF00 8003F300 */  .4byte jtgt_80033C38
#  /* 3EF04 03FF04 8003F304 */  .4byte jtgt_80033808
#  /* 3EF08 03FF08 8003F308 */  .4byte jtgt_80033C38
#  /* 3EF0C 03FF0C 8003F30C */  .4byte jtgt_80033C38
#  /* 3EF10 03FF10 8003F310 */  .4byte jtgt_80033808
#  .incbin "system.raw.bin", 0x3EF14, 0xC

#glabel D_8003F320
#  .incbin "system.raw.bin", 0x3EF20, 0x28
#
#glabel D_8003F348
#  /* 3EF48 03FF48 8003F348 */
#  .8byte 0x3fd45f306dc9c883 # .double 0.3183098861837907
#
#glabel D_8003F350
#  /* 3EF50 03FF50 8003F350 */
#  .8byte 0x400921fb50000000 # .double 3.1415926218032837
#
#glabel D_8003F358
#  /* 3EF58 03FF58 8003F358 */
#  .8byte 0x3e6110b4611a6263 # .double 3.178650954705639e-8
#  .incbin "system.raw.bin", 0x3EF60, 0x10

#glabel __libm_qnan_f
#  /* 3EF70 03FF70 8003F370 */
#  .4byte 0x7f810000 # .float NaN
#  .incbin "system.raw.bin", 0x3EF74, 0xC
