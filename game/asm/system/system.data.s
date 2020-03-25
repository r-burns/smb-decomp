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

glabel D_8003D070
  .incbin "system.raw.bin", 0x3CC70, 0x4

glabel D_8003D074
  .incbin "system.raw.bin", 0x3CC74, 0xC

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

glabel D_8003D4B0
  .incbin "system.raw.bin", 0x3D0B0, 0x50

glabel D_8003D500
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

glabel D_8003D650
  /* 3D250 03E250 8003D650 */
  .asciz "thread stack overflow  id = %d\n"
  .balign 4

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

glabel jtbl_8003D6D0
  /* 3D2D0 03E2D0 8003D6D0 */  .4byte jtgt_80004508
  /* 3D2D4 03E2D4 8003D6D4 */  .4byte jtgt_8000453C
  /* 3D2D8 03E2D8 8003D6D8 */  .4byte jtgt_80004584
  /* 3D2DC 03E2DC 8003D6DC */  .4byte jtgt_800045F4
  /* 3D2E0 03E2E0 8003D6E0 */  .4byte jtgt_8000464C
  /* 3D2E4 03E2E4 8003D6E4 */  .4byte jtgt_80004620
  .incbin "system.raw.bin", 0x3D2E8, 0x8

glabel D_8003D6F0
  /* 3D2F0 03E2F0 8003D6F0 */
  .asciz "gtl : DLBuffer over flow !  kind = %d  vol = %d byte\n"
  .balign 4

glabel D_8003D728
  /* 3D328 03E328 8003D728 */
  .asciz "gtl : DynamicBuffer over flow !  %d byte\n"
  .balign 4

glabel D_8003D754
  /* 3D354 03E354 8003D754 */
  .asciz "bad addr sc_rdp_output_len = %x\n"
  .balign 4

glabel D_8003D778
  /* 3D378 03E378 8003D778 */
  .asciz "gtl : Buffer size for RDP is zero !!\n"
  .balign 4

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

glabel D_8003D910
  /* 3D510 03E510 8003D910 */
  .asciz "ml : alloc overflow #%d\n"
  .balign 4
  .incbin "system.raw.bin", 0x3D52C, 0x4

glabel D_8003D930
  /* 3D530 03E530 8003D930 */
  .asciz "om : couldn\'t get GObjThread\n"
  .balign 4

glabel D_8003D950
  /* 3D550 03E550 8003D950 */
  .asciz "om : Illegal GObjThreadStack Link\n"
  .balign 4

glabel D_8003D974
  /* 3D574 03E574 8003D974 */
  .asciz "om : couldn\'t get GObjProcess\n"
  .balign 4

glabel D_8003D994
  /* 3D594 03E594 8003D994 */
  .asciz "om : couldn\'t get OMMtx\n"
  .balign 4

glabel D_8003D9B0
  /* 3D5B0 03E5B0 8003D9B0 */
  .asciz "om : couldn\'t get AObj\n"
  .balign 4

glabel D_8003D9C8
  /* 3D5C8 03E5C8 8003D9C8 */
  .asciz "om : couldn\'t get MObj\n"
  .balign 4

glabel D_8003D9E0
  /* 3D5E0 03E5E0 8003D9E0 */
  .asciz "om : couldn\'t get DObj\n"
  .balign 4

glabel D_8003D9F8
  /* 3D5F8 03E5F8 8003D9F8 */
  .asciz "om : couldn\'t get SObj\n"
  .balign 4

glabel D_8003DA10
  /* 3D610 03E610 8003DA10 */
  .asciz "om : couldn\'t get Camera\n"
  .balign 4

glabel D_8003DA2C
  /* 3D62C 03E62C 8003DA2C */
  .asciz "om : GObjProcess\'s priority is bad value\n"
  .balign 4
  /* 3D658 03E658 8003DA58 */
  .asciz "om : GObjProcess\'s kind is bad value\n"
  .balign 4

glabel D_8003DA80
  /* 3D680 03E680 8003DA80 */
  .asciz "om : GObjProcess\'s priority is bad value\n"
  .balign 4

glabel D_8003DAAC
  /* 3D6AC 03E6AC 8003DAAC */
  .asciz "om : couldn\'t add OMMtx for DObj\n"
  .balign 4

glabel D_8003DAD0
  /* 3D6D0 03E6D0 8003DAD0 */
  .asciz "om : couldn\'t add OMMtx for Camera\n"
  .balign 4

glabel D_8003DAF4
  /* 3D6F4 03E6F4 8003DAF4 */
  .asciz "omGAddCommon() : link num over : link = %d : id = %d\n"
  .balign 4

glabel D_8003DB2C
  /* 3D72C 03E72C 8003DB2C */
  .asciz "omGMoveCommon() : link num over : link = %d : id = %d\n"
  .balign 4

glabel D_8003DB64
  /* 3D764 03E764 8003DB64 */
  .asciz "omGLinkObjDLCommon() : dl_link num over : dl_link = %d : id = %d\n"
  .balign 4

glabel D_8003DBA8
  /* 3D7A8 03E7A8 8003DBA8 */
  .asciz "omGMoveObjDL() : dl_link num over : dl_link = %d : id = %d\n"
  .balign 4

glabel D_8003DBE4
  /* 3D7E4 03E7E4 8003DBE4 */
  .asciz "omGMoveObjDLHead() : dl_link num over : dl_link = %d : id = %d\n"
  .balign 4

glabel jtbl_8003DC24
  /* 3D824 03E824 8003DC24 */  .4byte jtgt_80008CA0
  /* 3D828 03E828 8003DC28 */  .4byte jtgt_80008CA0
  /* 3D82C 03E82C 8003DC2C */  .4byte jtgt_80008CA0
  /* 3D830 03E830 8003DC30 */  .4byte jtgt_80008CA0
  /* 3D834 03E834 8003DC34 */  .4byte jtgt_80008CA0
  /* 3D838 03E838 8003DC38 */  .4byte jtgt_80008CA0
  /* 3D83C 03E83C 8003DC3C */  .4byte jtgt_80008CA0
  /* 3D840 03E840 8003DC40 */  .4byte jtgt_80008CA0
  /* 3D844 03E844 8003DC44 */  .4byte jtgt_80008CA0
  /* 3D848 03E848 8003DC48 */  .4byte jtgt_80008CA0
  /* 3D84C 03E84C 8003DC4C */  .4byte jtgt_80008CA0
  /* 3D850 03E850 8003DC50 */  .4byte jtgt_80008CA0
  /* 3D854 03E854 8003DC54 */  .4byte jtgt_80008CA0
  /* 3D858 03E858 8003DC58 */  .4byte jtgt_80008CA0
  /* 3D85C 03E85C 8003DC5C */  .4byte jtgt_80008CA0
  /* 3D860 03E860 8003DC60 */  .4byte jtgt_80008CA0
  /* 3D864 03E864 8003DC64 */  .4byte jtgt_80008CA0
  /* 3D868 03E868 8003DC68 */  .4byte jtgt_800086D0
  /* 3D86C 03E86C 8003DC6C */  .4byte jtgt_80008700
  /* 3D870 03E870 8003DC70 */  .4byte jtgt_80008738
  /* 3D874 03E874 8003DC74 */  .4byte jtgt_8000879C
  /* 3D878 03E878 8003DC78 */  .4byte jtgt_800087D4
  /* 3D87C 03E87C 8003DC7C */  .4byte jtgt_80008700
  /* 3D880 03E880 8003DC80 */  .4byte jtgt_80008738
  /* 3D884 03E884 8003DC84 */  .4byte jtgt_80008838
  /* 3D888 03E888 8003DC88 */  .4byte jtgt_8000879C
  /* 3D88C 03E88C 8003DC8C */  .4byte jtgt_800087D4
  /* 3D890 03E890 8003DC90 */  .4byte jtgt_800088C8
  /* 3D894 03E894 8003DC94 */  .4byte jtgt_8000879C
  /* 3D898 03E898 8003DC98 */  .4byte jtgt_800087D4
  /* 3D89C 03E89C 8003DC9C */  .4byte jtgt_800088C8
  /* 3D8A0 03E8A0 8003DCA0 */  .4byte jtgt_80008958
  /* 3D8A4 03E8A4 8003DCA4 */  .4byte jtgt_80008CA0
  /* 3D8A8 03E8A8 8003DCA8 */  .4byte jtgt_800086D0
  /* 3D8AC 03E8AC 8003DCAC */  .4byte jtgt_80008CA0
  /* 3D8B0 03E8B0 8003DCB0 */  .4byte jtgt_800086D0
  /* 3D8B4 03E8B4 8003DCB4 */  .4byte jtgt_80008CA0
  /* 3D8B8 03E8B8 8003DCB8 */  .4byte jtgt_800086D0
  /* 3D8BC 03E8BC 8003DCBC */  .4byte jtgt_80008CA0
  /* 3D8C0 03E8C0 8003DCC0 */  .4byte jtgt_800086D0
  /* 3D8C4 03E8C4 8003DCC4 */  .4byte jtgt_80008CA0
  /* 3D8C8 03E8C8 8003DCC8 */  .4byte jtgt_80008CA0
  /* 3D8CC 03E8CC 8003DCCC */  .4byte jtgt_80008958
  /* 3D8D0 03E8D0 8003DCD0 */  .4byte jtgt_80008958
  /* 3D8D4 03E8D4 8003DCD4 */  .4byte jtgt_80008988
  /* 3D8D8 03E8D8 8003DCD8 */  .4byte jtgt_80008988
  /* 3D8DC 03E8DC 8003DCDC */  .4byte jtgt_80008958
  /* 3D8E0 03E8E0 8003DCE0 */  .4byte jtgt_80008958
  /* 3D8E4 03E8E4 8003DCE4 */  .4byte jtgt_80008958
  /* 3D8E8 03E8E8 8003DCE8 */  .4byte jtgt_80008958
  /* 3D8EC 03E8EC 8003DCEC */  .4byte jtgt_800087D4
  /* 3D8F0 03E8F0 8003DCF0 */  .4byte jtgt_800087D4
  /* 3D8F4 03E8F4 8003DCF4 */  .4byte jtgt_80008958
  /* 3D8F8 03E8F8 8003DCF8 */  .4byte jtgt_800088C8
  /* 3D8FC 03E8FC 8003DCFC */  .4byte jtgt_800086D0
  /* 3D900 03E900 8003DD00 */  .4byte jtgt_800089EC
  /* 3D904 03E904 8003DD04 */  .4byte jtgt_80008A1C
  /* 3D908 03E908 8003DD08 */  .4byte jtgt_80008A54
  /* 3D90C 03E90C 8003DD0C */  .4byte jtgt_80008A8C
  /* 3D910 03E910 8003DD10 */  .4byte jtgt_80008ABC
  /* 3D914 03E914 8003DD14 */  .4byte jtgt_80008B20
  /* 3D918 03E918 8003DD18 */  .4byte jtgt_80008BB0
  /* 3D91C 03E91C 8003DD1C */  .4byte jtgt_80008C14

glabel D_8003DD20
  /* 3D920 03E920 8003DD20 */  .4byte jtgt_80008E5C
  /* 3D924 03E924 8003DD24 */  .4byte jtgt_80008E5C
  /* 3D928 03E928 8003DD28 */  .4byte jtgt_80008D84
  /* 3D92C 03E92C 8003DD2C */  .4byte jtgt_80008D84
  /* 3D930 03E930 8003DD30 */  .4byte jtgt_80008DCC
  /* 3D934 03E934 8003DD34 */  .4byte jtgt_80008E1C
  /* 3D938 03E938 8003DD38 */  .4byte jtgt_80008E1C
  /* 3D93C 03E93C 8003DD3C */  .4byte jtgt_80008E1C
  /* 3D940 03E940 8003DD40 */  .4byte jtgt_80008E1C
  /* 3D944 03E944 8003DD44 */  .4byte jtgt_80008E1C
  /* 3D948 03E948 8003DD48 */  .4byte jtgt_80008E1C
  /* 3D94C 03E94C 8003DD4C */  .4byte jtgt_80008E1C
  /* 3D950 03E950 8003DD50 */  .4byte jtgt_80008E1C
  /* 3D954 03E954 8003DD54 */  .4byte jtgt_80008E1C
  /* 3D958 03E958 8003DD58 */  .4byte jtgt_80008E1C
  /* 3D95C 03E95C 8003DD5C */  .4byte jtgt_80008E1C
  /* 3D960 03E960 8003DD60 */  .4byte jtgt_80008E1C

glabel D_8003DD64
  /* 3D964 03E964 8003DD64 */
  .4byte 0xff7fffff # .float -3.4028235e38

glabel D_8003DD68
  /* 3D968 03E968 8003DD68 */
  .4byte 0xff7fffff # .float -3.4028235e38

glabel D_8003DD6C
  /* 3D96C 03E96C 8003DD6C */
  .4byte 0xff7fffff # .float -3.4028235e38

glabel D_8003DD70
  /* 3D970 03E970 8003DD70 */
  .4byte 0xff7fffff # .float -3.4028235e38

glabel D_8003DD74
  /* 3D974 03E974 8003DD74 */
  .4byte 0xff7fffff # .float -3.4028235e38

glabel D_8003DD78
  /* 3D978 03E978 8003DD78 */
  .4byte 0xff7fffff # .float -3.4028235e38
  .incbin "system.raw.bin", 0x3D97C, 0x4

glabel jtbl_8003DD80
  /* 3D980 03E980 8003DD80 */  .4byte jtgt_8000AE74
  /* 3D984 03E984 8003DD84 */  .4byte jtgt_8000AE58
  /* 3D988 03E988 8003DD88 */  .4byte jtgt_8000AE44
  /* 3D98C 03E98C 8003DD8C */  .4byte jtgt_8000AE30
  /* 3D990 03E990 8003DD90 */  .4byte jtgt_8000AE20
  .incbin "system.raw.bin", 0x3D994, 0xC

glabel D_8003DDA0
  /* 3D9A0 03E9A0 8003DDA0 */
  .asciz "gobjthread stack over  gobjid = %d\n"
  .balign 4
  .incbin "system.raw.bin", 0x3D9C4, 0xC

glabel D_8003DDD0
  /* 3D9D0 03E9D0 8003DDD0 */
  .4byte 0xfeffffff # .float -1.7014117e38

glabel D_8003DDD4
  /* 3D9D4 03E9D4 8003DDD4 */
  .4byte 0xfeffffff # .float -1.7014117e38

glabel D_8003DDD8
  /* 3D9D8 03E9D8 8003DDD8 */
  .4byte 0xff7fffff # .float -3.4028235e38

glabel D_8003DDDC
  /* 3D9DC 03E9DC 8003DDDC */
  .4byte 0xff7fffff # .float -3.4028235e38

glabel D_8003DDE0
  /* 3D9E0 03E9E0 8003DDE0 */
  .4byte 0xff7fffff # .float -3.4028235e38

glabel D_8003DDE4
  /* 3D9E4 03E9E4 8003DDE4 */
  .4byte 0xfeffffff # .float -1.7014117e38

glabel D_8003DDE8
  /* 3D9E8 03E9E8 8003DDE8 */
  .4byte 0xfeaaaaaa # .float -1.1342745e38

glabel jtbl_8003DDEC
  /* 3D9EC 03E9EC 8003DDEC */  .4byte jtgt_8000C7E0
  /* 3D9F0 03E9F0 8003DDF0 */  .4byte jtgt_8000C6CC
  /* 3D9F4 03E9F4 8003DDF4 */  .4byte jtgt_8000C548
  /* 3D9F8 03E9F8 8003DDF8 */  .4byte jtgt_8000C2B0
  /* 3D9FC 03E9FC 8003DDFC */  .4byte jtgt_8000C2B0
  /* 3DA00 03EA00 8003DE00 */  .4byte jtgt_8000C3B8
  /* 3DA04 03EA04 8003DE04 */  .4byte jtgt_8000C3B8
  /* 3DA08 03EA08 8003DE08 */  .4byte jtgt_8000C4D0
  /* 3DA0C 03EA0C 8003DE0C */  .4byte jtgt_8000C1AC
  /* 3DA10 03EA10 8003DE10 */  .4byte jtgt_8000C1AC
  /* 3DA14 03EA14 8003DE14 */  .4byte jtgt_8000C584
  /* 3DA18 03EA18 8003DE18 */  .4byte jtgt_8000C584
  /* 3DA1C 03EA1C 8003DE1C */  .4byte jtgt_8000C70C
  /* 3DA20 03EA20 8003DE20 */  .4byte jtgt_8000C798
  /* 3DA24 03EA24 8003DE24 */  .4byte jtgt_8000C674
  /* 3DA28 03EA28 8003DE28 */  .4byte jtgt_8000C868
  /* 3DA2C 03EA2C 8003DE2C */  .4byte jtgt_8000C8B4
  /* 3DA30 03EA30 8003DE30 */  .4byte jtgt_8000C944

glabel D_8003DE34
  /* 3DA34 03EA34 8003DE34 */
  .4byte 0xfeaaaaaa # .float -1.1342745e38

glabel D_8003DE38
  /* 3DA38 03EA38 8003DE38 */
  .4byte 0xff7fffff # .float -3.4028235e38

glabel D_8003DE3C
  /* 3DA3C 03EA3C 8003DE3C */
  .4byte 0xfeaaaaaa # .float -1.1342745e38

glabel jtbl_8003DE40
  /* 3DA40 03EA40 8003DE40 */  .4byte jtgt_8000CE84
  /* 3DA44 03EA44 8003DE44 */  .4byte jtgt_8000CE8C
  /* 3DA48 03EA48 8003DE48 */  .4byte jtgt_8000CE94
  /* 3DA4C 03EA4C 8003DE4C */  .4byte jtgt_8000CE9C
  /* 3DA50 03EA50 8003DE50 */  .4byte jtgt_8000CEE0
  /* 3DA54 03EA54 8003DE54 */  .4byte jtgt_8000CEE8
  /* 3DA58 03EA58 8003DE58 */  .4byte jtgt_8000CEF0
  /* 3DA5C 03EA5C 8003DE5C */  .4byte jtgt_8000CEF8
  /* 3DA60 03EA60 8003DE60 */  .4byte jtgt_8000CF00
  /* 3DA64 03EA64 8003DE64 */  .4byte jtgt_8000CF08

glabel D_8003DE68
  /* 3DA68 03EA68 8003DE68 */
  .4byte 0xfeaaaaaa # .float -1.1342745e38

glabel D_8003DE6C
  /* 3DA6C 03EA6C 8003DE6C */
  .4byte 0xff7fffff # .float -3.4028235e38

glabel D_8003DE70
  /* 3DA70 03EA70 8003DE70 */
  .4byte 0xff7fffff # .float -3.4028235e38

glabel D_8003DE74
  /* 3DA74 03EA74 8003DE74 */
  .4byte 0xfeffffff # .float -1.7014117e38

glabel D_8003DE78
  /* 3DA78 03EA78 8003DE78 */
  .4byte 0xfeaaaaaa # .float -1.1342745e38

glabel jtbl_8003DE7C
  /* 3DA7C 03EA7C 8003DE7C */  .4byte jtgt_8000D6E8
  /* 3DA80 03EA80 8003DE80 */  .4byte jtgt_8000D644
  /* 3DA84 03EA84 8003DE84 */  .4byte jtgt_8000D4F4
  /* 3DA88 03EA88 8003DE88 */  .4byte jtgt_8000D258
  /* 3DA8C 03EA8C 8003DE8C */  .4byte jtgt_8000D258
  /* 3DA90 03EA90 8003DE90 */  .4byte jtgt_8000D360
  /* 3DA94 03EA94 8003DE94 */  .4byte jtgt_8000D360
  /* 3DA98 03EA98 8003DE98 */  .4byte jtgt_8000D47C
  /* 3DA9C 03EA9C 8003DE9C */  .4byte jtgt_8000D150
  /* 3DAA0 03EAA0 8003DEA0 */  .4byte jtgt_8000D150
  /* 3DAA4 03EAA4 8003DEA4 */  .4byte jtgt_8000D530
  /* 3DAA8 03EAA8 8003DEA8 */  .4byte jtgt_8000D530
  /* 3DAAC 03EAAC 8003DEAC */  .4byte jtgt_8000D65C
  /* 3DAB0 03EAB0 8003DEB0 */  .4byte jtgt_8000D9F0
  /* 3DAB4 03EAB4 8003DEB4 */  .4byte jtgt_8000D624
  /* 3DAB8 03EAB8 8003DEB8 */  .4byte jtgt_8000D9F0
  /* 3DABC 03EABC 8003DEBC */  .4byte jtgt_8000D9F0
  /* 3DAC0 03EAC0 8003DEC0 */  .4byte jtgt_8000D9F0
  /* 3DAC4 03EAC4 8003DEC4 */  .4byte jtgt_8000D73C
  /* 3DAC8 03EAC8 8003DEC8 */  .4byte jtgt_8000D73C
  /* 3DACC 03EACC 8003DECC */  .4byte jtgt_8000D82C
  /* 3DAD0 03EAD0 8003DED0 */  .4byte jtgt_8000D82C
  /* 3DAD4 03EAD4 8003DED4 */  .4byte jtgt_8000D924

glabel D_8003DED8
  /* 3DAD8 03EAD8 8003DED8 */
  .4byte 0xfeaaaaaa # .float -1.1342745e38

glabel D_8003DEDC
  /* 3DADC 03EADC 8003DEDC */
  .4byte 0xff7fffff # .float -3.4028235e38

glabel D_8003DEE0
  /* 3DAE0 03EAE0 8003DEE0 */
  .4byte 0xfeaaaaaa # .float -1.1342745e38

glabel jtbl_8003DEE4
  /* 3DAE4 03EAE4 8003DEE4 */  .4byte jtgt_8000DBEC
  /* 3DAE8 03EAE8 8003DEE8 */  .4byte jtgt_8000DC74
  /* 3DAEC 03EAEC 8003DEEC */  .4byte jtgt_8000DC7C
  /* 3DAF0 03EAF0 8003DEF0 */  .4byte jtgt_8000DC84
  /* 3DAF4 03EAF4 8003DEF4 */  .4byte jtgt_8000DC8C
  /* 3DAF8 03EAF8 8003DEF8 */  .4byte jtgt_8000DC94
  /* 3DAFC 03EAFC 8003DEFC */  .4byte jtgt_8000DD1C
  /* 3DB00 03EB00 8003DF00 */  .4byte jtgt_8000DD24
  /* 3DB04 03EB04 8003DF04 */  .4byte jtgt_8000DD2C
  /* 3DB08 03EB08 8003DF08 */  .4byte jtgt_8000DD34

glabel D_8003DF0C
  /* 3DB0C 03EB0C 8003DF0C */  .4byte jtgt_8000DEAC
  /* 3DB10 03EB10 8003DF10 */  .4byte jtgt_8000DEB8
  /* 3DB14 03EB14 8003DF14 */  .4byte jtgt_8000DEC4
  /* 3DB18 03EB18 8003DF18 */  .4byte jtgt_8000DED0
  /* 3DB1C 03EB1C 8003DF1C */  .4byte jtgt_8000DEDC

glabel D_8003DF20
  /* 3DB20 03EB20 8003DF20 */
  .4byte 0xfeaaaaaa # .float -1.1342745e38

glabel D_8003DF24
  /* 3DB24 03EB24 8003DF24 */
  .4byte 0xff7fffff # .float -3.4028235e38

glabel jtbl_8003DF28
  /* 3DB28 03EB28 8003DF28 */  .4byte jtgt_8000E0A8
  /* 3DB2C 03EB2C 8003DF2C */  .4byte jtgt_8000E0B0
  /* 3DB30 03EB30 8003DF30 */  .4byte jtgt_8000E0B8
  /* 3DB34 03EB34 8003DF34 */  .4byte jtgt_8000E0EC
  /* 3DB38 03EB38 8003DF38 */  .4byte jtgt_8000E0C0
  /* 3DB3C 03EB3C 8003DF3C */  .4byte jtgt_8000E0C8
  /* 3DB40 03EB40 8003DF40 */  .4byte jtgt_8000E0D0
  /* 3DB44 03EB44 8003DF44 */  .4byte jtgt_8000E0D8
  /* 3DB48 03EB48 8003DF48 */  .4byte jtgt_8000E0E0
  /* 3DB4C 03EB4C 8003DF4C */  .4byte jtgt_8000E0E8

glabel D_8003DF50
  /* 3DB50 03EB50 8003DF50 */  .4byte jtgt_8000E118
  /* 3DB54 03EB54 8003DF54 */  .4byte jtgt_8000E120
  /* 3DB58 03EB58 8003DF58 */  .4byte jtgt_8000E128
  /* 3DB5C 03EB5C 8003DF5C */  .4byte jtgt_8000E15C
  /* 3DB60 03EB60 8003DF60 */  .4byte jtgt_8000E130
  /* 3DB64 03EB64 8003DF64 */  .4byte jtgt_8000E138
  /* 3DB68 03EB68 8003DF68 */  .4byte jtgt_8000E140
  /* 3DB6C 03EB6C 8003DF6C */  .4byte jtgt_8000E148
  /* 3DB70 03EB70 8003DF70 */  .4byte jtgt_8000E150
  /* 3DB74 03EB74 8003DF74 */  .4byte jtgt_8000E158

glabel D_8003DF78
  /* 3DB78 03EB78 8003DF78 */
  .4byte 0xfeaaaaaa # .float -1.1342745e38

glabel D_8003DF7C
  /* 3DB7C 03EB7C 8003DF7C */
  .4byte 0xfeaaaaaa # .float -1.1342745e38

glabel jtbl_8003DF80
  /* 3DB80 03EB80 8003DF80 */  .4byte jtgt_8000E460
  /* 3DB84 03EB84 8003DF84 */  .4byte jtgt_8000E460
  /* 3DB88 03EB88 8003DF88 */  .4byte jtgt_8000E460
  /* 3DB8C 03EB8C 8003DF8C */  .4byte jtgt_8000E478
  /* 3DB90 03EB90 8003DF90 */  .4byte jtgt_8000E468
  /* 3DB94 03EB94 8003DF94 */  .4byte jtgt_8000E468
  /* 3DB98 03EB98 8003DF98 */  .4byte jtgt_8000E468
  /* 3DB9C 03EB9C 8003DF9C */  .4byte jtgt_8000E470
  /* 3DBA0 03EBA0 8003DFA0 */  .4byte jtgt_8000E470
  /* 3DBA4 03EBA4 8003DFA4 */  .4byte jtgt_8000E470
  .incbin "system.raw.bin", 0x3DBA8, 0x4

glabel D_8003DFAC
  /* 3DBAC 03EBAC 8003DFAC */
  .4byte 0x40c90fdb # .float 6.2831855

glabel D_8003DFB0
  /* 3DBB0 03EBB0 8003DFB0 */
  .4byte 0xff7fffff # .float -3.4028235e38

glabel jtbl_8003DFB4
  /* 3DBB4 03EBB4 8003DFB4 */  .4byte jtgt_8000EF34
  /* 3DBB8 03EBB8 8003DFB8 */  .4byte jtgt_8000EF40
  /* 3DBBC 03EBBC 8003DFBC */  .4byte jtgt_8000EF4C
  /* 3DBC0 03EBC0 8003DFC0 */  .4byte jtgt_8000EF9C
  /* 3DBC4 03EBC4 8003DFC4 */  .4byte jtgt_8000EF58
  /* 3DBC8 03EBC8 8003DFC8 */  .4byte jtgt_8000EF64
  /* 3DBCC 03EBCC 8003DFCC */  .4byte jtgt_8000EF70
  /* 3DBD0 03EBD0 8003DFD0 */  .4byte jtgt_8000EF7C
  /* 3DBD4 03EBD4 8003DFD4 */  .4byte jtgt_8000EF88
  /* 3DBD8 03EBD8 8003DFD8 */  .4byte jtgt_8000EF94

glabel D_8003DFDC
  /* 3DBDC 03EBDC 8003DFDC */  .4byte jtgt_8000F3B4
  /* 3DBE0 03EBE0 8003DFE0 */  .4byte jtgt_8000F408
  /* 3DBE4 03EBE4 8003DFE4 */  .4byte jtgt_8000F408
  /* 3DBE8 03EBE8 8003DFE8 */  .4byte jtgt_8000F408
  /* 3DBEC 03EBEC 8003DFEC */  .4byte jtgt_8000F408
  /* 3DBF0 03EBF0 8003DFF0 */  .4byte jtgt_8000F408
  /* 3DBF4 03EBF4 8003DFF4 */  .4byte jtgt_8000F408
  /* 3DBF8 03EBF8 8003DFF8 */  .4byte jtgt_8000F408
  /* 3DBFC 03EBFC 8003DFFC */  .4byte jtgt_8000F3BC
  /* 3DC00 03EC00 8003E000 */  .4byte jtgt_8000F3C4
  /* 3DC04 03EC04 8003E004 */  .4byte jtgt_8000F3D0
  /* 3DC08 03EC08 8003E008 */  .4byte jtgt_8000F3E0
  /* 3DC0C 03EC0C 8003E00C */  .4byte jtgt_8000F3E8
  /* 3DC10 03EC10 8003E010 */  .4byte jtgt_8000F3F4
  /* 3DC14 03EC14 8003E014 */  .4byte jtgt_8000F404

glabel D_8003E018
  /* 3DC18 03EC18 8003E018 */
  .4byte 0xfeffffff # .float -1.7014117e38

glabel D_8003E01C
  /* 3DC1C 03EC1C 8003E01C */
  .4byte 0xff7fffff # .float -3.4028235e38

glabel D_8003E020
  /* 3DC20 03EC20 8003E020 */
  .4byte 0xfeffffff # .float -1.7014117e38

glabel D_8003E024
  /* 3DC24 03EC24 8003E024 */
  .4byte 0xfeaaaaaa # .float -1.1342745e38

glabel jtbl_8003E028
  /* 3DC28 03EC28 8003E028 */  .4byte jtgt_8001025C
  /* 3DC2C 03EC2C 8003E02C */  .4byte jtgt_80010124
  /* 3DC30 03EC30 8003E030 */  .4byte jtgt_8000FFD0
  /* 3DC34 03EC34 8003E034 */  .4byte jtgt_8000FD38
  /* 3DC38 03EC38 8003E038 */  .4byte jtgt_8000FD38
  /* 3DC3C 03EC3C 8003E03C */  .4byte jtgt_8000FE40
  /* 3DC40 03EC40 8003E040 */  .4byte jtgt_8000FE40
  /* 3DC44 03EC44 8003E044 */  .4byte jtgt_8000FF58
  /* 3DC48 03EC48 8003E048 */  .4byte jtgt_8000FC34
  /* 3DC4C 03EC4C 8003E04C */  .4byte jtgt_8000FC34
  /* 3DC50 03EC50 8003E050 */  .4byte jtgt_8001000C
  /* 3DC54 03EC54 8003E054 */  .4byte jtgt_8001000C
  /* 3DC58 03EC58 8003E058 */  .4byte jtgt_8001013C
  /* 3DC5C 03EC5C 8003E05C */  .4byte jtgt_800101C8
  /* 3DC60 03EC60 8003E060 */  .4byte jtgt_800100F8
  /* 3DC64 03EC64 8003E064 */  .4byte jtgt_800102F4
  /* 3DC68 03EC68 8003E068 */  .4byte jtgt_800102F4
  /* 3DC6C 03EC6C 8003E06C */  .4byte jtgt_800102F4
  /* 3DC70 03EC70 8003E070 */  .4byte jtgt_800102F4
  /* 3DC74 03EC74 8003E074 */  .4byte jtgt_800102F4
  /* 3DC78 03EC78 8003E078 */  .4byte jtgt_800102F4
  /* 3DC7C 03EC7C 8003E07C */  .4byte jtgt_800102F4
  /* 3DC80 03EC80 8003E080 */  .4byte jtgt_800102F4
  /* 3DC84 03EC84 8003E084 */  .4byte jtgt_800102B0

glabel D_8003E088
  /* 3DC88 03EC88 8003E088 */
  .4byte 0xfeaaaaaa # .float -1.1342745e38

glabel D_8003E08C
  /* 3DC8C 03EC8C 8003E08C */
  .4byte 0xff7fffff # .float -3.4028235e38

glabel D_8003E090
  /* 3DC90 03EC90 8003E090 */
  .4byte 0xfeaaaaaa # .float -1.1342745e38

glabel jtbl_8003E094
  /* 3DC94 03EC94 8003E094 */  .4byte jtgt_80010410
  /* 3DC98 03EC98 8003E098 */  .4byte jtgt_80010420
  /* 3DC9C 03EC9C 8003E09C */  .4byte jtgt_80010430
  /* 3DCA0 03ECA0 8003E0A0 */  .4byte jtgt_80010440
  /* 3DCA4 03ECA4 8003E0A4 */  .4byte jtgt_80010490
  /* 3DCA8 03ECA8 8003E0A8 */  .4byte jtgt_800104A0
  /* 3DCAC 03ECAC 8003E0AC */  .4byte jtgt_800104B0
  /* 3DCB0 03ECB0 8003E0B0 */  .4byte jtgt_800104C0
  /* 3DCB4 03ECB4 8003E0B4 */  .4byte jtgt_80010510
  /* 3DCB8 03ECB8 8003E0B8 */  .4byte jtgt_80010520

glabel D_8003E0BC
  /* 3DCBC 03ECBC 8003E0BC */
  .4byte 0xfeaaaaaa # .float -1.1342745e38

glabel D_8003E0C0
  /* 3DCC0 03ECC0 8003E0C0 */
  .4byte 0xff7fffff # .float -3.4028235e38

glabel jtbl_8003E0C4
  /* 3DCC4 03ECC4 8003E0C4 */  .4byte jtgt_800106FC
  /* 3DCC8 03ECC8 8003E0C8 */  .4byte jtgt_80010704
  /* 3DCCC 03ECCC 8003E0CC */  .4byte jtgt_80010684
  /* 3DCD0 03ECD0 8003E0D0 */  .4byte jtgt_80010604
  /* 3DCD4 03ECD4 8003E0D4 */  .4byte jtgt_8001060C
  /* 3DCD8 03ECD8 8003E0D8 */  .4byte jtgt_80010644
  /* 3DCDC 03ECDC 8003E0DC */  .4byte jtgt_8001064C
  /* 3DCE0 03ECE0 8003E0E0 */  .4byte jtgt_8001060C
  /* 3DCE4 03ECE4 8003E0E4 */  .4byte jtgt_80010604
  /* 3DCE8 03ECE8 8003E0E8 */  .4byte jtgt_8001060C
  /* 3DCEC 03ECEC 8003E0EC */  .4byte jtgt_80010604
  /* 3DCF0 03ECF0 8003E0F0 */  .4byte jtgt_8001060C
  /* 3DCF4 03ECF4 8003E0F4 */  .4byte jtgt_8001069C
  /* 3DCF8 03ECF8 8003E0F8 */  .4byte jtgt_800106AC
  /* 3DCFC 03ECFC 8003E0FC */  .4byte jtgt_80010704
  /* 3DD00 03ED00 8003E100 */  .4byte jtgt_80010684
  /* 3DD04 03ED04 8003E104 */  .4byte jtgt_800105E0
  /* 3DD08 03ED08 8003E108 */  .4byte jtgt_800106BC
  .incbin "system.raw.bin", 0x3DD0C, 0x4

glabel jtbl_8003E110
  /* 3DD10 03ED10 8003E110 */  .4byte jtgt_80010F00
  /* 3DD14 03ED14 8003E114 */  .4byte jtgt_80010F00
  /* 3DD18 03ED18 8003E118 */  .4byte jtgt_80010F00
  /* 3DD1C 03ED1C 8003E11C */  .4byte jtgt_80010F00
  /* 3DD20 03ED20 8003E120 */  .4byte jtgt_80010F00
  /* 3DD24 03ED24 8003E124 */  .4byte jtgt_80010F00
  /* 3DD28 03ED28 8003E128 */  .4byte jtgt_80010F00
  /* 3DD2C 03ED2C 8003E12C */  .4byte jtgt_80010F00
  /* 3DD30 03ED30 8003E130 */  .4byte jtgt_80010F00
  /* 3DD34 03ED34 8003E134 */  .4byte jtgt_80010F00
  /* 3DD38 03ED38 8003E138 */  .4byte jtgt_80010F00
  /* 3DD3C 03ED3C 8003E13C */  .4byte jtgt_80010F00
  /* 3DD40 03ED40 8003E140 */  .4byte jtgt_80010F00
  /* 3DD44 03ED44 8003E144 */  .4byte jtgt_80010F00
  /* 3DD48 03ED48 8003E148 */  .4byte jtgt_80010F00
  /* 3DD4C 03ED4C 8003E14C */  .4byte jtgt_80010F00
  /* 3DD50 03ED50 8003E150 */  .4byte jtgt_80010F00
  /* 3DD54 03ED54 8003E154 */  .4byte jtgt_80010F00

glabel D_8003E158
  /* 3DD58 03ED58 8003E158 */  .4byte jtgt_80010FA4
  /* 3DD5C 03ED5C 8003E15C */  .4byte jtgt_80010FA4
  /* 3DD60 03ED60 8003E160 */  .4byte jtgt_80010FA4
  /* 3DD64 03ED64 8003E164 */  .4byte jtgt_80010FA4
  /* 3DD68 03ED68 8003E168 */  .4byte jtgt_80010FA4
  /* 3DD6C 03ED6C 8003E16C */  .4byte jtgt_80010FA4
  /* 3DD70 03ED70 8003E170 */  .4byte jtgt_80010FA4
  /* 3DD74 03ED74 8003E174 */  .4byte jtgt_80010FA4
  /* 3DD78 03ED78 8003E178 */  .4byte jtgt_80010FA4
  /* 3DD7C 03ED7C 8003E17C */  .4byte jtgt_80010FA4
  /* 3DD80 03ED80 8003E180 */  .4byte jtgt_80010FA4
  /* 3DD84 03ED84 8003E184 */  .4byte jtgt_80010FA4
  /* 3DD88 03ED88 8003E188 */  .4byte jtgt_80010FA4
  /* 3DD8C 03ED8C 8003E18C */  .4byte jtgt_80010FA4
  /* 3DD90 03ED90 8003E190 */  .4byte jtgt_80010FA4
  /* 3DD94 03ED94 8003E194 */  .4byte jtgt_80010FA4
  /* 3DD98 03ED98 8003E198 */  .4byte jtgt_80010FA4
  /* 3DD9C 03ED9C 8003E19C */  .4byte jtgt_80010FA4

glabel D_8003E1A0
  /* 3DDA0 03EDA0 8003E1A0 */  .4byte jtgt_80011028
  /* 3DDA4 03EDA4 8003E1A4 */  .4byte jtgt_80011030
  /* 3DDA8 03EDA8 8003E1A8 */  .4byte jtgt_80012C28
  /* 3DDAC 03EDAC 8003E1AC */  .4byte jtgt_80012C28
  /* 3DDB0 03EDB0 8003E1B0 */  .4byte jtgt_80012C28
  /* 3DDB4 03EDB4 8003E1B4 */  .4byte jtgt_80012C28
  /* 3DDB8 03EDB8 8003E1B8 */  .4byte jtgt_80012C28
  /* 3DDBC 03EDBC 8003E1BC */  .4byte jtgt_80012C28
  /* 3DDC0 03EDC0 8003E1C0 */  .4byte jtgt_80012C28
  /* 3DDC4 03EDC4 8003E1C4 */  .4byte jtgt_80012C28
  /* 3DDC8 03EDC8 8003E1C8 */  .4byte jtgt_80012C28
  /* 3DDCC 03EDCC 8003E1CC */  .4byte jtgt_80012C28
  /* 3DDD0 03EDD0 8003E1D0 */  .4byte jtgt_80012C28
  /* 3DDD4 03EDD4 8003E1D4 */  .4byte jtgt_80012C28
  /* 3DDD8 03EDD8 8003E1D8 */  .4byte jtgt_80012C28
  /* 3DDDC 03EDDC 8003E1DC */  .4byte jtgt_80012C28
  /* 3DDE0 03EDE0 8003E1E0 */  .4byte jtgt_80012C28
  /* 3DDE4 03EDE4 8003E1E4 */  .4byte jtgt_80011038
  /* 3DDE8 03EDE8 8003E1E8 */  .4byte jtgt_80011054
  /* 3DDEC 03EDEC 8003E1EC */  .4byte jtgt_80011078
  /* 3DDF0 03EDF0 8003E1F0 */  .4byte jtgt_800110B4
  /* 3DDF4 03EDF4 8003E1F4 */  .4byte jtgt_800110D0
  /* 3DDF8 03EDF8 8003E1F8 */  .4byte jtgt_80011104
  /* 3DDFC 03EDFC 8003E1FC */  .4byte jtgt_80011128
  /* 3DE00 03EE00 8003E200 */  .4byte jtgt_80011164
  /* 3DE04 03EE04 8003E204 */  .4byte jtgt_800111C8
  /* 3DE08 03EE08 8003E208 */  .4byte jtgt_800111E4
  /* 3DE0C 03EE0C 8003E20C */  .4byte jtgt_80011218
  /* 3DE10 03EE10 8003E210 */  .4byte jtgt_80011274
  /* 3DE14 03EE14 8003E214 */  .4byte jtgt_80011290
  /* 3DE18 03EE18 8003E218 */  .4byte jtgt_800112C4
  /* 3DE1C 03EE1C 8003E21C */  .4byte jtgt_80011320
  /* 3DE20 03EE20 8003E220 */  .4byte jtgt_8001134C
  /* 3DE24 03EE24 8003E224 */  .4byte jtgt_80011364
  /* 3DE28 03EE28 8003E228 */  .4byte jtgt_8001137C
  /* 3DE2C 03EE2C 8003E22C */  .4byte jtgt_80011394
  /* 3DE30 03EE30 8003E230 */  .4byte jtgt_800113AC
  /* 3DE34 03EE34 8003E234 */  .4byte jtgt_800113C4
  /* 3DE38 03EE38 8003E238 */  .4byte jtgt_800113DC
  /* 3DE3C 03EE3C 8003E23C */  .4byte jtgt_800113F4
  /* 3DE40 03EE40 8003E240 */  .4byte jtgt_800115F0
  /* 3DE44 03EE44 8003E244 */  .4byte jtgt_800117C8
  /* 3DE48 03EE48 8003E248 */  .4byte jtgt_800119A0
  /* 3DE4C 03EE4C 8003E24C */  .4byte jtgt_80011BC8
  /* 3DE50 03EE50 8003E250 */  .4byte jtgt_80011DF0
  /* 3DE54 03EE54 8003E254 */  .4byte jtgt_8001204C
  /* 3DE58 03EE58 8003E258 */  .4byte jtgt_800122A8
  /* 3DE5C 03EE5C 8003E25C */  .4byte jtgt_80012508
  /* 3DE60 03EE60 8003E260 */  .4byte jtgt_80012768
  /* 3DE64 03EE64 8003E264 */  .4byte jtgt_800129C8
  /* 3DE68 03EE68 8003E268 */  .4byte jtgt_80012C28
  /* 3DE6C 03EE6C 8003E26C */  .4byte jtgt_80012C28
  /* 3DE70 03EE70 8003E270 */  .4byte jtgt_80012C28
  /* 3DE74 03EE74 8003E274 */  .4byte jtgt_80012C28
  /* 3DE78 03EE78 8003E278 */  .4byte jtgt_80012C28
  /* 3DE7C 03EE7C 8003E27C */  .4byte jtgt_8001140C
  /* 3DE80 03EE80 8003E280 */  .4byte jtgt_8001142C
  /* 3DE84 03EE84 8003E284 */  .4byte jtgt_80011450
  /* 3DE88 03EE88 8003E288 */  .4byte jtgt_8001146C
  /* 3DE8C 03EE8C 8003E28C */  .4byte jtgt_800114A0
  /* 3DE90 03EE90 8003E290 */  .4byte jtgt_800114E0
  /* 3DE94 03EE94 8003E294 */  .4byte jtgt_80011550
  /* 3DE98 03EE98 8003E298 */  .4byte jtgt_80011588

glabel D_8003E29C
  /* 3DE9C 03EE9C 8003E29C */
  .4byte 0x37800080 # .float 0.000015259022

glabel jtbl_8003E2A0
  /* 3DEA0 03EEA0 8003E2A0 */  .4byte jtgt_80016FC0
  /* 3DEA4 03EEA4 8003E2A4 */  .4byte jtgt_80016FC8
  /* 3DEA8 03EEA8 8003E2A8 */  .4byte jtgt_80016FD0
  /* 3DEAC 03EEAC 8003E2AC */  .4byte jtgt_8001701C
  /* 3DEB0 03EEB0 8003E2B0 */  .4byte jtgt_80017068
  /* 3DEB4 03EEB4 8003E2B4 */  .4byte jtgt_800170A8
  /* 3DEB8 03EEB8 8003E2B8 */  .4byte jtgt_800170A8
  /* 3DEBC 03EEBC 8003E2BC */  .4byte jtgt_80017118
  /* 3DEC0 03EEC0 8003E2C0 */  .4byte jtgt_80017118
  /* 3DEC4 03EEC4 8003E2C4 */  .4byte jtgt_80017164
  /* 3DEC8 03EEC8 8003E2C8 */  .4byte jtgt_80017164
  /* 3DECC 03EECC 8003E2CC */  .4byte jtgt_800171B0
  /* 3DED0 03EED0 8003E2D0 */  .4byte jtgt_800171B0
  /* 3DED4 03EED4 8003E2D4 */  .4byte jtgt_8001723C
  /* 3DED8 03EED8 8003E2D8 */  .4byte jtgt_8001723C
  /* 3DEDC 03EEDC 8003E2DC */  .4byte jtgt_800172A4
  /* 3DEE0 03EEE0 8003E2E0 */  .4byte jtgt_800172A4

glabel D_8003E2E4
  /* 3DEE4 03EEE4 8003E2E4 */  .4byte jtgt_80017388
  /* 3DEE8 03EEE8 8003E2E8 */  .4byte jtgt_80017390
  /* 3DEEC 03EEEC 8003E2EC */  .4byte jtgt_80017398
  /* 3DEF0 03EEF0 8003E2F0 */  .4byte jtgt_80017398
  /* 3DEF4 03EEF4 8003E2F4 */  .4byte jtgt_800173D8
  /* 3DEF8 03EEF8 8003E2F8 */  .4byte jtgt_80017438
  /* 3DEFC 03EEFC 8003E2FC */  .4byte jtgt_80017498
  /* 3DF00 03EF00 8003E300 */  .4byte jtgt_80017438
  /* 3DF04 03EF04 8003E304 */  .4byte jtgt_80017498
  /* 3DF08 03EF08 8003E308 */  .4byte jtgt_80017438
  /* 3DF0C 03EF0C 8003E30C */  .4byte jtgt_80017498
  /* 3DF10 03EF10 8003E310 */  .4byte jtgt_800173FC
  /* 3DF14 03EF14 8003E314 */  .4byte jtgt_8001745C
  /* 3DF18 03EF18 8003E318 */  .4byte jtgt_800173FC
  /* 3DF1C 03EF1C 8003E31C */  .4byte jtgt_8001745C
  /* 3DF20 03EF20 8003E320 */  .4byte jtgt_800173FC
  /* 3DF24 03EF24 8003E324 */  .4byte jtgt_8001745C

glabel D_8003E328
  /* 3DF28 03EF28 8003E328 */  .4byte jtgt_80017540
  /* 3DF2C 03EF2C 8003E32C */  .4byte jtgt_80017548
  /* 3DF30 03EF30 8003E330 */  .4byte jtgt_80017550
  /* 3DF34 03EF34 8003E334 */  .4byte jtgt_80017560
  /* 3DF38 03EF38 8003E338 */  .4byte jtgt_80017568
  /* 3DF3C 03EF3C 8003E33C */  .4byte jtgt_80017578
  /* 3DF40 03EF40 8003E340 */  .4byte jtgt_80017588
  /* 3DF44 03EF44 8003E344 */  .4byte jtgt_80017590

glabel D_8003E348
  /* 3DF48 03EF48 8003E348 */
  .4byte 0x38d1b717 # .float 0.0001

glabel D_8003E34C
  /* 3DF4C 03EF4C 8003E34C */
  .4byte 0x38d1b717 # .float 0.0001

glabel D_8003E350
  /* 3DF50 03EF50 8003E350 */
  .4byte 0xbddd6712 # .float -0.10810675

glabel D_8003E354
  /* 3DF54 03EF54 8003E354 */
  .4byte 0xc23249a5 # .float -44.57192

glabel D_8003E358
  /* 3DF58 03EF58 8003E358 */
  .4byte 0xbe25cb3d # .float -0.1619081

glabel D_8003E35C
  /* 3DF5C 03EF5C 8003E35C */
  .4byte 0xc17c6261 # .float -15.774018

glabel D_8003E360
  /* 3DF60 03EF60 8003E360 */
  .4byte 0xbf0e39d2 # .float -0.55556977

glabel D_8003E364
  /* 3DF64 03EF64 8003E364 */
  .4byte 0xc040000d # .float -3.000003

glabel D_8003E368
  /* 3DF68 03EF68 8003E368 */
  .4byte 0x3fc90fdb # .float 1.5707964

glabel D_8003E36C
  /* 3DF6C 03EF6C 8003E36C */
  .4byte 0xbfc90fdb # .float -1.5707964

glabel D_8003E370
  /* 3DF70 03EF70 8003E370 */
  .4byte 0x40490fdb # .float 3.1415927

glabel D_8003E374
  /* 3DF74 03EF74 8003E374 */
  .4byte 0x3fc90fdb # .float 1.5707964

glabel D_8003E378
  /* 3DF78 03EF78 8003E378 */
  .4byte 0x3f7fff58 # .float 0.99999

glabel D_8003E37C
  /* 3DF7C 03EF7C 8003E37C */
  .4byte 0x3fc90fdb # .float 1.5707964

glabel D_8003E380
  /* 3DF80 03EF80 8003E380 */
  .4byte 0xbf7fff58 # .float -0.99999

glabel D_8003E384
  /* 3DF84 03EF84 8003E384 */
  .4byte 0xbfc90fdb # .float -1.5707964

glabel D_8003E388
  /* 3DF88 03EF88 8003E388 */
  .4byte 0x3f7fff58 # .float 0.99999

glabel D_8003E38C
  /* 3DF8C 03EF8C 8003E38C */
  .4byte 0xbf7fff58 # .float -0.99999

glabel D_8003E390
  /* 3DF90 03EF90 8003E390 */
  .4byte 0x40490fdb # .float 3.1415927

glabel D_8003E394
  /* 3DF94 03EF94 8003E394 */
  .4byte 0x3fc90fdb # .float 1.5707964
  .incbin "system.raw.bin", 0x3DF98, 0x8

glabel D_8003E3A0
  /* 3DFA0 03EFA0 8003E3A0 */
  .4byte 0x4422f983 # .float 651.8986

glabel D_8003E3A4
  /* 3DFA4 03EFA4 8003E3A4 */
  .4byte 0x3fc90fdb # .float 1.5707964

glabel D_8003E3A8
  /* 3DFA8 03EFA8 8003E3A8 */
  .4byte 0x4422f983 # .float 651.8986

glabel D_8003E3AC
  /* 3DFAC 03EFAC 8003E3AC */
  .4byte 0x3c0efa35 # .float 0.008726646

glabel D_8003E3B0
  /* 3DFB0 03EFB0 8003E3B0 */
  .4byte 0x4422f983 # .float 651.8986

glabel D_8003E3B4
  /* 3DFB4 03EFB4 8003E3B4 */
  .4byte 0x3c8efa35 # .float 0.017453292

glabel D_8003E3B8
  /* 3DFB8 03EFB8 8003E3B8 */
  .4byte 0x4422f983 # .float 651.8986

glabel D_8003E3BC
  /* 3DFBC 03EFBC 8003E3BC */
  .4byte 0x4422f983 # .float 651.8986

glabel D_8003E3C0
  /* 3DFC0 03EFC0 8003E3C0 */
  .4byte 0x4422f983 # .float 651.8986

glabel D_8003E3C4
  /* 3DFC4 03EFC4 8003E3C4 */
  .4byte 0x40490fdb # .float 3.1415927

glabel D_8003E3C8
  /* 3DFC8 03EFC8 8003E3C8 */
  .4byte 0x40490fdb # .float 3.1415927

glabel D_8003E3CC
  /* 3DFCC 03EFCC 8003E3CC */
  .4byte 0x40490fdb # .float 3.1415927

glabel D_8003E3D0
  /* 3DFD0 03EFD0 8003E3D0 */
  .4byte 0x40490fdb # .float 3.1415927

glabel D_8003E3D4
  /* 3DFD4 03EFD4 8003E3D4 */
  .4byte 0x40490fdb # .float 3.1415927

glabel D_8003E3D8
  /* 3DFD8 03EFD8 8003E3D8 */
  .4byte 0x40490fdb # .float 3.1415927

glabel D_8003E3DC
  /* 3DFDC 03EFDC 8003E3DC */
  .4byte 0x40490fdb # .float 3.1415927

glabel D_8003E3E0
  /* 3DFE0 03EFE0 8003E3E0 */
  .4byte 0x40490fdb # .float 3.1415927
  .incbin "system.raw.bin", 0x3DFE4, 0xC

glabel D_8003E3F0
  /* 3DFF0 03EFF0 8003E3F0 */
  .4byte 0x3e2aaaab # .float 0.16666667

glabel D_8003E3F4
  /* 3DFF4 03EFF4 8003E3F4 */
  .4byte 0x3e2aaaab # .float 0.16666667

glabel D_8003E3F8
  /* 3DFF8 03EFF8 8003E3F8 */
  .4byte 0x3e2aaaab # .float 0.16666667

glabel D_8003E3FC
  /* 3DFFC 03EFFC 8003E3FC */
  .4byte 0x3e2aaaab # .float 0.16666667

glabel D_8003E400
  /* 3E000 03F000 8003E400 */
  .4byte 0xba83126f # .float -0.001

glabel D_8003E404
  /* 3E004 03F004 8003E404 */
  .4byte 0x3727c5ac # .float 0.00001
  .incbin "system.raw.bin", 0x3E008, 0x8

glabel D_8003E410
  /* 3E010 03F010 8003E410 */
  .4byte 0x3f83f794 # .float 1.030993

glabel D_8003E414
  /* 3E014 03F014 8003E414 */
  .4byte 0x40c90fdb # .float 6.2831855

glabel D_8003E418
  /* 3E018 03F018 8003E418 */
  .4byte 0x40c90fdb # .float 6.2831855
  .incbin "system.raw.bin", 0x3E01C, 0x4

glabel D_8003E420
  /* 3E020 03F020 8003E420 */
  .asciz "Interrupt"
  .balign 4

glabel D_8003E42C
  /* 3E02C 03F02C 8003E42C */
  .asciz "TLB modification"
  .balign 4

glabel D_8003E440
  /* 3E040 03F040 8003E440 */
  .asciz "TLB exception on load"
  .balign 4

glabel D_8003E458
  /* 3E058 03F058 8003E458 */
  .asciz "TLB exception on store"
  .balign 4

glabel D_8003E470
  /* 3E070 03F070 8003E470 */
  .asciz "Address error on load"
  .balign 4

glabel D_8003E488
  /* 3E088 03F088 8003E488 */
  .asciz "Address error on store"
  .balign 4

glabel D_8003E4A0
  /* 3E0A0 03F0A0 8003E4A0 */
  .asciz "Bus error on inst."
  .balign 4

glabel D_8003E4B4
  /* 3E0B4 03F0B4 8003E4B4 */
  .asciz "Bus error on data"
  .balign 4

glabel D_8003E4C8
  /* 3E0C8 03F0C8 8003E4C8 */
  .asciz "System call exception"
  .balign 4

glabel D_8003E4E0
  /* 3E0E0 03F0E0 8003E4E0 */
  .asciz "Breakpoint exception"
  .balign 4

glabel D_8003E4F8
  /* 3E0F8 03F0F8 8003E4F8 */
  .asciz "Reserved instruction"
  .balign 4

glabel D_8003E510
  /* 3E110 03F110 8003E510 */
  .asciz "Coprocessor unusable"
  .balign 4

glabel D_8003E528
  /* 3E128 03F128 8003E528 */
  .asciz "Arithmetic overflow"
  .balign 4

glabel D_8003E53C
  /* 3E13C 03F13C 8003E53C */
  .asciz "Trap exception"
  .balign 4

glabel D_8003E54C
  /* 3E14C 03F14C 8003E54C */
  .asciz "Virtual coherency on inst."
  .balign 4

glabel D_8003E568
  /* 3E168 03F168 8003E568 */
  .asciz "Floating point exception"
  .balign 4

glabel D_8003E584
  /* 3E184 03F184 8003E584 */
  .asciz "Watchpoint exception"
  .balign 4

glabel D_8003E59C
  /* 3E19C 03F19C 8003E59C */
  .asciz "Virtual coherency on data"
  .balign 4

glabel D_8003E5B8
  /* 3E1B8 03F1B8 8003E5B8 */
  .asciz "Unimplemented operation"
  .balign 4

glabel D_8003E5D0
  /* 3E1D0 03F1D0 8003E5D0 */
  .asciz "Invalid operation"
  .balign 4

glabel D_8003E5E4
  /* 3E1E4 03F1E4 8003E5E4 */
  .asciz "Division by zero"
  .balign 4

glabel D_8003E5F8
  /* 3E1F8 03F1F8 8003E5F8 */
  .asciz "Overflow"
  .balign 4

glabel D_8003E604
  /* 3E204 03F204 8003E604 */
  .asciz "Underflow"
  .balign 4

glabel D_8003E610
  /* 3E210 03F210 8003E610 */
  .asciz "Inexact operation"
  .balign 4

glabel D_8003E624
  /* 3E224 03F224 8003E624 */
  .asciz "F%02d:%.3e"
  .balign 4
  /* 3E230 03F230 8003E630 */
  .asciz "F%02d:%08XH"
  .balign 4

glabel D_8003E63C
  /* 3E23C 03F23C 8003E63C */
  .asciz "FPCSR:%08XH"
  .balign 4

glabel D_8003E648
  /* 3E248 03F248 8003E648 */
  .asciz "(%s)"
  .balign 4

glabel D_8003E650
  /* 3E250 03F250 8003E650 */
  .asciz "THREAD:%d  (%s)"
  .balign 4

glabel D_8003E660
  /* 3E260 03F260 8003E660 */
  .asciz "PC:%08XH   SR:%08XH   VA:%08XH"
  .balign 4

glabel D_8003E680
  /* 3E280 03F280 8003E680 */
  .asciz "THREAD:%d  (%s)"
  .balign 4

glabel D_8003E690
  /* 3E290 03F290 8003E690 */
  .asciz "PC:%08XH   SR:%08XH   VA:%08XH"
  .balign 4

glabel D_8003E6B0
  /* 3E2B0 03F2B0 8003E6B0 */
  .asciz "AT:%08XH   V0:%08XH   V1:%08XH"
  .balign 4

glabel D_8003E6D0
  /* 3E2D0 03F2D0 8003E6D0 */
  .asciz "A0:%08XH   A1:%08XH   A2:%08XH"
  .balign 4

glabel D_8003E6F0
  /* 3E2F0 03F2F0 8003E6F0 */
  .asciz "A3:%08XH   T0:%08XH   T1:%08XH"
  .balign 4

glabel D_8003E710
  /* 3E310 03F310 8003E710 */
  .asciz "T2:%08XH   T3:%08XH   T4:%08XH"
  .balign 4

glabel D_8003E730
  /* 3E330 03F330 8003E730 */
  .asciz "T5:%08XH   T6:%08XH   T7:%08XH"
  .balign 4

glabel D_8003E750
  /* 3E350 03F350 8003E750 */
  .asciz "S0:%08XH   S1:%08XH   S2:%08XH"
  .balign 4

glabel D_8003E770
  /* 3E370 03F370 8003E770 */
  .asciz "S3:%08XH   S4:%08XH   S5:%08XH"
  .balign 4

glabel D_8003E790
  /* 3E390 03F390 8003E790 */
  .asciz "S6:%08XH   S7:%08XH   T8:%08XH"
  .balign 4

glabel D_8003E7B0
  /* 3E3B0 03F3B0 8003E7B0 */
  .asciz "T9:%08XH   GP:%08XH   SP:%08XH"
  .balign 4

glabel D_8003E7D0
  /* 3E3D0 03F3D0 8003E7D0 */
  .asciz "S8:%08XH   RA:%08XH"
  .balign 4

glabel D_8003E7E4
  /* 3E3E4 03F3E4 8003E7E4 */
  .asciz "SP Base %08x"
  .balign 4

glabel D_8003E7F4
  /* 3E3F4 03F3F4 8003E7F4 */
  .asciz "%03d:%02x%02x%02x%02x %.3e"
  .balign 4

glabel D_8003E810
  /* 3E410 03F410 8003E810 */
  .asciz "%03d:%02x%02x%02x%02x %08x"
  .balign 4

glabel D_8003E82C
  /* 3E42C 03F42C 8003E82C */
  .asciz ":%02x%02x%02x%02x %.3e"
  .balign 4

glabel D_8003E844
  /* 3E444 03F444 8003E844 */
  .asciz ":%02x%02x%02x%02x %08x"
  .balign 4
  .incbin "system.raw.bin", 0x3E45C, 0x4

glabel D_8003E860
  /* 3E460 03F460 8003E860 */
  .4byte 0x3f7fff58 # .float 0.99999

glabel D_8003E864
  /* 3E464 03F464 8003E864 */
  .4byte 0x3f7ff972 # .float 0.9999

glabel D_8003E868
  /* 3E468 03F468 8003E868 */
  .4byte 0x3f7ff972 # .float 0.9999
  .incbin "system.raw.bin", 0x3E46C, 0x4

glabel jtbl_8003E870
  /* 3E470 03F470 8003E870 */  .4byte jtgt_80026C50
  /* 3E474 03F474 8003E874 */  .4byte jtgt_80026C78
  /* 3E478 03F478 8003E878 */  .4byte jtgt_80026CB0
  /* 3E47C 03F47C 8003E87C */  .4byte jtgt_80026CE0
  /* 3E480 03F480 8003E880 */  .4byte jtgt_80026CF4
  /* 3E484 03F484 8003E884 */  .4byte jtgt_80026E2C
  /* 3E488 03F488 8003E888 */  .4byte jtgt_80026E40
  /* 3E48C 03F48C 8003E88C */  .4byte jtgt_80026E80
  /* 3E490 03F490 8003E890 */  .4byte jtgt_80026E94
  /* 3E494 03F494 8003E894 */  .4byte jtgt_80026ED4
  /* 3E498 03F498 8003E898 */  .4byte jtgt_80026FF0
  /* 3E49C 03F49C 8003E89C */  .4byte jtgt_80026FFC
  /* 3E4A0 03F4A0 8003E8A0 */  .4byte jtgt_80027008
  /* 3E4A4 03F4A4 8003E8A4 */  .4byte jtgt_8002701C
  /* 3E4A8 03F4A8 8003E8A8 */  .4byte jtgt_8002705C
  /* 3E4AC 03F4AC 8003E8AC */  .4byte jtgt_80027108
  /* 3E4B0 03F4B0 8003E8B0 */  .4byte jtgt_80027114

glabel D_8003E8B4
  /* 3E4B4 03F4B4 8003E8B4 */  .4byte jtgt_80027150
  /* 3E4B8 03F4B8 8003E8B8 */  .4byte jtgt_80027158
  /* 3E4BC 03F4BC 8003E8BC */  .4byte jtgt_80027158
  /* 3E4C0 03F4C0 8003E8C0 */  .4byte jtgt_80027158
  /* 3E4C4 03F4C4 8003E8C4 */  .4byte jtgt_80027158
  /* 3E4C8 03F4C8 8003E8C8 */  .4byte jtgt_80027158
  /* 3E4CC 03F4CC 8003E8CC */  .4byte jtgt_80027158
  /* 3E4D0 03F4D0 8003E8D0 */  .4byte jtgt_80027168

glabel D_8003E8D4
  /* 3E4D4 03F4D4 8003E8D4 */  .4byte jtgt_80027534
  /* 3E4D8 03F4D8 8003E8D8 */  .4byte jtgt_800279F4
  /* 3E4DC 03F4DC 8003E8DC */  .4byte jtgt_800279F4
  /* 3E4E0 03F4E0 8003E8E0 */  .4byte jtgt_800279F4
  /* 3E4E4 03F4E4 8003E8E4 */  .4byte jtgt_800279F4
  /* 3E4E8 03F4E8 8003E8E8 */  .4byte jtgt_800279F4
  /* 3E4EC 03F4EC 8003E8EC */  .4byte jtgt_800279F4
  /* 3E4F0 03F4F0 8003E8F0 */  .4byte jtgt_800279F4
  /* 3E4F4 03F4F4 8003E8F4 */  .4byte jtgt_800279F4
  /* 3E4F8 03F4F8 8003E8F8 */  .4byte jtgt_800279F4
  /* 3E4FC 03F4FC 8003E8FC */  .4byte jtgt_800279F4
  /* 3E500 03F500 8003E900 */  .4byte jtgt_800279F4
  /* 3E504 03F504 8003E904 */  .4byte jtgt_800279F4
  /* 3E508 03F508 8003E908 */  .4byte jtgt_800279F4
  /* 3E50C 03F50C 8003E90C */  .4byte jtgt_800279F4
  /* 3E510 03F510 8003E910 */  .4byte jtgt_800279F4
  /* 3E514 03F514 8003E914 */  .4byte jtgt_80027588
  /* 3E518 03F518 8003E918 */  .4byte jtgt_800279F4
  /* 3E51C 03F51C 8003E91C */  .4byte jtgt_800279F4
  /* 3E520 03F520 8003E920 */  .4byte jtgt_800279F4
  /* 3E524 03F524 8003E924 */  .4byte jtgt_800279F4
  /* 3E528 03F528 8003E928 */  .4byte jtgt_800279F4
  /* 3E52C 03F52C 8003E92C */  .4byte jtgt_800279F4
  /* 3E530 03F530 8003E930 */  .4byte jtgt_800279F4
  /* 3E534 03F534 8003E934 */  .4byte jtgt_800279F4
  /* 3E538 03F538 8003E938 */  .4byte jtgt_800279F4
  /* 3E53C 03F53C 8003E93C */  .4byte jtgt_800279F4
  /* 3E540 03F540 8003E940 */  .4byte jtgt_800279F4
  /* 3E544 03F544 8003E944 */  .4byte jtgt_800279F4
  /* 3E548 03F548 8003E948 */  .4byte jtgt_800279F4
  /* 3E54C 03F54C 8003E94C */  .4byte jtgt_800279F4
  /* 3E550 03F550 8003E950 */  .4byte jtgt_800279F4
  /* 3E554 03F554 8003E954 */  .4byte jtgt_800275DC
  /* 3E558 03F558 8003E958 */  .4byte jtgt_800279F4
  /* 3E55C 03F55C 8003E95C */  .4byte jtgt_800279F4
  /* 3E560 03F560 8003E960 */  .4byte jtgt_800279F4
  /* 3E564 03F564 8003E964 */  .4byte jtgt_800279F4
  /* 3E568 03F568 8003E968 */  .4byte jtgt_800279F4
  /* 3E56C 03F56C 8003E96C */  .4byte jtgt_800279F4
  /* 3E570 03F570 8003E970 */  .4byte jtgt_800279F4
  /* 3E574 03F574 8003E974 */  .4byte jtgt_800279F4
  /* 3E578 03F578 8003E978 */  .4byte jtgt_800279F4
  /* 3E57C 03F57C 8003E97C */  .4byte jtgt_800279F4
  /* 3E580 03F580 8003E980 */  .4byte jtgt_800279F4
  /* 3E584 03F584 8003E984 */  .4byte jtgt_800279F4
  /* 3E588 03F588 8003E988 */  .4byte jtgt_800279F4
  /* 3E58C 03F58C 8003E98C */  .4byte jtgt_800279F4
  /* 3E590 03F590 8003E990 */  .4byte jtgt_800279F4
  /* 3E594 03F594 8003E994 */  .4byte jtgt_80027664
  /* 3E598 03F598 8003E998 */  .4byte jtgt_800279F4
  /* 3E59C 03F59C 8003E99C */  .4byte jtgt_800279F4
  /* 3E5A0 03F5A0 8003E9A0 */  .4byte jtgt_800279F4
  /* 3E5A4 03F5A4 8003E9A4 */  .4byte jtgt_800279F4
  /* 3E5A8 03F5A8 8003E9A8 */  .4byte jtgt_800279F4
  /* 3E5AC 03F5AC 8003E9AC */  .4byte jtgt_800279F4
  /* 3E5B0 03F5B0 8003E9B0 */  .4byte jtgt_800279F4
  /* 3E5B4 03F5B4 8003E9B4 */  .4byte jtgt_800279F4
  /* 3E5B8 03F5B8 8003E9B8 */  .4byte jtgt_800279F4
  /* 3E5BC 03F5BC 8003E9BC */  .4byte jtgt_800279F4
  /* 3E5C0 03F5C0 8003E9C0 */  .4byte jtgt_800279F4
  /* 3E5C4 03F5C4 8003E9C4 */  .4byte jtgt_800279F4
  /* 3E5C8 03F5C8 8003E9C8 */  .4byte jtgt_800279F4
  /* 3E5CC 03F5CC 8003E9CC */  .4byte jtgt_800279F4
  /* 3E5D0 03F5D0 8003E9D0 */  .4byte jtgt_800279F4
  /* 3E5D4 03F5D4 8003E9D4 */  .4byte jtgt_800276B8
  /* 3E5D8 03F5D8 8003E9D8 */  .4byte jtgt_800279F4
  /* 3E5DC 03F5DC 8003E9DC */  .4byte jtgt_800279F4
  /* 3E5E0 03F5E0 8003E9E0 */  .4byte jtgt_800279F4
  /* 3E5E4 03F5E4 8003E9E4 */  .4byte jtgt_800279F4
  /* 3E5E8 03F5E8 8003E9E8 */  .4byte jtgt_800279F4
  /* 3E5EC 03F5EC 8003E9EC */  .4byte jtgt_800279F4
  /* 3E5F0 03F5F0 8003E9F0 */  .4byte jtgt_800279F4
  /* 3E5F4 03F5F4 8003E9F4 */  .4byte jtgt_800279F4
  /* 3E5F8 03F5F8 8003E9F8 */  .4byte jtgt_800279F4
  /* 3E5FC 03F5FC 8003E9FC */  .4byte jtgt_800279F4
  /* 3E600 03F600 8003EA00 */  .4byte jtgt_800279F4
  /* 3E604 03F604 8003EA04 */  .4byte jtgt_800279F4
  /* 3E608 03F608 8003EA08 */  .4byte jtgt_800279F4
  /* 3E60C 03F60C 8003EA0C */  .4byte jtgt_800279F4
  /* 3E610 03F610 8003EA10 */  .4byte jtgt_800279F4
  /* 3E614 03F614 8003EA14 */  .4byte jtgt_8002790C
  /* 3E618 03F618 8003EA18 */  .4byte jtgt_800279F4
  /* 3E61C 03F61C 8003EA1C */  .4byte jtgt_800279F4
  /* 3E620 03F620 8003EA20 */  .4byte jtgt_800279F4
  /* 3E624 03F624 8003EA24 */  .4byte jtgt_800279F4
  /* 3E628 03F628 8003EA28 */  .4byte jtgt_800279F4
  /* 3E62C 03F62C 8003EA2C */  .4byte jtgt_800279F4
  /* 3E630 03F630 8003EA30 */  .4byte jtgt_800279F4
  /* 3E634 03F634 8003EA34 */  .4byte jtgt_800279F4
  /* 3E638 03F638 8003EA38 */  .4byte jtgt_800279F4
  /* 3E63C 03F63C 8003EA3C */  .4byte jtgt_800279F4
  /* 3E640 03F640 8003EA40 */  .4byte jtgt_800279F4
  /* 3E644 03F644 8003EA44 */  .4byte jtgt_800279F4
  /* 3E648 03F648 8003EA48 */  .4byte jtgt_800279F4
  /* 3E64C 03F64C 8003EA4C */  .4byte jtgt_800279F4
  /* 3E650 03F650 8003EA50 */  .4byte jtgt_800279F4
  /* 3E654 03F654 8003EA54 */  .4byte jtgt_80027974
  /* 3E658 03F658 8003EA58 */  .4byte jtgt_800279F4
  /* 3E65C 03F65C 8003EA5C */  .4byte jtgt_800279F4
  /* 3E660 03F660 8003EA60 */  .4byte jtgt_800279F4
  /* 3E664 03F664 8003EA64 */  .4byte jtgt_800279F4
  /* 3E668 03F668 8003EA68 */  .4byte jtgt_800279F4
  /* 3E66C 03F66C 8003EA6C */  .4byte jtgt_800279F4
  /* 3E670 03F670 8003EA70 */  .4byte jtgt_800279F4
  /* 3E674 03F674 8003EA74 */  .4byte jtgt_800279F4
  /* 3E678 03F678 8003EA78 */  .4byte jtgt_800279F4
  /* 3E67C 03F67C 8003EA7C */  .4byte jtgt_800279F4
  /* 3E680 03F680 8003EA80 */  .4byte jtgt_800279F4
  /* 3E684 03F684 8003EA84 */  .4byte jtgt_800279F4
  /* 3E688 03F688 8003EA88 */  .4byte jtgt_800279F4
  /* 3E68C 03F68C 8003EA8C */  .4byte jtgt_800279F4
  /* 3E690 03F690 8003EA90 */  .4byte jtgt_800279F4
  /* 3E694 03F694 8003EA94 */  .4byte jtgt_800279D8
  /* 3E698 03F698 8003EA98 */  .4byte jtgt_800279F4
  /* 3E69C 03F69C 8003EA9C */  .4byte jtgt_800279F4
  /* 3E6A0 03F6A0 8003EAA0 */  .4byte jtgt_800279F4
  /* 3E6A4 03F6A4 8003EAA4 */  .4byte jtgt_800279F4
  /* 3E6A8 03F6A8 8003EAA8 */  .4byte jtgt_800279F4
  /* 3E6AC 03F6AC 8003EAAC */  .4byte jtgt_800279F4
  /* 3E6B0 03F6B0 8003EAB0 */  .4byte jtgt_800279F4
  /* 3E6B4 03F6B4 8003EAB4 */  .4byte jtgt_800279F4
  /* 3E6B8 03F6B8 8003EAB8 */  .4byte jtgt_800279F4
  /* 3E6BC 03F6BC 8003EABC */  .4byte jtgt_800279F4
  /* 3E6C0 03F6C0 8003EAC0 */  .4byte jtgt_800279F4
  /* 3E6C4 03F6C4 8003EAC4 */  .4byte jtgt_800279F4
  /* 3E6C8 03F6C8 8003EAC8 */  .4byte jtgt_800279F4
  /* 3E6CC 03F6CC 8003EACC */  .4byte jtgt_800279F4
  /* 3E6D0 03F6D0 8003EAD0 */  .4byte jtgt_800279F4
  /* 3E6D4 03F6D4 8003EAD4 */  .4byte jtgt_800279E8
  /* 3E6D8 03F6D8 8003EAD8 */  .4byte jtgt_800279F4
  /* 3E6DC 03F6DC 8003EADC */  .4byte jtgt_800279F4
  /* 3E6E0 03F6E0 8003EAE0 */  .4byte jtgt_800279F4
  /* 3E6E4 03F6E4 8003EAE4 */  .4byte jtgt_800279F4
  /* 3E6E8 03F6E8 8003EAE8 */  .4byte jtgt_800279F4
  /* 3E6EC 03F6EC 8003EAEC */  .4byte jtgt_800279F4
  /* 3E6F0 03F6F0 8003EAF0 */  .4byte jtgt_800279F4
  /* 3E6F4 03F6F4 8003EAF4 */  .4byte jtgt_800279F4
  /* 3E6F8 03F6F8 8003EAF8 */  .4byte jtgt_800279F4
  /* 3E6FC 03F6FC 8003EAFC */  .4byte jtgt_800279F4
  /* 3E700 03F700 8003EB00 */  .4byte jtgt_800279F4
  /* 3E704 03F704 8003EB04 */  .4byte jtgt_800279F4
  /* 3E708 03F708 8003EB08 */  .4byte jtgt_800279F4
  /* 3E70C 03F70C 8003EB0C */  .4byte jtgt_800279F4
  /* 3E710 03F710 8003EB10 */  .4byte jtgt_800279F4
  /* 3E714 03F714 8003EB14 */  .4byte jtgt_800279F0

glabel D_8003EB18
  /* 3E718 03F718 8003EB18 */  .4byte jtgt_80027A94
  /* 3E71C 03F71C 8003EB1C */  .4byte jtgt_80027B28
  /* 3E720 03F720 8003EB20 */  .4byte jtgt_80027B5C
  /* 3E724 03F724 8003EB24 */  .4byte jtgt_80027B7C
  /* 3E728 03F728 8003EB28 */  .4byte jtgt_80027BA0
  /* 3E72C 03F72C 8003EB2C */  .4byte jtgt_80027C04
  /* 3E730 03F730 8003EB30 */  .4byte jtgt_80027C94
  /* 3E734 03F734 8003EB34 */  .4byte jtgt_80027CD8
  /* 3E738 03F738 8003EB38 */  .4byte jtgt_80027D20

glabel D_8003EB3C
  /* 3E73C 03F73C 8003EB3C */  .4byte jtgt_80027E24
  /* 3E740 03F740 8003EB40 */  .4byte jtgt_80027E00
  /* 3E744 03F744 8003EB44 */  .4byte jtgt_80027EE8
  /* 3E748 03F748 8003EB48 */  .4byte jtgt_80027ED4
  /* 3E74C 03F74C 8003EB4C */  .4byte jtgt_80027F64
  /* 3E750 03F750 8003EB50 */  .4byte jtgt_80027F40

glabel D_8003EB54
  /* 3E754 03F754 8003EB54 */  .4byte jtgt_800280BC
  /* 3E758 03F758 8003EB58 */  .4byte jtgt_800280B4
  /* 3E75C 03F75C 8003EB5C */  .4byte jtgt_800280CC
  /* 3E760 03F760 8003EB60 */  .4byte jtgt_800280C4
  /* 3E764 03F764 8003EB64 */  .4byte jtgt_800280DC
  /* 3E768 03F768 8003EB68 */  .4byte jtgt_800280D4
  /* 3E76C 03F76C 8003EB6C */  .4byte jtgt_800280EC
  /* 3E770 03F770 8003EB70 */  .4byte jtgt_800280E4

glabel D_8003EB74
  /* 3E774 03F774 8003EB74 */
  .4byte 0x477fff00 # .float 65535.0
  .incbin "system.raw.bin", 0x3E778, 0x4

glabel jtbl_8003EB7C
  /* 3E77C 03F77C 8003EB7C */  .4byte jtgt_8002A7F0
  /* 3E780 03F780 8003EB80 */  .4byte jtgt_8002A8C8
  /* 3E784 03F784 8003EB84 */  .4byte jtgt_8002A8C8
  /* 3E788 03F788 8003EB88 */  .4byte jtgt_8002A8C8
  /* 3E78C 03F78C 8003EB8C */  .4byte jtgt_8002A8C8
  /* 3E790 03F790 8003EB90 */  .4byte jtgt_8002A88C
  /* 3E794 03F794 8003EB94 */  .4byte jtgt_8002A8C8
  /* 3E798 03F798 8003EB98 */  .4byte jtgt_8002A834
  /* 3E79C 03F79C 8003EB9C */  .4byte jtgt_8002A864
  /* 3E7A0 03F7A0 8003EBA0 */  .4byte jtgt_8002A8C8
  /* 3E7A4 03F7A4 8003EBA4 */  .4byte jtgt_8002A8C8
  /* 3E7A8 03F7A8 8003EBA8 */  .4byte jtgt_8002A5B8
  /* 3E7AC 03F7AC 8003EBAC */  .4byte jtgt_8002A5B8
  /* 3E7B0 03F7B0 8003EBB0 */  .4byte jtgt_8002A468
  /* 3E7B4 03F7B4 8003EBB4 */  .4byte jtgt_8002A790
  /* 3E7B8 03F7B8 8003EBB8 */  .4byte jtgt_8002A7B8
  /* 3E7BC 03F7BC 8003EBBC */  .4byte jtgt_8002A5B8
  /* 3E7C0 03F7C0 8003EBC0 */  .4byte jtgt_8002A5B8

glabel D_8003EBC4
  /* 3E7C4 03F7C4 8003EBC4 */  .4byte jtgt_8002B734
  /* 3E7C8 03F7C8 8003EBC8 */  .4byte jtgt_8002BD14
  /* 3E7CC 03F7CC 8003EBCC */  .4byte jtgt_8002BD14
  /* 3E7D0 03F7D0 8003EBD0 */  .4byte jtgt_8002BD14
  /* 3E7D4 03F7D4 8003EBD4 */  .4byte jtgt_8002BD14
  /* 3E7D8 03F7D8 8003EBD8 */  .4byte jtgt_8002BD14
  /* 3E7DC 03F7DC 8003EBDC */  .4byte jtgt_8002BD14
  /* 3E7E0 03F7E0 8003EBE0 */  .4byte jtgt_8002BD14
  /* 3E7E4 03F7E4 8003EBE4 */  .4byte jtgt_8002BD14
  /* 3E7E8 03F7E8 8003EBE8 */  .4byte jtgt_8002BD14
  /* 3E7EC 03F7EC 8003EBEC */  .4byte jtgt_8002BD14
  /* 3E7F0 03F7F0 8003EBF0 */  .4byte jtgt_8002BD14
  /* 3E7F4 03F7F4 8003EBF4 */  .4byte jtgt_8002BD14
  /* 3E7F8 03F7F8 8003EBF8 */  .4byte jtgt_8002BD14
  /* 3E7FC 03F7FC 8003EBFC */  .4byte jtgt_8002BD14
  /* 3E800 03F800 8003EC00 */  .4byte jtgt_8002BD14
  /* 3E804 03F804 8003EC04 */  .4byte jtgt_8002B348
  /* 3E808 03F808 8003EC08 */  .4byte jtgt_8002BD14
  /* 3E80C 03F80C 8003EC0C */  .4byte jtgt_8002BD14
  /* 3E810 03F810 8003EC10 */  .4byte jtgt_8002BD14
  /* 3E814 03F814 8003EC14 */  .4byte jtgt_8002BD14
  /* 3E818 03F818 8003EC18 */  .4byte jtgt_8002BD14
  /* 3E81C 03F81C 8003EC1C */  .4byte jtgt_8002BD14
  /* 3E820 03F820 8003EC20 */  .4byte jtgt_8002BD14
  /* 3E824 03F824 8003EC24 */  .4byte jtgt_8002BD14
  /* 3E828 03F828 8003EC28 */  .4byte jtgt_8002BD14
  /* 3E82C 03F82C 8003EC2C */  .4byte jtgt_8002BD14
  /* 3E830 03F830 8003EC30 */  .4byte jtgt_8002BD14
  /* 3E834 03F834 8003EC34 */  .4byte jtgt_8002BD14
  /* 3E838 03F838 8003EC38 */  .4byte jtgt_8002BD14
  /* 3E83C 03F83C 8003EC3C */  .4byte jtgt_8002BD14
  /* 3E840 03F840 8003EC40 */  .4byte jtgt_8002BD14
  /* 3E844 03F844 8003EC44 */  .4byte jtgt_8002B78C
  /* 3E848 03F848 8003EC48 */  .4byte jtgt_8002BD14
  /* 3E84C 03F84C 8003EC4C */  .4byte jtgt_8002BD14
  /* 3E850 03F850 8003EC50 */  .4byte jtgt_8002BD14
  /* 3E854 03F854 8003EC54 */  .4byte jtgt_8002BD14
  /* 3E858 03F858 8003EC58 */  .4byte jtgt_8002BD14
  /* 3E85C 03F85C 8003EC5C */  .4byte jtgt_8002BD14
  /* 3E860 03F860 8003EC60 */  .4byte jtgt_8002BD14
  /* 3E864 03F864 8003EC64 */  .4byte jtgt_8002BD14
  /* 3E868 03F868 8003EC68 */  .4byte jtgt_8002BD14
  /* 3E86C 03F86C 8003EC6C */  .4byte jtgt_8002BD14
  /* 3E870 03F870 8003EC70 */  .4byte jtgt_8002BD14
  /* 3E874 03F874 8003EC74 */  .4byte jtgt_8002BD14
  /* 3E878 03F878 8003EC78 */  .4byte jtgt_8002BD14
  /* 3E87C 03F87C 8003EC7C */  .4byte jtgt_8002BD14
  /* 3E880 03F880 8003EC80 */  .4byte jtgt_8002BD14
  /* 3E884 03F884 8003EC84 */  .4byte jtgt_8002B800
  /* 3E888 03F888 8003EC88 */  .4byte jtgt_8002BD14
  /* 3E88C 03F88C 8003EC8C */  .4byte jtgt_8002BD14
  /* 3E890 03F890 8003EC90 */  .4byte jtgt_8002BD14
  /* 3E894 03F894 8003EC94 */  .4byte jtgt_8002BD14
  /* 3E898 03F898 8003EC98 */  .4byte jtgt_8002BD14
  /* 3E89C 03F89C 8003EC9C */  .4byte jtgt_8002BD14
  /* 3E8A0 03F8A0 8003ECA0 */  .4byte jtgt_8002BD14
  /* 3E8A4 03F8A4 8003ECA4 */  .4byte jtgt_8002BD14
  /* 3E8A8 03F8A8 8003ECA8 */  .4byte jtgt_8002BD14
  /* 3E8AC 03F8AC 8003ECAC */  .4byte jtgt_8002BD14
  /* 3E8B0 03F8B0 8003ECB0 */  .4byte jtgt_8002BD14
  /* 3E8B4 03F8B4 8003ECB4 */  .4byte jtgt_8002BD14
  /* 3E8B8 03F8B8 8003ECB8 */  .4byte jtgt_8002BD14
  /* 3E8BC 03F8BC 8003ECBC */  .4byte jtgt_8002BD14
  /* 3E8C0 03F8C0 8003ECC0 */  .4byte jtgt_8002BD14
  /* 3E8C4 03F8C4 8003ECC4 */  .4byte jtgt_8002BBDC
  /* 3E8C8 03F8C8 8003ECC8 */  .4byte jtgt_8002BD14
  /* 3E8CC 03F8CC 8003ECCC */  .4byte jtgt_8002BD14
  /* 3E8D0 03F8D0 8003ECD0 */  .4byte jtgt_8002BD14
  /* 3E8D4 03F8D4 8003ECD4 */  .4byte jtgt_8002BD14
  /* 3E8D8 03F8D8 8003ECD8 */  .4byte jtgt_8002BD14
  /* 3E8DC 03F8DC 8003ECDC */  .4byte jtgt_8002BD14
  /* 3E8E0 03F8E0 8003ECE0 */  .4byte jtgt_8002BD14
  /* 3E8E4 03F8E4 8003ECE4 */  .4byte jtgt_8002BD14
  /* 3E8E8 03F8E8 8003ECE8 */  .4byte jtgt_8002BD14
  /* 3E8EC 03F8EC 8003ECEC */  .4byte jtgt_8002BD14
  /* 3E8F0 03F8F0 8003ECF0 */  .4byte jtgt_8002BD14
  /* 3E8F4 03F8F4 8003ECF4 */  .4byte jtgt_8002BD14
  /* 3E8F8 03F8F8 8003ECF8 */  .4byte jtgt_8002BD14
  /* 3E8FC 03F8FC 8003ECFC */  .4byte jtgt_8002BD14
  /* 3E900 03F900 8003ED00 */  .4byte jtgt_8002BD14
  /* 3E904 03F904 8003ED04 */  .4byte jtgt_8002B7E4
  /* 3E908 03F908 8003ED08 */  .4byte jtgt_8002BD14
  /* 3E90C 03F90C 8003ED0C */  .4byte jtgt_8002BD14
  /* 3E910 03F910 8003ED10 */  .4byte jtgt_8002BD14
  /* 3E914 03F914 8003ED14 */  .4byte jtgt_8002BD14
  /* 3E918 03F918 8003ED18 */  .4byte jtgt_8002BD14
  /* 3E91C 03F91C 8003ED1C */  .4byte jtgt_8002BD14
  /* 3E920 03F920 8003ED20 */  .4byte jtgt_8002BD14
  /* 3E924 03F924 8003ED24 */  .4byte jtgt_8002BD14
  /* 3E928 03F928 8003ED28 */  .4byte jtgt_8002BD14
  /* 3E92C 03F92C 8003ED2C */  .4byte jtgt_8002BD14
  /* 3E930 03F930 8003ED30 */  .4byte jtgt_8002BD14
  /* 3E934 03F934 8003ED34 */  .4byte jtgt_8002BD14
  /* 3E938 03F938 8003ED38 */  .4byte jtgt_8002BD14
  /* 3E93C 03F93C 8003ED3C */  .4byte jtgt_8002BD14
  /* 3E940 03F940 8003ED40 */  .4byte jtgt_8002BD14
  /* 3E944 03F944 8003ED44 */  .4byte jtgt_8002BC30

glabel D_8003ED48
  /* 3E948 03F948 8003ED48 */  .4byte jtgt_8002B8C0
  /* 3E94C 03F94C 8003ED4C */  .4byte jtgt_8002BD14
  /* 3E950 03F950 8003ED50 */  .4byte jtgt_8002BD14
  /* 3E954 03F954 8003ED54 */  .4byte jtgt_8002B860
  /* 3E958 03F958 8003ED58 */  .4byte jtgt_8002BD14
  /* 3E95C 03F95C 8003ED5C */  .4byte jtgt_8002BD14
  /* 3E960 03F960 8003ED60 */  .4byte jtgt_8002BD14
  /* 3E964 03F964 8003ED64 */  .4byte jtgt_8002BD14
  /* 3E968 03F968 8003ED68 */  .4byte jtgt_8002BD14
  /* 3E96C 03F96C 8003ED6C */  .4byte jtgt_8002B94C
  /* 3E970 03F970 8003ED70 */  .4byte jtgt_8002BD14
  /* 3E974 03F974 8003ED74 */  .4byte jtgt_8002BD14
  /* 3E978 03F978 8003ED78 */  .4byte jtgt_8002BD14
  /* 3E97C 03F97C 8003ED7C */  .4byte jtgt_8002BA6C
  /* 3E980 03F980 8003ED80 */  .4byte jtgt_8002BAC0
  /* 3E984 03F984 8003ED84 */  .4byte jtgt_8002BAC8
  /* 3E988 03F988 8003ED88 */  .4byte jtgt_8002BB28
  /* 3E98C 03F98C 8003ED8C */  .4byte jtgt_8002BB88
  /* 3E990 03F990 8003ED90 */  .4byte jtgt_8002BBC0

glabel D_8003ED94
  /* 3E994 03F994 8003ED94 */  .4byte jtgt_8002BD98
  /* 3E998 03F998 8003ED98 */  .4byte jtgt_8002C350
  /* 3E99C 03F99C 8003ED9C */  .4byte jtgt_8002C0F4
  /* 3E9A0 03F9A0 8003EDA0 */  .4byte jtgt_8002C350
  /* 3E9A4 03F9A4 8003EDA4 */  .4byte jtgt_8002C350
  /* 3E9A8 03F9A8 8003EDA8 */  .4byte jtgt_8002BE80
  /* 3E9AC 03F9AC 8003EDAC */  .4byte jtgt_8002BEC4
  /* 3E9B0 03F9B0 8003EDB0 */  .4byte jtgt_8002C114
  /* 3E9B4 03F9B4 8003EDB4 */  .4byte jtgt_8002C350
  /* 3E9B8 03F9B8 8003EDB8 */  .4byte jtgt_8002BE60
  /* 3E9BC 03F9BC 8003EDBC */  .4byte jtgt_8002C12C
  /* 3E9C0 03F9C0 8003EDC0 */  .4byte jtgt_8002C350
  /* 3E9C4 03F9C4 8003EDC4 */  .4byte jtgt_8002C2B8
  /* 3E9C8 03F9C8 8003EDC8 */  .4byte jtgt_8002C2DC
  /* 3E9CC 03F9CC 8003EDCC */  .4byte jtgt_8002C310
  /* 3E9D0 03F9D0 8003EDD0 */  .4byte jtgt_8002C184
  /* 3E9D4 03F9D4 8003EDD4 */  .4byte jtgt_8002C1B0
  /* 3E9D8 03F9D8 8003EDD8 */  .4byte jtgt_8002C21C
  /* 3E9DC 03F9DC 8003EDDC */  .4byte jtgt_8002C350
  /* 3E9E0 03F9E0 8003EDE0 */  .4byte jtgt_8002C350
  /* 3E9E4 03F9E4 8003EDE4 */  .4byte jtgt_8002C350
  /* 3E9E8 03F9E8 8003EDE8 */  .4byte jtgt_8002C0F4
  /* 3E9EC 03F9EC 8003EDEC */  .4byte jtgt_8002BF20
  /* 3E9F0 03F9F0 8003EDF0 */  .4byte jtgt_8002C020
  /* 3E9F4 03F9F4 8003EDF4 */  .4byte jtgt_8002C328
  /* 3E9F8 03F9F8 8003EDF8 */  .4byte jtgt_8002C340

glabel D_8003EDFC
  /* 3E9FC 03F9FC 8003EDFC */  .4byte jtgt_8002BDD4
  /* 3EA00 03FA00 8003EE00 */  .4byte jtgt_8002C350
  /* 3EA04 03FA04 8003EE04 */  .4byte jtgt_8002BE00
  /* 3EA08 03FA08 8003EE08 */  .4byte jtgt_8002BE24
  /* 3EA0C 03FA0C 8003EE0C */  .4byte jtgt_8002C350
  /* 3EA10 03FA10 8003EE10 */  .4byte jtgt_8002C350
  /* 3EA14 03FA14 8003EE14 */  .4byte jtgt_8002C350
  /* 3EA18 03FA18 8003EE18 */  .4byte jtgt_8002C350
  /* 3EA1C 03FA1C 8003EE1C */  .4byte jtgt_8002C350
  /* 3EA20 03FA20 8003EE20 */  .4byte jtgt_8002C350
  /* 3EA24 03FA24 8003EE24 */  .4byte jtgt_8002C350
  /* 3EA28 03FA28 8003EE28 */  .4byte jtgt_8002C350
  /* 3EA2C 03FA2C 8003EE2C */  .4byte jtgt_8002C350
  /* 3EA30 03FA30 8003EE30 */  .4byte jtgt_8002C350
  /* 3EA34 03FA34 8003EE34 */  .4byte jtgt_8002C350
  /* 3EA38 03FA38 8003EE38 */  .4byte jtgt_8002C350
  /* 3EA3C 03FA3C 8003EE3C */  .4byte jtgt_8002C350
  /* 3EA40 03FA40 8003EE40 */  .4byte jtgt_8002BE50
  /* 3EA44 03FA44 8003EE44 */  .4byte jtgt_8002BE50
  /* 3EA48 03FA48 8003EE48 */  .4byte jtgt_8002BE50

glabel D_8003EE4C
  /* 3EA4C 03FA4C 8003EE4C */
  .4byte 0x48f42400 # .float 500000.0

glabel D_8003EE50
  /* 3EA50 03FA50 8003EE50 */
  .4byte 0x49742400 # .float 1000000.0

glabel D_8003EE54
  /* 3EA54 03FA54 8003EE54 */
  .4byte 0x49742400 # .float 1000000.0

glabel jtbl_8003EE58
  /* 3EA58 03FA58 8003EE58 */  .4byte jtgt_8002CFD8
  /* 3EA5C 03FA5C 8003EE5C */  .4byte jtgt_8002D00C
  /* 3EA60 03FA60 8003EE60 */  .4byte jtgt_8002D06C
  /* 3EA64 03FA64 8003EE64 */  .4byte jtgt_8002D040
  /* 3EA68 03FA68 8003EE68 */  .4byte jtgt_8002D098
  /* 3EA6C 03FA6C 8003EE6C */  .4byte jtgt_8002D0C4
  /* 3EA70 03FA70 8003EE70 */  .4byte jtgt_8002D12C
  /* 3EA74 03FA74 8003EE74 */  .4byte jtgt_8002D198

glabel D_8003EE78
  /* 3EA78 03FA78 8003EE78 */
  .4byte 0x482910da # .float 173123.4

glabel jtbl_8003EE7C
  /* 3EA7C 03FA7C 8003EE7C */  .4byte jtgt_8002D2B4
  /* 3EA80 03FA80 8003EE80 */  .4byte jtgt_8002D2C0
  /* 3EA84 03FA84 8003EE84 */  .4byte jtgt_8002D2D8
  /* 3EA88 03FA88 8003EE88 */  .4byte jtgt_8002D2E4
  /* 3EA8C 03FA8C 8003EE8C */  .4byte jtgt_8002D2CC
  /* 3EA90 03FA90 8003EE90 */  .4byte jtgt_8002D2F0

glabel D_8003EE94
  /* 3EA94 03FA94 8003EE94 */
  .4byte 0x482910da # .float 173123.4
  .incbin "system.raw.bin", 0x3EA98, 0x8

glabel jtbl_8003EEA0
  /* 3EAA0 03FAA0 8003EEA0 */  .4byte jtgt_8002E8B8
  /* 3EAA4 03FAA4 8003EEA4 */  .4byte jtgt_8002ED3C
  /* 3EAA8 03FAA8 8003EEA8 */  .4byte jtgt_8002ED3C
  /* 3EAAC 03FAAC 8003EEAC */  .4byte jtgt_8002ED3C
  /* 3EAB0 03FAB0 8003EEB0 */  .4byte jtgt_8002ED3C
  /* 3EAB4 03FAB4 8003EEB4 */  .4byte jtgt_8002ED3C
  /* 3EAB8 03FAB8 8003EEB8 */  .4byte jtgt_8002ED3C
  /* 3EABC 03FABC 8003EEBC */  .4byte jtgt_8002ED3C
  /* 3EAC0 03FAC0 8003EEC0 */  .4byte jtgt_8002ED3C
  /* 3EAC4 03FAC4 8003EEC4 */  .4byte jtgt_8002ED3C
  /* 3EAC8 03FAC8 8003EEC8 */  .4byte jtgt_8002ED3C
  /* 3EACC 03FACC 8003EECC */  .4byte jtgt_8002ED3C
  /* 3EAD0 03FAD0 8003EED0 */  .4byte jtgt_8002ED3C
  /* 3EAD4 03FAD4 8003EED4 */  .4byte jtgt_8002ED3C
  /* 3EAD8 03FAD8 8003EED8 */  .4byte jtgt_8002ED3C
  /* 3EADC 03FADC 8003EEDC */  .4byte jtgt_8002ED3C
  /* 3EAE0 03FAE0 8003EEE0 */  .4byte jtgt_8002E560
  /* 3EAE4 03FAE4 8003EEE4 */  .4byte jtgt_8002ED3C
  /* 3EAE8 03FAE8 8003EEE8 */  .4byte jtgt_8002ED3C
  /* 3EAEC 03FAEC 8003EEEC */  .4byte jtgt_8002ED3C
  /* 3EAF0 03FAF0 8003EEF0 */  .4byte jtgt_8002ED3C
  /* 3EAF4 03FAF4 8003EEF4 */  .4byte jtgt_8002ED3C
  /* 3EAF8 03FAF8 8003EEF8 */  .4byte jtgt_8002ED3C
  /* 3EAFC 03FAFC 8003EEFC */  .4byte jtgt_8002ED3C
  /* 3EB00 03FB00 8003EF00 */  .4byte jtgt_8002ED3C
  /* 3EB04 03FB04 8003EF04 */  .4byte jtgt_8002ED3C
  /* 3EB08 03FB08 8003EF08 */  .4byte jtgt_8002ED3C
  /* 3EB0C 03FB0C 8003EF0C */  .4byte jtgt_8002ED3C
  /* 3EB10 03FB10 8003EF10 */  .4byte jtgt_8002ED3C
  /* 3EB14 03FB14 8003EF14 */  .4byte jtgt_8002ED3C
  /* 3EB18 03FB18 8003EF18 */  .4byte jtgt_8002ED3C
  /* 3EB1C 03FB1C 8003EF1C */  .4byte jtgt_8002ED3C
  /* 3EB20 03FB20 8003EF20 */  .4byte jtgt_8002E910
  /* 3EB24 03FB24 8003EF24 */  .4byte jtgt_8002ED3C
  /* 3EB28 03FB28 8003EF28 */  .4byte jtgt_8002ED3C
  /* 3EB2C 03FB2C 8003EF2C */  .4byte jtgt_8002ED3C
  /* 3EB30 03FB30 8003EF30 */  .4byte jtgt_8002ED3C
  /* 3EB34 03FB34 8003EF34 */  .4byte jtgt_8002ED3C
  /* 3EB38 03FB38 8003EF38 */  .4byte jtgt_8002ED3C
  /* 3EB3C 03FB3C 8003EF3C */  .4byte jtgt_8002ED3C
  /* 3EB40 03FB40 8003EF40 */  .4byte jtgt_8002ED3C
  /* 3EB44 03FB44 8003EF44 */  .4byte jtgt_8002ED3C
  /* 3EB48 03FB48 8003EF48 */  .4byte jtgt_8002ED3C
  /* 3EB4C 03FB4C 8003EF4C */  .4byte jtgt_8002ED3C
  /* 3EB50 03FB50 8003EF50 */  .4byte jtgt_8002ED3C
  /* 3EB54 03FB54 8003EF54 */  .4byte jtgt_8002ED3C
  /* 3EB58 03FB58 8003EF58 */  .4byte jtgt_8002ED3C
  /* 3EB5C 03FB5C 8003EF5C */  .4byte jtgt_8002ED3C
  /* 3EB60 03FB60 8003EF60 */  .4byte jtgt_8002E98C
  /* 3EB64 03FB64 8003EF64 */  .4byte jtgt_8002ED3C
  /* 3EB68 03FB68 8003EF68 */  .4byte jtgt_8002ED3C
  /* 3EB6C 03FB6C 8003EF6C */  .4byte jtgt_8002ED3C
  /* 3EB70 03FB70 8003EF70 */  .4byte jtgt_8002ED3C
  /* 3EB74 03FB74 8003EF74 */  .4byte jtgt_8002ED3C
  /* 3EB78 03FB78 8003EF78 */  .4byte jtgt_8002ED3C
  /* 3EB7C 03FB7C 8003EF7C */  .4byte jtgt_8002ED3C
  /* 3EB80 03FB80 8003EF80 */  .4byte jtgt_8002ED3C
  /* 3EB84 03FB84 8003EF84 */  .4byte jtgt_8002ED3C
  /* 3EB88 03FB88 8003EF88 */  .4byte jtgt_8002ED3C
  /* 3EB8C 03FB8C 8003EF8C */  .4byte jtgt_8002ED3C
  /* 3EB90 03FB90 8003EF90 */  .4byte jtgt_8002ED3C
  /* 3EB94 03FB94 8003EF94 */  .4byte jtgt_8002ED3C
  /* 3EB98 03FB98 8003EF98 */  .4byte jtgt_8002ED3C
  /* 3EB9C 03FB9C 8003EF9C */  .4byte jtgt_8002ED3C
  /* 3EBA0 03FBA0 8003EFA0 */  .4byte jtgt_8002EC68
  /* 3EBA4 03FBA4 8003EFA4 */  .4byte jtgt_8002ED3C
  /* 3EBA8 03FBA8 8003EFA8 */  .4byte jtgt_8002ED3C
  /* 3EBAC 03FBAC 8003EFAC */  .4byte jtgt_8002ED3C
  /* 3EBB0 03FBB0 8003EFB0 */  .4byte jtgt_8002ED3C
  /* 3EBB4 03FBB4 8003EFB4 */  .4byte jtgt_8002ED3C
  /* 3EBB8 03FBB8 8003EFB8 */  .4byte jtgt_8002ED3C
  /* 3EBBC 03FBBC 8003EFBC */  .4byte jtgt_8002ED3C
  /* 3EBC0 03FBC0 8003EFC0 */  .4byte jtgt_8002ED3C
  /* 3EBC4 03FBC4 8003EFC4 */  .4byte jtgt_8002ED3C
  /* 3EBC8 03FBC8 8003EFC8 */  .4byte jtgt_8002ED3C
  /* 3EBCC 03FBCC 8003EFCC */  .4byte jtgt_8002ED3C
  /* 3EBD0 03FBD0 8003EFD0 */  .4byte jtgt_8002ED3C
  /* 3EBD4 03FBD4 8003EFD4 */  .4byte jtgt_8002ED3C
  /* 3EBD8 03FBD8 8003EFD8 */  .4byte jtgt_8002ED3C
  /* 3EBDC 03FBDC 8003EFDC */  .4byte jtgt_8002ED3C
  /* 3EBE0 03FBE0 8003EFE0 */  .4byte jtgt_8002E970
  /* 3EBE4 03FBE4 8003EFE4 */  .4byte jtgt_8002ED3C
  /* 3EBE8 03FBE8 8003EFE8 */  .4byte jtgt_8002ED3C
  /* 3EBEC 03FBEC 8003EFEC */  .4byte jtgt_8002ED3C
  /* 3EBF0 03FBF0 8003EFF0 */  .4byte jtgt_8002ED3C
  /* 3EBF4 03FBF4 8003EFF4 */  .4byte jtgt_8002ED3C
  /* 3EBF8 03FBF8 8003EFF8 */  .4byte jtgt_8002ED3C
  /* 3EBFC 03FBFC 8003EFFC */  .4byte jtgt_8002ED3C
  /* 3EC00 03FC00 8003F000 */  .4byte jtgt_8002ED3C
  /* 3EC04 03FC04 8003F004 */  .4byte jtgt_8002ED3C
  /* 3EC08 03FC08 8003F008 */  .4byte jtgt_8002ED3C
  /* 3EC0C 03FC0C 8003F00C */  .4byte jtgt_8002ED3C
  /* 3EC10 03FC10 8003F010 */  .4byte jtgt_8002ED3C
  /* 3EC14 03FC14 8003F014 */  .4byte jtgt_8002ED3C
  /* 3EC18 03FC18 8003F018 */  .4byte jtgt_8002ED3C
  /* 3EC1C 03FC1C 8003F01C */  .4byte jtgt_8002ED3C
  /* 3EC20 03FC20 8003F020 */  .4byte jtgt_8002EC9C

glabel D_8003F024
  /* 3EC24 03FC24 8003F024 */  .4byte jtgt_8002EA58
  /* 3EC28 03FC28 8003F028 */  .4byte jtgt_8002ED3C
  /* 3EC2C 03FC2C 8003F02C */  .4byte jtgt_8002ED3C
  /* 3EC30 03FC30 8003F030 */  .4byte jtgt_8002E9F8
  /* 3EC34 03FC34 8003F034 */  .4byte jtgt_8002ED3C
  /* 3EC38 03FC38 8003F038 */  .4byte jtgt_8002ED3C
  /* 3EC3C 03FC3C 8003F03C */  .4byte jtgt_8002ED3C
  /* 3EC40 03FC40 8003F040 */  .4byte jtgt_8002ED3C
  /* 3EC44 03FC44 8003F044 */  .4byte jtgt_8002ED3C
  /* 3EC48 03FC48 8003F048 */  .4byte jtgt_8002EAEC
  /* 3EC4C 03FC4C 8003F04C */  .4byte jtgt_8002ED3C
  /* 3EC50 03FC50 8003F050 */  .4byte jtgt_8002ED3C
  /* 3EC54 03FC54 8003F054 */  .4byte jtgt_8002ED3C
  /* 3EC58 03FC58 8003F058 */  .4byte jtgt_8002EC0C
  /* 3EC5C 03FC5C 8003F05C */  .4byte jtgt_8002EC60
  /* 3EC60 03FC60 8003F060 */  .4byte jtgt_8002ED3C
  /* 3EC64 03FC64 8003F064 */  .4byte jtgt_8002ED3C
  /* 3EC68 03FC68 8003F068 */  .4byte jtgt_8002ED3C
  /* 3EC6C 03FC6C 8003F06C */  .4byte jtgt_8002ED3C
  /* 3EC70 03FC70 8003F070 */  .4byte jtgt_8002ED3C
  /* 3EC74 03FC74 8003F074 */  .4byte jtgt_8002ED3C

glabel D_8003F078
  /* 3EC78 03FC78 8003F078 */  .4byte jtgt_8002EDB8
  /* 3EC7C 03FC7C 8003F07C */  .4byte jtgt_8002F348
  /* 3EC80 03FC80 8003F080 */  .4byte jtgt_8002F0FC
  /* 3EC84 03FC84 8003F084 */  .4byte jtgt_8002F348
  /* 3EC88 03FC88 8003F088 */  .4byte jtgt_8002F348
  /* 3EC8C 03FC8C 8003F08C */  .4byte jtgt_8002EE80
  /* 3EC90 03FC90 8003F090 */  .4byte jtgt_8002EEC4
  /* 3EC94 03FC94 8003F094 */  .4byte jtgt_8002F118
  /* 3EC98 03FC98 8003F098 */  .4byte jtgt_8002F348
  /* 3EC9C 03FC9C 8003F09C */  .4byte jtgt_8002EE60
  /* 3ECA0 03FCA0 8003F0A0 */  .4byte jtgt_8002F248
  /* 3ECA4 03FCA4 8003F0A4 */  .4byte jtgt_8002F2A8
  /* 3ECA8 03FCA8 8003F0A8 */  .4byte jtgt_8002F2C4
  /* 3ECAC 03FCAC 8003F0AC */  .4byte jtgt_8002F2E8
  /* 3ECB0 03FCB0 8003F0B0 */  .4byte jtgt_8002F338
  /* 3ECB4 03FCB4 8003F0B4 */  .4byte jtgt_8002F12C
  /* 3ECB8 03FCB8 8003F0B8 */  .4byte jtgt_8002F150
  /* 3ECBC 03FCBC 8003F0BC */  .4byte jtgt_8002F1B8
  /* 3ECC0 03FCC0 8003F0C0 */  .4byte jtgt_8002F348
  /* 3ECC4 03FCC4 8003F0C4 */  .4byte jtgt_8002F348
  /* 3ECC8 03FCC8 8003F0C8 */  .4byte jtgt_8002F348
  /* 3ECCC 03FCCC 8003F0CC */  .4byte jtgt_8002F348
  /* 3ECD0 03FCD0 8003F0D0 */  .4byte jtgt_8002EF20
  /* 3ECD4 03FCD4 8003F0D4 */  .4byte jtgt_8002F028

glabel D_8003F0D8
  /* 3ECD8 03FCD8 8003F0D8 */
  .4byte 0x48f42400 # .float 500000.0
  .incbin "system.raw.bin", 0x3ECDC, 0x4

glabel D_8003F0E0
  .incbin "system.raw.bin", 0x3ECE0, 0x80

glabel D_8003F160
  .incbin "system.raw.bin", 0x3ED60, 0x28

glabel D_8003F188
  /* 3ED88 03FD88 8003F188 */
  .8byte 0x3fd45f306dc9c883 # .double 0.3183098861837907

glabel D_8003F190
  /* 3ED90 03FD90 8003F190 */
  .8byte 0x400921fb50000000 # .double 3.1415926218032837

glabel D_8003F198
  /* 3ED98 03FD98 8003F198 */
  .8byte 0x3e6110b4611a6263 # .double 3.178650954705639e-8
  .incbin "system.raw.bin", 0x3EDA0, 0x10

glabel D_8003F1B0
  .incbin "system.raw.bin", 0x3EDB0, 0x20

glabel jtbl_8003F1D0
  /* 3EDD0 03FDD0 8003F1D0 */  .4byte jtgt_80031128
  /* 3EDD4 03FDD4 8003F1D4 */  .4byte jtgt_800310F0
  /* 3EDD8 03FDD8 8003F1D8 */  .4byte jtgt_800310D0
  /* 3EDDC 03FDDC 8003F1DC */  .4byte jtgt_80030F34
  /* 3EDE0 03FDE0 8003F1E0 */  .4byte jtgt_80030EF0
  /* 3EDE4 03FDE4 8003F1E4 */  .4byte jtgt_80031074
  /* 3EDE8 03FDE8 8003F1E8 */  .4byte jtgt_80030EB8
  /* 3EDEC 03FDEC 8003F1EC */  .4byte jtgt_80030EC4
  /* 3EDF0 03FDF0 8003F1F0 */  .4byte jtgt_80030ED0
  .incbin "system.raw.bin", 0x3EDF4, 0xC

glabel jtbl_8003F200
  /* 3EE00 03FE00 8003F200 */  .4byte jtgt_8003331C
  /* 3EE04 03FE04 8003F204 */  .4byte jtgt_80033214
  /* 3EE08 03FE08 8003F208 */  .4byte jtgt_80033250
  /* 3EE0C 03FE0C 8003F20C */  .4byte jtgt_8003333C
  /* 3EE10 03FE10 8003F210 */  .4byte jtgt_8003333C
  /* 3EE14 03FE14 8003F214 */  .4byte jtgt_8003328C
  /* 3EE18 03FE18 8003F218 */  .4byte jtgt_800332D4
  .incbin "system.raw.bin", 0x3EE1C, 0x4

glabel D_8003F220
  /* 3EE20 03FE20 8003F220 */
  .asciz "hlL"
  .balign 4

glabel D_8003F224
  /* 3EE24 03FE24 8003F224 */
  .asciz " +-#0"
  .balign 4

glabel D_8003F22C
  .incbin "system.raw.bin", 0x3EE2C, 0x18

glabel jtbl_8003F244
  /* 3EE44 03FE44 8003F244 */  .4byte jtgt_80033958
  /* 3EE48 03FE48 8003F248 */  .4byte jtgt_80033C38
  /* 3EE4C 03FE4C 8003F24C */  .4byte jtgt_80033958
  /* 3EE50 03FE50 8003F250 */  .4byte jtgt_80033C38
  /* 3EE54 03FE54 8003F254 */  .4byte jtgt_80033C38
  /* 3EE58 03FE58 8003F258 */  .4byte jtgt_80033C38
  /* 3EE5C 03FE5C 8003F25C */  .4byte jtgt_80033C38
  /* 3EE60 03FE60 8003F260 */  .4byte jtgt_80033C38
  /* 3EE64 03FE64 8003F264 */  .4byte jtgt_80033C38
  /* 3EE68 03FE68 8003F268 */  .4byte jtgt_80033C38
  /* 3EE6C 03FE6C 8003F26C */  .4byte jtgt_80033C38
  /* 3EE70 03FE70 8003F270 */  .4byte jtgt_80033C38
  /* 3EE74 03FE74 8003F274 */  .4byte jtgt_80033C38
  /* 3EE78 03FE78 8003F278 */  .4byte jtgt_80033C38
  /* 3EE7C 03FE7C 8003F27C */  .4byte jtgt_80033C38
  /* 3EE80 03FE80 8003F280 */  .4byte jtgt_80033C38
  /* 3EE84 03FE84 8003F284 */  .4byte jtgt_80033C38
  /* 3EE88 03FE88 8003F288 */  .4byte jtgt_80033C38
  /* 3EE8C 03FE8C 8003F28C */  .4byte jtgt_80033C38
  /* 3EE90 03FE90 8003F290 */  .4byte jtgt_80033808
  /* 3EE94 03FE94 8003F294 */  .4byte jtgt_80033C38
  /* 3EE98 03FE98 8003F298 */  .4byte jtgt_80033C38
  /* 3EE9C 03FE9C 8003F29C */  .4byte jtgt_80033C38
  /* 3EEA0 03FEA0 8003F2A0 */  .4byte jtgt_80033C38
  /* 3EEA4 03FEA4 8003F2A4 */  .4byte jtgt_80033C38
  /* 3EEA8 03FEA8 8003F2A8 */  .4byte jtgt_80033C38
  /* 3EEAC 03FEAC 8003F2AC */  .4byte jtgt_80033C38
  /* 3EEB0 03FEB0 8003F2B0 */  .4byte jtgt_80033C38
  /* 3EEB4 03FEB4 8003F2B4 */  .4byte jtgt_80033C38
  /* 3EEB8 03FEB8 8003F2B8 */  .4byte jtgt_80033C38
  /* 3EEBC 03FEBC 8003F2BC */  .4byte jtgt_80033660
  /* 3EEC0 03FEC0 8003F2C0 */  .4byte jtgt_80033698
  /* 3EEC4 03FEC4 8003F2C4 */  .4byte jtgt_80033958
  /* 3EEC8 03FEC8 8003F2C8 */  .4byte jtgt_80033958
  /* 3EECC 03FECC 8003F2CC */  .4byte jtgt_80033958
  /* 3EED0 03FED0 8003F2D0 */  .4byte jtgt_80033C38
  /* 3EED4 03FED4 8003F2D4 */  .4byte jtgt_80033698
  /* 3EED8 03FED8 8003F2D8 */  .4byte jtgt_80033C38
  /* 3EEDC 03FEDC 8003F2DC */  .4byte jtgt_80033C38
  /* 3EEE0 03FEE0 8003F2E0 */  .4byte jtgt_80033C38
  /* 3EEE4 03FEE4 8003F2E4 */  .4byte jtgt_80033C38
  /* 3EEE8 03FEE8 8003F2E8 */  .4byte jtgt_80033ABC
  /* 3EEEC 03FEEC 8003F2EC */  .4byte jtgt_80033808
  /* 3EEF0 03FEF0 8003F2F0 */  .4byte jtgt_80033B8C
  /* 3EEF4 03FEF4 8003F2F4 */  .4byte jtgt_80033C38
  /* 3EEF8 03FEF8 8003F2F8 */  .4byte jtgt_80033C38
  /* 3EEFC 03FEFC 8003F2FC */  .4byte jtgt_80033BD4
  /* 3EF00 03FF00 8003F300 */  .4byte jtgt_80033C38
  /* 3EF04 03FF04 8003F304 */  .4byte jtgt_80033808
  /* 3EF08 03FF08 8003F308 */  .4byte jtgt_80033C38
  /* 3EF0C 03FF0C 8003F30C */  .4byte jtgt_80033C38
  /* 3EF10 03FF10 8003F310 */  .4byte jtgt_80033808
  .incbin "system.raw.bin", 0x3EF14, 0xC

glabel D_8003F320
  .incbin "system.raw.bin", 0x3EF20, 0x28

glabel D_8003F348
  /* 3EF48 03FF48 8003F348 */
  .8byte 0x3fd45f306dc9c883 # .double 0.3183098861837907

glabel D_8003F350
  /* 3EF50 03FF50 8003F350 */
  .8byte 0x400921fb50000000 # .double 3.1415926218032837

glabel D_8003F358
  /* 3EF58 03FF58 8003F358 */
  .8byte 0x3e6110b4611a6263 # .double 3.178650954705639e-8
  .incbin "system.raw.bin", 0x3EF60, 0x10

glabel D_8003F370
  /* 3EF70 03FF70 8003F370 */
  .4byte 0x7f810000 # .float NaN
  .incbin "system.raw.bin", 0x3EF74, 0xC

glabel D_8003F380
  /* 3EF80 03FF80 8003F380 */
  .4byte 0x3f8012ef # .float 1.0005778

glabel D_8003F384
  /* 3EF84 03FF84 8003F384 */
  .4byte 0x3f7fda28 # .float 0.99942255
  .incbin "system.raw.bin", 0x3EF88, 0x8

glabel D_8003F390
  /* 3EF90 03FF90 8003F390 */
  .asciz "@$"
  .balign 4
  .incbin "system.raw.bin", 0x3EF94, 0x4
  /* 3EF98 03FF98 8003F398 */
  .asciz "@Y"
  .balign 4
  .incbin "system.raw.bin", 0x3EF9C, 0x3C

glabel D_8003F3D8
  /* 3EFD8 03FFD8 8003F3D8 */
  .asciz "NaN"
  .balign 4

glabel D_8003F3DC
  /* 3EFDC 03FFDC 8003F3DC */
  .asciz "Inf"
  .balign 4

glabel D_8003F3E0
  /* 3EFE0 03FFE0 8003F3E0 */
  .asciz "0"
  .balign 4
  .incbin "system.raw.bin", 0x3EFE4, 0x4

glabel D_8003F3E8
  /* 3EFE8 03FFE8 8003F3E8 */
  .8byte 0x4197d78400000000 # .double 100000000.0

glabel D_8003F3F0
  .incbin "system.raw.bin", 0x3EFF0, 0x8

glabel D_8003F3F8
  .incbin "system.raw.bin", 0x3EFF8, 0x8

glabel D_8003F400
  .incbin "system.raw.bin", 0x3F000, 0x2B0

