.include "macros.inc"

.section .data
# 04 (or could be in 05)
glabel D_8003B930
  .incbin "system.raw.bin", 0x3B530, 0x4

glabel D_8003B934
  .incbin "system.raw.bin", 0x3B534, 0x4

glabel D_8003B938
  .incbin "system.raw.bin", 0x3B538, 0x4

glabel D_8003B93C
  .incbin "system.raw.bin", 0x3B53C, 0x4

.section .rodata
# 04
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


# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text

.align 4

# new file start based on rodata
glabel func_8000AEF0
  /* 00BAF0 8000AEF0 27BDFFD8 */     addiu $sp, $sp, -0x28
  /* 00BAF4 8000AEF4 AFB00014 */        sw $s0, 0x14($sp)
  /* 00BAF8 8000AEF8 3C108004 */       lui $s0, %hi(gOMObjCommonLinks)
  /* 00BAFC 8000AEFC 00047080 */       sll $t6, $a0, 2
  /* 00BB00 8000AF00 020E8021 */      addu $s0, $s0, $t6
  /* 00BB04 8000AF04 8E1066F0 */        lw $s0, %lo(gOMObjCommonLinks)($s0)
  /* 00BB08 8000AF08 AFB30020 */        sw $s3, 0x20($sp)
  /* 00BB0C 8000AF0C AFB2001C */        sw $s2, 0x1c($sp)
  /* 00BB10 8000AF10 00C09025 */        or $s2, $a2, $zero
  /* 00BB14 8000AF14 00A09825 */        or $s3, $a1, $zero
  /* 00BB18 8000AF18 AFBF0024 */        sw $ra, 0x24($sp)
  /* 00BB1C 8000AF1C 12000007 */      beqz $s0, .L8000AF3C
  /* 00BB20 8000AF20 AFB10018 */        sw $s1, 0x18($sp)
  .L8000AF24:
  /* 00BB24 8000AF24 8E110004 */        lw $s1, 4($s0)
  /* 00BB28 8000AF28 02002025 */        or $a0, $s0, $zero
  /* 00BB2C 8000AF2C 0260F809 */      jalr $s3
  /* 00BB30 8000AF30 02402825 */        or $a1, $s2, $zero
  /* 00BB34 8000AF34 1620FFFB */      bnez $s1, .L8000AF24
  /* 00BB38 8000AF38 02208025 */        or $s0, $s1, $zero
  .L8000AF3C:
  /* 00BB3C 8000AF3C 8FBF0024 */        lw $ra, 0x24($sp)
  /* 00BB40 8000AF40 8FB00014 */        lw $s0, 0x14($sp)
  /* 00BB44 8000AF44 8FB10018 */        lw $s1, 0x18($sp)
  /* 00BB48 8000AF48 8FB2001C */        lw $s2, 0x1c($sp)
  /* 00BB4C 8000AF4C 8FB30020 */        lw $s3, 0x20($sp)
  /* 00BB50 8000AF50 03E00008 */        jr $ra
  /* 00BB54 8000AF54 27BD0028 */     addiu $sp, $sp, 0x28

glabel func_8000AF58
  /* 00BB58 8000AF58 27BDFFD0 */     addiu $sp, $sp, -0x30
  /* 00BB5C 8000AF5C AFB50028 */        sw $s5, 0x28($sp)
  /* 00BB60 8000AF60 AFB40024 */        sw $s4, 0x24($sp)
  /* 00BB64 8000AF64 AFB30020 */        sw $s3, 0x20($sp)
  /* 00BB68 8000AF68 AFB2001C */        sw $s2, 0x1c($sp)
  /* 00BB6C 8000AF6C 3C148004 */       lui $s4, %hi(gOMObjCommonLinks)
  /* 00BB70 8000AF70 3C158004 */       lui $s5, %hi(gOMObjCommonLinks + (0x21 * 4))
  /* 00BB74 8000AF74 00A09025 */        or $s2, $a1, $zero
  /* 00BB78 8000AF78 00809825 */        or $s3, $a0, $zero
  /* 00BB7C 8000AF7C AFBF002C */        sw $ra, 0x2c($sp)
  /* 00BB80 8000AF80 AFB10018 */        sw $s1, 0x18($sp)
  /* 00BB84 8000AF84 AFB00014 */        sw $s0, 0x14($sp)
  /* 00BB88 8000AF88 26B56774 */     addiu $s5, $s5, %lo(gOMObjCommonLinks + (0x21 * 4))
  /* 00BB8C 8000AF8C 269466F0 */     addiu $s4, $s4, %lo(gOMObjCommonLinks)
  /* 00BB90 8000AF90 8E900000 */        lw $s0, ($s4) # gOMObjCommonLinks + 0
  .L8000AF94:
  /* 00BB94 8000AF94 52000008 */      beql $s0, $zero, .L8000AFB8
  /* 00BB98 8000AF98 26940004 */     addiu $s4, $s4, 4
  .L8000AF9C:
  /* 00BB9C 8000AF9C 8E110004 */        lw $s1, 4($s0)
  /* 00BBA0 8000AFA0 02002025 */        or $a0, $s0, $zero
  /* 00BBA4 8000AFA4 0260F809 */      jalr $s3
  /* 00BBA8 8000AFA8 02402825 */        or $a1, $s2, $zero
  /* 00BBAC 8000AFAC 1620FFFB */      bnez $s1, .L8000AF9C
  /* 00BBB0 8000AFB0 02208025 */        or $s0, $s1, $zero
  /* 00BBB4 8000AFB4 26940004 */     addiu $s4, $s4, 4
  .L8000AFB8:
  /* 00BBB8 8000AFB8 5695FFF6 */      bnel $s4, $s5, .L8000AF94
  /* 00BBBC 8000AFBC 8E900000 */        lw $s0, ($s4) # gOMObjCommonLinks + 0
  /* 00BBC0 8000AFC0 8FBF002C */        lw $ra, 0x2c($sp)
  /* 00BBC4 8000AFC4 8FB00014 */        lw $s0, 0x14($sp)
  /* 00BBC8 8000AFC8 8FB10018 */        lw $s1, 0x18($sp)
  /* 00BBCC 8000AFCC 8FB2001C */        lw $s2, 0x1c($sp)
  /* 00BBD0 8000AFD0 8FB30020 */        lw $s3, 0x20($sp)
  /* 00BBD4 8000AFD4 8FB40024 */        lw $s4, 0x24($sp)
  /* 00BBD8 8000AFD8 8FB50028 */        lw $s5, 0x28($sp)
  /* 00BBDC 8000AFDC 03E00008 */        jr $ra
  /* 00BBE0 8000AFE0 27BD0030 */     addiu $sp, $sp, 0x30

glabel func_8000AFE4
  /* 00BBE4 8000AFE4 27BDFFC8 */     addiu $sp, $sp, -0x38
  /* 00BBE8 8000AFE8 AFB00018 */        sw $s0, 0x18($sp)
  /* 00BBEC 8000AFEC 3C108004 */       lui $s0, %hi(gOMObjCommonLinks)
  /* 00BBF0 8000AFF0 00047080 */       sll $t6, $a0, 2
  /* 00BBF4 8000AFF4 020E8021 */      addu $s0, $s0, $t6
  /* 00BBF8 8000AFF8 8E1066F0 */        lw $s0, %lo(gOMObjCommonLinks)($s0)
  /* 00BBFC 8000AFFC AFB60030 */        sw $s6, 0x30($sp)
  /* 00BC00 8000B000 AFB5002C */        sw $s5, 0x2c($sp)
  /* 00BC04 8000B004 AFB40028 */        sw $s4, 0x28($sp)
  /* 00BC08 8000B008 AFB30024 */        sw $s3, 0x24($sp)
  /* 00BC0C 8000B00C 00C0A025 */        or $s4, $a2, $zero
  /* 00BC10 8000B010 00A0A825 */        or $s5, $a1, $zero
  /* 00BC14 8000B014 00E0B025 */        or $s6, $a3, $zero
  /* 00BC18 8000B018 AFBF0034 */        sw $ra, 0x34($sp)
  /* 00BC1C 8000B01C AFB20020 */        sw $s2, 0x20($sp)
  /* 00BC20 8000B020 AFB1001C */        sw $s1, 0x1c($sp)
  /* 00BC24 8000B024 1200000E */      beqz $s0, .L8000B060
  /* 00BC28 8000B028 00009825 */        or $s3, $zero, $zero
  /* 00BC2C 8000B02C 24120001 */     addiu $s2, $zero, 1
  .L8000B030:
  /* 00BC30 8000B030 8E110004 */        lw $s1, 4($s0)
  /* 00BC34 8000B034 02002025 */        or $a0, $s0, $zero
  /* 00BC38 8000B038 02A0F809 */      jalr $s5
  /* 00BC3C 8000B03C 02802825 */        or $a1, $s4, $zero
  /* 00BC40 8000B040 10400005 */      beqz $v0, .L8000B058
  /* 00BC44 8000B044 00000000 */       nop 
  /* 00BC48 8000B048 16D20003 */       bne $s6, $s2, .L8000B058
  /* 00BC4C 8000B04C 00409825 */        or $s3, $v0, $zero
  /* 00BC50 8000B050 10000005 */         b .L8000B068
  /* 00BC54 8000B054 8FBF0034 */        lw $ra, 0x34($sp)
  .L8000B058:
  /* 00BC58 8000B058 1620FFF5 */      bnez $s1, .L8000B030
  /* 00BC5C 8000B05C 02208025 */        or $s0, $s1, $zero
  .L8000B060:
  /* 00BC60 8000B060 02601025 */        or $v0, $s3, $zero
  /* 00BC64 8000B064 8FBF0034 */        lw $ra, 0x34($sp)
  .L8000B068:
  /* 00BC68 8000B068 8FB00018 */        lw $s0, 0x18($sp)
  /* 00BC6C 8000B06C 8FB1001C */        lw $s1, 0x1c($sp)
  /* 00BC70 8000B070 8FB20020 */        lw $s2, 0x20($sp)
  /* 00BC74 8000B074 8FB30024 */        lw $s3, 0x24($sp)
  /* 00BC78 8000B078 8FB40028 */        lw $s4, 0x28($sp)
  /* 00BC7C 8000B07C 8FB5002C */        lw $s5, 0x2c($sp)
  /* 00BC80 8000B080 8FB60030 */        lw $s6, 0x30($sp)
  /* 00BC84 8000B084 03E00008 */        jr $ra
  /* 00BC88 8000B088 27BD0038 */     addiu $sp, $sp, 0x38

# ?? func_8000B08C(struct GObjCommon *(*arg0)(struct GObjCommon *, s32), s32 id, s32 unk)
glabel func_8000B08C
  /* 00BC8C 8000B08C 27BDFFC8 */     addiu $sp, $sp, -0x38
  /* 00BC90 8000B090 AFB70030 */        sw $s7, 0x30($sp)
  /* 00BC94 8000B094 AFB6002C */        sw $s6, 0x2c($sp)
  /* 00BC98 8000B098 AFB50028 */        sw $s5, 0x28($sp)
  /* 00BC9C 8000B09C AFB40024 */        sw $s4, 0x24($sp)
  /* 00BCA0 8000B0A0 AFB30020 */        sw $s3, 0x20($sp)
  /* 00BCA4 8000B0A4 AFB2001C */        sw $s2, 0x1c($sp)
  /* 00BCA8 8000B0A8 AFB10018 */        sw $s1, 0x18($sp)
  /* 00BCAC 8000B0AC 3C168004 */       lui $s6, %hi(gOMObjCommonLinks)
  /* 00BCB0 8000B0B0 3C178004 */       lui $s7, %hi(gOMObjCommonLinks + (0x21 * 4))
  /* 00BCB4 8000B0B4 00A08825 */        or $s1, $a1, $zero
  /* 00BCB8 8000B0B8 00809025 */        or $s2, $a0, $zero
  /* 00BCBC 8000B0BC 00C09825 */        or $s3, $a2, $zero
  /* 00BCC0 8000B0C0 AFBF0034 */        sw $ra, 0x34($sp)
  /* 00BCC4 8000B0C4 AFB00014 */        sw $s0, 0x14($sp)
  /* 00BCC8 8000B0C8 0000A825 */        or $s5, $zero, $zero
  /* 00BCCC 8000B0CC 26F76774 */     addiu $s7, $s7, %lo(gOMObjCommonLinks + (0x21 * 4))
  /* 00BCD0 8000B0D0 26D666F0 */     addiu $s6, $s6, %lo(gOMObjCommonLinks)
  /* 00BCD4 8000B0D4 24140001 */     addiu $s4, $zero, 1
  /* 00BCD8 8000B0D8 8EC40000 */        lw $a0, ($s6) # gOMObjCommonLinks + 0
  .L8000B0DC:
  /* 00BCDC 8000B0DC 5080000D */      beql $a0, $zero, .L8000B114
  /* 00BCE0 8000B0E0 26D60004 */     addiu $s6, $s6, 4
  .L8000B0E4:
  /* 00BCE4 8000B0E4 8C900004 */        lw $s0, 4($a0)
  /* 00BCE8 8000B0E8 0240F809 */      jalr $s2
  /* 00BCEC 8000B0EC 02202825 */        or $a1, $s1, $zero
  /* 00BCF0 8000B0F0 10400005 */      beqz $v0, .L8000B108
  /* 00BCF4 8000B0F4 00000000 */       nop 
  /* 00BCF8 8000B0F8 16740003 */       bne $s3, $s4, .L8000B108
  /* 00BCFC 8000B0FC 0040A825 */        or $s5, $v0, $zero
  /* 00BD00 8000B100 10000008 */         b .L8000B124
  /* 00BD04 8000B104 8FBF0034 */        lw $ra, 0x34($sp)
  .L8000B108:
  /* 00BD08 8000B108 1600FFF6 */      bnez $s0, .L8000B0E4
  /* 00BD0C 8000B10C 02002025 */        or $a0, $s0, $zero
  /* 00BD10 8000B110 26D60004 */     addiu $s6, $s6, 4
  .L8000B114:
  /* 00BD14 8000B114 56D7FFF1 */      bnel $s6, $s7, .L8000B0DC
  /* 00BD18 8000B118 8EC40000 */        lw $a0, ($s6) # gOMObjCommonLinks + 0
  /* 00BD1C 8000B11C 02A01025 */        or $v0, $s5, $zero
  /* 00BD20 8000B120 8FBF0034 */        lw $ra, 0x34($sp)
  .L8000B124:
  /* 00BD24 8000B124 8FB00014 */        lw $s0, 0x14($sp)
  /* 00BD28 8000B128 8FB10018 */        lw $s1, 0x18($sp)
  /* 00BD2C 8000B12C 8FB2001C */        lw $s2, 0x1c($sp)
  /* 00BD30 8000B130 8FB30020 */        lw $s3, 0x20($sp)
  /* 00BD34 8000B134 8FB40024 */        lw $s4, 0x24($sp)
  /* 00BD38 8000B138 8FB50028 */        lw $s5, 0x28($sp)
  /* 00BD3C 8000B13C 8FB6002C */        lw $s6, 0x2c($sp)
  /* 00BD40 8000B140 8FB70030 */        lw $s7, 0x30($sp)
  /* 00BD44 8000B144 03E00008 */        jr $ra
  /* 00BD48 8000B148 27BD0038 */     addiu $sp, $sp, 0x38

# struct GObjCommon *func_8000B14C(struct GObjCommon *, s32 id)
glabel func_8000B14C
  /* 00BD4C 8000B14C 8C8E0000 */        lw $t6, ($a0)
  /* 00BD50 8000B150 00001825 */        or $v1, $zero, $zero
  /* 00BD54 8000B154 14AE0003 */       bne $a1, $t6, .L8000B164
  /* 00BD58 8000B158 00000000 */       nop 
  /* 00BD5C 8000B15C 03E00008 */        jr $ra
  /* 00BD60 8000B160 00801025 */        or $v0, $a0, $zero

  .L8000B164:
  /* 00BD64 8000B164 03E00008 */        jr $ra
  /* 00BD68 8000B168 00601025 */        or $v0, $v1, $zero

glabel func_8000B16C
  /* 00BD6C 8000B16C 27BDFFE8 */     addiu $sp, $sp, -0x18
  /* 00BD70 8000B170 00A03025 */        or $a2, $a1, $zero
  /* 00BD74 8000B174 AFBF0014 */        sw $ra, 0x14($sp)
  /* 00BD78 8000B178 3C058001 */       lui $a1, %hi(func_8000B14C)
  /* 00BD7C 8000B17C 24A5B14C */     addiu $a1, $a1, %lo(func_8000B14C)
  /* 00BD80 8000B180 0C002BF9 */       jal func_8000AFE4
  /* 00BD84 8000B184 24070001 */     addiu $a3, $zero, 1
  /* 00BD88 8000B188 8FBF0014 */        lw $ra, 0x14($sp)
  /* 00BD8C 8000B18C 27BD0018 */     addiu $sp, $sp, 0x18
  /* 00BD90 8000B190 03E00008 */        jr $ra
  /* 00BD94 8000B194 00000000 */       nop 

# struct GObjCommon *func_8000B198(s32 id)
glabel func_8000B198
  /* 00BD98 8000B198 27BDFFE8 */     addiu $sp, $sp, -0x18
  /* 00BD9C 8000B19C 00802825 */        or $a1, $a0, $zero
  /* 00BDA0 8000B1A0 AFBF0014 */        sw $ra, 0x14($sp)
  /* 00BDA4 8000B1A4 3C048001 */       lui $a0, %hi(func_8000B14C)
  /* 00BDA8 8000B1A8 2484B14C */     addiu $a0, $a0, %lo(func_8000B14C)
  /* 00BDAC 8000B1AC 0C002C23 */       jal func_8000B08C
  /* 00BDB0 8000B1B0 24060001 */     addiu $a2, $zero, 1
  /* 00BDB4 8000B1B4 8FBF0014 */        lw $ra, 0x14($sp)
  /* 00BDB8 8000B1B8 27BD0018 */     addiu $sp, $sp, 0x18
  /* 00BDBC 8000B1BC 03E00008 */        jr $ra
  /* 00BDC0 8000B1C0 00000000 */       nop 

glabel func_8000B1C4
  /* 00BDC4 8000B1C4 27BDFFE8 */     addiu $sp, $sp, -0x18
  /* 00BDC8 8000B1C8 AFBF0014 */        sw $ra, 0x14($sp)
  /* 00BDCC 8000B1CC AFA40018 */        sw $a0, 0x18($sp)
  /* 00BDD0 8000B1D0 0C002B6C */       jal func_8000ADB0
  /* 00BDD4 8000B1D4 00002025 */        or $a0, $zero, $zero
  /* 00BDD8 8000B1D8 8FBF0014 */        lw $ra, 0x14($sp)
  /* 00BDDC 8000B1DC 27BD0018 */     addiu $sp, $sp, 0x18
  /* 00BDE0 8000B1E0 03E00008 */        jr $ra
  /* 00BDE4 8000B1E4 00000000 */       nop 

glabel func_8000B1E8
  /* 00BDE8 8000B1E8 27BDFFE0 */     addiu $sp, $sp, -0x20
  /* 00BDEC 8000B1EC 3C028004 */       lui $v0, %hi(D_80046A60)
  /* 00BDF0 8000B1F0 8C426A60 */        lw $v0, %lo(D_80046A60)($v0)
  /* 00BDF4 8000B1F4 AFBF001C */        sw $ra, 0x1c($sp)
  /* 00BDF8 8000B1F8 AFB10018 */        sw $s1, 0x18($sp)
  /* 00BDFC 8000B1FC AFB00014 */        sw $s0, 0x14($sp)
  /* 00BE00 8000B200 8C4E001C */        lw $t6, 0x1c($v0)
  /* 00BE04 8000B204 00808025 */        or $s0, $a0, $zero
  /* 00BE08 8000B208 3C01FEDC */       lui $at, (0xFEDCBA98 >> 16) # 4275878552
  /* 00BE0C 8000B20C 8DCF01B8 */        lw $t7, 0x1b8($t6)
  /* 00BE10 8000B210 3421BA98 */       ori $at, $at, (0xFEDCBA98 & 0xFFFF) # 4275878552
  /* 00BE14 8000B214 3C048004 */       lui $a0, %hi(D_8003DDA0)
  /* 00BE18 8000B218 8DF80038 */        lw $t8, 0x38($t7)
  /* 00BE1C 8000B21C 8DF9003C */        lw $t9, 0x3c($t7)
  /* 00BE20 8000B220 57000004 */      bnel $t8, $zero, .L8000B234
  /* 00BE24 8000B224 8C480018 */        lw $t0, 0x18($v0)
  /* 00BE28 8000B228 13210005 */       beq $t9, $at, .L8000B240
  /* 00BE2C 8000B22C 00000000 */       nop 
  /* 00BE30 8000B230 8C480018 */        lw $t0, 0x18($v0)
  .L8000B234:
  /* 00BE34 8000B234 2484DDA0 */     addiu $a0, $a0, %lo(D_8003DDA0)
  /* 00BE38 8000B238 0C008D89 */       jal fatal_printf
  /* 00BE3C 8000B23C 8D050000 */        lw $a1, ($t0)
  .L8000B240:
  /* 00BE40 8000B240 1200000B */      beqz $s0, .L8000B270
  /* 00BE44 8000B244 3C118004 */       lui $s1, %hi(gOMMq)
  /* 00BE48 8000B248 26316A70 */     addiu $s1, $s1, %lo(gOMMq)
  /* 00BE4C 8000B24C 02202025 */        or $a0, $s1, $zero
  .L8000B250:
  /* 00BE50 8000B250 24050001 */     addiu $a1, $zero, 1
  /* 00BE54 8000B254 0C00C000 */       jal osSendMesg
  /* 00BE58 8000B258 00003025 */        or $a2, $zero, $zero
  /* 00BE5C 8000B25C 0C00C054 */       jal osStopThread
  /* 00BE60 8000B260 00002025 */        or $a0, $zero, $zero
  /* 00BE64 8000B264 2610FFFF */     addiu $s0, $s0, -1
  /* 00BE68 8000B268 5600FFF9 */      bnel $s0, $zero, .L8000B250
  /* 00BE6C 8000B26C 02202025 */        or $a0, $s1, $zero
  .L8000B270:
  /* 00BE70 8000B270 8FBF001C */        lw $ra, 0x1c($sp)
  /* 00BE74 8000B274 8FB00014 */        lw $s0, 0x14($sp)
  /* 00BE78 8000B278 8FB10018 */        lw $s1, 0x18($sp)
  /* 00BE7C 8000B27C 03E00008 */        jr $ra
  /* 00BE80 8000B280 27BD0020 */     addiu $sp, $sp, 0x20

glabel func_8000B284
  /* 00BE84 8000B284 14800003 */      bnez $a0, .L8000B294
  /* 00BE88 8000B288 24030001 */     addiu $v1, $zero, 1
  /* 00BE8C 8000B28C 3C048004 */       lui $a0, %hi(D_80046A54)
  /* 00BE90 8000B290 8C846A54 */        lw $a0, %lo(D_80046A54)($a0)
  .L8000B294:
  /* 00BE94 8000B294 8C820018 */        lw $v0, 0x18($a0)
  /* 00BE98 8000B298 10400005 */      beqz $v0, .L8000B2B0
  /* 00BE9C 8000B29C 00000000 */       nop 
  /* 00BEA0 8000B2A0 A0430015 */        sb $v1, 0x15($v0)
  .L8000B2A4:
  /* 00BEA4 8000B2A4 8C420000 */        lw $v0, ($v0)
  /* 00BEA8 8000B2A8 5440FFFE */      bnel $v0, $zero, .L8000B2A4
  /* 00BEAC 8000B2AC A0430015 */        sb $v1, 0x15($v0)
  .L8000B2B0:
  /* 00BEB0 8000B2B0 03E00008 */        jr $ra
  /* 00BEB4 8000B2B4 00000000 */       nop 

glabel func_8000B2B8
  /* 00BEB8 8000B2B8 54800004 */      bnel $a0, $zero, .L8000B2CC
  /* 00BEBC 8000B2BC 8C820018 */        lw $v0, 0x18($a0)
  /* 00BEC0 8000B2C0 3C048004 */       lui $a0, %hi(D_80046A54)
  /* 00BEC4 8000B2C4 8C846A54 */        lw $a0, %lo(D_80046A54)($a0)
  /* 00BEC8 8000B2C8 8C820018 */        lw $v0, 0x18($a0)
  .L8000B2CC:
  /* 00BECC 8000B2CC 10400005 */      beqz $v0, .L8000B2E4
  /* 00BED0 8000B2D0 00000000 */       nop 
  /* 00BED4 8000B2D4 A0400015 */        sb $zero, 0x15($v0)
  .L8000B2D8:
  /* 00BED8 8000B2D8 8C420000 */        lw $v0, ($v0)
  /* 00BEDC 8000B2DC 5440FFFE */      bnel $v0, $zero, .L8000B2D8
  /* 00BEE0 8000B2E0 A0400015 */        sb $zero, 0x15($v0)
  .L8000B2E4:
  /* 00BEE4 8000B2E4 03E00008 */        jr $ra
  /* 00BEE8 8000B2E8 00000000 */       nop 

glabel func_8000B2EC
  /* 00BEEC 8000B2EC 14800003 */      bnez $a0, .L8000B2FC
  /* 00BEF0 8000B2F0 240E0001 */     addiu $t6, $zero, 1
  /* 00BEF4 8000B2F4 3C048004 */       lui $a0, %hi(D_80046A60)
  /* 00BEF8 8000B2F8 8C846A60 */        lw $a0, %lo(D_80046A60)($a0)
  .L8000B2FC:
  /* 00BEFC 8000B2FC 03E00008 */        jr $ra
  /* 00BF00 8000B300 A08E0015 */        sb $t6, 0x15($a0)

  /* 00BF04 8000B304 14800003 */      bnez $a0, .L8000B314
  /* 00BF08 8000B308 00000000 */       nop 
  /* 00BF0C 8000B30C 3C048004 */       lui $a0, %hi(D_80046A60)
  /* 00BF10 8000B310 8C846A60 */        lw $a0, %lo(D_80046A60)($a0)
  .L8000B314:
  /* 00BF14 8000B314 03E00008 */        jr $ra
  /* 00BF18 8000B318 A0800015 */        sb $zero, 0x15($a0)

  /* 00BF1C 8000B31C 14800003 */      bnez $a0, .L8000B32C
  /* 00BF20 8000B320 24030001 */     addiu $v1, $zero, 1
  /* 00BF24 8000B324 3C048004 */       lui $a0, %hi(D_80046A54)
  /* 00BF28 8000B328 8C846A54 */        lw $a0, %lo(D_80046A54)($a0)
  .L8000B32C:
  /* 00BF2C 8000B32C 8C820018 */        lw $v0, 0x18($a0)
  /* 00BF30 8000B330 10400008 */      beqz $v0, .L8000B354
  /* 00BF34 8000B334 00000000 */       nop 
  /* 00BF38 8000B338 8C4E0020 */        lw $t6, 0x20($v0)
  .L8000B33C:
  /* 00BF3C 8000B33C 54AE0003 */      bnel $a1, $t6, .L8000B34C
  /* 00BF40 8000B340 8C420000 */        lw $v0, ($v0)
  /* 00BF44 8000B344 A0430015 */        sb $v1, 0x15($v0)
  /* 00BF48 8000B348 8C420000 */        lw $v0, ($v0)
  .L8000B34C:
  /* 00BF4C 8000B34C 5440FFFB */      bnel $v0, $zero, .L8000B33C
  /* 00BF50 8000B350 8C4E0020 */        lw $t6, 0x20($v0)
  .L8000B354:
  /* 00BF54 8000B354 03E00008 */        jr $ra
  /* 00BF58 8000B358 00000000 */       nop 

  /* 00BF5C 8000B35C 54800004 */      bnel $a0, $zero, .L8000B370
  /* 00BF60 8000B360 8C820018 */        lw $v0, 0x18($a0)
  /* 00BF64 8000B364 3C048004 */       lui $a0, %hi(D_80046A54)
  /* 00BF68 8000B368 8C846A54 */        lw $a0, %lo(D_80046A54)($a0)
  /* 00BF6C 8000B36C 8C820018 */        lw $v0, 0x18($a0)
  .L8000B370:
  /* 00BF70 8000B370 10400008 */      beqz $v0, .L8000B394
  /* 00BF74 8000B374 00000000 */       nop 
  /* 00BF78 8000B378 8C4E0020 */        lw $t6, 0x20($v0)
  .L8000B37C:
  /* 00BF7C 8000B37C 54AE0003 */      bnel $a1, $t6, .L8000B38C
  /* 00BF80 8000B380 8C420000 */        lw $v0, ($v0)
  /* 00BF84 8000B384 A0400015 */        sb $zero, 0x15($v0)
  /* 00BF88 8000B388 8C420000 */        lw $v0, ($v0)
  .L8000B38C:
  /* 00BF8C 8000B38C 5440FFFB */      bnel $v0, $zero, .L8000B37C
  /* 00BF90 8000B390 8C4E0020 */        lw $t6, 0x20($v0)
  .L8000B394:
  /* 00BF94 8000B394 03E00008 */        jr $ra
  /* 00BF98 8000B398 00000000 */       nop 

glabel func_8000B39C
  /* 00BF9C 8000B39C 27BDFFE0 */     addiu $sp, $sp, -0x20
  /* 00BFA0 8000B3A0 AFBF001C */        sw $ra, 0x1c($sp)
  /* 00BFA4 8000B3A4 AFB10018 */        sw $s1, 0x18($sp)
  /* 00BFA8 8000B3A8 14800003 */      bnez $a0, .L8000B3B8
  /* 00BFAC 8000B3AC AFB00014 */        sw $s0, 0x14($sp)
  /* 00BFB0 8000B3B0 3C048004 */       lui $a0, %hi(D_80046A54)
  /* 00BFB4 8000B3B4 8C846A54 */        lw $a0, %lo(D_80046A54)($a0)
  .L8000B3B8:
  /* 00BFB8 8000B3B8 8C900018 */        lw $s0, 0x18($a0)
  /* 00BFBC 8000B3BC 52000007 */      beql $s0, $zero, .L8000B3DC
  /* 00BFC0 8000B3C0 8FBF001C */        lw $ra, 0x1c($sp)
  .L8000B3C4:
  /* 00BFC4 8000B3C4 8E110000 */        lw $s1, ($s0)
  /* 00BFC8 8000B3C8 0C002123 */       jal func_8000848C
  /* 00BFCC 8000B3CC 02002025 */        or $a0, $s0, $zero
  /* 00BFD0 8000B3D0 1620FFFC */      bnez $s1, .L8000B3C4
  /* 00BFD4 8000B3D4 02208025 */        or $s0, $s1, $zero
  /* 00BFD8 8000B3D8 8FBF001C */        lw $ra, 0x1c($sp)
  .L8000B3DC:
  /* 00BFDC 8000B3DC 8FB00014 */        lw $s0, 0x14($sp)
  /* 00BFE0 8000B3E0 8FB10018 */        lw $s1, 0x18($sp)
  /* 00BFE4 8000B3E4 03E00008 */        jr $ra
  /* 00BFE8 8000B3E8 27BD0020 */     addiu $sp, $sp, 0x20

glabel func_8000B3EC
  /* 00BFEC 8000B3EC 27BDFFE8 */     addiu $sp, $sp, -0x18
  /* 00BFF0 8000B3F0 AFBF0014 */        sw $ra, 0x14($sp)
  /* 00BFF4 8000B3F4 AFA40018 */        sw $a0, 0x18($sp)
  /* 00BFF8 8000B3F8 24050012 */     addiu $a1, $zero, 0x12
  /* 00BFFC 8000B3FC 0C002330 */       jal func_80008CC0
  /* 00C000 8000B400 00003025 */        or $a2, $zero, $zero
  /* 00C004 8000B404 8FA40018 */        lw $a0, 0x18($sp)
  /* 00C008 8000B408 24050015 */     addiu $a1, $zero, 0x15
  /* 00C00C 8000B40C 0C002330 */       jal func_80008CC0
  /* 00C010 8000B410 00003025 */        or $a2, $zero, $zero
  /* 00C014 8000B414 8FA40018 */        lw $a0, 0x18($sp)
  /* 00C018 8000B418 24050020 */     addiu $a1, $zero, 0x20
  /* 00C01C 8000B41C 0C002330 */       jal func_80008CC0
  /* 00C020 8000B420 00003025 */        or $a2, $zero, $zero
  /* 00C024 8000B424 8FBF0014 */        lw $ra, 0x14($sp)
  /* 00C028 8000B428 27BD0018 */     addiu $sp, $sp, 0x18
  /* 00C02C 8000B42C 03E00008 */        jr $ra
  /* 00C030 8000B430 00000000 */       nop 

glabel func_8000B434
  /* 00C034 8000B434 27BDFFE8 */     addiu $sp, $sp, -0x18
  /* 00C038 8000B438 AFBF0014 */        sw $ra, 0x14($sp)
  /* 00C03C 8000B43C AFA40018 */        sw $a0, 0x18($sp)
  /* 00C040 8000B440 24050012 */     addiu $a1, $zero, 0x12
  /* 00C044 8000B444 0C002330 */       jal func_80008CC0
  /* 00C048 8000B448 00003025 */        or $a2, $zero, $zero
  /* 00C04C 8000B44C 8FA40018 */        lw $a0, 0x18($sp)
  /* 00C050 8000B450 2405001A */     addiu $a1, $zero, 0x1a
  /* 00C054 8000B454 0C002330 */       jal func_80008CC0
  /* 00C058 8000B458 00003025 */        or $a2, $zero, $zero
  /* 00C05C 8000B45C 8FA40018 */        lw $a0, 0x18($sp)
  /* 00C060 8000B460 24050020 */     addiu $a1, $zero, 0x20
  /* 00C064 8000B464 0C002330 */       jal func_80008CC0
  /* 00C068 8000B468 00003025 */        or $a2, $zero, $zero
  /* 00C06C 8000B46C 8FBF0014 */        lw $ra, 0x14($sp)
  /* 00C070 8000B470 27BD0018 */     addiu $sp, $sp, 0x18
  /* 00C074 8000B474 03E00008 */        jr $ra
  /* 00C078 8000B478 00000000 */       nop 

glabel func_8000B47C
  /* 00C07C 8000B47C 27BDFFE8 */     addiu $sp, $sp, -0x18
  /* 00C080 8000B480 AFBF0014 */        sw $ra, 0x14($sp)
  /* 00C084 8000B484 AFA40018 */        sw $a0, 0x18($sp)
  /* 00C088 8000B488 24050003 */     addiu $a1, $zero, 3
  /* 00C08C 8000B48C 0C00233C */       jal func_80008CF0
  /* 00C090 8000B490 00003025 */        or $a2, $zero, $zero
  /* 00C094 8000B494 8FA40018 */        lw $a0, 0x18($sp)
  /* 00C098 8000B498 24050006 */     addiu $a1, $zero, 6
  /* 00C09C 8000B49C 0C00233C */       jal func_80008CF0
  /* 00C0A0 8000B4A0 00003025 */        or $a2, $zero, $zero
  /* 00C0A4 8000B4A4 8FBF0014 */        lw $ra, 0x14($sp)
  /* 00C0A8 8000B4A8 27BD0018 */     addiu $sp, $sp, 0x18
  /* 00C0AC 8000B4AC 03E00008 */        jr $ra
  /* 00C0B0 8000B4B0 00000000 */       nop 

  /* 00C0B4 8000B4B4 27BDFFE0 */     addiu $sp, $sp, -0x20
  /* 00C0B8 8000B4B8 AFBF001C */        sw $ra, 0x1c($sp)
  /* 00C0BC 8000B4BC AFB00018 */        sw $s0, 0x18($sp)
  /* 00C0C0 8000B4C0 8C900074 */        lw $s0, 0x74($a0)
  /* 00C0C4 8000B4C4 52000008 */      beql $s0, $zero, .L8000B4E8
  /* 00C0C8 8000B4C8 8FBF001C */        lw $ra, 0x1c($sp)
  .L8000B4CC:
  /* 00C0CC 8000B4CC 0C00247D */       jal func_800091F4
  /* 00C0D0 8000B4D0 02002025 */        or $a0, $s0, $zero
  /* 00C0D4 8000B4D4 0C002EA8 */       jal func_8000BAA0
  /* 00C0D8 8000B4D8 02002025 */        or $a0, $s0, $zero
  /* 00C0DC 8000B4DC 1440FFFB */      bnez $v0, .L8000B4CC
  /* 00C0E0 8000B4E0 00408025 */        or $s0, $v0, $zero
  /* 00C0E4 8000B4E4 8FBF001C */        lw $ra, 0x1c($sp)
  .L8000B4E8:
  /* 00C0E8 8000B4E8 8FB00018 */        lw $s0, 0x18($sp)
  /* 00C0EC 8000B4EC 27BD0020 */     addiu $sp, $sp, 0x20
  /* 00C0F0 8000B4F0 03E00008 */        jr $ra
  /* 00C0F4 8000B4F4 00000000 */       nop 

glabel func_8000B4F8
  /* 00C0F8 8000B4F8 27BDFFE0 */     addiu $sp, $sp, -0x20
  /* 00C0FC 8000B4FC AFBF0014 */        sw $ra, 0x14($sp)
  /* 00C100 8000B500 0C0024B4 */       jal func_800092D0
  /* 00C104 8000B504 00000000 */       nop 
  /* 00C108 8000B508 AFA2001C */        sw $v0, 0x1c($sp)
  /* 00C10C 8000B50C 0C002CFB */       jal func_8000B3EC
  /* 00C110 8000B510 00402025 */        or $a0, $v0, $zero
  /* 00C114 8000B514 8FBF0014 */        lw $ra, 0x14($sp)
  /* 00C118 8000B518 8FA2001C */        lw $v0, 0x1c($sp)
  /* 00C11C 8000B51C 27BD0020 */     addiu $sp, $sp, 0x20
  /* 00C120 8000B520 03E00008 */        jr $ra
  /* 00C124 8000B524 00000000 */       nop 

  /* 00C128 8000B528 27BDFFE0 */     addiu $sp, $sp, -0x20
  /* 00C12C 8000B52C AFBF0014 */        sw $ra, 0x14($sp)
  /* 00C130 8000B530 0C0024E0 */       jal func_80009380
  /* 00C134 8000B534 00000000 */       nop 
  /* 00C138 8000B538 AFA2001C */        sw $v0, 0x1c($sp)
  /* 00C13C 8000B53C 0C002CFB */       jal func_8000B3EC
  /* 00C140 8000B540 00402025 */        or $a0, $v0, $zero
  /* 00C144 8000B544 8FBF0014 */        lw $ra, 0x14($sp)
  /* 00C148 8000B548 8FA2001C */        lw $v0, 0x1c($sp)
  /* 00C14C 8000B54C 27BD0020 */     addiu $sp, $sp, 0x20
  /* 00C150 8000B550 03E00008 */        jr $ra
  /* 00C154 8000B554 00000000 */       nop 

glabel func_8000B558
  /* 00C158 8000B558 27BDFFE0 */     addiu $sp, $sp, -0x20
  /* 00C15C 8000B55C AFBF0014 */        sw $ra, 0x14($sp)
  /* 00C160 8000B560 0C0024FD */       jal func_800093F4
  /* 00C164 8000B564 00000000 */       nop 
  /* 00C168 8000B568 AFA2001C */        sw $v0, 0x1c($sp)
  /* 00C16C 8000B56C 0C002CFB */       jal func_8000B3EC
  /* 00C170 8000B570 00402025 */        or $a0, $v0, $zero
  /* 00C174 8000B574 8FBF0014 */        lw $ra, 0x14($sp)
  /* 00C178 8000B578 8FA2001C */        lw $v0, 0x1c($sp)
  /* 00C17C 8000B57C 27BD0020 */     addiu $sp, $sp, 0x20
  /* 00C180 8000B580 03E00008 */        jr $ra
  /* 00C184 8000B584 00000000 */       nop 

  /* 00C188 8000B588 27BDFFE0 */     addiu $sp, $sp, -0x20
  /* 00C18C 8000B58C AFBF0014 */        sw $ra, 0x14($sp)
  /* 00C190 8000B590 0C0024B4 */       jal func_800092D0
  /* 00C194 8000B594 00000000 */       nop 
  /* 00C198 8000B598 AFA2001C */        sw $v0, 0x1c($sp)
  /* 00C19C 8000B59C 0C002D0D */       jal func_8000B434
  /* 00C1A0 8000B5A0 00402025 */        or $a0, $v0, $zero
  /* 00C1A4 8000B5A4 8FBF0014 */        lw $ra, 0x14($sp)
  /* 00C1A8 8000B5A8 8FA2001C */        lw $v0, 0x1c($sp)
  /* 00C1AC 8000B5AC 27BD0020 */     addiu $sp, $sp, 0x20
  /* 00C1B0 8000B5B0 03E00008 */        jr $ra
  /* 00C1B4 8000B5B4 00000000 */       nop 

  /* 00C1B8 8000B5B8 27BDFFE0 */     addiu $sp, $sp, -0x20
  /* 00C1BC 8000B5BC AFBF0014 */        sw $ra, 0x14($sp)
  /* 00C1C0 8000B5C0 0C0024E0 */       jal func_80009380
  /* 00C1C4 8000B5C4 00000000 */       nop 
  /* 00C1C8 8000B5C8 AFA2001C */        sw $v0, 0x1c($sp)
  /* 00C1CC 8000B5CC 0C002D0D */       jal func_8000B434
  /* 00C1D0 8000B5D0 00402025 */        or $a0, $v0, $zero
  /* 00C1D4 8000B5D4 8FBF0014 */        lw $ra, 0x14($sp)
  /* 00C1D8 8000B5D8 8FA2001C */        lw $v0, 0x1c($sp)
  /* 00C1DC 8000B5DC 27BD0020 */     addiu $sp, $sp, 0x20
  /* 00C1E0 8000B5E0 03E00008 */        jr $ra
  /* 00C1E4 8000B5E4 00000000 */       nop 

  /* 00C1E8 8000B5E8 27BDFFE0 */     addiu $sp, $sp, -0x20
  /* 00C1EC 8000B5EC AFBF0014 */        sw $ra, 0x14($sp)
  /* 00C1F0 8000B5F0 0C0024FD */       jal func_800093F4
  /* 00C1F4 8000B5F4 00000000 */       nop 
  /* 00C1F8 8000B5F8 AFA2001C */        sw $v0, 0x1c($sp)
  /* 00C1FC 8000B5FC 0C002D0D */       jal func_8000B434
  /* 00C200 8000B600 00402025 */        or $a0, $v0, $zero
  /* 00C204 8000B604 8FBF0014 */        lw $ra, 0x14($sp)
  /* 00C208 8000B608 8FA2001C */        lw $v0, 0x1c($sp)
  /* 00C20C 8000B60C 27BD0020 */     addiu $sp, $sp, 0x20
  /* 00C210 8000B610 03E00008 */        jr $ra
  /* 00C214 8000B614 00000000 */       nop 

  /* 00C218 8000B618 27BDFF78 */     addiu $sp, $sp, -0x88
  /* 00C21C 8000B61C AFB40028 */        sw $s4, 0x28($sp)
  /* 00C220 8000B620 AFB1001C */        sw $s1, 0x1c($sp)
  /* 00C224 8000B624 AFB00018 */        sw $s0, 0x18($sp)
  /* 00C228 8000B628 00A08025 */        or $s0, $a1, $zero
  /* 00C22C 8000B62C 00C08825 */        or $s1, $a2, $zero
  /* 00C230 8000B630 0080A025 */        or $s4, $a0, $zero
  /* 00C234 8000B634 AFBF002C */        sw $ra, 0x2c($sp)
  /* 00C238 8000B638 AFB30024 */        sw $s3, 0x24($sp)
  /* 00C23C 8000B63C AFB20020 */        sw $s2, 0x20($sp)
  /* 00C240 8000B640 AFA00038 */        sw $zero, 0x38($sp)
  /* 00C244 8000B644 AFA0003C */        sw $zero, 0x3c($sp)
  /* 00C248 8000B648 27A20040 */     addiu $v0, $sp, 0x40
  /* 00C24C 8000B64C 27A30080 */     addiu $v1, $sp, 0x80
  .L8000B650:
  /* 00C250 8000B650 24420010 */     addiu $v0, $v0, 0x10
  /* 00C254 8000B654 AC40FFF4 */        sw $zero, -0xc($v0)
  /* 00C258 8000B658 AC40FFF8 */        sw $zero, -8($v0)
  /* 00C25C 8000B65C AC40FFFC */        sw $zero, -4($v0)
  /* 00C260 8000B660 1443FFFB */       bne $v0, $v1, .L8000B650
  /* 00C264 8000B664 AC40FFF0 */        sw $zero, -0x10($v0)
  /* 00C268 8000B668 8E020000 */        lw $v0, ($s0)
  /* 00C26C 8000B66C 24130012 */     addiu $s3, $zero, 0x12
  /* 00C270 8000B670 27B20038 */     addiu $s2, $sp, 0x38
  /* 00C274 8000B674 5262001E */      beql $s3, $v0, .L8000B6F0
  /* 00C278 8000B678 8FBF002C */        lw $ra, 0x2c($sp)
  .L8000B67C:
  /* 00C27C 8000B67C 1040000B */      beqz $v0, .L8000B6AC
  /* 00C280 8000B680 02802025 */        or $a0, $s4, $zero
  /* 00C284 8000B684 00027080 */       sll $t6, $v0, 2
  /* 00C288 8000B688 024E7821 */      addu $t7, $s2, $t6
  /* 00C28C 8000B68C 8DE4FFFC */        lw $a0, -4($t7)
  /* 00C290 8000B690 0C002D56 */       jal func_8000B558
  /* 00C294 8000B694 8E050004 */        lw $a1, 4($s0)
  /* 00C298 8000B698 8E180000 */        lw $t8, ($s0)
  /* 00C29C 8000B69C 0018C880 */       sll $t9, $t8, 2
  /* 00C2A0 8000B6A0 02594021 */      addu $t0, $s2, $t9
  /* 00C2A4 8000B6A4 10000004 */         b .L8000B6B8
  /* 00C2A8 8000B6A8 AD020000 */        sw $v0, ($t0)
  .L8000B6AC:
  /* 00C2AC 8000B6AC 0C002D3E */       jal func_8000B4F8
  /* 00C2B0 8000B6B0 8E050004 */        lw $a1, 4($s0)
  /* 00C2B4 8000B6B4 AFA20038 */        sw $v0, 0x38($sp)
  .L8000B6B8:
  /* 00C2B8 8000B6B8 8E0A0008 */        lw $t2, 8($s0)
  /* 00C2BC 8000B6BC AC4A001C */        sw $t2, 0x1c($v0)
  /* 00C2C0 8000B6C0 8E09000C */        lw $t1, 0xc($s0)
  /* 00C2C4 8000B6C4 AC490020 */        sw $t1, 0x20($v0)
  /* 00C2C8 8000B6C8 8E0A0010 */        lw $t2, 0x10($s0)
  /* 00C2CC 8000B6CC 12200003 */      beqz $s1, .L8000B6DC
  /* 00C2D0 8000B6D0 AC4A0024 */        sw $t2, 0x24($v0)
  /* 00C2D4 8000B6D4 AE220000 */        sw $v0, ($s1)
  /* 00C2D8 8000B6D8 26310004 */     addiu $s1, $s1, 4
  .L8000B6DC:
  /* 00C2DC 8000B6DC 8E020014 */        lw $v0, 0x14($s0)
  /* 00C2E0 8000B6E0 26100014 */     addiu $s0, $s0, 0x14
  /* 00C2E4 8000B6E4 1662FFE5 */       bne $s3, $v0, .L8000B67C
  /* 00C2E8 8000B6E8 00000000 */       nop 
  /* 00C2EC 8000B6EC 8FBF002C */        lw $ra, 0x2c($sp)
  .L8000B6F0:
  /* 00C2F0 8000B6F0 8FB00018 */        lw $s0, 0x18($sp)
  /* 00C2F4 8000B6F4 8FB1001C */        lw $s1, 0x1c($sp)
  /* 00C2F8 8000B6F8 8FB20020 */        lw $s2, 0x20($sp)
  /* 00C2FC 8000B6FC 8FB30024 */        lw $s3, 0x24($sp)
  /* 00C300 8000B700 8FB40028 */        lw $s4, 0x28($sp)
  /* 00C304 8000B704 03E00008 */        jr $ra
  /* 00C308 8000B708 27BD0088 */     addiu $sp, $sp, 0x88

glabel func_8000B70C
  /* 00C30C 8000B70C 27BDFFE0 */     addiu $sp, $sp, -0x20
  /* 00C310 8000B710 AFB10018 */        sw $s1, 0x18($sp)
  /* 00C314 8000B714 00808825 */        or $s1, $a0, $zero
  /* 00C318 8000B718 AFBF001C */        sw $ra, 0x1c($sp)
  /* 00C31C 8000B71C 14800003 */      bnez $a0, .L8000B72C
  /* 00C320 8000B720 AFB00014 */        sw $s0, 0x14($sp)
  /* 00C324 8000B724 3C118004 */       lui $s1, %hi(D_80046A54)
  /* 00C328 8000B728 8E316A54 */        lw $s1, %lo(D_80046A54)($s1)
  .L8000B72C:
  /* 00C32C 8000B72C 8E300074 */        lw $s0, 0x74($s1)
  /* 00C330 8000B730 52000007 */      beql $s0, $zero, .L8000B750
  /* 00C334 8000B734 8FBF001C */        lw $ra, 0x1c($sp)
  .L8000B738:
  /* 00C338 8000B738 0C002523 */       jal func_8000948C
  /* 00C33C 8000B73C 02002025 */        or $a0, $s0, $zero
  /* 00C340 8000B740 8E300074 */        lw $s0, 0x74($s1)
  /* 00C344 8000B744 1600FFFC */      bnez $s0, .L8000B738
  /* 00C348 8000B748 00000000 */       nop 
  /* 00C34C 8000B74C 8FBF001C */        lw $ra, 0x1c($sp)
  .L8000B750:
  /* 00C350 8000B750 8FB00014 */        lw $s0, 0x14($sp)
  /* 00C354 8000B754 8FB10018 */        lw $s1, 0x18($sp)
  /* 00C358 8000B758 03E00008 */        jr $ra
  /* 00C35C 8000B75C 27BD0020 */     addiu $sp, $sp, 0x20

glabel func_8000B760
  /* 00C360 8000B760 27BDFFE0 */     addiu $sp, $sp, -0x20
  /* 00C364 8000B764 AFB10018 */        sw $s1, 0x18($sp)
  /* 00C368 8000B768 00808825 */        or $s1, $a0, $zero
  /* 00C36C 8000B76C AFBF001C */        sw $ra, 0x1c($sp)
  /* 00C370 8000B770 14800003 */      bnez $a0, .L8000B780
  /* 00C374 8000B774 AFB00014 */        sw $s0, 0x14($sp)
  /* 00C378 8000B778 3C118004 */       lui $s1, %hi(D_80046A54)
  /* 00C37C 8000B77C 8E316A54 */        lw $s1, %lo(D_80046A54)($s1)
  .L8000B780:
  /* 00C380 8000B780 8E300074 */        lw $s0, 0x74($s1)
  /* 00C384 8000B784 52000007 */      beql $s0, $zero, .L8000B7A4
  /* 00C388 8000B788 8FBF001C */        lw $ra, 0x1c($sp)
  .L8000B78C:
  /* 00C38C 8000B78C 0C0025BB */       jal func_800096EC
  /* 00C390 8000B790 02002025 */        or $a0, $s0, $zero
  /* 00C394 8000B794 8E300074 */        lw $s0, 0x74($s1)
  /* 00C398 8000B798 1600FFFC */      bnez $s0, .L8000B78C
  /* 00C39C 8000B79C 00000000 */       nop 
  /* 00C3A0 8000B7A0 8FBF001C */        lw $ra, 0x1c($sp)
  .L8000B7A4:
  /* 00C3A4 8000B7A4 8FB00014 */        lw $s0, 0x14($sp)
  /* 00C3A8 8000B7A8 8FB10018 */        lw $s1, 0x18($sp)
  /* 00C3AC 8000B7AC 03E00008 */        jr $ra
  /* 00C3B0 8000B7B0 27BD0020 */     addiu $sp, $sp, 0x20

glabel func_8000B7B4
  /* 00C3B4 8000B7B4 27BDFFD8 */     addiu $sp, $sp, -0x28
  /* 00C3B8 8000B7B8 AFB30020 */        sw $s3, 0x20($sp)
  /* 00C3BC 8000B7BC AFB2001C */        sw $s2, 0x1c($sp)
  /* 00C3C0 8000B7C0 3C128004 */       lui $s2, %hi(gOMObjCommonLinks)
  /* 00C3C4 8000B7C4 3C138004 */       lui $s3, %hi(gOMObjCommonLinks + (0x21 * 4))
  /* 00C3C8 8000B7C8 AFBF0024 */        sw $ra, 0x24($sp)
  /* 00C3CC 8000B7CC AFB10018 */        sw $s1, 0x18($sp)
  /* 00C3D0 8000B7D0 AFB00014 */        sw $s0, 0x14($sp)
  /* 00C3D4 8000B7D4 26736774 */     addiu $s3, $s3, %lo(gOMObjCommonLinks + (0x21 * 4))
  /* 00C3D8 8000B7D8 265266F0 */     addiu $s2, $s2, %lo(gOMObjCommonLinks)
  /* 00C3DC 8000B7DC 8E500000 */        lw $s0, ($s2) # gOMObjCommonLinks + 0
  .L8000B7E0:
  /* 00C3E0 8000B7E0 52000007 */      beql $s0, $zero, .L8000B800
  /* 00C3E4 8000B7E4 26520004 */     addiu $s2, $s2, 4
  .L8000B7E8:
  /* 00C3E8 8000B7E8 8E110004 */        lw $s1, 4($s0)
  /* 00C3EC 8000B7EC 0C0026A1 */       jal func_80009A84
  /* 00C3F0 8000B7F0 02002025 */        or $a0, $s0, $zero
  /* 00C3F4 8000B7F4 1620FFFC */      bnez $s1, .L8000B7E8
  /* 00C3F8 8000B7F8 02208025 */        or $s0, $s1, $zero
  /* 00C3FC 8000B7FC 26520004 */     addiu $s2, $s2, 4
  .L8000B800:
  /* 00C400 8000B800 5653FFF7 */      bnel $s2, $s3, .L8000B7E0
  /* 00C404 8000B804 8E500000 */        lw $s0, ($s2) # gOMObjCommonLinks + 0
  /* 00C408 8000B808 8FBF0024 */        lw $ra, 0x24($sp)
  /* 00C40C 8000B80C 8FB00014 */        lw $s0, 0x14($sp)
  /* 00C410 8000B810 8FB10018 */        lw $s1, 0x18($sp)
  /* 00C414 8000B814 8FB2001C */        lw $s2, 0x1c($sp)
  /* 00C418 8000B818 8FB30020 */        lw $s3, 0x20($sp)
  /* 00C41C 8000B81C 03E00008 */        jr $ra
  /* 00C420 8000B820 27BD0028 */     addiu $sp, $sp, 0x28

glabel func_8000B824
  /* 00C424 8000B824 27BDFFD8 */     addiu $sp, $sp, -0x28
  /* 00C428 8000B828 AFBF0024 */        sw $ra, 0x24($sp)
  /* 00C42C 8000B82C AFB00020 */        sw $s0, 0x20($sp)
  /* 00C430 8000B830 0C00265A */       jal func_80009968
  /* 00C434 8000B834 30C600FF */      andi $a2, $a2, 0xff
  /* 00C438 8000B838 14400003 */      bnez $v0, .L8000B848
  /* 00C43C 8000B83C 00408025 */        or $s0, $v0, $zero
  /* 00C440 8000B840 10000019 */         b .L8000B8A8
  /* 00C444 8000B844 00001025 */        or $v0, $zero, $zero
  .L8000B848:
  /* 00C448 8000B848 8FAE0044 */        lw $t6, 0x44($sp)
  /* 00C44C 8000B84C 02002025 */        or $a0, $s0, $zero
  /* 00C450 8000B850 8FA50038 */        lw $a1, 0x38($sp)
  /* 00C454 8000B854 93A6003F */       lbu $a2, 0x3f($sp)
  /* 00C458 8000B858 8FA70040 */        lw $a3, 0x40($sp)
  /* 00C45C 8000B85C 0C00277D */       jal func_80009DF4
  /* 00C460 8000B860 AFAE0010 */        sw $t6, 0x10($sp)
  /* 00C464 8000B864 02002025 */        or $a0, $s0, $zero
  /* 00C468 8000B868 0C0024B4 */       jal func_800092D0
  /* 00C46C 8000B86C 8FA50048 */        lw $a1, 0x48($sp)
  /* 00C470 8000B870 8FAF004C */        lw $t7, 0x4c($sp)
  /* 00C474 8000B874 00402025 */        or $a0, $v0, $zero
  /* 00C478 8000B878 51E00004 */      beql $t7, $zero, .L8000B88C
  /* 00C47C 8000B87C 8FA50054 */        lw $a1, 0x54($sp)
  /* 00C480 8000B880 0C002CFB */       jal func_8000B3EC
  /* 00C484 8000B884 00000000 */       nop 
  /* 00C488 8000B888 8FA50054 */        lw $a1, 0x54($sp)
  .L8000B88C:
  /* 00C48C 8000B88C 02002025 */        or $a0, $s0, $zero
  /* 00C490 8000B890 93A60053 */       lbu $a2, 0x53($sp)
  /* 00C494 8000B894 50A00004 */      beql $a1, $zero, .L8000B8A8
  /* 00C498 8000B898 02001025 */        or $v0, $s0, $zero
  /* 00C49C 8000B89C 0C002062 */       jal func_80008188
  /* 00C4A0 8000B8A0 8FA70058 */        lw $a3, 0x58($sp)
  /* 00C4A4 8000B8A4 02001025 */        or $v0, $s0, $zero
  .L8000B8A8:
  /* 00C4A8 8000B8A8 8FBF0024 */        lw $ra, 0x24($sp)
  /* 00C4AC 8000B8AC 8FB00020 */        lw $s0, 0x20($sp)
  /* 00C4B0 8000B8B0 27BD0028 */     addiu $sp, $sp, 0x28
  /* 00C4B4 8000B8B4 03E00008 */        jr $ra
  /* 00C4B8 8000B8B8 00000000 */       nop 

glabel func_8000B8BC
  /* 00C4BC 8000B8BC 27BDFFD8 */     addiu $sp, $sp, -0x28
  /* 00C4C0 8000B8C0 AFBF0024 */        sw $ra, 0x24($sp)
  /* 00C4C4 8000B8C4 AFB00020 */        sw $s0, 0x20($sp)
  /* 00C4C8 8000B8C8 0C00265A */       jal func_80009968
  /* 00C4CC 8000B8CC 30C600FF */      andi $a2, $a2, 0xff
  /* 00C4D0 8000B8D0 14400003 */      bnez $v0, .L8000B8E0
  /* 00C4D4 8000B8D4 00408025 */        or $s0, $v0, $zero
  /* 00C4D8 8000B8D8 10000013 */         b .L8000B928
  /* 00C4DC 8000B8DC 00001025 */        or $v0, $zero, $zero
  .L8000B8E0:
  /* 00C4E0 8000B8E0 8FAE0044 */        lw $t6, 0x44($sp)
  /* 00C4E4 8000B8E4 02002025 */        or $a0, $s0, $zero
  /* 00C4E8 8000B8E8 8FA50038 */        lw $a1, 0x38($sp)
  /* 00C4EC 8000B8EC 93A6003F */       lbu $a2, 0x3f($sp)
  /* 00C4F0 8000B8F0 8FA70040 */        lw $a3, 0x40($sp)
  /* 00C4F4 8000B8F4 0C00277D */       jal func_80009DF4
  /* 00C4F8 8000B8F8 AFAE0010 */        sw $t6, 0x10($sp)
  /* 00C4FC 8000B8FC 02002025 */        or $a0, $s0, $zero
  /* 00C500 8000B900 0C002585 */       jal func_80009614
  /* 00C504 8000B904 8FA50048 */        lw $a1, 0x48($sp)
  /* 00C508 8000B908 8FA50050 */        lw $a1, 0x50($sp)
  /* 00C50C 8000B90C 02002025 */        or $a0, $s0, $zero
  /* 00C510 8000B910 93A6004F */       lbu $a2, 0x4f($sp)
  /* 00C514 8000B914 50A00004 */      beql $a1, $zero, .L8000B928
  /* 00C518 8000B918 02001025 */        or $v0, $s0, $zero
  /* 00C51C 8000B91C 0C002062 */       jal func_80008188
  /* 00C520 8000B920 8FA70054 */        lw $a3, 0x54($sp)
  /* 00C524 8000B924 02001025 */        or $v0, $s0, $zero
  .L8000B928:
  /* 00C528 8000B928 8FBF0024 */        lw $ra, 0x24($sp)
  /* 00C52C 8000B92C 8FB00020 */        lw $s0, 0x20($sp)
  /* 00C530 8000B930 27BD0028 */     addiu $sp, $sp, 0x28
  /* 00C534 8000B934 03E00008 */        jr $ra
  /* 00C538 8000B938 00000000 */       nop 

# struct GObjCommon *func_8000B93C(s32 id, void (*arg1)(void), s32 link, u32 arg3, void (*arg4)(struct UnkA26D8 *), s32 arg5, s64 arg7, s32 arg8, s32 arg9, s32 arg10, s32 arg11, s32 arg12, s32 arg13)
glabel func_8000B93C
  /* 00C53C 8000B93C 27BDFFC8 */     addiu $sp, $sp, -0x38
  /* 00C540 8000B940 AFBF002C */        sw $ra, 0x2c($sp)
  /* 00C544 8000B944 AFB00028 */        sw $s0, 0x28($sp)
  /* 00C548 8000B948 0C00265A */       jal func_80009968
  /* 00C54C 8000B94C 30C600FF */      andi $a2, $a2, 0xff
  /* 00C550 8000B950 14400003 */      bnez $v0, .L8000B960
  /* 00C554 8000B954 00408025 */        or $s0, $v0, $zero
  /* 00C558 8000B958 10000023 */         b .L8000B9E8
  /* 00C55C 8000B95C 00001025 */        or $v0, $zero, $zero
  .L8000B960:
  /* 00C560 8000B960 8FAE0050 */        lw $t6, 0x50($sp)
  /* 00C564 8000B964 8FAF0054 */        lw $t7, 0x54($sp)
  /* 00C568 8000B968 8FB80058 */        lw $t8, 0x58($sp)
  /* 00C56C 8000B96C 02002025 */        or $a0, $s0, $zero
  /* 00C570 8000B970 8FA50048 */        lw $a1, 0x48($sp)
  /* 00C574 8000B974 8FA6004C */        lw $a2, 0x4c($sp)
  /* 00C578 8000B978 AFAE0010 */        sw $t6, 0x10($sp)
  /* 00C57C 8000B97C AFAF0014 */        sw $t7, 0x14($sp)
  /* 00C580 8000B980 0C0027DD */       jal func_80009F74
  /* 00C584 8000B984 AFB80018 */        sw $t8, 0x18($sp)
  /* 00C588 8000B988 0C0025D8 */       jal func_80009760
  /* 00C58C 8000B98C 02002025 */        or $a0, $s0, $zero
  /* 00C590 8000B990 8FB9005C */        lw $t9, 0x5c($sp)
  /* 00C594 8000B994 AFA20030 */        sw $v0, 0x30($sp)
  /* 00C598 8000B998 53200004 */      beql $t9, $zero, .L8000B9AC
  /* 00C59C 8000B99C 8FA50064 */        lw $a1, 0x64($sp)
  /* 00C5A0 8000B9A0 0C002D1F */       jal func_8000B47C
  /* 00C5A4 8000B9A4 00402025 */        or $a0, $v0, $zero
  /* 00C5A8 8000B9A8 8FA50064 */        lw $a1, 0x64($sp)
  .L8000B9AC:
  /* 00C5AC 8000B9AC 02002025 */        or $a0, $s0, $zero
  /* 00C5B0 8000B9B0 93A60063 */       lbu $a2, 0x63($sp)
  /* 00C5B4 8000B9B4 50A00004 */      beql $a1, $zero, .L8000B9C8
  /* 00C5B8 8000B9B8 8FA8006C */        lw $t0, 0x6c($sp)
  /* 00C5BC 8000B9BC 0C002062 */       jal func_80008188
  /* 00C5C0 8000B9C0 8FA70068 */        lw $a3, 0x68($sp)
  /* 00C5C4 8000B9C4 8FA8006C */        lw $t0, 0x6c($sp)
  .L8000B9C8:
  /* 00C5C8 8000B9C8 8FAA0030 */        lw $t2, 0x30($sp)
  /* 00C5CC 8000B9CC 02001025 */        or $v0, $s0, $zero
  /* 00C5D0 8000B9D0 11000005 */      beqz $t0, .L8000B9E8
  /* 00C5D4 8000B9D4 24090007 */     addiu $t1, $zero, 7
  /* 00C5D8 8000B9D8 AD490080 */        sw $t1, 0x80($t2)
  /* 00C5DC 8000B9DC 8FAC0030 */        lw $t4, 0x30($sp)
  /* 00C5E0 8000B9E0 240B00FF */     addiu $t3, $zero, 0xff
  /* 00C5E4 8000B9E4 AD8B0084 */        sw $t3, 0x84($t4)
  .L8000B9E8:
  /* 00C5E8 8000B9E8 8FBF002C */        lw $ra, 0x2c($sp)
  /* 00C5EC 8000B9EC 8FB00028 */        lw $s0, 0x28($sp)
  /* 00C5F0 8000B9F0 27BD0038 */     addiu $sp, $sp, 0x38
  /* 00C5F4 8000B9F4 03E00008 */        jr $ra
  /* 00C5F8 8000B9F8 00000000 */       nop 

glabel func_8000B9FC
  /* 00C5FC 8000B9FC 27BDFFC0 */     addiu $sp, $sp, -0x40
  /* 00C600 8000BA00 AFA60048 */        sw $a2, 0x48($sp)
  /* 00C604 8000BA04 AFA7004C */        sw $a3, 0x4c($sp)
  /* 00C608 8000BA08 8FAF0048 */        lw $t7, 0x48($sp)
  /* 00C60C 8000BA0C 00A03825 */        or $a3, $a1, $zero
  /* 00C610 8000BA10 AFA50044 */        sw $a1, 0x44($sp)
  /* 00C614 8000BA14 3C0E8001 */       lui $t6, %hi(func_80017DBC)
  /* 00C618 8000BA18 00803025 */        or $a2, $a0, $zero
  /* 00C61C 8000BA1C AFBF003C */        sw $ra, 0x3c($sp)
  /* 00C620 8000BA20 AFA40040 */        sw $a0, 0x40($sp)
  /* 00C624 8000BA24 25CE7DBC */     addiu $t6, $t6, %lo(func_80017DBC)
  /* 00C628 8000BA28 3C058001 */       lui $a1, %hi(func_8000B1C4)
  /* 00C62C 8000BA2C 24180000 */     addiu $t8, $zero, 0
  /* 00C630 8000BA30 24190000 */     addiu $t9, $zero, 0
  /* 00C634 8000BA34 AFB9001C */        sw $t9, 0x1c($sp)
  /* 00C638 8000BA38 AFB80018 */        sw $t8, 0x18($sp)
  /* 00C63C 8000BA3C 24A5B1C4 */     addiu $a1, $a1, %lo(func_8000B1C4)
  /* 00C640 8000BA40 AFAE0010 */        sw $t6, 0x10($sp)
  /* 00C644 8000BA44 2404FFFF */     addiu $a0, $zero, -1
  /* 00C648 8000BA48 AFA00020 */        sw $zero, 0x20($sp)
  /* 00C64C 8000BA4C AFA00024 */        sw $zero, 0x24($sp)
  /* 00C650 8000BA50 AFA00028 */        sw $zero, 0x28($sp)
  /* 00C654 8000BA54 AFA0002C */        sw $zero, 0x2c($sp)
  /* 00C658 8000BA58 AFA00030 */        sw $zero, 0x30($sp)
  /* 00C65C 8000BA5C AFA00034 */        sw $zero, 0x34($sp)
  /* 00C660 8000BA60 0C002E4F */       jal func_8000B93C
  /* 00C664 8000BA64 AFAF0014 */        sw $t7, 0x14($sp)
  /* 00C668 8000BA68 14400003 */      bnez $v0, .L8000BA78
  /* 00C66C 8000BA6C 00402025 */        or $a0, $v0, $zero
  /* 00C670 8000BA70 10000007 */         b .L8000BA90
  /* 00C674 8000BA74 00001025 */        or $v0, $zero, $zero
  .L8000BA78:
  /* 00C678 8000BA78 8C830074 */        lw $v1, 0x74($a0)
  /* 00C67C 8000BA7C 8FA8004C */        lw $t0, 0x4c($sp)
  /* 00C680 8000BA80 00801025 */        or $v0, $a0, $zero
  /* 00C684 8000BA84 AC680080 */        sw $t0, 0x80($v1)
  /* 00C688 8000BA88 8FA90050 */        lw $t1, 0x50($sp)
  /* 00C68C 8000BA8C AC690084 */        sw $t1, 0x84($v1)
  .L8000BA90:
  /* 00C690 8000BA90 8FBF003C */        lw $ra, 0x3c($sp)
  /* 00C694 8000BA94 27BD0040 */     addiu $sp, $sp, 0x40
  /* 00C698 8000BA98 03E00008 */        jr $ra
  /* 00C69C 8000BA9C 00000000 */       nop 

glabel func_8000BAA0
  /* 00C6A0 8000BAA0 8C820010 */        lw $v0, 0x10($a0)
  /* 00C6A4 8000BAA4 50400004 */      beql $v0, $zero, .L8000BAB8
  /* 00C6A8 8000BAA8 8C820008 */        lw $v0, 8($a0)
  /* 00C6AC 8000BAAC 03E00008 */        jr $ra
  /* 00C6B0 8000BAB0 00000000 */       nop 

  /* 00C6B4 8000BAB4 8C820008 */        lw $v0, 8($a0)
  .L8000BAB8:
  /* 00C6B8 8000BAB8 24050001 */     addiu $a1, $zero, 1
  /* 00C6BC 8000BABC 10400003 */      beqz $v0, .L8000BACC
  /* 00C6C0 8000BAC0 00000000 */       nop 
  /* 00C6C4 8000BAC4 03E00008 */        jr $ra
  /* 00C6C8 8000BAC8 00000000 */       nop 

  .L8000BACC:
  /* 00C6CC 8000BACC 8C820014 */        lw $v0, 0x14($a0)
  /* 00C6D0 8000BAD0 54A20004 */      bnel $a1, $v0, .L8000BAE4
  /* 00C6D4 8000BAD4 8C430008 */        lw $v1, 8($v0)
  /* 00C6D8 8000BAD8 03E00008 */        jr $ra
  /* 00C6DC 8000BADC 00001025 */        or $v0, $zero, $zero

  /* 00C6E0 8000BAE0 8C430008 */        lw $v1, 8($v0)
  .L8000BAE4:
  /* 00C6E4 8000BAE4 10600003 */      beqz $v1, .L8000BAF4
  /* 00C6E8 8000BAE8 00000000 */       nop 
  /* 00C6EC 8000BAEC 03E00008 */        jr $ra
  /* 00C6F0 8000BAF0 00601025 */        or $v0, $v1, $zero

  .L8000BAF4:
  /* 00C6F4 8000BAF4 1000FFF5 */         b .L8000BACC
  /* 00C6F8 8000BAF8 00402025 */        or $a0, $v0, $zero
  /* 00C6FC 8000BAFC 03E00008 */        jr $ra
  /* 00C700 8000BB00 00801025 */        or $v0, $a0, $zero

glabel func_8000BB04
  /* 00C704 8000BB04 27BDFFD8 */     addiu $sp, $sp, -0x28
  /* 00C708 8000BB08 AFBF0024 */        sw $ra, 0x24($sp)
  /* 00C70C 8000BB0C AFB00020 */        sw $s0, 0x20($sp)
  /* 00C710 8000BB10 F7B40018 */      sdc1 $f20, 0x18($sp)
  /* 00C714 8000BB14 8C900074 */        lw $s0, 0x74($a0)
  /* 00C718 8000BB18 4485A000 */      mtc1 $a1, $f20
  /* 00C71C 8000BB1C 52000007 */      beql $s0, $zero, .L8000BB3C
  /* 00C720 8000BB20 8FBF0024 */        lw $ra, 0x24($sp)
  .L8000BB24:
  /* 00C724 8000BB24 E6140078 */      swc1 $f20, 0x78($s0)
  /* 00C728 8000BB28 0C002EA8 */       jal func_8000BAA0
  /* 00C72C 8000BB2C 02002025 */        or $a0, $s0, $zero
  /* 00C730 8000BB30 1440FFFC */      bnez $v0, .L8000BB24
  /* 00C734 8000BB34 00408025 */        or $s0, $v0, $zero
  /* 00C738 8000BB38 8FBF0024 */        lw $ra, 0x24($sp)
  .L8000BB3C:
  /* 00C73C 8000BB3C D7B40018 */      ldc1 $f20, 0x18($sp)
  /* 00C740 8000BB40 8FB00020 */        lw $s0, 0x20($sp)
  /* 00C744 8000BB44 03E00008 */        jr $ra
  /* 00C748 8000BB48 27BD0028 */     addiu $sp, $sp, 0x28

glabel func_8000BB4C
  /* 00C74C 8000BB4C 27BDFFD8 */     addiu $sp, $sp, -0x28
  /* 00C750 8000BB50 AFBF0024 */        sw $ra, 0x24($sp)
  /* 00C754 8000BB54 AFB00020 */        sw $s0, 0x20($sp)
  /* 00C758 8000BB58 F7B40018 */      sdc1 $f20, 0x18($sp)
  /* 00C75C 8000BB5C 8C900074 */        lw $s0, 0x74($a0)
  /* 00C760 8000BB60 4485A000 */      mtc1 $a1, $f20
  /* 00C764 8000BB64 5200000E */      beql $s0, $zero, .L8000BBA0
  /* 00C768 8000BB68 8FBF0024 */        lw $ra, 0x24($sp)
  .L8000BB6C:
  /* 00C76C 8000BB6C 8E020080 */        lw $v0, 0x80($s0)
  /* 00C770 8000BB70 E6140078 */      swc1 $f20, 0x78($s0)
  /* 00C774 8000BB74 10400005 */      beqz $v0, .L8000BB8C
  /* 00C778 8000BB78 00000000 */       nop 
  /* 00C77C 8000BB7C E454009C */      swc1 $f20, 0x9c($v0)
  .L8000BB80:
  /* 00C780 8000BB80 8C420000 */        lw $v0, ($v0)
  /* 00C784 8000BB84 5440FFFE */      bnel $v0, $zero, .L8000BB80
  /* 00C788 8000BB88 E454009C */      swc1 $f20, 0x9c($v0)
  .L8000BB8C:
  /* 00C78C 8000BB8C 0C002EA8 */       jal func_8000BAA0
  /* 00C790 8000BB90 02002025 */        or $a0, $s0, $zero
  /* 00C794 8000BB94 1440FFF5 */      bnez $v0, .L8000BB6C
  /* 00C798 8000BB98 00408025 */        or $s0, $v0, $zero
  /* 00C79C 8000BB9C 8FBF0024 */        lw $ra, 0x24($sp)
  .L8000BBA0:
  /* 00C7A0 8000BBA0 D7B40018 */      ldc1 $f20, 0x18($sp)
  /* 00C7A4 8000BBA4 8FB00020 */        lw $s0, 0x20($sp)
  /* 00C7A8 8000BBA8 03E00008 */        jr $ra
  /* 00C7AC 8000BBAC 27BD0028 */     addiu $sp, $sp, 0x28

  /* 00C7B0 8000BBB0 27BDFFD8 */     addiu $sp, $sp, -0x28
  /* 00C7B4 8000BBB4 AFBF0024 */        sw $ra, 0x24($sp)
  /* 00C7B8 8000BBB8 AFB00020 */        sw $s0, 0x20($sp)
  /* 00C7BC 8000BBBC F7B40018 */      sdc1 $f20, 0x18($sp)
  /* 00C7C0 8000BBC0 8C900074 */        lw $s0, 0x74($a0)
  /* 00C7C4 8000BBC4 4485A000 */      mtc1 $a1, $f20
  /* 00C7C8 8000BBC8 5200000D */      beql $s0, $zero, .L8000BC00
  /* 00C7CC 8000BBCC 8FBF0024 */        lw $ra, 0x24($sp)
  .L8000BBD0:
  /* 00C7D0 8000BBD0 8E020080 */        lw $v0, 0x80($s0)
  /* 00C7D4 8000BBD4 10400005 */      beqz $v0, .L8000BBEC
  /* 00C7D8 8000BBD8 00000000 */       nop 
  /* 00C7DC 8000BBDC E454009C */      swc1 $f20, 0x9c($v0)
  .L8000BBE0:
  /* 00C7E0 8000BBE0 8C420000 */        lw $v0, ($v0)
  /* 00C7E4 8000BBE4 5440FFFE */      bnel $v0, $zero, .L8000BBE0
  /* 00C7E8 8000BBE8 E454009C */      swc1 $f20, 0x9c($v0)
  .L8000BBEC:
  /* 00C7EC 8000BBEC 0C002EA8 */       jal func_8000BAA0
  /* 00C7F0 8000BBF0 02002025 */        or $a0, $s0, $zero
  /* 00C7F4 8000BBF4 1440FFF6 */      bnez $v0, .L8000BBD0
  /* 00C7F8 8000BBF8 00408025 */        or $s0, $v0, $zero
  /* 00C7FC 8000BBFC 8FBF0024 */        lw $ra, 0x24($sp)
  .L8000BC00:
  /* 00C800 8000BC00 D7B40018 */      ldc1 $f20, 0x18($sp)
  /* 00C804 8000BC04 8FB00020 */        lw $s0, 0x20($sp)
  /* 00C808 8000BC08 03E00008 */        jr $ra
  /* 00C80C 8000BC0C 27BD0028 */     addiu $sp, $sp, 0x28

  /* 00C810 8000BC10 27BDFFE0 */     addiu $sp, $sp, -0x20
  /* 00C814 8000BC14 AFBF001C */        sw $ra, 0x1c($sp)
  /* 00C818 8000BC18 AFB00018 */        sw $s0, 0x18($sp)
  /* 00C81C 8000BC1C 8C900074 */        lw $s0, 0x74($a0)
  /* 00C820 8000BC20 52000008 */      beql $s0, $zero, .L8000BC44
  /* 00C824 8000BC24 8FBF001C */        lw $ra, 0x1c($sp)
  .L8000BC28:
  /* 00C828 8000BC28 0C0023B9 */       jal func_80008EE4
  /* 00C82C 8000BC2C 02002025 */        or $a0, $s0, $zero
  /* 00C830 8000BC30 0C002EA8 */       jal func_8000BAA0
  /* 00C834 8000BC34 02002025 */        or $a0, $s0, $zero
  /* 00C838 8000BC38 1440FFFB */      bnez $v0, .L8000BC28
  /* 00C83C 8000BC3C 00408025 */        or $s0, $v0, $zero
  /* 00C840 8000BC40 8FBF001C */        lw $ra, 0x1c($sp)
  .L8000BC44:
  /* 00C844 8000BC44 8FB00018 */        lw $s0, 0x18($sp)
  /* 00C848 8000BC48 27BD0020 */     addiu $sp, $sp, 0x20
  /* 00C84C 8000BC4C 03E00008 */        jr $ra
  /* 00C850 8000BC50 00000000 */       nop 

  /* 00C854 8000BC54 27BDFFE0 */     addiu $sp, $sp, -0x20
  /* 00C858 8000BC58 AFBF001C */        sw $ra, 0x1c($sp)
  /* 00C85C 8000BC5C AFB10018 */        sw $s1, 0x18($sp)
  /* 00C860 8000BC60 AFB00014 */        sw $s0, 0x14($sp)
  /* 00C864 8000BC64 8C910074 */        lw $s1, 0x74($a0)
  /* 00C868 8000BC68 52200010 */      beql $s1, $zero, .L8000BCAC
  /* 00C86C 8000BC6C 8FBF001C */        lw $ra, 0x1c($sp)
  .L8000BC70:
  /* 00C870 8000BC70 0C0023B9 */       jal func_80008EE4
  /* 00C874 8000BC74 02202025 */        or $a0, $s1, $zero
  /* 00C878 8000BC78 8E300080 */        lw $s0, 0x80($s1)
  /* 00C87C 8000BC7C 12000006 */      beqz $s0, .L8000BC98
  /* 00C880 8000BC80 00000000 */       nop 
  .L8000BC84:
  /* 00C884 8000BC84 0C0023EC */       jal func_80008FB0
  /* 00C888 8000BC88 02002025 */        or $a0, $s0, $zero
  /* 00C88C 8000BC8C 8E100000 */        lw $s0, ($s0)
  /* 00C890 8000BC90 1600FFFC */      bnez $s0, .L8000BC84
  /* 00C894 8000BC94 00000000 */       nop 
  .L8000BC98:
  /* 00C898 8000BC98 0C002EA8 */       jal func_8000BAA0
  /* 00C89C 8000BC9C 02202025 */        or $a0, $s1, $zero
  /* 00C8A0 8000BCA0 1440FFF3 */      bnez $v0, .L8000BC70
  /* 00C8A4 8000BCA4 00408825 */        or $s1, $v0, $zero
  /* 00C8A8 8000BCA8 8FBF001C */        lw $ra, 0x1c($sp)
  .L8000BCAC:
  /* 00C8AC 8000BCAC 8FB00014 */        lw $s0, 0x14($sp)
  /* 00C8B0 8000BCB0 8FB10018 */        lw $s1, 0x18($sp)
  /* 00C8B4 8000BCB4 03E00008 */        jr $ra
  /* 00C8B8 8000BCB8 27BD0020 */     addiu $sp, $sp, 0x20

  /* 00C8BC 8000BCBC 27BDFFE0 */     addiu $sp, $sp, -0x20
  /* 00C8C0 8000BCC0 AFBF001C */        sw $ra, 0x1c($sp)
  /* 00C8C4 8000BCC4 AFB10018 */        sw $s1, 0x18($sp)
  /* 00C8C8 8000BCC8 AFB00014 */        sw $s0, 0x14($sp)
  /* 00C8CC 8000BCCC 8C910074 */        lw $s1, 0x74($a0)
  /* 00C8D0 8000BCD0 5220000E */      beql $s1, $zero, .L8000BD0C
  /* 00C8D4 8000BCD4 8FBF001C */        lw $ra, 0x1c($sp)
  .L8000BCD8:
  /* 00C8D8 8000BCD8 8E300080 */        lw $s0, 0x80($s1)
  /* 00C8DC 8000BCDC 12000006 */      beqz $s0, .L8000BCF8
  /* 00C8E0 8000BCE0 00000000 */       nop 
  .L8000BCE4:
  /* 00C8E4 8000BCE4 0C0023EC */       jal func_80008FB0
  /* 00C8E8 8000BCE8 02002025 */        or $a0, $s0, $zero
  /* 00C8EC 8000BCEC 8E100000 */        lw $s0, ($s0)
  /* 00C8F0 8000BCF0 1600FFFC */      bnez $s0, .L8000BCE4
  /* 00C8F4 8000BCF4 00000000 */       nop 
  .L8000BCF8:
  /* 00C8F8 8000BCF8 0C002EA8 */       jal func_8000BAA0
  /* 00C8FC 8000BCFC 02202025 */        or $a0, $s1, $zero
  /* 00C900 8000BD00 1440FFF5 */      bnez $v0, .L8000BCD8
  /* 00C904 8000BD04 00408825 */        or $s1, $v0, $zero
  /* 00C908 8000BD08 8FBF001C */        lw $ra, 0x1c($sp)
  .L8000BD0C:
  /* 00C90C 8000BD0C 8FB00014 */        lw $s0, 0x14($sp)
  /* 00C910 8000BD10 8FB10018 */        lw $s1, 0x18($sp)
  /* 00C914 8000BD14 03E00008 */        jr $ra
  /* 00C918 8000BD18 27BD0020 */     addiu $sp, $sp, 0x20

glabel func_8000BD1C
  /* 00C91C 8000BD1C 8C82006C */        lw $v0, 0x6c($a0)
  /* 00C920 8000BD20 44866000 */      mtc1 $a2, $f12
  /* 00C924 8000BD24 3C018004 */       lui $at, %hi(D_8003DDD0)
  /* 00C928 8000BD28 50400006 */      beql $v0, $zero, .L8000BD44
  /* 00C92C 8000BD2C AC850070 */        sw $a1, 0x70($a0)
  /* 00C930 8000BD30 A0400005 */        sb $zero, 5($v0)
  .L8000BD34:
  /* 00C934 8000BD34 8C420000 */        lw $v0, ($v0)
  /* 00C938 8000BD38 5440FFFE */      bnel $v0, $zero, .L8000BD34
  /* 00C93C 8000BD3C A0400005 */        sb $zero, 5($v0)
  /* 00C940 8000BD40 AC850070 */        sw $a1, 0x70($a0)
  .L8000BD44:
  /* 00C944 8000BD44 C424DDD0 */      lwc1 $f4, %lo(D_8003DDD0)($at)
  /* 00C948 8000BD48 E48C007C */      swc1 $f12, 0x7c($a0)
  /* 00C94C 8000BD4C 03E00008 */        jr $ra
  /* 00C950 8000BD50 E4840074 */      swc1 $f4, 0x74($a0)

glabel func_8000BD54
  /* 00C954 8000BD54 8C820090 */        lw $v0, 0x90($a0)
  /* 00C958 8000BD58 44866000 */      mtc1 $a2, $f12
  /* 00C95C 8000BD5C 3C018004 */       lui $at, %hi(D_8003DDD4)
  /* 00C960 8000BD60 50400006 */      beql $v0, $zero, .L8000BD7C
  /* 00C964 8000BD64 AC850094 */        sw $a1, 0x94($a0)
  /* 00C968 8000BD68 A0400005 */        sb $zero, 5($v0)
  .L8000BD6C:
  /* 00C96C 8000BD6C 8C420000 */        lw $v0, ($v0)
  /* 00C970 8000BD70 5440FFFE */      bnel $v0, $zero, .L8000BD6C
  /* 00C974 8000BD74 A0400005 */        sb $zero, 5($v0)
  /* 00C978 8000BD78 AC850094 */        sw $a1, 0x94($a0)
  .L8000BD7C:
  /* 00C97C 8000BD7C C424DDD4 */      lwc1 $f4, %lo(D_8003DDD4)($at)
  /* 00C980 8000BD80 E48C00A0 */      swc1 $f12, 0xa0($a0)
  /* 00C984 8000BD84 03E00008 */        jr $ra
  /* 00C988 8000BD88 E4840098 */      swc1 $f4, 0x98($a0)

glabel func_8000BD8C
  /* 00C98C 8000BD8C 27BDFFC8 */     addiu $sp, $sp, -0x38
  /* 00C990 8000BD90 AFBF0034 */        sw $ra, 0x34($sp)
  /* 00C994 8000BD94 AFB20030 */        sw $s2, 0x30($sp)
  /* 00C998 8000BD98 AFB1002C */        sw $s1, 0x2c($sp)
  /* 00C99C 8000BD9C AFB00028 */        sw $s0, 0x28($sp)
  /* 00C9A0 8000BDA0 F7B60020 */      sdc1 $f22, 0x20($sp)
  /* 00C9A4 8000BDA4 F7B40018 */      sdc1 $f20, 0x18($sp)
  /* 00C9A8 8000BDA8 8C900074 */        lw $s0, 0x74($a0)
  /* 00C9AC 8000BDAC 4486A000 */      mtc1 $a2, $f20
  /* 00C9B0 8000BDB0 00A08825 */        or $s1, $a1, $zero
  /* 00C9B4 8000BDB4 24120001 */     addiu $s2, $zero, 1
  /* 00C9B8 8000BDB8 12000013 */      beqz $s0, .L8000BE08
  /* 00C9BC 8000BDBC E4940078 */      swc1 $f20, 0x78($a0)
  /* 00C9C0 8000BDC0 3C018004 */       lui $at, %hi(D_8003DDD8)
  /* 00C9C4 8000BDC4 C436DDD8 */      lwc1 $f22, %lo(D_8003DDD8)($at)
  .L8000BDC8:
  /* 00C9C8 8000BDC8 8E250000 */        lw $a1, ($s1)
  /* 00C9CC 8000BDCC 50A00008 */      beql $a1, $zero, .L8000BDF0
  /* 00C9D0 8000BDD0 E6160074 */      swc1 $f22, 0x74($s0)
  /* 00C9D4 8000BDD4 4406A000 */      mfc1 $a2, $f20
  /* 00C9D8 8000BDD8 0C002F47 */       jal func_8000BD1C
  /* 00C9DC 8000BDDC 02002025 */        or $a0, $s0, $zero
  /* 00C9E0 8000BDE0 A2120055 */        sb $s2, 0x55($s0)
  /* 00C9E4 8000BDE4 10000003 */         b .L8000BDF4
  /* 00C9E8 8000BDE8 00009025 */        or $s2, $zero, $zero
  /* 00C9EC 8000BDEC E6160074 */      swc1 $f22, 0x74($s0)
  .L8000BDF0:
  /* 00C9F0 8000BDF0 A2000055 */        sb $zero, 0x55($s0)
  .L8000BDF4:
  /* 00C9F4 8000BDF4 26310004 */     addiu $s1, $s1, 4
  /* 00C9F8 8000BDF8 0C002EA8 */       jal func_8000BAA0
  /* 00C9FC 8000BDFC 02002025 */        or $a0, $s0, $zero
  /* 00CA00 8000BE00 1440FFF1 */      bnez $v0, .L8000BDC8
  /* 00CA04 8000BE04 00408025 */        or $s0, $v0, $zero
  .L8000BE08:
  /* 00CA08 8000BE08 8FBF0034 */        lw $ra, 0x34($sp)
  /* 00CA0C 8000BE0C D7B40018 */      ldc1 $f20, 0x18($sp)
  /* 00CA10 8000BE10 D7B60020 */      ldc1 $f22, 0x20($sp)
  /* 00CA14 8000BE14 8FB00028 */        lw $s0, 0x28($sp)
  /* 00CA18 8000BE18 8FB1002C */        lw $s1, 0x2c($sp)
  /* 00CA1C 8000BE1C 8FB20030 */        lw $s2, 0x30($sp)
  /* 00CA20 8000BE20 03E00008 */        jr $ra
  /* 00CA24 8000BE24 27BD0038 */     addiu $sp, $sp, 0x38

glabel func_8000BE28
  /* 00CA28 8000BE28 27BDFFD0 */     addiu $sp, $sp, -0x30
  /* 00CA2C 8000BE2C AFBF002C */        sw $ra, 0x2c($sp)
  /* 00CA30 8000BE30 AFB30028 */        sw $s3, 0x28($sp)
  /* 00CA34 8000BE34 AFB20024 */        sw $s2, 0x24($sp)
  /* 00CA38 8000BE38 AFB10020 */        sw $s1, 0x20($sp)
  /* 00CA3C 8000BE3C AFB0001C */        sw $s0, 0x1c($sp)
  /* 00CA40 8000BE40 F7B40010 */      sdc1 $f20, 0x10($sp)
  /* 00CA44 8000BE44 8C930074 */        lw $s3, 0x74($a0)
  /* 00CA48 8000BE48 4486A000 */      mtc1 $a2, $f20
  /* 00CA4C 8000BE4C 00A09025 */        or $s2, $a1, $zero
  /* 00CA50 8000BE50 12600019 */      beqz $s3, .L8000BEB8
  /* 00CA54 8000BE54 E4940078 */      swc1 $f20, 0x78($a0)
  .L8000BE58:
  /* 00CA58 8000BE58 12400013 */      beqz $s2, .L8000BEA8
  /* 00CA5C 8000BE5C 00000000 */       nop 
  /* 00CA60 8000BE60 8E420000 */        lw $v0, ($s2)
  /* 00CA64 8000BE64 50400010 */      beql $v0, $zero, .L8000BEA8
  /* 00CA68 8000BE68 26520004 */     addiu $s2, $s2, 4
  /* 00CA6C 8000BE6C 8E700080 */        lw $s0, 0x80($s3)
  /* 00CA70 8000BE70 00408825 */        or $s1, $v0, $zero
  /* 00CA74 8000BE74 5200000C */      beql $s0, $zero, .L8000BEA8
  /* 00CA78 8000BE78 26520004 */     addiu $s2, $s2, 4
  /* 00CA7C 8000BE7C 8E250000 */        lw $a1, ($s1)
  .L8000BE80:
  /* 00CA80 8000BE80 50A00005 */      beql $a1, $zero, .L8000BE98
  /* 00CA84 8000BE84 8E100000 */        lw $s0, ($s0)
  /* 00CA88 8000BE88 4406A000 */      mfc1 $a2, $f20
  /* 00CA8C 8000BE8C 0C002F55 */       jal func_8000BD54
  /* 00CA90 8000BE90 02002025 */        or $a0, $s0, $zero
  /* 00CA94 8000BE94 8E100000 */        lw $s0, ($s0)
  .L8000BE98:
  /* 00CA98 8000BE98 26310004 */     addiu $s1, $s1, 4
  /* 00CA9C 8000BE9C 5600FFF8 */      bnel $s0, $zero, .L8000BE80
  /* 00CAA0 8000BEA0 8E250000 */        lw $a1, ($s1)
  /* 00CAA4 8000BEA4 26520004 */     addiu $s2, $s2, 4
  .L8000BEA8:
  /* 00CAA8 8000BEA8 0C002EA8 */       jal func_8000BAA0
  /* 00CAAC 8000BEAC 02602025 */        or $a0, $s3, $zero
  /* 00CAB0 8000BEB0 1440FFE9 */      bnez $v0, .L8000BE58
  /* 00CAB4 8000BEB4 00409825 */        or $s3, $v0, $zero
  .L8000BEB8:
  /* 00CAB8 8000BEB8 8FBF002C */        lw $ra, 0x2c($sp)
  /* 00CABC 8000BEBC D7B40010 */      ldc1 $f20, 0x10($sp)
  /* 00CAC0 8000BEC0 8FB0001C */        lw $s0, 0x1c($sp)
  /* 00CAC4 8000BEC4 8FB10020 */        lw $s1, 0x20($sp)
  /* 00CAC8 8000BEC8 8FB20024 */        lw $s2, 0x24($sp)
  /* 00CACC 8000BECC 8FB30028 */        lw $s3, 0x28($sp)
  /* 00CAD0 8000BED0 03E00008 */        jr $ra
  /* 00CAD4 8000BED4 27BD0030 */     addiu $sp, $sp, 0x30

glabel func_8000BED8
  /* 00CAD8 8000BED8 27BDFFC0 */     addiu $sp, $sp, -0x40
  /* 00CADC 8000BEDC AFBF003C */        sw $ra, 0x3c($sp)
  /* 00CAE0 8000BEE0 AFB50038 */        sw $s5, 0x38($sp)
  /* 00CAE4 8000BEE4 AFB40034 */        sw $s4, 0x34($sp)
  /* 00CAE8 8000BEE8 AFB30030 */        sw $s3, 0x30($sp)
  /* 00CAEC 8000BEEC AFB2002C */        sw $s2, 0x2c($sp)
  /* 00CAF0 8000BEF0 AFB10028 */        sw $s1, 0x28($sp)
  /* 00CAF4 8000BEF4 AFB00024 */        sw $s0, 0x24($sp)
  /* 00CAF8 8000BEF8 F7B60018 */      sdc1 $f22, 0x18($sp)
  /* 00CAFC 8000BEFC F7B40010 */      sdc1 $f20, 0x10($sp)
  /* 00CB00 8000BF00 8C920074 */        lw $s2, 0x74($a0)
  /* 00CB04 8000BF04 4487A000 */      mtc1 $a3, $f20
  /* 00CB08 8000BF08 00A09825 */        or $s3, $a1, $zero
  /* 00CB0C 8000BF0C 00C0A025 */        or $s4, $a2, $zero
  /* 00CB10 8000BF10 24150001 */     addiu $s5, $zero, 1
  /* 00CB14 8000BF14 12400029 */      beqz $s2, .L8000BFBC
  /* 00CB18 8000BF18 E4940078 */      swc1 $f20, 0x78($a0)
  /* 00CB1C 8000BF1C 3C018004 */       lui $at, %hi(D_8003DDDC)
  /* 00CB20 8000BF20 C436DDDC */      lwc1 $f22, %lo(D_8003DDDC)($at)
  .L8000BF24:
  /* 00CB24 8000BF24 1260000D */      beqz $s3, .L8000BF5C
  /* 00CB28 8000BF28 00000000 */       nop 
  /* 00CB2C 8000BF2C 8E650000 */        lw $a1, ($s3)
  /* 00CB30 8000BF30 50A00008 */      beql $a1, $zero, .L8000BF54
  /* 00CB34 8000BF34 E6560074 */      swc1 $f22, 0x74($s2)
  /* 00CB38 8000BF38 4406A000 */      mfc1 $a2, $f20
  /* 00CB3C 8000BF3C 0C002F47 */       jal func_8000BD1C
  /* 00CB40 8000BF40 02402025 */        or $a0, $s2, $zero
  /* 00CB44 8000BF44 A2550055 */        sb $s5, 0x55($s2)
  /* 00CB48 8000BF48 10000003 */         b .L8000BF58
  /* 00CB4C 8000BF4C 0000A825 */        or $s5, $zero, $zero
  /* 00CB50 8000BF50 E6560074 */      swc1 $f22, 0x74($s2)
  .L8000BF54:
  /* 00CB54 8000BF54 A2400055 */        sb $zero, 0x55($s2)
  .L8000BF58:
  /* 00CB58 8000BF58 26730004 */     addiu $s3, $s3, 4
  .L8000BF5C:
  /* 00CB5C 8000BF5C 12800013 */      beqz $s4, .L8000BFAC
  /* 00CB60 8000BF60 00000000 */       nop 
  /* 00CB64 8000BF64 8E820000 */        lw $v0, ($s4)
  /* 00CB68 8000BF68 50400010 */      beql $v0, $zero, .L8000BFAC
  /* 00CB6C 8000BF6C 26940004 */     addiu $s4, $s4, 4
  /* 00CB70 8000BF70 8E500080 */        lw $s0, 0x80($s2)
  /* 00CB74 8000BF74 00408825 */        or $s1, $v0, $zero
  /* 00CB78 8000BF78 5200000C */      beql $s0, $zero, .L8000BFAC
  /* 00CB7C 8000BF7C 26940004 */     addiu $s4, $s4, 4
  /* 00CB80 8000BF80 8E250000 */        lw $a1, ($s1)
  .L8000BF84:
  /* 00CB84 8000BF84 50A00005 */      beql $a1, $zero, .L8000BF9C
  /* 00CB88 8000BF88 8E100000 */        lw $s0, ($s0)
  /* 00CB8C 8000BF8C 4406A000 */      mfc1 $a2, $f20
  /* 00CB90 8000BF90 0C002F55 */       jal func_8000BD54
  /* 00CB94 8000BF94 02002025 */        or $a0, $s0, $zero
  /* 00CB98 8000BF98 8E100000 */        lw $s0, ($s0)
  .L8000BF9C:
  /* 00CB9C 8000BF9C 26310004 */     addiu $s1, $s1, 4
  /* 00CBA0 8000BFA0 5600FFF8 */      bnel $s0, $zero, .L8000BF84
  /* 00CBA4 8000BFA4 8E250000 */        lw $a1, ($s1)
  /* 00CBA8 8000BFA8 26940004 */     addiu $s4, $s4, 4
  .L8000BFAC:
  /* 00CBAC 8000BFAC 0C002EA8 */       jal func_8000BAA0
  /* 00CBB0 8000BFB0 02402025 */        or $a0, $s2, $zero
  /* 00CBB4 8000BFB4 1440FFDB */      bnez $v0, .L8000BF24
  /* 00CBB8 8000BFB8 00409025 */        or $s2, $v0, $zero
  .L8000BFBC:
  /* 00CBBC 8000BFBC 8FBF003C */        lw $ra, 0x3c($sp)
  /* 00CBC0 8000BFC0 D7B40010 */      ldc1 $f20, 0x10($sp)
  /* 00CBC4 8000BFC4 D7B60018 */      ldc1 $f22, 0x18($sp)
  /* 00CBC8 8000BFC8 8FB00024 */        lw $s0, 0x24($sp)
  /* 00CBCC 8000BFCC 8FB10028 */        lw $s1, 0x28($sp)
  /* 00CBD0 8000BFD0 8FB2002C */        lw $s2, 0x2c($sp)
  /* 00CBD4 8000BFD4 8FB30030 */        lw $s3, 0x30($sp)
  /* 00CBD8 8000BFD8 8FB40034 */        lw $s4, 0x34($sp)
  /* 00CBDC 8000BFDC 8FB50038 */        lw $s5, 0x38($sp)
  /* 00CBE0 8000BFE0 03E00008 */        jr $ra
  /* 00CBE4 8000BFE4 27BD0040 */     addiu $sp, $sp, 0x40

glabel func_8000BFE8
  /* 00CBE8 8000BFE8 27BDFF58 */     addiu $sp, $sp, -0xa8
  /* 00CBEC 8000BFEC AFBF0054 */        sw $ra, 0x54($sp)
  /* 00CBF0 8000BFF0 AFBE0050 */        sw $fp, 0x50($sp)
  /* 00CBF4 8000BFF4 AFB7004C */        sw $s7, 0x4c($sp)
  /* 00CBF8 8000BFF8 AFB60048 */        sw $s6, 0x48($sp)
  /* 00CBFC 8000BFFC AFB50044 */        sw $s5, 0x44($sp)
  /* 00CC00 8000C000 AFB40040 */        sw $s4, 0x40($sp)
  /* 00CC04 8000C004 AFB3003C */        sw $s3, 0x3c($sp)
  /* 00CC08 8000C008 AFB20038 */        sw $s2, 0x38($sp)
  /* 00CC0C 8000C00C AFB10034 */        sw $s1, 0x34($sp)
  /* 00CC10 8000C010 AFB00030 */        sw $s0, 0x30($sp)
  /* 00CC14 8000C014 F7B80028 */      sdc1 $f24, 0x28($sp)
  /* 00CC18 8000C018 F7B60020 */      sdc1 $f22, 0x20($sp)
  /* 00CC1C 8000C01C F7B40018 */      sdc1 $f20, 0x18($sp)
  /* 00CC20 8000C020 3C018004 */       lui $at, %hi(D_8003DDE0)
  /* 00CC24 8000C024 C424DDE0 */      lwc1 $f4, %lo(D_8003DDE0)($at)
  /* 00CC28 8000C028 C4800074 */      lwc1 $f0, 0x74($a0)
  /* 00CC2C 8000C02C 00809825 */        or $s3, $a0, $zero
  /* 00CC30 8000C030 3C018004 */       lui $at, %hi(D_8003DDE4)
  /* 00CC34 8000C034 46002032 */    c.eq.s $f4, $f0
  /* 00CC38 8000C038 27B00088 */     addiu $s0, $sp, 0x88
  /* 00CC3C 8000C03C 27A200A8 */     addiu $v0, $sp, 0xa8
  /* 00CC40 8000C040 24160003 */     addiu $s6, $zero, 3
  /* 00CC44 8000C044 45010269 */      bc1t .L8000C9EC
  /* 00CC48 8000C048 241E000E */     addiu $fp, $zero, 0xe
  /* 00CC4C 8000C04C C426DDE4 */      lwc1 $f6, %lo(D_8003DDE4)($at)
  /* 00CC50 8000C050 27B50080 */     addiu $s5, $sp, 0x80
  /* 00CC54 8000C054 2414000A */     addiu $s4, $zero, 0xa
  /* 00CC58 8000C058 46003032 */    c.eq.s $f6, $f0
  /* 00CC5C 8000C05C 00000000 */       nop 
  /* 00CC60 8000C060 45020007 */     bc1fl .L8000C080
  /* 00CC64 8000C064 C6620078 */      lwc1 $f2, 0x78($s3)
  /* 00CC68 8000C068 C488007C */      lwc1 $f8, 0x7c($a0)
  /* 00CC6C 8000C06C 4480B000 */      mtc1 $zero, $f22
  /* 00CC70 8000C070 46004287 */     neg.s $f10, $f8
  /* 00CC74 8000C074 10000010 */         b .L8000C0B8
  /* 00CC78 8000C078 E48A0074 */      swc1 $f10, 0x74($a0)
  /* 00CC7C 8000C07C C6620078 */      lwc1 $f2, 0x78($s3)
  .L8000C080:
  /* 00CC80 8000C080 C672007C */      lwc1 $f18, 0x7c($s3)
  /* 00CC84 8000C084 8E6E0004 */        lw $t6, 4($s3)
  /* 00CC88 8000C088 46020401 */     sub.s $f16, $f0, $f2
  /* 00CC8C 8000C08C 4480B000 */      mtc1 $zero, $f22
  /* 00CC90 8000C090 46029100 */     add.s $f4, $f18, $f2
  /* 00CC94 8000C094 E6700074 */      swc1 $f16, 0x74($s3)
  /* 00CC98 8000C098 E664007C */      swc1 $f4, 0x7c($s3)
  /* 00CC9C 8000C09C C666007C */      lwc1 $f6, 0x7c($s3)
  /* 00CCA0 8000C0A0 E5C60078 */      swc1 $f6, 0x78($t6)
  /* 00CCA4 8000C0A4 C6680074 */      lwc1 $f8, 0x74($s3)
  /* 00CCA8 8000C0A8 4608B03C */    c.lt.s $f22, $f8
  /* 00CCAC 8000C0AC 00000000 */       nop 
  /* 00CCB0 8000C0B0 4503024F */     bc1tl .L8000C9F0
  /* 00CCB4 8000C0B4 8FBF0054 */        lw $ra, 0x54($sp)
  .L8000C0B8:
  /* 00CCB8 8000C0B8 AFA00080 */        sw $zero, 0x80($sp)
  /* 00CCBC 8000C0BC AFA00084 */        sw $zero, 0x84($sp)
  .L8000C0C0:
  /* 00CCC0 8000C0C0 26100010 */     addiu $s0, $s0, 0x10
  /* 00CCC4 8000C0C4 AE00FFF4 */        sw $zero, -0xc($s0)
  /* 00CCC8 8000C0C8 AE00FFF8 */        sw $zero, -8($s0)
  /* 00CCCC 8000C0CC AE00FFFC */        sw $zero, -4($s0)
  /* 00CCD0 8000C0D0 1602FFFB */       bne $s0, $v0, .L8000C0C0
  /* 00CCD4 8000C0D4 AE00FFF0 */        sw $zero, -0x10($s0)
  /* 00CCD8 8000C0D8 8E62006C */        lw $v0, 0x6c($s3)
  /* 00CCDC 8000C0DC 5040000C */      beql $v0, $zero, .L8000C110
  /* 00CCE0 8000C0E0 3C013F80 */       lui $at, 0x3f80
  /* 00CCE4 8000C0E4 90430004 */       lbu $v1, 4($v0)
  .L8000C0E8:
  /* 00CCE8 8000C0E8 18600005 */      blez $v1, .L8000C100
  /* 00CCEC 8000C0EC 2861000B */      slti $at, $v1, 0xb
  /* 00CCF0 8000C0F0 10200003 */      beqz $at, .L8000C100
  /* 00CCF4 8000C0F4 00037880 */       sll $t7, $v1, 2
  /* 00CCF8 8000C0F8 02AFC021 */      addu $t8, $s5, $t7
  /* 00CCFC 8000C0FC AF02FFFC */        sw $v0, -4($t8)
  .L8000C100:
  /* 00CD00 8000C100 8C420000 */        lw $v0, ($v0)
  /* 00CD04 8000C104 5440FFF8 */      bnel $v0, $zero, .L8000C0E8
  /* 00CD08 8000C108 90430004 */       lbu $v1, 4($v0)
  /* 00CD0C 8000C10C 3C013F80 */       lui $at, (0x3F800000 >> 16) # 1.0
  .L8000C110:
  /* 00CD10 8000C110 4481C000 */      mtc1 $at, $f24 # 1.0 to cop1
  /* 00CD14 8000C114 27B50080 */     addiu $s5, $sp, 0x80
  /* 00CD18 8000C118 8E630070 */        lw $v1, 0x70($s3)
  .L8000C11C:
  /* 00CD1C 8000C11C 54600019 */      bnel $v1, $zero, .L8000C184
  /* 00CD20 8000C120 8C700000 */        lw $s0, ($v1)
  /* 00CD24 8000C124 8E62006C */        lw $v0, 0x6c($s3)
  /* 00CD28 8000C128 C6600074 */      lwc1 $f0, 0x74($s3)
  /* 00CD2C 8000C12C 5040000E */      beql $v0, $zero, .L8000C168
  /* 00CD30 8000C130 8E680004 */        lw $t0, 4($s3)
  /* 00CD34 8000C134 90590005 */       lbu $t9, 5($v0)
  .L8000C138:
  /* 00CD38 8000C138 53200008 */      beql $t9, $zero, .L8000C15C
  /* 00CD3C 8000C13C 8C420000 */        lw $v0, ($v0)
  /* 00CD40 8000C140 C6700078 */      lwc1 $f16, 0x78($s3)
  /* 00CD44 8000C144 C44A000C */      lwc1 $f10, 0xc($v0)
  /* 00CD48 8000C148 46008480 */     add.s $f18, $f16, $f0
  /* 00CD4C 8000C14C 46125100 */     add.s $f4, $f10, $f18
  /* 00CD50 8000C150 E444000C */      swc1 $f4, 0xc($v0)
  /* 00CD54 8000C154 C6600074 */      lwc1 $f0, 0x74($s3)
  /* 00CD58 8000C158 8C420000 */        lw $v0, ($v0)
  .L8000C15C:
  /* 00CD5C 8000C15C 5440FFF6 */      bnel $v0, $zero, .L8000C138
  /* 00CD60 8000C160 90590005 */       lbu $t9, 5($v0)
  /* 00CD64 8000C164 8E680004 */        lw $t0, 4($s3)
  .L8000C168:
  /* 00CD68 8000C168 E660007C */      swc1 $f0, 0x7c($s3)
  /* 00CD6C 8000C16C 3C018004 */       lui $at, %hi(D_8003DDE8)
  /* 00CD70 8000C170 E5000078 */      swc1 $f0, 0x78($t0)
  /* 00CD74 8000C174 C426DDE8 */      lwc1 $f6, %lo(D_8003DDE8)($at)
  /* 00CD78 8000C178 1000021C */         b .L8000C9EC
  /* 00CD7C 8000C17C E6660074 */      swc1 $f6, 0x74($s3)
  /* 00CD80 8000C180 8C700000 */        lw $s0, ($v1)
  .L8000C184:
  /* 00CD84 8000C184 00101642 */       srl $v0, $s0, 0x19
  /* 00CD88 8000C188 2C410012 */     sltiu $at, $v0, 0x12
  /* 00CD8C 8000C18C 10200212 */      beqz $at, .L8000C9D8
  /* 00CD90 8000C190 0040B825 */        or $s7, $v0, $zero
  /* 00CD94 8000C194 00024880 */       sll $t1, $v0, 2
  /* 00CD98 8000C198 3C018004 */       lui $at, %hi(jtbl_8003DDEC)
  /* 00CD9C 8000C19C 00290821 */      addu $at, $at, $t1
  /* 00CDA0 8000C1A0 8C29DDEC */        lw $t1, %lo(jtbl_8003DDEC)($at)
  /* 00CDA4 8000C1A4 01200008 */        jr $t1
  /* 00CDA8 8000C1A8 00000000 */       nop 
  glabel jtgt_8000C1AC
  /* 00CDAC 8000C1AC 320A7FFF */      andi $t2, $s0, 0x7fff
  /* 00CDB0 8000C1B0 448A4000 */      mtc1 $t2, $f8
  /* 00CDB4 8000C1B4 001091C0 */       sll $s2, $s0, 7
  /* 00CDB8 8000C1B8 05410005 */      bgez $t2, .L8000C1D0
  /* 00CDBC 8000C1BC 46804520 */   cvt.s.w $f20, $f8
  /* 00CDC0 8000C1C0 3C014F80 */       lui $at, (0x4F800000 >> 16) # 4294967300.0
  /* 00CDC4 8000C1C4 44818000 */      mtc1 $at, $f16 # 4294967300.0 to cop1
  /* 00CDC8 8000C1C8 00000000 */       nop 
  /* 00CDCC 8000C1CC 4610A500 */     add.s $f20, $f20, $f16
  .L8000C1D0:
  /* 00CDD0 8000C1D0 246B0004 */     addiu $t3, $v1, 4
  /* 00CDD4 8000C1D4 AE6B0070 */        sw $t3, 0x70($s3)
  /* 00CDD8 8000C1D8 00129582 */       srl $s2, $s2, 0x16
  /* 00CDDC 8000C1DC 00008825 */        or $s1, $zero, $zero
  .L8000C1E0:
  /* 00CDE0 8000C1E0 1240002B */      beqz $s2, .L8000C290
  /* 00CDE4 8000C1E4 324C0001 */      andi $t4, $s2, 1
  /* 00CDE8 8000C1E8 11800026 */      beqz $t4, .L8000C284
  /* 00CDEC 8000C1EC 00116880 */       sll $t5, $s1, 2
  /* 00CDF0 8000C1F0 02AD8021 */      addu $s0, $s5, $t5
  /* 00CDF4 8000C1F4 8E030000 */        lw $v1, ($s0)
  /* 00CDF8 8000C1F8 02602025 */        or $a0, $s3, $zero
  /* 00CDFC 8000C1FC 26250001 */     addiu $a1, $s1, 1
  /* 00CE00 8000C200 54600006 */      bnel $v1, $zero, .L8000C21C
  /* 00CE04 8000C204 C46A0014 */      lwc1 $f10, 0x14($v1)
  /* 00CE08 8000C208 0C00239E */       jal func_80008E78
  /* 00CE0C 8000C20C 30A500FF */      andi $a1, $a1, 0xff
  /* 00CE10 8000C210 AE020000 */        sw $v0, ($s0)
  /* 00CE14 8000C214 00401825 */        or $v1, $v0, $zero
  /* 00CE18 8000C218 C46A0014 */      lwc1 $f10, 0x14($v1)
  .L8000C21C:
  /* 00CE1C 8000C21C 4616A032 */    c.eq.s $f20, $f22
  /* 00CE20 8000C220 E46A0010 */      swc1 $f10, 0x10($v1)
  /* 00CE24 8000C224 8E6E0070 */        lw $t6, 0x70($s3)
  /* 00CE28 8000C228 8E0F0000 */        lw $t7, ($s0)
  /* 00CE2C 8000C22C C5D20000 */      lwc1 $f18, ($t6)
  /* 00CE30 8000C230 E5F20014 */      swc1 $f18, 0x14($t7)
  /* 00CE34 8000C234 8E780070 */        lw $t8, 0x70($s3)
  /* 00CE38 8000C238 27190004 */     addiu $t9, $t8, 4
  /* 00CE3C 8000C23C AE790070 */        sw $t9, 0x70($s3)
  /* 00CE40 8000C240 8E030000 */        lw $v1, ($s0)
  /* 00CE44 8000C244 C464001C */      lwc1 $f4, 0x1c($v1)
  /* 00CE48 8000C248 E4640018 */      swc1 $f4, 0x18($v1)
  /* 00CE4C 8000C24C 8E080000 */        lw $t0, ($s0)
  /* 00CE50 8000C250 E516001C */      swc1 $f22, 0x1c($t0)
  /* 00CE54 8000C254 8E090000 */        lw $t1, ($s0)
  /* 00CE58 8000C258 45010004 */      bc1t .L8000C26C
  /* 00CE5C 8000C25C A1360005 */        sb $s6, 5($t1)
  /* 00CE60 8000C260 4614C183 */     div.s $f6, $f24, $f20
  /* 00CE64 8000C264 8E0A0000 */        lw $t2, ($s0)
  /* 00CE68 8000C268 E5460008 */      swc1 $f6, 8($t2)
  .L8000C26C:
  /* 00CE6C 8000C26C C6680074 */      lwc1 $f8, 0x74($s3)
  /* 00CE70 8000C270 C66A0078 */      lwc1 $f10, 0x78($s3)
  /* 00CE74 8000C274 8E0B0000 */        lw $t3, ($s0)
  /* 00CE78 8000C278 46004407 */     neg.s $f16, $f8
  /* 00CE7C 8000C27C 460A8481 */     sub.s $f18, $f16, $f10
  /* 00CE80 8000C280 E572000C */      swc1 $f18, 0xc($t3)
  .L8000C284:
  /* 00CE84 8000C284 26310001 */     addiu $s1, $s1, 1
  /* 00CE88 8000C288 1634FFD5 */       bne $s1, $s4, .L8000C1E0
  /* 00CE8C 8000C28C 00129042 */       srl $s2, $s2, 1
  .L8000C290:
  /* 00CE90 8000C290 24010008 */     addiu $at, $zero, 8
  /* 00CE94 8000C294 16E10004 */       bne $s7, $at, .L8000C2A8
  /* 00CE98 8000C298 00000000 */       nop 
  /* 00CE9C 8000C29C C6640074 */      lwc1 $f4, 0x74($s3)
  /* 00CEA0 8000C2A0 46142180 */     add.s $f6, $f4, $f20
  /* 00CEA4 8000C2A4 E6660074 */      swc1 $f6, 0x74($s3)
  .L8000C2A8:
  /* 00CEA8 8000C2A8 100001CC */         b .L8000C9DC
  /* 00CEAC 8000C2AC C6600074 */      lwc1 $f0, 0x74($s3)
  glabel jtgt_8000C2B0
  /* 00CEB0 8000C2B0 320C7FFF */      andi $t4, $s0, 0x7fff
  /* 00CEB4 8000C2B4 448C4000 */      mtc1 $t4, $f8
  /* 00CEB8 8000C2B8 001091C0 */       sll $s2, $s0, 7
  /* 00CEBC 8000C2BC 05810005 */      bgez $t4, .L8000C2D4
  /* 00CEC0 8000C2C0 46804520 */   cvt.s.w $f20, $f8
  /* 00CEC4 8000C2C4 3C014F80 */       lui $at, (0x4F800000 >> 16) # 4294967300.0
  /* 00CEC8 8000C2C8 44818000 */      mtc1 $at, $f16 # 4294967300.0 to cop1
  /* 00CECC 8000C2CC 00000000 */       nop 
  /* 00CED0 8000C2D0 4610A500 */     add.s $f20, $f20, $f16
  .L8000C2D4:
  /* 00CED4 8000C2D4 246D0004 */     addiu $t5, $v1, 4
  /* 00CED8 8000C2D8 AE6D0070 */        sw $t5, 0x70($s3)
  /* 00CEDC 8000C2DC 00129582 */       srl $s2, $s2, 0x16
  /* 00CEE0 8000C2E0 00008825 */        or $s1, $zero, $zero
  .L8000C2E4:
  /* 00CEE4 8000C2E4 1240002C */      beqz $s2, .L8000C398
  /* 00CEE8 8000C2E8 324E0001 */      andi $t6, $s2, 1
  /* 00CEEC 8000C2EC 11C00027 */      beqz $t6, .L8000C38C
  /* 00CEF0 8000C2F0 00117880 */       sll $t7, $s1, 2
  /* 00CEF4 8000C2F4 02AF8021 */      addu $s0, $s5, $t7
  /* 00CEF8 8000C2F8 8E030000 */        lw $v1, ($s0)
  /* 00CEFC 8000C2FC 02602025 */        or $a0, $s3, $zero
  /* 00CF00 8000C300 26250001 */     addiu $a1, $s1, 1
  /* 00CF04 8000C304 54600006 */      bnel $v1, $zero, .L8000C320
  /* 00CF08 8000C308 C46A0014 */      lwc1 $f10, 0x14($v1)
  /* 00CF0C 8000C30C 0C00239E */       jal func_80008E78
  /* 00CF10 8000C310 30A500FF */      andi $a1, $a1, 0xff
  /* 00CF14 8000C314 AE020000 */        sw $v0, ($s0)
  /* 00CF18 8000C318 00401825 */        or $v1, $v0, $zero
  /* 00CF1C 8000C31C C46A0014 */      lwc1 $f10, 0x14($v1)
  .L8000C320:
  /* 00CF20 8000C320 4616A032 */    c.eq.s $f20, $f22
  /* 00CF24 8000C324 240A0002 */     addiu $t2, $zero, 2
  /* 00CF28 8000C328 E46A0010 */      swc1 $f10, 0x10($v1)
  /* 00CF2C 8000C32C 8E780070 */        lw $t8, 0x70($s3)
  /* 00CF30 8000C330 8E190000 */        lw $t9, ($s0)
  /* 00CF34 8000C334 C7120000 */      lwc1 $f18, ($t8)
  /* 00CF38 8000C338 E7320014 */      swc1 $f18, 0x14($t9)
  /* 00CF3C 8000C33C 8E680070 */        lw $t0, 0x70($s3)
  /* 00CF40 8000C340 25090004 */     addiu $t1, $t0, 4
  /* 00CF44 8000C344 AE690070 */        sw $t1, 0x70($s3)
  /* 00CF48 8000C348 8E0B0000 */        lw $t3, ($s0)
  /* 00CF4C 8000C34C 45010007 */      bc1t .L8000C36C
  /* 00CF50 8000C350 A16A0005 */        sb $t2, 5($t3)
  /* 00CF54 8000C354 8E030000 */        lw $v1, ($s0)
  /* 00CF58 8000C358 C4640014 */      lwc1 $f4, 0x14($v1)
  /* 00CF5C 8000C35C C4660010 */      lwc1 $f6, 0x10($v1)
  /* 00CF60 8000C360 46062201 */     sub.s $f8, $f4, $f6
  /* 00CF64 8000C364 46144403 */     div.s $f16, $f8, $f20
  /* 00CF68 8000C368 E4700018 */      swc1 $f16, 0x18($v1)
  .L8000C36C:
  /* 00CF6C 8000C36C C66A0074 */      lwc1 $f10, 0x74($s3)
  /* 00CF70 8000C370 C6640078 */      lwc1 $f4, 0x78($s3)
  /* 00CF74 8000C374 8E0C0000 */        lw $t4, ($s0)
  /* 00CF78 8000C378 46005487 */     neg.s $f18, $f10
  /* 00CF7C 8000C37C 46049181 */     sub.s $f6, $f18, $f4
  /* 00CF80 8000C380 E586000C */      swc1 $f6, 0xc($t4)
  /* 00CF84 8000C384 8E0D0000 */        lw $t5, ($s0)
  /* 00CF88 8000C388 E5B6001C */      swc1 $f22, 0x1c($t5)
  .L8000C38C:
  /* 00CF8C 8000C38C 26310001 */     addiu $s1, $s1, 1
  /* 00CF90 8000C390 1634FFD4 */       bne $s1, $s4, .L8000C2E4
  /* 00CF94 8000C394 00129042 */       srl $s2, $s2, 1
  .L8000C398:
  /* 00CF98 8000C398 24010003 */     addiu $at, $zero, 3
  /* 00CF9C 8000C39C 16E10004 */       bne $s7, $at, .L8000C3B0
  /* 00CFA0 8000C3A0 00000000 */       nop 
  /* 00CFA4 8000C3A4 C6680074 */      lwc1 $f8, 0x74($s3)
  /* 00CFA8 8000C3A8 46144400 */     add.s $f16, $f8, $f20
  /* 00CFAC 8000C3AC E6700074 */      swc1 $f16, 0x74($s3)
  .L8000C3B0:
  /* 00CFB0 8000C3B0 1000018A */         b .L8000C9DC
  /* 00CFB4 8000C3B4 C6600074 */      lwc1 $f0, 0x74($s3)
  glabel jtgt_8000C3B8
  /* 00CFB8 8000C3B8 320E7FFF */      andi $t6, $s0, 0x7fff
  /* 00CFBC 8000C3BC 448E5000 */      mtc1 $t6, $f10
  /* 00CFC0 8000C3C0 001091C0 */       sll $s2, $s0, 7
  /* 00CFC4 8000C3C4 05C10005 */      bgez $t6, .L8000C3DC
  /* 00CFC8 8000C3C8 46805520 */   cvt.s.w $f20, $f10
  /* 00CFCC 8000C3CC 3C014F80 */       lui $at, (0x4F800000 >> 16) # 4294967300.0
  /* 00CFD0 8000C3D0 44819000 */      mtc1 $at, $f18 # 4294967300.0 to cop1
  /* 00CFD4 8000C3D4 00000000 */       nop 
  /* 00CFD8 8000C3D8 4612A500 */     add.s $f20, $f20, $f18
  .L8000C3DC:
  /* 00CFDC 8000C3DC 246F0004 */     addiu $t7, $v1, 4
  /* 00CFE0 8000C3E0 AE6F0070 */        sw $t7, 0x70($s3)
  /* 00CFE4 8000C3E4 00129582 */       srl $s2, $s2, 0x16
  /* 00CFE8 8000C3E8 00008825 */        or $s1, $zero, $zero
  .L8000C3EC:
  /* 00CFEC 8000C3EC 12400030 */      beqz $s2, .L8000C4B0
  /* 00CFF0 8000C3F0 32580001 */      andi $t8, $s2, 1
  /* 00CFF4 8000C3F4 1300002B */      beqz $t8, .L8000C4A4
  /* 00CFF8 8000C3F8 0011C880 */       sll $t9, $s1, 2
  /* 00CFFC 8000C3FC 02B98021 */      addu $s0, $s5, $t9
  /* 00D000 8000C400 8E030000 */        lw $v1, ($s0)
  /* 00D004 8000C404 02602025 */        or $a0, $s3, $zero
  /* 00D008 8000C408 26250001 */     addiu $a1, $s1, 1
  /* 00D00C 8000C40C 54600006 */      bnel $v1, $zero, .L8000C428
  /* 00D010 8000C410 C4640014 */      lwc1 $f4, 0x14($v1)
  /* 00D014 8000C414 0C00239E */       jal func_80008E78
  /* 00D018 8000C418 30A500FF */      andi $a1, $a1, 0xff
  /* 00D01C 8000C41C AE020000 */        sw $v0, ($s0)
  /* 00D020 8000C420 00401825 */        or $v1, $v0, $zero
  /* 00D024 8000C424 C4640014 */      lwc1 $f4, 0x14($v1)
  .L8000C428:
  /* 00D028 8000C428 4616A032 */    c.eq.s $f20, $f22
  /* 00D02C 8000C42C E4640010 */      swc1 $f4, 0x10($v1)
  /* 00D030 8000C430 8E680070 */        lw $t0, 0x70($s3)
  /* 00D034 8000C434 8E090000 */        lw $t1, ($s0)
  /* 00D038 8000C438 C5060000 */      lwc1 $f6, ($t0)
  /* 00D03C 8000C43C E5260014 */      swc1 $f6, 0x14($t1)
  /* 00D040 8000C440 8E6A0070 */        lw $t2, 0x70($s3)
  /* 00D044 8000C444 254B0004 */     addiu $t3, $t2, 4
  /* 00D048 8000C448 AE6B0070 */        sw $t3, 0x70($s3)
  /* 00D04C 8000C44C 8E030000 */        lw $v1, ($s0)
  /* 00D050 8000C450 C468001C */      lwc1 $f8, 0x1c($v1)
  /* 00D054 8000C454 E4680018 */      swc1 $f8, 0x18($v1)
  /* 00D058 8000C458 8E6C0070 */        lw $t4, 0x70($s3)
  /* 00D05C 8000C45C 8E0D0000 */        lw $t5, ($s0)
  /* 00D060 8000C460 C5900000 */      lwc1 $f16, ($t4)
  /* 00D064 8000C464 E5B0001C */      swc1 $f16, 0x1c($t5)
  /* 00D068 8000C468 8E6E0070 */        lw $t6, 0x70($s3)
  /* 00D06C 8000C46C 25CF0004 */     addiu $t7, $t6, 4
  /* 00D070 8000C470 AE6F0070 */        sw $t7, 0x70($s3)
  /* 00D074 8000C474 8E180000 */        lw $t8, ($s0)
  /* 00D078 8000C478 45010004 */      bc1t .L8000C48C
  /* 00D07C 8000C47C A3160005 */        sb $s6, 5($t8)
  /* 00D080 8000C480 4614C283 */     div.s $f10, $f24, $f20
  /* 00D084 8000C484 8E190000 */        lw $t9, ($s0)
  /* 00D088 8000C488 E72A0008 */      swc1 $f10, 8($t9)
  .L8000C48C:
  /* 00D08C 8000C48C C6720074 */      lwc1 $f18, 0x74($s3)
  /* 00D090 8000C490 C6660078 */      lwc1 $f6, 0x78($s3)
  /* 00D094 8000C494 8E080000 */        lw $t0, ($s0)
  /* 00D098 8000C498 46009107 */     neg.s $f4, $f18
  /* 00D09C 8000C49C 46062201 */     sub.s $f8, $f4, $f6
  /* 00D0A0 8000C4A0 E508000C */      swc1 $f8, 0xc($t0)
  .L8000C4A4:
  /* 00D0A4 8000C4A4 26310001 */     addiu $s1, $s1, 1
  /* 00D0A8 8000C4A8 1634FFD0 */       bne $s1, $s4, .L8000C3EC
  /* 00D0AC 8000C4AC 00129042 */       srl $s2, $s2, 1
  .L8000C4B0:
  /* 00D0B0 8000C4B0 24010005 */     addiu $at, $zero, 5
  /* 00D0B4 8000C4B4 16E10004 */       bne $s7, $at, .L8000C4C8
  /* 00D0B8 8000C4B8 00000000 */       nop 
  /* 00D0BC 8000C4BC C6700074 */      lwc1 $f16, 0x74($s3)
  /* 00D0C0 8000C4C0 46148280 */     add.s $f10, $f16, $f20
  /* 00D0C4 8000C4C4 E66A0074 */      swc1 $f10, 0x74($s3)
  .L8000C4C8:
  /* 00D0C8 8000C4C8 10000144 */         b .L8000C9DC
  /* 00D0CC 8000C4CC C6600074 */      lwc1 $f0, 0x74($s3)
  glabel jtgt_8000C4D0
  /* 00D0D0 8000C4D0 001091C0 */       sll $s2, $s0, 7
  /* 00D0D4 8000C4D4 24690004 */     addiu $t1, $v1, 4
  /* 00D0D8 8000C4D8 AE690070 */        sw $t1, 0x70($s3)
  /* 00D0DC 8000C4DC 00129582 */       srl $s2, $s2, 0x16
  /* 00D0E0 8000C4E0 00008825 */        or $s1, $zero, $zero
  .L8000C4E4:
  /* 00D0E4 8000C4E4 12400016 */      beqz $s2, .L8000C540
  /* 00D0E8 8000C4E8 324A0001 */      andi $t2, $s2, 1
  /* 00D0EC 8000C4EC 11400011 */      beqz $t2, .L8000C534
  /* 00D0F0 8000C4F0 00115880 */       sll $t3, $s1, 2
  /* 00D0F4 8000C4F4 02AB8021 */      addu $s0, $s5, $t3
  /* 00D0F8 8000C4F8 8E030000 */        lw $v1, ($s0)
  /* 00D0FC 8000C4FC 02602025 */        or $a0, $s3, $zero
  /* 00D100 8000C500 26250001 */     addiu $a1, $s1, 1
  /* 00D104 8000C504 54600006 */      bnel $v1, $zero, .L8000C520
  /* 00D108 8000C508 8E6C0070 */        lw $t4, 0x70($s3)
  /* 00D10C 8000C50C 0C00239E */       jal func_80008E78
  /* 00D110 8000C510 30A500FF */      andi $a1, $a1, 0xff
  /* 00D114 8000C514 AE020000 */        sw $v0, ($s0)
  /* 00D118 8000C518 00401825 */        or $v1, $v0, $zero
  /* 00D11C 8000C51C 8E6C0070 */        lw $t4, 0x70($s3)
  .L8000C520:
  /* 00D120 8000C520 C5920000 */      lwc1 $f18, ($t4)
  /* 00D124 8000C524 E472001C */      swc1 $f18, 0x1c($v1)
  /* 00D128 8000C528 8E6D0070 */        lw $t5, 0x70($s3)
  /* 00D12C 8000C52C 25AE0004 */     addiu $t6, $t5, 4
  /* 00D130 8000C530 AE6E0070 */        sw $t6, 0x70($s3)
  .L8000C534:
  /* 00D134 8000C534 26310001 */     addiu $s1, $s1, 1
  /* 00D138 8000C538 1634FFEA */       bne $s1, $s4, .L8000C4E4
  /* 00D13C 8000C53C 00129042 */       srl $s2, $s2, 1
  .L8000C540:
  /* 00D140 8000C540 10000126 */         b .L8000C9DC
  /* 00D144 8000C544 C6600074 */      lwc1 $f0, 0x74($s3)
  glabel jtgt_8000C548
  /* 00D148 8000C548 320F7FFF */      andi $t7, $s0, 0x7fff
  /* 00D14C 8000C54C 448F3000 */      mtc1 $t7, $f6
  /* 00D150 8000C550 C6640074 */      lwc1 $f4, 0x74($s3)
  /* 00D154 8000C554 05E10005 */      bgez $t7, .L8000C56C
  /* 00D158 8000C558 46803220 */   cvt.s.w $f8, $f6
  /* 00D15C 8000C55C 3C014F80 */       lui $at, (0x4F800000 >> 16) # 4294967300.0
  /* 00D160 8000C560 44818000 */      mtc1 $at, $f16 # 4294967300.0 to cop1
  /* 00D164 8000C564 00000000 */       nop 
  /* 00D168 8000C568 46104200 */     add.s $f8, $f8, $f16
  .L8000C56C:
  /* 00D16C 8000C56C 46082280 */     add.s $f10, $f4, $f8
  /* 00D170 8000C570 24780004 */     addiu $t8, $v1, 4
  /* 00D174 8000C574 AE780070 */        sw $t8, 0x70($s3)
  /* 00D178 8000C578 E66A0074 */      swc1 $f10, 0x74($s3)
  /* 00D17C 8000C57C 10000117 */         b .L8000C9DC
  /* 00D180 8000C580 C6600074 */      lwc1 $f0, 0x74($s3)
  glabel jtgt_8000C584
  /* 00D184 8000C584 32197FFF */      andi $t9, $s0, 0x7fff
  /* 00D188 8000C588 44999000 */      mtc1 $t9, $f18
  /* 00D18C 8000C58C 001091C0 */       sll $s2, $s0, 7
  /* 00D190 8000C590 07210005 */      bgez $t9, .L8000C5A8
  /* 00D194 8000C594 46809520 */   cvt.s.w $f20, $f18
  /* 00D198 8000C598 3C014F80 */       lui $at, (0x4F800000 >> 16) # 4294967300.0
  /* 00D19C 8000C59C 44813000 */      mtc1 $at, $f6 # 4294967300.0 to cop1
  /* 00D1A0 8000C5A0 00000000 */       nop 
  /* 00D1A4 8000C5A4 4606A500 */     add.s $f20, $f20, $f6
  .L8000C5A8:
  /* 00D1A8 8000C5A8 24680004 */     addiu $t0, $v1, 4
  /* 00D1AC 8000C5AC AE680070 */        sw $t0, 0x70($s3)
  /* 00D1B0 8000C5B0 00129582 */       srl $s2, $s2, 0x16
  /* 00D1B4 8000C5B4 00008825 */        or $s1, $zero, $zero
  .L8000C5B8:
  /* 00D1B8 8000C5B8 12400026 */      beqz $s2, .L8000C654
  /* 00D1BC 8000C5BC 32490001 */      andi $t1, $s2, 1
  /* 00D1C0 8000C5C0 11200021 */      beqz $t1, .L8000C648
  /* 00D1C4 8000C5C4 00115080 */       sll $t2, $s1, 2
  /* 00D1C8 8000C5C8 02AA8021 */      addu $s0, $s5, $t2
  /* 00D1CC 8000C5CC 8E030000 */        lw $v1, ($s0)
  /* 00D1D0 8000C5D0 02602025 */        or $a0, $s3, $zero
  /* 00D1D4 8000C5D4 26250001 */     addiu $a1, $s1, 1
  /* 00D1D8 8000C5D8 54600006 */      bnel $v1, $zero, .L8000C5F4
  /* 00D1DC 8000C5DC C4700014 */      lwc1 $f16, 0x14($v1)
  /* 00D1E0 8000C5E0 0C00239E */       jal func_80008E78
  /* 00D1E4 8000C5E4 30A500FF */      andi $a1, $a1, 0xff
  /* 00D1E8 8000C5E8 AE020000 */        sw $v0, ($s0)
  /* 00D1EC 8000C5EC 00401825 */        or $v1, $v0, $zero
  /* 00D1F0 8000C5F0 C4700014 */      lwc1 $f16, 0x14($v1)
  .L8000C5F4:
  /* 00D1F4 8000C5F4 240F0001 */     addiu $t7, $zero, 1
  /* 00D1F8 8000C5F8 E4700010 */      swc1 $f16, 0x10($v1)
  /* 00D1FC 8000C5FC 8E6B0070 */        lw $t3, 0x70($s3)
  /* 00D200 8000C600 8E0C0000 */        lw $t4, ($s0)
  /* 00D204 8000C604 C5640000 */      lwc1 $f4, ($t3)
  /* 00D208 8000C608 E5840014 */      swc1 $f4, 0x14($t4)
  /* 00D20C 8000C60C 8E6D0070 */        lw $t5, 0x70($s3)
  /* 00D210 8000C610 25AE0004 */     addiu $t6, $t5, 4
  /* 00D214 8000C614 AE6E0070 */        sw $t6, 0x70($s3)
  /* 00D218 8000C618 8E180000 */        lw $t8, ($s0)
  /* 00D21C 8000C61C A30F0005 */        sb $t7, 5($t8)
  /* 00D220 8000C620 8E190000 */        lw $t9, ($s0)
  /* 00D224 8000C624 E7340008 */      swc1 $f20, 8($t9)
  /* 00D228 8000C628 C6680074 */      lwc1 $f8, 0x74($s3)
  /* 00D22C 8000C62C C6720078 */      lwc1 $f18, 0x78($s3)
  /* 00D230 8000C630 8E080000 */        lw $t0, ($s0)
  /* 00D234 8000C634 46004287 */     neg.s $f10, $f8
  /* 00D238 8000C638 46125181 */     sub.s $f6, $f10, $f18
  /* 00D23C 8000C63C E506000C */      swc1 $f6, 0xc($t0)
  /* 00D240 8000C640 8E090000 */        lw $t1, ($s0)
  /* 00D244 8000C644 E536001C */      swc1 $f22, 0x1c($t1)
  .L8000C648:
  /* 00D248 8000C648 26310001 */     addiu $s1, $s1, 1
  /* 00D24C 8000C64C 1634FFDA */       bne $s1, $s4, .L8000C5B8
  /* 00D250 8000C650 00129042 */       srl $s2, $s2, 1
  .L8000C654:
  /* 00D254 8000C654 2401000A */     addiu $at, $zero, 0xa
  /* 00D258 8000C658 16E10004 */       bne $s7, $at, .L8000C66C
  /* 00D25C 8000C65C 00000000 */       nop 
  /* 00D260 8000C660 C6700074 */      lwc1 $f16, 0x74($s3)
  /* 00D264 8000C664 46148100 */     add.s $f4, $f16, $f20
  /* 00D268 8000C668 E6640074 */      swc1 $f4, 0x74($s3)
  .L8000C66C:
  /* 00D26C 8000C66C 100000DB */         b .L8000C9DC
  /* 00D270 8000C670 C6600074 */      lwc1 $f0, 0x74($s3)
  glabel jtgt_8000C674
  /* 00D274 8000C674 C6600074 */      lwc1 $f0, 0x74($s3)
  /* 00D278 8000C678 246A0004 */     addiu $t2, $v1, 4
  /* 00D27C 8000C67C AE6A0070 */        sw $t2, 0x70($s3)
  /* 00D280 8000C680 8D4C0000 */        lw $t4, ($t2)
  /* 00D284 8000C684 8E6D0004 */        lw $t5, 4($s3)
  /* 00D288 8000C688 46000007 */     neg.s $f0, $f0
  /* 00D28C 8000C68C AE6C0070 */        sw $t4, 0x70($s3)
  /* 00D290 8000C690 E660007C */      swc1 $f0, 0x7c($s3)
  /* 00D294 8000C694 E5A00078 */      swc1 $f0, 0x78($t5)
  /* 00D298 8000C698 926E0055 */       lbu $t6, 0x55($s3)
  /* 00D29C 8000C69C 11C00009 */      beqz $t6, .L8000C6C4
  /* 00D2A0 8000C6A0 00000000 */       nop 
  /* 00D2A4 8000C6A4 8E6F0004 */        lw $t7, 4($s3)
  /* 00D2A8 8000C6A8 02602025 */        or $a0, $s3, $zero
  /* 00D2AC 8000C6AC 2405FFFE */     addiu $a1, $zero, -2
  /* 00D2B0 8000C6B0 8DE20080 */        lw $v0, 0x80($t7)
  /* 00D2B4 8000C6B4 10400003 */      beqz $v0, .L8000C6C4
  /* 00D2B8 8000C6B8 00000000 */       nop 
  /* 00D2BC 8000C6BC 0040F809 */      jalr $v0
  /* 00D2C0 8000C6C0 24060000 */     addiu $a2, $zero, 0
  .L8000C6C4:
  /* 00D2C4 8000C6C4 100000C5 */         b .L8000C9DC
  /* 00D2C8 8000C6C8 C6600074 */      lwc1 $f0, 0x74($s3)
  glabel jtgt_8000C6CC
  /* 00D2CC 8000C6CC 24780004 */     addiu $t8, $v1, 4
  /* 00D2D0 8000C6D0 92690055 */       lbu $t1, 0x55($s3)
  /* 00D2D4 8000C6D4 AE780070 */        sw $t8, 0x70($s3)
  /* 00D2D8 8000C6D8 8F080000 */        lw $t0, ($t8)
  /* 00D2DC 8000C6DC 11200009 */      beqz $t1, .L8000C704
  /* 00D2E0 8000C6E0 AE680070 */        sw $t0, 0x70($s3)
  /* 00D2E4 8000C6E4 8E6A0004 */        lw $t2, 4($s3)
  /* 00D2E8 8000C6E8 02602025 */        or $a0, $s3, $zero
  /* 00D2EC 8000C6EC 2405FFFE */     addiu $a1, $zero, -2
  /* 00D2F0 8000C6F0 8D420080 */        lw $v0, 0x80($t2)
  /* 00D2F4 8000C6F4 10400003 */      beqz $v0, .L8000C704
  /* 00D2F8 8000C6F8 00000000 */       nop 
  /* 00D2FC 8000C6FC 0040F809 */      jalr $v0
  /* 00D300 8000C700 24060000 */     addiu $a2, $zero, 0
  .L8000C704:
  /* 00D304 8000C704 100000B5 */         b .L8000C9DC
  /* 00D308 8000C708 C6600074 */      lwc1 $f0, 0x74($s3)
  glabel jtgt_8000C70C
  /* 00D30C 8000C70C 320B7FFF */      andi $t3, $s0, 0x7fff
  /* 00D310 8000C710 448B4000 */      mtc1 $t3, $f8
  /* 00D314 8000C714 001091C0 */       sll $s2, $s0, 7
  /* 00D318 8000C718 05610005 */      bgez $t3, .L8000C730
  /* 00D31C 8000C71C 46804520 */   cvt.s.w $f20, $f8
  /* 00D320 8000C720 3C014F80 */       lui $at, (0x4F800000 >> 16) # 4294967300.0
  /* 00D324 8000C724 44815000 */      mtc1 $at, $f10 # 4294967300.0 to cop1
  /* 00D328 8000C728 00000000 */       nop 
  /* 00D32C 8000C72C 460AA500 */     add.s $f20, $f20, $f10
  .L8000C730:
  /* 00D330 8000C730 246C0004 */     addiu $t4, $v1, 4
  /* 00D334 8000C734 AE6C0070 */        sw $t4, 0x70($s3)
  /* 00D338 8000C738 00129582 */       srl $s2, $s2, 0x16
  /* 00D33C 8000C73C 00008825 */        or $s1, $zero, $zero
  .L8000C740:
  /* 00D340 8000C740 12400013 */      beqz $s2, .L8000C790
  /* 00D344 8000C744 324D0001 */      andi $t5, $s2, 1
  /* 00D348 8000C748 11A0000E */      beqz $t5, .L8000C784
  /* 00D34C 8000C74C 00117080 */       sll $t6, $s1, 2
  /* 00D350 8000C750 02AE8021 */      addu $s0, $s5, $t6
  /* 00D354 8000C754 8E030000 */        lw $v1, ($s0)
  /* 00D358 8000C758 02602025 */        or $a0, $s3, $zero
  /* 00D35C 8000C75C 26250001 */     addiu $a1, $s1, 1
  /* 00D360 8000C760 54600006 */      bnel $v1, $zero, .L8000C77C
  /* 00D364 8000C764 C472000C */      lwc1 $f18, 0xc($v1)
  /* 00D368 8000C768 0C00239E */       jal func_80008E78
  /* 00D36C 8000C76C 30A500FF */      andi $a1, $a1, 0xff
  /* 00D370 8000C770 AE020000 */        sw $v0, ($s0)
  /* 00D374 8000C774 00401825 */        or $v1, $v0, $zero
  /* 00D378 8000C778 C472000C */      lwc1 $f18, 0xc($v1)
  .L8000C77C:
  /* 00D37C 8000C77C 46149180 */     add.s $f6, $f18, $f20
  /* 00D380 8000C780 E466000C */      swc1 $f6, 0xc($v1)
  .L8000C784:
  /* 00D384 8000C784 26310001 */     addiu $s1, $s1, 1
  /* 00D388 8000C788 1634FFED */       bne $s1, $s4, .L8000C740
  /* 00D38C 8000C78C 00129042 */       srl $s2, $s2, 1
  .L8000C790:
  /* 00D390 8000C790 10000092 */         b .L8000C9DC
  /* 00D394 8000C794 C6600074 */      lwc1 $f0, 0x74($s3)
  glabel jtgt_8000C798
  /* 00D398 8000C798 246F0004 */     addiu $t7, $v1, 4
  /* 00D39C 8000C79C AE6F0070 */        sw $t7, 0x70($s3)
  /* 00D3A0 8000C7A0 8FB8008C */        lw $t8, 0x8c($sp)
  /* 00D3A4 8000C7A4 02602025 */        or $a0, $s3, $zero
  /* 00D3A8 8000C7A8 57000005 */      bnel $t8, $zero, .L8000C7C0
  /* 00D3AC 8000C7AC 8E790070 */        lw $t9, 0x70($s3)
  /* 00D3B0 8000C7B0 0C00239E */       jal func_80008E78
  /* 00D3B4 8000C7B4 24050004 */     addiu $a1, $zero, 4
  /* 00D3B8 8000C7B8 AFA2008C */        sw $v0, 0x8c($sp)
  /* 00D3BC 8000C7BC 8E790070 */        lw $t9, 0x70($s3)
  .L8000C7C0:
  /* 00D3C0 8000C7C0 8FA9008C */        lw $t1, 0x8c($sp)
  /* 00D3C4 8000C7C4 8F280000 */        lw $t0, ($t9)
  /* 00D3C8 8000C7C8 AD280020 */        sw $t0, 0x20($t1)
  /* 00D3CC 8000C7CC 8E6A0070 */        lw $t2, 0x70($s3)
  /* 00D3D0 8000C7D0 C6600074 */      lwc1 $f0, 0x74($s3)
  /* 00D3D4 8000C7D4 254B0004 */     addiu $t3, $t2, 4
  /* 00D3D8 8000C7D8 10000080 */         b .L8000C9DC
  /* 00D3DC 8000C7DC AE6B0070 */        sw $t3, 0x70($s3)
  glabel jtgt_8000C7E0
  /* 00D3E0 8000C7E0 8E62006C */        lw $v0, 0x6c($s3)
  /* 00D3E4 8000C7E4 C6600074 */      lwc1 $f0, 0x74($s3)
  /* 00D3E8 8000C7E8 5040000E */      beql $v0, $zero, .L8000C824
  /* 00D3EC 8000C7EC 8E6D0004 */        lw $t5, 4($s3)
  /* 00D3F0 8000C7F0 904C0005 */       lbu $t4, 5($v0)
  .L8000C7F4:
  /* 00D3F4 8000C7F4 51800008 */      beql $t4, $zero, .L8000C818
  /* 00D3F8 8000C7F8 8C420000 */        lw $v0, ($v0)
  /* 00D3FC 8000C7FC C6640078 */      lwc1 $f4, 0x78($s3)
  /* 00D400 8000C800 C450000C */      lwc1 $f16, 0xc($v0)
  /* 00D404 8000C804 46002200 */     add.s $f8, $f4, $f0
  /* 00D408 8000C808 46088280 */     add.s $f10, $f16, $f8
  /* 00D40C 8000C80C E44A000C */      swc1 $f10, 0xc($v0)
  /* 00D410 8000C810 C6600074 */      lwc1 $f0, 0x74($s3)
  /* 00D414 8000C814 8C420000 */        lw $v0, ($v0)
  .L8000C818:
  /* 00D418 8000C818 5440FFF6 */      bnel $v0, $zero, .L8000C7F4
  /* 00D41C 8000C81C 904C0005 */       lbu $t4, 5($v0)
  /* 00D420 8000C820 8E6D0004 */        lw $t5, 4($s3)
  .L8000C824:
  /* 00D424 8000C824 E660007C */      swc1 $f0, 0x7c($s3)
  /* 00D428 8000C828 3C018004 */       lui $at, %hi(D_8003DE34)
  /* 00D42C 8000C82C E5A00078 */      swc1 $f0, 0x78($t5)
  /* 00D430 8000C830 926E0055 */       lbu $t6, 0x55($s3)
  /* 00D434 8000C834 C432DE34 */      lwc1 $f18, %lo(D_8003DE34)($at)
  /* 00D438 8000C838 11C0006C */      beqz $t6, .L8000C9EC
  /* 00D43C 8000C83C E6720074 */      swc1 $f18, 0x74($s3)
  /* 00D440 8000C840 8E6F0004 */        lw $t7, 4($s3)
  /* 00D444 8000C844 02602025 */        or $a0, $s3, $zero
  /* 00D448 8000C848 2405FFFF */     addiu $a1, $zero, -1
  /* 00D44C 8000C84C 8DE20080 */        lw $v0, 0x80($t7)
  /* 00D450 8000C850 50400067 */      beql $v0, $zero, .L8000C9F0
  /* 00D454 8000C854 8FBF0054 */        lw $ra, 0x54($sp)
  /* 00D458 8000C858 0040F809 */      jalr $v0
  /* 00D45C 8000C85C 24060000 */     addiu $a2, $zero, 0
  /* 00D460 8000C860 10000063 */         b .L8000C9F0
  /* 00D464 8000C864 8FBF0054 */        lw $ra, 0x54($sp)
  glabel jtgt_8000C868
  /* 00D468 8000C868 0010C1C0 */       sll $t8, $s0, 7
  /* 00D46C 8000C86C 0018CD82 */       srl $t9, $t8, 0x16
  /* 00D470 8000C870 A2790054 */        sb $t9, 0x54($s3)
  /* 00D474 8000C874 8C680000 */        lw $t0, ($v1)
  /* 00D478 8000C878 C6660074 */      lwc1 $f6, 0x74($s3)
  /* 00D47C 8000C87C 3C014F80 */       lui $at, (0x4F800000 >> 16) # 4294967300.0
  /* 00D480 8000C880 31097FFF */      andi $t1, $t0, 0x7fff
  /* 00D484 8000C884 44892000 */      mtc1 $t1, $f4
  /* 00D488 8000C888 05210004 */      bgez $t1, .L8000C89C
  /* 00D48C 8000C88C 46802420 */   cvt.s.w $f16, $f4
  /* 00D490 8000C890 44814000 */      mtc1 $at, $f8 # 4294967300.0 to cop1
  /* 00D494 8000C894 00000000 */       nop 
  /* 00D498 8000C898 46088400 */     add.s $f16, $f16, $f8
  .L8000C89C:
  /* 00D49C 8000C89C 46103280 */     add.s $f10, $f6, $f16
  /* 00D4A0 8000C8A0 246A0004 */     addiu $t2, $v1, 4
  /* 00D4A4 8000C8A4 AE6A0070 */        sw $t2, 0x70($s3)
  /* 00D4A8 8000C8A8 E66A0074 */      swc1 $f10, 0x74($s3)
  /* 00D4AC 8000C8AC 1000004B */         b .L8000C9DC
  /* 00D4B0 8000C8B0 C6600074 */      lwc1 $f0, 0x74($s3)
  glabel jtgt_8000C8B4
  /* 00D4B4 8000C8B4 8E6B0004 */        lw $t3, 4($s3)
  /* 00D4B8 8000C8B8 02602025 */        or $a0, $s3, $zero
  /* 00D4BC 8000C8BC 8D620080 */        lw $v0, 0x80($t3)
  /* 00D4C0 8000C8C0 50400012 */      beql $v0, $zero, .L8000C90C
  /* 00D4C4 8000C8C4 320D7FFF */      andi $t5, $s0, 0x7fff
  /* 00D4C8 8000C8C8 001019C0 */       sll $v1, $s0, 7
  /* 00D4CC 8000C8CC 00031D82 */       srl $v1, $v1, 0x16
  /* 00D4D0 8000C8D0 306C00FF */      andi $t4, $v1, 0xff
  /* 00D4D4 8000C8D4 448C9000 */      mtc1 $t4, $f18
  /* 00D4D8 8000C8D8 00032A02 */       srl $a1, $v1, 8
  /* 00D4DC 8000C8DC 05810005 */      bgez $t4, .L8000C8F4
  /* 00D4E0 8000C8E0 468094A0 */   cvt.s.w $f18, $f18
  /* 00D4E4 8000C8E4 3C014F80 */       lui $at, (0x4F800000 >> 16) # 4294967300.0
  /* 00D4E8 8000C8E8 44812000 */      mtc1 $at, $f4 # 4294967300.0 to cop1
  /* 00D4EC 8000C8EC 00000000 */       nop 
  /* 00D4F0 8000C8F0 46049480 */     add.s $f18, $f18, $f4
  .L8000C8F4:
  /* 00D4F4 8000C8F4 44069000 */      mfc1 $a2, $f18
  /* 00D4F8 8000C8F8 0040F809 */      jalr $v0
  /* 00D4FC 8000C8FC 00000000 */       nop 
  /* 00D500 8000C900 8E630070 */        lw $v1, 0x70($s3)
  /* 00D504 8000C904 8C700000 */        lw $s0, ($v1)
  /* 00D508 8000C908 320D7FFF */      andi $t5, $s0, 0x7fff
  .L8000C90C:
  /* 00D50C 8000C90C 448D3000 */      mtc1 $t5, $f6
  /* 00D510 8000C910 C6680074 */      lwc1 $f8, 0x74($s3)
  /* 00D514 8000C914 05A10005 */      bgez $t5, .L8000C92C
  /* 00D518 8000C918 46803420 */   cvt.s.w $f16, $f6
  /* 00D51C 8000C91C 3C014F80 */       lui $at, (0x4F800000 >> 16) # 4294967300.0
  /* 00D520 8000C920 44815000 */      mtc1 $at, $f10 # 4294967300.0 to cop1
  /* 00D524 8000C924 00000000 */       nop 
  /* 00D528 8000C928 460A8400 */     add.s $f16, $f16, $f10
  .L8000C92C:
  /* 00D52C 8000C92C 46104480 */     add.s $f18, $f8, $f16
  /* 00D530 8000C930 246E0004 */     addiu $t6, $v1, 4
  /* 00D534 8000C934 AE6E0070 */        sw $t6, 0x70($s3)
  /* 00D538 8000C938 E6720074 */      swc1 $f18, 0x74($s3)
  /* 00D53C 8000C93C 10000027 */         b .L8000C9DC
  /* 00D540 8000C940 C6600074 */      lwc1 $f0, 0x74($s3)
  glabel jtgt_8000C944
  /* 00D544 8000C944 320F7FFF */      andi $t7, $s0, 0x7fff
  /* 00D548 8000C948 448F3000 */      mtc1 $t7, $f6
  /* 00D54C 8000C94C 001091C0 */       sll $s2, $s0, 7
  /* 00D550 8000C950 00129582 */       srl $s2, $s2, 0x16
  /* 00D554 8000C954 C6640074 */      lwc1 $f4, 0x74($s3)
  /* 00D558 8000C958 05E10005 */      bgez $t7, .L8000C970
  /* 00D55C 8000C95C 468032A0 */   cvt.s.w $f10, $f6
  /* 00D560 8000C960 3C014F80 */       lui $at, (0x4F800000 >> 16) # 4294967300.0
  /* 00D564 8000C964 44814000 */      mtc1 $at, $f8 # 4294967300.0 to cop1
  /* 00D568 8000C968 00000000 */       nop 
  /* 00D56C 8000C96C 46085280 */     add.s $f10, $f10, $f8
  .L8000C970:
  /* 00D570 8000C970 460A2400 */     add.s $f16, $f4, $f10
  /* 00D574 8000C974 24780004 */     addiu $t8, $v1, 4
  /* 00D578 8000C978 AE780070 */        sw $t8, 0x70($s3)
  /* 00D57C 8000C97C 24110004 */     addiu $s1, $zero, 4
  /* 00D580 8000C980 E6700074 */      swc1 $f16, 0x74($s3)
  .L8000C984:
  /* 00D584 8000C984 12400012 */      beqz $s2, .L8000C9D0
  /* 00D588 8000C988 32590001 */      andi $t9, $s2, 1
  /* 00D58C 8000C98C 5320000E */      beql $t9, $zero, .L8000C9C8
  /* 00D590 8000C990 26310001 */     addiu $s1, $s1, 1
  /* 00D594 8000C994 8E680004 */        lw $t0, 4($s3)
  /* 00D598 8000C998 02602025 */        or $a0, $s3, $zero
  /* 00D59C 8000C99C 8D020080 */        lw $v0, 0x80($t0)
  /* 00D5A0 8000C9A0 50400006 */      beql $v0, $zero, .L8000C9BC
  /* 00D5A4 8000C9A4 8E6A0070 */        lw $t2, 0x70($s3)
  /* 00D5A8 8000C9A8 8E690070 */        lw $t1, 0x70($s3)
  /* 00D5AC 8000C9AC 02202825 */        or $a1, $s1, $zero
  /* 00D5B0 8000C9B0 0040F809 */      jalr $v0
  /* 00D5B4 8000C9B4 8D260000 */        lw $a2, ($t1)
  /* 00D5B8 8000C9B8 8E6A0070 */        lw $t2, 0x70($s3)
  .L8000C9BC:
  /* 00D5BC 8000C9BC 254B0004 */     addiu $t3, $t2, 4
  /* 00D5C0 8000C9C0 AE6B0070 */        sw $t3, 0x70($s3)
  /* 00D5C4 8000C9C4 26310001 */     addiu $s1, $s1, 1
  .L8000C9C8:
  /* 00D5C8 8000C9C8 163EFFEE */       bne $s1, $fp, .L8000C984
  /* 00D5CC 8000C9CC 00129042 */       srl $s2, $s2, 1
  .L8000C9D0:
  /* 00D5D0 8000C9D0 10000002 */         b .L8000C9DC
  /* 00D5D4 8000C9D4 C6600074 */      lwc1 $f0, 0x74($s3)
  .L8000C9D8:
  /* 00D5D8 8000C9D8 C6600074 */      lwc1 $f0, 0x74($s3)
  .L8000C9DC:
  /* 00D5DC 8000C9DC 4616003E */    c.le.s $f0, $f22
  /* 00D5E0 8000C9E0 00000000 */       nop 
  /* 00D5E4 8000C9E4 4503FDCD */     bc1tl .L8000C11C
  /* 00D5E8 8000C9E8 8E630070 */        lw $v1, 0x70($s3)
  .L8000C9EC:
  /* 00D5EC 8000C9EC 8FBF0054 */        lw $ra, 0x54($sp)
  .L8000C9F0:
  /* 00D5F0 8000C9F0 D7B40018 */      ldc1 $f20, 0x18($sp)
  /* 00D5F4 8000C9F4 D7B60020 */      ldc1 $f22, 0x20($sp)
  /* 00D5F8 8000C9F8 D7B80028 */      ldc1 $f24, 0x28($sp)
  /* 00D5FC 8000C9FC 8FB00030 */        lw $s0, 0x30($sp)
  /* 00D600 8000CA00 8FB10034 */        lw $s1, 0x34($sp)
  /* 00D604 8000CA04 8FB20038 */        lw $s2, 0x38($sp)
  /* 00D608 8000CA08 8FB3003C */        lw $s3, 0x3c($sp)
  /* 00D60C 8000CA0C 8FB40040 */        lw $s4, 0x40($sp)
  /* 00D610 8000CA10 8FB50044 */        lw $s5, 0x44($sp)
  /* 00D614 8000CA14 8FB60048 */        lw $s6, 0x48($sp)
  /* 00D618 8000CA18 8FB7004C */        lw $s7, 0x4c($sp)
  /* 00D61C 8000CA1C 8FBE0050 */        lw $fp, 0x50($sp)
  /* 00D620 8000CA20 03E00008 */        jr $ra
  /* 00D624 8000CA24 27BD00A8 */     addiu $sp, $sp, 0xa8

glabel func_8000CA28
  /* 00D628 8000CA28 460E7082 */     mul.s $f2, $f14, $f14
  /* 00D62C 8000CA2C 3C014040 */       lui $at, (0x40400000 >> 16) # 3.0
  /* 00D630 8000CA30 44814000 */      mtc1 $at, $f8 # 3.0 to cop1
  /* 00D634 8000CA34 460C6482 */     mul.s $f18, $f12, $f12
  /* 00D638 8000CA38 27BDFFC8 */     addiu $sp, $sp, -0x38
  /* 00D63C 8000CA3C 3C013F80 */       lui $at, (0x3F800000 >> 16) # 1.0
  /* 00D640 8000CA40 AFA60040 */        sw $a2, 0x40($sp)
  /* 00D644 8000CA44 460E1182 */     mul.s $f6, $f2, $f14
  /* 00D648 8000CA48 AFA70044 */        sw $a3, 0x44($sp)
  /* 00D64C 8000CA4C 46123402 */     mul.s $f16, $f6, $f18
  /* 00D650 8000CA50 46108100 */     add.s $f4, $f16, $f16
  /* 00D654 8000CA54 460C2282 */     mul.s $f10, $f4, $f12
  /* 00D658 8000CA58 00000000 */       nop 
  /* 00D65C 8000CA5C 46024182 */     mul.s $f6, $f8, $f2
  /* 00D660 8000CA60 E7AA000C */      swc1 $f10, 0xc($sp)
  /* 00D664 8000CA64 46123102 */     mul.s $f4, $f6, $f18
  /* 00D668 8000CA68 00000000 */       nop 
  /* 00D66C 8000CA6C 460C1202 */     mul.s $f8, $f2, $f12
  /* 00D670 8000CA70 E7A40014 */      swc1 $f4, 0x14($sp)
  /* 00D674 8000CA74 E7A80018 */      swc1 $f8, 0x18($sp)
  /* 00D678 8000CA78 C7A60018 */      lwc1 $f6, 0x18($sp)
  /* 00D67C 8000CA7C 46068201 */     sub.s $f8, $f16, $f6
  /* 00D680 8000CA80 E7A60000 */      swc1 $f6, ($sp)
  /* 00D684 8000CA84 44813000 */      mtc1 $at, $f6 # 1.0 to cop1
  /* 00D688 8000CA88 E7A80010 */      swc1 $f8, 0x10($sp)
  /* 00D68C 8000CA8C 46045201 */     sub.s $f8, $f10, $f4
  /* 00D690 8000CA90 46064200 */     add.s $f8, $f8, $f6
  /* 00D694 8000CA94 C7A60040 */      lwc1 $f6, 0x40($sp)
  /* 00D698 8000CA98 46064202 */     mul.s $f8, $f8, $f6
  /* 00D69C 8000CA9C 460A2181 */     sub.s $f6, $f4, $f10
  /* 00D6A0 8000CAA0 C7A40044 */      lwc1 $f4, 0x44($sp)
  /* 00D6A4 8000CAA4 46062282 */     mul.s $f10, $f4, $f6
  /* 00D6A8 8000CAA8 C7A60010 */      lwc1 $f6, 0x10($sp)
  /* 00D6AC 8000CAAC 460A4100 */     add.s $f4, $f8, $f10
  /* 00D6B0 8000CAB0 C7A80000 */      lwc1 $f8, ($sp)
  /* 00D6B4 8000CAB4 46083281 */     sub.s $f10, $f6, $f8
  /* 00D6B8 8000CAB8 460E5200 */     add.s $f8, $f10, $f14
  /* 00D6BC 8000CABC C7AA0048 */      lwc1 $f10, 0x48($sp)
  /* 00D6C0 8000CAC0 46085282 */     mul.s $f10, $f10, $f8
  /* 00D6C4 8000CAC4 460A2200 */     add.s $f8, $f4, $f10
  /* 00D6C8 8000CAC8 C7A4004C */      lwc1 $f4, 0x4c($sp)
  /* 00D6CC 8000CACC 27BD0038 */     addiu $sp, $sp, 0x38
  /* 00D6D0 8000CAD0 46062282 */     mul.s $f10, $f4, $f6
  /* 00D6D4 8000CAD4 03E00008 */        jr $ra
  /* 00D6D8 8000CAD8 460A4000 */     add.s $f0, $f8, $f10

glabel func_8000CADC
  /* 00D6DC 8000CADC 3C0140C0 */       lui $at, (0x40C00000 >> 16) # 6.0
  /* 00D6E0 8000CAE0 44812000 */      mtc1 $at, $f4 # 6.0 to cop1
  /* 00D6E4 8000CAE4 3C014040 */       lui $at, (0x40400000 >> 16) # 3.0
  /* 00D6E8 8000CAE8 44813000 */      mtc1 $at, $f6 # 3.0 to cop1
  /* 00D6EC 8000CAEC 460E2482 */     mul.s $f18, $f4, $f14
  /* 00D6F0 8000CAF0 AFA60008 */        sw $a2, 8($sp)
  /* 00D6F4 8000CAF4 AFA7000C */        sw $a3, 0xc($sp)
  /* 00D6F8 8000CAF8 460E3202 */     mul.s $f8, $f6, $f14
  /* 00D6FC 8000CAFC 3C013F80 */       lui $at, (0x3F800000 >> 16) # 1.0
  /* 00D700 8000CB00 460E7180 */     add.s $f6, $f14, $f14
  /* 00D704 8000CB04 460E4282 */     mul.s $f10, $f8, $f14
  /* 00D708 8000CB08 00000000 */       nop 
  /* 00D70C 8000CB0C 460C5102 */     mul.s $f4, $f10, $f12
  /* 00D710 8000CB10 00000000 */       nop 
  /* 00D714 8000CB14 460C2402 */     mul.s $f16, $f4, $f12
  /* 00D718 8000CB18 00000000 */       nop 
  /* 00D71C 8000CB1C 460C3082 */     mul.s $f2, $f6, $f12
  /* 00D720 8000CB20 00000000 */       nop 
  /* 00D724 8000CB24 460E9202 */     mul.s $f8, $f18, $f14
  /* 00D728 8000CB28 00000000 */       nop 
  /* 00D72C 8000CB2C 460C4282 */     mul.s $f10, $f8, $f12
  /* 00D730 8000CB30 00000000 */       nop 
  /* 00D734 8000CB34 460C5102 */     mul.s $f4, $f10, $f12
  /* 00D738 8000CB38 00000000 */       nop 
  /* 00D73C 8000CB3C 460C2182 */     mul.s $f6, $f4, $f12
  /* 00D740 8000CB40 00000000 */       nop 
  /* 00D744 8000CB44 460C9202 */     mul.s $f8, $f18, $f12
  /* 00D748 8000CB48 00000000 */       nop 
  /* 00D74C 8000CB4C 460C4282 */     mul.s $f10, $f8, $f12
  /* 00D750 8000CB50 C7A80008 */      lwc1 $f8, 8($sp)
  /* 00D754 8000CB54 460A3101 */     sub.s $f4, $f6, $f10
  /* 00D758 8000CB58 C7A6000C */      lwc1 $f6, 0xc($sp)
  /* 00D75C 8000CB5C 46064281 */     sub.s $f10, $f8, $f6
  /* 00D760 8000CB60 46021180 */     add.s $f6, $f2, $f2
  /* 00D764 8000CB64 460A2202 */     mul.s $f8, $f4, $f10
  /* 00D768 8000CB68 44815000 */      mtc1 $at, $f10 # 1.0 to cop1
  /* 00D76C 8000CB6C 46068101 */     sub.s $f4, $f16, $f6
  /* 00D770 8000CB70 460A2180 */     add.s $f6, $f4, $f10
  /* 00D774 8000CB74 C7A40010 */      lwc1 $f4, 0x10($sp)
  /* 00D778 8000CB78 46062282 */     mul.s $f10, $f4, $f6
  /* 00D77C 8000CB7C C7A60014 */      lwc1 $f6, 0x14($sp)
  /* 00D780 8000CB80 460A4100 */     add.s $f4, $f8, $f10
  /* 00D784 8000CB84 46028201 */     sub.s $f8, $f16, $f2
  /* 00D788 8000CB88 46083282 */     mul.s $f10, $f6, $f8
  /* 00D78C 8000CB8C 03E00008 */        jr $ra
  /* 00D790 8000CB90 460A2000 */     add.s $f0, $f4, $f10

glabel func_8000CB94
  /* 00D794 8000CB94 27BDFFE0 */     addiu $sp, $sp, -0x20
  /* 00D798 8000CB98 AFBF001C */        sw $ra, 0x1c($sp)
  /* 00D79C 8000CB9C 90820005 */       lbu $v0, 5($a0)
  /* 00D7A0 8000CBA0 24010001 */     addiu $at, $zero, 1
  /* 00D7A4 8000CBA4 10410018 */       beq $v0, $at, .L8000CC08
  /* 00D7A8 8000CBA8 24010002 */     addiu $at, $zero, 2
  /* 00D7AC 8000CBAC 10410005 */       beq $v0, $at, .L8000CBC4
  /* 00D7B0 8000CBB0 24010003 */     addiu $at, $zero, 3
  /* 00D7B4 8000CBB4 5041000A */      beql $v0, $at, .L8000CBE0
  /* 00D7B8 8000CBB8 C4900018 */      lwc1 $f16, 0x18($a0)
  /* 00D7BC 8000CBBC 1000001D */         b .L8000CC34
  /* 00D7C0 8000CBC0 8FBF001C */        lw $ra, 0x1c($sp)
  .L8000CBC4:
  /* 00D7C4 8000CBC4 C484000C */      lwc1 $f4, 0xc($a0)
  /* 00D7C8 8000CBC8 C4860018 */      lwc1 $f6, 0x18($a0)
  /* 00D7CC 8000CBCC C48A0010 */      lwc1 $f10, 0x10($a0)
  /* 00D7D0 8000CBD0 46062202 */     mul.s $f8, $f4, $f6
  /* 00D7D4 8000CBD4 10000016 */         b .L8000CC30
  /* 00D7D8 8000CBD8 46085000 */     add.s $f0, $f10, $f8
  /* 00D7DC 8000CBDC C4900018 */      lwc1 $f16, 0x18($a0)
  .L8000CBE0:
  /* 00D7E0 8000CBE0 C48C0008 */      lwc1 $f12, 8($a0)
  /* 00D7E4 8000CBE4 C48E000C */      lwc1 $f14, 0xc($a0)
  /* 00D7E8 8000CBE8 8C860010 */        lw $a2, 0x10($a0)
  /* 00D7EC 8000CBEC 8C870014 */        lw $a3, 0x14($a0)
  /* 00D7F0 8000CBF0 E7B00010 */      swc1 $f16, 0x10($sp)
  /* 00D7F4 8000CBF4 C492001C */      lwc1 $f18, 0x1c($a0)
  /* 00D7F8 8000CBF8 0C00328A */       jal func_8000CA28
  /* 00D7FC 8000CBFC E7B20014 */      swc1 $f18, 0x14($sp)
  /* 00D800 8000CC00 1000000C */         b .L8000CC34
  /* 00D804 8000CC04 8FBF001C */        lw $ra, 0x1c($sp)
  .L8000CC08:
  /* 00D808 8000CC08 C484000C */      lwc1 $f4, 0xc($a0)
  /* 00D80C 8000CC0C C4860008 */      lwc1 $f6, 8($a0)
  /* 00D810 8000CC10 4604303E */    c.le.s $f6, $f4
  /* 00D814 8000CC14 00000000 */       nop 
  /* 00D818 8000CC18 45020004 */     bc1fl .L8000CC2C
  /* 00D81C 8000CC1C C4820010 */      lwc1 $f2, 0x10($a0)
  /* 00D820 8000CC20 10000002 */         b .L8000CC2C
  /* 00D824 8000CC24 C4820014 */      lwc1 $f2, 0x14($a0)
  /* 00D828 8000CC28 C4820010 */      lwc1 $f2, 0x10($a0)
  .L8000CC2C:
  /* 00D82C 8000CC2C 46001006 */     mov.s $f0, $f2
  .L8000CC30:
  /* 00D830 8000CC30 8FBF001C */        lw $ra, 0x1c($sp)
  .L8000CC34:
  /* 00D834 8000CC34 27BD0020 */     addiu $sp, $sp, 0x20
  /* 00D838 8000CC38 03E00008 */        jr $ra
  /* 00D83C 8000CC3C 00000000 */       nop 

glabel func_8000CC40
  /* 00D840 8000CC40 27BDFFE0 */     addiu $sp, $sp, -0x20
  /* 00D844 8000CC44 AFBF001C */        sw $ra, 0x1c($sp)
  /* 00D848 8000CC48 90820005 */       lbu $v0, 5($a0)
  /* 00D84C 8000CC4C 24010001 */     addiu $at, $zero, 1
  /* 00D850 8000CC50 10410014 */       beq $v0, $at, .L8000CCA4
  /* 00D854 8000CC54 24010002 */     addiu $at, $zero, 2
  /* 00D858 8000CC58 10410005 */       beq $v0, $at, .L8000CC70
  /* 00D85C 8000CC5C 24010003 */     addiu $at, $zero, 3
  /* 00D860 8000CC60 50410006 */      beql $v0, $at, .L8000CC7C
  /* 00D864 8000CC64 C4840018 */      lwc1 $f4, 0x18($a0)
  /* 00D868 8000CC68 10000011 */         b .L8000CCB0
  /* 00D86C 8000CC6C 8FBF001C */        lw $ra, 0x1c($sp)
  .L8000CC70:
  /* 00D870 8000CC70 1000000E */         b .L8000CCAC
  /* 00D874 8000CC74 C4800018 */      lwc1 $f0, 0x18($a0)
  /* 00D878 8000CC78 C4840018 */      lwc1 $f4, 0x18($a0)
  .L8000CC7C:
  /* 00D87C 8000CC7C C48C0008 */      lwc1 $f12, 8($a0)
  /* 00D880 8000CC80 C48E000C */      lwc1 $f14, 0xc($a0)
  /* 00D884 8000CC84 8C860010 */        lw $a2, 0x10($a0)
  /* 00D888 8000CC88 8C870014 */        lw $a3, 0x14($a0)
  /* 00D88C 8000CC8C E7A40010 */      swc1 $f4, 0x10($sp)
  /* 00D890 8000CC90 C486001C */      lwc1 $f6, 0x1c($a0)
  /* 00D894 8000CC94 0C0032B7 */       jal func_8000CADC
  /* 00D898 8000CC98 E7A60014 */      swc1 $f6, 0x14($sp)
  /* 00D89C 8000CC9C 10000004 */         b .L8000CCB0
  /* 00D8A0 8000CCA0 8FBF001C */        lw $ra, 0x1c($sp)
  .L8000CCA4:
  /* 00D8A4 8000CCA4 44800000 */      mtc1 $zero, $f0
  /* 00D8A8 8000CCA8 00000000 */       nop 
  .L8000CCAC:
  /* 00D8AC 8000CCAC 8FBF001C */        lw $ra, 0x1c($sp)
  .L8000CCB0:
  /* 00D8B0 8000CCB0 27BD0020 */     addiu $sp, $sp, 0x20
  /* 00D8B4 8000CCB4 03E00008 */        jr $ra
  /* 00D8B8 8000CCB8 00000000 */       nop 

glabel func_8000CCBC
  /* 00D8BC 8000CCBC 27BDFFA8 */     addiu $sp, $sp, -0x58
  /* 00D8C0 8000CCC0 AFBF004C */        sw $ra, 0x4c($sp)
  /* 00D8C4 8000CCC4 AFB00048 */        sw $s0, 0x48($sp)
  /* 00D8C8 8000CCC8 F7BE0040 */      sdc1 $f30, 0x40($sp)
  /* 00D8CC 8000CCCC F7BC0038 */      sdc1 $f28, 0x38($sp)
  /* 00D8D0 8000CCD0 F7BA0030 */      sdc1 $f26, 0x30($sp)
  /* 00D8D4 8000CCD4 F7B80028 */      sdc1 $f24, 0x28($sp)
  /* 00D8D8 8000CCD8 F7B60020 */      sdc1 $f22, 0x20($sp)
  /* 00D8DC 8000CCDC F7B40018 */      sdc1 $f20, 0x18($sp)
  /* 00D8E0 8000CCE0 3C018004 */       lui $at, %hi(D_8003DE38)
  /* 00D8E4 8000CCE4 C424DE38 */      lwc1 $f4, %lo(D_8003DE38)($at)
  /* 00D8E8 8000CCE8 C4800074 */      lwc1 $f0, 0x74($a0)
  /* 00D8EC 8000CCEC 00803825 */        or $a3, $a0, $zero
  /* 00D8F0 8000CCF0 46002032 */    c.eq.s $f4, $f0
  /* 00D8F4 8000CCF4 00000000 */       nop 
  /* 00D8F8 8000CCF8 45030093 */     bc1tl .L8000CF48
  /* 00D8FC 8000CCFC 8FBF004C */        lw $ra, 0x4c($sp)
  /* 00D900 8000CD00 8C90006C */        lw $s0, 0x6c($a0)
  /* 00D904 8000CD04 3C013F80 */       lui $at, (0x3F800000 >> 16) # 1.0
  /* 00D908 8000CD08 12000085 */      beqz $s0, .L8000CF20
  /* 00D90C 8000CD0C 00000000 */       nop 
  /* 00D910 8000CD10 4480F000 */      mtc1 $zero, $f30
  /* 00D914 8000CD14 4481E000 */      mtc1 $at, $f28 # 1.0 to cop1
  /* 00D918 8000CD18 C7BA0054 */      lwc1 $f26, 0x54($sp)
  /* 00D91C 8000CD1C 920E0005 */       lbu $t6, 5($s0)
  .L8000CD20:
  /* 00D920 8000CD20 3C018004 */       lui $at, %hi(D_8003DE3C)
  /* 00D924 8000CD24 51C0007A */      beql $t6, $zero, .L8000CF10
  /* 00D928 8000CD28 8E100000 */        lw $s0, ($s0)
  /* 00D92C 8000CD2C C426DE3C */      lwc1 $f6, %lo(D_8003DE3C)($at)
  /* 00D930 8000CD30 C4E80074 */      lwc1 $f8, 0x74($a3)
  /* 00D934 8000CD34 46083032 */    c.eq.s $f6, $f8
  /* 00D938 8000CD38 00000000 */       nop 
  /* 00D93C 8000CD3C 45030006 */     bc1tl .L8000CD58
  /* 00D940 8000CD40 8CEF0004 */        lw $t7, 4($a3)
  /* 00D944 8000CD44 C60A000C */      lwc1 $f10, 0xc($s0)
  /* 00D948 8000CD48 C4E40078 */      lwc1 $f4, 0x78($a3)
  /* 00D94C 8000CD4C 46045180 */     add.s $f6, $f10, $f4
  /* 00D950 8000CD50 E606000C */      swc1 $f6, 0xc($s0)
  /* 00D954 8000CD54 8CEF0004 */        lw $t7, 4($a3)
  .L8000CD58:
  /* 00D958 8000CD58 8DF8007C */        lw $t8, 0x7c($t7)
  /* 00D95C 8000CD5C 33190002 */      andi $t9, $t8, 2
  /* 00D960 8000CD60 5720006B */      bnel $t9, $zero, .L8000CF10
  /* 00D964 8000CD64 8E100000 */        lw $s0, ($s0)
  /* 00D968 8000CD68 92020005 */       lbu $v0, 5($s0)
  /* 00D96C 8000CD6C 24010001 */     addiu $at, $zero, 1
  /* 00D970 8000CD70 10410031 */       beq $v0, $at, .L8000CE38
  /* 00D974 8000CD74 24010002 */     addiu $at, $zero, 2
  /* 00D978 8000CD78 10410005 */       beq $v0, $at, .L8000CD90
  /* 00D97C 8000CD7C 24010003 */     addiu $at, $zero, 3
  /* 00D980 8000CD80 5041000A */      beql $v0, $at, .L8000CDAC
  /* 00D984 8000CD84 C6020008 */      lwc1 $f2, 8($s0)
  /* 00D988 8000CD88 10000035 */         b .L8000CE60
  /* 00D98C 8000CD8C 92080004 */       lbu $t0, 4($s0)
  .L8000CD90:
  /* 00D990 8000CD90 C608000C */      lwc1 $f8, 0xc($s0)
  /* 00D994 8000CD94 C60A0018 */      lwc1 $f10, 0x18($s0)
  /* 00D998 8000CD98 C6060010 */      lwc1 $f6, 0x10($s0)
  /* 00D99C 8000CD9C 460A4102 */     mul.s $f4, $f8, $f10
  /* 00D9A0 8000CDA0 1000002E */         b .L8000CE5C
  /* 00D9A4 8000CDA4 46043680 */     add.s $f26, $f6, $f4
  /* 00D9A8 8000CDA8 C6020008 */      lwc1 $f2, 8($s0)
  .L8000CDAC:
  /* 00D9AC 8000CDAC C600000C */      lwc1 $f0, 0xc($s0)
  /* 00D9B0 8000CDB0 3C014040 */       lui $at, (0x40400000 >> 16) # 3.0
  /* 00D9B4 8000CDB4 46021402 */     mul.s $f16, $f2, $f2
  /* 00D9B8 8000CDB8 44813000 */      mtc1 $at, $f6 # 3.0 to cop1
  /* 00D9BC 8000CDBC 46000302 */     mul.s $f12, $f0, $f0
  /* 00D9C0 8000CDC0 00000000 */       nop 
  /* 00D9C4 8000CDC4 460C1482 */     mul.s $f18, $f2, $f12
  /* 00D9C8 8000CDC8 00000000 */       nop 
  /* 00D9CC 8000CDCC 460C0202 */     mul.s $f8, $f0, $f12
  /* 00D9D0 8000CDD0 00000000 */       nop 
  /* 00D9D4 8000CDD4 46104382 */     mul.s $f14, $f8, $f16
  /* 00D9D8 8000CDD8 C6080010 */      lwc1 $f8, 0x10($s0)
  /* 00D9DC 8000CDDC 460E7280 */     add.s $f10, $f14, $f14
  /* 00D9E0 8000CDE0 46127601 */     sub.s $f24, $f14, $f18
  /* 00D9E4 8000CDE4 46025502 */     mul.s $f20, $f10, $f2
  /* 00D9E8 8000CDE8 00000000 */       nop 
  /* 00D9EC 8000CDEC 460C3102 */     mul.s $f4, $f6, $f12
  /* 00D9F0 8000CDF0 00000000 */       nop 
  /* 00D9F4 8000CDF4 46102582 */     mul.s $f22, $f4, $f16
  /* 00D9F8 8000CDF8 4616A281 */     sub.s $f10, $f20, $f22
  /* 00D9FC 8000CDFC 461C5180 */     add.s $f6, $f10, $f28
  /* 00DA00 8000CE00 C60A0014 */      lwc1 $f10, 0x14($s0)
  /* 00DA04 8000CE04 46064102 */     mul.s $f4, $f8, $f6
  /* 00DA08 8000CE08 4614B201 */     sub.s $f8, $f22, $f20
  /* 00DA0C 8000CE0C 46085182 */     mul.s $f6, $f10, $f8
  /* 00DA10 8000CE10 C6080018 */      lwc1 $f8, 0x18($s0)
  /* 00DA14 8000CE14 46062280 */     add.s $f10, $f4, $f6
  /* 00DA18 8000CE18 4612C101 */     sub.s $f4, $f24, $f18
  /* 00DA1C 8000CE1C 46002180 */     add.s $f6, $f4, $f0
  /* 00DA20 8000CE20 46064102 */     mul.s $f4, $f8, $f6
  /* 00DA24 8000CE24 C606001C */      lwc1 $f6, 0x1c($s0)
  /* 00DA28 8000CE28 46045200 */     add.s $f8, $f10, $f4
  /* 00DA2C 8000CE2C 46183282 */     mul.s $f10, $f6, $f24
  /* 00DA30 8000CE30 1000000A */         b .L8000CE5C
  /* 00DA34 8000CE34 460A4680 */     add.s $f26, $f8, $f10
  .L8000CE38:
  /* 00DA38 8000CE38 C604000C */      lwc1 $f4, 0xc($s0)
  /* 00DA3C 8000CE3C C6060008 */      lwc1 $f6, 8($s0)
  /* 00DA40 8000CE40 4604303E */    c.le.s $f6, $f4
  /* 00DA44 8000CE44 00000000 */       nop 
  /* 00DA48 8000CE48 45020004 */     bc1fl .L8000CE5C
  /* 00DA4C 8000CE4C C61A0010 */      lwc1 $f26, 0x10($s0)
  /* 00DA50 8000CE50 10000002 */         b .L8000CE5C
  /* 00DA54 8000CE54 C61A0014 */      lwc1 $f26, 0x14($s0)
  /* 00DA58 8000CE58 C61A0010 */      lwc1 $f26, 0x10($s0)
  .L8000CE5C:
  /* 00DA5C 8000CE5C 92080004 */       lbu $t0, 4($s0)
  .L8000CE60:
  /* 00DA60 8000CE60 2509FFFF */     addiu $t1, $t0, -1
  /* 00DA64 8000CE64 2D21000A */     sltiu $at, $t1, 0xa
  /* 00DA68 8000CE68 10200028 */      beqz $at, .L8000CF0C
  /* 00DA6C 8000CE6C 00094880 */       sll $t1, $t1, 2
  /* 00DA70 8000CE70 3C018004 */       lui $at, %hi(jtbl_8003DE40)
  /* 00DA74 8000CE74 00290821 */      addu $at, $at, $t1
  /* 00DA78 8000CE78 8C29DE40 */        lw $t1, %lo(jtbl_8003DE40)($at)
  /* 00DA7C 8000CE7C 01200008 */        jr $t1
  /* 00DA80 8000CE80 00000000 */       nop 
  glabel jtgt_8000CE84
  /* 00DA84 8000CE84 10000021 */         b .L8000CF0C
  /* 00DA88 8000CE88 E4FA0030 */      swc1 $f26, 0x30($a3)
  glabel jtgt_8000CE8C
  /* 00DA8C 8000CE8C 1000001F */         b .L8000CF0C
  /* 00DA90 8000CE90 E4FA0034 */      swc1 $f26, 0x34($a3)
  glabel jtgt_8000CE94
  /* 00DA94 8000CE94 1000001D */         b .L8000CF0C
  /* 00DA98 8000CE98 E4FA0038 */      swc1 $f26, 0x38($a3)
  glabel jtgt_8000CE9C
  /* 00DA9C 8000CE9C 461ED03C */    c.lt.s $f26, $f30
  /* 00DAA0 8000CEA0 24E4001C */     addiu $a0, $a3, 0x1c
  /* 00DAA4 8000CEA4 45020004 */     bc1fl .L8000CEB8
  /* 00DAA8 8000CEA8 461AE03C */    c.lt.s $f28, $f26
  /* 00DAAC 8000CEAC 10000006 */         b .L8000CEC8
  /* 00DAB0 8000CEB0 4600F686 */     mov.s $f26, $f30
  /* 00DAB4 8000CEB4 461AE03C */    c.lt.s $f28, $f26
  .L8000CEB8:
  /* 00DAB8 8000CEB8 00000000 */       nop 
  /* 00DABC 8000CEBC 45020003 */     bc1fl .L8000CECC
  /* 00DAC0 8000CEC0 8E050020 */        lw $a1, 0x20($s0)
  /* 00DAC4 8000CEC4 4600E686 */     mov.s $f26, $f28
  .L8000CEC8:
  /* 00DAC8 8000CEC8 8E050020 */        lw $a1, 0x20($s0)
  .L8000CECC:
  /* 00DACC 8000CECC 4406D000 */      mfc1 $a2, $f26
  /* 00DAD0 8000CED0 0C00794C */       jal func_8001E530
  /* 00DAD4 8000CED4 AFA70058 */        sw $a3, 0x58($sp)
  /* 00DAD8 8000CED8 1000000C */         b .L8000CF0C
  /* 00DADC 8000CEDC 8FA70058 */        lw $a3, 0x58($sp)
  glabel jtgt_8000CEE0
  /* 00DAE0 8000CEE0 1000000A */         b .L8000CF0C
  /* 00DAE4 8000CEE4 E4FA001C */      swc1 $f26, 0x1c($a3)
  glabel jtgt_8000CEE8
  /* 00DAE8 8000CEE8 10000008 */         b .L8000CF0C
  /* 00DAEC 8000CEEC E4FA0020 */      swc1 $f26, 0x20($a3)
  glabel jtgt_8000CEF0
  /* 00DAF0 8000CEF0 10000006 */         b .L8000CF0C
  /* 00DAF4 8000CEF4 E4FA0024 */      swc1 $f26, 0x24($a3)
  glabel jtgt_8000CEF8
  /* 00DAF8 8000CEF8 10000004 */         b .L8000CF0C
  /* 00DAFC 8000CEFC E4FA0040 */      swc1 $f26, 0x40($a3)
  glabel jtgt_8000CF00
  /* 00DB00 8000CF00 10000002 */         b .L8000CF0C
  /* 00DB04 8000CF04 E4FA0044 */      swc1 $f26, 0x44($a3)
  glabel jtgt_8000CF08
  /* 00DB08 8000CF08 E4FA0048 */      swc1 $f26, 0x48($a3)
  .L8000CF0C:
  /* 00DB0C 8000CF0C 8E100000 */        lw $s0, ($s0)
  .L8000CF10:
  /* 00DB10 8000CF10 5600FF83 */      bnel $s0, $zero, .L8000CD20
  /* 00DB14 8000CF14 920E0005 */       lbu $t6, 5($s0)
  /* 00DB18 8000CF18 E7BA0054 */      swc1 $f26, 0x54($sp)
  /* 00DB1C 8000CF1C C4E00074 */      lwc1 $f0, 0x74($a3)
  .L8000CF20:
  /* 00DB20 8000CF20 3C018004 */       lui $at, %hi(D_8003DE68)
  /* 00DB24 8000CF24 C428DE68 */      lwc1 $f8, %lo(D_8003DE68)($at)
  /* 00DB28 8000CF28 3C018004 */       lui $at, %hi(D_8003DE6C)
  /* 00DB2C 8000CF2C 46004032 */    c.eq.s $f8, $f0
  /* 00DB30 8000CF30 00000000 */       nop 
  /* 00DB34 8000CF34 45020004 */     bc1fl .L8000CF48
  /* 00DB38 8000CF38 8FBF004C */        lw $ra, 0x4c($sp)
  /* 00DB3C 8000CF3C C42ADE6C */      lwc1 $f10, %lo(D_8003DE6C)($at)
  /* 00DB40 8000CF40 E4EA0074 */      swc1 $f10, 0x74($a3)
  /* 00DB44 8000CF44 8FBF004C */        lw $ra, 0x4c($sp)
  .L8000CF48:
  /* 00DB48 8000CF48 D7B40018 */      ldc1 $f20, 0x18($sp)
  /* 00DB4C 8000CF4C D7B60020 */      ldc1 $f22, 0x20($sp)
  /* 00DB50 8000CF50 D7B80028 */      ldc1 $f24, 0x28($sp)
  /* 00DB54 8000CF54 D7BA0030 */      ldc1 $f26, 0x30($sp)
  /* 00DB58 8000CF58 D7BC0038 */      ldc1 $f28, 0x38($sp)
  /* 00DB5C 8000CF5C D7BE0040 */      ldc1 $f30, 0x40($sp)
  /* 00DB60 8000CF60 8FB00048 */        lw $s0, 0x48($sp)
  /* 00DB64 8000CF64 03E00008 */        jr $ra
  /* 00DB68 8000CF68 27BD0058 */     addiu $sp, $sp, 0x58

glabel func_8000CF6C
  /* 00DB6C 8000CF6C 27BDFF48 */     addiu $sp, $sp, -0xb8
  /* 00DB70 8000CF70 AFBF0054 */        sw $ra, 0x54($sp)
  /* 00DB74 8000CF74 AFBE0050 */        sw $fp, 0x50($sp)
  /* 00DB78 8000CF78 AFB7004C */        sw $s7, 0x4c($sp)
  /* 00DB7C 8000CF7C AFB60048 */        sw $s6, 0x48($sp)
  /* 00DB80 8000CF80 AFB50044 */        sw $s5, 0x44($sp)
  /* 00DB84 8000CF84 AFB40040 */        sw $s4, 0x40($sp)
  /* 00DB88 8000CF88 AFB3003C */        sw $s3, 0x3c($sp)
  /* 00DB8C 8000CF8C AFB20038 */        sw $s2, 0x38($sp)
  /* 00DB90 8000CF90 AFB10034 */        sw $s1, 0x34($sp)
  /* 00DB94 8000CF94 AFB00030 */        sw $s0, 0x30($sp)
  /* 00DB98 8000CF98 F7B80028 */      sdc1 $f24, 0x28($sp)
  /* 00DB9C 8000CF9C F7B60020 */      sdc1 $f22, 0x20($sp)
  /* 00DBA0 8000CFA0 F7B40018 */      sdc1 $f20, 0x18($sp)
  /* 00DBA4 8000CFA4 3C018004 */       lui $at, %hi(D_8003DE70)
  /* 00DBA8 8000CFA8 C424DE70 */      lwc1 $f4, %lo(D_8003DE70)($at)
  /* 00DBAC 8000CFAC C4800098 */      lwc1 $f0, 0x98($a0)
  /* 00DBB0 8000CFB0 24110001 */     addiu $s1, $zero, 1
  /* 00DBB4 8000CFB4 00809825 */        or $s3, $a0, $zero
  /* 00DBB8 8000CFB8 46002032 */    c.eq.s $f4, $f0
  /* 00DBBC 8000CFBC 3C018004 */       lui $at, %hi(D_8003DE74)
  /* 00DBC0 8000CFC0 27B00090 */     addiu $s0, $sp, 0x90
  /* 00DBC4 8000CFC4 27A200B8 */     addiu $v0, $sp, 0xb8
  /* 00DBC8 8000CFC8 4501028E */      bc1t .L8000DA04
  /* 00DBCC 8000CFCC 00117080 */       sll $t6, $s1, 2
  /* 00DBD0 8000CFD0 C426DE74 */      lwc1 $f6, %lo(D_8003DE74)($at)
  /* 00DBD4 8000CFD4 27AF007C */     addiu $t7, $sp, 0x7c
  /* 00DBD8 8000CFD8 27B50090 */     addiu $s5, $sp, 0x90
  /* 00DBDC 8000CFDC 46003032 */    c.eq.s $f6, $f0
  /* 00DBE0 8000CFE0 241E0005 */     addiu $fp, $zero, 5
  /* 00DBE4 8000CFE4 24170002 */     addiu $s7, $zero, 2
  /* 00DBE8 8000CFE8 24160003 */     addiu $s6, $zero, 3
  /* 00DBEC 8000CFEC 45000006 */      bc1f .L8000D008
  /* 00DBF0 8000CFF0 2414000A */     addiu $s4, $zero, 0xa
  /* 00DBF4 8000CFF4 C48800A0 */      lwc1 $f8, 0xa0($a0)
  /* 00DBF8 8000CFF8 4480B000 */      mtc1 $zero, $f22
  /* 00DBFC 8000CFFC 46004287 */     neg.s $f10, $f8
  /* 00DC00 8000D000 1000000D */         b .L8000D038
  /* 00DC04 8000D004 E48A0098 */      swc1 $f10, 0x98($a0)
  .L8000D008:
  /* 00DC08 8000D008 C662009C */      lwc1 $f2, 0x9c($s3)
  /* 00DC0C 8000D00C 4480B000 */      mtc1 $zero, $f22
  /* 00DC10 8000D010 C67200A0 */      lwc1 $f18, 0xa0($s3)
  /* 00DC14 8000D014 46020401 */     sub.s $f16, $f0, $f2
  /* 00DC18 8000D018 46029100 */     add.s $f4, $f18, $f2
  /* 00DC1C 8000D01C E6700098 */      swc1 $f16, 0x98($s3)
  /* 00DC20 8000D020 C6660098 */      lwc1 $f6, 0x98($s3)
  /* 00DC24 8000D024 E66400A0 */      swc1 $f4, 0xa0($s3)
  /* 00DC28 8000D028 4606B03C */    c.lt.s $f22, $f6
  /* 00DC2C 8000D02C 00000000 */       nop 
  /* 00DC30 8000D030 45030275 */     bc1tl .L8000DA08
  /* 00DC34 8000D034 8FBF0054 */        lw $ra, 0x54($sp)
  .L8000D038:
  /* 00DC38 8000D038 26100004 */     addiu $s0, $s0, 4
  /* 00DC3C 8000D03C 0202082B */      sltu $at, $s0, $v0
  /* 00DC40 8000D040 1420FFFD */      bnez $at, .L8000D038
  /* 00DC44 8000D044 AE00FFFC */        sw $zero, -4($s0)
  /* 00DC48 8000D048 AFA0007C */        sw $zero, 0x7c($sp)
  /* 00DC4C 8000D04C 01CF8021 */      addu $s0, $t6, $t7
  /* 00DC50 8000D050 AE000004 */        sw $zero, 4($s0)
  /* 00DC54 8000D054 AE000008 */        sw $zero, 8($s0)
  /* 00DC58 8000D058 AE00000C */        sw $zero, 0xc($s0)
  /* 00DC5C 8000D05C AE000000 */        sw $zero, ($s0)
  /* 00DC60 8000D060 8E620090 */        lw $v0, 0x90($s3)
  /* 00DC64 8000D064 50400015 */      beql $v0, $zero, .L8000D0BC
  /* 00DC68 8000D068 3C013F80 */       lui $at, 0x3f80
  /* 00DC6C 8000D06C 90430004 */       lbu $v1, 4($v0)
  .L8000D070:
  /* 00DC70 8000D070 2861000D */      slti $at, $v1, 0xd
  /* 00DC74 8000D074 14200006 */      bnez $at, .L8000D090
  /* 00DC78 8000D078 28610017 */      slti $at, $v1, 0x17
  /* 00DC7C 8000D07C 10200004 */      beqz $at, .L8000D090
  /* 00DC80 8000D080 0003C080 */       sll $t8, $v1, 2
  /* 00DC84 8000D084 02B8C821 */      addu $t9, $s5, $t8
  /* 00DC88 8000D088 AF22FFCC */        sw $v0, -0x34($t9)
  /* 00DC8C 8000D08C 90430004 */       lbu $v1, 4($v0)
  .L8000D090:
  /* 00DC90 8000D090 28610025 */      slti $at, $v1, 0x25
  /* 00DC94 8000D094 14200005 */      bnez $at, .L8000D0AC
  /* 00DC98 8000D098 2861002A */      slti $at, $v1, 0x2a
  /* 00DC9C 8000D09C 10200003 */      beqz $at, .L8000D0AC
  /* 00DCA0 8000D0A0 00034080 */       sll $t0, $v1, 2
  /* 00DCA4 8000D0A4 03A84821 */      addu $t1, $sp, $t0
  /* 00DCA8 8000D0A8 AD22FFE8 */        sw $v0, -0x18($t1)
  .L8000D0AC:
  /* 00DCAC 8000D0AC 8C420000 */        lw $v0, ($v0)
  /* 00DCB0 8000D0B0 5440FFEF */      bnel $v0, $zero, .L8000D070
  /* 00DCB4 8000D0B4 90430004 */       lbu $v1, 4($v0)
  /* 00DCB8 8000D0B8 3C013F80 */       lui $at, (0x3F800000 >> 16) # 1.0
  .L8000D0BC:
  /* 00DCBC 8000D0BC 4481C000 */      mtc1 $at, $f24 # 1.0 to cop1
  /* 00DCC0 8000D0C0 27B50090 */     addiu $s5, $sp, 0x90
  /* 00DCC4 8000D0C4 8E620094 */        lw $v0, 0x94($s3)
  .L8000D0C8:
  /* 00DCC8 8000D0C8 54400017 */      bnel $v0, $zero, .L8000D128
  /* 00DCCC 8000D0CC 8C430000 */        lw $v1, ($v0)
  /* 00DCD0 8000D0D0 8E620090 */        lw $v0, 0x90($s3)
  /* 00DCD4 8000D0D4 C6600098 */      lwc1 $f0, 0x98($s3)
  /* 00DCD8 8000D0D8 3C018004 */       lui $at, %hi(D_8003DE78)
  /* 00DCDC 8000D0DC 5040000E */      beql $v0, $zero, .L8000D118
  /* 00DCE0 8000D0E0 E66000A0 */      swc1 $f0, 0xa0($s3)
  /* 00DCE4 8000D0E4 904A0005 */       lbu $t2, 5($v0)
  .L8000D0E8:
  /* 00DCE8 8000D0E8 51400008 */      beql $t2, $zero, .L8000D10C
  /* 00DCEC 8000D0EC 8C420000 */        lw $v0, ($v0)
  /* 00DCF0 8000D0F0 C66A009C */      lwc1 $f10, 0x9c($s3)
  /* 00DCF4 8000D0F4 C448000C */      lwc1 $f8, 0xc($v0)
  /* 00DCF8 8000D0F8 46005400 */     add.s $f16, $f10, $f0
  /* 00DCFC 8000D0FC 46104480 */     add.s $f18, $f8, $f16
  /* 00DD00 8000D100 E452000C */      swc1 $f18, 0xc($v0)
  /* 00DD04 8000D104 C6600098 */      lwc1 $f0, 0x98($s3)
  /* 00DD08 8000D108 8C420000 */        lw $v0, ($v0)
  .L8000D10C:
  /* 00DD0C 8000D10C 5440FFF6 */      bnel $v0, $zero, .L8000D0E8
  /* 00DD10 8000D110 904A0005 */       lbu $t2, 5($v0)
  /* 00DD14 8000D114 E66000A0 */      swc1 $f0, 0xa0($s3)
  .L8000D118:
  /* 00DD18 8000D118 C424DE78 */      lwc1 $f4, %lo(D_8003DE78)($at)
  /* 00DD1C 8000D11C 10000239 */         b .L8000DA04
  /* 00DD20 8000D120 E6640098 */      swc1 $f4, 0x98($s3)
  /* 00DD24 8000D124 8C430000 */        lw $v1, ($v0)
  .L8000D128:
  /* 00DD28 8000D128 00032642 */       srl $a0, $v1, 0x19
  /* 00DD2C 8000D12C 2C810017 */     sltiu $at, $a0, 0x17
  /* 00DD30 8000D130 1020022F */      beqz $at, jtgt_8000D9F0
  /* 00DD34 8000D134 AFA40058 */        sw $a0, 0x58($sp)
  /* 00DD38 8000D138 00045880 */       sll $t3, $a0, 2
  /* 00DD3C 8000D13C 3C018004 */       lui $at, %hi(jtbl_8003DE7C)
  /* 00DD40 8000D140 002B0821 */      addu $at, $at, $t3
  /* 00DD44 8000D144 8C2BDE7C */        lw $t3, %lo(jtbl_8003DE7C)($at)
  /* 00DD48 8000D148 01600008 */        jr $t3
  /* 00DD4C 8000D14C 00000000 */       nop 
  glabel jtgt_8000D150
  /* 00DD50 8000D150 306C7FFF */      andi $t4, $v1, 0x7fff
  /* 00DD54 8000D154 448C3000 */      mtc1 $t4, $f6
  /* 00DD58 8000D158 000391C0 */       sll $s2, $v1, 7
  /* 00DD5C 8000D15C 05810005 */      bgez $t4, .L8000D174
  /* 00DD60 8000D160 46803520 */   cvt.s.w $f20, $f6
  /* 00DD64 8000D164 3C014F80 */       lui $at, (0x4F800000 >> 16) # 4294967300.0
  /* 00DD68 8000D168 44815000 */      mtc1 $at, $f10 # 4294967300.0 to cop1
  /* 00DD6C 8000D16C 00000000 */       nop 
  /* 00DD70 8000D170 460AA500 */     add.s $f20, $f20, $f10
  .L8000D174:
  /* 00DD74 8000D174 244D0004 */     addiu $t5, $v0, 4
  /* 00DD78 8000D178 AE6D0094 */        sw $t5, 0x94($s3)
  /* 00DD7C 8000D17C 00129582 */       srl $s2, $s2, 0x16
  /* 00DD80 8000D180 00008825 */        or $s1, $zero, $zero
  .L8000D184:
  /* 00DD84 8000D184 1240002B */      beqz $s2, .L8000D234
  /* 00DD88 8000D188 324E0001 */      andi $t6, $s2, 1
  /* 00DD8C 8000D18C 11C00026 */      beqz $t6, .L8000D228
  /* 00DD90 8000D190 00117880 */       sll $t7, $s1, 2
  /* 00DD94 8000D194 02AF8021 */      addu $s0, $s5, $t7
  /* 00DD98 8000D198 8E030000 */        lw $v1, ($s0)
  /* 00DD9C 8000D19C 02602025 */        or $a0, $s3, $zero
  /* 00DDA0 8000D1A0 2625000D */     addiu $a1, $s1, 0xd
  /* 00DDA4 8000D1A4 54600006 */      bnel $v1, $zero, .L8000D1C0
  /* 00DDA8 8000D1A8 C4680014 */      lwc1 $f8, 0x14($v1)
  /* 00DDAC 8000D1AC 0C0023D1 */       jal func_80008F44
  /* 00DDB0 8000D1B0 30A500FF */      andi $a1, $a1, 0xff
  /* 00DDB4 8000D1B4 AE020000 */        sw $v0, ($s0)
  /* 00DDB8 8000D1B8 00401825 */        or $v1, $v0, $zero
  /* 00DDBC 8000D1BC C4680014 */      lwc1 $f8, 0x14($v1)
  .L8000D1C0:
  /* 00DDC0 8000D1C0 4616A032 */    c.eq.s $f20, $f22
  /* 00DDC4 8000D1C4 E4680010 */      swc1 $f8, 0x10($v1)
  /* 00DDC8 8000D1C8 8E780094 */        lw $t8, 0x94($s3)
  /* 00DDCC 8000D1CC 8E190000 */        lw $t9, ($s0)
  /* 00DDD0 8000D1D0 C7100000 */      lwc1 $f16, ($t8)
  /* 00DDD4 8000D1D4 E7300014 */      swc1 $f16, 0x14($t9)
  /* 00DDD8 8000D1D8 8E680094 */        lw $t0, 0x94($s3)
  /* 00DDDC 8000D1DC 25090004 */     addiu $t1, $t0, 4
  /* 00DDE0 8000D1E0 AE690094 */        sw $t1, 0x94($s3)
  /* 00DDE4 8000D1E4 8E030000 */        lw $v1, ($s0)
  /* 00DDE8 8000D1E8 C472001C */      lwc1 $f18, 0x1c($v1)
  /* 00DDEC 8000D1EC E4720018 */      swc1 $f18, 0x18($v1)
  /* 00DDF0 8000D1F0 8E0A0000 */        lw $t2, ($s0)
  /* 00DDF4 8000D1F4 E556001C */      swc1 $f22, 0x1c($t2)
  /* 00DDF8 8000D1F8 8E0B0000 */        lw $t3, ($s0)
  /* 00DDFC 8000D1FC 45010004 */      bc1t .L8000D210
  /* 00DE00 8000D200 A1760005 */        sb $s6, 5($t3)
  /* 00DE04 8000D204 4614C103 */     div.s $f4, $f24, $f20
  /* 00DE08 8000D208 8E0C0000 */        lw $t4, ($s0)
  /* 00DE0C 8000D20C E5840008 */      swc1 $f4, 8($t4)
  .L8000D210:
  /* 00DE10 8000D210 C6660098 */      lwc1 $f6, 0x98($s3)
  /* 00DE14 8000D214 C668009C */      lwc1 $f8, 0x9c($s3)
  /* 00DE18 8000D218 8E0D0000 */        lw $t5, ($s0)
  /* 00DE1C 8000D21C 46003287 */     neg.s $f10, $f6
  /* 00DE20 8000D220 46085401 */     sub.s $f16, $f10, $f8
  /* 00DE24 8000D224 E5B0000C */      swc1 $f16, 0xc($t5)
  .L8000D228:
  /* 00DE28 8000D228 26310001 */     addiu $s1, $s1, 1
  /* 00DE2C 8000D22C 1634FFD5 */       bne $s1, $s4, .L8000D184
  /* 00DE30 8000D230 00129042 */       srl $s2, $s2, 1
  .L8000D234:
  /* 00DE34 8000D234 8FAE0058 */        lw $t6, 0x58($sp)
  /* 00DE38 8000D238 24010008 */     addiu $at, $zero, 8
  /* 00DE3C 8000D23C 15C10004 */       bne $t6, $at, .L8000D250
  /* 00DE40 8000D240 00000000 */       nop 
  /* 00DE44 8000D244 C6720098 */      lwc1 $f18, 0x98($s3)
  /* 00DE48 8000D248 46149100 */     add.s $f4, $f18, $f20
  /* 00DE4C 8000D24C E6640098 */      swc1 $f4, 0x98($s3)
  .L8000D250:
  /* 00DE50 8000D250 100001E8 */         b .L8000D9F4
  /* 00DE54 8000D254 C6600098 */      lwc1 $f0, 0x98($s3)
  glabel jtgt_8000D258
  /* 00DE58 8000D258 306F7FFF */      andi $t7, $v1, 0x7fff
  /* 00DE5C 8000D25C 448F3000 */      mtc1 $t7, $f6
  /* 00DE60 8000D260 000391C0 */       sll $s2, $v1, 7
  /* 00DE64 8000D264 05E10005 */      bgez $t7, .L8000D27C
  /* 00DE68 8000D268 46803520 */   cvt.s.w $f20, $f6
  /* 00DE6C 8000D26C 3C014F80 */       lui $at, (0x4F800000 >> 16) # 4294967300.0
  /* 00DE70 8000D270 44815000 */      mtc1 $at, $f10 # 4294967300.0 to cop1
  /* 00DE74 8000D274 00000000 */       nop 
  /* 00DE78 8000D278 460AA500 */     add.s $f20, $f20, $f10
  .L8000D27C:
  /* 00DE7C 8000D27C 24580004 */     addiu $t8, $v0, 4
  /* 00DE80 8000D280 AE780094 */        sw $t8, 0x94($s3)
  /* 00DE84 8000D284 00129582 */       srl $s2, $s2, 0x16
  /* 00DE88 8000D288 00008825 */        or $s1, $zero, $zero
  .L8000D28C:
  /* 00DE8C 8000D28C 1240002B */      beqz $s2, .L8000D33C
  /* 00DE90 8000D290 32590001 */      andi $t9, $s2, 1
  /* 00DE94 8000D294 13200026 */      beqz $t9, .L8000D330
  /* 00DE98 8000D298 00114080 */       sll $t0, $s1, 2
  /* 00DE9C 8000D29C 02A88021 */      addu $s0, $s5, $t0
  /* 00DEA0 8000D2A0 8E030000 */        lw $v1, ($s0)
  /* 00DEA4 8000D2A4 02602025 */        or $a0, $s3, $zero
  /* 00DEA8 8000D2A8 2625000D */     addiu $a1, $s1, 0xd
  /* 00DEAC 8000D2AC 54600006 */      bnel $v1, $zero, .L8000D2C8
  /* 00DEB0 8000D2B0 C4680014 */      lwc1 $f8, 0x14($v1)
  /* 00DEB4 8000D2B4 0C0023D1 */       jal func_80008F44
  /* 00DEB8 8000D2B8 30A500FF */      andi $a1, $a1, 0xff
  /* 00DEBC 8000D2BC AE020000 */        sw $v0, ($s0)
  /* 00DEC0 8000D2C0 00401825 */        or $v1, $v0, $zero
  /* 00DEC4 8000D2C4 C4680014 */      lwc1 $f8, 0x14($v1)
  .L8000D2C8:
  /* 00DEC8 8000D2C8 4616A032 */    c.eq.s $f20, $f22
  /* 00DECC 8000D2CC E4680010 */      swc1 $f8, 0x10($v1)
  /* 00DED0 8000D2D0 8E690094 */        lw $t1, 0x94($s3)
  /* 00DED4 8000D2D4 8E0A0000 */        lw $t2, ($s0)
  /* 00DED8 8000D2D8 C5300000 */      lwc1 $f16, ($t1)
  /* 00DEDC 8000D2DC E5500014 */      swc1 $f16, 0x14($t2)
  /* 00DEE0 8000D2E0 8E6B0094 */        lw $t3, 0x94($s3)
  /* 00DEE4 8000D2E4 256C0004 */     addiu $t4, $t3, 4
  /* 00DEE8 8000D2E8 AE6C0094 */        sw $t4, 0x94($s3)
  /* 00DEEC 8000D2EC 8E0D0000 */        lw $t5, ($s0)
  /* 00DEF0 8000D2F0 45010007 */      bc1t .L8000D310
  /* 00DEF4 8000D2F4 A1B70005 */        sb $s7, 5($t5)
  /* 00DEF8 8000D2F8 8E030000 */        lw $v1, ($s0)
  /* 00DEFC 8000D2FC C4720014 */      lwc1 $f18, 0x14($v1)
  /* 00DF00 8000D300 C4640010 */      lwc1 $f4, 0x10($v1)
  /* 00DF04 8000D304 46049181 */     sub.s $f6, $f18, $f4
  /* 00DF08 8000D308 46143283 */     div.s $f10, $f6, $f20
  /* 00DF0C 8000D30C E46A0018 */      swc1 $f10, 0x18($v1)
  .L8000D310:
  /* 00DF10 8000D310 C6680098 */      lwc1 $f8, 0x98($s3)
  /* 00DF14 8000D314 C672009C */      lwc1 $f18, 0x9c($s3)
  /* 00DF18 8000D318 8E0E0000 */        lw $t6, ($s0)
  /* 00DF1C 8000D31C 46004407 */     neg.s $f16, $f8
  /* 00DF20 8000D320 46128101 */     sub.s $f4, $f16, $f18
  /* 00DF24 8000D324 E5C4000C */      swc1 $f4, 0xc($t6)
  /* 00DF28 8000D328 8E0F0000 */        lw $t7, ($s0)
  /* 00DF2C 8000D32C E5F6001C */      swc1 $f22, 0x1c($t7)
  .L8000D330:
  /* 00DF30 8000D330 26310001 */     addiu $s1, $s1, 1
  /* 00DF34 8000D334 1634FFD5 */       bne $s1, $s4, .L8000D28C
  /* 00DF38 8000D338 00129042 */       srl $s2, $s2, 1
  .L8000D33C:
  /* 00DF3C 8000D33C 8FB80058 */        lw $t8, 0x58($sp)
  /* 00DF40 8000D340 24010003 */     addiu $at, $zero, 3
  /* 00DF44 8000D344 17010004 */       bne $t8, $at, .L8000D358
  /* 00DF48 8000D348 00000000 */       nop 
  /* 00DF4C 8000D34C C6660098 */      lwc1 $f6, 0x98($s3)
  /* 00DF50 8000D350 46143280 */     add.s $f10, $f6, $f20
  /* 00DF54 8000D354 E66A0098 */      swc1 $f10, 0x98($s3)
  .L8000D358:
  /* 00DF58 8000D358 100001A6 */         b .L8000D9F4
  /* 00DF5C 8000D35C C6600098 */      lwc1 $f0, 0x98($s3)
  glabel jtgt_8000D360
  /* 00DF60 8000D360 30797FFF */      andi $t9, $v1, 0x7fff
  /* 00DF64 8000D364 44994000 */      mtc1 $t9, $f8
  /* 00DF68 8000D368 000391C0 */       sll $s2, $v1, 7
  /* 00DF6C 8000D36C 07210005 */      bgez $t9, .L8000D384
  /* 00DF70 8000D370 46804520 */   cvt.s.w $f20, $f8
  /* 00DF74 8000D374 3C014F80 */       lui $at, (0x4F800000 >> 16) # 4294967300.0
  /* 00DF78 8000D378 44818000 */      mtc1 $at, $f16 # 4294967300.0 to cop1
  /* 00DF7C 8000D37C 00000000 */       nop 
  /* 00DF80 8000D380 4610A500 */     add.s $f20, $f20, $f16
  .L8000D384:
  /* 00DF84 8000D384 24480004 */     addiu $t0, $v0, 4
  /* 00DF88 8000D388 AE680094 */        sw $t0, 0x94($s3)
  /* 00DF8C 8000D38C 00129582 */       srl $s2, $s2, 0x16
  /* 00DF90 8000D390 00008825 */        or $s1, $zero, $zero
  .L8000D394:
  /* 00DF94 8000D394 12400030 */      beqz $s2, .L8000D458
  /* 00DF98 8000D398 32490001 */      andi $t1, $s2, 1
  /* 00DF9C 8000D39C 1120002B */      beqz $t1, .L8000D44C
  /* 00DFA0 8000D3A0 00115080 */       sll $t2, $s1, 2
  /* 00DFA4 8000D3A4 02AA8021 */      addu $s0, $s5, $t2
  /* 00DFA8 8000D3A8 8E030000 */        lw $v1, ($s0)
  /* 00DFAC 8000D3AC 02602025 */        or $a0, $s3, $zero
  /* 00DFB0 8000D3B0 2625000D */     addiu $a1, $s1, 0xd
  /* 00DFB4 8000D3B4 54600006 */      bnel $v1, $zero, .L8000D3D0
  /* 00DFB8 8000D3B8 C4720014 */      lwc1 $f18, 0x14($v1)
  /* 00DFBC 8000D3BC 0C0023D1 */       jal func_80008F44
  /* 00DFC0 8000D3C0 30A500FF */      andi $a1, $a1, 0xff
  /* 00DFC4 8000D3C4 AE020000 */        sw $v0, ($s0)
  /* 00DFC8 8000D3C8 00401825 */        or $v1, $v0, $zero
  /* 00DFCC 8000D3CC C4720014 */      lwc1 $f18, 0x14($v1)
  .L8000D3D0:
  /* 00DFD0 8000D3D0 4616A032 */    c.eq.s $f20, $f22
  /* 00DFD4 8000D3D4 E4720010 */      swc1 $f18, 0x10($v1)
  /* 00DFD8 8000D3D8 8E6B0094 */        lw $t3, 0x94($s3)
  /* 00DFDC 8000D3DC 8E0C0000 */        lw $t4, ($s0)
  /* 00DFE0 8000D3E0 C5640000 */      lwc1 $f4, ($t3)
  /* 00DFE4 8000D3E4 E5840014 */      swc1 $f4, 0x14($t4)
  /* 00DFE8 8000D3E8 8E6D0094 */        lw $t5, 0x94($s3)
  /* 00DFEC 8000D3EC 25AE0004 */     addiu $t6, $t5, 4
  /* 00DFF0 8000D3F0 AE6E0094 */        sw $t6, 0x94($s3)
  /* 00DFF4 8000D3F4 8E030000 */        lw $v1, ($s0)
  /* 00DFF8 8000D3F8 C466001C */      lwc1 $f6, 0x1c($v1)
  /* 00DFFC 8000D3FC E4660018 */      swc1 $f6, 0x18($v1)
  /* 00E000 8000D400 8E6F0094 */        lw $t7, 0x94($s3)
  /* 00E004 8000D404 8E180000 */        lw $t8, ($s0)
  /* 00E008 8000D408 C5EA0000 */      lwc1 $f10, ($t7)
  /* 00E00C 8000D40C E70A001C */      swc1 $f10, 0x1c($t8)
  /* 00E010 8000D410 8E790094 */        lw $t9, 0x94($s3)
  /* 00E014 8000D414 27280004 */     addiu $t0, $t9, 4
  /* 00E018 8000D418 AE680094 */        sw $t0, 0x94($s3)
  /* 00E01C 8000D41C 8E090000 */        lw $t1, ($s0)
  /* 00E020 8000D420 45010004 */      bc1t .L8000D434
  /* 00E024 8000D424 A1360005 */        sb $s6, 5($t1)
  /* 00E028 8000D428 4614C203 */     div.s $f8, $f24, $f20
  /* 00E02C 8000D42C 8E0A0000 */        lw $t2, ($s0)
  /* 00E030 8000D430 E5480008 */      swc1 $f8, 8($t2)
  .L8000D434:
  /* 00E034 8000D434 C6700098 */      lwc1 $f16, 0x98($s3)
  /* 00E038 8000D438 C664009C */      lwc1 $f4, 0x9c($s3)
  /* 00E03C 8000D43C 8E0B0000 */        lw $t3, ($s0)
  /* 00E040 8000D440 46008487 */     neg.s $f18, $f16
  /* 00E044 8000D444 46049181 */     sub.s $f6, $f18, $f4
  /* 00E048 8000D448 E566000C */      swc1 $f6, 0xc($t3)
  .L8000D44C:
  /* 00E04C 8000D44C 26310001 */     addiu $s1, $s1, 1
  /* 00E050 8000D450 1634FFD0 */       bne $s1, $s4, .L8000D394
  /* 00E054 8000D454 00129042 */       srl $s2, $s2, 1
  .L8000D458:
  /* 00E058 8000D458 8FAC0058 */        lw $t4, 0x58($sp)
  /* 00E05C 8000D45C 24010005 */     addiu $at, $zero, 5
  /* 00E060 8000D460 15810004 */       bne $t4, $at, .L8000D474
  /* 00E064 8000D464 00000000 */       nop 
  /* 00E068 8000D468 C66A0098 */      lwc1 $f10, 0x98($s3)
  /* 00E06C 8000D46C 46145200 */     add.s $f8, $f10, $f20
  /* 00E070 8000D470 E6680098 */      swc1 $f8, 0x98($s3)
  .L8000D474:
  /* 00E074 8000D474 1000015F */         b .L8000D9F4
  /* 00E078 8000D478 C6600098 */      lwc1 $f0, 0x98($s3)
  glabel jtgt_8000D47C
  /* 00E07C 8000D47C 000391C0 */       sll $s2, $v1, 7
  /* 00E080 8000D480 244D0004 */     addiu $t5, $v0, 4
  /* 00E084 8000D484 AE6D0094 */        sw $t5, 0x94($s3)
  /* 00E088 8000D488 00129582 */       srl $s2, $s2, 0x16
  /* 00E08C 8000D48C 00008825 */        or $s1, $zero, $zero
  .L8000D490:
  /* 00E090 8000D490 12400016 */      beqz $s2, .L8000D4EC
  /* 00E094 8000D494 324E0001 */      andi $t6, $s2, 1
  /* 00E098 8000D498 11C00011 */      beqz $t6, .L8000D4E0
  /* 00E09C 8000D49C 00117880 */       sll $t7, $s1, 2
  /* 00E0A0 8000D4A0 02AF8021 */      addu $s0, $s5, $t7
  /* 00E0A4 8000D4A4 8E030000 */        lw $v1, ($s0)
  /* 00E0A8 8000D4A8 02602025 */        or $a0, $s3, $zero
  /* 00E0AC 8000D4AC 2625000D */     addiu $a1, $s1, 0xd
  /* 00E0B0 8000D4B0 54600006 */      bnel $v1, $zero, .L8000D4CC
  /* 00E0B4 8000D4B4 8E780094 */        lw $t8, 0x94($s3)
  /* 00E0B8 8000D4B8 0C0023D1 */       jal func_80008F44
  /* 00E0BC 8000D4BC 30A500FF */      andi $a1, $a1, 0xff
  /* 00E0C0 8000D4C0 AE020000 */        sw $v0, ($s0)
  /* 00E0C4 8000D4C4 00401825 */        or $v1, $v0, $zero
  /* 00E0C8 8000D4C8 8E780094 */        lw $t8, 0x94($s3)
  .L8000D4CC:
  /* 00E0CC 8000D4CC C7100000 */      lwc1 $f16, ($t8)
  /* 00E0D0 8000D4D0 E470001C */      swc1 $f16, 0x1c($v1)
  /* 00E0D4 8000D4D4 8E790094 */        lw $t9, 0x94($s3)
  /* 00E0D8 8000D4D8 27280004 */     addiu $t0, $t9, 4
  /* 00E0DC 8000D4DC AE680094 */        sw $t0, 0x94($s3)
  .L8000D4E0:
  /* 00E0E0 8000D4E0 26310001 */     addiu $s1, $s1, 1
  /* 00E0E4 8000D4E4 1634FFEA */       bne $s1, $s4, .L8000D490
  /* 00E0E8 8000D4E8 00129042 */       srl $s2, $s2, 1
  .L8000D4EC:
  /* 00E0EC 8000D4EC 10000141 */         b .L8000D9F4
  /* 00E0F0 8000D4F0 C6600098 */      lwc1 $f0, 0x98($s3)
  glabel jtgt_8000D4F4
  /* 00E0F4 8000D4F4 30697FFF */      andi $t1, $v1, 0x7fff
  /* 00E0F8 8000D4F8 44892000 */      mtc1 $t1, $f4
  /* 00E0FC 8000D4FC C6720098 */      lwc1 $f18, 0x98($s3)
  /* 00E100 8000D500 05210005 */      bgez $t1, .L8000D518
  /* 00E104 8000D504 468021A0 */   cvt.s.w $f6, $f4
  /* 00E108 8000D508 3C014F80 */       lui $at, (0x4F800000 >> 16) # 4294967300.0
  /* 00E10C 8000D50C 44815000 */      mtc1 $at, $f10 # 4294967300.0 to cop1
  /* 00E110 8000D510 00000000 */       nop 
  /* 00E114 8000D514 460A3180 */     add.s $f6, $f6, $f10
  .L8000D518:
  /* 00E118 8000D518 46069200 */     add.s $f8, $f18, $f6
  /* 00E11C 8000D51C 244A0004 */     addiu $t2, $v0, 4
  /* 00E120 8000D520 AE6A0094 */        sw $t2, 0x94($s3)
  /* 00E124 8000D524 E6680098 */      swc1 $f8, 0x98($s3)
  /* 00E128 8000D528 10000132 */         b .L8000D9F4
  /* 00E12C 8000D52C C6600098 */      lwc1 $f0, 0x98($s3)
  glabel jtgt_8000D530
  /* 00E130 8000D530 306B7FFF */      andi $t3, $v1, 0x7fff
  /* 00E134 8000D534 448B8000 */      mtc1 $t3, $f16
  /* 00E138 8000D538 000391C0 */       sll $s2, $v1, 7
  /* 00E13C 8000D53C 05610005 */      bgez $t3, .L8000D554
  /* 00E140 8000D540 46808520 */   cvt.s.w $f20, $f16
  /* 00E144 8000D544 3C014F80 */       lui $at, (0x4F800000 >> 16) # 4294967300.0
  /* 00E148 8000D548 44812000 */      mtc1 $at, $f4 # 4294967300.0 to cop1
  /* 00E14C 8000D54C 00000000 */       nop 
  /* 00E150 8000D550 4604A500 */     add.s $f20, $f20, $f4
  .L8000D554:
  /* 00E154 8000D554 244C0004 */     addiu $t4, $v0, 4
  /* 00E158 8000D558 AE6C0094 */        sw $t4, 0x94($s3)
  /* 00E15C 8000D55C 00129582 */       srl $s2, $s2, 0x16
  /* 00E160 8000D560 00008825 */        or $s1, $zero, $zero
  .L8000D564:
  /* 00E164 8000D564 12400026 */      beqz $s2, .L8000D600
  /* 00E168 8000D568 324D0001 */      andi $t5, $s2, 1
  /* 00E16C 8000D56C 11A00021 */      beqz $t5, .L8000D5F4
  /* 00E170 8000D570 00117080 */       sll $t6, $s1, 2
  /* 00E174 8000D574 02AE8021 */      addu $s0, $s5, $t6
  /* 00E178 8000D578 8E030000 */        lw $v1, ($s0)
  /* 00E17C 8000D57C 02602025 */        or $a0, $s3, $zero
  /* 00E180 8000D580 2625000D */     addiu $a1, $s1, 0xd
  /* 00E184 8000D584 54600006 */      bnel $v1, $zero, .L8000D5A0
  /* 00E188 8000D588 C46A0014 */      lwc1 $f10, 0x14($v1)
  /* 00E18C 8000D58C 0C0023D1 */       jal func_80008F44
  /* 00E190 8000D590 30A500FF */      andi $a1, $a1, 0xff
  /* 00E194 8000D594 AE020000 */        sw $v0, ($s0)
  /* 00E198 8000D598 00401825 */        or $v1, $v0, $zero
  /* 00E19C 8000D59C C46A0014 */      lwc1 $f10, 0x14($v1)
  .L8000D5A0:
  /* 00E1A0 8000D5A0 24090001 */     addiu $t1, $zero, 1
  /* 00E1A4 8000D5A4 E46A0010 */      swc1 $f10, 0x10($v1)
  /* 00E1A8 8000D5A8 8E6F0094 */        lw $t7, 0x94($s3)
  /* 00E1AC 8000D5AC 8E180000 */        lw $t8, ($s0)
  /* 00E1B0 8000D5B0 C5F20000 */      lwc1 $f18, ($t7)
  /* 00E1B4 8000D5B4 E7120014 */      swc1 $f18, 0x14($t8)
  /* 00E1B8 8000D5B8 8E790094 */        lw $t9, 0x94($s3)
  /* 00E1BC 8000D5BC 27280004 */     addiu $t0, $t9, 4
  /* 00E1C0 8000D5C0 AE680094 */        sw $t0, 0x94($s3)
  /* 00E1C4 8000D5C4 8E0A0000 */        lw $t2, ($s0)
  /* 00E1C8 8000D5C8 A1490005 */        sb $t1, 5($t2)
  /* 00E1CC 8000D5CC 8E0B0000 */        lw $t3, ($s0)
  /* 00E1D0 8000D5D0 E5740008 */      swc1 $f20, 8($t3)
  /* 00E1D4 8000D5D4 C6660098 */      lwc1 $f6, 0x98($s3)
  /* 00E1D8 8000D5D8 C670009C */      lwc1 $f16, 0x9c($s3)
  /* 00E1DC 8000D5DC 8E0C0000 */        lw $t4, ($s0)
  /* 00E1E0 8000D5E0 46003207 */     neg.s $f8, $f6
  /* 00E1E4 8000D5E4 46104101 */     sub.s $f4, $f8, $f16
  /* 00E1E8 8000D5E8 E584000C */      swc1 $f4, 0xc($t4)
  /* 00E1EC 8000D5EC 8E0D0000 */        lw $t5, ($s0)
  /* 00E1F0 8000D5F0 E5B6001C */      swc1 $f22, 0x1c($t5)
  .L8000D5F4:
  /* 00E1F4 8000D5F4 26310001 */     addiu $s1, $s1, 1
  /* 00E1F8 8000D5F8 1634FFDA */       bne $s1, $s4, .L8000D564
  /* 00E1FC 8000D5FC 00129042 */       srl $s2, $s2, 1
  .L8000D600:
  /* 00E200 8000D600 8FAE0058 */        lw $t6, 0x58($sp)
  /* 00E204 8000D604 2401000A */     addiu $at, $zero, 0xa
  /* 00E208 8000D608 15C10004 */       bne $t6, $at, .L8000D61C
  /* 00E20C 8000D60C 00000000 */       nop 
  /* 00E210 8000D610 C66A0098 */      lwc1 $f10, 0x98($s3)
  /* 00E214 8000D614 46145480 */     add.s $f18, $f10, $f20
  /* 00E218 8000D618 E6720098 */      swc1 $f18, 0x98($s3)
  .L8000D61C:
  /* 00E21C 8000D61C 100000F5 */         b .L8000D9F4
  /* 00E220 8000D620 C6600098 */      lwc1 $f0, 0x98($s3)
  glabel jtgt_8000D624
  /* 00E224 8000D624 C6600098 */      lwc1 $f0, 0x98($s3)
  /* 00E228 8000D628 244F0004 */     addiu $t7, $v0, 4
  /* 00E22C 8000D62C AE6F0094 */        sw $t7, 0x94($s3)
  /* 00E230 8000D630 8DF90000 */        lw $t9, ($t7)
  /* 00E234 8000D634 46000187 */     neg.s $f6, $f0
  /* 00E238 8000D638 E66600A0 */      swc1 $f6, 0xa0($s3)
  /* 00E23C 8000D63C 100000ED */         b .L8000D9F4
  /* 00E240 8000D640 AE790094 */        sw $t9, 0x94($s3)
  glabel jtgt_8000D644
  /* 00E244 8000D644 24480004 */     addiu $t0, $v0, 4
  /* 00E248 8000D648 AE680094 */        sw $t0, 0x94($s3)
  /* 00E24C 8000D64C 8D0A0000 */        lw $t2, ($t0)
  /* 00E250 8000D650 C6600098 */      lwc1 $f0, 0x98($s3)
  /* 00E254 8000D654 100000E7 */         b .L8000D9F4
  /* 00E258 8000D658 AE6A0094 */        sw $t2, 0x94($s3)
  glabel jtgt_8000D65C
  /* 00E25C 8000D65C 306B7FFF */      andi $t3, $v1, 0x7fff
  /* 00E260 8000D660 448B4000 */      mtc1 $t3, $f8
  /* 00E264 8000D664 000391C0 */       sll $s2, $v1, 7
  /* 00E268 8000D668 05610005 */      bgez $t3, .L8000D680
  /* 00E26C 8000D66C 46804520 */   cvt.s.w $f20, $f8
  /* 00E270 8000D670 3C014F80 */       lui $at, (0x4F800000 >> 16) # 4294967300.0
  /* 00E274 8000D674 44818000 */      mtc1 $at, $f16 # 4294967300.0 to cop1
  /* 00E278 8000D678 00000000 */       nop 
  /* 00E27C 8000D67C 4610A500 */     add.s $f20, $f20, $f16
  .L8000D680:
  /* 00E280 8000D680 244C0004 */     addiu $t4, $v0, 4
  /* 00E284 8000D684 AE6C0094 */        sw $t4, 0x94($s3)
  /* 00E288 8000D688 00129582 */       srl $s2, $s2, 0x16
  /* 00E28C 8000D68C 00008825 */        or $s1, $zero, $zero
  .L8000D690:
  /* 00E290 8000D690 12400013 */      beqz $s2, .L8000D6E0
  /* 00E294 8000D694 324D0001 */      andi $t5, $s2, 1
  /* 00E298 8000D698 11A0000E */      beqz $t5, .L8000D6D4
  /* 00E29C 8000D69C 00117080 */       sll $t6, $s1, 2
  /* 00E2A0 8000D6A0 02AE8021 */      addu $s0, $s5, $t6
  /* 00E2A4 8000D6A4 8E030000 */        lw $v1, ($s0)
  /* 00E2A8 8000D6A8 02602025 */        or $a0, $s3, $zero
  /* 00E2AC 8000D6AC 2625000D */     addiu $a1, $s1, 0xd
  /* 00E2B0 8000D6B0 54600006 */      bnel $v1, $zero, .L8000D6CC
  /* 00E2B4 8000D6B4 C464000C */      lwc1 $f4, 0xc($v1)
  /* 00E2B8 8000D6B8 0C0023D1 */       jal func_80008F44
  /* 00E2BC 8000D6BC 30A500FF */      andi $a1, $a1, 0xff
  /* 00E2C0 8000D6C0 AE020000 */        sw $v0, ($s0)
  /* 00E2C4 8000D6C4 00401825 */        or $v1, $v0, $zero
  /* 00E2C8 8000D6C8 C464000C */      lwc1 $f4, 0xc($v1)
  .L8000D6CC:
  /* 00E2CC 8000D6CC 46142280 */     add.s $f10, $f4, $f20
  /* 00E2D0 8000D6D0 E46A000C */      swc1 $f10, 0xc($v1)
  .L8000D6D4:
  /* 00E2D4 8000D6D4 26310001 */     addiu $s1, $s1, 1
  /* 00E2D8 8000D6D8 1634FFED */       bne $s1, $s4, .L8000D690
  /* 00E2DC 8000D6DC 00129042 */       srl $s2, $s2, 1
  .L8000D6E0:
  /* 00E2E0 8000D6E0 100000C4 */         b .L8000D9F4
  /* 00E2E4 8000D6E4 C6600098 */      lwc1 $f0, 0x98($s3)
  glabel jtgt_8000D6E8
  /* 00E2E8 8000D6E8 8E620090 */        lw $v0, 0x90($s3)
  /* 00E2EC 8000D6EC C6600098 */      lwc1 $f0, 0x98($s3)
  /* 00E2F0 8000D6F0 3C018004 */       lui $at, %hi(D_8003DED8)
  /* 00E2F4 8000D6F4 5040000E */      beql $v0, $zero, .L8000D730
  /* 00E2F8 8000D6F8 E66000A0 */      swc1 $f0, 0xa0($s3)
  /* 00E2FC 8000D6FC 904F0005 */       lbu $t7, 5($v0)
  .L8000D700:
  /* 00E300 8000D700 51E00008 */      beql $t7, $zero, .L8000D724
  /* 00E304 8000D704 8C420000 */        lw $v0, ($v0)
  /* 00E308 8000D708 C666009C */      lwc1 $f6, 0x9c($s3)
  /* 00E30C 8000D70C C452000C */      lwc1 $f18, 0xc($v0)
  /* 00E310 8000D710 46003200 */     add.s $f8, $f6, $f0
  /* 00E314 8000D714 46089400 */     add.s $f16, $f18, $f8
  /* 00E318 8000D718 E450000C */      swc1 $f16, 0xc($v0)
  /* 00E31C 8000D71C C6600098 */      lwc1 $f0, 0x98($s3)
  /* 00E320 8000D720 8C420000 */        lw $v0, ($v0)
  .L8000D724:
  /* 00E324 8000D724 5440FFF6 */      bnel $v0, $zero, .L8000D700
  /* 00E328 8000D728 904F0005 */       lbu $t7, 5($v0)
  /* 00E32C 8000D72C E66000A0 */      swc1 $f0, 0xa0($s3)
  .L8000D730:
  /* 00E330 8000D730 C424DED8 */      lwc1 $f4, %lo(D_8003DED8)($at)
  /* 00E334 8000D734 100000B3 */         b .L8000DA04
  /* 00E338 8000D738 E6640098 */      swc1 $f4, 0x98($s3)
  glabel jtgt_8000D73C
  /* 00E33C 8000D73C 30787FFF */      andi $t8, $v1, 0x7fff
  /* 00E340 8000D740 44985000 */      mtc1 $t8, $f10
  /* 00E344 8000D744 000391C0 */       sll $s2, $v1, 7
  /* 00E348 8000D748 07010005 */      bgez $t8, .L8000D760
  /* 00E34C 8000D74C 46805520 */   cvt.s.w $f20, $f10
  /* 00E350 8000D750 3C014F80 */       lui $at, (0x4F800000 >> 16) # 4294967300.0
  /* 00E354 8000D754 44813000 */      mtc1 $at, $f6 # 4294967300.0 to cop1
  /* 00E358 8000D758 00000000 */       nop 
  /* 00E35C 8000D75C 4606A500 */     add.s $f20, $f20, $f6
  .L8000D760:
  /* 00E360 8000D760 24590004 */     addiu $t9, $v0, 4
  /* 00E364 8000D764 AE790094 */        sw $t9, 0x94($s3)
  /* 00E368 8000D768 00129582 */       srl $s2, $s2, 0x16
  /* 00E36C 8000D76C 00008825 */        or $s1, $zero, $zero
  .L8000D770:
  /* 00E370 8000D770 12400025 */      beqz $s2, .L8000D808
  /* 00E374 8000D774 32480001 */      andi $t0, $s2, 1
  /* 00E378 8000D778 11000020 */      beqz $t0, .L8000D7FC
  /* 00E37C 8000D77C 00114880 */       sll $t1, $s1, 2
  /* 00E380 8000D780 27AA007C */     addiu $t2, $sp, 0x7c
  /* 00E384 8000D784 012A8021 */      addu $s0, $t1, $t2
  /* 00E388 8000D788 8E030000 */        lw $v1, ($s0)
  /* 00E38C 8000D78C 02602025 */        or $a0, $s3, $zero
  /* 00E390 8000D790 26250025 */     addiu $a1, $s1, 0x25
  /* 00E394 8000D794 54600006 */      bnel $v1, $zero, .L8000D7B0
  /* 00E398 8000D798 C4720014 */      lwc1 $f18, 0x14($v1)
  /* 00E39C 8000D79C 0C0023D1 */       jal func_80008F44
  /* 00E3A0 8000D7A0 30A500FF */      andi $a1, $a1, 0xff
  /* 00E3A4 8000D7A4 AE020000 */        sw $v0, ($s0)
  /* 00E3A8 8000D7A8 00401825 */        or $v1, $v0, $zero
  /* 00E3AC 8000D7AC C4720014 */      lwc1 $f18, 0x14($v1)
  .L8000D7B0:
  /* 00E3B0 8000D7B0 240F0001 */     addiu $t7, $zero, 1
  /* 00E3B4 8000D7B4 E4720010 */      swc1 $f18, 0x10($v1)
  /* 00E3B8 8000D7B8 8E6B0094 */        lw $t3, 0x94($s3)
  /* 00E3BC 8000D7BC 8E0C0000 */        lw $t4, ($s0)
  /* 00E3C0 8000D7C0 C5680000 */      lwc1 $f8, ($t3)
  /* 00E3C4 8000D7C4 E5880014 */      swc1 $f8, 0x14($t4)
  /* 00E3C8 8000D7C8 8E6D0094 */        lw $t5, 0x94($s3)
  /* 00E3CC 8000D7CC 25AE0004 */     addiu $t6, $t5, 4
  /* 00E3D0 8000D7D0 AE6E0094 */        sw $t6, 0x94($s3)
  /* 00E3D4 8000D7D4 8E180000 */        lw $t8, ($s0)
  /* 00E3D8 8000D7D8 A30F0005 */        sb $t7, 5($t8)
  /* 00E3DC 8000D7DC 8E190000 */        lw $t9, ($s0)
  /* 00E3E0 8000D7E0 E7340008 */      swc1 $f20, 8($t9)
  /* 00E3E4 8000D7E4 C6700098 */      lwc1 $f16, 0x98($s3)
  /* 00E3E8 8000D7E8 C66A009C */      lwc1 $f10, 0x9c($s3)
  /* 00E3EC 8000D7EC 8E080000 */        lw $t0, ($s0)
  /* 00E3F0 8000D7F0 46008107 */     neg.s $f4, $f16
  /* 00E3F4 8000D7F4 460A2181 */     sub.s $f6, $f4, $f10
  /* 00E3F8 8000D7F8 E506000C */      swc1 $f6, 0xc($t0)
  .L8000D7FC:
  /* 00E3FC 8000D7FC 26310001 */     addiu $s1, $s1, 1
  /* 00E400 8000D800 163EFFDB */       bne $s1, $fp, .L8000D770
  /* 00E404 8000D804 00129042 */       srl $s2, $s2, 1
  .L8000D808:
  /* 00E408 8000D808 8FA90058 */        lw $t1, 0x58($sp)
  /* 00E40C 8000D80C 24010012 */     addiu $at, $zero, 0x12
  /* 00E410 8000D810 15210004 */       bne $t1, $at, .L8000D824
  /* 00E414 8000D814 00000000 */       nop 
  /* 00E418 8000D818 C6720098 */      lwc1 $f18, 0x98($s3)
  /* 00E41C 8000D81C 46149200 */     add.s $f8, $f18, $f20
  /* 00E420 8000D820 E6680098 */      swc1 $f8, 0x98($s3)
  .L8000D824:
  /* 00E424 8000D824 10000073 */         b .L8000D9F4
  /* 00E428 8000D828 C6600098 */      lwc1 $f0, 0x98($s3)
  glabel jtgt_8000D82C
  /* 00E42C 8000D82C 306A7FFF */      andi $t2, $v1, 0x7fff
  /* 00E430 8000D830 448A8000 */      mtc1 $t2, $f16
  /* 00E434 8000D834 000391C0 */       sll $s2, $v1, 7
  /* 00E438 8000D838 05410005 */      bgez $t2, .L8000D850
  /* 00E43C 8000D83C 46808520 */   cvt.s.w $f20, $f16
  /* 00E440 8000D840 3C014F80 */       lui $at, (0x4F800000 >> 16) # 4294967300.0
  /* 00E444 8000D844 44812000 */      mtc1 $at, $f4 # 4294967300.0 to cop1
  /* 00E448 8000D848 00000000 */       nop 
  /* 00E44C 8000D84C 4604A500 */     add.s $f20, $f20, $f4
  .L8000D850:
  /* 00E450 8000D850 244B0004 */     addiu $t3, $v0, 4
  /* 00E454 8000D854 AE6B0094 */        sw $t3, 0x94($s3)
  /* 00E458 8000D858 00129582 */       srl $s2, $s2, 0x16
  /* 00E45C 8000D85C 00008825 */        or $s1, $zero, $zero
  .L8000D860:
  /* 00E460 8000D860 12400027 */      beqz $s2, .L8000D900
  /* 00E464 8000D864 324C0001 */      andi $t4, $s2, 1
  /* 00E468 8000D868 11800022 */      beqz $t4, .L8000D8F4
  /* 00E46C 8000D86C 00116880 */       sll $t5, $s1, 2
  /* 00E470 8000D870 27AE007C */     addiu $t6, $sp, 0x7c
  /* 00E474 8000D874 01AE8021 */      addu $s0, $t5, $t6
  /* 00E478 8000D878 8E030000 */        lw $v1, ($s0)
  /* 00E47C 8000D87C 02602025 */        or $a0, $s3, $zero
  /* 00E480 8000D880 26250025 */     addiu $a1, $s1, 0x25
  /* 00E484 8000D884 54600006 */      bnel $v1, $zero, .L8000D8A0
  /* 00E488 8000D888 C46A0014 */      lwc1 $f10, 0x14($v1)
  /* 00E48C 8000D88C 0C0023D1 */       jal func_80008F44
  /* 00E490 8000D890 30A500FF */      andi $a1, $a1, 0xff
  /* 00E494 8000D894 AE020000 */        sw $v0, ($s0)
  /* 00E498 8000D898 00401825 */        or $v1, $v0, $zero
  /* 00E49C 8000D89C C46A0014 */      lwc1 $f10, 0x14($v1)
  .L8000D8A0:
  /* 00E4A0 8000D8A0 4616A032 */    c.eq.s $f20, $f22
  /* 00E4A4 8000D8A4 E46A0010 */      swc1 $f10, 0x10($v1)
  /* 00E4A8 8000D8A8 8E6F0094 */        lw $t7, 0x94($s3)
  /* 00E4AC 8000D8AC 8E180000 */        lw $t8, ($s0)
  /* 00E4B0 8000D8B0 C5E60000 */      lwc1 $f6, ($t7)
  /* 00E4B4 8000D8B4 E7060014 */      swc1 $f6, 0x14($t8)
  /* 00E4B8 8000D8B8 8E790094 */        lw $t9, 0x94($s3)
  /* 00E4BC 8000D8BC 27280004 */     addiu $t0, $t9, 4
  /* 00E4C0 8000D8C0 AE680094 */        sw $t0, 0x94($s3)
  /* 00E4C4 8000D8C4 8E090000 */        lw $t1, ($s0)
  /* 00E4C8 8000D8C8 45010004 */      bc1t .L8000D8DC
  /* 00E4CC 8000D8CC A1370005 */        sb $s7, 5($t1)
  /* 00E4D0 8000D8D0 4614C483 */     div.s $f18, $f24, $f20
  /* 00E4D4 8000D8D4 8E0A0000 */        lw $t2, ($s0)
  /* 00E4D8 8000D8D8 E5520008 */      swc1 $f18, 8($t2)
  .L8000D8DC:
  /* 00E4DC 8000D8DC C6680098 */      lwc1 $f8, 0x98($s3)
  /* 00E4E0 8000D8E0 C664009C */      lwc1 $f4, 0x9c($s3)
  /* 00E4E4 8000D8E4 8E0B0000 */        lw $t3, ($s0)
  /* 00E4E8 8000D8E8 46004407 */     neg.s $f16, $f8
  /* 00E4EC 8000D8EC 46048281 */     sub.s $f10, $f16, $f4
  /* 00E4F0 8000D8F0 E56A000C */      swc1 $f10, 0xc($t3)
  .L8000D8F4:
  /* 00E4F4 8000D8F4 26310001 */     addiu $s1, $s1, 1
  /* 00E4F8 8000D8F8 163EFFD9 */       bne $s1, $fp, .L8000D860
  /* 00E4FC 8000D8FC 00129042 */       srl $s2, $s2, 1
  .L8000D900:
  /* 00E500 8000D900 8FAC0058 */        lw $t4, 0x58($sp)
  /* 00E504 8000D904 24010014 */     addiu $at, $zero, 0x14
  /* 00E508 8000D908 15810004 */       bne $t4, $at, .L8000D91C
  /* 00E50C 8000D90C 00000000 */       nop 
  /* 00E510 8000D910 C6660098 */      lwc1 $f6, 0x98($s3)
  /* 00E514 8000D914 46143480 */     add.s $f18, $f6, $f20
  /* 00E518 8000D918 E6720098 */      swc1 $f18, 0x98($s3)
  .L8000D91C:
  /* 00E51C 8000D91C 10000035 */         b .L8000D9F4
  /* 00E520 8000D920 C6600098 */      lwc1 $f0, 0x98($s3)
  glabel jtgt_8000D924
  /* 00E524 8000D924 306D7FFF */      andi $t5, $v1, 0x7fff
  /* 00E528 8000D928 448D4000 */      mtc1 $t5, $f8
  /* 00E52C 8000D92C 3C014F80 */       lui $at, (0x4F800000 >> 16) # 4294967300.0
  /* 00E530 8000D930 05A10004 */      bgez $t5, .L8000D944
  /* 00E534 8000D934 46804420 */   cvt.s.w $f16, $f8
  /* 00E538 8000D938 44812000 */      mtc1 $at, $f4 # 4294967300.0 to cop1
  /* 00E53C 8000D93C 00000000 */       nop 
  /* 00E540 8000D940 46048400 */     add.s $f16, $f16, $f4
  .L8000D944:
  /* 00E544 8000D944 E6700098 */      swc1 $f16, 0x98($s3)
  /* 00E548 8000D948 8C520000 */        lw $s2, ($v0)
  /* 00E54C 8000D94C 244E0004 */     addiu $t6, $v0, 4
  /* 00E550 8000D950 AE6E0094 */        sw $t6, 0x94($s3)
  /* 00E554 8000D954 001291C0 */       sll $s2, $s2, 7
  /* 00E558 8000D958 00129582 */       srl $s2, $s2, 0x16
  /* 00E55C 8000D95C 324F0001 */      andi $t7, $s2, 1
  /* 00E560 8000D960 11E00005 */      beqz $t7, .L8000D978
  /* 00E564 8000D964 32480002 */      andi $t0, $s2, 2
  /* 00E568 8000D968 8DD80000 */        lw $t8, ($t6)
  /* 00E56C 8000D96C 25D90004 */     addiu $t9, $t6, 4
  /* 00E570 8000D970 AE790094 */        sw $t9, 0x94($s3)
  /* 00E574 8000D974 AE780054 */        sw $t8, 0x54($s3)
  .L8000D978:
  /* 00E578 8000D978 11000006 */      beqz $t0, .L8000D994
  /* 00E57C 8000D97C 324B0004 */      andi $t3, $s2, 4
  /* 00E580 8000D980 8E620094 */        lw $v0, 0x94($s3)
  /* 00E584 8000D984 8C490000 */        lw $t1, ($v0)
  /* 00E588 8000D988 244A0004 */     addiu $t2, $v0, 4
  /* 00E58C 8000D98C AE6A0094 */        sw $t2, 0x94($s3)
  /* 00E590 8000D990 AE690074 */        sw $t1, 0x74($s3)
  .L8000D994:
  /* 00E594 8000D994 11600006 */      beqz $t3, .L8000D9B0
  /* 00E598 8000D998 324E0008 */      andi $t6, $s2, 8
  /* 00E59C 8000D99C 8E620094 */        lw $v0, 0x94($s3)
  /* 00E5A0 8000D9A0 8C4C0000 */        lw $t4, ($v0)
  /* 00E5A4 8000D9A4 244D0004 */     addiu $t5, $v0, 4
  /* 00E5A8 8000D9A8 AE6D0094 */        sw $t5, 0x94($s3)
  /* 00E5AC 8000D9AC AE6C0070 */        sw $t4, 0x70($s3)
  .L8000D9B0:
  /* 00E5B0 8000D9B0 11C00006 */      beqz $t6, .L8000D9CC
  /* 00E5B4 8000D9B4 32590010 */      andi $t9, $s2, 0x10
  /* 00E5B8 8000D9B8 8E620094 */        lw $v0, 0x94($s3)
  /* 00E5BC 8000D9BC 8C4F0000 */        lw $t7, ($v0)
  /* 00E5C0 8000D9C0 24580004 */     addiu $t8, $v0, 4
  /* 00E5C4 8000D9C4 AE780094 */        sw $t8, 0x94($s3)
  /* 00E5C8 8000D9C8 AE6F007C */        sw $t7, 0x7c($s3)
  .L8000D9CC:
  /* 00E5CC 8000D9CC 13200006 */      beqz $t9, .L8000D9E8
  /* 00E5D0 8000D9D0 00000000 */       nop 
  /* 00E5D4 8000D9D4 8E620094 */        lw $v0, 0x94($s3)
  /* 00E5D8 8000D9D8 8C480000 */        lw $t0, ($v0)
  /* 00E5DC 8000D9DC 24490004 */     addiu $t1, $v0, 4
  /* 00E5E0 8000D9E0 AE690094 */        sw $t1, 0x94($s3)
  /* 00E5E4 8000D9E4 AE680078 */        sw $t0, 0x78($s3)
  .L8000D9E8:
  /* 00E5E8 8000D9E8 10000002 */         b .L8000D9F4
  /* 00E5EC 8000D9EC C6600098 */      lwc1 $f0, 0x98($s3)
  glabel jtgt_8000D9F0
  /* 00E5F0 8000D9F0 C6600098 */      lwc1 $f0, 0x98($s3)
  .L8000D9F4:
  /* 00E5F4 8000D9F4 4616003E */    c.le.s $f0, $f22
  /* 00E5F8 8000D9F8 00000000 */       nop 
  /* 00E5FC 8000D9FC 4503FDB2 */     bc1tl .L8000D0C8
  /* 00E600 8000DA00 8E620094 */        lw $v0, 0x94($s3)
  .L8000DA04:
  /* 00E604 8000DA04 8FBF0054 */        lw $ra, 0x54($sp)
  .L8000DA08:
  /* 00E608 8000DA08 D7B40018 */      ldc1 $f20, 0x18($sp)
  /* 00E60C 8000DA0C D7B60020 */      ldc1 $f22, 0x20($sp)
  /* 00E610 8000DA10 D7B80028 */      ldc1 $f24, 0x28($sp)
  /* 00E614 8000DA14 8FB00030 */        lw $s0, 0x30($sp)
  /* 00E618 8000DA18 8FB10034 */        lw $s1, 0x34($sp)
  /* 00E61C 8000DA1C 8FB20038 */        lw $s2, 0x38($sp)
  /* 00E620 8000DA20 8FB3003C */        lw $s3, 0x3c($sp)
  /* 00E624 8000DA24 8FB40040 */        lw $s4, 0x40($sp)
  /* 00E628 8000DA28 8FB50044 */        lw $s5, 0x44($sp)
  /* 00E62C 8000DA2C 8FB60048 */        lw $s6, 0x48($sp)
  /* 00E630 8000DA30 8FB7004C */        lw $s7, 0x4c($sp)
  /* 00E634 8000DA34 8FBE0050 */        lw $fp, 0x50($sp)
  /* 00E638 8000DA38 03E00008 */        jr $ra
  /* 00E63C 8000DA3C 27BD00B8 */     addiu $sp, $sp, 0xb8

glabel func_8000DA40
  /* 00E640 8000DA40 27BDFF98 */     addiu $sp, $sp, -0x68
  /* 00E644 8000DA44 F7BA0020 */      sdc1 $f26, 0x20($sp)
  /* 00E648 8000DA48 F7B80018 */      sdc1 $f24, 0x18($sp)
  /* 00E64C 8000DA4C F7B60010 */      sdc1 $f22, 0x10($sp)
  /* 00E650 8000DA50 F7B40008 */      sdc1 $f20, 8($sp)
  /* 00E654 8000DA54 3C018004 */       lui $at, %hi(D_8003DEDC)
  /* 00E658 8000DA58 C424DEDC */      lwc1 $f4, %lo(D_8003DEDC)($at)
  /* 00E65C 8000DA5C C4800098 */      lwc1 $f0, 0x98($a0)
  /* 00E660 8000DA60 46002032 */    c.eq.s $f4, $f0
  /* 00E664 8000DA64 00000000 */       nop 
  /* 00E668 8000DA68 4503012D */     bc1tl .L8000DF20
  /* 00E66C 8000DA6C D7B40008 */      ldc1 $f20, 8($sp)
  /* 00E670 8000DA70 8C820090 */        lw $v0, 0x90($a0)
  /* 00E674 8000DA74 C7BA0064 */      lwc1 $f26, 0x64($sp)
  /* 00E678 8000DA78 240B0100 */     addiu $t3, $zero, 0x100
  /* 00E67C 8000DA7C 1040011E */      beqz $v0, .L8000DEF8
  /* 00E680 8000DA80 27AA0044 */     addiu $t2, $sp, 0x44
  /* 00E684 8000DA84 24090003 */     addiu $t1, $zero, 3
  /* 00E688 8000DA88 24080002 */     addiu $t0, $zero, 2
  /* 00E68C 8000DA8C 24070001 */     addiu $a3, $zero, 1
  /* 00E690 8000DA90 90430005 */       lbu $v1, 5($v0)
  .L8000DA94:
  /* 00E694 8000DA94 3C018004 */       lui $at, %hi(D_8003DEE0)
  /* 00E698 8000DA98 50600113 */      beql $v1, $zero, .L8000DEE8
  /* 00E69C 8000DA9C 8C420000 */        lw $v0, ($v0)
  /* 00E6A0 8000DAA0 C426DEE0 */      lwc1 $f6, %lo(D_8003DEE0)($at)
  /* 00E6A4 8000DAA4 C4880098 */      lwc1 $f8, 0x98($a0)
  /* 00E6A8 8000DAA8 46083032 */    c.eq.s $f6, $f8
  /* 00E6AC 8000DAAC 00000000 */       nop 
  /* 00E6B0 8000DAB0 45030007 */     bc1tl .L8000DAD0
  /* 00E6B4 8000DAB4 90450004 */       lbu $a1, 4($v0)
  /* 00E6B8 8000DAB8 C44A000C */      lwc1 $f10, 0xc($v0)
  /* 00E6BC 8000DABC C484009C */      lwc1 $f4, 0x9c($a0)
  /* 00E6C0 8000DAC0 90430005 */       lbu $v1, 5($v0)
  /* 00E6C4 8000DAC4 46045180 */     add.s $f6, $f10, $f4
  /* 00E6C8 8000DAC8 E446000C */      swc1 $f6, 0xc($v0)
  /* 00E6CC 8000DACC 90450004 */       lbu $a1, 4($v0)
  .L8000DAD0:
  /* 00E6D0 8000DAD0 28A10024 */      slti $at, $a1, 0x24
  /* 00E6D4 8000DAD4 10200099 */      beqz $at, .L8000DD3C
  /* 00E6D8 8000DAD8 24AEFFF3 */     addiu $t6, $a1, -0xd
  /* 00E6DC 8000DADC 50670033 */      beql $v1, $a3, .L8000DBAC
  /* 00E6E0 8000DAE0 C448000C */      lwc1 $f8, 0xc($v0)
  /* 00E6E4 8000DAE4 50680006 */      beql $v1, $t0, .L8000DB00
  /* 00E6E8 8000DAE8 C448000C */      lwc1 $f8, 0xc($v0)
  /* 00E6EC 8000DAEC 5069000A */      beql $v1, $t1, .L8000DB18
  /* 00E6F0 8000DAF0 C4420008 */      lwc1 $f2, 8($v0)
  /* 00E6F4 8000DAF4 10000036 */         b .L8000DBD0
  /* 00E6F8 8000DAF8 2DC1000A */     sltiu $at, $t6, 0xa
  /* 00E6FC 8000DAFC C448000C */      lwc1 $f8, 0xc($v0)
  .L8000DB00:
  /* 00E700 8000DB00 C44A0018 */      lwc1 $f10, 0x18($v0)
  /* 00E704 8000DB04 C4460010 */      lwc1 $f6, 0x10($v0)
  /* 00E708 8000DB08 460A4102 */     mul.s $f4, $f8, $f10
  /* 00E70C 8000DB0C 1000002F */         b .L8000DBCC
  /* 00E710 8000DB10 46043680 */     add.s $f26, $f6, $f4
  /* 00E714 8000DB14 C4420008 */      lwc1 $f2, 8($v0)
  .L8000DB18:
  /* 00E718 8000DB18 C440000C */      lwc1 $f0, 0xc($v0)
  /* 00E71C 8000DB1C 3C014040 */       lui $at, (0x40400000 >> 16) # 3.0
  /* 00E720 8000DB20 46021402 */     mul.s $f16, $f2, $f2
  /* 00E724 8000DB24 44813000 */      mtc1 $at, $f6 # 3.0 to cop1
  /* 00E728 8000DB28 3C013F80 */       lui $at, (0x3F800000 >> 16) # 1.0
  /* 00E72C 8000DB2C 46000302 */     mul.s $f12, $f0, $f0
  /* 00E730 8000DB30 00000000 */       nop 
  /* 00E734 8000DB34 460C1482 */     mul.s $f18, $f2, $f12
  /* 00E738 8000DB38 00000000 */       nop 
  /* 00E73C 8000DB3C 460C0202 */     mul.s $f8, $f0, $f12
  /* 00E740 8000DB40 00000000 */       nop 
  /* 00E744 8000DB44 46104382 */     mul.s $f14, $f8, $f16
  /* 00E748 8000DB48 460E7280 */     add.s $f10, $f14, $f14
  /* 00E74C 8000DB4C 46127601 */     sub.s $f24, $f14, $f18
  /* 00E750 8000DB50 46025502 */     mul.s $f20, $f10, $f2
  /* 00E754 8000DB54 44815000 */      mtc1 $at, $f10 # 1.0 to cop1
  /* 00E758 8000DB58 460C3102 */     mul.s $f4, $f6, $f12
  /* 00E75C 8000DB5C 00000000 */       nop 
  /* 00E760 8000DB60 46102582 */     mul.s $f22, $f4, $f16
  /* 00E764 8000DB64 C4440010 */      lwc1 $f4, 0x10($v0)
  /* 00E768 8000DB68 4616A201 */     sub.s $f8, $f20, $f22
  /* 00E76C 8000DB6C 460A4180 */     add.s $f6, $f8, $f10
  /* 00E770 8000DB70 C44A0014 */      lwc1 $f10, 0x14($v0)
  /* 00E774 8000DB74 46062202 */     mul.s $f8, $f4, $f6
  /* 00E778 8000DB78 4614B101 */     sub.s $f4, $f22, $f20
  /* 00E77C 8000DB7C 46045182 */     mul.s $f6, $f10, $f4
  /* 00E780 8000DB80 C4440018 */      lwc1 $f4, 0x18($v0)
  /* 00E784 8000DB84 46064280 */     add.s $f10, $f8, $f6
  /* 00E788 8000DB88 4612C201 */     sub.s $f8, $f24, $f18
  /* 00E78C 8000DB8C 46004180 */     add.s $f6, $f8, $f0
  /* 00E790 8000DB90 46062202 */     mul.s $f8, $f4, $f6
  /* 00E794 8000DB94 C446001C */      lwc1 $f6, 0x1c($v0)
  /* 00E798 8000DB98 46085100 */     add.s $f4, $f10, $f8
  /* 00E79C 8000DB9C 46183282 */     mul.s $f10, $f6, $f24
  /* 00E7A0 8000DBA0 1000000A */         b .L8000DBCC
  /* 00E7A4 8000DBA4 460A2680 */     add.s $f26, $f4, $f10
  /* 00E7A8 8000DBA8 C448000C */      lwc1 $f8, 0xc($v0)
  .L8000DBAC:
  /* 00E7AC 8000DBAC C4460008 */      lwc1 $f6, 8($v0)
  /* 00E7B0 8000DBB0 4608303E */    c.le.s $f6, $f8
  /* 00E7B4 8000DBB4 00000000 */       nop 
  /* 00E7B8 8000DBB8 45020004 */     bc1fl .L8000DBCC
  /* 00E7BC 8000DBBC C45A0010 */      lwc1 $f26, 0x10($v0)
  /* 00E7C0 8000DBC0 10000002 */         b .L8000DBCC
  /* 00E7C4 8000DBC4 C45A0014 */      lwc1 $f26, 0x14($v0)
  /* 00E7C8 8000DBC8 C45A0010 */      lwc1 $f26, 0x10($v0)
  .L8000DBCC:
  /* 00E7CC 8000DBCC 2DC1000A */     sltiu $at, $t6, 0xa
  .L8000DBD0:
  /* 00E7D0 8000DBD0 102000C4 */      beqz $at, .L8000DEE4
  /* 00E7D4 8000DBD4 000E7080 */       sll $t6, $t6, 2
  /* 00E7D8 8000DBD8 3C018004 */       lui $at, %hi(jtbl_8003DEE4)
  /* 00E7DC 8000DBDC 002E0821 */      addu $at, $at, $t6
  /* 00E7E0 8000DBE0 8C2EDEE4 */        lw $t6, %lo(jtbl_8003DEE4)($at)
  /* 00E7E4 8000DBE4 01C00008 */        jr $t6
  /* 00E7E8 8000DBE8 00000000 */       nop 
  glabel jtgt_8000DBEC
  /* 00E7EC 8000DBEC 444FF800 */      cfc1 $t7, $31
  /* 00E7F0 8000DBF0 24180001 */     addiu $t8, $zero, 1
  /* 00E7F4 8000DBF4 44D8F800 */      ctc1 $t8, $31
  /* 00E7F8 8000DBF8 3C014F00 */       lui $at, (0x4F000000 >> 16) # 2147483600.0
  /* 00E7FC 8000DBFC 4600D124 */   cvt.w.s $f4, $f26
  /* 00E800 8000DC00 4458F800 */      cfc1 $t8, $31
  /* 00E804 8000DC04 00000000 */       nop 
  /* 00E808 8000DC08 33180078 */      andi $t8, $t8, 0x78
  /* 00E80C 8000DC0C 53000013 */      beql $t8, $zero, .L8000DC5C
  /* 00E810 8000DC10 44182000 */      mfc1 $t8, $f4
  /* 00E814 8000DC14 44812000 */      mtc1 $at, $f4 # 2147483600.0 to cop1
  /* 00E818 8000DC18 24180001 */     addiu $t8, $zero, 1
  /* 00E81C 8000DC1C 4604D101 */     sub.s $f4, $f26, $f4
  /* 00E820 8000DC20 44D8F800 */      ctc1 $t8, $31
  /* 00E824 8000DC24 00000000 */       nop 
  /* 00E828 8000DC28 46002124 */   cvt.w.s $f4, $f4
  /* 00E82C 8000DC2C 4458F800 */      cfc1 $t8, $31
  /* 00E830 8000DC30 00000000 */       nop 
  /* 00E834 8000DC34 33180078 */      andi $t8, $t8, 0x78
  /* 00E838 8000DC38 17000005 */      bnez $t8, .L8000DC50
  /* 00E83C 8000DC3C 00000000 */       nop 
  /* 00E840 8000DC40 44182000 */      mfc1 $t8, $f4
  /* 00E844 8000DC44 3C018000 */       lui $at, 0x8000
  /* 00E848 8000DC48 10000007 */         b .L8000DC68
  /* 00E84C 8000DC4C 0301C025 */        or $t8, $t8, $at
  .L8000DC50:
  /* 00E850 8000DC50 10000005 */         b .L8000DC68
  /* 00E854 8000DC54 2418FFFF */     addiu $t8, $zero, -1
  /* 00E858 8000DC58 44182000 */      mfc1 $t8, $f4
  .L8000DC5C:
  /* 00E85C 8000DC5C 00000000 */       nop 
  /* 00E860 8000DC60 0700FFFB */      bltz $t8, .L8000DC50
  /* 00E864 8000DC64 00000000 */       nop 
  .L8000DC68:
  /* 00E868 8000DC68 44CFF800 */      ctc1 $t7, $31
  /* 00E86C 8000DC6C 1000009D */         b .L8000DEE4
  /* 00E870 8000DC70 A4980080 */        sh $t8, 0x80($a0)
  glabel jtgt_8000DC74
  /* 00E874 8000DC74 1000009B */         b .L8000DEE4
  /* 00E878 8000DC78 E49A001C */      swc1 $f26, 0x1c($a0)
  glabel jtgt_8000DC7C
  /* 00E87C 8000DC7C 10000099 */         b .L8000DEE4
  /* 00E880 8000DC80 E49A0020 */      swc1 $f26, 0x20($a0)
  glabel jtgt_8000DC84
  /* 00E884 8000DC84 10000097 */         b .L8000DEE4
  /* 00E888 8000DC88 E49A0024 */      swc1 $f26, 0x24($a0)
  glabel jtgt_8000DC8C
  /* 00E88C 8000DC8C 10000095 */         b .L8000DEE4
  /* 00E890 8000DC90 E49A0028 */      swc1 $f26, 0x28($a0)
  glabel jtgt_8000DC94
  /* 00E894 8000DC94 4459F800 */      cfc1 $t9, $31
  /* 00E898 8000DC98 240C0001 */     addiu $t4, $zero, 1
  /* 00E89C 8000DC9C 44CCF800 */      ctc1 $t4, $31
  /* 00E8A0 8000DCA0 3C014F00 */       lui $at, (0x4F000000 >> 16) # 2147483600.0
  /* 00E8A4 8000DCA4 4600D2A4 */   cvt.w.s $f10, $f26
  /* 00E8A8 8000DCA8 444CF800 */      cfc1 $t4, $31
  /* 00E8AC 8000DCAC 00000000 */       nop 
  /* 00E8B0 8000DCB0 318C0078 */      andi $t4, $t4, 0x78
  /* 00E8B4 8000DCB4 51800013 */      beql $t4, $zero, .L8000DD04
  /* 00E8B8 8000DCB8 440C5000 */      mfc1 $t4, $f10
  /* 00E8BC 8000DCBC 44815000 */      mtc1 $at, $f10 # 2147483600.0 to cop1
  /* 00E8C0 8000DCC0 240C0001 */     addiu $t4, $zero, 1
  /* 00E8C4 8000DCC4 460AD281 */     sub.s $f10, $f26, $f10
  /* 00E8C8 8000DCC8 44CCF800 */      ctc1 $t4, $31
  /* 00E8CC 8000DCCC 00000000 */       nop 
  /* 00E8D0 8000DCD0 460052A4 */   cvt.w.s $f10, $f10
  /* 00E8D4 8000DCD4 444CF800 */      cfc1 $t4, $31
  /* 00E8D8 8000DCD8 00000000 */       nop 
  /* 00E8DC 8000DCDC 318C0078 */      andi $t4, $t4, 0x78
  /* 00E8E0 8000DCE0 15800005 */      bnez $t4, .L8000DCF8
  /* 00E8E4 8000DCE4 00000000 */       nop 
  /* 00E8E8 8000DCE8 440C5000 */      mfc1 $t4, $f10
  /* 00E8EC 8000DCEC 3C018000 */       lui $at, 0x8000
  /* 00E8F0 8000DCF0 10000007 */         b .L8000DD10
  /* 00E8F4 8000DCF4 01816025 */        or $t4, $t4, $at
  .L8000DCF8:
  /* 00E8F8 8000DCF8 10000005 */         b .L8000DD10
  /* 00E8FC 8000DCFC 240CFFFF */     addiu $t4, $zero, -1
  /* 00E900 8000DD00 440C5000 */      mfc1 $t4, $f10
  .L8000DD04:
  /* 00E904 8000DD04 00000000 */       nop 
  /* 00E908 8000DD08 0580FFFB */      bltz $t4, .L8000DCF8
  /* 00E90C 8000DD0C 00000000 */       nop 
  .L8000DD10:
  /* 00E910 8000DD10 44D9F800 */      ctc1 $t9, $31
  /* 00E914 8000DD14 10000073 */         b .L8000DEE4
  /* 00E918 8000DD18 A48C0082 */        sh $t4, 0x82($a0)
  glabel jtgt_8000DD1C
  /* 00E91C 8000DD1C 10000071 */         b .L8000DEE4
  /* 00E920 8000DD20 E49A0044 */      swc1 $f26, 0x44($a0)
  glabel jtgt_8000DD24
  /* 00E924 8000DD24 1000006F */         b .L8000DEE4
  /* 00E928 8000DD28 E49A0048 */      swc1 $f26, 0x48($a0)
  glabel jtgt_8000DD2C
  /* 00E92C 8000DD2C 1000006D */         b .L8000DEE4
  /* 00E930 8000DD30 E49A0084 */      swc1 $f26, 0x84($a0)
  glabel jtgt_8000DD34
  /* 00E934 8000DD34 1000006B */         b .L8000DEE4
  /* 00E938 8000DD38 E49A0088 */      swc1 $f26, 0x88($a0)
  .L8000DD3C:
  /* 00E93C 8000DD3C 50670047 */      beql $v1, $a3, .L8000DE5C
  /* 00E940 8000DD40 C444000C */      lwc1 $f4, 0xc($v0)
  /* 00E944 8000DD44 54680051 */      bnel $v1, $t0, .L8000DE8C
  /* 00E948 8000DD48 24ADFFDB */     addiu $t5, $a1, -0x25
  /* 00E94C 8000DD4C C448000C */      lwc1 $f8, 0xc($v0)
  /* 00E950 8000DD50 C4460008 */      lwc1 $f6, 8($v0)
  /* 00E954 8000DD54 3C014380 */       lui $at, (0x43800000 >> 16) # 256.0
  /* 00E958 8000DD58 44815000 */      mtc1 $at, $f10 # 256.0 to cop1
  /* 00E95C 8000DD5C 46064102 */     mul.s $f4, $f8, $f6
  /* 00E960 8000DD60 00000000 */       nop 
  /* 00E964 8000DD64 460A2202 */     mul.s $f8, $f4, $f10
  /* 00E968 8000DD68 4600418D */ trunc.w.s $f6, $f8
  /* 00E96C 8000DD6C 44033000 */      mfc1 $v1, $f6
  /* 00E970 8000DD70 00000000 */       nop 
  /* 00E974 8000DD74 04610002 */      bgez $v1, .L8000DD80
  /* 00E978 8000DD78 00000000 */       nop 
  /* 00E97C 8000DD7C 00001825 */        or $v1, $zero, $zero
  .L8000DD80:
  /* 00E980 8000DD80 28610101 */      slti $at, $v1, 0x101
  /* 00E984 8000DD84 54200003 */      bnel $at, $zero, .L8000DD94
  /* 00E988 8000DD88 AFA00034 */        sw $zero, 0x34($sp)
  /* 00E98C 8000DD8C 01601825 */        or $v1, $t3, $zero
  /* 00E990 8000DD90 AFA00034 */        sw $zero, 0x34($sp)
  .L8000DD94:
  /* 00E994 8000DD94 AFA00038 */        sw $zero, 0x38($sp)
  /* 00E998 8000DD98 904E0010 */       lbu $t6, 0x10($v0)
  /* 00E99C 8000DD9C 01633023 */      subu $a2, $t3, $v1
  /* 00E9A0 8000DDA0 A3AE0039 */        sb $t6, 0x39($sp)
  /* 00E9A4 8000DDA4 904F0011 */       lbu $t7, 0x11($v0)
  /* 00E9A8 8000DDA8 A3AF003B */        sb $t7, 0x3b($sp)
  /* 00E9AC 8000DDAC 8FAC0038 */        lw $t4, 0x38($sp)
  /* 00E9B0 8000DDB0 90580014 */       lbu $t8, 0x14($v0)
  /* 00E9B4 8000DDB4 00CC0019 */     multu $a2, $t4
  /* 00E9B8 8000DDB8 A3B80035 */        sb $t8, 0x35($sp)
  /* 00E9BC 8000DDBC 90590015 */       lbu $t9, 0x15($v0)
  /* 00E9C0 8000DDC0 A3B90037 */        sb $t9, 0x37($sp)
  /* 00E9C4 8000DDC4 8FAE0034 */        lw $t6, 0x34($sp)
  /* 00E9C8 8000DDC8 00006812 */      mflo $t5
  /* 00E9CC 8000DDCC 00000000 */       nop 
  /* 00E9D0 8000DDD0 00000000 */       nop 
  /* 00E9D4 8000DDD4 01C30019 */     multu $t6, $v1
  /* 00E9D8 8000DDD8 00007812 */      mflo $t7
  /* 00E9DC 8000DDDC 01AFC021 */      addu $t8, $t5, $t7
  /* 00E9E0 8000DDE0 AFB80038 */        sw $t8, 0x38($sp)
  /* 00E9E4 8000DDE4 93B90038 */       lbu $t9, 0x38($sp)
  /* 00E9E8 8000DDE8 93AC003A */       lbu $t4, 0x3a($sp)
  /* 00E9EC 8000DDEC AFA00038 */        sw $zero, 0x38($sp)
  /* 00E9F0 8000DDF0 A3B90044 */        sb $t9, 0x44($sp)
  /* 00E9F4 8000DDF4 A3AC0045 */        sb $t4, 0x45($sp)
  /* 00E9F8 8000DDF8 904E0012 */       lbu $t6, 0x12($v0)
  /* 00E9FC 8000DDFC A3AE0039 */        sb $t6, 0x39($sp)
  /* 00EA00 8000DE00 904D0013 */       lbu $t5, 0x13($v0)
  /* 00EA04 8000DE04 A3AD003B */        sb $t5, 0x3b($sp)
  /* 00EA08 8000DE08 8FB90038 */        lw $t9, 0x38($sp)
  /* 00EA0C 8000DE0C 904F0016 */       lbu $t7, 0x16($v0)
  /* 00EA10 8000DE10 00D90019 */     multu $a2, $t9
  /* 00EA14 8000DE14 A3AF0035 */        sb $t7, 0x35($sp)
  /* 00EA18 8000DE18 90580017 */       lbu $t8, 0x17($v0)
  /* 00EA1C 8000DE1C A3B80037 */        sb $t8, 0x37($sp)
  /* 00EA20 8000DE20 8FAE0034 */        lw $t6, 0x34($sp)
  /* 00EA24 8000DE24 00006012 */      mflo $t4
  /* 00EA28 8000DE28 00000000 */       nop 
  /* 00EA2C 8000DE2C 00000000 */       nop 
# Maybe start of new file
  /* 00EA30 8000DE30 01C30019 */     multu $t6, $v1
  /* 00EA34 8000DE34 00006812 */      mflo $t5
  /* 00EA38 8000DE38 018D7821 */      addu $t7, $t4, $t5
  /* 00EA3C 8000DE3C AFAF0038 */        sw $t7, 0x38($sp)
  /* 00EA40 8000DE40 93B80038 */       lbu $t8, 0x38($sp)
  /* 00EA44 8000DE44 93B9003A */       lbu $t9, 0x3a($sp)
  /* 00EA48 8000DE48 A3B80046 */        sb $t8, 0x46($sp)
  /* 00EA4C 8000DE4C A3B90047 */        sb $t9, 0x47($sp)
  /* 00EA50 8000DE50 1000000D */         b .L8000DE88
  /* 00EA54 8000DE54 90450004 */       lbu $a1, 4($v0)
  /* 00EA58 8000DE58 C444000C */      lwc1 $f4, 0xc($v0)
  .L8000DE5C:
  /* 00EA5C 8000DE5C C44A0008 */      lwc1 $f10, 8($v0)
  /* 00EA60 8000DE60 24460010 */     addiu $a2, $v0, 0x10
  /* 00EA64 8000DE64 4604503E */    c.le.s $f10, $f4
  /* 00EA68 8000DE68 00000000 */       nop 
  /* 00EA6C 8000DE6C 45000003 */      bc1f .L8000DE7C
  /* 00EA70 8000DE70 00000000 */       nop 
  /* 00EA74 8000DE74 10000001 */         b .L8000DE7C
  /* 00EA78 8000DE78 24460014 */     addiu $a2, $v0, 0x14
  .L8000DE7C:
  /* 00EA7C 8000DE7C 8CCC0000 */        lw $t4, ($a2)
  /* 00EA80 8000DE80 AD4C0000 */        sw $t4, ($t2)
  /* 00EA84 8000DE84 90450004 */       lbu $a1, 4($v0)
  .L8000DE88:
  /* 00EA88 8000DE88 24ADFFDB */     addiu $t5, $a1, -0x25
  .L8000DE8C:
  /* 00EA8C 8000DE8C 2DA10005 */     sltiu $at, $t5, 5
  /* 00EA90 8000DE90 10200014 */      beqz $at, .L8000DEE4
  /* 00EA94 8000DE94 000D6880 */       sll $t5, $t5, 2
  /* 00EA98 8000DE98 3C018004 */       lui $at, %hi(D_8003DF0C)
  /* 00EA9C 8000DE9C 002D0821 */      addu $at, $at, $t5
  /* 00EAA0 8000DEA0 8C2DDF0C */        lw $t5, %lo(D_8003DF0C)($at)
  /* 00EAA4 8000DEA4 01A00008 */        jr $t5
  /* 00EAA8 8000DEA8 00000000 */       nop 
  glabel jtgt_8000DEAC
  /* 00EAAC 8000DEAC 8D580000 */        lw $t8, ($t2)
  /* 00EAB0 8000DEB0 1000000C */         b .L8000DEE4
  /* 00EAB4 8000DEB4 AC980058 */        sw $t8, 0x58($a0)
  glabel jtgt_8000DEB8
  /* 00EAB8 8000DEB8 8D4E0000 */        lw $t6, ($t2)
  /* 00EABC 8000DEBC 10000009 */         b .L8000DEE4
  /* 00EAC0 8000DEC0 AC8E0060 */        sw $t6, 0x60($a0)
  glabel jtgt_8000DEC4
  /* 00EAC4 8000DEC4 8D4D0000 */        lw $t5, ($t2)
  /* 00EAC8 8000DEC8 10000006 */         b .L8000DEE4
  /* 00EACC 8000DECC AC8D0064 */        sw $t5, 0x64($a0)
  glabel jtgt_8000DED0
  /* 00EAD0 8000DED0 8D580000 */        lw $t8, ($t2)
  /* 00EAD4 8000DED4 10000003 */         b .L8000DEE4
  /* 00EAD8 8000DED8 AC980068 */        sw $t8, 0x68($a0)
  glabel jtgt_8000DEDC
  /* 00EADC 8000DEDC 8D4E0000 */        lw $t6, ($t2)
  /* 00EAE0 8000DEE0 AC8E006C */        sw $t6, 0x6c($a0)
  .L8000DEE4:
  /* 00EAE4 8000DEE4 8C420000 */        lw $v0, ($v0)
  .L8000DEE8:
  /* 00EAE8 8000DEE8 5440FEEA */      bnel $v0, $zero, .L8000DA94
  /* 00EAEC 8000DEEC 90430005 */       lbu $v1, 5($v0)
  /* 00EAF0 8000DEF0 E7BA0064 */      swc1 $f26, 0x64($sp)
  /* 00EAF4 8000DEF4 C4800098 */      lwc1 $f0, 0x98($a0)
  .L8000DEF8:
  /* 00EAF8 8000DEF8 3C018004 */       lui $at, %hi(D_8003DF20)
  /* 00EAFC 8000DEFC C428DF20 */      lwc1 $f8, %lo(D_8003DF20)($at)
  /* 00EB00 8000DF00 3C018004 */       lui $at, %hi(D_8003DF24)
  /* 00EB04 8000DF04 46004032 */    c.eq.s $f8, $f0
  /* 00EB08 8000DF08 00000000 */       nop 
  /* 00EB0C 8000DF0C 45020004 */     bc1fl .L8000DF20
  /* 00EB10 8000DF10 D7B40008 */      ldc1 $f20, 8($sp)
  /* 00EB14 8000DF14 C426DF24 */      lwc1 $f6, %lo(D_8003DF24)($at)
  /* 00EB18 8000DF18 E4860098 */      swc1 $f6, 0x98($a0)
  /* 00EB1C 8000DF1C D7B40008 */      ldc1 $f20, 8($sp)
  .L8000DF20:
  /* 00EB20 8000DF20 D7B60010 */      ldc1 $f22, 0x10($sp)
  /* 00EB24 8000DF24 D7B80018 */      ldc1 $f24, 0x18($sp)
  /* 00EB28 8000DF28 D7BA0020 */      ldc1 $f26, 0x20($sp)
  /* 00EB2C 8000DF2C 03E00008 */        jr $ra
  /* 00EB30 8000DF30 27BD0068 */     addiu $sp, $sp, 0x68

glabel func_8000DF34
  /* 00EB34 8000DF34 27BDFFD8 */     addiu $sp, $sp, -0x28
  /* 00EB38 8000DF38 AFBF0024 */        sw $ra, 0x24($sp)
  /* 00EB3C 8000DF3C AFB20020 */        sw $s2, 0x20($sp)
  /* 00EB40 8000DF40 AFB1001C */        sw $s1, 0x1c($sp)
  /* 00EB44 8000DF44 AFB00018 */        sw $s0, 0x18($sp)
  /* 00EB48 8000DF48 8C910074 */        lw $s1, 0x74($a0)
  /* 00EB4C 8000DF4C 24120001 */     addiu $s2, $zero, 1
  /* 00EB50 8000DF50 52200028 */      beql $s1, $zero, .L8000DFF4
  /* 00EB54 8000DF54 8FBF0024 */        lw $ra, 0x24($sp)
  .L8000DF58:
  /* 00EB58 8000DF58 0C002FFA */       jal func_8000BFE8
  /* 00EB5C 8000DF5C 02202025 */        or $a0, $s1, $zero
  /* 00EB60 8000DF60 0C00332F */       jal func_8000CCBC
  /* 00EB64 8000DF64 02202025 */        or $a0, $s1, $zero
  /* 00EB68 8000DF68 8E300080 */        lw $s0, 0x80($s1)
  /* 00EB6C 8000DF6C 52000009 */      beql $s0, $zero, .L8000DF94
  /* 00EB70 8000DF70 8E220010 */        lw $v0, 0x10($s1)
  .L8000DF74:
  /* 00EB74 8000DF74 0C0033DB */       jal func_8000CF6C
  /* 00EB78 8000DF78 02002025 */        or $a0, $s0, $zero
  /* 00EB7C 8000DF7C 0C003690 */       jal func_8000DA40
  /* 00EB80 8000DF80 02002025 */        or $a0, $s0, $zero
  /* 00EB84 8000DF84 8E100000 */        lw $s0, ($s0)
  /* 00EB88 8000DF88 1600FFFA */      bnez $s0, .L8000DF74
  /* 00EB8C 8000DF8C 00000000 */       nop 
  /* 00EB90 8000DF90 8E220010 */        lw $v0, 0x10($s1)
  .L8000DF94:
  /* 00EB94 8000DF94 50400004 */      beql $v0, $zero, .L8000DFA8
  /* 00EB98 8000DF98 8E220008 */        lw $v0, 8($s1)
  /* 00EB9C 8000DF9C 10000012 */         b .L8000DFE8
  /* 00EBA0 8000DFA0 00408825 */        or $s1, $v0, $zero
  /* 00EBA4 8000DFA4 8E220008 */        lw $v0, 8($s1)
  .L8000DFA8:
  /* 00EBA8 8000DFA8 50400004 */      beql $v0, $zero, .L8000DFBC
  /* 00EBAC 8000DFAC 8E220014 */        lw $v0, 0x14($s1)
  /* 00EBB0 8000DFB0 1000000D */         b .L8000DFE8
  /* 00EBB4 8000DFB4 00408825 */        or $s1, $v0, $zero
  .L8000DFB8:
  /* 00EBB8 8000DFB8 8E220014 */        lw $v0, 0x14($s1)
  .L8000DFBC:
  /* 00EBBC 8000DFBC 56420004 */      bnel $s2, $v0, .L8000DFD0
  /* 00EBC0 8000DFC0 8C430008 */        lw $v1, 8($v0)
  /* 00EBC4 8000DFC4 10000008 */         b .L8000DFE8
  /* 00EBC8 8000DFC8 00008825 */        or $s1, $zero, $zero
  /* 00EBCC 8000DFCC 8C430008 */        lw $v1, 8($v0)
  .L8000DFD0:
  /* 00EBD0 8000DFD0 10600003 */      beqz $v1, .L8000DFE0
  /* 00EBD4 8000DFD4 00000000 */       nop 
  /* 00EBD8 8000DFD8 10000003 */         b .L8000DFE8
  /* 00EBDC 8000DFDC 00608825 */        or $s1, $v1, $zero
  .L8000DFE0:
  /* 00EBE0 8000DFE0 1000FFF5 */         b .L8000DFB8
  /* 00EBE4 8000DFE4 00408825 */        or $s1, $v0, $zero
  .L8000DFE8:
  /* 00EBE8 8000DFE8 1620FFDB */      bnez $s1, .L8000DF58
  /* 00EBEC 8000DFEC 00000000 */       nop 
  /* 00EBF0 8000DFF0 8FBF0024 */        lw $ra, 0x24($sp)
  .L8000DFF4:
  /* 00EBF4 8000DFF4 8FB00018 */        lw $s0, 0x18($sp)
  /* 00EBF8 8000DFF8 8FB1001C */        lw $s1, 0x1c($sp)
  /* 00EBFC 8000DFFC 8FB20020 */        lw $s2, 0x20($sp)
  /* 00EC00 8000E000 03E00008 */        jr $ra
  /* 00EC04 8000E004 27BD0028 */     addiu $sp, $sp, 0x28

glabel func_8000E008
  /* 00EC08 8000E008 AFA50004 */        sw $a1, 4($sp)
  /* 00EC0C 8000E00C 1080000A */      beqz $a0, .L8000E038
  /* 00EC10 8000E010 30A500FF */      andi $a1, $a1, 0xff
  /* 00EC14 8000E014 00A01025 */        or $v0, $a1, $zero
  /* 00EC18 8000E018 908E0004 */       lbu $t6, 4($a0)
  .L8000E01C:
  /* 00EC1C 8000E01C 544E0004 */      bnel $v0, $t6, .L8000E030
  /* 00EC20 8000E020 8C840000 */        lw $a0, ($a0)
  /* 00EC24 8000E024 03E00008 */        jr $ra
  /* 00EC28 8000E028 00801025 */        or $v0, $a0, $zero

  /* 00EC2C 8000E02C 8C840000 */        lw $a0, ($a0)
  .L8000E030:
  /* 00EC30 8000E030 5480FFFA */      bnel $a0, $zero, .L8000E01C
  /* 00EC34 8000E034 908E0004 */       lbu $t6, 4($a0)
  .L8000E038:
  /* 00EC38 8000E038 00001025 */        or $v0, $zero, $zero
  /* 00EC3C 8000E03C 03E00008 */        jr $ra
  /* 00EC40 8000E040 00000000 */       nop 

glabel func_8000E044
  /* 00EC44 8000E044 44856000 */      mtc1 $a1, $f12
  /* 00EC48 8000E048 C4840078 */      lwc1 $f4, 0x78($a0)
  /* 00EC4C 8000E04C 8C82006C */        lw $v0, 0x6c($a0)
  /* 00EC50 8000E050 3C013F80 */       lui $at, (0x3F800000 >> 16) # 1.0
  /* 00EC54 8000E054 460C2180 */     add.s $f6, $f4, $f12
  /* 00EC58 8000E058 10400008 */      beqz $v0, .L8000E07C
  /* 00EC5C 8000E05C E4860074 */      swc1 $f6, 0x74($a0)
  /* 00EC60 8000E060 44814000 */      mtc1 $at, $f8 # 1.0 to cop1
  /* 00EC64 8000E064 00000000 */       nop 
  /* 00EC68 8000E068 460C4003 */     div.s $f0, $f8, $f12
  /* 00EC6C 8000E06C E4400008 */      swc1 $f0, 8($v0)
  .L8000E070:
  /* 00EC70 8000E070 8C420000 */        lw $v0, ($v0)
  /* 00EC74 8000E074 5440FFFE */      bnel $v0, $zero, .L8000E070
  /* 00EC78 8000E078 E4400008 */      swc1 $f0, 8($v0)
  .L8000E07C:
  /* 00EC7C 8000E07C 03E00008 */        jr $ra
  /* 00EC80 8000E080 00000000 */       nop 

glabel func_8000E084
  /* 00EC84 8000E084 24AEFFFF */     addiu $t6, $a1, -1
  /* 00EC88 8000E088 2DC1000A */     sltiu $at, $t6, 0xa
  /* 00EC8C 8000E08C 10200017 */      beqz $at, jtgt_8000E0EC
  /* 00EC90 8000E090 000E7080 */       sll $t6, $t6, 2
  /* 00EC94 8000E094 3C018004 */       lui $at, %hi(jtbl_8003DF28)
  /* 00EC98 8000E098 002E0821 */      addu $at, $at, $t6
  /* 00EC9C 8000E09C 8C2EDF28 */        lw $t6, %lo(jtbl_8003DF28)($at)
  /* 00ECA0 8000E0A0 01C00008 */        jr $t6
  /* 00ECA4 8000E0A4 00000000 */       nop 
  glabel jtgt_8000E0A8
  /* 00ECA8 8000E0A8 03E00008 */        jr $ra
  /* 00ECAC 8000E0AC C4800030 */      lwc1 $f0, 0x30($a0)

  glabel jtgt_8000E0B0
  /* 00ECB0 8000E0B0 03E00008 */        jr $ra
  /* 00ECB4 8000E0B4 C4800034 */      lwc1 $f0, 0x34($a0)

  glabel jtgt_8000E0B8
  /* 00ECB8 8000E0B8 03E00008 */        jr $ra
  /* 00ECBC 8000E0BC C4800038 */      lwc1 $f0, 0x38($a0)

  glabel jtgt_8000E0C0
  /* 00ECC0 8000E0C0 03E00008 */        jr $ra
  /* 00ECC4 8000E0C4 C480001C */      lwc1 $f0, 0x1c($a0)

  glabel jtgt_8000E0C8
  /* 00ECC8 8000E0C8 03E00008 */        jr $ra
  /* 00ECCC 8000E0CC C4800020 */      lwc1 $f0, 0x20($a0)

  glabel jtgt_8000E0D0
  /* 00ECD0 8000E0D0 03E00008 */        jr $ra
  /* 00ECD4 8000E0D4 C4800024 */      lwc1 $f0, 0x24($a0)

  glabel jtgt_8000E0D8
  /* 00ECD8 8000E0D8 03E00008 */        jr $ra
  /* 00ECDC 8000E0DC C4800040 */      lwc1 $f0, 0x40($a0)

  glabel jtgt_8000E0E0
  /* 00ECE0 8000E0E0 03E00008 */        jr $ra
  /* 00ECE4 8000E0E4 C4800044 */      lwc1 $f0, 0x44($a0)

  glabel jtgt_8000E0E8
  /* 00ECE8 8000E0E8 C4800048 */      lwc1 $f0, 0x48($a0)
  glabel jtgt_8000E0EC
  /* 00ECEC 8000E0EC 03E00008 */        jr $ra
  /* 00ECF0 8000E0F0 00000000 */       nop 

glabel func_8000E0F4
  /* 00ECF4 8000E0F4 24AEFFFF */     addiu $t6, $a1, -1
  /* 00ECF8 8000E0F8 2DC1000A */     sltiu $at, $t6, 0xa
  /* 00ECFC 8000E0FC 10200017 */      beqz $at, jtgt_8000E15C
  /* 00ED00 8000E100 000E7080 */       sll $t6, $t6, 2
  /* 00ED04 8000E104 3C018004 */       lui $at, %hi(D_8003DF50)
  /* 00ED08 8000E108 002E0821 */      addu $at, $at, $t6
  /* 00ED0C 8000E10C 8C2EDF50 */        lw $t6, %lo(D_8003DF50)($at)
  /* 00ED10 8000E110 01C00008 */        jr $t6
  /* 00ED14 8000E114 00000000 */       nop 
  glabel jtgt_8000E118
  /* 00ED18 8000E118 03E00008 */        jr $ra
  /* 00ED1C 8000E11C C4800014 */      lwc1 $f0, 0x14($a0)

  glabel jtgt_8000E120
  /* 00ED20 8000E120 03E00008 */        jr $ra
  /* 00ED24 8000E124 C4800018 */      lwc1 $f0, 0x18($a0)

  glabel jtgt_8000E128
  /* 00ED28 8000E128 03E00008 */        jr $ra
  /* 00ED2C 8000E12C C480001C */      lwc1 $f0, 0x1c($a0)

  glabel jtgt_8000E130
  /* 00ED30 8000E130 03E00008 */        jr $ra
  /* 00ED34 8000E134 C4800008 */      lwc1 $f0, 8($a0)

  glabel jtgt_8000E138
  /* 00ED38 8000E138 03E00008 */        jr $ra
  /* 00ED3C 8000E13C C480000C */      lwc1 $f0, 0xc($a0)

  glabel jtgt_8000E140
  /* 00ED40 8000E140 03E00008 */        jr $ra
  /* 00ED44 8000E144 C4800010 */      lwc1 $f0, 0x10($a0)

  glabel jtgt_8000E148
  /* 00ED48 8000E148 03E00008 */        jr $ra
  /* 00ED4C 8000E14C C4800020 */      lwc1 $f0, 0x20($a0)

  glabel jtgt_8000E150
  /* 00ED50 8000E150 03E00008 */        jr $ra
  /* 00ED54 8000E154 C4800024 */      lwc1 $f0, 0x24($a0)

  glabel jtgt_8000E158
  /* 00ED58 8000E158 C4800028 */      lwc1 $f0, 0x28($a0)
  glabel jtgt_8000E15C
  /* 00ED5C 8000E15C 03E00008 */        jr $ra
  /* 00ED60 8000E160 00000000 */       nop 

glabel func_8000E164
  /* 00ED64 8000E164 27BDFFD8 */     addiu $sp, $sp, -0x28
  /* 00ED68 8000E168 AFBF001C */        sw $ra, 0x1c($sp)
  /* 00ED6C 8000E16C AFB00018 */        sw $s0, 0x18($sp)
  /* 00ED70 8000E170 AFA40028 */        sw $a0, 0x28($sp)
  /* 00ED74 8000E174 AFA5002C */        sw $a1, 0x2c($sp)
  /* 00ED78 8000E178 00C08025 */        or $s0, $a2, $zero
  /* 00ED7C 8000E17C AFA70034 */        sw $a3, 0x34($sp)
  /* 00ED80 8000E180 93A50043 */       lbu $a1, 0x43($sp)
  /* 00ED84 8000E184 0C003802 */       jal func_8000E008
  /* 00ED88 8000E188 8FA40038 */        lw $a0, 0x38($sp)
  /* 00ED8C 8000E18C 8FA30028 */        lw $v1, 0x28($sp)
  /* 00ED90 8000E190 8FA6002C */        lw $a2, 0x2c($sp)
  /* 00ED94 8000E194 8FA70040 */        lw $a3, 0x40($sp)
  /* 00ED98 8000E198 1040001B */      beqz $v0, .L8000E208
  /* 00ED9C 8000E19C 00402025 */        or $a0, $v0, $zero
  /* 00EDA0 8000E1A0 904E0005 */       lbu $t6, 5($v0)
  /* 00EDA4 8000E1A4 51C00019 */      beql $t6, $zero, .L8000E20C
  /* 00EDA8 8000E1A8 24020005 */     addiu $v0, $zero, 5
  /* 00EDAC 8000E1AC 1460000B */      bnez $v1, .L8000E1DC
  /* 00EDB0 8000E1B0 3C018004 */       lui $at, %hi(D_8003DF78)
  /* 00EDB4 8000E1B4 C424DF78 */      lwc1 $f4, %lo(D_8003DF78)($at)
  /* 00EDB8 8000E1B8 C4C60074 */      lwc1 $f6, 0x74($a2)
  /* 00EDBC 8000E1BC 46062032 */    c.eq.s $f4, $f6
  /* 00EDC0 8000E1C0 00000000 */       nop 
  /* 00EDC4 8000E1C4 45010005 */      bc1t .L8000E1DC
  /* 00EDC8 8000E1C8 00000000 */       nop 
  /* 00EDCC 8000E1CC C448000C */      lwc1 $f8, 0xc($v0)
  /* 00EDD0 8000E1D0 C4CA0078 */      lwc1 $f10, 0x78($a2)
  /* 00EDD4 8000E1D4 460A4400 */     add.s $f16, $f8, $f10
  /* 00EDD8 8000E1D8 E450000C */      swc1 $f16, 0xc($v0)
  .L8000E1DC:
  /* 00EDDC 8000E1DC 0C0032E5 */       jal func_8000CB94
  /* 00EDE0 8000E1E0 AFA40024 */        sw $a0, 0x24($sp)
  /* 00EDE4 8000E1E4 E6000000 */      swc1 $f0, ($s0)
  /* 00EDE8 8000E1E8 8FAF0044 */        lw $t7, 0x44($sp)
  /* 00EDEC 8000E1EC 51E00089 */      beql $t7, $zero, .L8000E414
  /* 00EDF0 8000E1F0 00001025 */        or $v0, $zero, $zero
  /* 00EDF4 8000E1F4 0C003310 */       jal func_8000CC40
  /* 00EDF8 8000E1F8 8FA40024 */        lw $a0, 0x24($sp)
  /* 00EDFC 8000E1FC 8FB80034 */        lw $t8, 0x34($sp)
  /* 00EE00 8000E200 10000083 */         b .L8000E410
  /* 00EE04 8000E204 E7000000 */      swc1 $f0, ($t8)
  .L8000E208:
  /* 00EE08 8000E208 24020005 */     addiu $v0, $zero, 5
  .L8000E20C:
  /* 00EE0C 8000E20C 10E20005 */       beq $a3, $v0, .L8000E224
  /* 00EE10 8000E210 24010006 */     addiu $at, $zero, 6
  /* 00EE14 8000E214 10E10003 */       beq $a3, $at, .L8000E224
  /* 00EE18 8000E218 24010007 */     addiu $at, $zero, 7
  /* 00EE1C 8000E21C 14E1006E */       bne $a3, $at, .L8000E3D8
  /* 00EE20 8000E220 00000000 */       nop 
  .L8000E224:
  /* 00EE24 8000E224 8FB9004C */        lw $t9, 0x4c($sp)
  /* 00EE28 8000E228 8FA40038 */        lw $a0, 0x38($sp)
  /* 00EE2C 8000E22C 8F280000 */        lw $t0, ($t9)
  /* 00EE30 8000E230 11000014 */      beqz $t0, .L8000E284
  /* 00EE34 8000E234 00000000 */       nop 
  /* 00EE38 8000E238 10E20009 */       beq $a3, $v0, .L8000E260
  /* 00EE3C 8000E23C 8FA40048 */        lw $a0, 0x48($sp)
  /* 00EE40 8000E240 24010006 */     addiu $at, $zero, 6
  /* 00EE44 8000E244 10E10009 */       beq $a3, $at, .L8000E26C
  /* 00EE48 8000E248 8FA40048 */        lw $a0, 0x48($sp)
  /* 00EE4C 8000E24C 24010007 */     addiu $at, $zero, 7
  /* 00EE50 8000E250 10E10009 */       beq $a3, $at, .L8000E278
  /* 00EE54 8000E254 8FA40048 */        lw $a0, 0x48($sp)
  /* 00EE58 8000E258 1000006E */         b .L8000E414
  /* 00EE5C 8000E25C 00001025 */        or $v0, $zero, $zero
  .L8000E260:
  /* 00EE60 8000E260 C4920000 */      lwc1 $f18, ($a0)
  /* 00EE64 8000E264 1000006A */         b .L8000E410
  /* 00EE68 8000E268 E6120000 */      swc1 $f18, ($s0)
  .L8000E26C:
  /* 00EE6C 8000E26C C4840004 */      lwc1 $f4, 4($a0)
  /* 00EE70 8000E270 10000067 */         b .L8000E410
  /* 00EE74 8000E274 E6040000 */      swc1 $f4, ($s0)
  .L8000E278:
  /* 00EE78 8000E278 C4860008 */      lwc1 $f6, 8($a0)
  /* 00EE7C 8000E27C 10000064 */         b .L8000E410
  /* 00EE80 8000E280 E6060000 */      swc1 $f6, ($s0)
  .L8000E284:
  /* 00EE84 8000E284 0C003802 */       jal func_8000E008
  /* 00EE88 8000E288 24050004 */     addiu $a1, $zero, 4
  /* 00EE8C 8000E28C 8FA30028 */        lw $v1, 0x28($sp)
  /* 00EE90 8000E290 8FA6002C */        lw $a2, 0x2c($sp)
  /* 00EE94 8000E294 8FA70040 */        lw $a3, 0x40($sp)
  /* 00EE98 8000E298 10400040 */      beqz $v0, .L8000E39C
  /* 00EE9C 8000E29C 00402025 */        or $a0, $v0, $zero
  /* 00EEA0 8000E2A0 90490005 */       lbu $t1, 5($v0)
  /* 00EEA4 8000E2A4 1120003D */      beqz $t1, .L8000E39C
  /* 00EEA8 8000E2A8 00000000 */       nop 
  /* 00EEAC 8000E2AC 1460000B */      bnez $v1, .L8000E2DC
  /* 00EEB0 8000E2B0 3C018004 */       lui $at, %hi(D_8003DF7C)
  /* 00EEB4 8000E2B4 C428DF7C */      lwc1 $f8, %lo(D_8003DF7C)($at)
  /* 00EEB8 8000E2B8 C4CA0074 */      lwc1 $f10, 0x74($a2)
  /* 00EEBC 8000E2BC 460A4032 */    c.eq.s $f8, $f10
  /* 00EEC0 8000E2C0 00000000 */       nop 
  /* 00EEC4 8000E2C4 45010005 */      bc1t .L8000E2DC
  /* 00EEC8 8000E2C8 00000000 */       nop 
  /* 00EECC 8000E2CC C450000C */      lwc1 $f16, 0xc($v0)
  /* 00EED0 8000E2D0 C4D20078 */      lwc1 $f18, 0x78($a2)
  /* 00EED4 8000E2D4 46128100 */     add.s $f4, $f16, $f18
  /* 00EED8 8000E2D8 E444000C */      swc1 $f4, 0xc($v0)
  .L8000E2DC:
  /* 00EEDC 8000E2DC 0C0032E5 */       jal func_8000CB94
  /* 00EEE0 8000E2E0 AFA40024 */        sw $a0, 0x24($sp)
  /* 00EEE4 8000E2E4 44801000 */      mtc1 $zero, $f2
  /* 00EEE8 8000E2E8 E6000000 */      swc1 $f0, ($s0)
  /* 00EEEC 8000E2EC 3C013F80 */       lui $at, (0x3F800000 >> 16) # 1.0
  /* 00EEF0 8000E2F0 4602003C */    c.lt.s $f0, $f2
  /* 00EEF4 8000E2F4 00000000 */       nop 
  /* 00EEF8 8000E2F8 45020005 */     bc1fl .L8000E310
  /* 00EEFC 8000E2FC 44811000 */      mtc1 $at, $f2 # 1.0 to cop1
  /* 00EF00 8000E300 E6020000 */      swc1 $f2, ($s0)
  /* 00EF04 8000E304 10000009 */         b .L8000E32C
  /* 00EF08 8000E308 C6000000 */      lwc1 $f0, ($s0)
  /* 00EF0C 8000E30C 44811000 */      mtc1 $at, $f2 # 1.0 to cop1
  .L8000E310:
  /* 00EF10 8000E310 C6000000 */      lwc1 $f0, ($s0)
  /* 00EF14 8000E314 4600103C */    c.lt.s $f2, $f0
  /* 00EF18 8000E318 00000000 */       nop 
  /* 00EF1C 8000E31C 45020004 */     bc1fl .L8000E330
  /* 00EF20 8000E320 8FAA0024 */        lw $t2, 0x24($sp)
  /* 00EF24 8000E324 E6020000 */      swc1 $f2, ($s0)
  /* 00EF28 8000E328 C6000000 */      lwc1 $f0, ($s0)
  .L8000E32C:
  /* 00EF2C 8000E32C 8FAA0024 */        lw $t2, 0x24($sp)
  .L8000E330:
  /* 00EF30 8000E330 44060000 */      mfc1 $a2, $f0
  /* 00EF34 8000E334 8FA40048 */        lw $a0, 0x48($sp)
  /* 00EF38 8000E338 0C00794C */       jal func_8001E530
  /* 00EF3C 8000E33C 8D450020 */        lw $a1, 0x20($t2)
  /* 00EF40 8000E340 8FA70040 */        lw $a3, 0x40($sp)
  /* 00EF44 8000E344 24010005 */     addiu $at, $zero, 5
  /* 00EF48 8000E348 8FA40048 */        lw $a0, 0x48($sp)
  /* 00EF4C 8000E34C 10E10007 */       beq $a3, $at, .L8000E36C
  /* 00EF50 8000E350 24010006 */     addiu $at, $zero, 6
  /* 00EF54 8000E354 10E10008 */       beq $a3, $at, .L8000E378
  /* 00EF58 8000E358 24010007 */     addiu $at, $zero, 7
  /* 00EF5C 8000E35C 50E1000A */      beql $a3, $at, .L8000E388
  /* 00EF60 8000E360 C48A0008 */      lwc1 $f10, 8($a0)
  /* 00EF64 8000E364 1000000A */         b .L8000E390
  /* 00EF68 8000E368 8FAC004C */        lw $t4, 0x4c($sp)
  .L8000E36C:
  /* 00EF6C 8000E36C C4860000 */      lwc1 $f6, ($a0)
  /* 00EF70 8000E370 10000006 */         b .L8000E38C
  /* 00EF74 8000E374 E6060000 */      swc1 $f6, ($s0)
  .L8000E378:
  /* 00EF78 8000E378 C4880004 */      lwc1 $f8, 4($a0)
  /* 00EF7C 8000E37C 10000003 */         b .L8000E38C
  /* 00EF80 8000E380 E6080000 */      swc1 $f8, ($s0)
  /* 00EF84 8000E384 C48A0008 */      lwc1 $f10, 8($a0)
  .L8000E388:
  /* 00EF88 8000E388 E60A0000 */      swc1 $f10, ($s0)
  .L8000E38C:
  /* 00EF8C 8000E38C 8FAC004C */        lw $t4, 0x4c($sp)
  .L8000E390:
  /* 00EF90 8000E390 240B0001 */     addiu $t3, $zero, 1
  /* 00EF94 8000E394 1000001E */         b .L8000E410
  /* 00EF98 8000E398 AD8B0000 */        sw $t3, ($t4)
  .L8000E39C:
  /* 00EF9C 8000E39C 1460000A */      bnez $v1, .L8000E3C8
  /* 00EFA0 8000E3A0 00C02025 */        or $a0, $a2, $zero
  /* 00EFA4 8000E3A4 8FA4003C */        lw $a0, 0x3c($sp)
  /* 00EFA8 8000E3A8 14800003 */      bnez $a0, .L8000E3B8
  /* 00EFAC 8000E3AC 00000000 */       nop 
  /* 00EFB0 8000E3B0 10000018 */         b .L8000E414
  /* 00EFB4 8000E3B4 24020001 */     addiu $v0, $zero, 1
  .L8000E3B8:
  /* 00EFB8 8000E3B8 0C00383D */       jal func_8000E0F4
  /* 00EFBC 8000E3BC 00E02825 */        or $a1, $a3, $zero
  /* 00EFC0 8000E3C0 10000013 */         b .L8000E410
  /* 00EFC4 8000E3C4 E6000000 */      swc1 $f0, ($s0)
  .L8000E3C8:
  /* 00EFC8 8000E3C8 0C003821 */       jal func_8000E084
  /* 00EFCC 8000E3CC 00E02825 */        or $a1, $a3, $zero
  /* 00EFD0 8000E3D0 1000000F */         b .L8000E410
  /* 00EFD4 8000E3D4 E6000000 */      swc1 $f0, ($s0)
  .L8000E3D8:
  /* 00EFD8 8000E3D8 1460000A */      bnez $v1, .L8000E404
  /* 00EFDC 8000E3DC 00C02025 */        or $a0, $a2, $zero
  /* 00EFE0 8000E3E0 8FA4003C */        lw $a0, 0x3c($sp)
  /* 00EFE4 8000E3E4 14800003 */      bnez $a0, .L8000E3F4
  /* 00EFE8 8000E3E8 00000000 */       nop 
  /* 00EFEC 8000E3EC 10000009 */         b .L8000E414
  /* 00EFF0 8000E3F0 24020001 */     addiu $v0, $zero, 1
  .L8000E3F4:
  /* 00EFF4 8000E3F4 0C00383D */       jal func_8000E0F4
  /* 00EFF8 8000E3F8 00E02825 */        or $a1, $a3, $zero
  /* 00EFFC 8000E3FC 10000004 */         b .L8000E410
  /* 00F000 8000E400 E6000000 */      swc1 $f0, ($s0)
  .L8000E404:
  /* 00F004 8000E404 0C003821 */       jal func_8000E084
  /* 00F008 8000E408 00E02825 */        or $a1, $a3, $zero
  /* 00F00C 8000E40C E6000000 */      swc1 $f0, ($s0)
  .L8000E410:
  /* 00F010 8000E410 00001025 */        or $v0, $zero, $zero
  .L8000E414:
  /* 00F014 8000E414 8FBF001C */        lw $ra, 0x1c($sp)
  /* 00F018 8000E418 8FB00018 */        lw $s0, 0x18($sp)
  /* 00F01C 8000E41C 27BD0028 */     addiu $sp, $sp, 0x28
  /* 00F020 8000E420 03E00008 */        jr $ra
  /* 00F024 8000E424 00000000 */       nop 

glabel func_8000E428
  /* 00F028 8000E428 248EFFFF */     addiu $t6, $a0, -1
  /* 00F02C 8000E42C 27BDFFC0 */     addiu $sp, $sp, -0x40
  /* 00F030 8000E430 44857000 */      mtc1 $a1, $f14
  /* 00F034 8000E434 44866000 */      mtc1 $a2, $f12
  /* 00F038 8000E438 2DC1000A */     sltiu $at, $t6, 0xa
  /* 00F03C 8000E43C AFBF0014 */        sw $ra, 0x14($sp)
  /* 00F040 8000E440 1020000D */      beqz $at, jtgt_8000E478
  /* 00F044 8000E444 AFA7004C */        sw $a3, 0x4c($sp)
  /* 00F048 8000E448 000E7080 */       sll $t6, $t6, 2
  /* 00F04C 8000E44C 3C018004 */       lui $at, %hi(jtbl_8003DF80)
  /* 00F050 8000E450 002E0821 */      addu $at, $at, $t6
  /* 00F054 8000E454 8C2EDF80 */        lw $t6, %lo(jtbl_8003DF80)($at)
  /* 00F058 8000E458 01C00008 */        jr $t6
  /* 00F05C 8000E45C 00000000 */       nop 
  glabel jtgt_8000E460
  /* 00F060 8000E460 10000005 */         b jtgt_8000E478
  /* 00F064 8000E464 E7AC002C */      swc1 $f12, 0x2c($sp)
  glabel jtgt_8000E468
  /* 00F068 8000E468 10000003 */         b jtgt_8000E478
  /* 00F06C 8000E46C E7AE002C */      swc1 $f14, 0x2c($sp)
  glabel jtgt_8000E470
  /* 00F070 8000E470 C7A4004C */      lwc1 $f4, 0x4c($sp)
  /* 00F074 8000E474 E7A4002C */      swc1 $f4, 0x2c($sp)
  glabel jtgt_8000E478
  /* 00F078 8000E478 44801000 */      mtc1 $zero, $f2
  /* 00F07C 8000E47C C7A6002C */      lwc1 $f6, 0x2c($sp)
  /* 00F080 8000E480 8FA30054 */        lw $v1, 0x54($sp)
  /* 00F084 8000E484 46023032 */    c.eq.s $f6, $f2
  /* 00F088 8000E488 00000000 */       nop 
  /* 00F08C 8000E48C 45030103 */     bc1tl .L8000E89C
  /* 00F090 8000E490 8FBF0014 */        lw $ra, 0x14($sp)
  /* 00F094 8000E494 C4600018 */      lwc1 $f0, 0x18($v1)
  /* 00F098 8000E498 C46A001C */      lwc1 $f10, 0x1c($v1)
  /* 00F09C 8000E49C 3C01C0C0 */       lui $at, (0xC0C00000 >> 16) # -6.0
  /* 00F0A0 8000E4A0 46000200 */     add.s $f8, $f0, $f0
  /* 00F0A4 8000E4A4 44812000 */      mtc1 $at, $f4 # -6.0 to cop1
  /* 00F0A8 8000E4A8 C7A6002C */      lwc1 $f6, 0x2c($sp)
  /* 00F0AC 8000E4AC 460A4480 */     add.s $f18, $f8, $f10
  /* 00F0B0 8000E4B0 46062202 */     mul.s $f8, $f4, $f6
  /* 00F0B4 8000E4B4 E7A80028 */      swc1 $f8, 0x28($sp)
  /* 00F0B8 8000E4B8 C4640010 */      lwc1 $f4, 0x10($v1)
  /* 00F0BC 8000E4BC C46A0014 */      lwc1 $f10, 0x14($v1)
  /* 00F0C0 8000E4C0 46045181 */     sub.s $f6, $f10, $f4
  /* 00F0C4 8000E4C4 46064402 */     mul.s $f16, $f8, $f6
  /* 00F0C8 8000E4C8 00000000 */       nop 
  /* 00F0CC 8000E4CC 46129282 */     mul.s $f10, $f18, $f18
  /* 00F0D0 8000E4D0 E7AA0024 */      swc1 $f10, 0x24($sp)
  /* 00F0D4 8000E4D4 C7A40024 */      lwc1 $f4, 0x24($sp)
  /* 00F0D8 8000E4D8 C7AA0024 */      lwc1 $f10, 0x24($sp)
  /* 00F0DC 8000E4DC 4604803C */    c.lt.s $f16, $f4
  /* 00F0E0 8000E4E0 00000000 */       nop 
  /* 00F0E4 8000E4E4 45000029 */      bc1f .L8000E58C
  /* 00F0E8 8000E4E8 00000000 */       nop 
  /* 00F0EC 8000E4EC 46102301 */     sub.s $f12, $f4, $f16
  /* 00F0F0 8000E4F0 E7B00038 */      swc1 $f16, 0x38($sp)
  /* 00F0F4 8000E4F4 E7B2003C */      swc1 $f18, 0x3c($sp)
  /* 00F0F8 8000E4F8 0C00CD44 */       jal sqrtf
  /* 00F0FC 8000E4FC E7AC0020 */      swc1 $f12, 0x20($sp)
  /* 00F100 8000E500 C7B2003C */      lwc1 $f18, 0x3c($sp)
  /* 00F104 8000E504 C7A6002C */      lwc1 $f6, 0x2c($sp)
  /* 00F108 8000E508 8FA20050 */        lw $v0, 0x50($sp)
  /* 00F10C 8000E50C 46009387 */     neg.s $f14, $f18
  /* 00F110 8000E510 C7AC0020 */      lwc1 $f12, 0x20($sp)
  /* 00F114 8000E514 460E0200 */     add.s $f8, $f0, $f14
  /* 00F118 8000E518 C44A0000 */      lwc1 $f10, ($v0)
  /* 00F11C 8000E51C C7B00038 */      lwc1 $f16, 0x38($sp)
  /* 00F120 8000E520 46064083 */     div.s $f2, $f8, $f6
  /* 00F124 8000E524 4602503C */    c.lt.s $f10, $f2
  /* 00F128 8000E528 00000000 */       nop 
  /* 00F12C 8000E52C 45020003 */     bc1fl .L8000E53C
  /* 00F130 8000E530 E7AE001C */      swc1 $f14, 0x1c($sp)
  /* 00F134 8000E534 E4420000 */      swc1 $f2, ($v0)
  /* 00F138 8000E538 E7AE001C */      swc1 $f14, 0x1c($sp)
  .L8000E53C:
  /* 00F13C 8000E53C E7B00038 */      swc1 $f16, 0x38($sp)
  /* 00F140 8000E540 0C00CD44 */       jal sqrtf
  /* 00F144 8000E544 E7B2003C */      swc1 $f18, 0x3c($sp)
  /* 00F148 8000E548 C7AE001C */      lwc1 $f14, 0x1c($sp)
  /* 00F14C 8000E54C C7A8002C */      lwc1 $f8, 0x2c($sp)
  /* 00F150 8000E550 8FA20050 */        lw $v0, 0x50($sp)
  /* 00F154 8000E554 46007101 */     sub.s $f4, $f14, $f0
  /* 00F158 8000E558 8FA30054 */        lw $v1, 0x54($sp)
  /* 00F15C 8000E55C C4460000 */      lwc1 $f6, ($v0)
  /* 00F160 8000E560 C7B00038 */      lwc1 $f16, 0x38($sp)
  /* 00F164 8000E564 46082083 */     div.s $f2, $f4, $f8
  /* 00F168 8000E568 C7B2003C */      lwc1 $f18, 0x3c($sp)
  /* 00F16C 8000E56C 4602303C */    c.lt.s $f6, $f2
  /* 00F170 8000E570 00000000 */       nop 
  /* 00F174 8000E574 45020003 */     bc1fl .L8000E584
  /* 00F178 8000E578 44801000 */      mtc1 $zero, $f2
  /* 00F17C 8000E57C E4420000 */      swc1 $f2, ($v0)
  /* 00F180 8000E580 44801000 */      mtc1 $zero, $f2
  .L8000E584:
  /* 00F184 8000E584 10000011 */         b .L8000E5CC
  /* 00F188 8000E588 C7A40024 */      lwc1 $f4, 0x24($sp)
  .L8000E58C:
  /* 00F18C 8000E58C 46105101 */     sub.s $f4, $f10, $f16
  /* 00F190 8000E590 C7A6002C */      lwc1 $f6, 0x2c($sp)
  /* 00F194 8000E594 46022032 */    c.eq.s $f4, $f2
  /* 00F198 8000E598 00000000 */       nop 
  /* 00F19C 8000E59C 4502000B */     bc1fl .L8000E5CC
  /* 00F1A0 8000E5A0 C7A40024 */      lwc1 $f4, 0x24($sp)
  /* 00F1A4 8000E5A4 46009207 */     neg.s $f8, $f18
  /* 00F1A8 8000E5A8 8FA20050 */        lw $v0, 0x50($sp)
  /* 00F1AC 8000E5AC 46064003 */     div.s $f0, $f8, $f6
  /* 00F1B0 8000E5B0 C44A0000 */      lwc1 $f10, ($v0)
  /* 00F1B4 8000E5B4 4600503C */    c.lt.s $f10, $f0
  /* 00F1B8 8000E5B8 00000000 */       nop 
  /* 00F1BC 8000E5BC 45020003 */     bc1fl .L8000E5CC
  /* 00F1C0 8000E5C0 C7A40024 */      lwc1 $f4, 0x24($sp)
  /* 00F1C4 8000E5C4 E4400000 */      swc1 $f0, ($v0)
  /* 00F1C8 8000E5C8 C7A40024 */      lwc1 $f4, 0x24($sp)
  .L8000E5CC:
  /* 00F1CC 8000E5CC 8FA20050 */        lw $v0, 0x50($sp)
  /* 00F1D0 8000E5D0 46102300 */     add.s $f12, $f4, $f16
  /* 00F1D4 8000E5D4 460C103C */    c.lt.s $f2, $f12
  /* 00F1D8 8000E5D8 00000000 */       nop 
  /* 00F1DC 8000E5DC 45020025 */     bc1fl .L8000E674
  /* 00F1E0 8000E5E0 46026032 */    c.eq.s $f12, $f2
  /* 00F1E4 8000E5E4 46009387 */     neg.s $f14, $f18
  /* 00F1E8 8000E5E8 E7AC0020 */      swc1 $f12, 0x20($sp)
  /* 00F1EC 8000E5EC 0C00CD44 */       jal sqrtf
  /* 00F1F0 8000E5F0 E7AE001C */      swc1 $f14, 0x1c($sp)
  /* 00F1F4 8000E5F4 C7AE001C */      lwc1 $f14, 0x1c($sp)
  /* 00F1F8 8000E5F8 C7B0002C */      lwc1 $f16, 0x2c($sp)
  /* 00F1FC 8000E5FC 8FA20050 */        lw $v0, 0x50($sp)
  /* 00F200 8000E600 460E0200 */     add.s $f8, $f0, $f14
  /* 00F204 8000E604 C7AC0020 */      lwc1 $f12, 0x20($sp)
  /* 00F208 8000E608 C4460000 */      lwc1 $f6, ($v0)
  /* 00F20C 8000E60C 46008407 */     neg.s $f16, $f16
  /* 00F210 8000E610 46104083 */     div.s $f2, $f8, $f16
  /* 00F214 8000E614 4602303C */    c.lt.s $f6, $f2
  /* 00F218 8000E618 00000000 */       nop 
  /* 00F21C 8000E61C 45020003 */     bc1fl .L8000E62C
  /* 00F220 8000E620 E7AE001C */      swc1 $f14, 0x1c($sp)
  /* 00F224 8000E624 E4420000 */      swc1 $f2, ($v0)
  /* 00F228 8000E628 E7AE001C */      swc1 $f14, 0x1c($sp)
  .L8000E62C:
  /* 00F22C 8000E62C 0C00CD44 */       jal sqrtf
  /* 00F230 8000E630 E7B00024 */      swc1 $f16, 0x24($sp)
  /* 00F234 8000E634 C7AE001C */      lwc1 $f14, 0x1c($sp)
  /* 00F238 8000E638 C7B00024 */      lwc1 $f16, 0x24($sp)
  /* 00F23C 8000E63C 8FA20050 */        lw $v0, 0x50($sp)
  /* 00F240 8000E640 46007281 */     sub.s $f10, $f14, $f0
  /* 00F244 8000E644 8FA30054 */        lw $v1, 0x54($sp)
  /* 00F248 8000E648 C4440000 */      lwc1 $f4, ($v0)
  /* 00F24C 8000E64C 46105083 */     div.s $f2, $f10, $f16
  /* 00F250 8000E650 4602203C */    c.lt.s $f4, $f2
  /* 00F254 8000E654 00000000 */       nop 
  /* 00F258 8000E658 45020003 */     bc1fl .L8000E668
  /* 00F25C 8000E65C 44801000 */      mtc1 $zero, $f2
  /* 00F260 8000E660 E4420000 */      swc1 $f2, ($v0)
  /* 00F264 8000E664 44801000 */      mtc1 $zero, $f2
  .L8000E668:
  /* 00F268 8000E668 1000000F */         b .L8000E6A8
  /* 00F26C 8000E66C C460001C */      lwc1 $f0, 0x1c($v1)
  /* 00F270 8000E670 46026032 */    c.eq.s $f12, $f2
  .L8000E674:
  /* 00F274 8000E674 C7A6002C */      lwc1 $f6, 0x2c($sp)
  /* 00F278 8000E678 4502000B */     bc1fl .L8000E6A8
  /* 00F27C 8000E67C C460001C */      lwc1 $f0, 0x1c($v1)
  /* 00F280 8000E680 46009207 */     neg.s $f8, $f18
  /* 00F284 8000E684 46003287 */     neg.s $f10, $f6
  /* 00F288 8000E688 C4440000 */      lwc1 $f4, ($v0)
  /* 00F28C 8000E68C 460A4003 */     div.s $f0, $f8, $f10
  /* 00F290 8000E690 4600203C */    c.lt.s $f4, $f0
  /* 00F294 8000E694 00000000 */       nop 
  /* 00F298 8000E698 45020003 */     bc1fl .L8000E6A8
  /* 00F29C 8000E69C C460001C */      lwc1 $f0, 0x1c($v1)
  /* 00F2A0 8000E6A0 E4400000 */      swc1 $f0, ($v0)
  /* 00F2A4 8000E6A4 C460001C */      lwc1 $f0, 0x1c($v1)
  .L8000E6A8:
  /* 00F2A8 8000E6A8 C4660018 */      lwc1 $f6, 0x18($v1)
  /* 00F2AC 8000E6AC C46A0010 */      lwc1 $f10, 0x10($v1)
  /* 00F2B0 8000E6B0 46000200 */     add.s $f8, $f0, $f0
  /* 00F2B4 8000E6B4 C4640014 */      lwc1 $f4, 0x14($v1)
  /* 00F2B8 8000E6B8 46083480 */     add.s $f18, $f6, $f8
  /* 00F2BC 8000E6BC C7A80028 */      lwc1 $f8, 0x28($sp)
  /* 00F2C0 8000E6C0 46045181 */     sub.s $f6, $f10, $f4
  /* 00F2C4 8000E6C4 46009487 */     neg.s $f18, $f18
  /* 00F2C8 8000E6C8 46064402 */     mul.s $f16, $f8, $f6
  /* 00F2CC 8000E6CC 00000000 */       nop 
  /* 00F2D0 8000E6D0 46129282 */     mul.s $f10, $f18, $f18
  /* 00F2D4 8000E6D4 E7AA0024 */      swc1 $f10, 0x24($sp)
  /* 00F2D8 8000E6D8 C7A40024 */      lwc1 $f4, 0x24($sp)
  /* 00F2DC 8000E6DC C7AA0024 */      lwc1 $f10, 0x24($sp)
  /* 00F2E0 8000E6E0 4604803C */    c.lt.s $f16, $f4
  /* 00F2E4 8000E6E4 00000000 */       nop 
  /* 00F2E8 8000E6E8 45000028 */      bc1f .L8000E78C
  /* 00F2EC 8000E6EC 00000000 */       nop 
  /* 00F2F0 8000E6F0 46102301 */     sub.s $f12, $f4, $f16
  /* 00F2F4 8000E6F4 E7B00038 */      swc1 $f16, 0x38($sp)
  /* 00F2F8 8000E6F8 E7B2003C */      swc1 $f18, 0x3c($sp)
  /* 00F2FC 8000E6FC 0C00CD44 */       jal sqrtf
  /* 00F300 8000E700 E7AC0020 */      swc1 $f12, 0x20($sp)
  /* 00F304 8000E704 C7B2003C */      lwc1 $f18, 0x3c($sp)
  /* 00F308 8000E708 C7A6002C */      lwc1 $f6, 0x2c($sp)
  /* 00F30C 8000E70C 8FA20050 */        lw $v0, 0x50($sp)
  /* 00F310 8000E710 46009387 */     neg.s $f14, $f18
  /* 00F314 8000E714 C7AC0020 */      lwc1 $f12, 0x20($sp)
  /* 00F318 8000E718 460E0200 */     add.s $f8, $f0, $f14
  /* 00F31C 8000E71C C44A0000 */      lwc1 $f10, ($v0)
  /* 00F320 8000E720 C7B00038 */      lwc1 $f16, 0x38($sp)
  /* 00F324 8000E724 46064083 */     div.s $f2, $f8, $f6
  /* 00F328 8000E728 4602503C */    c.lt.s $f10, $f2
  /* 00F32C 8000E72C 00000000 */       nop 
  /* 00F330 8000E730 45020003 */     bc1fl .L8000E740
  /* 00F334 8000E734 E7AE001C */      swc1 $f14, 0x1c($sp)
  /* 00F338 8000E738 E4420000 */      swc1 $f2, ($v0)
  /* 00F33C 8000E73C E7AE001C */      swc1 $f14, 0x1c($sp)
  .L8000E740:
  /* 00F340 8000E740 E7B00038 */      swc1 $f16, 0x38($sp)
  /* 00F344 8000E744 0C00CD44 */       jal sqrtf
  /* 00F348 8000E748 E7B2003C */      swc1 $f18, 0x3c($sp)
  /* 00F34C 8000E74C C7AE001C */      lwc1 $f14, 0x1c($sp)
  /* 00F350 8000E750 C7A8002C */      lwc1 $f8, 0x2c($sp)
  /* 00F354 8000E754 8FA20050 */        lw $v0, 0x50($sp)
  /* 00F358 8000E758 46007101 */     sub.s $f4, $f14, $f0
  /* 00F35C 8000E75C C7B00038 */      lwc1 $f16, 0x38($sp)
  /* 00F360 8000E760 C4460000 */      lwc1 $f6, ($v0)
  /* 00F364 8000E764 C7B2003C */      lwc1 $f18, 0x3c($sp)
  /* 00F368 8000E768 46082083 */     div.s $f2, $f4, $f8
  /* 00F36C 8000E76C 4602303C */    c.lt.s $f6, $f2
  /* 00F370 8000E770 00000000 */       nop 
  /* 00F374 8000E774 45020003 */     bc1fl .L8000E784
  /* 00F378 8000E778 44801000 */      mtc1 $zero, $f2
  /* 00F37C 8000E77C E4420000 */      swc1 $f2, ($v0)
  /* 00F380 8000E780 44801000 */      mtc1 $zero, $f2
  .L8000E784:
  /* 00F384 8000E784 10000010 */         b .L8000E7C8
  /* 00F388 8000E788 C7A40024 */      lwc1 $f4, 0x24($sp)
  .L8000E78C:
  /* 00F38C 8000E78C 46105101 */     sub.s $f4, $f10, $f16
  /* 00F390 8000E790 C7A6002C */      lwc1 $f6, 0x2c($sp)
  /* 00F394 8000E794 46022032 */    c.eq.s $f4, $f2
  /* 00F398 8000E798 00000000 */       nop 
  /* 00F39C 8000E79C 4502000A */     bc1fl .L8000E7C8
  /* 00F3A0 8000E7A0 C7A40024 */      lwc1 $f4, 0x24($sp)
  /* 00F3A4 8000E7A4 46009207 */     neg.s $f8, $f18
  /* 00F3A8 8000E7A8 C44A0000 */      lwc1 $f10, ($v0)
  /* 00F3AC 8000E7AC 46064003 */     div.s $f0, $f8, $f6
  /* 00F3B0 8000E7B0 4600503C */    c.lt.s $f10, $f0
  /* 00F3B4 8000E7B4 00000000 */       nop 
  /* 00F3B8 8000E7B8 45020003 */     bc1fl .L8000E7C8
  /* 00F3BC 8000E7BC C7A40024 */      lwc1 $f4, 0x24($sp)
  /* 00F3C0 8000E7C0 E4400000 */      swc1 $f0, ($v0)
  /* 00F3C4 8000E7C4 C7A40024 */      lwc1 $f4, 0x24($sp)
  .L8000E7C8:
  /* 00F3C8 8000E7C8 46102300 */     add.s $f12, $f4, $f16
  /* 00F3CC 8000E7CC C7B0002C */      lwc1 $f16, 0x2c($sp)
  /* 00F3D0 8000E7D0 460C103C */    c.lt.s $f2, $f12
  /* 00F3D4 8000E7D4 00000000 */       nop 
  /* 00F3D8 8000E7D8 45020023 */     bc1fl .L8000E868
  /* 00F3DC 8000E7DC 46026032 */    c.eq.s $f12, $f2
  /* 00F3E0 8000E7E0 46009387 */     neg.s $f14, $f18
  /* 00F3E4 8000E7E4 46008407 */     neg.s $f16, $f16
  /* 00F3E8 8000E7E8 E7AE001C */      swc1 $f14, 0x1c($sp)
  /* 00F3EC 8000E7EC E7B00024 */      swc1 $f16, 0x24($sp)
  /* 00F3F0 8000E7F0 0C00CD44 */       jal sqrtf
  /* 00F3F4 8000E7F4 E7AC0020 */      swc1 $f12, 0x20($sp)
  /* 00F3F8 8000E7F8 C7AE001C */      lwc1 $f14, 0x1c($sp)
  /* 00F3FC 8000E7FC C7B00024 */      lwc1 $f16, 0x24($sp)
  /* 00F400 8000E800 8FA20050 */        lw $v0, 0x50($sp)
  /* 00F404 8000E804 460E0200 */     add.s $f8, $f0, $f14
  /* 00F408 8000E808 C7AC0020 */      lwc1 $f12, 0x20($sp)
  /* 00F40C 8000E80C C4460000 */      lwc1 $f6, ($v0)
  /* 00F410 8000E810 46104083 */     div.s $f2, $f8, $f16
  /* 00F414 8000E814 4602303C */    c.lt.s $f6, $f2
  /* 00F418 8000E818 00000000 */       nop 
  /* 00F41C 8000E81C 45020003 */     bc1fl .L8000E82C
  /* 00F420 8000E820 E7AE001C */      swc1 $f14, 0x1c($sp)
  /* 00F424 8000E824 E4420000 */      swc1 $f2, ($v0)
  /* 00F428 8000E828 E7AE001C */      swc1 $f14, 0x1c($sp)
  .L8000E82C:
  /* 00F42C 8000E82C 0C00CD44 */       jal sqrtf
  /* 00F430 8000E830 E7B00024 */      swc1 $f16, 0x24($sp)
  /* 00F434 8000E834 C7AE001C */      lwc1 $f14, 0x1c($sp)
  /* 00F438 8000E838 C7B00024 */      lwc1 $f16, 0x24($sp)
  /* 00F43C 8000E83C 8FA20050 */        lw $v0, 0x50($sp)
  /* 00F440 8000E840 46007281 */     sub.s $f10, $f14, $f0
  /* 00F444 8000E844 C4440000 */      lwc1 $f4, ($v0)
  /* 00F448 8000E848 46105083 */     div.s $f2, $f10, $f16
  /* 00F44C 8000E84C 4602203C */    c.lt.s $f4, $f2
  /* 00F450 8000E850 00000000 */       nop 
  /* 00F454 8000E854 45020011 */     bc1fl .L8000E89C
  /* 00F458 8000E858 8FBF0014 */        lw $ra, 0x14($sp)
  /* 00F45C 8000E85C 1000000E */         b .L8000E898
  /* 00F460 8000E860 E4420000 */      swc1 $f2, ($v0)
  /* 00F464 8000E864 46026032 */    c.eq.s $f12, $f2
  .L8000E868:
  /* 00F468 8000E868 C7A6002C */      lwc1 $f6, 0x2c($sp)
  /* 00F46C 8000E86C 4502000B */     bc1fl .L8000E89C
  /* 00F470 8000E870 8FBF0014 */        lw $ra, 0x14($sp)
  /* 00F474 8000E874 46009207 */     neg.s $f8, $f18
  /* 00F478 8000E878 46003287 */     neg.s $f10, $f6
  /* 00F47C 8000E87C C4440000 */      lwc1 $f4, ($v0)
  /* 00F480 8000E880 460A4003 */     div.s $f0, $f8, $f10
  /* 00F484 8000E884 4600203C */    c.lt.s $f4, $f0
  /* 00F488 8000E888 00000000 */       nop 
  /* 00F48C 8000E88C 45020003 */     bc1fl .L8000E89C
  /* 00F490 8000E890 8FBF0014 */        lw $ra, 0x14($sp)
  /* 00F494 8000E894 E4400000 */      swc1 $f0, ($v0)
  .L8000E898:
  /* 00F498 8000E898 8FBF0014 */        lw $ra, 0x14($sp)
  .L8000E89C:
  /* 00F49C 8000E89C 27BD0040 */     addiu $sp, $sp, 0x40
  /* 00F4A0 8000E8A0 03E00008 */        jr $ra
  /* 00F4A4 8000E8A4 00000000 */       nop 

glabel func_8000E8A8
  /* 00F4A8 8000E8A8 27BDFF38 */     addiu $sp, $sp, -0xc8
  /* 00F4AC 8000E8AC F7B60030 */      sdc1 $f22, 0x30($sp)
  /* 00F4B0 8000E8B0 4480B000 */      mtc1 $zero, $f22
  /* 00F4B4 8000E8B4 AFB50060 */        sw $s5, 0x60($sp)
  /* 00F4B8 8000E8B8 AFB20054 */        sw $s2, 0x54($sp)
  /* 00F4BC 8000E8BC 44866000 */      mtc1 $a2, $f12
  /* 00F4C0 8000E8C0 00809025 */        or $s2, $a0, $zero
  /* 00F4C4 8000E8C4 00E0A825 */        or $s5, $a3, $zero
  /* 00F4C8 8000E8C8 AFBF0064 */        sw $ra, 0x64($sp)
  /* 00F4CC 8000E8CC AFB4005C */        sw $s4, 0x5c($sp)
  /* 00F4D0 8000E8D0 AFB30058 */        sw $s3, 0x58($sp)
  /* 00F4D4 8000E8D4 AFB10050 */        sw $s1, 0x50($sp)
  /* 00F4D8 8000E8D8 AFB0004C */        sw $s0, 0x4c($sp)
  /* 00F4DC 8000E8DC F7BA0040 */      sdc1 $f26, 0x40($sp)
  /* 00F4E0 8000E8E0 F7B80038 */      sdc1 $f24, 0x38($sp)
  /* 00F4E4 8000E8E4 F7B40028 */      sdc1 $f20, 0x28($sp)
  /* 00F4E8 8000E8E8 AFA000C0 */        sw $zero, 0xc0($sp)
  /* 00F4EC 8000E8EC AFA0009C */        sw $zero, 0x9c($sp)
  /* 00F4F0 8000E8F0 AFA00098 */        sw $zero, 0x98($sp)
  /* 00F4F4 8000E8F4 10A00004 */      beqz $a1, .L8000E908
  /* 00F4F8 8000E8F8 E7B600A4 */      swc1 $f22, 0xa4($sp)
  /* 00F4FC 8000E8FC 8CAE0000 */        lw $t6, ($a1)
  /* 00F500 8000E900 55C00009 */      bnel $t6, $zero, .L8000E928
  /* 00F504 8000E904 8E4F006C */        lw $t7, 0x6c($s2)
  .L8000E908:
  /* 00F508 8000E908 56A00007 */      bnel $s5, $zero, .L8000E928
  /* 00F50C 8000E90C 8E4F006C */        lw $t7, 0x6c($s2)
  /* 00F510 8000E910 0C0023B9 */       jal func_80008EE4
  /* 00F514 8000E914 02402025 */        or $a0, $s2, $zero
  /* 00F518 8000E918 44800000 */      mtc1 $zero, $f0
  /* 00F51C 8000E91C 100000C5 */         b .L8000EC34
  /* 00F520 8000E920 8FBF0064 */        lw $ra, 0x64($sp)
  /* 00F524 8000E924 8E4F006C */        lw $t7, 0x6c($s2)
  .L8000E928:
  /* 00F528 8000E928 AFAF00C4 */        sw $t7, 0xc4($sp)
  /* 00F52C 8000E92C 10A0000E */      beqz $a1, .L8000E968
  /* 00F530 8000E930 AE40006C */        sw $zero, 0x6c($s2)
  /* 00F534 8000E934 8CA20000 */        lw $v0, ($a1)
  /* 00F538 8000E938 3C018004 */       lui $at, 0x8004
  /* 00F53C 8000E93C 02402025 */        or $a0, $s2, $zero
  /* 00F540 8000E940 5040000A */      beql $v0, $zero, .L8000E96C
  /* 00F544 8000E944 3C013F80 */       lui $at, %hi(D_NF_3F7FDFA8)
  /* 00F548 8000E948 AE420070 */        sw $v0, 0x70($s2)
  /* 00F54C 8000E94C C424DFA8 */      lwc1 $f4, %lo(D_NF_3F7FDFA8)($at)
  /* 00F550 8000E950 E64C007C */      swc1 $f12, 0x7c($s2)
  /* 00F554 8000E954 0C002FFA */       jal func_8000BFE8
  /* 00F558 8000E958 E6440074 */      swc1 $f4, 0x74($s2)
  /* 00F55C 8000E95C 8E58006C */        lw $t8, 0x6c($s2)
  /* 00F560 8000E960 AFB800C0 */        sw $t8, 0xc0($sp)
  /* 00F564 8000E964 AE40006C */        sw $zero, 0x6c($s2)
  .L8000E968:
  /* 00F568 8000E968 3C013F80 */       lui $at, (0x3F800000 >> 16) # 1.0
  .L8000E96C:
  /* 00F56C 8000E96C 4481D000 */      mtc1 $at, $f26 # 1.0 to cop1
  /* 00F570 8000E970 3C018004 */       lui $at, %hi(D_8003DFAC)
  /* 00F574 8000E974 C438DFAC */      lwc1 $f24, %lo(D_8003DFAC)($at)
  /* 00F578 8000E978 24100001 */     addiu $s0, $zero, 1
  /* 00F57C 8000E97C C7B400DC */      lwc1 $f20, 0xdc($sp)
  /* 00F580 8000E980 24140001 */     addiu $s4, $zero, 1
  /* 00F584 8000E984 24130002 */     addiu $s3, $zero, 2
  /* 00F588 8000E988 8FB100D8 */        lw $s1, 0xd8($sp)
  /* 00F58C 8000E98C 24010004 */     addiu $at, $zero, 4
  .L8000E990:
  /* 00F590 8000E990 12010092 */       beq $s0, $at, .L8000EBDC
  /* 00F594 8000E994 00002025 */        or $a0, $zero, $zero
  /* 00F598 8000E998 8FB900C0 */        lw $t9, 0xc0($sp)
  /* 00F59C 8000E99C 27A80080 */     addiu $t0, $sp, 0x80
  /* 00F5A0 8000E9A0 27A90098 */     addiu $t1, $sp, 0x98
  /* 00F5A4 8000E9A4 E7B600A8 */      swc1 $f22, 0xa8($sp)
  /* 00F5A8 8000E9A8 E7B600AC */      swc1 $f22, 0xac($sp)
  /* 00F5AC 8000E9AC AFA90024 */        sw $t1, 0x24($sp)
  /* 00F5B0 8000E9B0 AFA80020 */        sw $t0, 0x20($sp)
  /* 00F5B4 8000E9B4 02402825 */        or $a1, $s2, $zero
  /* 00F5B8 8000E9B8 27A600B0 */     addiu $a2, $sp, 0xb0
  /* 00F5BC 8000E9BC 27A700A8 */     addiu $a3, $sp, 0xa8
  /* 00F5C0 8000E9C0 AFB50014 */        sw $s5, 0x14($sp)
  /* 00F5C4 8000E9C4 AFB00018 */        sw $s0, 0x18($sp)
  /* 00F5C8 8000E9C8 AFB1001C */        sw $s1, 0x1c($sp)
  /* 00F5CC 8000E9CC 0C003859 */       jal func_8000E164
  /* 00F5D0 8000E9D0 AFB90010 */        sw $t9, 0x10($sp)
  /* 00F5D4 8000E9D4 14400081 */      bnez $v0, .L8000EBDC
  /* 00F5D8 8000E9D8 02802025 */        or $a0, $s4, $zero
  /* 00F5DC 8000E9DC 8FAA00C4 */        lw $t2, 0xc4($sp)
  /* 00F5E0 8000E9E0 27AB008C */     addiu $t3, $sp, 0x8c
  /* 00F5E4 8000E9E4 27AC009C */     addiu $t4, $sp, 0x9c
  /* 00F5E8 8000E9E8 AFAC0024 */        sw $t4, 0x24($sp)
  /* 00F5EC 8000E9EC AFAB0020 */        sw $t3, 0x20($sp)
  /* 00F5F0 8000E9F0 02402825 */        or $a1, $s2, $zero
  /* 00F5F4 8000E9F4 27A600B4 */     addiu $a2, $sp, 0xb4
  /* 00F5F8 8000E9F8 27A700AC */     addiu $a3, $sp, 0xac
  /* 00F5FC 8000E9FC AFB50014 */        sw $s5, 0x14($sp)
  /* 00F600 8000EA00 AFB00018 */        sw $s0, 0x18($sp)
  /* 00F604 8000EA04 AFB1001C */        sw $s1, 0x1c($sp)
  /* 00F608 8000EA08 0C003859 */       jal func_8000E164
  /* 00F60C 8000EA0C AFAA0010 */        sw $t2, 0x10($sp)
  /* 00F610 8000EA10 C7A200B0 */      lwc1 $f2, 0xb0($sp)
  /* 00F614 8000EA14 C7B200B4 */      lwc1 $f18, 0xb4($sp)
  /* 00F618 8000EA18 C7A600A8 */      lwc1 $f6, 0xa8($sp)
  /* 00F61C 8000EA1C C7A800AC */      lwc1 $f8, 0xac($sp)
  /* 00F620 8000EA20 46121032 */    c.eq.s $f2, $f18
  /* 00F624 8000EA24 02402025 */        or $a0, $s2, $zero
  /* 00F628 8000EA28 45000005 */      bc1f .L8000EA40
  /* 00F62C 8000EA2C 00000000 */       nop 
  /* 00F630 8000EA30 46083032 */    c.eq.s $f6, $f8
  /* 00F634 8000EA34 00000000 */       nop 
  /* 00F638 8000EA38 45030069 */     bc1tl .L8000EBE0
  /* 00F63C 8000EA3C 26100001 */     addiu $s0, $s0, 1
  .L8000EA40:
  /* 00F640 8000EA40 0C00239E */       jal func_80008E78
  /* 00F644 8000EA44 320500FF */      andi $a1, $s0, 0xff
  /* 00F648 8000EA48 12140005 */       beq $s0, $s4, .L8000EA60
  /* 00F64C 8000EA4C 00401825 */        or $v1, $v0, $zero
  /* 00F650 8000EA50 12130003 */       beq $s0, $s3, .L8000EA60
  /* 00F654 8000EA54 24010003 */     addiu $at, $zero, 3
  /* 00F658 8000EA58 1601002E */       bne $s0, $at, .L8000EB14
  /* 00F65C 8000EA5C 00000000 */       nop 
  .L8000EA60:
  /* 00F660 8000EA60 C7A200B0 */      lwc1 $f2, 0xb0($sp)
  /* 00F664 8000EA64 C7B200B4 */      lwc1 $f18, 0xb4($sp)
  /* 00F668 8000EA68 4612103C */    c.lt.s $f2, $f18
  /* 00F66C 8000EA6C 46189000 */     add.s $f0, $f18, $f24
  /* 00F670 8000EA70 45020005 */     bc1fl .L8000EA88
  /* 00F674 8000EA74 46121381 */     sub.s $f14, $f2, $f18
  /* 00F678 8000EA78 46121381 */     sub.s $f14, $f2, $f18
  /* 00F67C 8000EA7C 10000003 */         b .L8000EA8C
  /* 00F680 8000EA80 46007407 */     neg.s $f16, $f14
  /* 00F684 8000EA84 46121381 */     sub.s $f14, $f2, $f18
  .L8000EA88:
  /* 00F688 8000EA88 46007406 */     mov.s $f16, $f14
  .L8000EA8C:
  /* 00F68C 8000EA8C 4600103C */    c.lt.s $f2, $f0
  /* 00F690 8000EA90 00000000 */       nop 
  /* 00F694 8000EA94 45020005 */     bc1fl .L8000EAAC
  /* 00F698 8000EA98 46001301 */     sub.s $f12, $f2, $f0
  /* 00F69C 8000EA9C 46001301 */     sub.s $f12, $f2, $f0
  /* 00F6A0 8000EAA0 10000002 */         b .L8000EAAC
  /* 00F6A4 8000EAA4 46006307 */     neg.s $f12, $f12
  /* 00F6A8 8000EAA8 46001301 */     sub.s $f12, $f2, $f0
  .L8000EAAC:
  /* 00F6AC 8000EAAC 4610603C */    c.lt.s $f12, $f16
  /* 00F6B0 8000EAB0 00000000 */       nop 
  /* 00F6B4 8000EAB4 45020004 */     bc1fl .L8000EAC8
  /* 00F6B8 8000EAB8 4612103C */    c.lt.s $f2, $f18
  /* 00F6BC 8000EABC 46000486 */     mov.s $f18, $f0
  /* 00F6C0 8000EAC0 46001381 */     sub.s $f14, $f2, $f0
  /* 00F6C4 8000EAC4 4612103C */    c.lt.s $f2, $f18
  .L8000EAC8:
  /* 00F6C8 8000EAC8 46189001 */     sub.s $f0, $f18, $f24
  /* 00F6CC 8000EACC 45020004 */     bc1fl .L8000EAE0
  /* 00F6D0 8000EAD0 46007406 */     mov.s $f16, $f14
  /* 00F6D4 8000EAD4 10000002 */         b .L8000EAE0
  /* 00F6D8 8000EAD8 46007407 */     neg.s $f16, $f14
  /* 00F6DC 8000EADC 46007406 */     mov.s $f16, $f14
  .L8000EAE0:
  /* 00F6E0 8000EAE0 4600103C */    c.lt.s $f2, $f0
  /* 00F6E4 8000EAE4 E7B200B4 */      swc1 $f18, 0xb4($sp)
  /* 00F6E8 8000EAE8 45020005 */     bc1fl .L8000EB00
  /* 00F6EC 8000EAEC 46001301 */     sub.s $f12, $f2, $f0
  /* 00F6F0 8000EAF0 46001301 */     sub.s $f12, $f2, $f0
  /* 00F6F4 8000EAF4 10000002 */         b .L8000EB00
  /* 00F6F8 8000EAF8 46006307 */     neg.s $f12, $f12
  /* 00F6FC 8000EAFC 46001301 */     sub.s $f12, $f2, $f0
  .L8000EB00:
  /* 00F700 8000EB00 4610603C */    c.lt.s $f12, $f16
  /* 00F704 8000EB04 00000000 */       nop 
  /* 00F708 8000EB08 45000002 */      bc1f .L8000EB14
  /* 00F70C 8000EB0C 00000000 */       nop 
  /* 00F710 8000EB10 E7A000B4 */      swc1 $f0, 0xb4($sp)
  .L8000EB14:
  /* 00F714 8000EB14 52200008 */      beql $s1, $zero, .L8000EB38
  /* 00F718 8000EB18 4614D183 */     div.s $f6, $f26, $f20
  /* 00F71C 8000EB1C 52340018 */      beql $s1, $s4, .L8000EB80
  /* 00F720 8000EB20 4614D203 */     div.s $f8, $f26, $f20
  /* 00F724 8000EB24 52330016 */      beql $s1, $s3, .L8000EB80
  /* 00F728 8000EB28 4614D203 */     div.s $f8, $f26, $f20
  /* 00F72C 8000EB2C 1000002C */         b .L8000EBE0
  /* 00F730 8000EB30 26100001 */     addiu $s0, $s0, 1
  /* 00F734 8000EB34 4614D183 */     div.s $f6, $f26, $f20
  .L8000EB38:
  /* 00F738 8000EB38 C7AA00B4 */      lwc1 $f10, 0xb4($sp)
  /* 00F73C 8000EB3C 240D0002 */     addiu $t5, $zero, 2
  /* 00F740 8000EB40 E44A0010 */      swc1 $f10, 0x10($v0)
  /* 00F744 8000EB44 C7A400B0 */      lwc1 $f4, 0xb0($sp)
  /* 00F748 8000EB48 A04D0005 */        sb $t5, 5($v0)
  /* 00F74C 8000EB4C E4440014 */      swc1 $f4, 0x14($v0)
  /* 00F750 8000EB50 C4440014 */      lwc1 $f4, 0x14($v0)
  /* 00F754 8000EB54 E4460008 */      swc1 $f6, 8($v0)
  /* 00F758 8000EB58 C6480078 */      lwc1 $f8, 0x78($s2)
  /* 00F75C 8000EB5C C4460010 */      lwc1 $f6, 0x10($v0)
  /* 00F760 8000EB60 E456001C */      swc1 $f22, 0x1c($v0)
  /* 00F764 8000EB64 46004287 */     neg.s $f10, $f8
  /* 00F768 8000EB68 46062201 */     sub.s $f8, $f4, $f6
  /* 00F76C 8000EB6C E44A000C */      swc1 $f10, 0xc($v0)
  /* 00F770 8000EB70 46144283 */     div.s $f10, $f8, $f20
  /* 00F774 8000EB74 10000019 */         b .L8000EBDC
  /* 00F778 8000EB78 E44A0018 */      swc1 $f10, 0x18($v0)
  /* 00F77C 8000EB7C 4614D203 */     div.s $f8, $f26, $f20
  .L8000EB80:
  /* 00F780 8000EB80 C7A400B4 */      lwc1 $f4, 0xb4($sp)
  /* 00F784 8000EB84 240E0003 */     addiu $t6, $zero, 3
  /* 00F788 8000EB88 02002025 */        or $a0, $s0, $zero
  /* 00F78C 8000EB8C E4440010 */      swc1 $f4, 0x10($v0)
  /* 00F790 8000EB90 C7A600B0 */      lwc1 $f6, 0xb0($sp)
  /* 00F794 8000EB94 A04E0005 */        sb $t6, 5($v0)
  /* 00F798 8000EB98 27AF00A4 */     addiu $t7, $sp, 0xa4
  /* 00F79C 8000EB9C E4460014 */      swc1 $f6, 0x14($v0)
  /* 00F7A0 8000EBA0 E4480008 */      swc1 $f8, 8($v0)
  /* 00F7A4 8000EBA4 C64A0078 */      lwc1 $f10, 0x78($s2)
  /* 00F7A8 8000EBA8 46005107 */     neg.s $f4, $f10
  /* 00F7AC 8000EBAC E444000C */      swc1 $f4, 0xc($v0)
  /* 00F7B0 8000EBB0 C7A600AC */      lwc1 $f6, 0xac($sp)
  /* 00F7B4 8000EBB4 E4460018 */      swc1 $f6, 0x18($v0)
  /* 00F7B8 8000EBB8 C7A800A8 */      lwc1 $f8, 0xa8($sp)
  /* 00F7BC 8000EBBC 16330007 */       bne $s1, $s3, .L8000EBDC
  /* 00F7C0 8000EBC0 E448001C */      swc1 $f8, 0x1c($v0)
  /* 00F7C4 8000EBC4 8FA500E0 */        lw $a1, 0xe0($sp)
  /* 00F7C8 8000EBC8 8FA600E4 */        lw $a2, 0xe4($sp)
  /* 00F7CC 8000EBCC 8FA700E8 */        lw $a3, 0xe8($sp)
  /* 00F7D0 8000EBD0 AFAF0010 */        sw $t7, 0x10($sp)
  /* 00F7D4 8000EBD4 0C00390A */       jal func_8000E428
  /* 00F7D8 8000EBD8 AFA30014 */        sw $v1, 0x14($sp)
  .L8000EBDC:
  /* 00F7DC 8000EBDC 26100001 */     addiu $s0, $s0, 1
  .L8000EBE0:
  /* 00F7E0 8000EBE0 2401000B */     addiu $at, $zero, 0xb
  /* 00F7E4 8000EBE4 5601FF6A */      bnel $s0, $at, .L8000E990
  /* 00F7E8 8000EBE8 24010004 */     addiu $at, $zero, 4
  /* 00F7EC 8000EBEC 8FB800C4 */        lw $t8, 0xc4($sp)
  /* 00F7F0 8000EBF0 8E50006C */        lw $s0, 0x6c($s2)
  /* 00F7F4 8000EBF4 02402025 */        or $a0, $s2, $zero
  /* 00F7F8 8000EBF8 0C0023B9 */       jal func_80008EE4
  /* 00F7FC 8000EBFC AE58006C */        sw $t8, 0x6c($s2)
  /* 00F800 8000EC00 8FB900C0 */        lw $t9, 0xc0($sp)
  /* 00F804 8000EC04 02402025 */        or $a0, $s2, $zero
  /* 00F808 8000EC08 0C0023B9 */       jal func_80008EE4
  /* 00F80C 8000EC0C AE59006C */        sw $t9, 0x6c($s2)
  /* 00F810 8000EC10 C6420078 */      lwc1 $f2, 0x78($s2)
  /* 00F814 8000EC14 AE50006C */        sw $s0, 0x6c($s2)
  /* 00F818 8000EC18 AE400070 */        sw $zero, 0x70($s2)
  /* 00F81C 8000EC1C 46141280 */     add.s $f10, $f2, $f20
  /* 00F820 8000EC20 46001107 */     neg.s $f4, $f2
  /* 00F824 8000EC24 E64A0074 */      swc1 $f10, 0x74($s2)
  /* 00F828 8000EC28 E644007C */      swc1 $f4, 0x7c($s2)
  /* 00F82C 8000EC2C C7A000A4 */      lwc1 $f0, 0xa4($sp)
  /* 00F830 8000EC30 8FBF0064 */        lw $ra, 0x64($sp)
  .L8000EC34:
  /* 00F834 8000EC34 D7B40028 */      ldc1 $f20, 0x28($sp)
  /* 00F838 8000EC38 D7B60030 */      ldc1 $f22, 0x30($sp)
  /* 00F83C 8000EC3C D7B80038 */      ldc1 $f24, 0x38($sp)
  /* 00F840 8000EC40 D7BA0040 */      ldc1 $f26, 0x40($sp)
  /* 00F844 8000EC44 8FB0004C */        lw $s0, 0x4c($sp)
  /* 00F848 8000EC48 8FB10050 */        lw $s1, 0x50($sp)
  /* 00F84C 8000EC4C 8FB20054 */        lw $s2, 0x54($sp)
  /* 00F850 8000EC50 8FB30058 */        lw $s3, 0x58($sp)
  /* 00F854 8000EC54 8FB4005C */        lw $s4, 0x5c($sp)
  /* 00F858 8000EC58 8FB50060 */        lw $s5, 0x60($sp)
  /* 00F85C 8000EC5C 03E00008 */        jr $ra
  /* 00F860 8000EC60 27BD00C8 */     addiu $sp, $sp, 0xc8

  /* 00F864 8000EC64 27BDFF88 */     addiu $sp, $sp, -0x78
  /* 00F868 8000EC68 AFB30060 */        sw $s3, 0x60($sp)
  /* 00F86C 8000EC6C 8FB30088 */        lw $s3, 0x88($sp)
  /* 00F870 8000EC70 F7BC0048 */      sdc1 $f28, 0x48($sp)
  /* 00F874 8000EC74 4486E000 */      mtc1 $a2, $f28
  /* 00F878 8000EC78 AFB10058 */        sw $s1, 0x58($sp)
  /* 00F87C 8000EC7C AFB00054 */        sw $s0, 0x54($sp)
  /* 00F880 8000EC80 AFBF0064 */        sw $ra, 0x64($sp)
  /* 00F884 8000EC84 AFB2005C */        sw $s2, 0x5c($sp)
  /* 00F888 8000EC88 F7BA0040 */      sdc1 $f26, 0x40($sp)
  /* 00F88C 8000EC8C F7B80038 */      sdc1 $f24, 0x38($sp)
  /* 00F890 8000EC90 F7B60030 */      sdc1 $f22, 0x30($sp)
  /* 00F894 8000EC94 F7B40028 */      sdc1 $f20, 0x28($sp)
  /* 00F898 8000EC98 AFA40078 */        sw $a0, 0x78($sp)
  /* 00F89C 8000EC9C 24010002 */     addiu $at, $zero, 2
  /* 00F8A0 8000ECA0 00A08025 */        or $s0, $a1, $zero
  /* 00F8A4 8000ECA4 00E08825 */        or $s1, $a3, $zero
  /* 00F8A8 8000ECA8 8C920074 */        lw $s2, 0x74($a0)
  /* 00F8AC 8000ECAC 1661003B */       bne $s3, $at, .L8000ED9C
  /* 00F8B0 8000ECB0 E49C0078 */      swc1 $f28, 0x78($a0)
  /* 00F8B4 8000ECB4 C7B4008C */      lwc1 $f20, 0x8c($sp)
  /* 00F8B8 8000ECB8 C7BA009C */      lwc1 $f26, 0x9c($sp)
  /* 00F8BC 8000ECBC C7B80098 */      lwc1 $f24, 0x98($sp)
  /* 00F8C0 8000ECC0 E7B40068 */      swc1 $f20, 0x68($sp)
  /* 00F8C4 8000ECC4 4480A000 */      mtc1 $zero, $f20
  /* 00F8C8 8000ECC8 1240001C */      beqz $s2, .L8000ED3C
  /* 00F8CC 8000ECCC C7B60094 */      lwc1 $f22, 0x94($sp)
  .L8000ECD0:
  /* 00F8D0 8000ECD0 4406E000 */      mfc1 $a2, $f28
  /* 00F8D4 8000ECD4 02402025 */        or $a0, $s2, $zero
  /* 00F8D8 8000ECD8 02002825 */        or $a1, $s0, $zero
  /* 00F8DC 8000ECDC 02203825 */        or $a3, $s1, $zero
  /* 00F8E0 8000ECE0 AFB30010 */        sw $s3, 0x10($sp)
  /* 00F8E4 8000ECE4 E7B40014 */      swc1 $f20, 0x14($sp)
  /* 00F8E8 8000ECE8 E7B60018 */      swc1 $f22, 0x18($sp)
  /* 00F8EC 8000ECEC E7B8001C */      swc1 $f24, 0x1c($sp)
  /* 00F8F0 8000ECF0 0C003A2A */       jal func_8000E8A8
  /* 00F8F4 8000ECF4 E7BA0020 */      swc1 $f26, 0x20($sp)
  /* 00F8F8 8000ECF8 4600A03C */    c.lt.s $f20, $f0
  /* 00F8FC 8000ECFC 00000000 */       nop 
  /* 00F900 8000ED00 45000002 */      bc1f .L8000ED0C
  /* 00F904 8000ED04 00000000 */       nop 
  /* 00F908 8000ED08 46000506 */     mov.s $f20, $f0
  .L8000ED0C:
  /* 00F90C 8000ED0C 12000002 */      beqz $s0, .L8000ED18
  /* 00F910 8000ED10 00000000 */       nop 
  /* 00F914 8000ED14 26100004 */     addiu $s0, $s0, 4
  .L8000ED18:
  /* 00F918 8000ED18 12200002 */      beqz $s1, .L8000ED24
  /* 00F91C 8000ED1C 00000000 */       nop 
  /* 00F920 8000ED20 2631002C */     addiu $s1, $s1, 0x2c
  .L8000ED24:
  /* 00F924 8000ED24 0C002EA8 */       jal func_8000BAA0
  /* 00F928 8000ED28 02402025 */        or $a0, $s2, $zero
  /* 00F92C 8000ED2C 1440FFE8 */      bnez $v0, .L8000ECD0
  /* 00F930 8000ED30 00409025 */        or $s2, $v0, $zero
  /* 00F934 8000ED34 8FAF0078 */        lw $t7, 0x78($sp)
  /* 00F938 8000ED38 8DF20074 */        lw $s2, 0x74($t7)
  .L8000ED3C:
  /* 00F93C 8000ED3C C7A40068 */      lwc1 $f4, 0x68($sp)
  /* 00F940 8000ED40 C7A00090 */      lwc1 $f0, 0x90($sp)
  /* 00F944 8000ED44 4604A03C */    c.lt.s $f20, $f4
  /* 00F948 8000ED48 00000000 */       nop 
  /* 00F94C 8000ED4C 45020004 */     bc1fl .L8000ED60
  /* 00F950 8000ED50 4614003C */    c.lt.s $f0, $f20
  /* 00F954 8000ED54 10000006 */         b .L8000ED70
  /* 00F958 8000ED58 46002506 */     mov.s $f20, $f4
  /* 00F95C 8000ED5C 4614003C */    c.lt.s $f0, $f20
  .L8000ED60:
  /* 00F960 8000ED60 00000000 */       nop 
  /* 00F964 8000ED64 45000002 */      bc1f .L8000ED70
  /* 00F968 8000ED68 00000000 */       nop 
  /* 00F96C 8000ED6C 46000506 */     mov.s $f20, $f0
  .L8000ED70:
  /* 00F970 8000ED70 12400008 */      beqz $s2, .L8000ED94
  /* 00F974 8000ED74 00000000 */       nop 
  .L8000ED78:
  /* 00F978 8000ED78 4405A000 */      mfc1 $a1, $f20
  /* 00F97C 8000ED7C 0C003811 */       jal func_8000E044
  /* 00F980 8000ED80 02402025 */        or $a0, $s2, $zero
  /* 00F984 8000ED84 0C002EA8 */       jal func_8000BAA0
  /* 00F988 8000ED88 02402025 */        or $a0, $s2, $zero
  /* 00F98C 8000ED8C 1440FFFA */      bnez $v0, .L8000ED78
  /* 00F990 8000ED90 00409025 */        or $s2, $v0, $zero
  .L8000ED94:
  /* 00F994 8000ED94 1000001A */         b .L8000EE00
  /* 00F998 8000ED98 E7B4008C */      swc1 $f20, 0x8c($sp)
  .L8000ED9C:
  /* 00F99C 8000ED9C 12400018 */      beqz $s2, .L8000EE00
  /* 00F9A0 8000EDA0 C7BA009C */      lwc1 $f26, 0x9c($sp)
  /* 00F9A4 8000EDA4 C7B80098 */      lwc1 $f24, 0x98($sp)
  /* 00F9A8 8000EDA8 C7B60094 */      lwc1 $f22, 0x94($sp)
  /* 00F9AC 8000EDAC C7B4008C */      lwc1 $f20, 0x8c($sp)
  .L8000EDB0:
  /* 00F9B0 8000EDB0 4406E000 */      mfc1 $a2, $f28
  /* 00F9B4 8000EDB4 02402025 */        or $a0, $s2, $zero
  /* 00F9B8 8000EDB8 02002825 */        or $a1, $s0, $zero
  /* 00F9BC 8000EDBC 02203825 */        or $a3, $s1, $zero
  /* 00F9C0 8000EDC0 AFB30010 */        sw $s3, 0x10($sp)
  /* 00F9C4 8000EDC4 E7B40014 */      swc1 $f20, 0x14($sp)
  /* 00F9C8 8000EDC8 E7B60018 */      swc1 $f22, 0x18($sp)
  /* 00F9CC 8000EDCC E7B8001C */      swc1 $f24, 0x1c($sp)
  /* 00F9D0 8000EDD0 0C003A2A */       jal func_8000E8A8
  /* 00F9D4 8000EDD4 E7BA0020 */      swc1 $f26, 0x20($sp)
  /* 00F9D8 8000EDD8 12000002 */      beqz $s0, .L8000EDE4
  /* 00F9DC 8000EDDC 00000000 */       nop 
  /* 00F9E0 8000EDE0 26100004 */     addiu $s0, $s0, 4
  .L8000EDE4:
  /* 00F9E4 8000EDE4 12200002 */      beqz $s1, .L8000EDF0
  /* 00F9E8 8000EDE8 00000000 */       nop 
  /* 00F9EC 8000EDEC 2631002C */     addiu $s1, $s1, 0x2c
  .L8000EDF0:
  /* 00F9F0 8000EDF0 0C002EA8 */       jal func_8000BAA0
  /* 00F9F4 8000EDF4 02402025 */        or $a0, $s2, $zero
  /* 00F9F8 8000EDF8 1440FFED */      bnez $v0, .L8000EDB0
  /* 00F9FC 8000EDFC 00409025 */        or $s2, $v0, $zero
  .L8000EE00:
  /* 00FA00 8000EE00 44803000 */      mtc1 $zero, $f6
  /* 00FA04 8000EE04 8FB80078 */        lw $t8, 0x78($sp)
  /* 00FA08 8000EE08 C7A0008C */      lwc1 $f0, 0x8c($sp)
  /* 00FA0C 8000EE0C E7060078 */      swc1 $f6, 0x78($t8)
  /* 00FA10 8000EE10 8FBF0064 */        lw $ra, 0x64($sp)
  /* 00FA14 8000EE14 8FB30060 */        lw $s3, 0x60($sp)
  /* 00FA18 8000EE18 8FB2005C */        lw $s2, 0x5c($sp)
  /* 00FA1C 8000EE1C 8FB10058 */        lw $s1, 0x58($sp)
  /* 00FA20 8000EE20 8FB00054 */        lw $s0, 0x54($sp)
  /* 00FA24 8000EE24 D7BC0048 */      ldc1 $f28, 0x48($sp)
  /* 00FA28 8000EE28 D7BA0040 */      ldc1 $f26, 0x40($sp)
  /* 00FA2C 8000EE2C D7B80038 */      ldc1 $f24, 0x38($sp)
  /* 00FA30 8000EE30 D7B60030 */      ldc1 $f22, 0x30($sp)
  /* 00FA34 8000EE34 D7B40028 */      ldc1 $f20, 0x28($sp)
  /* 00FA38 8000EE38 03E00008 */        jr $ra
  /* 00FA3C 8000EE3C 27BD0078 */     addiu $sp, $sp, 0x78

  /* 00FA40 8000EE40 27BDFF70 */     addiu $sp, $sp, -0x90
  /* 00FA44 8000EE44 AFBF0064 */        sw $ra, 0x64($sp)
  /* 00FA48 8000EE48 AFBE0060 */        sw $fp, 0x60($sp)
  /* 00FA4C 8000EE4C AFB7005C */        sw $s7, 0x5c($sp)
  /* 00FA50 8000EE50 AFB60058 */        sw $s6, 0x58($sp)
  /* 00FA54 8000EE54 AFB50054 */        sw $s5, 0x54($sp)
  /* 00FA58 8000EE58 AFB40050 */        sw $s4, 0x50($sp)
  /* 00FA5C 8000EE5C AFB3004C */        sw $s3, 0x4c($sp)
  /* 00FA60 8000EE60 AFB20048 */        sw $s2, 0x48($sp)
  /* 00FA64 8000EE64 AFB10044 */        sw $s1, 0x44($sp)
  /* 00FA68 8000EE68 AFB00040 */        sw $s0, 0x40($sp)
  /* 00FA6C 8000EE6C F7B60038 */      sdc1 $f22, 0x38($sp)
  /* 00FA70 8000EE70 F7B40030 */      sdc1 $f20, 0x30($sp)
  /* 00FA74 8000EE74 8C900074 */        lw $s0, 0x74($a0)
  /* 00FA78 8000EE78 4486B000 */      mtc1 $a2, $f22
  /* 00FA7C 8000EE7C 240E0001 */     addiu $t6, $zero, 1
  /* 00FA80 8000EE80 AFA0007C */        sw $zero, 0x7c($sp)
  /* 00FA84 8000EE84 AFAE006C */        sw $t6, 0x6c($sp)
  /* 00FA88 8000EE88 00E09025 */        or $s2, $a3, $zero
  /* 00FA8C 8000EE8C 00A0F025 */        or $fp, $a1, $zero
  /* 00FA90 8000EE90 12000063 */      beqz $s0, .L8000F020
  /* 00FA94 8000EE94 E4960078 */      swc1 $f22, 0x78($a0)
  /* 00FA98 8000EE98 3C018004 */       lui $at, %hi(D_8003DFB0)
  /* 00FA9C 8000EE9C C434DFB0 */      lwc1 $f20, %lo(D_8003DFB0)($at)
  /* 00FAA0 8000EEA0 2417000B */     addiu $s7, $zero, 0xb
  /* 00FAA4 8000EEA4 27B6007C */     addiu $s6, $sp, 0x7c
  /* 00FAA8 8000EEA8 27B50070 */     addiu $s5, $sp, 0x70
  /* 00FAAC 8000EEAC 27B40084 */     addiu $s4, $sp, 0x84
  /* 00FAB0 8000EEB0 24130004 */     addiu $s3, $zero, 4
  .L8000EEB4:
  /* 00FAB4 8000EEB4 8FC50000 */        lw $a1, ($fp)
  /* 00FAB8 8000EEB8 50A0003E */      beql $a1, $zero, .L8000EFB4
  /* 00FABC 8000EEBC E6140074 */      swc1 $f20, 0x74($s0)
  /* 00FAC0 8000EEC0 4406B000 */      mfc1 $a2, $f22
  /* 00FAC4 8000EEC4 0C002F47 */       jal func_8000BD1C
  /* 00FAC8 8000EEC8 02002025 */        or $a0, $s0, $zero
  /* 00FACC 8000EECC 8FAF006C */        lw $t7, 0x6c($sp)
  /* 00FAD0 8000EED0 24110001 */     addiu $s1, $zero, 1
  /* 00FAD4 8000EED4 A20F0055 */        sb $t7, 0x55($s0)
  /* 00FAD8 8000EED8 AFA0006C */        sw $zero, 0x6c($sp)
  .L8000EEDC:
  /* 00FADC 8000EEDC 1233002F */       beq $s1, $s3, jtgt_8000EF9C
  /* 00FAE0 8000EEE0 00002025 */        or $a0, $zero, $zero
  /* 00FAE4 8000EEE4 8E18006C */        lw $t8, 0x6c($s0)
  /* 00FAE8 8000EEE8 AFB60024 */        sw $s6, 0x24($sp)
  /* 00FAEC 8000EEEC AFB50020 */        sw $s5, 0x20($sp)
  /* 00FAF0 8000EEF0 AFA0001C */        sw $zero, 0x1c($sp)
  /* 00FAF4 8000EEF4 AFB10018 */        sw $s1, 0x18($sp)
  /* 00FAF8 8000EEF8 AFB20014 */        sw $s2, 0x14($sp)
  /* 00FAFC 8000EEFC 02002825 */        or $a1, $s0, $zero
  /* 00FB00 8000EF00 02803025 */        or $a2, $s4, $zero
  /* 00FB04 8000EF04 00003825 */        or $a3, $zero, $zero
  /* 00FB08 8000EF08 0C003859 */       jal func_8000E164
  /* 00FB0C 8000EF0C AFB80010 */        sw $t8, 0x10($sp)
  /* 00FB10 8000EF10 2639FFFF */     addiu $t9, $s1, -1
  /* 00FB14 8000EF14 2F21000A */     sltiu $at, $t9, 0xa
  /* 00FB18 8000EF18 10200020 */      beqz $at, jtgt_8000EF9C
  /* 00FB1C 8000EF1C 0019C880 */       sll $t9, $t9, 2
  /* 00FB20 8000EF20 3C018004 */       lui $at, %hi(jtbl_8003DFB4)
  /* 00FB24 8000EF24 00390821 */      addu $at, $at, $t9
  /* 00FB28 8000EF28 8C39DFB4 */        lw $t9, %lo(jtbl_8003DFB4)($at)
  /* 00FB2C 8000EF2C 03200008 */        jr $t9
  /* 00FB30 8000EF30 00000000 */       nop 
  glabel jtgt_8000EF34
  /* 00FB34 8000EF34 C7A40084 */      lwc1 $f4, 0x84($sp)
  /* 00FB38 8000EF38 10000018 */         b jtgt_8000EF9C
  /* 00FB3C 8000EF3C E6040030 */      swc1 $f4, 0x30($s0)
  glabel jtgt_8000EF40
  /* 00FB40 8000EF40 C7A60084 */      lwc1 $f6, 0x84($sp)
  /* 00FB44 8000EF44 10000015 */         b jtgt_8000EF9C
  /* 00FB48 8000EF48 E6060034 */      swc1 $f6, 0x34($s0)
  glabel jtgt_8000EF4C
  /* 00FB4C 8000EF4C C7A80084 */      lwc1 $f8, 0x84($sp)
  /* 00FB50 8000EF50 10000012 */         b jtgt_8000EF9C
  /* 00FB54 8000EF54 E6080038 */      swc1 $f8, 0x38($s0)
  glabel jtgt_8000EF58
  /* 00FB58 8000EF58 C7AA0084 */      lwc1 $f10, 0x84($sp)
  /* 00FB5C 8000EF5C 1000000F */         b jtgt_8000EF9C
  /* 00FB60 8000EF60 E60A001C */      swc1 $f10, 0x1c($s0)
  glabel jtgt_8000EF64
  /* 00FB64 8000EF64 C7B00084 */      lwc1 $f16, 0x84($sp)
  /* 00FB68 8000EF68 1000000C */         b jtgt_8000EF9C
  /* 00FB6C 8000EF6C E6100020 */      swc1 $f16, 0x20($s0)
  glabel jtgt_8000EF70
  /* 00FB70 8000EF70 C7B20084 */      lwc1 $f18, 0x84($sp)
  /* 00FB74 8000EF74 10000009 */         b jtgt_8000EF9C
  /* 00FB78 8000EF78 E6120024 */      swc1 $f18, 0x24($s0)
  glabel jtgt_8000EF7C
  /* 00FB7C 8000EF7C C7A40084 */      lwc1 $f4, 0x84($sp)
  /* 00FB80 8000EF80 10000006 */         b jtgt_8000EF9C
  /* 00FB84 8000EF84 E6040040 */      swc1 $f4, 0x40($s0)
  glabel jtgt_8000EF88
  /* 00FB88 8000EF88 C7A60084 */      lwc1 $f6, 0x84($sp)
  /* 00FB8C 8000EF8C 10000003 */         b jtgt_8000EF9C
  /* 00FB90 8000EF90 E6060044 */      swc1 $f6, 0x44($s0)
  glabel jtgt_8000EF94
  /* 00FB94 8000EF94 C7A80084 */      lwc1 $f8, 0x84($sp)
  /* 00FB98 8000EF98 E6080048 */      swc1 $f8, 0x48($s0)
  glabel jtgt_8000EF9C
  /* 00FB9C 8000EF9C 26310001 */     addiu $s1, $s1, 1
  /* 00FBA0 8000EFA0 1637FFCE */       bne $s1, $s7, .L8000EEDC
  /* 00FBA4 8000EFA4 00000000 */       nop 
  /* 00FBA8 8000EFA8 10000016 */         b .L8000F004
  /* 00FBAC 8000EFAC 00000000 */       nop 
  /* 00FBB0 8000EFB0 E6140074 */      swc1 $f20, 0x74($s0)
  .L8000EFB4:
  /* 00FBB4 8000EFB4 12400013 */      beqz $s2, .L8000F004
  /* 00FBB8 8000EFB8 A2000055 */        sb $zero, 0x55($s0)
  /* 00FBBC 8000EFBC 8E490008 */        lw $t1, 8($s2)
  /* 00FBC0 8000EFC0 AE09001C */        sw $t1, 0x1c($s0)
  /* 00FBC4 8000EFC4 8E48000C */        lw $t0, 0xc($s2)
  /* 00FBC8 8000EFC8 AE080020 */        sw $t0, 0x20($s0)
  /* 00FBCC 8000EFCC 8E490010 */        lw $t1, 0x10($s2)
  /* 00FBD0 8000EFD0 AE090024 */        sw $t1, 0x24($s0)
  /* 00FBD4 8000EFD4 8E4B0014 */        lw $t3, 0x14($s2)
  /* 00FBD8 8000EFD8 AE0B0030 */        sw $t3, 0x30($s0)
  /* 00FBDC 8000EFDC 8E4A0018 */        lw $t2, 0x18($s2)
  /* 00FBE0 8000EFE0 AE0A0034 */        sw $t2, 0x34($s0)
  /* 00FBE4 8000EFE4 8E4B001C */        lw $t3, 0x1c($s2)
  /* 00FBE8 8000EFE8 AE0B0038 */        sw $t3, 0x38($s0)
  /* 00FBEC 8000EFEC 8E4D0020 */        lw $t5, 0x20($s2)
  /* 00FBF0 8000EFF0 AE0D0040 */        sw $t5, 0x40($s0)
  /* 00FBF4 8000EFF4 8E4C0024 */        lw $t4, 0x24($s2)
  /* 00FBF8 8000EFF8 AE0C0044 */        sw $t4, 0x44($s0)
  /* 00FBFC 8000EFFC 8E4D0028 */        lw $t5, 0x28($s2)
  /* 00FC00 8000F000 AE0D0048 */        sw $t5, 0x48($s0)
  .L8000F004:
  /* 00FC04 8000F004 12400002 */      beqz $s2, .L8000F010
  /* 00FC08 8000F008 27DE0004 */     addiu $fp, $fp, 4
  /* 00FC0C 8000F00C 2652002C */     addiu $s2, $s2, 0x2c
  .L8000F010:
  /* 00FC10 8000F010 0C002EA8 */       jal func_8000BAA0
  /* 00FC14 8000F014 02002025 */        or $a0, $s0, $zero
  /* 00FC18 8000F018 1440FFA6 */      bnez $v0, .L8000EEB4
  /* 00FC1C 8000F01C 00408025 */        or $s0, $v0, $zero
  .L8000F020:
  /* 00FC20 8000F020 8FBF0064 */        lw $ra, 0x64($sp)
  /* 00FC24 8000F024 D7B40030 */      ldc1 $f20, 0x30($sp)
  /* 00FC28 8000F028 D7B60038 */      ldc1 $f22, 0x38($sp)
  /* 00FC2C 8000F02C 8FB00040 */        lw $s0, 0x40($sp)
  /* 00FC30 8000F030 8FB10044 */        lw $s1, 0x44($sp)
  /* 00FC34 8000F034 8FB20048 */        lw $s2, 0x48($sp)
  /* 00FC38 8000F038 8FB3004C */        lw $s3, 0x4c($sp)
  /* 00FC3C 8000F03C 8FB40050 */        lw $s4, 0x50($sp)
  /* 00FC40 8000F040 8FB50054 */        lw $s5, 0x54($sp)
  /* 00FC44 8000F044 8FB60058 */        lw $s6, 0x58($sp)
  /* 00FC48 8000F048 8FB7005C */        lw $s7, 0x5c($sp)
  /* 00FC4C 8000F04C 8FBE0060 */        lw $fp, 0x60($sp)
  /* 00FC50 8000F050 03E00008 */        jr $ra
  /* 00FC54 8000F054 27BD0090 */     addiu $sp, $sp, 0x90

glabel func_8000F058
  /* 00FC58 8000F058 27BDFFE8 */     addiu $sp, $sp, -0x18
  /* 00FC5C 8000F05C AFBF0014 */        sw $ra, 0x14($sp)
  /* 00FC60 8000F060 AFA40018 */        sw $a0, 0x18($sp)
  /* 00FC64 8000F064 2405001B */     addiu $a1, $zero, 0x1b
  /* 00FC68 8000F068 0C002330 */       jal func_80008CC0
  /* 00FC6C 8000F06C 00003025 */        or $a2, $zero, $zero
  /* 00FC70 8000F070 8FA40018 */        lw $a0, 0x18($sp)
  /* 00FC74 8000F074 24050020 */     addiu $a1, $zero, 0x20
  /* 00FC78 8000F078 0C002330 */       jal func_80008CC0
  /* 00FC7C 8000F07C 00003025 */        or $a2, $zero, $zero
  /* 00FC80 8000F080 8FBF0014 */        lw $ra, 0x14($sp)
  /* 00FC84 8000F084 27BD0018 */     addiu $sp, $sp, 0x18
  /* 00FC88 8000F088 03E00008 */        jr $ra
  /* 00FC8C 8000F08C 00000000 */       nop 

  /* 00FC90 8000F090 27BDFFE0 */     addiu $sp, $sp, -0x20
  /* 00FC94 8000F094 AFBF0014 */        sw $ra, 0x14($sp)
  /* 00FC98 8000F098 0C0024B4 */       jal func_800092D0
  /* 00FC9C 8000F09C 00000000 */       nop 
  /* 00FCA0 8000F0A0 AFA2001C */        sw $v0, 0x1c($sp)
  /* 00FCA4 8000F0A4 0C003C16 */       jal func_8000F058
  /* 00FCA8 8000F0A8 00402025 */        or $a0, $v0, $zero
  /* 00FCAC 8000F0AC 8FBF0014 */        lw $ra, 0x14($sp)
  /* 00FCB0 8000F0B0 8FA2001C */        lw $v0, 0x1c($sp)
  /* 00FCB4 8000F0B4 27BD0020 */     addiu $sp, $sp, 0x20
  /* 00FCB8 8000F0B8 03E00008 */        jr $ra
  /* 00FCBC 8000F0BC 00000000 */       nop 

  /* 00FCC0 8000F0C0 27BDFFE0 */     addiu $sp, $sp, -0x20
  /* 00FCC4 8000F0C4 AFBF0014 */        sw $ra, 0x14($sp)
  /* 00FCC8 8000F0C8 0C0024E0 */       jal func_80009380
  /* 00FCCC 8000F0CC 00000000 */       nop 
  /* 00FCD0 8000F0D0 AFA2001C */        sw $v0, 0x1c($sp)
  /* 00FCD4 8000F0D4 0C003C16 */       jal func_8000F058
  /* 00FCD8 8000F0D8 00402025 */        or $a0, $v0, $zero
  /* 00FCDC 8000F0DC 8FBF0014 */        lw $ra, 0x14($sp)
  /* 00FCE0 8000F0E0 8FA2001C */        lw $v0, 0x1c($sp)
  /* 00FCE4 8000F0E4 27BD0020 */     addiu $sp, $sp, 0x20
  /* 00FCE8 8000F0E8 03E00008 */        jr $ra
  /* 00FCEC 8000F0EC 00000000 */       nop 

  /* 00FCF0 8000F0F0 27BDFFE0 */     addiu $sp, $sp, -0x20
  /* 00FCF4 8000F0F4 AFBF0014 */        sw $ra, 0x14($sp)
  /* 00FCF8 8000F0F8 0C0024FD */       jal func_800093F4
  /* 00FCFC 8000F0FC 00000000 */       nop 
  /* 00FD00 8000F100 AFA2001C */        sw $v0, 0x1c($sp)
  /* 00FD04 8000F104 0C003C16 */       jal func_8000F058
  /* 00FD08 8000F108 00402025 */        or $a0, $v0, $zero
  /* 00FD0C 8000F10C 8FBF0014 */        lw $ra, 0x14($sp)
  /* 00FD10 8000F110 8FA2001C */        lw $v0, 0x1c($sp)
  /* 00FD14 8000F114 27BD0020 */     addiu $sp, $sp, 0x20
  /* 00FD18 8000F118 03E00008 */        jr $ra
  /* 00FD1C 8000F11C 00000000 */       nop 

glabel func_8000F120
  /* 00FD20 8000F120 27BDFF68 */     addiu $sp, $sp, -0x98
  /* 00FD24 8000F124 AFB60030 */        sw $s6, 0x30($sp)
  /* 00FD28 8000F128 AFB30024 */        sw $s3, 0x24($sp)
  /* 00FD2C 8000F12C AFB20020 */        sw $s2, 0x20($sp)
  /* 00FD30 8000F130 00A09025 */        or $s2, $a1, $zero
  /* 00FD34 8000F134 00C09825 */        or $s3, $a2, $zero
  /* 00FD38 8000F138 0080B025 */        or $s6, $a0, $zero
  /* 00FD3C 8000F13C AFBF0034 */        sw $ra, 0x34($sp)
  /* 00FD40 8000F140 AFB5002C */        sw $s5, 0x2c($sp)
  /* 00FD44 8000F144 AFB40028 */        sw $s4, 0x28($sp)
  /* 00FD48 8000F148 AFB1001C */        sw $s1, 0x1c($sp)
  /* 00FD4C 8000F14C AFB00018 */        sw $s0, 0x18($sp)
  /* 00FD50 8000F150 AFA00044 */        sw $zero, 0x44($sp)
  /* 00FD54 8000F154 AFA00048 */        sw $zero, 0x48($sp)
  /* 00FD58 8000F158 27A2004C */     addiu $v0, $sp, 0x4c
  /* 00FD5C 8000F15C 27A3008C */     addiu $v1, $sp, 0x8c
  .L8000F160:
  /* 00FD60 8000F160 24420010 */     addiu $v0, $v0, 0x10
  /* 00FD64 8000F164 AC40FFF4 */        sw $zero, -0xc($v0)
  /* 00FD68 8000F168 AC40FFF8 */        sw $zero, -8($v0)
  /* 00FD6C 8000F16C AC40FFFC */        sw $zero, -4($v0)
  /* 00FD70 8000F170 1443FFFB */       bne $v0, $v1, .L8000F160
  /* 00FD74 8000F174 AC40FFF0 */        sw $zero, -0x10($v0)
  /* 00FD78 8000F178 8E430000 */        lw $v1, ($s2)
  /* 00FD7C 8000F17C 24150012 */     addiu $s5, $zero, 0x12
  /* 00FD80 8000F180 27B40044 */     addiu $s4, $sp, 0x44
  /* 00FD84 8000F184 12A30053 */       beq $s5, $v1, .L8000F2D4
  /* 00FD88 8000F188 30620FFF */      andi $v0, $v1, 0xfff
  .L8000F18C:
  /* 00FD8C 8000F18C 10400008 */      beqz $v0, .L8000F1B0
  /* 00FD90 8000F190 00027080 */       sll $t6, $v0, 2
  /* 00FD94 8000F194 028E8821 */      addu $s1, $s4, $t6
  /* 00FD98 8000F198 8E24FFFC */        lw $a0, -4($s1)
  /* 00FD9C 8000F19C 0C0024FD */       jal func_800093F4
  /* 00FDA0 8000F1A0 8E450004 */        lw $a1, 4($s2)
  /* 00FDA4 8000F1A4 AE220000 */        sw $v0, ($s1)
  /* 00FDA8 8000F1A8 10000006 */         b .L8000F1C4
  /* 00FDAC 8000F1AC 00408025 */        or $s0, $v0, $zero
  .L8000F1B0:
  /* 00FDB0 8000F1B0 02C02025 */        or $a0, $s6, $zero
  /* 00FDB4 8000F1B4 0C0024B4 */       jal func_800092D0
  /* 00FDB8 8000F1B8 8E450004 */        lw $a1, 4($s2)
  /* 00FDBC 8000F1BC AFA20044 */        sw $v0, 0x44($sp)
  /* 00FDC0 8000F1C0 00408025 */        or $s0, $v0, $zero
  .L8000F1C4:
  /* 00FDC4 8000F1C4 8E430000 */        lw $v1, ($s2)
  /* 00FDC8 8000F1C8 02002025 */        or $a0, $s0, $zero
  /* 00FDCC 8000F1CC 24050012 */     addiu $a1, $zero, 0x12
  /* 00FDD0 8000F1D0 306FF000 */      andi $t7, $v1, 0xf000
  /* 00FDD4 8000F1D4 51E00005 */      beql $t7, $zero, .L8000F1EC
  /* 00FDD8 8000F1D8 30788000 */      andi $t8, $v1, 0x8000
  /* 00FDDC 8000F1DC 0C002330 */       jal func_80008CC0
  /* 00FDE0 8000F1E0 00003025 */        or $a2, $zero, $zero
  /* 00FDE4 8000F1E4 8E430000 */        lw $v1, ($s2)
  /* 00FDE8 8000F1E8 30788000 */      andi $t8, $v1, 0x8000
  .L8000F1EC:
  /* 00FDEC 8000F1EC 13000007 */      beqz $t8, .L8000F20C
  /* 00FDF0 8000F1F0 30794000 */      andi $t9, $v1, 0x4000
  /* 00FDF4 8000F1F4 02002025 */        or $a0, $s0, $zero
  /* 00FDF8 8000F1F8 2405002C */     addiu $a1, $zero, 0x2c
  /* 00FDFC 8000F1FC 0C002330 */       jal func_80008CC0
  /* 00FE00 8000F200 00003025 */        or $a2, $zero, $zero
  /* 00FE04 8000F204 1000001B */         b .L8000F274
  /* 00FE08 8000F208 8E4B0008 */        lw $t3, 8($s2)
  .L8000F20C:
  /* 00FE0C 8000F20C 13200007 */      beqz $t9, .L8000F22C
  /* 00FE10 8000F210 30682000 */      andi $t0, $v1, 0x2000
  /* 00FE14 8000F214 02002025 */        or $a0, $s0, $zero
  /* 00FE18 8000F218 2405002E */     addiu $a1, $zero, 0x2e
  /* 00FE1C 8000F21C 0C002330 */       jal func_80008CC0
  /* 00FE20 8000F220 00003025 */        or $a2, $zero, $zero
  /* 00FE24 8000F224 10000013 */         b .L8000F274
  /* 00FE28 8000F228 8E4B0008 */        lw $t3, 8($s2)
  .L8000F22C:
  /* 00FE2C 8000F22C 11000007 */      beqz $t0, .L8000F24C
  /* 00FE30 8000F230 30691000 */      andi $t1, $v1, 0x1000
  /* 00FE34 8000F234 02002025 */        or $a0, $s0, $zero
  /* 00FE38 8000F238 24050030 */     addiu $a1, $zero, 0x30
  /* 00FE3C 8000F23C 0C002330 */       jal func_80008CC0
  /* 00FE40 8000F240 00003025 */        or $a2, $zero, $zero
  /* 00FE44 8000F244 1000000B */         b .L8000F274
  /* 00FE48 8000F248 8E4B0008 */        lw $t3, 8($s2)
  .L8000F24C:
  /* 00FE4C 8000F24C 11200006 */      beqz $t1, .L8000F268
  /* 00FE50 8000F250 02002025 */        or $a0, $s0, $zero
  /* 00FE54 8000F254 24050032 */     addiu $a1, $zero, 0x32
  /* 00FE58 8000F258 0C002330 */       jal func_80008CC0
  /* 00FE5C 8000F25C 00003025 */        or $a2, $zero, $zero
  /* 00FE60 8000F260 10000004 */         b .L8000F274
  /* 00FE64 8000F264 8E4B0008 */        lw $t3, 8($s2)
  .L8000F268:
  /* 00FE68 8000F268 0C003C16 */       jal func_8000F058
  /* 00FE6C 8000F26C 02002025 */        or $a0, $s0, $zero
  /* 00FE70 8000F270 8E4B0008 */        lw $t3, 8($s2)
  .L8000F274:
  /* 00FE74 8000F274 AE0B001C */        sw $t3, 0x1c($s0)
  /* 00FE78 8000F278 8E4A000C */        lw $t2, 0xc($s2)
  /* 00FE7C 8000F27C AE0A0020 */        sw $t2, 0x20($s0)
  /* 00FE80 8000F280 8E4B0010 */        lw $t3, 0x10($s2)
  /* 00FE84 8000F284 AE0B0024 */        sw $t3, 0x24($s0)
  /* 00FE88 8000F288 8E4D0014 */        lw $t5, 0x14($s2)
  /* 00FE8C 8000F28C AE0D0030 */        sw $t5, 0x30($s0)
  /* 00FE90 8000F290 8E4C0018 */        lw $t4, 0x18($s2)
  /* 00FE94 8000F294 AE0C0034 */        sw $t4, 0x34($s0)
  /* 00FE98 8000F298 8E4D001C */        lw $t5, 0x1c($s2)
  /* 00FE9C 8000F29C AE0D0038 */        sw $t5, 0x38($s0)
  /* 00FEA0 8000F2A0 8E4F0020 */        lw $t7, 0x20($s2)
  /* 00FEA4 8000F2A4 AE0F0040 */        sw $t7, 0x40($s0)
  /* 00FEA8 8000F2A8 8E4E0024 */        lw $t6, 0x24($s2)
  /* 00FEAC 8000F2AC AE0E0044 */        sw $t6, 0x44($s0)
  /* 00FEB0 8000F2B0 8E4F0028 */        lw $t7, 0x28($s2)
  /* 00FEB4 8000F2B4 12600003 */      beqz $s3, .L8000F2C4
  /* 00FEB8 8000F2B8 AE0F0048 */        sw $t7, 0x48($s0)
  /* 00FEBC 8000F2BC AE700000 */        sw $s0, ($s3)
  /* 00FEC0 8000F2C0 26730004 */     addiu $s3, $s3, 4
  .L8000F2C4:
  /* 00FEC4 8000F2C4 8E43002C */        lw $v1, 0x2c($s2)
  /* 00FEC8 8000F2C8 2652002C */     addiu $s2, $s2, 0x2c
  /* 00FECC 8000F2CC 56A3FFAF */      bnel $s5, $v1, .L8000F18C
  /* 00FED0 8000F2D0 30620FFF */      andi $v0, $v1, 0xfff
  .L8000F2D4:
  /* 00FED4 8000F2D4 8FBF0034 */        lw $ra, 0x34($sp)
  /* 00FED8 8000F2D8 8FB00018 */        lw $s0, 0x18($sp)
  /* 00FEDC 8000F2DC 8FB1001C */        lw $s1, 0x1c($sp)
  /* 00FEE0 8000F2E0 8FB20020 */        lw $s2, 0x20($sp)
  /* 00FEE4 8000F2E4 8FB30024 */        lw $s3, 0x24($sp)
  /* 00FEE8 8000F2E8 8FB40028 */        lw $s4, 0x28($sp)
  /* 00FEEC 8000F2EC 8FB5002C */        lw $s5, 0x2c($sp)
  /* 00FEF0 8000F2F0 8FB60030 */        lw $s6, 0x30($sp)
  /* 00FEF4 8000F2F4 03E00008 */        jr $ra
  /* 00FEF8 8000F2F8 27BD0098 */     addiu $sp, $sp, 0x98

glabel func_8000F2FC
  /* 00FEFC 8000F2FC 27BDFFE8 */     addiu $sp, $sp, -0x18
  /* 00FF00 8000F300 AFA5001C */        sw $a1, 0x1c($sp)
  /* 00FF04 8000F304 30A500FF */      andi $a1, $a1, 0xff
  /* 00FF08 8000F308 AFBF0014 */        sw $ra, 0x14($sp)
  /* 00FF0C 8000F30C AFA40018 */        sw $a0, 0x18($sp)
  /* 00FF10 8000F310 AFA60020 */        sw $a2, 0x20($sp)
  /* 00FF14 8000F314 10A00003 */      beqz $a1, .L8000F324
  /* 00FF18 8000F318 AFA70024 */        sw $a3, 0x24($sp)
  /* 00FF1C 8000F31C 0C002330 */       jal func_80008CC0
  /* 00FF20 8000F320 00003025 */        or $a2, $zero, $zero
  .L8000F324:
  /* 00FF24 8000F324 93AE0023 */       lbu $t6, 0x23($sp)
  /* 00FF28 8000F328 8FA40018 */        lw $a0, 0x18($sp)
  /* 00FF2C 8000F32C 11C00003 */      beqz $t6, .L8000F33C
  /* 00FF30 8000F330 01C02825 */        or $a1, $t6, $zero
  /* 00FF34 8000F334 0C002330 */       jal func_80008CC0
  /* 00FF38 8000F338 00003025 */        or $a2, $zero, $zero
  .L8000F33C:
  /* 00FF3C 8000F33C 93AF0027 */       lbu $t7, 0x27($sp)
  /* 00FF40 8000F340 8FA40018 */        lw $a0, 0x18($sp)
  /* 00FF44 8000F344 11E00003 */      beqz $t7, .L8000F354
  /* 00FF48 8000F348 01E02825 */        or $a1, $t7, $zero
  /* 00FF4C 8000F34C 0C002330 */       jal func_80008CC0
  /* 00FF50 8000F350 00003025 */        or $a2, $zero, $zero
  .L8000F354:
  /* 00FF54 8000F354 8FBF0014 */        lw $ra, 0x14($sp)
  /* 00FF58 8000F358 27BD0018 */     addiu $sp, $sp, 0x18
  /* 00FF5C 8000F35C 03E00008 */        jr $ra
  /* 00FF60 8000F360 00000000 */       nop 

glabel func_8000F364
  /* 00FF64 8000F364 27BDFFD8 */     addiu $sp, $sp, -0x28
  /* 00FF68 8000F368 AFA5002C */        sw $a1, 0x2c($sp)
  /* 00FF6C 8000F36C 30A500FF */      andi $a1, $a1, 0xff
  /* 00FF70 8000F370 24AEFFEE */     addiu $t6, $a1, -0x12
  /* 00FF74 8000F374 AFA60030 */        sw $a2, 0x30($sp)
  /* 00FF78 8000F378 AFA70034 */        sw $a3, 0x34($sp)
  /* 00FF7C 8000F37C 2DC1000F */     sltiu $at, $t6, 0xf
  /* 00FF80 8000F380 30E700FF */      andi $a3, $a3, 0xff
  /* 00FF84 8000F384 30C600FF */      andi $a2, $a2, 0xff
  /* 00FF88 8000F388 AFBF0014 */        sw $ra, 0x14($sp)
  /* 00FF8C 8000F38C 00004025 */        or $t0, $zero, $zero
  /* 00FF90 8000F390 00004825 */        or $t1, $zero, $zero
  /* 00FF94 8000F394 1020001C */      beqz $at, jtgt_8000F408
  /* 00FF98 8000F398 00001825 */        or $v1, $zero, $zero
  /* 00FF9C 8000F39C 000E7080 */       sll $t6, $t6, 2
  /* 00FFA0 8000F3A0 3C018004 */       lui $at, %hi(D_8003DFDC)
  /* 00FFA4 8000F3A4 002E0821 */      addu $at, $at, $t6
  /* 00FFA8 8000F3A8 8C2EDFDC */        lw $t6, %lo(D_8003DFDC)($at)
  /* 00FFAC 8000F3AC 01C00008 */        jr $t6
  /* 00FFB0 8000F3B0 00000000 */       nop 
  glabel jtgt_8000F3B4
  /* 00FFB4 8000F3B4 10000014 */         b jtgt_8000F408
  /* 00FFB8 8000F3B8 24080001 */     addiu $t0, $zero, 1
  glabel jtgt_8000F3BC
  /* 00FFBC 8000F3BC 10000012 */         b jtgt_8000F408
  /* 00FFC0 8000F3C0 24030001 */     addiu $v1, $zero, 1
  glabel jtgt_8000F3C4
  /* 00FFC4 8000F3C4 24030001 */     addiu $v1, $zero, 1
  /* 00FFC8 8000F3C8 1000000F */         b jtgt_8000F408
  /* 00FFCC 8000F3CC 24080001 */     addiu $t0, $zero, 1
  glabel jtgt_8000F3D0
  /* 00FFD0 8000F3D0 24090001 */     addiu $t1, $zero, 1
  /* 00FFD4 8000F3D4 24030001 */     addiu $v1, $zero, 1
  /* 00FFD8 8000F3D8 1000000B */         b jtgt_8000F408
  /* 00FFDC 8000F3DC 24080001 */     addiu $t0, $zero, 1
  glabel jtgt_8000F3E0
  /* 00FFE0 8000F3E0 10000009 */         b jtgt_8000F408
  /* 00FFE4 8000F3E4 24030002 */     addiu $v1, $zero, 2
  glabel jtgt_8000F3E8
  /* 00FFE8 8000F3E8 24030002 */     addiu $v1, $zero, 2
  /* 00FFEC 8000F3EC 10000006 */         b jtgt_8000F408
  /* 00FFF0 8000F3F0 24080001 */     addiu $t0, $zero, 1
  glabel jtgt_8000F3F4
  /* 00FFF4 8000F3F4 24030002 */     addiu $v1, $zero, 2
  /* 00FFF8 8000F3F8 24090001 */     addiu $t1, $zero, 1
  /* 00FFFC 8000F3FC 10000002 */         b jtgt_8000F408
  /* 010000 8000F400 24080001 */     addiu $t0, $zero, 1
  glabel jtgt_8000F404
  /* 010004 8000F404 24090001 */     addiu $t1, $zero, 1
  glabel jtgt_8000F408
  /* 010008 8000F408 2401001A */     addiu $at, $zero, 0x1a
  /* 01000C 8000F40C 10C10008 */       beq $a2, $at, .L8000F430
  /* 010010 8000F410 24050012 */     addiu $a1, $zero, 0x12
  /* 010014 8000F414 2401001D */     addiu $at, $zero, 0x1d
  /* 010018 8000F418 10C10007 */       beq $a2, $at, .L8000F438
  /* 01001C 8000F41C 24010020 */     addiu $at, $zero, 0x20
  /* 010020 8000F420 50C10008 */      beql $a2, $at, .L8000F444
  /* 010024 8000F424 24090001 */     addiu $t1, $zero, 1
  /* 010028 8000F428 10000007 */         b .L8000F448
  /* 01002C 8000F42C 24010020 */     addiu $at, $zero, 0x20
  .L8000F430:
  /* 010030 8000F430 10000004 */         b .L8000F444
  /* 010034 8000F434 24030001 */     addiu $v1, $zero, 1
  .L8000F438:
  /* 010038 8000F438 10000002 */         b .L8000F444
  /* 01003C 8000F43C 24030002 */     addiu $v1, $zero, 2
  /* 010040 8000F440 24090001 */     addiu $t1, $zero, 1
  .L8000F444:
  /* 010044 8000F444 24010020 */     addiu $at, $zero, 0x20
  .L8000F448:
  /* 010048 8000F448 14E10002 */       bne $a3, $at, .L8000F454
  /* 01004C 8000F44C 00003025 */        or $a2, $zero, $zero
  /* 010050 8000F450 24090001 */     addiu $t1, $zero, 1
  .L8000F454:
  /* 010054 8000F454 51000009 */      beql $t0, $zero, .L8000F47C
  /* 010058 8000F458 8FA20038 */        lw $v0, 0x38($sp)
  /* 01005C 8000F45C AFA3001C */        sw $v1, 0x1c($sp)
  /* 010060 8000F460 AFA40028 */        sw $a0, 0x28($sp)
  /* 010064 8000F464 0C002330 */       jal func_80008CC0
  /* 010068 8000F468 AFA90020 */        sw $t1, 0x20($sp)
  /* 01006C 8000F46C 8FA3001C */        lw $v1, 0x1c($sp)
  /* 010070 8000F470 8FA40028 */        lw $a0, 0x28($sp)
  /* 010074 8000F474 8FA90020 */        lw $t1, 0x20($sp)
  /* 010078 8000F478 8FA20038 */        lw $v0, 0x38($sp)
  .L8000F47C:
  /* 01007C 8000F47C 24010001 */     addiu $at, $zero, 1
  /* 010080 8000F480 304F4000 */      andi $t7, $v0, 0x4000
  /* 010084 8000F484 11E0000C */      beqz $t7, .L8000F4B8
  /* 010088 8000F488 30582000 */      andi $t8, $v0, 0x2000
  /* 01008C 8000F48C 14610006 */       bne $v1, $at, .L8000F4A8
  /* 010090 8000F490 2405002D */     addiu $a1, $zero, 0x2d
  /* 010094 8000F494 2405002E */     addiu $a1, $zero, 0x2e
  /* 010098 8000F498 0C002330 */       jal func_80008CC0
  /* 01009C 8000F49C 00003025 */        or $a2, $zero, $zero
  /* 0100A0 8000F4A0 10000038 */         b .L8000F584
  /* 0100A4 8000F4A4 8FBF0014 */        lw $ra, 0x14($sp)
  .L8000F4A8:
  /* 0100A8 8000F4A8 0C002330 */       jal func_80008CC0
  /* 0100AC 8000F4AC 00003025 */        or $a2, $zero, $zero
  /* 0100B0 8000F4B0 10000034 */         b .L8000F584
  /* 0100B4 8000F4B4 8FBF0014 */        lw $ra, 0x14($sp)
  .L8000F4B8:
  /* 0100B8 8000F4B8 1300000D */      beqz $t8, .L8000F4F0
  /* 0100BC 8000F4BC 30591000 */      andi $t9, $v0, 0x1000
  /* 0100C0 8000F4C0 24010001 */     addiu $at, $zero, 1
  /* 0100C4 8000F4C4 14610006 */       bne $v1, $at, .L8000F4E0
  /* 0100C8 8000F4C8 2405002F */     addiu $a1, $zero, 0x2f
  /* 0100CC 8000F4CC 24050030 */     addiu $a1, $zero, 0x30
  /* 0100D0 8000F4D0 0C002330 */       jal func_80008CC0
  /* 0100D4 8000F4D4 00003025 */        or $a2, $zero, $zero
  /* 0100D8 8000F4D8 1000002A */         b .L8000F584
  /* 0100DC 8000F4DC 8FBF0014 */        lw $ra, 0x14($sp)
  .L8000F4E0:
  /* 0100E0 8000F4E0 0C002330 */       jal func_80008CC0
  /* 0100E4 8000F4E4 00003025 */        or $a2, $zero, $zero
  /* 0100E8 8000F4E8 10000026 */         b .L8000F584
  /* 0100EC 8000F4EC 8FBF0014 */        lw $ra, 0x14($sp)
  .L8000F4F0:
  /* 0100F0 8000F4F0 1320000C */      beqz $t9, .L8000F524
  /* 0100F4 8000F4F4 24010001 */     addiu $at, $zero, 1
  /* 0100F8 8000F4F8 14610006 */       bne $v1, $at, .L8000F514
  /* 0100FC 8000F4FC 24050031 */     addiu $a1, $zero, 0x31
  /* 010100 8000F500 24050032 */     addiu $a1, $zero, 0x32
  /* 010104 8000F504 0C002330 */       jal func_80008CC0
  /* 010108 8000F508 00003025 */        or $a2, $zero, $zero
  /* 01010C 8000F50C 1000001D */         b .L8000F584
  /* 010110 8000F510 8FBF0014 */        lw $ra, 0x14($sp)
  .L8000F514:
  /* 010114 8000F514 0C002330 */       jal func_80008CC0
  /* 010118 8000F518 00003025 */        or $a2, $zero, $zero
  /* 01011C 8000F51C 10000019 */         b .L8000F584
  /* 010120 8000F520 8FBF0014 */        lw $ra, 0x14($sp)
  .L8000F524:
  /* 010124 8000F524 1120000D */      beqz $t1, .L8000F55C
  /* 010128 8000F528 24010001 */     addiu $at, $zero, 1
  /* 01012C 8000F52C 24010001 */     addiu $at, $zero, 1
  /* 010130 8000F530 14610006 */       bne $v1, $at, .L8000F54C
  /* 010134 8000F534 2405002B */     addiu $a1, $zero, 0x2b
  /* 010138 8000F538 2405002C */     addiu $a1, $zero, 0x2c
  /* 01013C 8000F53C 0C002330 */       jal func_80008CC0
  /* 010140 8000F540 00003025 */        or $a2, $zero, $zero
  /* 010144 8000F544 1000000F */         b .L8000F584
  /* 010148 8000F548 8FBF0014 */        lw $ra, 0x14($sp)
  .L8000F54C:
  /* 01014C 8000F54C 0C002330 */       jal func_80008CC0
  /* 010150 8000F550 00003025 */        or $a2, $zero, $zero
  /* 010154 8000F554 1000000B */         b .L8000F584
  /* 010158 8000F558 8FBF0014 */        lw $ra, 0x14($sp)
  .L8000F55C:
  /* 01015C 8000F55C 14610006 */       bne $v1, $at, .L8000F578
  /* 010160 8000F560 24050029 */     addiu $a1, $zero, 0x29
  /* 010164 8000F564 2405002A */     addiu $a1, $zero, 0x2a
  /* 010168 8000F568 0C002330 */       jal func_80008CC0
  /* 01016C 8000F56C 00003025 */        or $a2, $zero, $zero
  /* 010170 8000F570 10000004 */         b .L8000F584
  /* 010174 8000F574 8FBF0014 */        lw $ra, 0x14($sp)
  .L8000F578:
  /* 010178 8000F578 0C002330 */       jal func_80008CC0
  /* 01017C 8000F57C 00003025 */        or $a2, $zero, $zero
  /* 010180 8000F580 8FBF0014 */        lw $ra, 0x14($sp)
  .L8000F584:
  /* 010184 8000F584 27BD0028 */     addiu $sp, $sp, 0x28
  /* 010188 8000F588 03E00008 */        jr $ra
  /* 01018C 8000F58C 00000000 */       nop 

glabel func_8000F590
  /* 010190 8000F590 27BDFF58 */     addiu $sp, $sp, -0xa8
  /* 010194 8000F594 AFB60038 */        sw $s6, 0x38($sp)
  /* 010198 8000F598 AFB3002C */        sw $s3, 0x2c($sp)
  /* 01019C 8000F59C AFB10024 */        sw $s1, 0x24($sp)
  /* 0101A0 8000F5A0 00A08825 */        or $s1, $a1, $zero
  /* 0101A4 8000F5A4 00C09825 */        or $s3, $a2, $zero
  /* 0101A8 8000F5A8 30F600FF */      andi $s6, $a3, 0xff
  /* 0101AC 8000F5AC AFBF0044 */        sw $ra, 0x44($sp)
  /* 0101B0 8000F5B0 AFBE0040 */        sw $fp, 0x40($sp)
  /* 0101B4 8000F5B4 AFB7003C */        sw $s7, 0x3c($sp)
  /* 0101B8 8000F5B8 AFB50034 */        sw $s5, 0x34($sp)
  /* 0101BC 8000F5BC AFB40030 */        sw $s4, 0x30($sp)
  /* 0101C0 8000F5C0 AFB20028 */        sw $s2, 0x28($sp)
  /* 0101C4 8000F5C4 AFB00020 */        sw $s0, 0x20($sp)
  /* 0101C8 8000F5C8 AFA400A8 */        sw $a0, 0xa8($sp)
  /* 0101CC 8000F5CC AFA700B4 */        sw $a3, 0xb4($sp)
  /* 0101D0 8000F5D0 AFA00054 */        sw $zero, 0x54($sp)
  /* 0101D4 8000F5D4 AFA00058 */        sw $zero, 0x58($sp)
  /* 0101D8 8000F5D8 27A2005C */     addiu $v0, $sp, 0x5c
  /* 0101DC 8000F5DC 27A3009C */     addiu $v1, $sp, 0x9c
  .L8000F5E0:
  /* 0101E0 8000F5E0 24420010 */     addiu $v0, $v0, 0x10
  /* 0101E4 8000F5E4 AC40FFF4 */        sw $zero, -0xc($v0)
  /* 0101E8 8000F5E8 AC40FFF8 */        sw $zero, -8($v0)
  /* 0101EC 8000F5EC AC40FFFC */        sw $zero, -4($v0)
  /* 0101F0 8000F5F0 1443FFFB */       bne $v0, $v1, .L8000F5E0
  /* 0101F4 8000F5F4 AC40FFF0 */        sw $zero, -0x10($v0)
  /* 0101F8 8000F5F8 8E220000 */        lw $v0, ($s1)
  /* 0101FC 8000F5FC 241E0012 */     addiu $fp, $zero, 0x12
  /* 010200 8000F600 27B70054 */     addiu $s7, $sp, 0x54
  /* 010204 8000F604 13C2003A */       beq $fp, $v0, .L8000F6F0
  /* 010208 8000F608 93B500BF */       lbu $s5, 0xbf($sp)
  /* 01020C 8000F60C 93B400BB */       lbu $s4, 0xbb($sp)
  /* 010210 8000F610 30430FFF */      andi $v1, $v0, 0xfff
  .L8000F614:
  /* 010214 8000F614 10600008 */      beqz $v1, .L8000F638
  /* 010218 8000F618 00037080 */       sll $t6, $v1, 2
  /* 01021C 8000F61C 02EE9021 */      addu $s2, $s7, $t6
  /* 010220 8000F620 8E44FFFC */        lw $a0, -4($s2)
  /* 010224 8000F624 0C0024FD */       jal func_800093F4
  /* 010228 8000F628 8E250004 */        lw $a1, 4($s1)
  /* 01022C 8000F62C AE420000 */        sw $v0, ($s2)
  /* 010230 8000F630 10000006 */         b .L8000F64C
  /* 010234 8000F634 00408025 */        or $s0, $v0, $zero
  .L8000F638:
  /* 010238 8000F638 8FA400A8 */        lw $a0, 0xa8($sp)
  /* 01023C 8000F63C 0C0024B4 */       jal func_800092D0
  /* 010240 8000F640 8E250004 */        lw $a1, 4($s1)
  /* 010244 8000F644 AFA20054 */        sw $v0, 0x54($sp)
  /* 010248 8000F648 00408025 */        or $s0, $v0, $zero
  .L8000F64C:
  /* 01024C 8000F64C 8E220000 */        lw $v0, ($s1)
  /* 010250 8000F650 02002025 */        or $a0, $s0, $zero
  /* 010254 8000F654 32C500FF */      andi $a1, $s6, 0xff
  /* 010258 8000F658 3042F000 */      andi $v0, $v0, 0xf000
  /* 01025C 8000F65C 10400009 */      beqz $v0, .L8000F684
  /* 010260 8000F660 328600FF */      andi $a2, $s4, 0xff
  /* 010264 8000F664 02002025 */        or $a0, $s0, $zero
  /* 010268 8000F668 32C500FF */      andi $a1, $s6, 0xff
  /* 01026C 8000F66C 328600FF */      andi $a2, $s4, 0xff
  /* 010270 8000F670 32A700FF */      andi $a3, $s5, 0xff
  /* 010274 8000F674 0C003CD9 */       jal func_8000F364
  /* 010278 8000F678 AFA20010 */        sw $v0, 0x10($sp)
  /* 01027C 8000F67C 10000004 */         b .L8000F690
  /* 010280 8000F680 8E380008 */        lw $t8, 8($s1)
  .L8000F684:
  /* 010284 8000F684 0C003CBF */       jal func_8000F2FC
  /* 010288 8000F688 32A700FF */      andi $a3, $s5, 0xff
  /* 01028C 8000F68C 8E380008 */        lw $t8, 8($s1)
  .L8000F690:
  /* 010290 8000F690 AE18001C */        sw $t8, 0x1c($s0)
  /* 010294 8000F694 8E2F000C */        lw $t7, 0xc($s1)
  /* 010298 8000F698 AE0F0020 */        sw $t7, 0x20($s0)
  /* 01029C 8000F69C 8E380010 */        lw $t8, 0x10($s1)
  /* 0102A0 8000F6A0 AE180024 */        sw $t8, 0x24($s0)
  /* 0102A4 8000F6A4 8E280014 */        lw $t0, 0x14($s1)
  /* 0102A8 8000F6A8 AE080030 */        sw $t0, 0x30($s0)
  /* 0102AC 8000F6AC 8E390018 */        lw $t9, 0x18($s1)
  /* 0102B0 8000F6B0 AE190034 */        sw $t9, 0x34($s0)
  /* 0102B4 8000F6B4 8E28001C */        lw $t0, 0x1c($s1)
  /* 0102B8 8000F6B8 AE080038 */        sw $t0, 0x38($s0)
  /* 0102BC 8000F6BC 8E2A0020 */        lw $t2, 0x20($s1)
  /* 0102C0 8000F6C0 AE0A0040 */        sw $t2, 0x40($s0)
  /* 0102C4 8000F6C4 8E290024 */        lw $t1, 0x24($s1)
  /* 0102C8 8000F6C8 AE090044 */        sw $t1, 0x44($s0)
  /* 0102CC 8000F6CC 8E2A0028 */        lw $t2, 0x28($s1)
  /* 0102D0 8000F6D0 12600003 */      beqz $s3, .L8000F6E0
  /* 0102D4 8000F6D4 AE0A0048 */        sw $t2, 0x48($s0)
  /* 0102D8 8000F6D8 AE700000 */        sw $s0, ($s3)
  /* 0102DC 8000F6DC 26730004 */     addiu $s3, $s3, 4
  .L8000F6E0:
  /* 0102E0 8000F6E0 8E22002C */        lw $v0, 0x2c($s1)
  /* 0102E4 8000F6E4 2631002C */     addiu $s1, $s1, 0x2c
  /* 0102E8 8000F6E8 57C2FFCA */      bnel $fp, $v0, .L8000F614
  /* 0102EC 8000F6EC 30430FFF */      andi $v1, $v0, 0xfff
  .L8000F6F0:
  /* 0102F0 8000F6F0 8FBF0044 */        lw $ra, 0x44($sp)
  /* 0102F4 8000F6F4 8FB00020 */        lw $s0, 0x20($sp)
  /* 0102F8 8000F6F8 8FB10024 */        lw $s1, 0x24($sp)
  /* 0102FC 8000F6FC 8FB20028 */        lw $s2, 0x28($sp)
  /* 010300 8000F700 8FB3002C */        lw $s3, 0x2c($sp)
  /* 010304 8000F704 8FB40030 */        lw $s4, 0x30($sp)
  /* 010308 8000F708 8FB50034 */        lw $s5, 0x34($sp)
  /* 01030C 8000F70C 8FB60038 */        lw $s6, 0x38($sp)
  /* 010310 8000F710 8FB7003C */        lw $s7, 0x3c($sp)
  /* 010314 8000F714 8FBE0040 */        lw $fp, 0x40($sp)
  /* 010318 8000F718 03E00008 */        jr $ra
  /* 01031C 8000F71C 27BD00A8 */     addiu $sp, $sp, 0xa8

glabel func_8000F720
  /* 010320 8000F720 27BDFF50 */     addiu $sp, $sp, -0xb0
  /* 010324 8000F724 AFB50034 */        sw $s5, 0x34($sp)
  /* 010328 8000F728 AFB40030 */        sw $s4, 0x30($sp)
  /* 01032C 8000F72C AFB3002C */        sw $s3, 0x2c($sp)
  /* 010330 8000F730 00A09825 */        or $s3, $a1, $zero
  /* 010334 8000F734 00C0A025 */        or $s4, $a2, $zero
  /* 010338 8000F738 00E0A825 */        or $s5, $a3, $zero
  /* 01033C 8000F73C AFBF0044 */        sw $ra, 0x44($sp)
  /* 010340 8000F740 AFBE0040 */        sw $fp, 0x40($sp)
  /* 010344 8000F744 AFB7003C */        sw $s7, 0x3c($sp)
  /* 010348 8000F748 AFB60038 */        sw $s6, 0x38($sp)
  /* 01034C 8000F74C AFB20028 */        sw $s2, 0x28($sp)
  /* 010350 8000F750 AFB10024 */        sw $s1, 0x24($sp)
  /* 010354 8000F754 AFB00020 */        sw $s0, 0x20($sp)
  /* 010358 8000F758 AFA400B0 */        sw $a0, 0xb0($sp)
  /* 01035C 8000F75C AFA0005C */        sw $zero, 0x5c($sp)
  /* 010360 8000F760 AFA00060 */        sw $zero, 0x60($sp)
  /* 010364 8000F764 27A20064 */     addiu $v0, $sp, 0x64
  /* 010368 8000F768 27A300A4 */     addiu $v1, $sp, 0xa4
  .L8000F76C:
  /* 01036C 8000F76C 24420010 */     addiu $v0, $v0, 0x10
  /* 010370 8000F770 AC40FFF4 */        sw $zero, -0xc($v0)
  /* 010374 8000F774 AC40FFF8 */        sw $zero, -8($v0)
  /* 010378 8000F778 AC40FFFC */        sw $zero, -4($v0)
  /* 01037C 8000F77C 1443FFFB */       bne $v0, $v1, .L8000F76C
  /* 010380 8000F780 AC40FFF0 */        sw $zero, -0x10($v0)
  /* 010384 8000F784 8E620000 */        lw $v0, ($s3)
  /* 010388 8000F788 24010012 */     addiu $at, $zero, 0x12
  /* 01038C 8000F78C 93BE00CB */       lbu $fp, 0xcb($sp)
  /* 010390 8000F790 1041004C */       beq $v0, $at, .L8000F8C4
  /* 010394 8000F794 93B700C7 */       lbu $s7, 0xc7($sp)
  /* 010398 8000F798 93B600C3 */       lbu $s6, 0xc3($sp)
  /* 01039C 8000F79C 30430FFF */      andi $v1, $v0, 0xfff
  .L8000F7A0:
  /* 0103A0 8000F7A0 10600009 */      beqz $v1, .L8000F7C8
  /* 0103A4 8000F7A4 00037080 */       sll $t6, $v1, 2
  /* 0103A8 8000F7A8 27AF005C */     addiu $t7, $sp, 0x5c
  /* 0103AC 8000F7AC 01CF8021 */      addu $s0, $t6, $t7
  /* 0103B0 8000F7B0 8E04FFFC */        lw $a0, -4($s0)
  /* 0103B4 8000F7B4 0C0024FD */       jal func_800093F4
  /* 0103B8 8000F7B8 8E650004 */        lw $a1, 4($s3)
  /* 0103BC 8000F7BC AE020000 */        sw $v0, ($s0)
  /* 0103C0 8000F7C0 10000006 */         b .L8000F7DC
  /* 0103C4 8000F7C4 00409025 */        or $s2, $v0, $zero
  .L8000F7C8:
  /* 0103C8 8000F7C8 8FA400B0 */        lw $a0, 0xb0($sp)
  /* 0103CC 8000F7CC 0C0024B4 */       jal func_800092D0
  /* 0103D0 8000F7D0 8E650004 */        lw $a1, 4($s3)
  /* 0103D4 8000F7D4 AFA2005C */        sw $v0, 0x5c($sp)
  /* 0103D8 8000F7D8 00409025 */        or $s2, $v0, $zero
  .L8000F7DC:
  /* 0103DC 8000F7DC 8E620000 */        lw $v0, ($s3)
  /* 0103E0 8000F7E0 02402025 */        or $a0, $s2, $zero
  /* 0103E4 8000F7E4 32C500FF */      andi $a1, $s6, 0xff
  /* 0103E8 8000F7E8 3042F000 */      andi $v0, $v0, 0xf000
  /* 0103EC 8000F7EC 10400009 */      beqz $v0, .L8000F814
  /* 0103F0 8000F7F0 32E600FF */      andi $a2, $s7, 0xff
  /* 0103F4 8000F7F4 02402025 */        or $a0, $s2, $zero
  /* 0103F8 8000F7F8 32C500FF */      andi $a1, $s6, 0xff
  /* 0103FC 8000F7FC 32E600FF */      andi $a2, $s7, 0xff
  /* 010400 8000F800 33C700FF */      andi $a3, $fp, 0xff
  /* 010404 8000F804 0C003CD9 */       jal func_8000F364
  /* 010408 8000F808 AFA20010 */        sw $v0, 0x10($sp)
  /* 01040C 8000F80C 10000004 */         b .L8000F820
  /* 010410 8000F810 8E790008 */        lw $t9, 8($s3)
  .L8000F814:
  /* 010414 8000F814 0C003CBF */       jal func_8000F2FC
  /* 010418 8000F818 33C700FF */      andi $a3, $fp, 0xff
  /* 01041C 8000F81C 8E790008 */        lw $t9, 8($s3)
  .L8000F820:
  /* 010420 8000F820 AE59001C */        sw $t9, 0x1c($s2)
  /* 010424 8000F824 8E78000C */        lw $t8, 0xc($s3)
  /* 010428 8000F828 AE580020 */        sw $t8, 0x20($s2)
  /* 01042C 8000F82C 8E790010 */        lw $t9, 0x10($s3)
  /* 010430 8000F830 AE590024 */        sw $t9, 0x24($s2)
  /* 010434 8000F834 8E690014 */        lw $t1, 0x14($s3)
  /* 010438 8000F838 AE490030 */        sw $t1, 0x30($s2)
  /* 01043C 8000F83C 8E680018 */        lw $t0, 0x18($s3)
  /* 010440 8000F840 AE480034 */        sw $t0, 0x34($s2)
  /* 010444 8000F844 8E69001C */        lw $t1, 0x1c($s3)
  /* 010448 8000F848 AE490038 */        sw $t1, 0x38($s2)
  /* 01044C 8000F84C 8E6B0020 */        lw $t3, 0x20($s3)
  /* 010450 8000F850 AE4B0040 */        sw $t3, 0x40($s2)
  /* 010454 8000F854 8E6A0024 */        lw $t2, 0x24($s3)
  /* 010458 8000F858 AE4A0044 */        sw $t2, 0x44($s2)
  /* 01045C 8000F85C 8E6B0028 */        lw $t3, 0x28($s3)
  /* 010460 8000F860 1280000F */      beqz $s4, .L8000F8A0
  /* 010464 8000F864 AE4B0048 */        sw $t3, 0x48($s2)
  /* 010468 8000F868 8E820000 */        lw $v0, ($s4)
  /* 01046C 8000F86C 5040000C */      beql $v0, $zero, .L8000F8A0
  /* 010470 8000F870 26940004 */     addiu $s4, $s4, 4
  /* 010474 8000F874 8C510000 */        lw $s1, ($v0)
  /* 010478 8000F878 00408025 */        or $s0, $v0, $zero
  /* 01047C 8000F87C 12200007 */      beqz $s1, .L8000F89C
  /* 010480 8000F880 02402025 */        or $a0, $s2, $zero
  .L8000F884:
  /* 010484 8000F884 0C002437 */       jal func_800090DC
  /* 010488 8000F888 02202825 */        or $a1, $s1, $zero
  /* 01048C 8000F88C 8E110004 */        lw $s1, 4($s0)
  /* 010490 8000F890 26100004 */     addiu $s0, $s0, 4
  /* 010494 8000F894 5620FFFB */      bnel $s1, $zero, .L8000F884
  /* 010498 8000F898 02402025 */        or $a0, $s2, $zero
  .L8000F89C:
  /* 01049C 8000F89C 26940004 */     addiu $s4, $s4, 4
  .L8000F8A0:
  /* 0104A0 8000F8A0 52A00004 */      beql $s5, $zero, .L8000F8B4
  /* 0104A4 8000F8A4 8E62002C */        lw $v0, 0x2c($s3)
  /* 0104A8 8000F8A8 AEB20000 */        sw $s2, ($s5)
  /* 0104AC 8000F8AC 26B50004 */     addiu $s5, $s5, 4
  /* 0104B0 8000F8B0 8E62002C */        lw $v0, 0x2c($s3)
  .L8000F8B4:
  /* 0104B4 8000F8B4 24010012 */     addiu $at, $zero, 0x12
  /* 0104B8 8000F8B8 2673002C */     addiu $s3, $s3, 0x2c
  /* 0104BC 8000F8BC 5441FFB8 */      bnel $v0, $at, .L8000F7A0
  /* 0104C0 8000F8C0 30430FFF */      andi $v1, $v0, 0xfff
  .L8000F8C4:
  /* 0104C4 8000F8C4 8FBF0044 */        lw $ra, 0x44($sp)
  /* 0104C8 8000F8C8 8FB00020 */        lw $s0, 0x20($sp)
  /* 0104CC 8000F8CC 8FB10024 */        lw $s1, 0x24($sp)
  /* 0104D0 8000F8D0 8FB20028 */        lw $s2, 0x28($sp)
  /* 0104D4 8000F8D4 8FB3002C */        lw $s3, 0x2c($sp)
  /* 0104D8 8000F8D8 8FB40030 */        lw $s4, 0x30($sp)
  /* 0104DC 8000F8DC 8FB50034 */        lw $s5, 0x34($sp)
  /* 0104E0 8000F8E0 8FB60038 */        lw $s6, 0x38($sp)
  /* 0104E4 8000F8E4 8FB7003C */        lw $s7, 0x3c($sp)
  /* 0104E8 8000F8E8 8FBE0040 */        lw $fp, 0x40($sp)
  /* 0104EC 8000F8EC 03E00008 */        jr $ra
  /* 0104F0 8000F8F0 27BD00B0 */     addiu $sp, $sp, 0xb0

glabel func_8000F8F4
  /* 0104F4 8000F8F4 27BDFFD8 */     addiu $sp, $sp, -0x28
  /* 0104F8 8000F8F8 AFBF0024 */        sw $ra, 0x24($sp)
  /* 0104FC 8000F8FC AFB30020 */        sw $s3, 0x20($sp)
  /* 010500 8000F900 AFB2001C */        sw $s2, 0x1c($sp)
  /* 010504 8000F904 AFB10018 */        sw $s1, 0x18($sp)
  /* 010508 8000F908 AFB00014 */        sw $s0, 0x14($sp)
  /* 01050C 8000F90C 8C920074 */        lw $s2, 0x74($a0)
  /* 010510 8000F910 00A09825 */        or $s3, $a1, $zero
  /* 010514 8000F914 52400016 */      beql $s2, $zero, .L8000F970
  /* 010518 8000F918 8FBF0024 */        lw $ra, 0x24($sp)
  .L8000F91C:
  /* 01051C 8000F91C 1260000F */      beqz $s3, .L8000F95C
  /* 010520 8000F920 00000000 */       nop 
  /* 010524 8000F924 8E620000 */        lw $v0, ($s3)
  /* 010528 8000F928 5040000C */      beql $v0, $zero, .L8000F95C
  /* 01052C 8000F92C 26730004 */     addiu $s3, $s3, 4
  /* 010530 8000F930 8C510000 */        lw $s1, ($v0)
  /* 010534 8000F934 00408025 */        or $s0, $v0, $zero
  /* 010538 8000F938 12200007 */      beqz $s1, .L8000F958
  /* 01053C 8000F93C 02402025 */        or $a0, $s2, $zero
  .L8000F940:
  /* 010540 8000F940 0C002437 */       jal func_800090DC
  /* 010544 8000F944 02202825 */        or $a1, $s1, $zero
  /* 010548 8000F948 8E110004 */        lw $s1, 4($s0)
  /* 01054C 8000F94C 26100004 */     addiu $s0, $s0, 4
  /* 010550 8000F950 5620FFFB */      bnel $s1, $zero, .L8000F940
  /* 010554 8000F954 02402025 */        or $a0, $s2, $zero
  .L8000F958:
  /* 010558 8000F958 26730004 */     addiu $s3, $s3, 4
  .L8000F95C:
  /* 01055C 8000F95C 0C002EA8 */       jal func_8000BAA0
  /* 010560 8000F960 02402025 */        or $a0, $s2, $zero
  /* 010564 8000F964 1440FFED */      bnez $v0, .L8000F91C
  /* 010568 8000F968 00409025 */        or $s2, $v0, $zero
  /* 01056C 8000F96C 8FBF0024 */        lw $ra, 0x24($sp)
  .L8000F970:
  /* 010570 8000F970 8FB00014 */        lw $s0, 0x14($sp)
  /* 010574 8000F974 8FB10018 */        lw $s1, 0x18($sp)
  /* 010578 8000F978 8FB2001C */        lw $s2, 0x1c($sp)
  /* 01057C 8000F97C 8FB30020 */        lw $s3, 0x20($sp)
  /* 010580 8000F980 03E00008 */        jr $ra
  /* 010584 8000F984 27BD0028 */     addiu $sp, $sp, 0x28

glabel func_8000F988
  /* 010588 8000F988 27BDFFD8 */     addiu $sp, $sp, -0x28
  /* 01058C 8000F98C AFBF0024 */        sw $ra, 0x24($sp)
  /* 010590 8000F990 AFB20020 */        sw $s2, 0x20($sp)
  /* 010594 8000F994 AFB1001C */        sw $s1, 0x1c($sp)
  /* 010598 8000F998 AFB00018 */        sw $s0, 0x18($sp)
  /* 01059C 8000F99C 8C910074 */        lw $s1, 0x74($a0)
  /* 0105A0 8000F9A0 00A08025 */        or $s0, $a1, $zero
  /* 0105A4 8000F9A4 52200020 */      beql $s1, $zero, .L8000FA28
  /* 0105A8 8000F9A8 8FBF0024 */        lw $ra, 0x24($sp)
  /* 0105AC 8000F9AC 8CAE0000 */        lw $t6, ($a1)
  /* 0105B0 8000F9B0 24120012 */     addiu $s2, $zero, 0x12
  /* 0105B4 8000F9B4 524E001C */      beql $s2, $t6, .L8000FA28
  /* 0105B8 8000F9B8 8FBF0024 */        lw $ra, 0x24($sp)
  /* 0105BC 8000F9BC 8E180008 */        lw $t8, 8($s0)
  .L8000F9C0:
  /* 0105C0 8000F9C0 2610002C */     addiu $s0, $s0, 0x2c
  /* 0105C4 8000F9C4 02202025 */        or $a0, $s1, $zero
  /* 0105C8 8000F9C8 AE38001C */        sw $t8, 0x1c($s1)
  /* 0105CC 8000F9CC 8E0FFFE0 */        lw $t7, -0x20($s0)
  /* 0105D0 8000F9D0 AE2F0020 */        sw $t7, 0x20($s1)
  /* 0105D4 8000F9D4 8E18FFE4 */        lw $t8, -0x1c($s0)
  /* 0105D8 8000F9D8 AE380024 */        sw $t8, 0x24($s1)
  /* 0105DC 8000F9DC 8E08FFE8 */        lw $t0, -0x18($s0)
  /* 0105E0 8000F9E0 AE280030 */        sw $t0, 0x30($s1)
  /* 0105E4 8000F9E4 8E19FFEC */        lw $t9, -0x14($s0)
  /* 0105E8 8000F9E8 AE390034 */        sw $t9, 0x34($s1)
  /* 0105EC 8000F9EC 8E08FFF0 */        lw $t0, -0x10($s0)
  /* 0105F0 8000F9F0 AE280038 */        sw $t0, 0x38($s1)
  /* 0105F4 8000F9F4 8E0AFFF4 */        lw $t2, -0xc($s0)
  /* 0105F8 8000F9F8 AE2A0040 */        sw $t2, 0x40($s1)
  /* 0105FC 8000F9FC 8E09FFF8 */        lw $t1, -8($s0)
  /* 010600 8000FA00 AE290044 */        sw $t1, 0x44($s1)
  /* 010604 8000FA04 8E0AFFFC */        lw $t2, -4($s0)
  /* 010608 8000FA08 0C002EA8 */       jal func_8000BAA0
  /* 01060C 8000FA0C AE2A0048 */        sw $t2, 0x48($s1)
  /* 010610 8000FA10 10400004 */      beqz $v0, .L8000FA24
  /* 010614 8000FA14 00408825 */        or $s1, $v0, $zero
  /* 010618 8000FA18 8E0B0000 */        lw $t3, ($s0)
  /* 01061C 8000FA1C 564BFFE8 */      bnel $s2, $t3, .L8000F9C0
  /* 010620 8000FA20 8E180008 */        lw $t8, 8($s0)
  .L8000FA24:
  /* 010624 8000FA24 8FBF0024 */        lw $ra, 0x24($sp)
  .L8000FA28:
  /* 010628 8000FA28 8FB00018 */        lw $s0, 0x18($sp)
  /* 01062C 8000FA2C 8FB1001C */        lw $s1, 0x1c($sp)
  /* 010630 8000FA30 8FB20020 */        lw $s2, 0x20($sp)
  /* 010634 8000FA34 03E00008 */        jr $ra
  /* 010638 8000FA38 27BD0028 */     addiu $sp, $sp, 0x28

glabel func_8000FA3C
  /* 01063C 8000FA3C 8C82006C */        lw $v0, 0x6c($a0)
  /* 010640 8000FA40 44866000 */      mtc1 $a2, $f12
  /* 010644 8000FA44 3C018004 */       lui $at, %hi(D_8003E018)
  /* 010648 8000FA48 50400006 */      beql $v0, $zero, .L8000FA64
  /* 01064C 8000FA4C AC850070 */        sw $a1, 0x70($a0)
  /* 010650 8000FA50 A0400005 */        sb $zero, 5($v0)
  .L8000FA54:
  /* 010654 8000FA54 8C420000 */        lw $v0, ($v0)
  /* 010658 8000FA58 5440FFFE */      bnel $v0, $zero, .L8000FA54
  /* 01065C 8000FA5C A0400005 */        sb $zero, 5($v0)
  /* 010660 8000FA60 AC850070 */        sw $a1, 0x70($a0)
  .L8000FA64:
  /* 010664 8000FA64 C424E018 */      lwc1 $f4, %lo(D_8003E018)($at)
  /* 010668 8000FA68 E48C007C */      swc1 $f12, 0x7c($a0)
  /* 01066C 8000FA6C 03E00008 */        jr $ra
  /* 010670 8000FA70 E4840074 */      swc1 $f4, 0x74($a0)

glabel func_8000FA74
  /* 010674 8000FA74 27BDFF58 */     addiu $sp, $sp, -0xa8
  /* 010678 8000FA78 AFBF0054 */        sw $ra, 0x54($sp)
  /* 01067C 8000FA7C AFBE0050 */        sw $fp, 0x50($sp)
  /* 010680 8000FA80 AFB7004C */        sw $s7, 0x4c($sp)
  /* 010684 8000FA84 AFB60048 */        sw $s6, 0x48($sp)
  /* 010688 8000FA88 AFB50044 */        sw $s5, 0x44($sp)
  /* 01068C 8000FA8C AFB40040 */        sw $s4, 0x40($sp)
  /* 010690 8000FA90 AFB3003C */        sw $s3, 0x3c($sp)
  /* 010694 8000FA94 AFB20038 */        sw $s2, 0x38($sp)
  /* 010698 8000FA98 AFB10034 */        sw $s1, 0x34($sp)
  /* 01069C 8000FA9C AFB00030 */        sw $s0, 0x30($sp)
  /* 0106A0 8000FAA0 F7B80028 */      sdc1 $f24, 0x28($sp)
  /* 0106A4 8000FAA4 F7B60020 */      sdc1 $f22, 0x20($sp)
  /* 0106A8 8000FAA8 F7B40018 */      sdc1 $f20, 0x18($sp)
  /* 0106AC 8000FAAC 3C018004 */       lui $at, %hi(D_8003E01C)
  /* 0106B0 8000FAB0 C424E01C */      lwc1 $f4, %lo(D_8003E01C)($at)
  /* 0106B4 8000FAB4 C4820074 */      lwc1 $f2, 0x74($a0)
  /* 0106B8 8000FAB8 00809825 */        or $s3, $a0, $zero
  /* 0106BC 8000FABC 3C018004 */       lui $at, %hi(D_8003E020)
  /* 0106C0 8000FAC0 46022032 */    c.eq.s $f4, $f2
  /* 0106C4 8000FAC4 27B00088 */     addiu $s0, $sp, 0x88
  /* 0106C8 8000FAC8 27A200A8 */     addiu $v0, $sp, 0xa8
  /* 0106CC 8000FACC 24160003 */     addiu $s6, $zero, 3
  /* 0106D0 8000FAD0 4501020D */      bc1t .L80010308
  /* 0106D4 8000FAD4 241E0001 */     addiu $fp, $zero, 1
  /* 0106D8 8000FAD8 C426E020 */      lwc1 $f6, %lo(D_8003E020)($at)
  /* 0106DC 8000FADC 27B50080 */     addiu $s5, $sp, 0x80
  /* 0106E0 8000FAE0 2414000A */     addiu $s4, $zero, 0xa
  /* 0106E4 8000FAE4 46023032 */    c.eq.s $f6, $f2
  /* 0106E8 8000FAE8 00000000 */       nop 
  /* 0106EC 8000FAEC 45020007 */     bc1fl .L8000FB0C
  /* 0106F0 8000FAF0 C6600078 */      lwc1 $f0, 0x78($s3)
  /* 0106F4 8000FAF4 C488007C */      lwc1 $f8, 0x7c($a0)
  /* 0106F8 8000FAF8 4480B000 */      mtc1 $zero, $f22
  /* 0106FC 8000FAFC 46004287 */     neg.s $f10, $f8
  /* 010700 8000FB00 10000010 */         b .L8000FB44
  /* 010704 8000FB04 E48A0074 */      swc1 $f10, 0x74($a0)
  /* 010708 8000FB08 C6600078 */      lwc1 $f0, 0x78($s3)
  .L8000FB0C:
  /* 01070C 8000FB0C C672007C */      lwc1 $f18, 0x7c($s3)
  /* 010710 8000FB10 8E6E0004 */        lw $t6, 4($s3)
  /* 010714 8000FB14 46001401 */     sub.s $f16, $f2, $f0
  /* 010718 8000FB18 4480B000 */      mtc1 $zero, $f22
  /* 01071C 8000FB1C 46009100 */     add.s $f4, $f18, $f0
  /* 010720 8000FB20 E6700074 */      swc1 $f16, 0x74($s3)
  /* 010724 8000FB24 E664007C */      swc1 $f4, 0x7c($s3)
  /* 010728 8000FB28 C666007C */      lwc1 $f6, 0x7c($s3)
  /* 01072C 8000FB2C E5C60078 */      swc1 $f6, 0x78($t6)
  /* 010730 8000FB30 C6680074 */      lwc1 $f8, 0x74($s3)
  /* 010734 8000FB34 4608B03C */    c.lt.s $f22, $f8
  /* 010738 8000FB38 00000000 */       nop 
  /* 01073C 8000FB3C 450301F3 */     bc1tl .L8001030C
  /* 010740 8000FB40 8FBF0054 */        lw $ra, 0x54($sp)
  .L8000FB44:
  /* 010744 8000FB44 AFA00080 */        sw $zero, 0x80($sp)
  /* 010748 8000FB48 AFA00084 */        sw $zero, 0x84($sp)
  .L8000FB4C:
  /* 01074C 8000FB4C 26100010 */     addiu $s0, $s0, 0x10
  /* 010750 8000FB50 AE00FFF4 */        sw $zero, -0xc($s0)
  /* 010754 8000FB54 AE00FFF8 */        sw $zero, -8($s0)
  /* 010758 8000FB58 AE00FFFC */        sw $zero, -4($s0)
  /* 01075C 8000FB5C 1602FFFB */       bne $s0, $v0, .L8000FB4C
  /* 010760 8000FB60 AE00FFF0 */        sw $zero, -0x10($s0)
  /* 010764 8000FB64 8E62006C */        lw $v0, 0x6c($s3)
  /* 010768 8000FB68 5040000D */      beql $v0, $zero, .L8000FBA0
  /* 01076C 8000FB6C 3C013F80 */       lui $at, 0x3f80
  /* 010770 8000FB70 90430004 */       lbu $v1, 4($v0)
  .L8000FB74:
  /* 010774 8000FB74 28610019 */      slti $at, $v1, 0x19
  /* 010778 8000FB78 14200005 */      bnez $at, .L8000FB90
  /* 01077C 8000FB7C 28610023 */      slti $at, $v1, 0x23
  /* 010780 8000FB80 10200003 */      beqz $at, .L8000FB90
  /* 010784 8000FB84 00037880 */       sll $t7, $v1, 2
  /* 010788 8000FB88 02AFC021 */      addu $t8, $s5, $t7
  /* 01078C 8000FB8C AF02FF9C */        sw $v0, -0x64($t8)
  .L8000FB90:
  /* 010790 8000FB90 8C420000 */        lw $v0, ($v0)
  /* 010794 8000FB94 5440FFF7 */      bnel $v0, $zero, .L8000FB74
  /* 010798 8000FB98 90430004 */       lbu $v1, 4($v0)
  /* 01079C 8000FB9C 3C013F80 */       lui $at, (0x3F800000 >> 16) # 1.0
  .L8000FBA0:
  /* 0107A0 8000FBA0 4481C000 */      mtc1 $at, $f24 # 1.0 to cop1
  /* 0107A4 8000FBA4 27B50080 */     addiu $s5, $sp, 0x80
  /* 0107A8 8000FBA8 8E630070 */        lw $v1, 0x70($s3)
  .L8000FBAC:
  /* 0107AC 8000FBAC 54600017 */      bnel $v1, $zero, .L8000FC0C
  /* 0107B0 8000FBB0 8C620000 */        lw $v0, ($v1)
  /* 0107B4 8000FBB4 8E62006C */        lw $v0, 0x6c($s3)
  /* 0107B8 8000FBB8 C6620074 */      lwc1 $f2, 0x74($s3)
  /* 0107BC 8000FBBC 3C018004 */       lui $at, %hi(D_8003E024)
  /* 0107C0 8000FBC0 5040000E */      beql $v0, $zero, .L8000FBFC
  /* 0107C4 8000FBC4 E662007C */      swc1 $f2, 0x7c($s3)
  /* 0107C8 8000FBC8 90590005 */       lbu $t9, 5($v0)
  .L8000FBCC:
  /* 0107CC 8000FBCC 53200008 */      beql $t9, $zero, .L8000FBF0
  /* 0107D0 8000FBD0 8C420000 */        lw $v0, ($v0)
  /* 0107D4 8000FBD4 C6700078 */      lwc1 $f16, 0x78($s3)
  /* 0107D8 8000FBD8 C44A000C */      lwc1 $f10, 0xc($v0)
  /* 0107DC 8000FBDC 46028480 */     add.s $f18, $f16, $f2
  /* 0107E0 8000FBE0 46125100 */     add.s $f4, $f10, $f18
  /* 0107E4 8000FBE4 E444000C */      swc1 $f4, 0xc($v0)
  /* 0107E8 8000FBE8 C6620074 */      lwc1 $f2, 0x74($s3)
  /* 0107EC 8000FBEC 8C420000 */        lw $v0, ($v0)
  .L8000FBF0:
  /* 0107F0 8000FBF0 5440FFF6 */      bnel $v0, $zero, .L8000FBCC
  /* 0107F4 8000FBF4 90590005 */       lbu $t9, 5($v0)
  /* 0107F8 8000FBF8 E662007C */      swc1 $f2, 0x7c($s3)
  .L8000FBFC:
  /* 0107FC 8000FBFC C426E024 */      lwc1 $f6, %lo(D_8003E024)($at)
  /* 010800 8000FC00 100001C1 */         b .L80010308
  /* 010804 8000FC04 E6660074 */      swc1 $f6, 0x74($s3)
  /* 010808 8000FC08 8C620000 */        lw $v0, ($v1)
  .L8000FC0C:
  /* 01080C 8000FC0C 00022642 */       srl $a0, $v0, 0x19
  /* 010810 8000FC10 2C810018 */     sltiu $at, $a0, 0x18
  /* 010814 8000FC14 102001B7 */      beqz $at, jtgt_800102F4
  /* 010818 8000FC18 0080B825 */        or $s7, $a0, $zero
  /* 01081C 8000FC1C 00044080 */       sll $t0, $a0, 2
  /* 010820 8000FC20 3C018004 */       lui $at, %hi(jtbl_8003E028)
  /* 010824 8000FC24 00280821 */      addu $at, $at, $t0
  /* 010828 8000FC28 8C28E028 */        lw $t0, %lo(jtbl_8003E028)($at)
  /* 01082C 8000FC2C 01000008 */        jr $t0
  /* 010830 8000FC30 00000000 */       nop 
  glabel jtgt_8000FC34
  /* 010834 8000FC34 30497FFF */      andi $t1, $v0, 0x7fff
  /* 010838 8000FC38 44894000 */      mtc1 $t1, $f8
  /* 01083C 8000FC3C 000291C0 */       sll $s2, $v0, 7
  /* 010840 8000FC40 05210005 */      bgez $t1, .L8000FC58
  /* 010844 8000FC44 46804520 */   cvt.s.w $f20, $f8
  /* 010848 8000FC48 3C014F80 */       lui $at, (0x4F800000 >> 16) # 4294967300.0
  /* 01084C 8000FC4C 44818000 */      mtc1 $at, $f16 # 4294967300.0 to cop1
  /* 010850 8000FC50 00000000 */       nop 
  /* 010854 8000FC54 4610A500 */     add.s $f20, $f20, $f16
  .L8000FC58:
  /* 010858 8000FC58 246A0004 */     addiu $t2, $v1, 4
  /* 01085C 8000FC5C AE6A0070 */        sw $t2, 0x70($s3)
  /* 010860 8000FC60 00129582 */       srl $s2, $s2, 0x16
  /* 010864 8000FC64 00008825 */        or $s1, $zero, $zero
  .L8000FC68:
  /* 010868 8000FC68 1240002B */      beqz $s2, .L8000FD18
  /* 01086C 8000FC6C 324B0001 */      andi $t3, $s2, 1
  /* 010870 8000FC70 11600026 */      beqz $t3, .L8000FD0C
  /* 010874 8000FC74 00116080 */       sll $t4, $s1, 2
  /* 010878 8000FC78 02AC8021 */      addu $s0, $s5, $t4
  /* 01087C 8000FC7C 8E030000 */        lw $v1, ($s0)
  /* 010880 8000FC80 02602025 */        or $a0, $s3, $zero
  /* 010884 8000FC84 26250019 */     addiu $a1, $s1, 0x19
  /* 010888 8000FC88 54600006 */      bnel $v1, $zero, .L8000FCA4
  /* 01088C 8000FC8C C46A0014 */      lwc1 $f10, 0x14($v1)
  /* 010890 8000FC90 0C002404 */       jal func_80009010
  /* 010894 8000FC94 30A500FF */      andi $a1, $a1, 0xff
  /* 010898 8000FC98 AE020000 */        sw $v0, ($s0)
  /* 01089C 8000FC9C 00401825 */        or $v1, $v0, $zero
  /* 0108A0 8000FCA0 C46A0014 */      lwc1 $f10, 0x14($v1)
  .L8000FCA4:
  /* 0108A4 8000FCA4 4616A032 */    c.eq.s $f20, $f22
  /* 0108A8 8000FCA8 E46A0010 */      swc1 $f10, 0x10($v1)
  /* 0108AC 8000FCAC 8E6D0070 */        lw $t5, 0x70($s3)
  /* 0108B0 8000FCB0 8E0E0000 */        lw $t6, ($s0)
  /* 0108B4 8000FCB4 C5B20000 */      lwc1 $f18, ($t5)
  /* 0108B8 8000FCB8 E5D20014 */      swc1 $f18, 0x14($t6)
  /* 0108BC 8000FCBC 8E6F0070 */        lw $t7, 0x70($s3)
  /* 0108C0 8000FCC0 25F80004 */     addiu $t8, $t7, 4
  /* 0108C4 8000FCC4 AE780070 */        sw $t8, 0x70($s3)
  /* 0108C8 8000FCC8 8E030000 */        lw $v1, ($s0)
  /* 0108CC 8000FCCC C464001C */      lwc1 $f4, 0x1c($v1)
  /* 0108D0 8000FCD0 E4640018 */      swc1 $f4, 0x18($v1)
  /* 0108D4 8000FCD4 8E190000 */        lw $t9, ($s0)
  /* 0108D8 8000FCD8 E736001C */      swc1 $f22, 0x1c($t9)
  /* 0108DC 8000FCDC 8E080000 */        lw $t0, ($s0)
  /* 0108E0 8000FCE0 45010004 */      bc1t .L8000FCF4
  /* 0108E4 8000FCE4 A1160005 */        sb $s6, 5($t0)
  /* 0108E8 8000FCE8 4614C183 */     div.s $f6, $f24, $f20
  /* 0108EC 8000FCEC 8E090000 */        lw $t1, ($s0)
  /* 0108F0 8000FCF0 E5260008 */      swc1 $f6, 8($t1)
  .L8000FCF4:
  /* 0108F4 8000FCF4 C6680074 */      lwc1 $f8, 0x74($s3)
  /* 0108F8 8000FCF8 C66A0078 */      lwc1 $f10, 0x78($s3)
  /* 0108FC 8000FCFC 8E0A0000 */        lw $t2, ($s0)
  /* 010900 8000FD00 46004407 */     neg.s $f16, $f8
  /* 010904 8000FD04 460A8481 */     sub.s $f18, $f16, $f10
  /* 010908 8000FD08 E552000C */      swc1 $f18, 0xc($t2)
  .L8000FD0C:
  /* 01090C 8000FD0C 26310001 */     addiu $s1, $s1, 1
  /* 010910 8000FD10 1634FFD5 */       bne $s1, $s4, .L8000FC68
  /* 010914 8000FD14 00129042 */       srl $s2, $s2, 1
  .L8000FD18:
  /* 010918 8000FD18 24010008 */     addiu $at, $zero, 8
  /* 01091C 8000FD1C 16E10004 */       bne $s7, $at, .L8000FD30
  /* 010920 8000FD20 00000000 */       nop 
  /* 010924 8000FD24 C6640074 */      lwc1 $f4, 0x74($s3)
  /* 010928 8000FD28 46142180 */     add.s $f6, $f4, $f20
  /* 01092C 8000FD2C E6660074 */      swc1 $f6, 0x74($s3)
  .L8000FD30:
  /* 010930 8000FD30 10000171 */         b .L800102F8
  /* 010934 8000FD34 C6620074 */      lwc1 $f2, 0x74($s3)
  glabel jtgt_8000FD38
  /* 010938 8000FD38 304B7FFF */      andi $t3, $v0, 0x7fff
  /* 01093C 8000FD3C 448B4000 */      mtc1 $t3, $f8
  /* 010940 8000FD40 000291C0 */       sll $s2, $v0, 7
  /* 010944 8000FD44 05610005 */      bgez $t3, .L8000FD5C
  /* 010948 8000FD48 46804520 */   cvt.s.w $f20, $f8
  /* 01094C 8000FD4C 3C014F80 */       lui $at, (0x4F800000 >> 16) # 4294967300.0
  /* 010950 8000FD50 44818000 */      mtc1 $at, $f16 # 4294967300.0 to cop1
  /* 010954 8000FD54 00000000 */       nop 
  /* 010958 8000FD58 4610A500 */     add.s $f20, $f20, $f16
  .L8000FD5C:
  /* 01095C 8000FD5C 246C0004 */     addiu $t4, $v1, 4
  /* 010960 8000FD60 AE6C0070 */        sw $t4, 0x70($s3)
  /* 010964 8000FD64 00129582 */       srl $s2, $s2, 0x16
  /* 010968 8000FD68 00008825 */        or $s1, $zero, $zero
  .L8000FD6C:
  /* 01096C 8000FD6C 1240002C */      beqz $s2, .L8000FE20
  /* 010970 8000FD70 324D0001 */      andi $t5, $s2, 1
  /* 010974 8000FD74 11A00027 */      beqz $t5, .L8000FE14
  /* 010978 8000FD78 00117080 */       sll $t6, $s1, 2
  /* 01097C 8000FD7C 02AE8021 */      addu $s0, $s5, $t6
  /* 010980 8000FD80 8E030000 */        lw $v1, ($s0)
  /* 010984 8000FD84 02602025 */        or $a0, $s3, $zero
  /* 010988 8000FD88 26250019 */     addiu $a1, $s1, 0x19
  /* 01098C 8000FD8C 54600006 */      bnel $v1, $zero, .L8000FDA8
  /* 010990 8000FD90 C46A0014 */      lwc1 $f10, 0x14($v1)
  /* 010994 8000FD94 0C002404 */       jal func_80009010
  /* 010998 8000FD98 30A500FF */      andi $a1, $a1, 0xff
  /* 01099C 8000FD9C AE020000 */        sw $v0, ($s0)
  /* 0109A0 8000FDA0 00401825 */        or $v1, $v0, $zero
  /* 0109A4 8000FDA4 C46A0014 */      lwc1 $f10, 0x14($v1)
  .L8000FDA8:
  /* 0109A8 8000FDA8 4616A032 */    c.eq.s $f20, $f22
  /* 0109AC 8000FDAC 24090002 */     addiu $t1, $zero, 2
  /* 0109B0 8000FDB0 E46A0010 */      swc1 $f10, 0x10($v1)
  /* 0109B4 8000FDB4 8E6F0070 */        lw $t7, 0x70($s3)
  /* 0109B8 8000FDB8 8E180000 */        lw $t8, ($s0)
  /* 0109BC 8000FDBC C5F20000 */      lwc1 $f18, ($t7)
  /* 0109C0 8000FDC0 E7120014 */      swc1 $f18, 0x14($t8)
  /* 0109C4 8000FDC4 8E790070 */        lw $t9, 0x70($s3)
  /* 0109C8 8000FDC8 27280004 */     addiu $t0, $t9, 4
  /* 0109CC 8000FDCC AE680070 */        sw $t0, 0x70($s3)
  /* 0109D0 8000FDD0 8E0A0000 */        lw $t2, ($s0)
  /* 0109D4 8000FDD4 45010007 */      bc1t .L8000FDF4
  /* 0109D8 8000FDD8 A1490005 */        sb $t1, 5($t2)
  /* 0109DC 8000FDDC 8E030000 */        lw $v1, ($s0)
  /* 0109E0 8000FDE0 C4640014 */      lwc1 $f4, 0x14($v1)
  /* 0109E4 8000FDE4 C4660010 */      lwc1 $f6, 0x10($v1)
  /* 0109E8 8000FDE8 46062201 */     sub.s $f8, $f4, $f6
  /* 0109EC 8000FDEC 46144403 */     div.s $f16, $f8, $f20
  /* 0109F0 8000FDF0 E4700018 */      swc1 $f16, 0x18($v1)
  .L8000FDF4:
  /* 0109F4 8000FDF4 C66A0074 */      lwc1 $f10, 0x74($s3)
  /* 0109F8 8000FDF8 C6640078 */      lwc1 $f4, 0x78($s3)
  /* 0109FC 8000FDFC 8E0B0000 */        lw $t3, ($s0)
  /* 010A00 8000FE00 46005487 */     neg.s $f18, $f10
  /* 010A04 8000FE04 46049181 */     sub.s $f6, $f18, $f4
  /* 010A08 8000FE08 E566000C */      swc1 $f6, 0xc($t3)
  /* 010A0C 8000FE0C 8E0C0000 */        lw $t4, ($s0)
  /* 010A10 8000FE10 E596001C */      swc1 $f22, 0x1c($t4)
  .L8000FE14:
  /* 010A14 8000FE14 26310001 */     addiu $s1, $s1, 1
  /* 010A18 8000FE18 1634FFD4 */       bne $s1, $s4, .L8000FD6C
  /* 010A1C 8000FE1C 00129042 */       srl $s2, $s2, 1
  .L8000FE20:
  /* 010A20 8000FE20 24010003 */     addiu $at, $zero, 3
  /* 010A24 8000FE24 16E10004 */       bne $s7, $at, .L8000FE38
  /* 010A28 8000FE28 00000000 */       nop 
  /* 010A2C 8000FE2C C6680074 */      lwc1 $f8, 0x74($s3)
  /* 010A30 8000FE30 46144400 */     add.s $f16, $f8, $f20
  /* 010A34 8000FE34 E6700074 */      swc1 $f16, 0x74($s3)
  .L8000FE38:
  /* 010A38 8000FE38 1000012F */         b .L800102F8
  /* 010A3C 8000FE3C C6620074 */      lwc1 $f2, 0x74($s3)
  glabel jtgt_8000FE40
  /* 010A40 8000FE40 304D7FFF */      andi $t5, $v0, 0x7fff
  /* 010A44 8000FE44 448D5000 */      mtc1 $t5, $f10
  /* 010A48 8000FE48 000291C0 */       sll $s2, $v0, 7
  /* 010A4C 8000FE4C 05A10005 */      bgez $t5, .L8000FE64
  /* 010A50 8000FE50 46805520 */   cvt.s.w $f20, $f10
  /* 010A54 8000FE54 3C014F80 */       lui $at, (0x4F800000 >> 16) # 4294967300.0
  /* 010A58 8000FE58 44819000 */      mtc1 $at, $f18 # 4294967300.0 to cop1
  /* 010A5C 8000FE5C 00000000 */       nop 
  /* 010A60 8000FE60 4612A500 */     add.s $f20, $f20, $f18
  .L8000FE64:
  /* 010A64 8000FE64 246E0004 */     addiu $t6, $v1, 4
  /* 010A68 8000FE68 AE6E0070 */        sw $t6, 0x70($s3)
  /* 010A6C 8000FE6C 00129582 */       srl $s2, $s2, 0x16
  /* 010A70 8000FE70 00008825 */        or $s1, $zero, $zero
  .L8000FE74:
  /* 010A74 8000FE74 12400030 */      beqz $s2, .L8000FF38
  /* 010A78 8000FE78 324F0001 */      andi $t7, $s2, 1
  /* 010A7C 8000FE7C 11E0002B */      beqz $t7, .L8000FF2C
  /* 010A80 8000FE80 0011C080 */       sll $t8, $s1, 2
  /* 010A84 8000FE84 02B88021 */      addu $s0, $s5, $t8
  /* 010A88 8000FE88 8E030000 */        lw $v1, ($s0)
  /* 010A8C 8000FE8C 02602025 */        or $a0, $s3, $zero
  /* 010A90 8000FE90 26250019 */     addiu $a1, $s1, 0x19
  /* 010A94 8000FE94 54600006 */      bnel $v1, $zero, .L8000FEB0
  /* 010A98 8000FE98 C4640014 */      lwc1 $f4, 0x14($v1)
  /* 010A9C 8000FE9C 0C002404 */       jal func_80009010
  /* 010AA0 8000FEA0 30A500FF */      andi $a1, $a1, 0xff
  /* 010AA4 8000FEA4 AE020000 */        sw $v0, ($s0)
  /* 010AA8 8000FEA8 00401825 */        or $v1, $v0, $zero
  /* 010AAC 8000FEAC C4640014 */      lwc1 $f4, 0x14($v1)
  .L8000FEB0:
  /* 010AB0 8000FEB0 4616A032 */    c.eq.s $f20, $f22
  /* 010AB4 8000FEB4 E4640010 */      swc1 $f4, 0x10($v1)
  /* 010AB8 8000FEB8 8E790070 */        lw $t9, 0x70($s3)
  /* 010ABC 8000FEBC 8E080000 */        lw $t0, ($s0)
  /* 010AC0 8000FEC0 C7260000 */      lwc1 $f6, ($t9)
  /* 010AC4 8000FEC4 E5060014 */      swc1 $f6, 0x14($t0)
  /* 010AC8 8000FEC8 8E690070 */        lw $t1, 0x70($s3)
  /* 010ACC 8000FECC 252A0004 */     addiu $t2, $t1, 4
  /* 010AD0 8000FED0 AE6A0070 */        sw $t2, 0x70($s3)
  /* 010AD4 8000FED4 8E030000 */        lw $v1, ($s0)
  /* 010AD8 8000FED8 C468001C */      lwc1 $f8, 0x1c($v1)
  /* 010ADC 8000FEDC E4680018 */      swc1 $f8, 0x18($v1)
  /* 010AE0 8000FEE0 8E6B0070 */        lw $t3, 0x70($s3)
  /* 010AE4 8000FEE4 8E0C0000 */        lw $t4, ($s0)
  /* 010AE8 8000FEE8 C5700000 */      lwc1 $f16, ($t3)
  /* 010AEC 8000FEEC E590001C */      swc1 $f16, 0x1c($t4)
  /* 010AF0 8000FEF0 8E6D0070 */        lw $t5, 0x70($s3)
  /* 010AF4 8000FEF4 25AE0004 */     addiu $t6, $t5, 4
  /* 010AF8 8000FEF8 AE6E0070 */        sw $t6, 0x70($s3)
  /* 010AFC 8000FEFC 8E0F0000 */        lw $t7, ($s0)
  /* 010B00 8000FF00 45010004 */      bc1t .L8000FF14
  /* 010B04 8000FF04 A1F60005 */        sb $s6, 5($t7)
  /* 010B08 8000FF08 4614C283 */     div.s $f10, $f24, $f20
  /* 010B0C 8000FF0C 8E180000 */        lw $t8, ($s0)
  /* 010B10 8000FF10 E70A0008 */      swc1 $f10, 8($t8)
  .L8000FF14:
  /* 010B14 8000FF14 C6720074 */      lwc1 $f18, 0x74($s3)
  /* 010B18 8000FF18 C6660078 */      lwc1 $f6, 0x78($s3)
  /* 010B1C 8000FF1C 8E190000 */        lw $t9, ($s0)
  /* 010B20 8000FF20 46009107 */     neg.s $f4, $f18
  /* 010B24 8000FF24 46062201 */     sub.s $f8, $f4, $f6
  /* 010B28 8000FF28 E728000C */      swc1 $f8, 0xc($t9)
  .L8000FF2C:
  /* 010B2C 8000FF2C 26310001 */     addiu $s1, $s1, 1
  /* 010B30 8000FF30 1634FFD0 */       bne $s1, $s4, .L8000FE74
  /* 010B34 8000FF34 00129042 */       srl $s2, $s2, 1
  .L8000FF38:
  /* 010B38 8000FF38 24010005 */     addiu $at, $zero, 5
  /* 010B3C 8000FF3C 16E10004 */       bne $s7, $at, .L8000FF50
  /* 010B40 8000FF40 00000000 */       nop 
  /* 010B44 8000FF44 C6700074 */      lwc1 $f16, 0x74($s3)
  /* 010B48 8000FF48 46148280 */     add.s $f10, $f16, $f20
  /* 010B4C 8000FF4C E66A0074 */      swc1 $f10, 0x74($s3)
  .L8000FF50:
  /* 010B50 8000FF50 100000E9 */         b .L800102F8
  /* 010B54 8000FF54 C6620074 */      lwc1 $f2, 0x74($s3)
  glabel jtgt_8000FF58
  /* 010B58 8000FF58 000291C0 */       sll $s2, $v0, 7
  /* 010B5C 8000FF5C 24680004 */     addiu $t0, $v1, 4
  /* 010B60 8000FF60 AE680070 */        sw $t0, 0x70($s3)
  /* 010B64 8000FF64 00129582 */       srl $s2, $s2, 0x16
  /* 010B68 8000FF68 00008825 */        or $s1, $zero, $zero
  .L8000FF6C:
  /* 010B6C 8000FF6C 12400016 */      beqz $s2, .L8000FFC8
  /* 010B70 8000FF70 32490001 */      andi $t1, $s2, 1
  /* 010B74 8000FF74 11200011 */      beqz $t1, .L8000FFBC
  /* 010B78 8000FF78 00115080 */       sll $t2, $s1, 2
  /* 010B7C 8000FF7C 02AA8021 */      addu $s0, $s5, $t2
  /* 010B80 8000FF80 8E030000 */        lw $v1, ($s0)
  /* 010B84 8000FF84 02602025 */        or $a0, $s3, $zero
  /* 010B88 8000FF88 26250019 */     addiu $a1, $s1, 0x19
  /* 010B8C 8000FF8C 54600006 */      bnel $v1, $zero, .L8000FFA8
  /* 010B90 8000FF90 8E6B0070 */        lw $t3, 0x70($s3)
  /* 010B94 8000FF94 0C002404 */       jal func_80009010
  /* 010B98 8000FF98 30A500FF */      andi $a1, $a1, 0xff
  /* 010B9C 8000FF9C AE020000 */        sw $v0, ($s0)
  /* 010BA0 8000FFA0 00401825 */        or $v1, $v0, $zero
  /* 010BA4 8000FFA4 8E6B0070 */        lw $t3, 0x70($s3)
  .L8000FFA8:
  /* 010BA8 8000FFA8 C5720000 */      lwc1 $f18, ($t3)
  /* 010BAC 8000FFAC E472001C */      swc1 $f18, 0x1c($v1)
  /* 010BB0 8000FFB0 8E6C0070 */        lw $t4, 0x70($s3)
  /* 010BB4 8000FFB4 258D0004 */     addiu $t5, $t4, 4
  /* 010BB8 8000FFB8 AE6D0070 */        sw $t5, 0x70($s3)
  .L8000FFBC:
  /* 010BBC 8000FFBC 26310001 */     addiu $s1, $s1, 1
  /* 010BC0 8000FFC0 1634FFEA */       bne $s1, $s4, .L8000FF6C
  /* 010BC4 8000FFC4 00129042 */       srl $s2, $s2, 1
  .L8000FFC8:
  /* 010BC8 8000FFC8 100000CB */         b .L800102F8
  /* 010BCC 8000FFCC C6620074 */      lwc1 $f2, 0x74($s3)
  glabel jtgt_8000FFD0
  /* 010BD0 8000FFD0 304E7FFF */      andi $t6, $v0, 0x7fff
  /* 010BD4 8000FFD4 448E3000 */      mtc1 $t6, $f6
  /* 010BD8 8000FFD8 C6640074 */      lwc1 $f4, 0x74($s3)
  /* 010BDC 8000FFDC 05C10005 */      bgez $t6, .L8000FFF4
  /* 010BE0 8000FFE0 46803220 */   cvt.s.w $f8, $f6
  /* 010BE4 8000FFE4 3C014F80 */       lui $at, (0x4F800000 >> 16) # 4294967300.0
  /* 010BE8 8000FFE8 44818000 */      mtc1 $at, $f16 # 4294967300.0 to cop1
  /* 010BEC 8000FFEC 00000000 */       nop 
  /* 010BF0 8000FFF0 46104200 */     add.s $f8, $f8, $f16
  .L8000FFF4:
  /* 010BF4 8000FFF4 46082280 */     add.s $f10, $f4, $f8
  /* 010BF8 8000FFF8 246F0004 */     addiu $t7, $v1, 4
  /* 010BFC 8000FFFC AE6F0070 */        sw $t7, 0x70($s3)
  /* 010C00 80010000 E66A0074 */      swc1 $f10, 0x74($s3)
  /* 010C04 80010004 100000BC */         b .L800102F8
  /* 010C08 80010008 C6620074 */      lwc1 $f2, 0x74($s3)
  glabel jtgt_8001000C
  /* 010C0C 8001000C 30587FFF */      andi $t8, $v0, 0x7fff
  /* 010C10 80010010 44989000 */      mtc1 $t8, $f18
  /* 010C14 80010014 000291C0 */       sll $s2, $v0, 7
  /* 010C18 80010018 07010005 */      bgez $t8, .L80010030
  /* 010C1C 8001001C 46809520 */   cvt.s.w $f20, $f18
  /* 010C20 80010020 3C014F80 */       lui $at, (0x4F800000 >> 16) # 4294967300.0
  /* 010C24 80010024 44813000 */      mtc1 $at, $f6 # 4294967300.0 to cop1
  /* 010C28 80010028 00000000 */       nop 
  /* 010C2C 8001002C 4606A500 */     add.s $f20, $f20, $f6
  .L80010030:
  /* 010C30 80010030 24790004 */     addiu $t9, $v1, 4
  /* 010C34 80010034 AE790070 */        sw $t9, 0x70($s3)
  /* 010C38 80010038 00129582 */       srl $s2, $s2, 0x16
  /* 010C3C 8001003C 00008825 */        or $s1, $zero, $zero
  .L80010040:
  /* 010C40 80010040 12400025 */      beqz $s2, .L800100D8
  /* 010C44 80010044 32480001 */      andi $t0, $s2, 1
  /* 010C48 80010048 11000020 */      beqz $t0, .L800100CC
  /* 010C4C 8001004C 00114880 */       sll $t1, $s1, 2
  /* 010C50 80010050 02A98021 */      addu $s0, $s5, $t1
  /* 010C54 80010054 8E030000 */        lw $v1, ($s0)
  /* 010C58 80010058 02602025 */        or $a0, $s3, $zero
  /* 010C5C 8001005C 26250019 */     addiu $a1, $s1, 0x19
  /* 010C60 80010060 54600006 */      bnel $v1, $zero, .L8001007C
  /* 010C64 80010064 C4700014 */      lwc1 $f16, 0x14($v1)
  /* 010C68 80010068 0C002404 */       jal func_80009010
  /* 010C6C 8001006C 30A500FF */      andi $a1, $a1, 0xff
  /* 010C70 80010070 AE020000 */        sw $v0, ($s0)
  /* 010C74 80010074 00401825 */        or $v1, $v0, $zero
  /* 010C78 80010078 C4700014 */      lwc1 $f16, 0x14($v1)
  .L8001007C:
  /* 010C7C 8001007C E4700010 */      swc1 $f16, 0x10($v1)
  /* 010C80 80010080 8E6A0070 */        lw $t2, 0x70($s3)
  /* 010C84 80010084 8E0B0000 */        lw $t3, ($s0)
  /* 010C88 80010088 C5440000 */      lwc1 $f4, ($t2)
  /* 010C8C 8001008C E5640014 */      swc1 $f4, 0x14($t3)
  /* 010C90 80010090 8E6C0070 */        lw $t4, 0x70($s3)
  /* 010C94 80010094 258D0004 */     addiu $t5, $t4, 4
  /* 010C98 80010098 AE6D0070 */        sw $t5, 0x70($s3)
  /* 010C9C 8001009C 8E0E0000 */        lw $t6, ($s0)
  /* 010CA0 800100A0 A1DE0005 */        sb $fp, 5($t6)
  /* 010CA4 800100A4 8E0F0000 */        lw $t7, ($s0)
  /* 010CA8 800100A8 E5F40008 */      swc1 $f20, 8($t7)
  /* 010CAC 800100AC C6680074 */      lwc1 $f8, 0x74($s3)
  /* 010CB0 800100B0 C6720078 */      lwc1 $f18, 0x78($s3)
  /* 010CB4 800100B4 8E180000 */        lw $t8, ($s0)
  /* 010CB8 800100B8 46004287 */     neg.s $f10, $f8
  /* 010CBC 800100BC 46125181 */     sub.s $f6, $f10, $f18
  /* 010CC0 800100C0 E706000C */      swc1 $f6, 0xc($t8)
  /* 010CC4 800100C4 8E190000 */        lw $t9, ($s0)
  /* 010CC8 800100C8 E736001C */      swc1 $f22, 0x1c($t9)
  .L800100CC:
  /* 010CCC 800100CC 26310001 */     addiu $s1, $s1, 1
  /* 010CD0 800100D0 1634FFDB */       bne $s1, $s4, .L80010040
  /* 010CD4 800100D4 00129042 */       srl $s2, $s2, 1
  .L800100D8:
  /* 010CD8 800100D8 2401000A */     addiu $at, $zero, 0xa
  /* 010CDC 800100DC 16E10004 */       bne $s7, $at, .L800100F0
  /* 010CE0 800100E0 00000000 */       nop 
  /* 010CE4 800100E4 C6700074 */      lwc1 $f16, 0x74($s3)
  /* 010CE8 800100E8 46148100 */     add.s $f4, $f16, $f20
  /* 010CEC 800100EC E6640074 */      swc1 $f4, 0x74($s3)
  .L800100F0:
  /* 010CF0 800100F0 10000081 */         b .L800102F8
  /* 010CF4 800100F4 C6620074 */      lwc1 $f2, 0x74($s3)
  glabel jtgt_800100F8
  /* 010CF8 800100F8 C6600074 */      lwc1 $f0, 0x74($s3)
  /* 010CFC 800100FC 24680004 */     addiu $t0, $v1, 4
  /* 010D00 80010100 AE680070 */        sw $t0, 0x70($s3)
  /* 010D04 80010104 8D0A0000 */        lw $t2, ($t0)
  /* 010D08 80010108 8E6B0004 */        lw $t3, 4($s3)
  /* 010D0C 8001010C 46000007 */     neg.s $f0, $f0
  /* 010D10 80010110 AE6A0070 */        sw $t2, 0x70($s3)
  /* 010D14 80010114 E660007C */      swc1 $f0, 0x7c($s3)
  /* 010D18 80010118 E5600078 */      swc1 $f0, 0x78($t3)
  /* 010D1C 8001011C 10000076 */         b .L800102F8
  /* 010D20 80010120 C6620074 */      lwc1 $f2, 0x74($s3)
  glabel jtgt_80010124
  /* 010D24 80010124 246C0004 */     addiu $t4, $v1, 4
  /* 010D28 80010128 AE6C0070 */        sw $t4, 0x70($s3)
  /* 010D2C 8001012C 8D8E0000 */        lw $t6, ($t4)
  /* 010D30 80010130 C6620074 */      lwc1 $f2, 0x74($s3)
  /* 010D34 80010134 10000070 */         b .L800102F8
  /* 010D38 80010138 AE6E0070 */        sw $t6, 0x70($s3)
  glabel jtgt_8001013C
  /* 010D3C 8001013C 304F7FFF */      andi $t7, $v0, 0x7fff
  /* 010D40 80010140 448F4000 */      mtc1 $t7, $f8
  /* 010D44 80010144 000291C0 */       sll $s2, $v0, 7
  /* 010D48 80010148 05E10005 */      bgez $t7, .L80010160
  /* 010D4C 8001014C 46804520 */   cvt.s.w $f20, $f8
  /* 010D50 80010150 3C014F80 */       lui $at, (0x4F800000 >> 16) # 4294967300.0
  /* 010D54 80010154 44815000 */      mtc1 $at, $f10 # 4294967300.0 to cop1
  /* 010D58 80010158 00000000 */       nop 
  /* 010D5C 8001015C 460AA500 */     add.s $f20, $f20, $f10
  .L80010160:
  /* 010D60 80010160 24780004 */     addiu $t8, $v1, 4
  /* 010D64 80010164 AE780070 */        sw $t8, 0x70($s3)
  /* 010D68 80010168 00129582 */       srl $s2, $s2, 0x16
  /* 010D6C 8001016C 00008825 */        or $s1, $zero, $zero
  .L80010170:
  /* 010D70 80010170 12400013 */      beqz $s2, .L800101C0
  /* 010D74 80010174 32590001 */      andi $t9, $s2, 1
  /* 010D78 80010178 1320000E */      beqz $t9, .L800101B4
  /* 010D7C 8001017C 00114080 */       sll $t0, $s1, 2
  /* 010D80 80010180 02A88021 */      addu $s0, $s5, $t0
  /* 010D84 80010184 8E030000 */        lw $v1, ($s0)
  /* 010D88 80010188 02602025 */        or $a0, $s3, $zero
  /* 010D8C 8001018C 26250019 */     addiu $a1, $s1, 0x19
  /* 010D90 80010190 54600006 */      bnel $v1, $zero, .L800101AC
  /* 010D94 80010194 C472000C */      lwc1 $f18, 0xc($v1)
  /* 010D98 80010198 0C002404 */       jal func_80009010
  /* 010D9C 8001019C 30A500FF */      andi $a1, $a1, 0xff
  /* 010DA0 800101A0 AE020000 */        sw $v0, ($s0)
  /* 010DA4 800101A4 00401825 */        or $v1, $v0, $zero
  /* 010DA8 800101A8 C472000C */      lwc1 $f18, 0xc($v1)
  .L800101AC:
  /* 010DAC 800101AC 46149180 */     add.s $f6, $f18, $f20
  /* 010DB0 800101B0 E466000C */      swc1 $f6, 0xc($v1)
  .L800101B4:
  /* 010DB4 800101B4 26310001 */     addiu $s1, $s1, 1
  /* 010DB8 800101B8 1634FFED */       bne $s1, $s4, .L80010170
  /* 010DBC 800101BC 00129042 */       srl $s2, $s2, 1
  .L800101C0:
  /* 010DC0 800101C0 1000004D */         b .L800102F8
  /* 010DC4 800101C4 C6620074 */      lwc1 $f2, 0x74($s3)
  glabel jtgt_800101C8
  /* 010DC8 800101C8 000291C0 */       sll $s2, $v0, 7
  /* 010DCC 800101CC 00129582 */       srl $s2, $s2, 0x16
  /* 010DD0 800101D0 24690004 */     addiu $t1, $v1, 4
  /* 010DD4 800101D4 324A0008 */      andi $t2, $s2, 8
  /* 010DD8 800101D8 1140000F */      beqz $t2, .L80010218
  /* 010DDC 800101DC AE690070 */        sw $t1, 0x70($s3)
  /* 010DE0 800101E0 8FAB008C */        lw $t3, 0x8c($sp)
  /* 010DE4 800101E4 02602025 */        or $a0, $s3, $zero
  /* 010DE8 800101E8 55600005 */      bnel $t3, $zero, .L80010200
  /* 010DEC 800101EC 8E6C0070 */        lw $t4, 0x70($s3)
  /* 010DF0 800101F0 0C002404 */       jal func_80009010
  /* 010DF4 800101F4 2405001C */     addiu $a1, $zero, 0x1c
  /* 010DF8 800101F8 AFA2008C */        sw $v0, 0x8c($sp)
  /* 010DFC 800101FC 8E6C0070 */        lw $t4, 0x70($s3)
  .L80010200:
  /* 010E00 80010200 8FAE008C */        lw $t6, 0x8c($sp)
  /* 010E04 80010204 8D8D0000 */        lw $t5, ($t4)
  /* 010E08 80010208 ADCD0020 */        sw $t5, 0x20($t6)
  /* 010E0C 8001020C 8E6F0070 */        lw $t7, 0x70($s3)
  /* 010E10 80010210 25F80004 */     addiu $t8, $t7, 4
  /* 010E14 80010214 AE780070 */        sw $t8, 0x70($s3)
  .L80010218:
  /* 010E18 80010218 32590080 */      andi $t9, $s2, 0x80
  /* 010E1C 8001021C 1320000D */      beqz $t9, .L80010254
  /* 010E20 80010220 8FA8009C */        lw $t0, 0x9c($sp)
  /* 010E24 80010224 15000004 */      bnez $t0, .L80010238
  /* 010E28 80010228 02602025 */        or $a0, $s3, $zero
  /* 010E2C 8001022C 0C002404 */       jal func_80009010
  /* 010E30 80010230 24050020 */     addiu $a1, $zero, 0x20
  /* 010E34 80010234 AFA2009C */        sw $v0, 0x9c($sp)
  .L80010238:
  /* 010E38 80010238 8E690070 */        lw $t1, 0x70($s3)
  /* 010E3C 8001023C 8FAB009C */        lw $t3, 0x9c($sp)
  /* 010E40 80010240 8D2A0000 */        lw $t2, ($t1)
  /* 010E44 80010244 AD6A0020 */        sw $t2, 0x20($t3)
  /* 010E48 80010248 8E6C0070 */        lw $t4, 0x70($s3)
  /* 010E4C 8001024C 258D0004 */     addiu $t5, $t4, 4
  /* 010E50 80010250 AE6D0070 */        sw $t5, 0x70($s3)
  .L80010254:
  /* 010E54 80010254 10000028 */         b .L800102F8
  /* 010E58 80010258 C6620074 */      lwc1 $f2, 0x74($s3)
  glabel jtgt_8001025C
  /* 010E5C 8001025C 8E62006C */        lw $v0, 0x6c($s3)
  /* 010E60 80010260 C6620074 */      lwc1 $f2, 0x74($s3)
  /* 010E64 80010264 3C018004 */       lui $at, %hi(D_8003E088)
  /* 010E68 80010268 5040000E */      beql $v0, $zero, .L800102A4
  /* 010E6C 8001026C E662007C */      swc1 $f2, 0x7c($s3)
  /* 010E70 80010270 904E0005 */       lbu $t6, 5($v0)
  .L80010274:
  /* 010E74 80010274 51C00008 */      beql $t6, $zero, .L80010298
  /* 010E78 80010278 8C420000 */        lw $v0, ($v0)
  /* 010E7C 8001027C C6640078 */      lwc1 $f4, 0x78($s3)
  /* 010E80 80010280 C450000C */      lwc1 $f16, 0xc($v0)
  /* 010E84 80010284 46022200 */     add.s $f8, $f4, $f2
  /* 010E88 80010288 46088280 */     add.s $f10, $f16, $f8
  /* 010E8C 8001028C E44A000C */      swc1 $f10, 0xc($v0)
  /* 010E90 80010290 C6620074 */      lwc1 $f2, 0x74($s3)
  /* 010E94 80010294 8C420000 */        lw $v0, ($v0)
  .L80010298:
  /* 010E98 80010298 5440FFF6 */      bnel $v0, $zero, .L80010274
  /* 010E9C 8001029C 904E0005 */       lbu $t6, 5($v0)
  /* 010EA0 800102A0 E662007C */      swc1 $f2, 0x7c($s3)
  .L800102A4:
  /* 010EA4 800102A4 C432E088 */      lwc1 $f18, %lo(D_8003E088)($at)
  /* 010EA8 800102A8 10000017 */         b .L80010308
  /* 010EAC 800102AC E6720074 */      swc1 $f18, 0x74($s3)
  glabel jtgt_800102B0
  /* 010EB0 800102B0 304F7FFF */      andi $t7, $v0, 0x7fff
  /* 010EB4 800102B4 448F2000 */      mtc1 $t7, $f4
  /* 010EB8 800102B8 C6660074 */      lwc1 $f6, 0x74($s3)
  /* 010EBC 800102BC 05E10005 */      bgez $t7, .L800102D4
  /* 010EC0 800102C0 46802420 */   cvt.s.w $f16, $f4
  /* 010EC4 800102C4 3C014F80 */       lui $at, (0x4F800000 >> 16) # 4294967300.0
  /* 010EC8 800102C8 44814000 */      mtc1 $at, $f8 # 4294967300.0 to cop1
  /* 010ECC 800102CC 00000000 */       nop 
  /* 010ED0 800102D0 46088400 */     add.s $f16, $f16, $f8
  .L800102D4:
  /* 010ED4 800102D4 46103280 */     add.s $f10, $f6, $f16
  /* 010ED8 800102D8 24780004 */     addiu $t8, $v1, 4
  /* 010EDC 800102DC AE780070 */        sw $t8, 0x70($s3)
  /* 010EE0 800102E0 27080008 */     addiu $t0, $t8, 8
  /* 010EE4 800102E4 E66A0074 */      swc1 $f10, 0x74($s3)
  /* 010EE8 800102E8 AE680070 */        sw $t0, 0x70($s3)
  /* 010EEC 800102EC 10000002 */         b .L800102F8
  /* 010EF0 800102F0 C6620074 */      lwc1 $f2, 0x74($s3)
  glabel jtgt_800102F4
  /* 010EF4 800102F4 C6620074 */      lwc1 $f2, 0x74($s3)
  .L800102F8:
  /* 010EF8 800102F8 4616103E */    c.le.s $f2, $f22
  /* 010EFC 800102FC 00000000 */       nop 
  /* 010F00 80010300 4503FE2A */     bc1tl .L8000FBAC
  /* 010F04 80010304 8E630070 */        lw $v1, 0x70($s3)
  .L80010308:
  /* 010F08 80010308 8FBF0054 */        lw $ra, 0x54($sp)
  .L8001030C:
  /* 010F0C 8001030C D7B40018 */      ldc1 $f20, 0x18($sp)
  /* 010F10 80010310 D7B60020 */      ldc1 $f22, 0x20($sp)
  /* 010F14 80010314 D7B80028 */      ldc1 $f24, 0x28($sp)
  /* 010F18 80010318 8FB00030 */        lw $s0, 0x30($sp)
  /* 010F1C 8001031C 8FB10034 */        lw $s1, 0x34($sp)
  /* 010F20 80010320 8FB20038 */        lw $s2, 0x38($sp)
  /* 010F24 80010324 8FB3003C */        lw $s3, 0x3c($sp)
  /* 010F28 80010328 8FB40040 */        lw $s4, 0x40($sp)
  /* 010F2C 8001032C 8FB50044 */        lw $s5, 0x44($sp)
  /* 010F30 80010330 8FB60048 */        lw $s6, 0x48($sp)
  /* 010F34 80010334 8FB7004C */        lw $s7, 0x4c($sp)
  /* 010F38 80010338 8FBE0050 */        lw $fp, 0x50($sp)
  /* 010F3C 8001033C 03E00008 */        jr $ra
  /* 010F40 80010340 27BD00A8 */     addiu $sp, $sp, 0xa8

glabel func_80010344
  /* 010F44 80010344 27BDFFC8 */     addiu $sp, $sp, -0x38
  /* 010F48 80010348 AFBF0034 */        sw $ra, 0x34($sp)
  /* 010F4C 8001034C AFB20030 */        sw $s2, 0x30($sp)
  /* 010F50 80010350 AFB1002C */        sw $s1, 0x2c($sp)
  /* 010F54 80010354 AFB00028 */        sw $s0, 0x28($sp)
  /* 010F58 80010358 F7B60020 */      sdc1 $f22, 0x20($sp)
  /* 010F5C 8001035C F7B40018 */      sdc1 $f20, 0x18($sp)
  /* 010F60 80010360 3C018004 */       lui $at, %hi(D_8003E08C)
  /* 010F64 80010364 C424E08C */      lwc1 $f4, %lo(D_8003E08C)($at)
  /* 010F68 80010368 C4800074 */      lwc1 $f0, 0x74($a0)
  /* 010F6C 8001036C 00808825 */        or $s1, $a0, $zero
  /* 010F70 80010370 46002032 */    c.eq.s $f4, $f0
  /* 010F74 80010374 00000000 */       nop 
  /* 010F78 80010378 4503007A */     bc1tl .L80010564
  /* 010F7C 8001037C 8FBF0034 */        lw $ra, 0x34($sp)
  /* 010F80 80010380 8C90006C */        lw $s0, 0x6c($a0)
  /* 010F84 80010384 3C013F80 */       lui $at, (0x3F800000 >> 16) # 1.0
  /* 010F88 80010388 1200006C */      beqz $s0, .L8001053C
  /* 010F8C 8001038C 00000000 */       nop 
  /* 010F90 80010390 4481B000 */      mtc1 $at, $f22 # 1.0 to cop1
  /* 010F94 80010394 4480A000 */      mtc1 $zero, $f20
  /* 010F98 80010398 00000000 */       nop 
  /* 010F9C 8001039C 920E0005 */       lbu $t6, 5($s0)
  .L800103A0:
  /* 010FA0 800103A0 3C018004 */       lui $at, %hi(D_8003E090)
  /* 010FA4 800103A4 51C00062 */      beql $t6, $zero, .L80010530
  /* 010FA8 800103A8 8E100000 */        lw $s0, ($s0)
  /* 010FAC 800103AC C426E090 */      lwc1 $f6, %lo(D_8003E090)($at)
  /* 010FB0 800103B0 C6280074 */      lwc1 $f8, 0x74($s1)
  /* 010FB4 800103B4 46083032 */    c.eq.s $f6, $f8
  /* 010FB8 800103B8 00000000 */       nop 
  /* 010FBC 800103BC 45030006 */     bc1tl .L800103D8
  /* 010FC0 800103C0 8E2F0004 */        lw $t7, 4($s1)
  /* 010FC4 800103C4 C60A000C */      lwc1 $f10, 0xc($s0)
  /* 010FC8 800103C8 C6300078 */      lwc1 $f16, 0x78($s1)
  /* 010FCC 800103CC 46105480 */     add.s $f18, $f10, $f16
  /* 010FD0 800103D0 E612000C */      swc1 $f18, 0xc($s0)
  /* 010FD4 800103D4 8E2F0004 */        lw $t7, 4($s1)
  .L800103D8:
  /* 010FD8 800103D8 8DF8007C */        lw $t8, 0x7c($t7)
  /* 010FDC 800103DC 33190002 */      andi $t9, $t8, 2
  /* 010FE0 800103E0 57200053 */      bnel $t9, $zero, .L80010530
  /* 010FE4 800103E4 8E100000 */        lw $s0, ($s0)
  /* 010FE8 800103E8 92080004 */       lbu $t0, 4($s0)
  /* 010FEC 800103EC 2509FFE7 */     addiu $t1, $t0, -0x19
  /* 010FF0 800103F0 2D21000A */     sltiu $at, $t1, 0xa
  /* 010FF4 800103F4 1020004D */      beqz $at, .L8001052C
  /* 010FF8 800103F8 00094880 */       sll $t1, $t1, 2
  /* 010FFC 800103FC 3C018004 */       lui $at, %hi(jtbl_8003E094)
  /* 011000 80010400 00290821 */      addu $at, $at, $t1
  /* 011004 80010404 8C29E094 */        lw $t1, %lo(jtbl_8003E094)($at)
  /* 011008 80010408 01200008 */        jr $t1
  /* 01100C 8001040C 00000000 */       nop 
  glabel jtgt_80010410
  /* 011010 80010410 0C0032E5 */       jal func_8000CB94
  /* 011014 80010414 02002025 */        or $a0, $s0, $zero
  /* 011018 80010418 10000044 */         b .L8001052C
  /* 01101C 8001041C E620003C */      swc1 $f0, 0x3c($s1)
  glabel jtgt_80010420
  /* 011020 80010420 0C0032E5 */       jal func_8000CB94
  /* 011024 80010424 02002025 */        or $a0, $s0, $zero
  /* 011028 80010428 10000040 */         b .L8001052C
  /* 01102C 8001042C E6200040 */      swc1 $f0, 0x40($s1)
  glabel jtgt_80010430
  /* 011030 80010430 0C0032E5 */       jal func_8000CB94
  /* 011034 80010434 02002025 */        or $a0, $s0, $zero
  /* 011038 80010438 1000003C */         b .L8001052C
  /* 01103C 8001043C E6200044 */      swc1 $f0, 0x44($s1)
  glabel jtgt_80010440
  /* 011040 80010440 02002025 */        or $a0, $s0, $zero
  /* 011044 80010444 0C0032E5 */       jal func_8000CB94
  /* 011048 80010448 2632003C */     addiu $s2, $s1, 0x3c
  /* 01104C 8001044C 4614003C */    c.lt.s $f0, $f20
  /* 011050 80010450 46000086 */     mov.s $f2, $f0
  /* 011054 80010454 02402025 */        or $a0, $s2, $zero
  /* 011058 80010458 45020004 */     bc1fl .L8001046C
  /* 01105C 8001045C 4600B03C */    c.lt.s $f22, $f0
  /* 011060 80010460 10000006 */         b .L8001047C
  /* 011064 80010464 4600A086 */     mov.s $f2, $f20
  /* 011068 80010468 4600B03C */    c.lt.s $f22, $f0
  .L8001046C:
  /* 01106C 8001046C 00000000 */       nop 
  /* 011070 80010470 45020003 */     bc1fl .L80010480
  /* 011074 80010474 44061000 */      mfc1 $a2, $f2
  /* 011078 80010478 4600B086 */     mov.s $f2, $f22
  .L8001047C:
  /* 01107C 8001047C 44061000 */      mfc1 $a2, $f2
  .L80010480:
  /* 011080 80010480 0C00794C */       jal func_8001E530
  /* 011084 80010484 8E050020 */        lw $a1, 0x20($s0)
  /* 011088 80010488 10000029 */         b .L80010530
  /* 01108C 8001048C 8E100000 */        lw $s0, ($s0)
  glabel jtgt_80010490
  /* 011090 80010490 0C0032E5 */       jal func_8000CB94
  /* 011094 80010494 02002025 */        or $a0, $s0, $zero
  /* 011098 80010498 10000024 */         b .L8001052C
  /* 01109C 8001049C E6200048 */      swc1 $f0, 0x48($s1)
  glabel jtgt_800104A0
  /* 0110A0 800104A0 0C0032E5 */       jal func_8000CB94
  /* 0110A4 800104A4 02002025 */        or $a0, $s0, $zero
  /* 0110A8 800104A8 10000020 */         b .L8001052C
  /* 0110AC 800104AC E620004C */      swc1 $f0, 0x4c($s1)
  glabel jtgt_800104B0
  /* 0110B0 800104B0 0C0032E5 */       jal func_8000CB94
  /* 0110B4 800104B4 02002025 */        or $a0, $s0, $zero
  /* 0110B8 800104B8 1000001C */         b .L8001052C
  /* 0110BC 800104BC E6200050 */      swc1 $f0, 0x50($s1)
  glabel jtgt_800104C0
  /* 0110C0 800104C0 02002025 */        or $a0, $s0, $zero
  /* 0110C4 800104C4 0C0032E5 */       jal func_8000CB94
  /* 0110C8 800104C8 26320048 */     addiu $s2, $s1, 0x48
  /* 0110CC 800104CC 4614003C */    c.lt.s $f0, $f20
  /* 0110D0 800104D0 46000086 */     mov.s $f2, $f0
  /* 0110D4 800104D4 02402025 */        or $a0, $s2, $zero
  /* 0110D8 800104D8 45020004 */     bc1fl .L800104EC
  /* 0110DC 800104DC 4600B03C */    c.lt.s $f22, $f0
  /* 0110E0 800104E0 10000006 */         b .L800104FC
  /* 0110E4 800104E4 4600A086 */     mov.s $f2, $f20
  /* 0110E8 800104E8 4600B03C */    c.lt.s $f22, $f0
  .L800104EC:
  /* 0110EC 800104EC 00000000 */       nop 
  /* 0110F0 800104F0 45020003 */     bc1fl .L80010500
  /* 0110F4 800104F4 44061000 */      mfc1 $a2, $f2
  /* 0110F8 800104F8 4600B086 */     mov.s $f2, $f22
  .L800104FC:
  /* 0110FC 800104FC 44061000 */      mfc1 $a2, $f2
  .L80010500:
  /* 011100 80010500 0C00794C */       jal func_8001E530
  /* 011104 80010504 8E050020 */        lw $a1, 0x20($s0)
  /* 011108 80010508 10000009 */         b .L80010530
  /* 01110C 8001050C 8E100000 */        lw $s0, ($s0)
  glabel jtgt_80010510
  /* 011110 80010510 0C0032E5 */       jal func_8000CB94
  /* 011114 80010514 02002025 */        or $a0, $s0, $zero
  /* 011118 80010518 10000004 */         b .L8001052C
  /* 01111C 8001051C E6200054 */      swc1 $f0, 0x54($s1)
  glabel jtgt_80010520
  /* 011120 80010520 0C0032E5 */       jal func_8000CB94
  /* 011124 80010524 02002025 */        or $a0, $s0, $zero
  /* 011128 80010528 E6200020 */      swc1 $f0, 0x20($s1)
  .L8001052C:
  /* 01112C 8001052C 8E100000 */        lw $s0, ($s0)
  .L80010530:
  /* 011130 80010530 5600FF9B */      bnel $s0, $zero, .L800103A0
  /* 011134 80010534 920E0005 */       lbu $t6, 5($s0)
  /* 011138 80010538 C6200074 */      lwc1 $f0, 0x74($s1)
  .L8001053C:
  /* 01113C 8001053C 3C018004 */       lui $at, %hi(D_8003E0BC)
  /* 011140 80010540 C424E0BC */      lwc1 $f4, %lo(D_8003E0BC)($at)
  /* 011144 80010544 3C018004 */       lui $at, %hi(D_8003E0C0)
  /* 011148 80010548 46002032 */    c.eq.s $f4, $f0
  /* 01114C 8001054C 00000000 */       nop 
  /* 011150 80010550 45020004 */     bc1fl .L80010564
  /* 011154 80010554 8FBF0034 */        lw $ra, 0x34($sp)
  /* 011158 80010558 C426E0C0 */      lwc1 $f6, %lo(D_8003E0C0)($at)
  /* 01115C 8001055C E6260074 */      swc1 $f6, 0x74($s1)
  /* 011160 80010560 8FBF0034 */        lw $ra, 0x34($sp)
  .L80010564:
  /* 011164 80010564 D7B40018 */      ldc1 $f20, 0x18($sp)
  /* 011168 80010568 D7B60020 */      ldc1 $f22, 0x20($sp)
  /* 01116C 8001056C 8FB00028 */        lw $s0, 0x28($sp)
  /* 011170 80010570 8FB1002C */        lw $s1, 0x2c($sp)
  /* 011174 80010574 8FB20030 */        lw $s2, 0x30($sp)
  /* 011178 80010578 03E00008 */        jr $ra
  /* 01117C 8001057C 27BD0038 */     addiu $sp, $sp, 0x38

glabel func_80010580
  /* 011180 80010580 27BDFFE0 */     addiu $sp, $sp, -0x20
  /* 011184 80010584 AFBF0014 */        sw $ra, 0x14($sp)
  /* 011188 80010588 8C840074 */        lw $a0, 0x74($a0)
  /* 01118C 8001058C 0C003E9D */       jal func_8000FA74
  /* 011190 80010590 AFA4001C */        sw $a0, 0x1c($sp)
  /* 011194 80010594 0C0040D1 */       jal func_80010344
  /* 011198 80010598 8FA4001C */        lw $a0, 0x1c($sp)
  /* 01119C 8001059C 8FBF0014 */        lw $ra, 0x14($sp)
  /* 0111A0 800105A0 27BD0020 */     addiu $sp, $sp, 0x20
  /* 0111A4 800105A4 03E00008 */        jr $ra
  /* 0111A8 800105A8 00000000 */       nop 

  /* 0111AC 800105AC 8C820000 */        lw $v0, ($a0)
  /* 0111B0 800105B0 00001825 */        or $v1, $zero, $zero
  /* 0111B4 800105B4 2408000E */     addiu $t0, $zero, 0xe
  /* 0111B8 800105B8 54400006 */      bnel $v0, $zero, .L800105D4
  /* 0111BC 800105BC 8C450000 */        lw $a1, ($v0)
  /* 0111C0 800105C0 8C820004 */        lw $v0, 4($a0)
  .L800105C4:
  /* 0111C4 800105C4 24840004 */     addiu $a0, $a0, 4
  /* 0111C8 800105C8 5040FFFE */      beql $v0, $zero, .L800105C4
  /* 0111CC 800105CC 8C820004 */        lw $v0, 4($a0)
  /* 0111D0 800105D0 8C450000 */        lw $a1, ($v0)
  .L800105D4:
  /* 0111D4 800105D4 00402025 */        or $a0, $v0, $zero
  /* 0111D8 800105D8 2407000A */     addiu $a3, $zero, 0xa
  /* 0111DC 800105DC 00053642 */       srl $a2, $a1, 0x19
  glabel jtgt_800105E0
  /* 0111E0 800105E0 2CC10012 */     sltiu $at, $a2, 0x12
  .L800105E4:
  /* 0111E4 800105E4 5020FFFF */      beql $at, $zero, .L800105E4
  /* 0111E8 800105E8 2CC10012 */     sltiu $at, $a2, 0x12
  /* 0111EC 800105EC 00067080 */       sll $t6, $a2, 2
  /* 0111F0 800105F0 3C018004 */       lui $at, %hi(jtbl_8003E0C4)
  /* 0111F4 800105F4 002E0821 */      addu $at, $at, $t6
  /* 0111F8 800105F8 8C2EE0C4 */        lw $t6, %lo(jtbl_8003E0C4)($at)
  /* 0111FC 800105FC 01C00008 */        jr $t6
  /* 011200 80010600 00000000 */       nop 
  glabel jtgt_80010604
  /* 011204 80010604 30AF7FFF */      andi $t7, $a1, 0x7fff
  /* 011208 80010608 006F1821 */      addu $v1, $v1, $t7
  glabel jtgt_8001060C
  /* 01120C 8001060C 000511C0 */       sll $v0, $a1, 7
  /* 011210 80010610 00021582 */       srl $v0, $v0, 0x16
  /* 011214 80010614 24840004 */     addiu $a0, $a0, 4
  /* 011218 80010618 00003025 */        or $a2, $zero, $zero
  .L8001061C:
  /* 01121C 8001061C 10400006 */      beqz $v0, .L80010638
  /* 011220 80010620 30580001 */      andi $t8, $v0, 1
  /* 011224 80010624 13000002 */      beqz $t8, .L80010630
  /* 011228 80010628 24C60001 */     addiu $a2, $a2, 1
  /* 01122C 8001062C 24840004 */     addiu $a0, $a0, 4
  .L80010630:
  /* 011230 80010630 14C7FFFA */       bne $a2, $a3, .L8001061C
  /* 011234 80010634 00021042 */       srl $v0, $v0, 1
  .L80010638:
  /* 011238 80010638 8C850000 */        lw $a1, ($a0)
  /* 01123C 8001063C 1000FFE8 */         b jtgt_800105E0
  /* 011240 80010640 00053642 */       srl $a2, $a1, 0x19
  glabel jtgt_80010644
  /* 011244 80010644 30B97FFF */      andi $t9, $a1, 0x7fff
  /* 011248 80010648 00791821 */      addu $v1, $v1, $t9
  glabel jtgt_8001064C
  /* 01124C 8001064C 000511C0 */       sll $v0, $a1, 7
  /* 011250 80010650 00021582 */       srl $v0, $v0, 0x16
  /* 011254 80010654 24840004 */     addiu $a0, $a0, 4
  /* 011258 80010658 00003025 */        or $a2, $zero, $zero
  .L8001065C:
  /* 01125C 8001065C 10400006 */      beqz $v0, .L80010678
  /* 011260 80010660 30490001 */      andi $t1, $v0, 1
  /* 011264 80010664 11200002 */      beqz $t1, .L80010670
  /* 011268 80010668 24C60001 */     addiu $a2, $a2, 1
  /* 01126C 8001066C 24840008 */     addiu $a0, $a0, 8
  .L80010670:
  /* 011270 80010670 14C7FFFA */       bne $a2, $a3, .L8001065C
  /* 011274 80010674 00021042 */       srl $v0, $v0, 1
  .L80010678:
  /* 011278 80010678 8C850000 */        lw $a1, ($a0)
  /* 01127C 8001067C 1000FFD8 */         b jtgt_800105E0
  /* 011280 80010680 00053642 */       srl $a2, $a1, 0x19
  glabel jtgt_80010684
  /* 011284 80010684 30AA7FFF */      andi $t2, $a1, 0x7fff
  /* 011288 80010688 8C850004 */        lw $a1, 4($a0)
  /* 01128C 8001068C 006A1821 */      addu $v1, $v1, $t2
  /* 011290 80010690 24840004 */     addiu $a0, $a0, 4
  /* 011294 80010694 1000FFD2 */         b jtgt_800105E0
  /* 011298 80010698 00053642 */       srl $a2, $a1, 0x19
  glabel jtgt_8001069C
  /* 01129C 8001069C 8C850004 */        lw $a1, 4($a0)
  /* 0112A0 800106A0 24840004 */     addiu $a0, $a0, 4
  /* 0112A4 800106A4 1000FFCE */         b jtgt_800105E0
  /* 0112A8 800106A8 00053642 */       srl $a2, $a1, 0x19
  glabel jtgt_800106AC
  /* 0112AC 800106AC 8C850008 */        lw $a1, 8($a0)
  /* 0112B0 800106B0 24840008 */     addiu $a0, $a0, 8
  /* 0112B4 800106B4 1000FFCA */         b jtgt_800105E0
  /* 0112B8 800106B8 00053642 */       srl $a2, $a1, 0x19
  glabel jtgt_800106BC
  /* 0112BC 800106BC 30AB7FFF */      andi $t3, $a1, 0x7fff
  /* 0112C0 800106C0 000511C0 */       sll $v0, $a1, 7
  /* 0112C4 800106C4 006B1821 */      addu $v1, $v1, $t3
  /* 0112C8 800106C8 00021582 */       srl $v0, $v0, 0x16
  /* 0112CC 800106CC 24840004 */     addiu $a0, $a0, 4
  /* 0112D0 800106D0 24060004 */     addiu $a2, $zero, 4
  .L800106D4:
  /* 0112D4 800106D4 10400006 */      beqz $v0, .L800106F0
  /* 0112D8 800106D8 304C0001 */      andi $t4, $v0, 1
  /* 0112DC 800106DC 11800002 */      beqz $t4, .L800106E8
  /* 0112E0 800106E0 24C60001 */     addiu $a2, $a2, 1
  /* 0112E4 800106E4 24840004 */     addiu $a0, $a0, 4
  .L800106E8:
  /* 0112E8 800106E8 14C8FFFA */       bne $a2, $t0, .L800106D4
  /* 0112EC 800106EC 00021042 */       srl $v0, $v0, 1
  .L800106F0:
  /* 0112F0 800106F0 8C850000 */        lw $a1, ($a0)
  /* 0112F4 800106F4 1000FFBA */         b jtgt_800105E0
  /* 0112F8 800106F8 00053642 */       srl $a2, $a1, 0x19
  glabel jtgt_800106FC
  /* 0112FC 800106FC 03E00008 */        jr $ra
  /* 011300 80010700 00601025 */        or $v0, $v1, $zero

  glabel jtgt_80010704
  /* 011304 80010704 00031023 */      negu $v0, $v1
  /* 011308 80010708 03E00008 */        jr $ra
  /* 01130C 8001070C 00000000 */       nop 

  /* 011310 80010710 3C018004 */       lui $at, %hi(D_8003B930)
  /* 011314 80010714 AC24B930 */        sw $a0, %lo(D_8003B930)($at)
  /* 011318 80010718 3C018004 */       lui $at, %hi(D_8003B934)
  /* 01131C 8001071C AC25B934 */        sw $a1, %lo(D_8003B934)($at)
  /* 011320 80010720 3C018004 */       lui $at, %hi(D_8003B938)
  /* 011324 80010724 AC26B938 */        sw $a2, %lo(D_8003B938)($at)
  /* 011328 80010728 3C018004 */       lui $at, %hi(D_8003B93C)
  /* 01132C 8001072C 03E00008 */        jr $ra
  /* 011330 80010730 AC27B93C */        sw $a3, %lo(D_8003B93C)($at)

glabel func_80010734
  /* 011334 80010734 3C018004 */       lui $at, %hi(D_800470AC)
  /* 011338 80010738 03E00008 */        jr $ra
  /* 01133C 8001073C AC2470AC */        sw $a0, %lo(D_800470AC)($at)

  /* 011340 80010740 03E00008 */        jr $ra
  /* 011344 80010744 00000000 */       nop 

glabel func_80010748
  /* 011348 80010748 27BDFF78 */     addiu $sp, $sp, -0x88
  /* 01134C 8001074C 3C0E8004 */       lui $t6, %hi(D_80046A58)
  /* 011350 80010750 8DCE6A58 */        lw $t6, %lo(D_80046A58)($t6)
  /* 011354 80010754 AFBF0014 */        sw $ra, 0x14($sp)
  /* 011358 80010758 AFA40088 */        sw $a0, 0x88($sp)
  /* 01135C 8001075C AFA60090 */        sw $a2, 0x90($sp)
  /* 011360 80010760 8DC20074 */        lw $v0, 0x74($t6)
  /* 011364 80010764 C4A4001C */      lwc1 $f4, 0x1c($a1)
  /* 011368 80010768 C4A80020 */      lwc1 $f8, 0x20($a1)
  /* 01136C 8001076C C446003C */      lwc1 $f6, 0x3c($v0)
  /* 011370 80010770 C44A0040 */      lwc1 $f10, 0x40($v0)
  /* 011374 80010774 46062401 */     sub.s $f16, $f4, $f6
  /* 011378 80010778 C4A40024 */      lwc1 $f4, 0x24($a1)
  /* 01137C 8001077C C4460044 */      lwc1 $f6, 0x44($v0)
  /* 011380 80010780 460A4081 */     sub.s $f2, $f8, $f10
  /* 011384 80010784 46108202 */     mul.s $f8, $f16, $f16
  /* 011388 80010788 E7B00044 */      swc1 $f16, 0x44($sp)
  /* 01138C 8001078C 46062481 */     sub.s $f18, $f4, $f6
  /* 011390 80010790 46021282 */     mul.s $f10, $f2, $f2
  /* 011394 80010794 E7A20040 */      swc1 $f2, 0x40($sp)
  /* 011398 80010798 AFA5008C */        sw $a1, 0x8c($sp)
  /* 01139C 8001079C 46129182 */     mul.s $f6, $f18, $f18
  /* 0113A0 800107A0 E7B2003C */      swc1 $f18, 0x3c($sp)
  /* 0113A4 800107A4 460A4100 */     add.s $f4, $f8, $f10
  /* 0113A8 800107A8 0C00CD44 */       jal sqrtf
  /* 0113AC 800107AC 46062300 */     add.s $f12, $f4, $f6
  /* 0113B0 800107B0 3C013F80 */       lui $at, (0x3F800000 >> 16) # 1.0
  /* 0113B4 800107B4 44814000 */      mtc1 $at, $f8 # 1.0 to cop1
  /* 0113B8 800107B8 C7B00044 */      lwc1 $f16, 0x44($sp)
  /* 0113BC 800107BC C7A20040 */      lwc1 $f2, 0x40($sp)
  /* 0113C0 800107C0 46004383 */     div.s $f14, $f8, $f0
  /* 0113C4 800107C4 C7B2003C */      lwc1 $f18, 0x3c($sp)
  /* 0113C8 800107C8 460E8402 */     mul.s $f16, $f16, $f14
  /* 0113CC 800107CC 00000000 */       nop 
  /* 0113D0 800107D0 460E1082 */     mul.s $f2, $f2, $f14
  /* 0113D4 800107D4 00000000 */       nop 
  /* 0113D8 800107D8 460E9482 */     mul.s $f18, $f18, $f14
  /* 0113DC 800107DC E7B00044 */      swc1 $f16, 0x44($sp)
  /* 0113E0 800107E0 46108282 */     mul.s $f10, $f16, $f16
  /* 0113E4 800107E4 E7A20040 */      swc1 $f2, 0x40($sp)
  /* 0113E8 800107E8 46021102 */     mul.s $f4, $f2, $f2
  /* 0113EC 800107EC E7B2003C */      swc1 $f18, 0x3c($sp)
  /* 0113F0 800107F0 0C00CD44 */       jal sqrtf
  /* 0113F4 800107F4 46045300 */     add.s $f12, $f10, $f4
  /* 0113F8 800107F8 44804000 */      mtc1 $zero, $f8
  /* 0113FC 800107FC 44806000 */      mtc1 $zero, $f12
  /* 011400 80010800 3C013F80 */       lui $at, (0x3F800000 >> 16) # 1.0
  /* 011404 80010804 46080032 */    c.eq.s $f0, $f8
  /* 011408 80010808 44813000 */      mtc1 $at, $f6 # 1.0 to cop1
  /* 01140C 8001080C 8FA5008C */        lw $a1, 0x8c($sp)
  /* 011410 80010810 C7A20040 */      lwc1 $f2, 0x40($sp)
  /* 011414 80010814 C7B00044 */      lwc1 $f16, 0x44($sp)
  /* 011418 80010818 C7B2003C */      lwc1 $f18, 0x3c($sp)
  /* 01141C 8001081C E7AC0074 */      swc1 $f12, 0x74($sp)
  /* 011420 80010820 E7AC0064 */      swc1 $f12, 0x64($sp)
  /* 011424 80010824 E7AC0054 */      swc1 $f12, 0x54($sp)
  /* 011428 80010828 E7AC0060 */      swc1 $f12, 0x60($sp)
  /* 01142C 8001082C 45010019 */      bc1t .L80010894
  /* 011430 80010830 E7A60084 */      swc1 $f6, 0x84($sp)
  /* 011434 80010834 3C013F80 */       lui $at, (0x3F800000 >> 16) # 1.0
  /* 011438 80010838 44815000 */      mtc1 $at, $f10 # 1.0 to cop1
  /* 01143C 8001083C 46008307 */     neg.s $f12, $f16
  /* 011440 80010840 E7A00070 */      swc1 $f0, 0x70($sp)
  /* 011444 80010844 46005383 */     div.s $f14, $f10, $f0
  /* 011448 80010848 E7AC0048 */      swc1 $f12, 0x48($sp)
  /* 01144C 8001084C 46001287 */     neg.s $f10, $f2
  /* 011450 80010850 E7AA0018 */      swc1 $f10, 0x18($sp)
  /* 011454 80010854 460E1102 */     mul.s $f4, $f2, $f14
  /* 011458 80010858 00000000 */       nop 
  /* 01145C 8001085C 46126182 */     mul.s $f6, $f12, $f18
  /* 011460 80010860 E7A40058 */      swc1 $f4, 0x58($sp)
  /* 011464 80010864 C7A40018 */      lwc1 $f4, 0x18($sp)
  /* 011468 80010868 460E3202 */     mul.s $f8, $f6, $f14
  /* 01146C 8001086C E7A4004C */      swc1 $f4, 0x4c($sp)
  /* 011470 80010870 460E6182 */     mul.s $f6, $f12, $f14
  /* 011474 80010874 E7A80068 */      swc1 $f8, 0x68($sp)
  /* 011478 80010878 46122202 */     mul.s $f8, $f4, $f18
  /* 01147C 8001087C E7A6005C */      swc1 $f6, 0x5c($sp)
  /* 011480 80010880 46009187 */     neg.s $f6, $f18
  /* 011484 80010884 E7A60050 */      swc1 $f6, 0x50($sp)
  /* 011488 80010888 460E4282 */     mul.s $f10, $f8, $f14
  /* 01148C 8001088C 1000000C */         b .L800108C0
  /* 011490 80010890 E7AA006C */      swc1 $f10, 0x6c($sp)
  .L80010894:
  /* 011494 80010894 44800000 */      mtc1 $zero, $f0
  /* 011498 80010898 3C013F80 */       lui $at, (0x3F800000 >> 16) # 1.0
  /* 01149C 8001089C 44811000 */      mtc1 $at, $f2 # 1.0 to cop1
  /* 0114A0 800108A0 E7A0006C */      swc1 $f0, 0x6c($sp)
  /* 0114A4 800108A4 E7A0004C */      swc1 $f0, 0x4c($sp)
  /* 0114A8 800108A8 E7A00068 */      swc1 $f0, 0x68($sp)
  /* 0114AC 800108AC E7A00058 */      swc1 $f0, 0x58($sp)
  /* 0114B0 800108B0 E7A00050 */      swc1 $f0, 0x50($sp)
  /* 0114B4 800108B4 E7A2005C */      swc1 $f2, 0x5c($sp)
  /* 0114B8 800108B8 E7A20048 */      swc1 $f2, 0x48($sp)
  /* 0114BC 800108BC E7A20070 */      swc1 $f2, 0x70($sp)
  .L800108C0:
  /* 0114C0 800108C0 8FAF0090 */        lw $t7, 0x90($sp)
  /* 0114C4 800108C4 27A40048 */     addiu $a0, $sp, 0x48
  /* 0114C8 800108C8 51E00009 */      beql $t7, $zero, .L800108F0
  /* 0114CC 800108CC 44801000 */      mtc1 $zero, $f2
  /* 0114D0 800108D0 C4A4001C */      lwc1 $f4, 0x1c($a1)
  /* 0114D4 800108D4 E7A40078 */      swc1 $f4, 0x78($sp)
  /* 0114D8 800108D8 C4A80020 */      lwc1 $f8, 0x20($a1)
  /* 0114DC 800108DC E7A8007C */      swc1 $f8, 0x7c($sp)
  /* 0114E0 800108E0 C4AA0024 */      lwc1 $f10, 0x24($a1)
  /* 0114E4 800108E4 10000006 */         b .L80010900
  /* 0114E8 800108E8 E7AA0080 */      swc1 $f10, 0x80($sp)
  /* 0114EC 800108EC 44801000 */      mtc1 $zero, $f2
  .L800108F0:
  /* 0114F0 800108F0 00000000 */       nop 
  /* 0114F4 800108F4 E7A2007C */      swc1 $f2, 0x7c($sp)
  /* 0114F8 800108F8 E7A20078 */      swc1 $f2, 0x78($sp)
  /* 0114FC 800108FC E7A20080 */      swc1 $f2, 0x80($sp)
  .L80010900:
  /* 011500 80010900 0C0067A8 */       jal func_80019EA0
  /* 011504 80010904 8FA50088 */        lw $a1, 0x88($sp)
  /* 011508 80010908 8FBF0014 */        lw $ra, 0x14($sp)
  /* 01150C 8001090C 27BD0088 */     addiu $sp, $sp, 0x88
  /* 011510 80010910 03E00008 */        jr $ra
  /* 011514 80010914 00000000 */       nop 

glabel func_80010918
  /* 011518 80010918 27BDFF78 */     addiu $sp, $sp, -0x88
  /* 01151C 8001091C 3C0E8004 */       lui $t6, %hi(D_80046A58)
  /* 011520 80010920 8DCE6A58 */        lw $t6, %lo(D_80046A58)($t6)
  /* 011524 80010924 AFBF0014 */        sw $ra, 0x14($sp)
  /* 011528 80010928 AFA40088 */        sw $a0, 0x88($sp)
  /* 01152C 8001092C AFA60090 */        sw $a2, 0x90($sp)
  /* 011530 80010930 8DC20074 */        lw $v0, 0x74($t6)
  /* 011534 80010934 C4A4001C */      lwc1 $f4, 0x1c($a1)
  /* 011538 80010938 C4A80020 */      lwc1 $f8, 0x20($a1)
  /* 01153C 8001093C C446003C */      lwc1 $f6, 0x3c($v0)
  /* 011540 80010940 C44A0040 */      lwc1 $f10, 0x40($v0)
  /* 011544 80010944 46062081 */     sub.s $f2, $f4, $f6
  /* 011548 80010948 C4A40024 */      lwc1 $f4, 0x24($a1)
  /* 01154C 8001094C C4460044 */      lwc1 $f6, 0x44($v0)
  /* 011550 80010950 460A4481 */     sub.s $f18, $f8, $f10
  /* 011554 80010954 46021202 */     mul.s $f8, $f2, $f2
  /* 011558 80010958 E7A20044 */      swc1 $f2, 0x44($sp)
  /* 01155C 8001095C 46062381 */     sub.s $f14, $f4, $f6
  /* 011560 80010960 46129282 */     mul.s $f10, $f18, $f18
  /* 011564 80010964 E7B20040 */      swc1 $f18, 0x40($sp)
  /* 011568 80010968 AFA5008C */        sw $a1, 0x8c($sp)
  /* 01156C 8001096C 460E7182 */     mul.s $f6, $f14, $f14
  /* 011570 80010970 E7AE003C */      swc1 $f14, 0x3c($sp)
  /* 011574 80010974 460A4100 */     add.s $f4, $f8, $f10
  /* 011578 80010978 0C00CD44 */       jal sqrtf
  /* 01157C 8001097C 46062300 */     add.s $f12, $f4, $f6
  /* 011580 80010980 3C013F80 */       lui $at, (0x3F800000 >> 16) # 1.0
  /* 011584 80010984 44814000 */      mtc1 $at, $f8 # 1.0 to cop1
  /* 011588 80010988 C7A20044 */      lwc1 $f2, 0x44($sp)
  /* 01158C 8001098C C7B20040 */      lwc1 $f18, 0x40($sp)
  /* 011590 80010990 46004403 */     div.s $f16, $f8, $f0
  /* 011594 80010994 C7AE003C */      lwc1 $f14, 0x3c($sp)
  /* 011598 80010998 46101082 */     mul.s $f2, $f2, $f16
  /* 01159C 8001099C 00000000 */       nop 
  /* 0115A0 800109A0 46109482 */     mul.s $f18, $f18, $f16
  /* 0115A4 800109A4 00000000 */       nop 
  /* 0115A8 800109A8 46107382 */     mul.s $f14, $f14, $f16
  /* 0115AC 800109AC E7A20044 */      swc1 $f2, 0x44($sp)
  /* 0115B0 800109B0 46021282 */     mul.s $f10, $f2, $f2
  /* 0115B4 800109B4 E7B20040 */      swc1 $f18, 0x40($sp)
  /* 0115B8 800109B8 460E7102 */     mul.s $f4, $f14, $f14
  /* 0115BC 800109BC E7AE003C */      swc1 $f14, 0x3c($sp)
  /* 0115C0 800109C0 0C00CD44 */       jal sqrtf
  /* 0115C4 800109C4 46045300 */     add.s $f12, $f10, $f4
  /* 0115C8 800109C8 44804000 */      mtc1 $zero, $f8
  /* 0115CC 800109CC 44806000 */      mtc1 $zero, $f12
  /* 0115D0 800109D0 3C013F80 */       lui $at, (0x3F800000 >> 16) # 1.0
  /* 0115D4 800109D4 46080032 */    c.eq.s $f0, $f8
  /* 0115D8 800109D8 44813000 */      mtc1 $at, $f6 # 1.0 to cop1
  /* 0115DC 800109DC 8FA5008C */        lw $a1, 0x8c($sp)
  /* 0115E0 800109E0 C7A20044 */      lwc1 $f2, 0x44($sp)
  /* 0115E4 800109E4 C7AE003C */      lwc1 $f14, 0x3c($sp)
  /* 0115E8 800109E8 C7B20040 */      lwc1 $f18, 0x40($sp)
  /* 0115EC 800109EC E7AC0074 */      swc1 $f12, 0x74($sp)
  /* 0115F0 800109F0 E7AC0064 */      swc1 $f12, 0x64($sp)
  /* 0115F4 800109F4 E7AC0054 */      swc1 $f12, 0x54($sp)
  /* 0115F8 800109F8 E7AC004C */      swc1 $f12, 0x4c($sp)
  /* 0115FC 800109FC 45010019 */      bc1t .L80010A64
  /* 011600 80010A00 E7A60084 */      swc1 $f6, 0x84($sp)
  /* 011604 80010A04 3C013F80 */       lui $at, (0x3F800000 >> 16) # 1.0
  /* 011608 80010A08 44812000 */      mtc1 $at, $f4 # 1.0 to cop1
  /* 01160C 80010A0C 46007287 */     neg.s $f10, $f14
  /* 011610 80010A10 46009307 */     neg.s $f12, $f18
  /* 011614 80010A14 46002403 */     div.s $f16, $f4, $f0
  /* 011618 80010A18 E7AA0020 */      swc1 $f10, 0x20($sp)
  /* 01161C 80010A1C C7A60020 */      lwc1 $f6, 0x20($sp)
  /* 011620 80010A20 E7A0005C */      swc1 $f0, 0x5c($sp)
  /* 011624 80010A24 E7AC006C */      swc1 $f12, 0x6c($sp)
  /* 011628 80010A28 E7A60070 */      swc1 $f6, 0x70($sp)
  /* 01162C 80010A2C 46103202 */     mul.s $f8, $f6, $f16
  /* 011630 80010A30 00000000 */       nop 
  /* 011634 80010A34 46026282 */     mul.s $f10, $f12, $f2
  /* 011638 80010A38 E7A80048 */      swc1 $f8, 0x48($sp)
  /* 01163C 80010A3C 46001207 */     neg.s $f8, $f2
  /* 011640 80010A40 46105102 */     mul.s $f4, $f10, $f16
  /* 011644 80010A44 E7A80068 */      swc1 $f8, 0x68($sp)
  /* 011648 80010A48 46101282 */     mul.s $f10, $f2, $f16
  /* 01164C 80010A4C E7A40058 */      swc1 $f4, 0x58($sp)
  /* 011650 80010A50 460E6102 */     mul.s $f4, $f12, $f14
  /* 011654 80010A54 E7AA0050 */      swc1 $f10, 0x50($sp)
  /* 011658 80010A58 46102202 */     mul.s $f8, $f4, $f16
  /* 01165C 80010A5C 1000000C */         b .L80010A90
  /* 011660 80010A60 E7A80060 */      swc1 $f8, 0x60($sp)
  .L80010A64:
  /* 011664 80010A64 44800000 */      mtc1 $zero, $f0
  /* 011668 80010A68 3C013F80 */       lui $at, (0x3F800000 >> 16) # 1.0
  /* 01166C 80010A6C 44811000 */      mtc1 $at, $f2 # 1.0 to cop1
  /* 011670 80010A70 E7A00050 */      swc1 $f0, 0x50($sp)
  /* 011674 80010A74 E7A0006C */      swc1 $f0, 0x6c($sp)
  /* 011678 80010A78 E7A00068 */      swc1 $f0, 0x68($sp)
  /* 01167C 80010A7C E7A00058 */      swc1 $f0, 0x58($sp)
  /* 011680 80010A80 E7A00060 */      swc1 $f0, 0x60($sp)
  /* 011684 80010A84 E7A2005C */      swc1 $f2, 0x5c($sp)
  /* 011688 80010A88 E7A20048 */      swc1 $f2, 0x48($sp)
  /* 01168C 80010A8C E7A20070 */      swc1 $f2, 0x70($sp)
  .L80010A90:
  /* 011690 80010A90 8FAF0090 */        lw $t7, 0x90($sp)
  /* 011694 80010A94 27A40048 */     addiu $a0, $sp, 0x48
  /* 011698 80010A98 51E00009 */      beql $t7, $zero, .L80010AC0
  /* 01169C 80010A9C 44801000 */      mtc1 $zero, $f2
  /* 0116A0 80010AA0 C4AA001C */      lwc1 $f10, 0x1c($a1)
  /* 0116A4 80010AA4 E7AA0078 */      swc1 $f10, 0x78($sp)
  /* 0116A8 80010AA8 C4A40020 */      lwc1 $f4, 0x20($a1)
  /* 0116AC 80010AAC E7A4007C */      swc1 $f4, 0x7c($sp)
  /* 0116B0 80010AB0 C4A80024 */      lwc1 $f8, 0x24($a1)
  /* 0116B4 80010AB4 10000006 */         b .L80010AD0
  /* 0116B8 80010AB8 E7A80080 */      swc1 $f8, 0x80($sp)
  /* 0116BC 80010ABC 44801000 */      mtc1 $zero, $f2
  .L80010AC0:
  /* 0116C0 80010AC0 00000000 */       nop 
  /* 0116C4 80010AC4 E7A2007C */      swc1 $f2, 0x7c($sp)
  /* 0116C8 80010AC8 E7A20078 */      swc1 $f2, 0x78($sp)
  /* 0116CC 80010ACC E7A20080 */      swc1 $f2, 0x80($sp)
  .L80010AD0:
  /* 0116D0 80010AD0 0C0067A8 */       jal func_80019EA0
  /* 0116D4 80010AD4 8FA50088 */        lw $a1, 0x88($sp)
  /* 0116D8 80010AD8 8FBF0014 */        lw $ra, 0x14($sp)
  /* 0116DC 80010ADC 27BD0088 */     addiu $sp, $sp, 0x88
  /* 0116E0 80010AE0 03E00008 */        jr $ra
  /* 0116E4 80010AE4 00000000 */       nop 

glabel func_80010AE8
  /* 0116E8 80010AE8 27BDFF78 */     addiu $sp, $sp, -0x88
  /* 0116EC 80010AEC 3C0E8004 */       lui $t6, %hi(D_80046A58)
  /* 0116F0 80010AF0 8DCE6A58 */        lw $t6, %lo(D_80046A58)($t6)
  /* 0116F4 80010AF4 AFBF0014 */        sw $ra, 0x14($sp)
  /* 0116F8 80010AF8 AFA40088 */        sw $a0, 0x88($sp)
  /* 0116FC 80010AFC AFA60090 */        sw $a2, 0x90($sp)
  /* 011700 80010B00 8DC20074 */        lw $v0, 0x74($t6)
  /* 011704 80010B04 C4A4001C */      lwc1 $f4, 0x1c($a1)
  /* 011708 80010B08 C4A80020 */      lwc1 $f8, 0x20($a1)
  /* 01170C 80010B0C C446003C */      lwc1 $f6, 0x3c($v0)
  /* 011710 80010B10 C44A0040 */      lwc1 $f10, 0x40($v0)
  /* 011714 80010B14 AFA5008C */        sw $a1, 0x8c($sp)
  /* 011718 80010B18 46062401 */     sub.s $f16, $f4, $f6
  /* 01171C 80010B1C 460A4381 */     sub.s $f14, $f8, $f10
  /* 011720 80010B20 46108102 */     mul.s $f4, $f16, $f16
  /* 011724 80010B24 E7B00044 */      swc1 $f16, 0x44($sp)
  /* 011728 80010B28 460E7182 */     mul.s $f6, $f14, $f14
  /* 01172C 80010B2C E7AE0040 */      swc1 $f14, 0x40($sp)
  /* 011730 80010B30 0C00CD44 */       jal sqrtf
  /* 011734 80010B34 46062300 */     add.s $f12, $f4, $f6
  /* 011738 80010B38 44801000 */      mtc1 $zero, $f2
  /* 01173C 80010B3C 44804000 */      mtc1 $zero, $f8
  /* 011740 80010B40 3C013F80 */       lui $at, (0x3F800000 >> 16) # 1.0
  /* 011744 80010B44 44819000 */      mtc1 $at, $f18 # 1.0 to cop1
  /* 011748 80010B48 46080032 */    c.eq.s $f0, $f8
  /* 01174C 80010B4C 8FA5008C */        lw $a1, 0x8c($sp)
  /* 011750 80010B50 C7AE0040 */      lwc1 $f14, 0x40($sp)
  /* 011754 80010B54 C7B00044 */      lwc1 $f16, 0x44($sp)
  /* 011758 80010B58 E7A20050 */      swc1 $f2, 0x50($sp)
  /* 01175C 80010B5C E7A2006C */      swc1 $f2, 0x6c($sp)
  /* 011760 80010B60 E7A20068 */      swc1 $f2, 0x68($sp)
  /* 011764 80010B64 E7A20074 */      swc1 $f2, 0x74($sp)
  /* 011768 80010B68 E7A20064 */      swc1 $f2, 0x64($sp)
  /* 01176C 80010B6C E7A20054 */      swc1 $f2, 0x54($sp)
  /* 011770 80010B70 E7A20060 */      swc1 $f2, 0x60($sp)
  /* 011774 80010B74 E7B20070 */      swc1 $f18, 0x70($sp)
  /* 011778 80010B78 4501000F */      bc1t .L80010BB8
  /* 01177C 80010B7C E7B20084 */      swc1 $f18, 0x84($sp)
  /* 011780 80010B80 3C013F80 */       lui $at, (0x3F800000 >> 16) # 1.0
  /* 011784 80010B84 44815000 */      mtc1 $at, $f10 # 1.0 to cop1
  /* 011788 80010B88 00000000 */       nop 
  /* 01178C 80010B8C 46005303 */     div.s $f12, $f10, $f0
  /* 011790 80010B90 460C8402 */     mul.s $f16, $f16, $f12
  /* 011794 80010B94 00000000 */       nop 
  /* 011798 80010B98 460C7382 */     mul.s $f14, $f14, $f12
  /* 01179C 80010B9C 46008087 */     neg.s $f2, $f16
  /* 0117A0 80010BA0 E7A20048 */      swc1 $f2, 0x48($sp)
  /* 0117A4 80010BA4 46007487 */     neg.s $f18, $f14
  /* 0117A8 80010BA8 E7AE0058 */      swc1 $f14, 0x58($sp)
  /* 0117AC 80010BAC E7B2004C */      swc1 $f18, 0x4c($sp)
  /* 0117B0 80010BB0 10000008 */         b .L80010BD4
  /* 0117B4 80010BB4 E7A2005C */      swc1 $f2, 0x5c($sp)
  .L80010BB8:
  /* 0117B8 80010BB8 44809000 */      mtc1 $zero, $f18
  /* 0117BC 80010BBC 3C013F80 */       lui $at, (0x3F800000 >> 16) # 1.0
  /* 0117C0 80010BC0 44818000 */      mtc1 $at, $f16 # 1.0 to cop1
  /* 0117C4 80010BC4 E7B20058 */      swc1 $f18, 0x58($sp)
  /* 0117C8 80010BC8 E7B2004C */      swc1 $f18, 0x4c($sp)
  /* 0117CC 80010BCC E7B00048 */      swc1 $f16, 0x48($sp)
  /* 0117D0 80010BD0 E7B0005C */      swc1 $f16, 0x5c($sp)
  .L80010BD4:
  /* 0117D4 80010BD4 8FAF0090 */        lw $t7, 0x90($sp)
  /* 0117D8 80010BD8 27A40048 */     addiu $a0, $sp, 0x48
  /* 0117DC 80010BDC 51E00009 */      beql $t7, $zero, .L80010C04
  /* 0117E0 80010BE0 44800000 */      mtc1 $zero, $f0
  /* 0117E4 80010BE4 C4A4001C */      lwc1 $f4, 0x1c($a1)
  /* 0117E8 80010BE8 E7A40078 */      swc1 $f4, 0x78($sp)
  /* 0117EC 80010BEC C4A60020 */      lwc1 $f6, 0x20($a1)
  /* 0117F0 80010BF0 E7A6007C */      swc1 $f6, 0x7c($sp)
  /* 0117F4 80010BF4 C4A80024 */      lwc1 $f8, 0x24($a1)
  /* 0117F8 80010BF8 10000006 */         b .L80010C14
  /* 0117FC 80010BFC E7A80080 */      swc1 $f8, 0x80($sp)
  /* 011800 80010C00 44800000 */      mtc1 $zero, $f0
  .L80010C04:
  /* 011804 80010C04 00000000 */       nop 
  /* 011808 80010C08 E7A0007C */      swc1 $f0, 0x7c($sp)
  /* 01180C 80010C0C E7A00078 */      swc1 $f0, 0x78($sp)
  /* 011810 80010C10 E7A00080 */      swc1 $f0, 0x80($sp)
  .L80010C14:
  /* 011814 80010C14 0C0067A8 */       jal func_80019EA0
  /* 011818 80010C18 8FA50088 */        lw $a1, 0x88($sp)
  /* 01181C 80010C1C 8FBF0014 */        lw $ra, 0x14($sp)
  /* 011820 80010C20 27BD0088 */     addiu $sp, $sp, 0x88
  /* 011824 80010C24 03E00008 */        jr $ra
  /* 011828 80010C28 00000000 */       nop 

glabel func_80010C2C
  /* 01182C 80010C2C 27BDFF78 */     addiu $sp, $sp, -0x88
  /* 011830 80010C30 3C0E8004 */       lui $t6, %hi(D_80046A58)
  /* 011834 80010C34 8DCE6A58 */        lw $t6, %lo(D_80046A58)($t6)
  /* 011838 80010C38 AFBF0014 */        sw $ra, 0x14($sp)
  /* 01183C 80010C3C AFA40088 */        sw $a0, 0x88($sp)
  /* 011840 80010C40 AFA60090 */        sw $a2, 0x90($sp)
  /* 011844 80010C44 8DC20074 */        lw $v0, 0x74($t6)
  /* 011848 80010C48 C4A4001C */      lwc1 $f4, 0x1c($a1)
  /* 01184C 80010C4C C4A80024 */      lwc1 $f8, 0x24($a1)
  /* 011850 80010C50 C446003C */      lwc1 $f6, 0x3c($v0)
  /* 011854 80010C54 C44A0044 */      lwc1 $f10, 0x44($v0)
  /* 011858 80010C58 AFA5008C */        sw $a1, 0x8c($sp)
  /* 01185C 80010C5C 46062381 */     sub.s $f14, $f4, $f6
  /* 011860 80010C60 460A4401 */     sub.s $f16, $f8, $f10
  /* 011864 80010C64 460E7102 */     mul.s $f4, $f14, $f14
  /* 011868 80010C68 E7AE0044 */      swc1 $f14, 0x44($sp)
  /* 01186C 80010C6C 46108182 */     mul.s $f6, $f16, $f16
  /* 011870 80010C70 E7B00040 */      swc1 $f16, 0x40($sp)
  /* 011874 80010C74 0C00CD44 */       jal sqrtf
  /* 011878 80010C78 46062300 */     add.s $f12, $f4, $f6
  /* 01187C 80010C7C 44801000 */      mtc1 $zero, $f2
  /* 011880 80010C80 44804000 */      mtc1 $zero, $f8
  /* 011884 80010C84 3C013F80 */       lui $at, (0x3F800000 >> 16) # 1.0
  /* 011888 80010C88 44819000 */      mtc1 $at, $f18 # 1.0 to cop1
  /* 01188C 80010C8C 46080032 */    c.eq.s $f0, $f8
  /* 011890 80010C90 8FA5008C */        lw $a1, 0x8c($sp)
  /* 011894 80010C94 C7AE0044 */      lwc1 $f14, 0x44($sp)
  /* 011898 80010C98 C7B00040 */      lwc1 $f16, 0x40($sp)
  /* 01189C 80010C9C E7A20060 */      swc1 $f2, 0x60($sp)
  /* 0118A0 80010CA0 E7A2004C */      swc1 $f2, 0x4c($sp)
  /* 0118A4 80010CA4 E7A20058 */      swc1 $f2, 0x58($sp)
  /* 0118A8 80010CA8 E7A20074 */      swc1 $f2, 0x74($sp)
  /* 0118AC 80010CAC E7A20064 */      swc1 $f2, 0x64($sp)
  /* 0118B0 80010CB0 E7A20054 */      swc1 $f2, 0x54($sp)
  /* 0118B4 80010CB4 E7A2006C */      swc1 $f2, 0x6c($sp)
  /* 0118B8 80010CB8 E7B2005C */      swc1 $f18, 0x5c($sp)
  /* 0118BC 80010CBC 4501000F */      bc1t .L80010CFC
  /* 0118C0 80010CC0 E7B20084 */      swc1 $f18, 0x84($sp)
  /* 0118C4 80010CC4 3C013F80 */       lui $at, (0x3F800000 >> 16) # 1.0
  /* 0118C8 80010CC8 44815000 */      mtc1 $at, $f10 # 1.0 to cop1
  /* 0118CC 80010CCC 00000000 */       nop 
  /* 0118D0 80010CD0 46005303 */     div.s $f12, $f10, $f0
  /* 0118D4 80010CD4 460C7482 */     mul.s $f18, $f14, $f12
  /* 0118D8 80010CD8 00000000 */       nop 
  /* 0118DC 80010CDC 460C8402 */     mul.s $f16, $f16, $f12
  /* 0118E0 80010CE0 46009107 */     neg.s $f4, $f18
  /* 0118E4 80010CE4 E7B20050 */      swc1 $f18, 0x50($sp)
  /* 0118E8 80010CE8 E7A40068 */      swc1 $f4, 0x68($sp)
  /* 0118EC 80010CEC 46008087 */     neg.s $f2, $f16
  /* 0118F0 80010CF0 E7A20048 */      swc1 $f2, 0x48($sp)
  /* 0118F4 80010CF4 10000008 */         b .L80010D18
  /* 0118F8 80010CF8 E7A20070 */      swc1 $f2, 0x70($sp)
  .L80010CFC:
  /* 0118FC 80010CFC 44809000 */      mtc1 $zero, $f18
  /* 011900 80010D00 3C013F80 */       lui $at, (0x3F800000 >> 16) # 1.0
  /* 011904 80010D04 44818000 */      mtc1 $at, $f16 # 1.0 to cop1
  /* 011908 80010D08 E7B20068 */      swc1 $f18, 0x68($sp)
  /* 01190C 80010D0C E7B20050 */      swc1 $f18, 0x50($sp)
  /* 011910 80010D10 E7B00048 */      swc1 $f16, 0x48($sp)
  /* 011914 80010D14 E7B00070 */      swc1 $f16, 0x70($sp)
  .L80010D18:
  /* 011918 80010D18 8FAF0090 */        lw $t7, 0x90($sp)
  /* 01191C 80010D1C 27A40048 */     addiu $a0, $sp, 0x48
  /* 011920 80010D20 51E00009 */      beql $t7, $zero, .L80010D48
  /* 011924 80010D24 44800000 */      mtc1 $zero, $f0
  /* 011928 80010D28 C4A6001C */      lwc1 $f6, 0x1c($a1)
  /* 01192C 80010D2C E7A60078 */      swc1 $f6, 0x78($sp)
  /* 011930 80010D30 C4A80020 */      lwc1 $f8, 0x20($a1)
  /* 011934 80010D34 E7A8007C */      swc1 $f8, 0x7c($sp)
  /* 011938 80010D38 C4AA0024 */      lwc1 $f10, 0x24($a1)
  /* 01193C 80010D3C 10000006 */         b .L80010D58
  /* 011940 80010D40 E7AA0080 */      swc1 $f10, 0x80($sp)
  /* 011944 80010D44 44800000 */      mtc1 $zero, $f0
  .L80010D48:
  /* 011948 80010D48 00000000 */       nop 
  /* 01194C 80010D4C E7A0007C */      swc1 $f0, 0x7c($sp)
  /* 011950 80010D50 E7A00078 */      swc1 $f0, 0x78($sp)
  /* 011954 80010D54 E7A00080 */      swc1 $f0, 0x80($sp)
  .L80010D58:
  /* 011958 80010D58 0C0067A8 */       jal func_80019EA0
  /* 01195C 80010D5C 8FA50088 */        lw $a1, 0x88($sp)
  /* 011960 80010D60 8FBF0014 */        lw $ra, 0x14($sp)
  /* 011964 80010D64 27BD0088 */     addiu $sp, $sp, 0x88
  /* 011968 80010D68 03E00008 */        jr $ra
  /* 01196C 80010D6C 00000000 */       nop 
