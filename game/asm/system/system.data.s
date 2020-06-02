.include "macros.inc"

.section .data

# Data Sections
#  8003B6E0 -> 8003FAD0

# system.data
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

glabel D_8003B750
  .incbin "system.raw.bin", 0x3B350, 0x8

glabel D_8003B758
  .incbin "system.raw.bin", 0x3B358, 0x40

glabel D_8003B798
  .incbin "system.raw.bin", 0x3B398, 0xC
  /* 3B3A4 03C3A4 8003B7A4 */  .4byte D_800466A0
  .incbin "system.raw.bin", 0x3B3A8, 0x3C
  /* 3B3E4 03C3E4 8003B7E4 */  .4byte D_8003B758
  .incbin "system.raw.bin", 0x3B3E8, 0x4
  /* 3B3EC 03C3EC 8003B7EC */  .4byte D_8003B758
  .incbin "system.raw.bin", 0x3B3F0, 0x80

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

glabel D_8003B930
  .incbin "system.raw.bin", 0x3B530, 0x4

glabel D_8003B934
  .incbin "system.raw.bin", 0x3B534, 0x4

glabel D_8003B938
  .incbin "system.raw.bin", 0x3B538, 0x4

glabel D_8003B93C
  .incbin "system.raw.bin", 0x3B53C, 0x4

glabel D_8003B940
  .incbin "system.raw.bin", 0x3B540, 0x4

glabel D_8003B944
  /* 3B544 03C544 8003B944 */  .4byte D_8003B940

glabel D_8003B948
  .incbin "system.raw.bin", 0x3B548, 0x4

glabel D_8003B94C
  .incbin "system.raw.bin", 0x3B54C, 0x4

glabel D_8003B950
  .incbin "system.raw.bin", 0x3B550, 0xEA8
  /* 3C3F8 03D3F8 8003C7F8 */
  .asciz "!1!"
  .balign 4
  .incbin "system.raw.bin", 0x3C3FC, 0x154

glabel D_8003C950
  .incbin "system.raw.bin", 0x3C550, 0x1B0

glabel D_8003CB00
  .incbin "system.raw.bin", 0x3C700, 0x18
  /* 3C718 03D718 8003CB18 */  .4byte D_8003C950

glabel D_8003CB1C
  .incbin "system.raw.bin", 0x3C71C, 0x4

glabel D_8003CB20
  .incbin "system.raw.bin", 0x3C720, 0x4

glabel D_8003CB24
  .incbin "system.raw.bin", 0x3C724, 0x4

glabel D_8003CB28
  .incbin "system.raw.bin", 0x3C728, 0x4

glabel D_8003CB2C
  .incbin "system.raw.bin", 0x3C72C, 0x4

glabel D_8003CB30
  .incbin "system.raw.bin", 0x3C730, 0x4

glabel D_8003CB34
  .incbin "system.raw.bin", 0x3C734, 0x8

glabel D_8003CB3C
  /* 3C73C 03D73C 8003CB3C */  .4byte D_800472D0
  .incbin "system.raw.bin", 0x3C740, 0x2D

glabel D_8003CB6D
  .incbin "system.raw.bin", 0x3C76D, 0xF

glabel D_8003CB7C
  .incbin "system.raw.bin", 0x3C77C, 0x4

glabel D_8003CB80
  .incbin "system.raw.bin", 0x3C780, 0x6

glabel D_8003CB86
  .incbin "system.raw.bin", 0x3C786, 0x2

glabel D_8003CB88
  .incbin "system.raw.bin", 0x3C788, 0x28

glabel D_8003CBB0
  .incbin "system.raw.bin", 0x3C7B0, 0x4

glabel D_8003CBB4
  .incbin "system.raw.bin", 0x3C7B4, 0x4

glabel D_8003CBB8
  .incbin "system.raw.bin", 0x3C7B8, 0x4

glabel D_8003CBBC
  .incbin "system.raw.bin", 0x3C7BC, 0x4

glabel D_8003CBC0
  .incbin "system.raw.bin", 0x3C7C0, 0x70

glabel D_8003CC30
  .incbin "system.raw.bin", 0x3C830, 0x220

glabel D_8003CE50
  /* 3CA50 03DA50 8003CE50 */
  .4byte 0x3f800000 # .float 1.0
  /* 3CA54 03DA54 8003CE54 */
  .asciz "A "
  .balign 4
  .incbin "system.raw.bin", 0x3CA58, 0x4
  /* 3CA5C 03DA5C 8003CE5C */
  .asciz "Dz"
  .balign 4
  .incbin "system.raw.bin", 0x3CA60, 0x8
  /* 3CA68 03DA68 8003CE68 */
  .asciz "It$"
  .balign 4
  .incbin "system.raw.bin", 0x3CA6C, 0x8
# ERROR Misparsed ASCII @ 03CA74 in block
  .incbin "system.raw.bin", 0x3CA74, 0x4

glabel D_8003CE78
  .incbin "system.raw.bin", 0x3CA78, 0x4

glabel D_8003CE7C
  .incbin "system.raw.bin", 0x3CA7C, 0x80

glabel D_8003CEFC
  .incbin "system.raw.bin", 0x3CAFC, 0xD8
  /* 3CBD4 03DBD4 8003CFD4 */  .4byte func_80020800
  .incbin "system.raw.bin", 0x3CBD8, 0x24

glabel D_8003CFFC
  /* 3CBFC 03DBFC 8003CFFC */  .4byte D_8003E420
  /* 3CC00 03DC00 8003D000 */  .4byte D_8003E42C
  /* 3CC04 03DC04 8003D004 */  .4byte D_8003E440
  /* 3CC08 03DC08 8003D008 */  .4byte D_8003E458
  /* 3CC0C 03DC0C 8003D00C */  .4byte D_8003E470
  /* 3CC10 03DC10 8003D010 */  .4byte D_8003E488
  /* 3CC14 03DC14 8003D014 */  .4byte D_8003E4A0
  /* 3CC18 03DC18 8003D018 */  .4byte D_8003E4B4
  /* 3CC1C 03DC1C 8003D01C */  .4byte D_8003E4C8
  /* 3CC20 03DC20 8003D020 */  .4byte D_8003E4E0
  /* 3CC24 03DC24 8003D024 */  .4byte D_8003E4F8
  /* 3CC28 03DC28 8003D028 */  .4byte D_8003E510
  /* 3CC2C 03DC2C 8003D02C */  .4byte D_8003E528
  /* 3CC30 03DC30 8003D030 */  .4byte D_8003E53C
  /* 3CC34 03DC34 8003D034 */  .4byte D_8003E54C
  /* 3CC38 03DC38 8003D038 */  .4byte D_8003E568
  /* 3CC3C 03DC3C 8003D03C */  .4byte D_8003E584
  /* 3CC40 03DC40 8003D040 */  .4byte D_8003E59C

glabel D_8003D044
  /* 3CC44 03DC44 8003D044 */  .4byte D_8003E5B8
  /* 3CC48 03DC48 8003D048 */  .4byte D_8003E5D0
  /* 3CC4C 03DC4C 8003D04C */  .4byte D_8003E5E4
  /* 3CC50 03DC50 8003D050 */  .4byte D_8003E5F8
  /* 3CC54 03DC54 8003D054 */  .4byte D_8003E604
  /* 3CC58 03DC58 8003D058 */  .4byte D_8003E610

glabel D_8003D05C
  .incbin "system.raw.bin", 0x3CC5C, 0x4

glabel D_8003D060
  .incbin "system.raw.bin", 0x3CC60, 0x10
