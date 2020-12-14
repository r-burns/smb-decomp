.include "macros.inc"

.section .rodata

# This probably isn't fully correct, but will have to do until more files are
# split from system.s

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
