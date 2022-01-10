.include "macros.inc"

.section .data

glabel D_ovl0_800D5D50
  .incbin "ovl0.raw.bin", 0xE510, 0x4

glabel D_ovl0_800D5D54
  .incbin "ovl0.raw.bin", 0xE514, 0x4

glabel D_ovl0_800D5D58
  .incbin "ovl0.raw.bin", 0xE518, 0x4

# what is this really?
glabel D_ovl0_800D5D5C
  /* E51C 05173C 800D5D5C */
  .asciz "{"
  .balign 4

.section .rodata
# late rodata
glabel D_ovl0_800D5FC0
  /* E780 0519A0 800D5FC0 */
  .4byte 0x40c90fdb # .float 6.2831855

glabel jtbl_ovl0_800D5FC4
  /* E784 0519A4 800D5FC4 */  .4byte jtgt_ovl0_800D0374
  /* E788 0519A8 800D5FC8 */  .4byte jtgt_ovl0_800D0390
  /* E78C 0519AC 800D5FCC */  .4byte jtgt_ovl0_800D03B4
  /* E790 0519B0 800D5FD0 */  .4byte jtgt_ovl0_800D03C4
  /* E794 0519B4 800D5FD4 */  .4byte jtgt_ovl0_800D03D4
  /* E798 0519B8 800D5FD8 */  .4byte jtgt_ovl0_800D03D4

glabel D_ovl0_800D5FDC
  /* E79C 0519BC 800D5FDC */  .4byte jtgt_ovl0_800CF05C
  /* E7A0 0519C0 800D5FE0 */  .4byte jtgt_ovl0_800D0434
  /* E7A4 0519C4 800D5FE4 */  .4byte jtgt_ovl0_800D0434
  /* E7A8 0519C8 800D5FE8 */  .4byte jtgt_ovl0_800D0434
  /* E7AC 0519CC 800D5FEC */  .4byte jtgt_ovl0_800D0434
  /* E7B0 0519D0 800D5FF0 */  .4byte jtgt_ovl0_800D0434
  /* E7B4 0519D4 800D5FF4 */  .4byte jtgt_ovl0_800D0434
  /* E7B8 0519D8 800D5FF8 */  .4byte jtgt_ovl0_800D0434
  /* E7BC 0519DC 800D5FFC */  .4byte jtgt_ovl0_800CF0B4
  /* E7C0 0519E0 800D6000 */  .4byte jtgt_ovl0_800D0434
  /* E7C4 0519E4 800D6004 */  .4byte jtgt_ovl0_800D0434
  /* E7C8 0519E8 800D6008 */  .4byte jtgt_ovl0_800D0434
  /* E7CC 0519EC 800D600C */  .4byte jtgt_ovl0_800D0434
  /* E7D0 0519F0 800D6010 */  .4byte jtgt_ovl0_800D0434
  /* E7D4 0519F4 800D6014 */  .4byte jtgt_ovl0_800D0434
  /* E7D8 0519F8 800D6018 */  .4byte jtgt_ovl0_800D0434
  /* E7DC 0519FC 800D601C */  .4byte jtgt_ovl0_800CF13C
  /* E7E0 051A00 800D6020 */  .4byte jtgt_ovl0_800D0434
  /* E7E4 051A04 800D6024 */  .4byte jtgt_ovl0_800D0434
  /* E7E8 051A08 800D6028 */  .4byte jtgt_ovl0_800D0434
  /* E7EC 051A0C 800D602C */  .4byte jtgt_ovl0_800D0434
  /* E7F0 051A10 800D6030 */  .4byte jtgt_ovl0_800D0434
  /* E7F4 051A14 800D6034 */  .4byte jtgt_ovl0_800D0434
  /* E7F8 051A18 800D6038 */  .4byte jtgt_ovl0_800D0434
  /* E7FC 051A1C 800D603C */  .4byte jtgt_ovl0_800CF194
  /* E800 051A20 800D6040 */  .4byte jtgt_ovl0_800D0434
  /* E804 051A24 800D6044 */  .4byte jtgt_ovl0_800D0434
  /* E808 051A28 800D6048 */  .4byte jtgt_ovl0_800D0434
  /* E80C 051A2C 800D604C */  .4byte jtgt_ovl0_800D0434
  /* E810 051A30 800D6050 */  .4byte jtgt_ovl0_800D0434
  /* E814 051A34 800D6054 */  .4byte jtgt_ovl0_800D0434
  /* E818 051A38 800D6058 */  .4byte jtgt_ovl0_800D0434
  /* E81C 051A3C 800D605C */  .4byte jtgt_ovl0_800CF21C
  /* E820 051A40 800D6060 */  .4byte jtgt_ovl0_800CF25C
  /* E824 051A44 800D6064 */  .4byte jtgt_ovl0_800CF26C
  /* E828 051A48 800D6068 */  .4byte jtgt_ovl0_800CF2B8
  /* E82C 051A4C 800D606C */  .4byte jtgt_ovl0_800CF308
  /* E830 051A50 800D6070 */  .4byte jtgt_ovl0_800CF38C
  /* E834 051A54 800D6074 */  .4byte jtgt_ovl0_800CF3F4
  /* E838 051A58 800D6078 */  .4byte jtgt_ovl0_800CF44C
  /* E83C 051A5C 800D607C */  .4byte jtgt_ovl0_800CF494
  /* E840 051A60 800D6080 */  .4byte jtgt_ovl0_800CF510
  /* E844 051A64 800D6084 */  .4byte jtgt_ovl0_800CF534
  /* E848 051A68 800D6088 */  .4byte jtgt_ovl0_800CF5F4
  /* E84C 051A6C 800D608C */  .4byte jtgt_ovl0_800CF638
  /* E850 051A70 800D6090 */  .4byte jtgt_ovl0_800CF698
  /* E854 051A74 800D6094 */  .4byte jtgt_ovl0_800CF6A8
  /* E858 051A78 800D6098 */  .4byte jtgt_ovl0_800CF6BC
  /* E85C 051A7C 800D609C */  .4byte jtgt_ovl0_800CF6DC
  /* E860 051A80 800D60A0 */  .4byte jtgt_ovl0_800CF6FC
  /* E864 051A84 800D60A4 */  .4byte jtgt_ovl0_800CF70C
  /* E868 051A88 800D60A8 */  .4byte jtgt_ovl0_800CF71C
  /* E86C 051A8C 800D60AC */  .4byte jtgt_ovl0_800CF730
  /* E870 051A90 800D60B0 */  .4byte jtgt_ovl0_800CF740
  /* E874 051A94 800D60B4 */  .4byte jtgt_ovl0_800CF750
  /* E878 051A98 800D60B8 */  .4byte jtgt_ovl0_800CF764
  /* E87C 051A9C 800D60BC */  .4byte jtgt_ovl0_800CF78C
  /* E880 051AA0 800D60C0 */  .4byte jtgt_ovl0_800CF7C4
  /* E884 051AA4 800D60C4 */  .4byte jtgt_ovl0_800CF860
  /* E888 051AA8 800D60C8 */  .4byte jtgt_ovl0_800CFC28
  /* E88C 051AAC 800D60CC */  .4byte jtgt_ovl0_800CFFF0
  /* E890 051AB0 800D60D0 */  .4byte jtgt_ovl0_800D00F0
  /* E894 051AB4 800D60D4 */  .4byte jtgt_ovl0_800D018C
  /* E898 051AB8 800D60D8 */  .4byte jtgt_ovl0_800D01E8
  /* E89C 051ABC 800D60DC */  .4byte jtgt_ovl0_800D020C
  /* E8A0 051AC0 800D60E0 */  .4byte jtgt_ovl0_800D0434
  /* E8A4 051AC4 800D60E4 */  .4byte jtgt_ovl0_800D0434
  /* E8A8 051AC8 800D60E8 */  .4byte jtgt_ovl0_800D0434
  /* E8AC 051ACC 800D60EC */  .4byte jtgt_ovl0_800D0434
  /* E8B0 051AD0 800D60F0 */  .4byte jtgt_ovl0_800D0434
  /* E8B4 051AD4 800D60F4 */  .4byte jtgt_ovl0_800D0434
  /* E8B8 051AD8 800D60F8 */  .4byte jtgt_ovl0_800D0434
  /* E8BC 051ADC 800D60FC */  .4byte jtgt_ovl0_800D0434
  /* E8C0 051AE0 800D6100 */  .4byte jtgt_ovl0_800D0434
  /* E8C4 051AE4 800D6104 */  .4byte jtgt_ovl0_800D0434
  /* E8C8 051AE8 800D6108 */  .4byte jtgt_ovl0_800D0434
  /* E8CC 051AEC 800D610C */  .4byte jtgt_ovl0_800D0434
  /* E8D0 051AF0 800D6110 */  .4byte jtgt_ovl0_800D0434
  /* E8D4 051AF4 800D6114 */  .4byte jtgt_ovl0_800D0434
  /* E8D8 051AF8 800D6118 */  .4byte jtgt_ovl0_800D0434
  /* E8DC 051AFC 800D611C */  .4byte jtgt_ovl0_800D02C0

glabel D_ovl0_800D6120
  /* E8E0 051B00 800D6120 */
  .4byte 0x4422f983 # .float 651.8986

glabel D_ovl0_800D6124
  /* E8E4 051B04 800D6124 */
  .4byte 0x4422f983 # .float 651.8986

glabel D_ovl0_800D6128
  /* E8E8 051B08 800D6128 */
  .4byte 0x4422f983 # .float 651.8986

glabel D_ovl0_800D612C
  /* E8EC 051B0C 800D612C */
  .4byte 0x4422f983 # .float 651.8986

glabel jtbl_ovl0_800D6130
  /* E8F0 051B10 800D6130 */  .4byte jtgt_ovl0_800D0DDC
  /* E8F4 051B14 800D6134 */  .4byte jtgt_ovl0_800D0E10
  /* E8F8 051B18 800D6138 */  .4byte jtgt_ovl0_800D0E44
  /* E8FC 051B1C 800D613C */  .4byte jtgt_ovl0_800D0E80
  /* E900 051B20 800D6140 */  .4byte jtgt_ovl0_800D0E80
  /* E904 051B24 800D6144 */  .4byte jtgt_ovl0_800D0ECC
  /* E908 051B28 800D6148 */  .4byte jtgt_ovl0_800D0ECC
  /* E90C 051B2C 800D614C */  .4byte jtgt_ovl0_800D0F14
  /* E910 051B30 800D6150 */  .4byte jtgt_ovl0_800D0F14
  /* E914 051B34 800D6154 */  .4byte jtgt_ovl0_800D0E80
  /* E918 051B38 800D6158 */  .4byte jtgt_ovl0_800D0E80
  /* E91C 051B3C 800D615C */  .4byte jtgt_ovl0_800D0ECC
  /* E920 051B40 800D6160 */  .4byte jtgt_ovl0_800D0ECC
  /* E924 051B44 800D6164 */  .4byte jtgt_ovl0_800D0F14
  /* E928 051B48 800D6168 */  .4byte jtgt_ovl0_800D0F14

glabel D_ovl0_800D616C
  /* E92C 051B4C 800D616C */  .4byte jtgt_ovl0_800D1874
  /* E930 051B50 800D6170 */  .4byte jtgt_ovl0_800D18B4
  /* E934 051B54 800D6174 */  .4byte jtgt_ovl0_800D187C
  /* E938 051B58 800D6178 */  .4byte jtgt_ovl0_800D18B4
  /* E93C 051B5C 800D617C */  .4byte jtgt_ovl0_800D18B4
  /* E940 051B60 800D6180 */  .4byte jtgt_ovl0_800D18B4
  /* E944 051B64 800D6184 */  .4byte jtgt_ovl0_800D1884
  /* E948 051B68 800D6188 */  .4byte jtgt_ovl0_800D18B4
  /* E94C 051B6C 800D618C */  .4byte jtgt_ovl0_800D18B4
  /* E950 051B70 800D6190 */  .4byte jtgt_ovl0_800D18B4
  /* E954 051B74 800D6194 */  .4byte jtgt_ovl0_800D18B4
  /* E958 051B78 800D6198 */  .4byte jtgt_ovl0_800D18B4
  /* E95C 051B7C 800D619C */  .4byte jtgt_ovl0_800D18B4
  /* E960 051B80 800D61A0 */  .4byte jtgt_ovl0_800D18B4
  /* E964 051B84 800D61A4 */  .4byte jtgt_ovl0_800D188C
  /* E968 051B88 800D61A8 */  .4byte jtgt_ovl0_800D18B4
  /* E96C 051B8C 800D61AC */  .4byte jtgt_ovl0_800D18B4
  /* E970 051B90 800D61B0 */  .4byte jtgt_ovl0_800D18B4
  /* E974 051B94 800D61B4 */  .4byte jtgt_ovl0_800D18B4
  /* E978 051B98 800D61B8 */  .4byte jtgt_ovl0_800D18B4
  /* E97C 051B9C 800D61BC */  .4byte jtgt_ovl0_800D18B4
  /* E980 051BA0 800D61C0 */  .4byte jtgt_ovl0_800D18B4
  /* E984 051BA4 800D61C4 */  .4byte jtgt_ovl0_800D18B4
  /* E988 051BA8 800D61C8 */  .4byte jtgt_ovl0_800D18B4
  /* E98C 051BAC 800D61CC */  .4byte jtgt_ovl0_800D18B4
  /* E990 051BB0 800D61D0 */  .4byte jtgt_ovl0_800D18B4
  /* E994 051BB4 800D61D4 */  .4byte jtgt_ovl0_800D18B4
  /* E998 051BB8 800D61D8 */  .4byte jtgt_ovl0_800D18B4
  /* E99C 051BBC 800D61DC */  .4byte jtgt_ovl0_800D18B4
  /* E9A0 051BC0 800D61E0 */  .4byte jtgt_ovl0_800D18B4
  /* E9A4 051BC4 800D61E4 */  .4byte jtgt_ovl0_800D1894

glabel D_ovl0_800D61E8
  /* E9A8 051BC8 800D61E8 */  .4byte jtgt_ovl0_800D1944
  /* E9AC 051BCC 800D61EC */  .4byte jtgt_ovl0_800D1984
  /* E9B0 051BD0 800D61F0 */  .4byte jtgt_ovl0_800D194C
  /* E9B4 051BD4 800D61F4 */  .4byte jtgt_ovl0_800D1984
  /* E9B8 051BD8 800D61F8 */  .4byte jtgt_ovl0_800D1984
  /* E9BC 051BDC 800D61FC */  .4byte jtgt_ovl0_800D1984
  /* E9C0 051BE0 800D6200 */  .4byte jtgt_ovl0_800D1954
  /* E9C4 051BE4 800D6204 */  .4byte jtgt_ovl0_800D1984
  /* E9C8 051BE8 800D6208 */  .4byte jtgt_ovl0_800D1984
  /* E9CC 051BEC 800D620C */  .4byte jtgt_ovl0_800D1984
  /* E9D0 051BF0 800D6210 */  .4byte jtgt_ovl0_800D1984
  /* E9D4 051BF4 800D6214 */  .4byte jtgt_ovl0_800D1984
  /* E9D8 051BF8 800D6218 */  .4byte jtgt_ovl0_800D1984
  /* E9DC 051BFC 800D621C */  .4byte jtgt_ovl0_800D1984
  /* E9E0 051C00 800D6220 */  .4byte jtgt_ovl0_800D195C
  /* E9E4 051C04 800D6224 */  .4byte jtgt_ovl0_800D1984
  /* E9E8 051C08 800D6228 */  .4byte jtgt_ovl0_800D1984
  /* E9EC 051C0C 800D622C */  .4byte jtgt_ovl0_800D1984
  /* E9F0 051C10 800D6230 */  .4byte jtgt_ovl0_800D1984
  /* E9F4 051C14 800D6234 */  .4byte jtgt_ovl0_800D1984
  /* E9F8 051C18 800D6238 */  .4byte jtgt_ovl0_800D1984
  /* E9FC 051C1C 800D623C */  .4byte jtgt_ovl0_800D1984
  /* EA00 051C20 800D6240 */  .4byte jtgt_ovl0_800D1984
  /* EA04 051C24 800D6244 */  .4byte jtgt_ovl0_800D1984
  /* EA08 051C28 800D6248 */  .4byte jtgt_ovl0_800D1984
  /* EA0C 051C2C 800D624C */  .4byte jtgt_ovl0_800D1984
  /* EA10 051C30 800D6250 */  .4byte jtgt_ovl0_800D1984
  /* EA14 051C34 800D6254 */  .4byte jtgt_ovl0_800D1984
  /* EA18 051C38 800D6258 */  .4byte jtgt_ovl0_800D1984
  /* EA1C 051C3C 800D625C */  .4byte jtgt_ovl0_800D1984
  /* EA20 051C40 800D6260 */  .4byte jtgt_ovl0_800D1964

glabel D_ovl0_800D6264
  /* EA24 051C44 800D6264 */
  .4byte 0x40c90fdb # .float 6.2831855

glabel D_ovl0_800D6268
  /* EA28 051C48 800D6268 */
  .4byte 0x40c90fdb # .float 6.2831855

glabel jtbl_ovl0_800D626C
  /* EA2C 051C4C 800D626C */  .4byte jtgt_ovl0_800D2E9C
  /* EA30 051C50 800D6270 */  .4byte jtgt_ovl0_800D31E0
  /* EA34 051C54 800D6274 */  .4byte jtgt_ovl0_800D3294
  /* EA38 051C58 800D6278 */  .4byte jtgt_ovl0_800D2E9C
  /* EA3C 051C5C 800D627C */  .4byte jtgt_ovl0_800D2E9C

glabel D_ovl0_800D6280
  /* EA40 051C60 800D6280 */
  .4byte 0x40c90fdb # .float 6.2831855

glabel jtbl_ovl0_800D6284
  /* EA44 051C64 800D6284 */  .4byte jtgt_ovl0_800D3804
  /* EA48 051C68 800D6288 */  .4byte jtgt_ovl0_800D381C
  /* EA4C 051C6C 800D628C */  .4byte jtgt_ovl0_800D3850
  /* EA50 051C70 800D6290 */  .4byte jtgt_ovl0_800D3804
  /* EA54 051C74 800D6294 */  .4byte jtgt_ovl0_800D3804

glabel D_ovl0_800D6298
  /* EA58 051C78 800D6298 */
  .4byte 0x40c90fdb # .float 6.2831855
  .incbin "ovl0.raw.bin", 0xEA5C, 0x4


.section .bss

glabel D_ovl0_800D6350
    .space 8
glabel D_ovl0_800D6358
    .space 64
glabel D_ovl0_800D6398
    .space 4
glabel D_ovl0_800D639C
    .space 4
glabel D_ovl0_800D63A0
    .space 32
glabel D_ovl0_800D63C0
    .space 32
glabel D_ovl0_800D63E0
    .space 32
glabel D_ovl0_800D6400
    .space 32
glabel D_ovl0_800D6420
    .space 32
glabel D_ovl0_800D6440
    .space 4
glabel D_ovl0_800D6444
    .space 4
glabel D_ovl0_800D6448
    .space 2
glabel D_ovl0_800D644A
    .space 2
glabel D_ovl0_800D644C
    .space 2
glabel D_ovl0_800D644E
    .space 2
glabel D_ovl0_800D6450
    .space 2
glabel D_ovl0_800D6452
    .space 2
glabel D_ovl0_800D6454
    .space 4
glabel D_ovl0_800D6458
    .space 8

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text

.align 4

# Likely start of new file
glabel func_ovl0_800CE040
  /* 049A20 800CE040 27BDFFD8 */     addiu $sp, $sp, -0x28
  /* 049A24 800CE044 AFB30020 */        sw $s3, 0x20($sp)
  /* 049A28 800CE048 3C13800D */       lui $s3, %hi(D_ovl0_800D6454)
  /* 049A2C 800CE04C 26736454 */     addiu $s3, $s3, %lo(D_ovl0_800D6454)
  /* 049A30 800CE050 AFB2001C */        sw $s2, 0x1c($sp)
  /* 049A34 800CE054 AFB10018 */        sw $s1, 0x18($sp)
  /* 049A38 800CE058 AFB00014 */        sw $s0, 0x14($sp)
  /* 049A3C 800CE05C 00808825 */        or $s1, $a0, $zero
  /* 049A40 800CE060 00A09025 */        or $s2, $a1, $zero
  /* 049A44 800CE064 AFBF0024 */        sw $ra, 0x24($sp)
  /* 049A48 800CE068 AE600000 */        sw $zero, ($s3) # D_ovl0_800D6454 + 0
  /* 049A4C 800CE06C 1880000E */      blez $a0, .L800CE0A8
  /* 049A50 800CE070 00008025 */        or $s0, $zero, $zero
  .L800CE074:
  /* 049A54 800CE074 02402025 */        or $a0, $s2, $zero
  /* 049A58 800CE078 0C001260 */       jal func_80004980
  /* 049A5C 800CE07C 24050004 */     addiu $a1, $zero, 4
  /* 049A60 800CE080 54400004 */      bnel $v0, $zero, .L800CE094
  /* 049A64 800CE084 8E6E0000 */        lw $t6, ($s3) # D_ovl0_800D6454 + 0
  /* 049A68 800CE088 1000000C */         b .L800CE0BC
  /* 049A6C 800CE08C 02001025 */        or $v0, $s0, $zero
  /* 049A70 800CE090 8E6E0000 */        lw $t6, ($s3) # D_ovl0_800D6454 + 0
  .L800CE094:
  /* 049A74 800CE094 26100001 */     addiu $s0, $s0, 1
  /* 049A78 800CE098 3C01800D */       lui $at, %hi(D_ovl0_800D6454)
  /* 049A7C 800CE09C AC4E0000 */        sw $t6, ($v0)
  /* 049A80 800CE0A0 1611FFF4 */       bne $s0, $s1, .L800CE074
  /* 049A84 800CE0A4 AC226454 */        sw $v0, %lo(D_ovl0_800D6454)($at)
  .L800CE0A8:
  /* 049A88 800CE0A8 3C01800D */       lui $at, %hi(D_ovl0_800D644C)
  /* 049A8C 800CE0AC A420644C */        sh $zero, %lo(D_ovl0_800D644C)($at)
  /* 049A90 800CE0B0 3C01800D */       lui $at, %hi(D_ovl0_800D6452)
  /* 049A94 800CE0B4 A4206452 */        sh $zero, %lo(D_ovl0_800D6452)($at)
  /* 049A98 800CE0B8 02001025 */        or $v0, $s0, $zero
  .L800CE0BC:
  /* 049A9C 800CE0BC 8FBF0024 */        lw $ra, 0x24($sp)
  /* 049AA0 800CE0C0 8FB00014 */        lw $s0, 0x14($sp)
  /* 049AA4 800CE0C4 8FB10018 */        lw $s1, 0x18($sp)
  /* 049AA8 800CE0C8 8FB2001C */        lw $s2, 0x1c($sp)
  /* 049AAC 800CE0CC 8FB30020 */        lw $s3, 0x20($sp)
  /* 049AB0 800CE0D0 03E00008 */        jr $ra
  /* 049AB4 800CE0D4 27BD0028 */     addiu $sp, $sp, 0x28

glabel func_ovl0_800CE0D8
  /* 049AB8 800CE0D8 3C02800D */       lui $v0, %hi(D_ovl0_800D6454)
  /* 049ABC 800CE0DC 24426454 */     addiu $v0, $v0, %lo(D_ovl0_800D6454)
  /* 049AC0 800CE0E0 8C430000 */        lw $v1, ($v0) # D_ovl0_800D6454 + 0
  /* 049AC4 800CE0E4 AFA40000 */        sw $a0, ($sp)
  /* 049AC8 800CE0E8 AFA50004 */        sw $a1, 4($sp)
  /* 049ACC 800CE0EC 30A5FFFF */      andi $a1, $a1, 0xffff
  /* 049AD0 800CE0F0 10600023 */      beqz $v1, .L800CE180
  /* 049AD4 800CE0F4 308400FF */      andi $a0, $a0, 0xff
  /* 049AD8 800CE0F8 8C6E0000 */        lw $t6, ($v1)
  /* 049ADC 800CE0FC 240F0001 */     addiu $t7, $zero, 1
  /* 049AE0 800CE100 3C18800D */       lui $t8, %hi(D_ovl0_800D5D5C)
  /* 049AE4 800CE104 AC4E0000 */        sw $t6, ($v0) # D_ovl0_800D6454 + 0
  /* 049AE8 800CE108 A46F002A */        sh $t7, 0x2a($v1)
  /* 049AEC 800CE10C 93185D5C */       lbu $t8, %lo(D_ovl0_800D5D5C)($t8)
  /* 049AF0 800CE110 44800000 */      mtc1 $zero, $f0
  /* 049AF4 800CE114 3C013F80 */       lui $at, (0x3F800000 >> 16) # 1.0
  /* 049AF8 800CE118 44811000 */      mtc1 $at, $f2 # 1.0 to cop1
  /* 049AFC 800CE11C A0640028 */        sb $a0, 0x28($v1)
  /* 049B00 800CE120 3C04800D */       lui $a0, %hi(D_ovl0_800D644C)
  /* 049B04 800CE124 A46500B8 */        sh $a1, 0xb8($v1)
  /* 049B08 800CE128 AC6000B4 */        sw $zero, 0xb4($v1)
  /* 049B0C 800CE12C 2484644C */     addiu $a0, $a0, %lo(D_ovl0_800D644C)
  /* 049B10 800CE130 A0780029 */        sb $t8, 0x29($v1)
  /* 049B14 800CE134 E460000C */      swc1 $f0, 0xc($v1)
  /* 049B18 800CE138 E4600008 */      swc1 $f0, 8($v1)
  /* 049B1C 800CE13C E4600004 */      swc1 $f0, 4($v1)
  /* 049B20 800CE140 E4600018 */      swc1 $f0, 0x18($v1)
  /* 049B24 800CE144 E4600014 */      swc1 $f0, 0x14($v1)
  /* 049B28 800CE148 E4600010 */      swc1 $f0, 0x10($v1)
  /* 049B2C 800CE14C E4620024 */      swc1 $f2, 0x24($v1)
  /* 049B30 800CE150 E4620020 */      swc1 $f2, 0x20($v1)
  /* 049B34 800CE154 E462001C */      swc1 $f2, 0x1c($v1)
  /* 049B38 800CE158 94990000 */       lhu $t9, ($a0) # D_ovl0_800D644C + 0
  /* 049B3C 800CE15C 3C05800D */       lui $a1, %hi(D_ovl0_800D6452)
  /* 049B40 800CE160 24A56452 */     addiu $a1, $a1, %lo(D_ovl0_800D6452)
  /* 049B44 800CE164 94A90000 */       lhu $t1, ($a1) # D_ovl0_800D6452 + 0
  /* 049B48 800CE168 27280001 */     addiu $t0, $t9, 1
  /* 049B4C 800CE16C 3102FFFF */      andi $v0, $t0, 0xffff
  /* 049B50 800CE170 0122082A */       slt $at, $t1, $v0
  /* 049B54 800CE174 10200002 */      beqz $at, .L800CE180
  /* 049B58 800CE178 A4880000 */        sh $t0, ($a0) # D_ovl0_800D644C + 0
  /* 049B5C 800CE17C A4A20000 */        sh $v0, ($a1) # D_ovl0_800D6452 + 0
  .L800CE180:
  /* 049B60 800CE180 03E00008 */        jr $ra
  /* 049B64 800CE184 00601025 */        or $v0, $v1, $zero

glabel func_ovl0_800CE188
  /* 049B68 800CE188 27BDFFE8 */     addiu $sp, $sp, -0x18
  /* 049B6C 800CE18C AFBF0014 */        sw $ra, 0x14($sp)
  /* 049B70 800CE190 8C8200B4 */        lw $v0, 0xb4($a0)
  /* 049B74 800CE194 10400004 */      beqz $v0, .L800CE1A8
  /* 049B78 800CE198 00000000 */       nop 
  /* 049B7C 800CE19C 0040F809 */      jalr $v0
  /* 049B80 800CE1A0 AFA40018 */        sw $a0, 0x18($sp)
  /* 049B84 800CE1A4 8FA40018 */        lw $a0, 0x18($sp)
  .L800CE1A8:
  /* 049B88 800CE1A8 3C02800D */       lui $v0, %hi(D_ovl0_800D6454)
  /* 049B8C 800CE1AC 24426454 */     addiu $v0, $v0, %lo(D_ovl0_800D6454)
  /* 049B90 800CE1B0 8C4E0000 */        lw $t6, ($v0) # D_ovl0_800D6454 + 0
  /* 049B94 800CE1B4 3C03800D */       lui $v1, %hi(D_ovl0_800D644C)
  /* 049B98 800CE1B8 2463644C */     addiu $v1, $v1, %lo(D_ovl0_800D644C)
  /* 049B9C 800CE1BC AC8E0000 */        sw $t6, ($a0)
  /* 049BA0 800CE1C0 946F0000 */       lhu $t7, ($v1) # D_ovl0_800D644C + 0
  /* 049BA4 800CE1C4 8FBF0014 */        lw $ra, 0x14($sp)
  /* 049BA8 800CE1C8 AC440000 */        sw $a0, ($v0) # D_ovl0_800D6454 + 0
  /* 049BAC 800CE1CC 25F8FFFF */     addiu $t8, $t7, -1
  /* 049BB0 800CE1D0 A4780000 */        sh $t8, ($v1) # D_ovl0_800D644C + 0
  /* 049BB4 800CE1D4 03E00008 */        jr $ra
  /* 049BB8 800CE1D8 27BD0018 */     addiu $sp, $sp, 0x18

glabel func_ovl0_800CE1DC
  /* 049BBC 800CE1DC 27BDFFE8 */     addiu $sp, $sp, -0x18
  /* 049BC0 800CE1E0 AFA40018 */        sw $a0, 0x18($sp)
  /* 049BC4 800CE1E4 8FAE0018 */        lw $t6, 0x18($sp)
  /* 049BC8 800CE1E8 AFBF0014 */        sw $ra, 0x14($sp)
  /* 049BCC 800CE1EC AFA5001C */        sw $a1, 0x1c($sp)
  /* 049BD0 800CE1F0 00A03025 */        or $a2, $a1, $zero
  /* 049BD4 800CE1F4 30C400FF */      andi $a0, $a2, 0xff
  /* 049BD8 800CE1F8 0C033836 */       jal func_ovl0_800CE0D8
  /* 049BDC 800CE1FC 95C50004 */       lhu $a1, 4($t6)
  /* 049BE0 800CE200 8FAF0018 */        lw $t7, 0x18($sp)
  /* 049BE4 800CE204 ADE2005C */        sw $v0, 0x5c($t7)
  /* 049BE8 800CE208 8FBF0014 */        lw $ra, 0x14($sp)
  /* 049BEC 800CE20C 27BD0018 */     addiu $sp, $sp, 0x18
  /* 049BF0 800CE210 03E00008 */        jr $ra
  /* 049BF4 800CE214 00000000 */       nop 

  /* 049BF8 800CE218 27BDFFE8 */     addiu $sp, $sp, -0x18
  /* 049BFC 800CE21C AFA40018 */        sw $a0, 0x18($sp)
  /* 049C00 800CE220 8FAE0018 */        lw $t6, 0x18($sp)
  /* 049C04 800CE224 AFBF0014 */        sw $ra, 0x14($sp)
  /* 049C08 800CE228 AFA5001C */        sw $a1, 0x1c($sp)
  /* 049C0C 800CE22C 00A03025 */        or $a2, $a1, $zero
  /* 049C10 800CE230 30C400FF */      andi $a0, $a2, 0xff
  /* 049C14 800CE234 0C033836 */       jal func_ovl0_800CE0D8
  /* 049C18 800CE238 95C50004 */       lhu $a1, 4($t6)
  /* 049C1C 800CE23C 8FAF0018 */        lw $t7, 0x18($sp)
  /* 049C20 800CE240 ADE2004C */        sw $v0, 0x4c($t7)
  /* 049C24 800CE244 8FBF0014 */        lw $ra, 0x14($sp)
  /* 049C28 800CE248 27BD0018 */     addiu $sp, $sp, 0x18
  /* 049C2C 800CE24C 03E00008 */        jr $ra
  /* 049C30 800CE250 00000000 */       nop 

glabel func_ovl0_800CE254
  /* 049C34 800CE254 28810008 */      slti $at, $a0, 8
  /* 049C38 800CE258 1020006D */      beqz $at, .L800CE410
  /* 049C3C 800CE25C 00C03825 */        or $a3, $a2, $zero
  /* 049C40 800CE260 8CAF0000 */        lw $t7, ($a1)
  /* 049C44 800CE264 3C0E800D */       lui $t6, %hi(D_ovl0_800D63C0)
  /* 049C48 800CE268 25CE63C0 */     addiu $t6, $t6, %lo(D_ovl0_800D63C0)
  /* 049C4C 800CE26C 00041080 */       sll $v0, $a0, 2
  /* 049C50 800CE270 004E1821 */      addu $v1, $v0, $t6
  /* 049C54 800CE274 AC6F0000 */        sw $t7, ($v1)
  /* 049C58 800CE278 8CF90000 */        lw $t9, ($a3)
  /* 049C5C 800CE27C 3C18800D */       lui $t8, %hi(D_ovl0_800D63E0)
  /* 049C60 800CE280 271863E0 */     addiu $t8, $t8, %lo(D_ovl0_800D63E0)
  /* 049C64 800CE284 00583021 */      addu $a2, $v0, $t8
  /* 049C68 800CE288 3C01800D */       lui $at, %hi(D_ovl0_800D6400)
  /* 049C6C 800CE28C 00220821 */      addu $at, $at, $v0
  /* 049C70 800CE290 24AD0004 */     addiu $t5, $a1, 4
  /* 049C74 800CE294 ACD90000 */        sw $t9, ($a2)
  /* 049C78 800CE298 AC2D6400 */        sw $t5, %lo(D_ovl0_800D6400)($at)
  /* 049C7C 800CE29C 8C780000 */        lw $t8, ($v1)
  /* 049C80 800CE2A0 3C0E800D */       lui $t6, %hi(D_ovl0_800D6420)
  /* 049C84 800CE2A4 25CE6420 */     addiu $t6, $t6, %lo(D_ovl0_800D6420)
  /* 049C88 800CE2A8 004E4021 */      addu $t0, $v0, $t6
  /* 049C8C 800CE2AC 24EF0004 */     addiu $t7, $a3, 4
  /* 049C90 800CE2B0 AD0F0000 */        sw $t7, ($t0)
  /* 049C94 800CE2B4 1B00000C */      blez $t8, .L800CE2E8
  /* 049C98 800CE2B8 24090001 */     addiu $t1, $zero, 1
  /* 049C9C 800CE2BC 24A20004 */     addiu $v0, $a1, 4
  /* 049CA0 800CE2C0 8C590000 */        lw $t9, ($v0)
  .L800CE2C4:
  /* 049CA4 800CE2C4 25290001 */     addiu $t1, $t1, 1
  /* 049CA8 800CE2C8 24420004 */     addiu $v0, $v0, 4
  /* 049CAC 800CE2CC 03256821 */      addu $t5, $t9, $a1
  /* 049CB0 800CE2D0 AC4DFFFC */        sw $t5, -4($v0)
  /* 049CB4 800CE2D4 8C6E0000 */        lw $t6, ($v1)
  /* 049CB8 800CE2D8 01C9082A */       slt $at, $t6, $t1
  /* 049CBC 800CE2DC 5020FFF9 */      beql $at, $zero, .L800CE2C4
  /* 049CC0 800CE2E0 8C590000 */        lw $t9, ($v0)
  /* 049CC4 800CE2E4 24090001 */     addiu $t1, $zero, 1
  .L800CE2E8:
  /* 049CC8 800CE2E8 8CC20000 */        lw $v0, ($a2)
  /* 049CCC 800CE2EC 24E30004 */     addiu $v1, $a3, 4
  /* 049CD0 800CE2F0 240C0002 */     addiu $t4, $zero, 2
  /* 049CD4 800CE2F4 1840000A */      blez $v0, .L800CE320
  /* 049CD8 800CE2F8 00000000 */       nop 
  /* 049CDC 800CE2FC 8C6F0000 */        lw $t7, ($v1)
  .L800CE300:
  /* 049CE0 800CE300 25290001 */     addiu $t1, $t1, 1
  /* 049CE4 800CE304 24630004 */     addiu $v1, $v1, 4
  /* 049CE8 800CE308 01E7C021 */      addu $t8, $t7, $a3
  /* 049CEC 800CE30C AC78FFFC */        sw $t8, -4($v1)
  /* 049CF0 800CE310 8CC20000 */        lw $v0, ($a2)
  /* 049CF4 800CE314 0049082A */       slt $at, $v0, $t1
  /* 049CF8 800CE318 5020FFF9 */      beql $at, $zero, .L800CE300
  /* 049CFC 800CE31C 8C6F0000 */        lw $t7, ($v1)
  .L800CE320:
  /* 049D00 800CE320 1840003B */      blez $v0, .L800CE410
  /* 049D04 800CE324 00004825 */        or $t1, $zero, $zero
  /* 049D08 800CE328 00001025 */        or $v0, $zero, $zero
  /* 049D0C 800CE32C 8D190000 */        lw $t9, ($t0)
  .L800CE330:
  /* 049D10 800CE330 00001825 */        or $v1, $zero, $zero
  /* 049D14 800CE334 00005025 */        or $t2, $zero, $zero
  /* 049D18 800CE338 03226821 */      addu $t5, $t9, $v0
  /* 049D1C 800CE33C 8DA40000 */        lw $a0, ($t5)
  /* 049D20 800CE340 8C850000 */        lw $a1, ($a0)
  /* 049D24 800CE344 10A0000D */      beqz $a1, .L800CE37C
  /* 049D28 800CE348 008A5821 */      addu $t3, $a0, $t2
  .L800CE34C:
  /* 049D2C 800CE34C 8D6E0018 */        lw $t6, 0x18($t3)
  /* 049D30 800CE350 24630001 */     addiu $v1, $v1, 1
  /* 049D34 800CE354 254A0004 */     addiu $t2, $t2, 4
  /* 049D38 800CE358 01C77821 */      addu $t7, $t6, $a3
  /* 049D3C 800CE35C AD6F0018 */        sw $t7, 0x18($t3)
  /* 049D40 800CE360 8D180000 */        lw $t8, ($t0)
  /* 049D44 800CE364 0302C821 */      addu $t9, $t8, $v0
  /* 049D48 800CE368 8F240000 */        lw $a0, ($t9)
  /* 049D4C 800CE36C 8C850000 */        lw $a1, ($a0)
  /* 049D50 800CE370 0065082B */      sltu $at, $v1, $a1
  /* 049D54 800CE374 5420FFF5 */      bnel $at, $zero, .L800CE34C
  /* 049D58 800CE378 008A5821 */      addu $t3, $a0, $t2
  .L800CE37C:
  /* 049D5C 800CE37C 8C8D0004 */        lw $t5, 4($a0)
  /* 049D60 800CE380 558D001E */      bnel $t4, $t5, .L800CE3FC
  /* 049D64 800CE384 8CD80000 */        lw $t8, ($a2)
  /* 049D68 800CE388 8C8E0014 */        lw $t6, 0x14($a0)
  /* 049D6C 800CE38C 0005C080 */       sll $t8, $a1, 2
  /* 049D70 800CE390 00985821 */      addu $t3, $a0, $t8
  /* 049D74 800CE394 31CF0001 */      andi $t7, $t6, 1
  /* 049D78 800CE398 11E00005 */      beqz $t7, .L800CE3B0
  /* 049D7C 800CE39C 00057040 */       sll $t6, $a1, 1
  /* 049D80 800CE3A0 8D790018 */        lw $t9, 0x18($t3)
  /* 049D84 800CE3A4 03276821 */      addu $t5, $t9, $a3
  /* 049D88 800CE3A8 10000013 */         b .L800CE3F8
  /* 049D8C 800CE3AC AD6D0018 */        sw $t5, 0x18($t3)
  .L800CE3B0:
  /* 049D90 800CE3B0 00AE082B */      sltu $at, $a1, $t6
  /* 049D94 800CE3B4 10200010 */      beqz $at, .L800CE3F8
  /* 049D98 800CE3B8 00A01825 */        or $v1, $a1, $zero
  /* 049D9C 800CE3BC 00055080 */       sll $t2, $a1, 2
  /* 049DA0 800CE3C0 008A5821 */      addu $t3, $a0, $t2
  .L800CE3C4:
  /* 049DA4 800CE3C4 8D6F0018 */        lw $t7, 0x18($t3)
  /* 049DA8 800CE3C8 24630001 */     addiu $v1, $v1, 1
  /* 049DAC 800CE3CC 254A0004 */     addiu $t2, $t2, 4
  /* 049DB0 800CE3D0 01E7C021 */      addu $t8, $t7, $a3
  /* 049DB4 800CE3D4 AD780018 */        sw $t8, 0x18($t3)
  /* 049DB8 800CE3D8 8D190000 */        lw $t9, ($t0)
  /* 049DBC 800CE3DC 03226821 */      addu $t5, $t9, $v0
  /* 049DC0 800CE3E0 8DA40000 */        lw $a0, ($t5)
  /* 049DC4 800CE3E4 8C8E0000 */        lw $t6, ($a0)
  /* 049DC8 800CE3E8 000E7840 */       sll $t7, $t6, 1
  /* 049DCC 800CE3EC 006F082B */      sltu $at, $v1, $t7
  /* 049DD0 800CE3F0 5420FFF4 */      bnel $at, $zero, .L800CE3C4
  /* 049DD4 800CE3F4 008A5821 */      addu $t3, $a0, $t2
  .L800CE3F8:
  /* 049DD8 800CE3F8 8CD80000 */        lw $t8, ($a2)
  .L800CE3FC:
  /* 049DDC 800CE3FC 25290001 */     addiu $t1, $t1, 1
  /* 049DE0 800CE400 24420004 */     addiu $v0, $v0, 4
  /* 049DE4 800CE404 0138082A */       slt $at, $t1, $t8
  /* 049DE8 800CE408 5420FFC9 */      bnel $at, $zero, .L800CE330
  /* 049DEC 800CE40C 8D190000 */        lw $t9, ($t0)
  .L800CE410:
  /* 049DF0 800CE410 03E00008 */        jr $ra
  /* 049DF4 800CE414 00000000 */       nop 

glabel func_ovl0_800CE418
  /* 049DF8 800CE418 27BDFFE0 */     addiu $sp, $sp, -0x20
  /* 049DFC 800CE41C AFB10018 */        sw $s1, 0x18($sp)
  /* 049E00 800CE420 3C11800D */       lui $s1, %hi(D_ovl0_800D6350)
  /* 049E04 800CE424 26316350 */     addiu $s1, $s1, %lo(D_ovl0_800D6350)
  /* 049E08 800CE428 3C02800D */       lui $v0, %hi(D_ovl0_800D6358)
  /* 049E0C 800CE42C 3C03800D */       lui $v1, %hi(D_ovl0_800D6398)
  /* 049E10 800CE430 AFBF001C */        sw $ra, 0x1c($sp)
  /* 049E14 800CE434 AFB00014 */        sw $s0, 0x14($sp)
  /* 049E18 800CE438 AE200000 */        sw $zero, ($s1) # D_ovl0_800D6350 + 0
  /* 049E1C 800CE43C 24636398 */     addiu $v1, $v1, %lo(D_ovl0_800D6398)
  /* 049E20 800CE440 24426358 */     addiu $v0, $v0, %lo(D_ovl0_800D6358)
  .L800CE444:
  /* 049E24 800CE444 24420004 */     addiu $v0, $v0, 4
  /* 049E28 800CE448 0043082B */      sltu $at, $v0, $v1
  /* 049E2C 800CE44C 1420FFFD */      bnez $at, .L800CE444
  /* 049E30 800CE450 AC40FFFC */        sw $zero, -4($v0) # D_ovl0_800D6358 + -4
  /* 049E34 800CE454 2490FFFF */     addiu $s0, $a0, -1
  /* 049E38 800CE458 0600000D */      bltz $s0, .L800CE490
  .L800CE45C:
  /* 049E3C 800CE45C 24040060 */     addiu $a0, $zero, 0x60
  /* 049E40 800CE460 0C001260 */       jal func_80004980
  /* 049E44 800CE464 24050004 */     addiu $a1, $zero, 4
  /* 049E48 800CE468 54400004 */      bnel $v0, $zero, .L800CE47C
  /* 049E4C 800CE46C 8E2E0000 */        lw $t6, ($s1) # D_ovl0_800D6350 + 0
  /* 049E50 800CE470 10000017 */         b .L800CE4D0
  /* 049E54 800CE474 00001025 */        or $v0, $zero, $zero
  /* 049E58 800CE478 8E2E0000 */        lw $t6, ($s1) # D_ovl0_800D6350 + 0
  .L800CE47C:
  /* 049E5C 800CE47C 2610FFFF */     addiu $s0, $s0, -1
  /* 049E60 800CE480 3C01800D */       lui $at, %hi(D_ovl0_800D6350)
  /* 049E64 800CE484 AC4E0000 */        sw $t6, ($v0)
  /* 049E68 800CE488 0601FFF4 */      bgez $s0, .L800CE45C
  /* 049E6C 800CE48C AC226350 */        sw $v0, %lo(D_ovl0_800D6350)($at)
  .L800CE490:
  /* 049E70 800CE490 3C01800D */       lui $at, %hi(D_ovl0_800D6448)
  /* 049E74 800CE494 A4206448 */        sh $zero, %lo(D_ovl0_800D6448)($at)
  /* 049E78 800CE498 3C01800D */       lui $at, %hi(D_ovl0_800D644E)
  /* 049E7C 800CE49C A420644E */        sh $zero, %lo(D_ovl0_800D644E)($at)
  /* 049E80 800CE4A0 0C002C66 */       jal find_gobj_with_id
  /* 049E84 800CE4A4 2404FFFA */     addiu $a0, $zero, -6
  /* 049E88 800CE4A8 10400003 */      beqz $v0, .L800CE4B8
  /* 049E8C 800CE4AC 00000000 */       nop 
  /* 049E90 800CE4B0 10000007 */         b .L800CE4D0
  /* 049E94 800CE4B4 00001025 */        or $v0, $zero, $zero
  .L800CE4B8:
  /* 049E98 800CE4B8 3C05800D */       lui $a1, %hi(func_ovl0_800D0C74)
  /* 049E9C 800CE4BC 24A50C74 */     addiu $a1, $a1, %lo(func_ovl0_800D0C74)
  /* 049EA0 800CE4C0 2404FFFA */     addiu $a0, $zero, -6
  /* 049EA4 800CE4C4 00003025 */        or $a2, $zero, $zero
  /* 049EA8 800CE4C8 0C00265A */       jal func_80009968
  /* 049EAC 800CE4CC 3C078000 */       lui $a3, 0x8000
  .L800CE4D0:
  /* 049EB0 800CE4D0 8FBF001C */        lw $ra, 0x1c($sp)
  /* 049EB4 800CE4D4 8FB00014 */        lw $s0, 0x14($sp)
  /* 049EB8 800CE4D8 8FB10018 */        lw $s1, 0x18($sp)
  /* 049EBC 800CE4DC 03E00008 */        jr $ra
  /* 049EC0 800CE4E0 27BD0020 */     addiu $sp, $sp, 0x20

# render sprite bank sprite?
glabel func_ovl0_800CE4E4
  /* 049EC4 800CE4E4 3C08800D */       lui $t0, %hi(D_ovl0_800D6350)
  /* 049EC8 800CE4E8 25086350 */     addiu $t0, $t0, %lo(D_ovl0_800D6350)
  /* 049ECC 800CE4EC 8D030000 */        lw $v1, ($t0) # D_ovl0_800D6350 + 0
  /* 049ED0 800CE4F0 AFA7000C */        sw $a3, 0xc($sp)
  /* 049ED4 800CE4F4 30E7FFFF */      andi $a3, $a3, 0xffff
  /* 049ED8 800CE4F8 14600003 */      bnez $v1, .L800CE508
  /* 049EDC 800CE4FC AFA40000 */        sw $a0, ($sp)
  /* 049EE0 800CE500 03E00008 */        jr $ra
  /* 049EE4 800CE504 00001025 */        or $v0, $zero, $zero

  .L800CE508:
  /* 049EE8 800CE508 3C04800D */       lui $a0, %hi(D_ovl0_800D6448)
  /* 049EEC 800CE50C 24846448 */     addiu $a0, $a0, %lo(D_ovl0_800D6448)
  /* 049EF0 800CE510 948E0000 */       lhu $t6, ($a0) # D_ovl0_800D6448 + 0
  /* 049EF4 800CE514 3C09800D */       lui $t1, %hi(D_ovl0_800D644E)
  /* 049EF8 800CE518 2529644E */     addiu $t1, $t1, %lo(D_ovl0_800D644E)
  /* 049EFC 800CE51C 95380000 */       lhu $t8, ($t1) # D_ovl0_800D644E + 0
  /* 049F00 800CE520 25CF0001 */     addiu $t7, $t6, 1
  /* 049F04 800CE524 31E2FFFF */      andi $v0, $t7, 0xffff
  /* 049F08 800CE528 0302082A */       slt $at, $t8, $v0
  /* 049F0C 800CE52C 10200002 */      beqz $at, .L800CE538
  /* 049F10 800CE530 A48F0000 */        sh $t7, ($a0) # D_ovl0_800D6448 + 0
  /* 049F14 800CE534 A5220000 */        sh $v0, ($t1) # D_ovl0_800D644E + 0
  .L800CE538:
  /* 049F18 800CE538 8FA40040 */        lw $a0, 0x40($sp)
  /* 049F1C 800CE53C 3C02800D */       lui $v0, %hi(D_ovl0_800D5D58)
  /* 049F20 800CE540 24425D58 */     addiu $v0, $v0, %lo(D_ovl0_800D5D58)
  /* 049F24 800CE544 50800005 */      beql $a0, $zero, .L800CE55C
  /* 049F28 800CE548 944A0000 */       lhu $t2, ($v0) # D_ovl0_800D5D58 + 0
  /* 049F2C 800CE54C 94990004 */       lhu $t9, 4($a0)
  /* 049F30 800CE550 10000005 */         b .L800CE568
  /* 049F34 800CE554 A4790004 */        sh $t9, 4($v1)
  /* 049F38 800CE558 944A0000 */       lhu $t2, ($v0) # D_ovl0_800D5D58 + 0
  .L800CE55C:
  /* 049F3C 800CE55C 254C0001 */     addiu $t4, $t2, 1
  /* 049F40 800CE560 A44C0000 */        sh $t4, ($v0) # D_ovl0_800D5D58 + 0
  /* 049F44 800CE564 A46C0004 */        sh $t4, 4($v1)
  .L800CE568:
  /* 049F48 800CE568 10800008 */      beqz $a0, .L800CE58C
  /* 049F4C 800CE56C 000550C3 */       sra $t2, $a1, 3
  /* 049F50 800CE570 8C8D004C */        lw $t5, 0x4c($a0)
  /* 049F54 800CE574 11A00006 */      beqz $t5, .L800CE590
  /* 049F58 800CE578 AC6D005C */        sw $t5, 0x5c($v1)
  /* 049F5C 800CE57C 95AE002A */       lhu $t6, 0x2a($t5)
  /* 049F60 800CE580 25CF0001 */     addiu $t7, $t6, 1
  /* 049F64 800CE584 10000002 */         b .L800CE590
  /* 049F68 800CE588 A5AF002A */        sh $t7, 0x2a($t5)
  .L800CE58C:
  /* 049F6C 800CE58C AC60005C */        sw $zero, 0x5c($v1)
  .L800CE590:
  /* 049F70 800CE590 8FB90000 */        lw $t9, ($sp)
  /* 049F74 800CE594 8C780000 */        lw $t8, ($v1)
  /* 049F78 800CE598 000A5880 */       sll $t3, $t2, 2
  /* 049F7C 800CE59C 17200008 */      bnez $t9, .L800CE5C0
  /* 049F80 800CE5A0 AD180000 */        sw $t8, ($t0)
  /* 049F84 800CE5A4 3C0C800D */       lui $t4, %hi(D_ovl0_800D6358)
  /* 049F88 800CE5A8 258C6358 */     addiu $t4, $t4, %lo(D_ovl0_800D6358)
  /* 049F8C 800CE5AC 016C1021 */      addu $v0, $t3, $t4
  /* 049F90 800CE5B0 8C4D0000 */        lw $t5, ($v0) # D_ovl0_800D5D58 + 0
  /* 049F94 800CE5B4 AC6D0000 */        sw $t5, ($v1)
  /* 049F98 800CE5B8 10000006 */         b .L800CE5D4
  /* 049F9C 800CE5BC AC430000 */        sw $v1, ($v0) # D_ovl0_800D5D58 + 0
  .L800CE5C0:
  /* 049FA0 800CE5C0 8FAE0000 */        lw $t6, ($sp)
  /* 049FA4 800CE5C4 8DCF0000 */        lw $t7, ($t6)
  /* 049FA8 800CE5C8 AC6F0000 */        sw $t7, ($v1)
  /* 049FAC 800CE5CC 8FB80000 */        lw $t8, ($sp)
  /* 049FB0 800CE5D0 AF030000 */        sw $v1, ($t8)
  .L800CE5D4:
  /* 049FB4 800CE5D4 A0650008 */        sb $a1, 8($v1)
  /* 049FB8 800CE5D8 A4660006 */        sh $a2, 6($v1)
  /* 049FBC 800CE5DC A067000A */        sb $a3, 0xa($v1)
  /* 049FC0 800CE5E0 C7A40018 */      lwc1 $f4, 0x18($sp)
  /* 049FC4 800CE5E4 34CE0010 */       ori $t6, $a2, 0x10
  /* 049FC8 800CE5E8 240F0001 */     addiu $t7, $zero, 1
  /* 049FCC 800CE5EC E4640020 */      swc1 $f4, 0x20($v1)
  /* 049FD0 800CE5F0 C7A6001C */      lwc1 $f6, 0x1c($sp)
  /* 049FD4 800CE5F4 E4660024 */      swc1 $f6, 0x24($v1)
  /* 049FD8 800CE5F8 C7A80020 */      lwc1 $f8, 0x20($sp)
  /* 049FDC 800CE5FC E4680028 */      swc1 $f8, 0x28($v1)
  /* 049FE0 800CE600 C7AA0024 */      lwc1 $f10, 0x24($sp)
  /* 049FE4 800CE604 E46A002C */      swc1 $f10, 0x2c($v1)
  /* 049FE8 800CE608 C7B00028 */      lwc1 $f16, 0x28($sp)
  /* 049FEC 800CE60C E4700030 */      swc1 $f16, 0x30($v1)
  /* 049FF0 800CE610 C7B2002C */      lwc1 $f18, 0x2c($sp)
  /* 049FF4 800CE614 E4720034 */      swc1 $f18, 0x34($v1)
  /* 049FF8 800CE618 C7A40030 */      lwc1 $f4, 0x30($sp)
  /* 049FFC 800CE61C E4640040 */      swc1 $f4, 0x40($v1)
  /* 04A000 800CE620 C7A60034 */      lwc1 $f6, 0x34($sp)
  /* 04A004 800CE624 8FA20010 */        lw $v0, 0x10($sp)
  /* 04A008 800CE628 E4660038 */      swc1 $f6, 0x38($v1)
  /* 04A00C 800CE62C C7A80038 */      lwc1 $f8, 0x38($sp)
  /* 04A010 800CE630 E468003C */      swc1 $f8, 0x3c($v1)
  /* 04A014 800CE634 8FB90014 */        lw $t9, 0x14($sp)
  /* 04A018 800CE638 A4600018 */        sh $zero, 0x18($v1)
  /* 04A01C 800CE63C A460001A */        sh $zero, 0x1a($v1)
  /* 04A020 800CE640 272A0001 */     addiu $t2, $t9, 1
  /* 04A024 800CE644 A46A001E */        sh $t2, 0x1e($v1)
  /* 04A028 800CE648 AC620014 */        sw $v0, 0x14($v1)
  /* 04A02C 800CE64C 8FAC003C */        lw $t4, 0x3c($sp)
  /* 04A030 800CE650 11800002 */      beqz $t4, .L800CE65C
  /* 04A034 800CE654 00000000 */       nop 
  /* 04A038 800CE658 A46E0006 */        sh $t6, 6($v1)
  .L800CE65C:
  /* 04A03C 800CE65C 50400004 */      beql $v0, $zero, .L800CE670
  /* 04A040 800CE660 A460000C */        sh $zero, 0xc($v1)
  /* 04A044 800CE664 10000002 */         b .L800CE670
  /* 04A048 800CE668 A46F000C */        sh $t7, 0xc($v1)
  /* 04A04C 800CE66C A460000C */        sh $zero, 0xc($v1)
  .L800CE670:
  /* 04A050 800CE670 240200FF */     addiu $v0, $zero, 0xff
  /* 04A054 800CE674 A062004B */        sb $v0, 0x4b($v1)
  /* 04A058 800CE678 A062004A */        sb $v0, 0x4a($v1)
  /* 04A05C 800CE67C A0620049 */        sb $v0, 0x49($v1)
  /* 04A060 800CE680 A0620048 */        sb $v0, 0x48($v1)
  /* 04A064 800CE684 00001025 */        or $v0, $zero, $zero
  /* 04A068 800CE688 A0620052 */        sb $v0, 0x52($v1)
  /* 04A06C 800CE68C A0620051 */        sb $v0, 0x51($v1)
  /* 04A070 800CE690 A0620050 */        sb $v0, 0x50($v1)
  /* 04A074 800CE694 A060000B */        sb $zero, 0xb($v1)
  /* 04A078 800CE698 A0600053 */        sb $zero, 0x53($v1)
  /* 04A07C 800CE69C A4600012 */        sh $zero, 0x12($v1)
  /* 04A080 800CE6A0 A4600010 */        sh $zero, 0x10($v1)
  /* 04A084 800CE6A4 A460000E */        sh $zero, 0xe($v1)
  /* 04A088 800CE6A8 AC640058 */        sw $a0, 0x58($v1)
  /* 04A08C 800CE6AC 00601025 */        or $v0, $v1, $zero
  /* 04A090 800CE6B0 03E00008 */        jr $ra
  /* 04A094 800CE6B4 00000000 */       nop 

# copy sprite bank struct onto stack
glabel func_ovl0_800CE6B8
  /* 04A098 800CE6B8 30A20007 */      andi $v0, $a1, 7
  /* 04A09C 800CE6BC 27BDFFB0 */     addiu $sp, $sp, -0x50
  /* 04A0A0 800CE6C0 28410008 */      slti $at, $v0, 8
  /* 04A0A4 800CE6C4 AFBF004C */        sw $ra, 0x4c($sp)
  /* 04A0A8 800CE6C8 14200003 */      bnez $at, .L800CE6D8
  /* 04A0AC 800CE6CC AFA60058 */        sw $a2, 0x58($sp)
  /* 04A0B0 800CE6D0 10000031 */         b .L800CE798
  /* 04A0B4 800CE6D4 00001025 */        or $v0, $zero, $zero
  .L800CE6D8:
  /* 04A0B8 800CE6D8 00021880 */       sll $v1, $v0, 2
  /* 04A0BC 800CE6DC 3C0F800D */       lui $t7, %hi(D_ovl0_800D63C0)
  /* 04A0C0 800CE6E0 01E37821 */      addu $t7, $t7, $v1
  /* 04A0C4 800CE6E4 8DEF63C0 */        lw $t7, %lo(D_ovl0_800D63C0)($t7)
  /* 04A0C8 800CE6E8 8FAE0058 */        lw $t6, 0x58($sp)
  /* 04A0CC 800CE6EC 3C18800D */       lui $t8, %hi(D_ovl0_800D6400)
  /* 04A0D0 800CE6F0 0303C021 */      addu $t8, $t8, $v1
  /* 04A0D4 800CE6F4 01CF082A */       slt $at, $t6, $t7
  /* 04A0D8 800CE6F8 14200003 */      bnez $at, .L800CE708
  /* 04A0DC 800CE6FC 8FB90058 */        lw $t9, 0x58($sp)
  /* 04A0E0 800CE700 10000025 */         b .L800CE798
  /* 04A0E4 800CE704 00001025 */        or $v0, $zero, $zero
  .L800CE708:
  /* 04A0E8 800CE708 8F186400 */        lw $t8, %lo(D_ovl0_800D6400)($t8)
  /* 04A0EC 800CE70C 00194080 */       sll $t0, $t9, 2
  /* 04A0F0 800CE710 44800000 */      mtc1 $zero, $f0
  /* 04A0F4 800CE714 03084821 */      addu $t1, $t8, $t0
  /* 04A0F8 800CE718 8D220000 */        lw $v0, ($t1)
  /* 04A0FC 800CE71C 3C0C800D */       lui $t4, %hi(D_ovl0_800D6420)
  /* 04A100 800CE720 01836021 */      addu $t4, $t4, $v1
  /* 04A104 800CE724 94470002 */       lhu $a3, 2($v0)
  /* 04A108 800CE728 8C460008 */        lw $a2, 8($v0)
  /* 04A10C 800CE72C 244A0030 */     addiu $t2, $v0, 0x30
  /* 04A110 800CE730 AFAA0010 */        sw $t2, 0x10($sp)
  /* 04A114 800CE734 944B0006 */       lhu $t3, 6($v0)
  /* 04A118 800CE738 E7A00020 */      swc1 $f0, 0x20($sp)
  /* 04A11C 800CE73C E7A0001C */      swc1 $f0, 0x1c($sp)
  /* 04A120 800CE740 E7A00018 */      swc1 $f0, 0x18($sp)
  /* 04A124 800CE744 AFAB0014 */        sw $t3, 0x14($sp)
  /* 04A128 800CE748 C4440014 */      lwc1 $f4, 0x14($v0)
  /* 04A12C 800CE74C 8D8C6420 */        lw $t4, %lo(D_ovl0_800D6420)($t4)
  /* 04A130 800CE750 00076880 */       sll $t5, $a3, 2
  /* 04A134 800CE754 E7A40024 */      swc1 $f4, 0x24($sp)
  /* 04A138 800CE758 C4460018 */      lwc1 $f6, 0x18($v0)
  /* 04A13C 800CE75C 018D7021 */      addu $t6, $t4, $t5
  /* 04A140 800CE760 E7A60028 */      swc1 $f6, 0x28($sp)
  /* 04A144 800CE764 C448001C */      lwc1 $f8, 0x1c($v0)
  /* 04A148 800CE768 E7A8002C */      swc1 $f8, 0x2c($sp)
  /* 04A14C 800CE76C C44A002C */      lwc1 $f10, 0x2c($v0)
  /* 04A150 800CE770 E7AA0030 */      swc1 $f10, 0x30($sp)
  /* 04A154 800CE774 C450000C */      lwc1 $f16, 0xc($v0)
  /* 04A158 800CE778 E7B00034 */      swc1 $f16, 0x34($sp)
  /* 04A15C 800CE77C C4520010 */      lwc1 $f18, 0x10($v0)
  /* 04A160 800CE780 E7B20038 */      swc1 $f18, 0x38($sp)
  /* 04A164 800CE784 8DCF0000 */        lw $t7, ($t6)
  /* 04A168 800CE788 8DF90014 */        lw $t9, 0x14($t7)
  /* 04A16C 800CE78C AFA00040 */        sw $zero, 0x40($sp)
  /* 04A170 800CE790 0C033939 */       jal func_ovl0_800CE4E4
  /* 04A174 800CE794 AFB9003C */        sw $t9, 0x3c($sp)
  .L800CE798:
  /* 04A178 800CE798 8FBF004C */        lw $ra, 0x4c($sp)
  /* 04A17C 800CE79C 27BD0050 */     addiu $sp, $sp, 0x50
  /* 04A180 800CE7A0 03E00008 */        jr $ra
  /* 04A184 800CE7A4 00000000 */       nop 

glabel func_ovl0_800CE7A8
  /* 04A188 800CE7A8 27BDFFA8 */     addiu $sp, $sp, -0x58
  /* 04A18C 800CE7AC C7A4006C */      lwc1 $f4, 0x6c($sp)
  /* 04A190 800CE7B0 C7A60070 */      lwc1 $f6, 0x70($sp)
  /* 04A194 800CE7B4 C7A80074 */      lwc1 $f8, 0x74($sp)
  /* 04A198 800CE7B8 AFA70064 */        sw $a3, 0x64($sp)
  /* 04A19C 800CE7BC E7A40018 */      swc1 $f4, 0x18($sp)
  /* 04A1A0 800CE7C0 E7A6001C */      swc1 $f6, 0x1c($sp)
  /* 04A1A4 800CE7C4 E7A80020 */      swc1 $f8, 0x20($sp)
  /* 04A1A8 800CE7C8 C7A8008C */      lwc1 $f8, 0x8c($sp)
  /* 04A1AC 800CE7CC C7A60088 */      lwc1 $f6, 0x88($sp)
  /* 04A1B0 800CE7D0 C7A40084 */      lwc1 $f4, 0x84($sp)
  /* 04A1B4 800CE7D4 8FAE0064 */        lw $t6, 0x64($sp)
  /* 04A1B8 800CE7D8 8FAF0068 */        lw $t7, 0x68($sp)
  /* 04A1BC 800CE7DC C7AA0078 */      lwc1 $f10, 0x78($sp)
  /* 04A1C0 800CE7E0 C7B0007C */      lwc1 $f16, 0x7c($sp)
  /* 04A1C4 800CE7E4 C7B20080 */      lwc1 $f18, 0x80($sp)
  /* 04A1C8 800CE7E8 8FB80090 */        lw $t8, 0x90($sp)
  /* 04A1CC 800CE7EC 8FB90094 */        lw $t9, 0x94($sp)
  /* 04A1D0 800CE7F0 AFA60060 */        sw $a2, 0x60($sp)
  /* 04A1D4 800CE7F4 00A03025 */        or $a2, $a1, $zero
  /* 04A1D8 800CE7F8 AFBF004C */        sw $ra, 0x4c($sp)
  /* 04A1DC 800CE7FC AFA40058 */        sw $a0, 0x58($sp)
  /* 04A1E0 800CE800 AFA5005C */        sw $a1, 0x5c($sp)
  /* 04A1E4 800CE804 97A70062 */       lhu $a3, 0x62($sp)
  /* 04A1E8 800CE808 8FA50058 */        lw $a1, 0x58($sp)
  /* 04A1EC 800CE80C 00002025 */        or $a0, $zero, $zero
  /* 04A1F0 800CE810 E7A80038 */      swc1 $f8, 0x38($sp)
  /* 04A1F4 800CE814 E7A60034 */      swc1 $f6, 0x34($sp)
  /* 04A1F8 800CE818 E7A40030 */      swc1 $f4, 0x30($sp)
  /* 04A1FC 800CE81C AFAE0010 */        sw $t6, 0x10($sp)
  /* 04A200 800CE820 AFAF0014 */        sw $t7, 0x14($sp)
  /* 04A204 800CE824 E7AA0024 */      swc1 $f10, 0x24($sp)
  /* 04A208 800CE828 E7B00028 */      swc1 $f16, 0x28($sp)
  /* 04A20C 800CE82C E7B2002C */      swc1 $f18, 0x2c($sp)
  /* 04A210 800CE830 AFB8003C */        sw $t8, 0x3c($sp)
  /* 04A214 800CE834 0C033939 */       jal func_ovl0_800CE4E4
  /* 04A218 800CE838 AFB90040 */        sw $t9, 0x40($sp)
  /* 04A21C 800CE83C 10400007 */      beqz $v0, .L800CE85C
  /* 04A220 800CE840 00402025 */        or $a0, $v0, $zero
  /* 04A224 800CE844 8FA60058 */        lw $a2, 0x58($sp)
  /* 04A228 800CE848 00002825 */        or $a1, $zero, $zero
  /* 04A22C 800CE84C AFA20054 */        sw $v0, 0x54($sp)
  /* 04A230 800CE850 0C033BD3 */       jal func_ovl0_800CEF4C
  /* 04A234 800CE854 000630C3 */       sra $a2, $a2, 3
  /* 04A238 800CE858 8FA40054 */        lw $a0, 0x54($sp)
  .L800CE85C:
  /* 04A23C 800CE85C 8FBF004C */        lw $ra, 0x4c($sp)
  /* 04A240 800CE860 27BD0058 */     addiu $sp, $sp, 0x58
  /* 04A244 800CE864 00801025 */        or $v0, $a0, $zero
  /* 04A248 800CE868 03E00008 */        jr $ra
  /* 04A24C 800CE86C 00000000 */       nop 

glabel func_ovl0_800CE870
  /* 04A250 800CE870 27BDFFE0 */     addiu $sp, $sp, -0x20
  /* 04A254 800CE874 AFBF0014 */        sw $ra, 0x14($sp)
  /* 04A258 800CE878 AFA40020 */        sw $a0, 0x20($sp)
  /* 04A25C 800CE87C 00A03025 */        or $a2, $a1, $zero
  /* 04A260 800CE880 8FA50020 */        lw $a1, 0x20($sp)
  /* 04A264 800CE884 0C0339AE */       jal func_ovl0_800CE6B8
  /* 04A268 800CE888 00002025 */        or $a0, $zero, $zero
  /* 04A26C 800CE88C 10400007 */      beqz $v0, .L800CE8AC
  /* 04A270 800CE890 00402025 */        or $a0, $v0, $zero
  /* 04A274 800CE894 8FA60020 */        lw $a2, 0x20($sp)
  /* 04A278 800CE898 00002825 */        or $a1, $zero, $zero
  /* 04A27C 800CE89C AFA2001C */        sw $v0, 0x1c($sp)
  /* 04A280 800CE8A0 0C033BD3 */       jal func_ovl0_800CEF4C
  /* 04A284 800CE8A4 000630C3 */       sra $a2, $a2, 3
  /* 04A288 800CE8A8 8FA4001C */        lw $a0, 0x1c($sp)
  .L800CE8AC:
  /* 04A28C 800CE8AC 8FBF0014 */        lw $ra, 0x14($sp)
  /* 04A290 800CE8B0 27BD0020 */     addiu $sp, $sp, 0x20
  /* 04A294 800CE8B4 00801025 */        or $v0, $a0, $zero
  /* 04A298 800CE8B8 03E00008 */        jr $ra
  /* 04A29C 800CE8BC 00000000 */       nop 

glabel func_ovl0_800CE8C0
  /* 04A2A0 800CE8C0 27BDFFA8 */     addiu $sp, $sp, -0x58
  /* 04A2A4 800CE8C4 30820007 */      andi $v0, $a0, 7
  /* 04A2A8 800CE8C8 44866000 */      mtc1 $a2, $f12
  /* 04A2AC 800CE8CC 44877000 */      mtc1 $a3, $f14
  /* 04A2B0 800CE8D0 28410008 */      slti $at, $v0, 8
  /* 04A2B4 800CE8D4 AFBF004C */        sw $ra, 0x4c($sp)
  /* 04A2B8 800CE8D8 AFA40058 */        sw $a0, 0x58($sp)
  /* 04A2BC 800CE8DC 14200003 */      bnez $at, .L800CE8EC
  /* 04A2C0 800CE8E0 AFA5005C */        sw $a1, 0x5c($sp)
  /* 04A2C4 800CE8E4 1000003C */         b .L800CE9D8
  /* 04A2C8 800CE8E8 00001025 */        or $v0, $zero, $zero
  .L800CE8EC:
  /* 04A2CC 800CE8EC 00021880 */       sll $v1, $v0, 2
  /* 04A2D0 800CE8F0 3C0F800D */       lui $t7, %hi(D_ovl0_800D63C0)
  /* 04A2D4 800CE8F4 01E37821 */      addu $t7, $t7, $v1
  /* 04A2D8 800CE8F8 8DEF63C0 */        lw $t7, %lo(D_ovl0_800D63C0)($t7)
  /* 04A2DC 800CE8FC 8FAE005C */        lw $t6, 0x5c($sp)
  /* 04A2E0 800CE900 3C18800D */       lui $t8, %hi(D_ovl0_800D6400)
  /* 04A2E4 800CE904 0303C021 */      addu $t8, $t8, $v1
  /* 04A2E8 800CE908 01CF082A */       slt $at, $t6, $t7
  /* 04A2EC 800CE90C 14200003 */      bnez $at, .L800CE91C
  /* 04A2F0 800CE910 8FB9005C */        lw $t9, 0x5c($sp)
  /* 04A2F4 800CE914 10000030 */         b .L800CE9D8
  /* 04A2F8 800CE918 00001025 */        or $v0, $zero, $zero
  .L800CE91C:
  /* 04A2FC 800CE91C 8F186400 */        lw $t8, %lo(D_ovl0_800D6400)($t8)
  /* 04A300 800CE920 00194080 */       sll $t0, $t9, 2
  /* 04A304 800CE924 C7A40068 */      lwc1 $f4, 0x68($sp)
  /* 04A308 800CE928 03084821 */      addu $t1, $t8, $t0
  /* 04A30C 800CE92C 8D220000 */        lw $v0, ($t1)
  /* 04A310 800CE930 C7A6006C */      lwc1 $f6, 0x6c($sp)
  /* 04A314 800CE934 C7A80070 */      lwc1 $f8, 0x70($sp)
  /* 04A318 800CE938 94470002 */       lhu $a3, 2($v0)
  /* 04A31C 800CE93C 8C460008 */        lw $a2, 8($v0)
  /* 04A320 800CE940 244A0030 */     addiu $t2, $v0, 0x30
  /* 04A324 800CE944 AFAA0010 */        sw $t2, 0x10($sp)
  /* 04A328 800CE948 944B0006 */       lhu $t3, 6($v0)
  /* 04A32C 800CE94C C7AA0074 */      lwc1 $f10, 0x74($sp)
  /* 04A330 800CE950 E7AE001C */      swc1 $f14, 0x1c($sp)
  /* 04A334 800CE954 E7AC0018 */      swc1 $f12, 0x18($sp)
  /* 04A338 800CE958 E7A40020 */      swc1 $f4, 0x20($sp)
  /* 04A33C 800CE95C E7A60024 */      swc1 $f6, 0x24($sp)
  /* 04A340 800CE960 E7A80028 */      swc1 $f8, 0x28($sp)
  /* 04A344 800CE964 AFAB0014 */        sw $t3, 0x14($sp)
  /* 04A348 800CE968 E7AA002C */      swc1 $f10, 0x2c($sp)
  /* 04A34C 800CE96C C450002C */      lwc1 $f16, 0x2c($v0)
  /* 04A350 800CE970 3C0C800D */       lui $t4, %hi(D_ovl0_800D6420)
  /* 04A354 800CE974 01836021 */      addu $t4, $t4, $v1
  /* 04A358 800CE978 E7B00030 */      swc1 $f16, 0x30($sp)
  /* 04A35C 800CE97C C452000C */      lwc1 $f18, 0xc($v0)
  /* 04A360 800CE980 8D8C6420 */        lw $t4, %lo(D_ovl0_800D6420)($t4)
  /* 04A364 800CE984 00076880 */       sll $t5, $a3, 2
  /* 04A368 800CE988 E7B20034 */      swc1 $f18, 0x34($sp)
  /* 04A36C 800CE98C C4440010 */      lwc1 $f4, 0x10($v0)
  /* 04A370 800CE990 018D7021 */      addu $t6, $t4, $t5
  /* 04A374 800CE994 00002025 */        or $a0, $zero, $zero
  /* 04A378 800CE998 E7A40038 */      swc1 $f4, 0x38($sp)
  /* 04A37C 800CE99C 8DCF0000 */        lw $t7, ($t6)
  /* 04A380 800CE9A0 8FA50058 */        lw $a1, 0x58($sp)
  /* 04A384 800CE9A4 8DF90014 */        lw $t9, 0x14($t7)
  /* 04A388 800CE9A8 AFA00040 */        sw $zero, 0x40($sp)
  /* 04A38C 800CE9AC 0C033939 */       jal func_ovl0_800CE4E4
  /* 04A390 800CE9B0 AFB9003C */        sw $t9, 0x3c($sp)
  /* 04A394 800CE9B4 10400007 */      beqz $v0, .L800CE9D4
  /* 04A398 800CE9B8 00402025 */        or $a0, $v0, $zero
  /* 04A39C 800CE9BC 8FA60058 */        lw $a2, 0x58($sp)
  /* 04A3A0 800CE9C0 00002825 */        or $a1, $zero, $zero
  /* 04A3A4 800CE9C4 AFA20054 */        sw $v0, 0x54($sp)
  /* 04A3A8 800CE9C8 0C033BD3 */       jal func_ovl0_800CEF4C
  /* 04A3AC 800CE9CC 000630C3 */       sra $a2, $a2, 3
  /* 04A3B0 800CE9D0 8FA40054 */        lw $a0, 0x54($sp)
  .L800CE9D4:
  /* 04A3B4 800CE9D4 00801025 */        or $v0, $a0, $zero
  .L800CE9D8:
  /* 04A3B8 800CE9D8 8FBF004C */        lw $ra, 0x4c($sp)
  /* 04A3BC 800CE9DC 27BD0058 */     addiu $sp, $sp, 0x58
  /* 04A3C0 800CE9E0 03E00008 */        jr $ra
  /* 04A3C4 800CE9E4 00000000 */       nop 

glabel func_ovl0_800CE9E8
  /* 04A3C8 800CE9E8 27BDFFE8 */     addiu $sp, $sp, -0x18
  /* 04A3CC 800CE9EC 00A03025 */        or $a2, $a1, $zero
  /* 04A3D0 800CE9F0 00802825 */        or $a1, $a0, $zero
  /* 04A3D4 800CE9F4 AFBF0014 */        sw $ra, 0x14($sp)
  /* 04A3D8 800CE9F8 AFA40018 */        sw $a0, 0x18($sp)
  /* 04A3DC 800CE9FC 0C0339AE */       jal func_ovl0_800CE6B8
  /* 04A3E0 800CEA00 00002025 */        or $a0, $zero, $zero
  /* 04A3E4 800CEA04 8FBF0014 */        lw $ra, 0x14($sp)
  /* 04A3E8 800CEA08 27BD0018 */     addiu $sp, $sp, 0x18
  /* 04A3EC 800CEA0C 03E00008 */        jr $ra
  /* 04A3F0 800CEA10 00000000 */       nop 

glabel func_ovl0_800CEA14
  /* 04A3F4 800CEA14 27BDFFE8 */     addiu $sp, $sp, -0x18
  /* 04A3F8 800CEA18 10800005 */      beqz $a0, .L800CEA30
  /* 04A3FC 800CEA1C AFBF0014 */        sw $ra, 0x14($sp)
  /* 04A400 800CEA20 90860008 */       lbu $a2, 8($a0)
  /* 04A404 800CEA24 00002825 */        or $a1, $zero, $zero
  /* 04A408 800CEA28 0C033BD3 */       jal func_ovl0_800CEF4C
  /* 04A40C 800CEA2C 000630C3 */       sra $a2, $a2, 3
  .L800CEA30:
  /* 04A410 800CEA30 8FBF0014 */        lw $ra, 0x14($sp)
  /* 04A414 800CEA34 27BD0018 */     addiu $sp, $sp, 0x18
  /* 04A418 800CEA38 03E00008 */        jr $ra
  /* 04A41C 800CEA3C 00000000 */       nop 

glabel func_ovl0_800CEA40
  /* 04A420 800CEA40 27BDFFE0 */     addiu $sp, $sp, -0x20
  /* 04A424 800CEA44 AFBF0014 */        sw $ra, 0x14($sp)
  /* 04A428 800CEA48 90850008 */       lbu $a1, 8($a0)
  /* 04A42C 800CEA4C 3C0F800D */       lui $t7, %hi(D_ovl0_800D6358)
  /* 04A430 800CEA50 25EF6358 */     addiu $t7, $t7, %lo(D_ovl0_800D6358)
  /* 04A434 800CEA54 000528C3 */       sra $a1, $a1, 3
  /* 04A438 800CEA58 00057080 */       sll $t6, $a1, 2
  /* 04A43C 800CEA5C 01CF3021 */      addu $a2, $t6, $t7
  /* 04A440 800CEA60 8CC20000 */        lw $v0, ($a2)
  /* 04A444 800CEA64 00001825 */        or $v1, $zero, $zero
  /* 04A448 800CEA68 50400036 */      beql $v0, $zero, .L800CEB44
  /* 04A44C 800CEA6C 8FBF0014 */        lw $ra, 0x14($sp)
  .L800CEA70:
  /* 04A450 800CEA70 54440030 */      bnel $v0, $a0, .L800CEB34
  /* 04A454 800CEA74 00401825 */        or $v1, $v0, $zero
  /* 04A458 800CEA78 54600005 */      bnel $v1, $zero, .L800CEA90
  /* 04A45C 800CEA7C 8C590000 */        lw $t9, ($v0)
  /* 04A460 800CEA80 8C580000 */        lw $t8, ($v0)
  /* 04A464 800CEA84 10000003 */         b .L800CEA94
  /* 04A468 800CEA88 ACD80000 */        sw $t8, ($a2)
  /* 04A46C 800CEA8C 8C590000 */        lw $t9, ($v0)
  .L800CEA90:
  /* 04A470 800CEA90 AC790000 */        sw $t9, ($v1)
  .L800CEA94:
  /* 04A474 800CEA94 8C830058 */        lw $v1, 0x58($a0)
  /* 04A478 800CEA98 5060000D */      beql $v1, $zero, .L800CEAD0
  /* 04A47C 800CEA9C 8C85005C */        lw $a1, 0x5c($a0)
  /* 04A480 800CEAA0 94880006 */       lhu $t0, 6($a0)
  /* 04A484 800CEAA4 31090004 */      andi $t1, $t0, 4
  /* 04A488 800CEAA8 51200009 */      beql $t1, $zero, .L800CEAD0
  /* 04A48C 800CEAAC 8C85005C */        lw $a1, 0x5c($a0)
  /* 04A490 800CEAB0 906A0008 */       lbu $t2, 8($v1)
  /* 04A494 800CEAB4 24010002 */     addiu $at, $zero, 2
  /* 04A498 800CEAB8 55410005 */      bnel $t2, $at, .L800CEAD0
  /* 04A49C 800CEABC 8C85005C */        lw $a1, 0x5c($a0)
  /* 04A4A0 800CEAC0 946B0054 */       lhu $t3, 0x54($v1)
  /* 04A4A4 800CEAC4 256CFFFF */     addiu $t4, $t3, -1
  /* 04A4A8 800CEAC8 A46C0054 */        sh $t4, 0x54($v1)
  /* 04A4AC 800CEACC 8C85005C */        lw $a1, 0x5c($a0)
  .L800CEAD0:
  /* 04A4B0 800CEAD0 10A0000C */      beqz $a1, .L800CEB04
  /* 04A4B4 800CEAD4 00000000 */       nop 
  /* 04A4B8 800CEAD8 94AD002A */       lhu $t5, 0x2a($a1)
  /* 04A4BC 800CEADC 25AEFFFF */     addiu $t6, $t5, -1
  /* 04A4C0 800CEAE0 A4AE002A */        sh $t6, 0x2a($a1)
  /* 04A4C4 800CEAE4 8C85005C */        lw $a1, 0x5c($a0)
  /* 04A4C8 800CEAE8 94AF002A */       lhu $t7, 0x2a($a1)
  /* 04A4CC 800CEAEC 00A02025 */        or $a0, $a1, $zero
  /* 04A4D0 800CEAF0 15E00004 */      bnez $t7, .L800CEB04
  /* 04A4D4 800CEAF4 00000000 */       nop 
  /* 04A4D8 800CEAF8 0C033862 */       jal func_ovl0_800CE188
  /* 04A4DC 800CEAFC AFA20018 */        sw $v0, 0x18($sp)
  /* 04A4E0 800CEB00 8FA20018 */        lw $v0, 0x18($sp)
  .L800CEB04:
  /* 04A4E4 800CEB04 3C03800D */       lui $v1, %hi(D_ovl0_800D6350)
  /* 04A4E8 800CEB08 24636350 */     addiu $v1, $v1, %lo(D_ovl0_800D6350)
  /* 04A4EC 800CEB0C 8C780000 */        lw $t8, ($v1) # D_ovl0_800D6350 + 0
  /* 04A4F0 800CEB10 3C04800D */       lui $a0, %hi(D_ovl0_800D6448)
  /* 04A4F4 800CEB14 24846448 */     addiu $a0, $a0, %lo(D_ovl0_800D6448)
  /* 04A4F8 800CEB18 AC580000 */        sw $t8, ($v0)
  /* 04A4FC 800CEB1C 94990000 */       lhu $t9, ($a0) # D_ovl0_800D6448 + 0
  /* 04A500 800CEB20 AC620000 */        sw $v0, ($v1) # D_ovl0_800D6350 + 0
  /* 04A504 800CEB24 2728FFFF */     addiu $t0, $t9, -1
  /* 04A508 800CEB28 10000005 */         b .L800CEB40
  /* 04A50C 800CEB2C A4880000 */        sh $t0, ($a0) # D_ovl0_800D6448 + 0
  /* 04A510 800CEB30 00401825 */        or $v1, $v0, $zero
  .L800CEB34:
  /* 04A514 800CEB34 8C420000 */        lw $v0, ($v0)
  /* 04A518 800CEB38 1440FFCD */      bnez $v0, .L800CEA70
  /* 04A51C 800CEB3C 00000000 */       nop 
  .L800CEB40:
  /* 04A520 800CEB40 8FBF0014 */        lw $ra, 0x14($sp)
  .L800CEB44:
  /* 04A524 800CEB44 27BD0020 */     addiu $sp, $sp, 0x20
  /* 04A528 800CEB48 03E00008 */        jr $ra
  /* 04A52C 800CEB4C 00000000 */       nop 

  /* 04A530 800CEB50 27BDFFD8 */     addiu $sp, $sp, -0x28
  /* 04A534 800CEB54 AFB30020 */        sw $s3, 0x20($sp)
  /* 04A538 800CEB58 AFB2001C */        sw $s2, 0x1c($sp)
  /* 04A53C 800CEB5C 3C12800D */       lui $s2, %hi(D_ovl0_800D6358)
  /* 04A540 800CEB60 3C13800D */       lui $s3, %hi(D_ovl0_800D6398)
  /* 04A544 800CEB64 AFBF0024 */        sw $ra, 0x24($sp)
  /* 04A548 800CEB68 AFB10018 */        sw $s1, 0x18($sp)
  /* 04A54C 800CEB6C AFB00014 */        sw $s0, 0x14($sp)
  /* 04A550 800CEB70 26736398 */     addiu $s3, $s3, %lo(D_ovl0_800D6398)
  /* 04A554 800CEB74 26526358 */     addiu $s2, $s2, %lo(D_ovl0_800D6358)
  /* 04A558 800CEB78 8E500000 */        lw $s0, ($s2) # D_ovl0_800D6358 + 0
  .L800CEB7C:
  /* 04A55C 800CEB7C 52000007 */      beql $s0, $zero, .L800CEB9C
  /* 04A560 800CEB80 26520004 */     addiu $s2, $s2, 4
  .L800CEB84:
  /* 04A564 800CEB84 8E110000 */        lw $s1, ($s0)
  /* 04A568 800CEB88 0C033A90 */       jal func_ovl0_800CEA40
  /* 04A56C 800CEB8C 02002025 */        or $a0, $s0, $zero
  /* 04A570 800CEB90 1620FFFC */      bnez $s1, .L800CEB84
  /* 04A574 800CEB94 02208025 */        or $s0, $s1, $zero
  /* 04A578 800CEB98 26520004 */     addiu $s2, $s2, 4
  .L800CEB9C:
  /* 04A57C 800CEB9C 5653FFF7 */      bnel $s2, $s3, .L800CEB7C
  /* 04A580 800CEBA0 8E500000 */        lw $s0, ($s2) # D_ovl0_800D6358 + 0
  /* 04A584 800CEBA4 8FBF0024 */        lw $ra, 0x24($sp)
  /* 04A588 800CEBA8 8FB00014 */        lw $s0, 0x14($sp)
  /* 04A58C 800CEBAC 8FB10018 */        lw $s1, 0x18($sp)
  /* 04A590 800CEBB0 8FB2001C */        lw $s2, 0x1c($sp)
  /* 04A594 800CEBB4 8FB30020 */        lw $s3, 0x20($sp)
  /* 04A598 800CEBB8 03E00008 */        jr $ra
  /* 04A59C 800CEBBC 27BD0028 */     addiu $sp, $sp, 0x28

glabel func_ovl0_800CEBC0
  /* 04A5A0 800CEBC0 908E0000 */       lbu $t6, ($a0)
  /* 04A5A4 800CEBC4 27BDFFF8 */     addiu $sp, $sp, -8
  /* 04A5A8 800CEBC8 24820004 */     addiu $v0, $a0, 4
  /* 04A5AC 800CEBCC A3AE0004 */        sb $t6, 4($sp)
  /* 04A5B0 800CEBD0 908F0001 */       lbu $t7, 1($a0)
  /* 04A5B4 800CEBD4 A3AF0005 */        sb $t7, 5($sp)
  /* 04A5B8 800CEBD8 90980002 */       lbu $t8, 2($a0)
  /* 04A5BC 800CEBDC A3B80006 */        sb $t8, 6($sp)
  /* 04A5C0 800CEBE0 90990003 */       lbu $t9, 3($a0)
  /* 04A5C4 800CEBE4 A3B90007 */        sb $t9, 7($sp)
  /* 04A5C8 800CEBE8 C7A40004 */      lwc1 $f4, 4($sp)
  /* 04A5CC 800CEBEC 27BD0008 */     addiu $sp, $sp, 8
  /* 04A5D0 800CEBF0 03E00008 */        jr $ra
  /* 04A5D4 800CEBF4 E4A40000 */      swc1 $f4, ($a1)

glabel func_ovl0_800CEBF8
  /* 04A5D8 800CEBF8 90820000 */       lbu $v0, ($a0)
  /* 04A5DC 800CEBFC 24840001 */     addiu $a0, $a0, 1
  /* 04A5E0 800CEC00 304E0080 */      andi $t6, $v0, 0x80
  /* 04A5E4 800CEC04 11C00007 */      beqz $t6, .L800CEC24
  /* 04A5E8 800CEC08 00401825 */        or $v1, $v0, $zero
  /* 04A5EC 800CEC0C 908F0000 */       lbu $t7, ($a0)
  /* 04A5F0 800CEC10 3058007F */      andi $t8, $v0, 0x7f
  /* 04A5F4 800CEC14 0018CA00 */       sll $t9, $t8, 8
  /* 04A5F8 800CEC18 01F91021 */      addu $v0, $t7, $t9
  /* 04A5FC 800CEC1C 3043FFFF */      andi $v1, $v0, 0xffff
  /* 04A600 800CEC20 24840001 */     addiu $a0, $a0, 1
  .L800CEC24:
  /* 04A604 800CEC24 24680001 */     addiu $t0, $v1, 1
  /* 04A608 800CEC28 A4A80000 */        sh $t0, ($a1)
  /* 04A60C 800CEC2C 03E00008 */        jr $ra
  /* 04A610 800CEC30 00801025 */        or $v0, $a0, $zero

glabel func_ovl0_800CEC34
  /* 04A614 800CEC34 27BDFF90 */     addiu $sp, $sp, -0x70
  /* 04A618 800CEC38 AFBF003C */        sw $ra, 0x3c($sp)
  /* 04A61C 800CEC3C AFB00038 */        sw $s0, 0x38($sp)
  /* 04A620 800CEC40 F7BA0030 */      sdc1 $f26, 0x30($sp)
  /* 04A624 800CEC44 F7B80028 */      sdc1 $f24, 0x28($sp)
  /* 04A628 800CEC48 F7B60020 */      sdc1 $f22, 0x20($sp)
  /* 04A62C 800CEC4C F7B40018 */      sdc1 $f20, 0x18($sp)
  /* 04A630 800CEC50 AFA50074 */        sw $a1, 0x74($sp)
  /* 04A634 800CEC54 C4940030 */      lwc1 $f20, 0x30($a0)
  /* 04A638 800CEC58 C4980034 */      lwc1 $f24, 0x34($a0)
  /* 04A63C 800CEC5C 00808025 */        or $s0, $a0, $zero
  /* 04A640 800CEC60 C496002C */      lwc1 $f22, 0x2c($a0)
  /* 04A644 800CEC64 4600A306 */     mov.s $f12, $f20
  /* 04A648 800CEC68 0C00618F */       jal atan2f
  /* 04A64C 800CEC6C 4600C386 */     mov.s $f14, $f24
  /* 04A650 800CEC70 E7A00058 */      swc1 $f0, 0x58($sp)
  /* 04A654 800CEC74 0C00C0FC */       jal __sinf
  /* 04A658 800CEC78 46000306 */     mov.s $f12, $f0
  /* 04A65C 800CEC7C 46000686 */     mov.s $f26, $f0
  /* 04A660 800CEC80 0C00D734 */       jal cosf
  /* 04A664 800CEC84 C7AC0058 */      lwc1 $f12, 0x58($sp)
  /* 04A668 800CEC88 461AA102 */     mul.s $f4, $f20, $f26
  /* 04A66C 800CEC8C E7A0004C */      swc1 $f0, 0x4c($sp)
  /* 04A670 800CEC90 4600B306 */     mov.s $f12, $f22
  /* 04A674 800CEC94 4600C182 */     mul.s $f6, $f24, $f0
  /* 04A678 800CEC98 0C00618F */       jal atan2f
  /* 04A67C 800CEC9C 46062380 */     add.s $f14, $f4, $f6
  /* 04A680 800CECA0 E7A00054 */      swc1 $f0, 0x54($sp)
  /* 04A684 800CECA4 0C00C0FC */       jal __sinf
  /* 04A688 800CECA8 46000306 */     mov.s $f12, $f0
  /* 04A68C 800CECAC E7A00048 */      swc1 $f0, 0x48($sp)
  /* 04A690 800CECB0 0C00D734 */       jal cosf
  /* 04A694 800CECB4 C7AC0054 */      lwc1 $f12, 0x54($sp)
  /* 04A698 800CECB8 4616B202 */     mul.s $f8, $f22, $f22
  /* 04A69C 800CECBC E7A00044 */      swc1 $f0, 0x44($sp)
  /* 04A6A0 800CECC0 4614A282 */     mul.s $f10, $f20, $f20
  /* 04A6A4 800CECC4 460A4100 */     add.s $f4, $f8, $f10
  /* 04A6A8 800CECC8 4618C182 */     mul.s $f6, $f24, $f24
  /* 04A6AC 800CECCC 0C00CD44 */       jal sqrtf
  /* 04A6B0 800CECD0 46062300 */     add.s $f12, $f4, $f6
  /* 04A6B4 800CECD4 0C006252 */       jal rand_f32
  /* 04A6B8 800CECD8 E7A0005C */      swc1 $f0, 0x5c($sp)
  /* 04A6BC 800CECDC 3C01800D */       lui $at, %hi(D_ovl0_800D5FC0)
  /* 04A6C0 800CECE0 C4285FC0 */      lwc1 $f8, %lo(D_ovl0_800D5FC0)($at)
  /* 04A6C4 800CECE4 C7AC0074 */      lwc1 $f12, 0x74($sp)
  /* 04A6C8 800CECE8 46080502 */     mul.s $f20, $f0, $f8
  /* 04A6CC 800CECEC 0C00C0FC */       jal __sinf
  /* 04A6D0 800CECF0 00000000 */       nop 
  /* 04A6D4 800CECF4 C7AA005C */      lwc1 $f10, 0x5c($sp)
  /* 04A6D8 800CECF8 4600A306 */     mov.s $f12, $f20
  /* 04A6DC 800CECFC 460A0602 */     mul.s $f24, $f0, $f10
  /* 04A6E0 800CED00 0C00D734 */       jal cosf
  /* 04A6E4 800CED04 00000000 */       nop 
  /* 04A6E8 800CED08 46180582 */     mul.s $f22, $f0, $f24
  /* 04A6EC 800CED0C 0C00C0FC */       jal __sinf
  /* 04A6F0 800CED10 4600A306 */     mov.s $f12, $f20
  /* 04A6F4 800CED14 46180502 */     mul.s $f20, $f0, $f24
  /* 04A6F8 800CED18 0C00D734 */       jal cosf
  /* 04A6FC 800CED1C C7AC0074 */      lwc1 $f12, 0x74($sp)
  /* 04A700 800CED20 C7A4005C */      lwc1 $f4, 0x5c($sp)
  /* 04A704 800CED24 C7B00044 */      lwc1 $f16, 0x44($sp)
  /* 04A708 800CED28 C7AE0048 */      lwc1 $f14, 0x48($sp)
  /* 04A70C 800CED2C 46040082 */     mul.s $f2, $f0, $f4
  /* 04A710 800CED30 4600B307 */     neg.s $f12, $f22
  /* 04A714 800CED34 C7B2004C */      lwc1 $f18, 0x4c($sp)
  /* 04A718 800CED38 4610B182 */     mul.s $f6, $f22, $f16
  /* 04A71C 800CED3C 00000000 */       nop 
  /* 04A720 800CED40 460E1202 */     mul.s $f8, $f2, $f14
  /* 04A724 800CED44 00000000 */       nop 
  /* 04A728 800CED48 461A6102 */     mul.s $f4, $f12, $f26
  /* 04A72C 800CED4C 46083280 */     add.s $f10, $f6, $f8
  /* 04A730 800CED50 460E2182 */     mul.s $f6, $f4, $f14
  /* 04A734 800CED54 E60A002C */      swc1 $f10, 0x2c($s0)
  /* 04A738 800CED58 4612A202 */     mul.s $f8, $f20, $f18
  /* 04A73C 800CED5C 00000000 */       nop 
  /* 04A740 800CED60 461A1102 */     mul.s $f4, $f2, $f26
  /* 04A744 800CED64 46083280 */     add.s $f10, $f6, $f8
  /* 04A748 800CED68 46102182 */     mul.s $f6, $f4, $f16
  /* 04A74C 800CED6C 00000000 */       nop 
  /* 04A750 800CED70 46126102 */     mul.s $f4, $f12, $f18
  /* 04A754 800CED74 46065200 */     add.s $f8, $f10, $f6
  /* 04A758 800CED78 460E2282 */     mul.s $f10, $f4, $f14
  /* 04A75C 800CED7C E6080030 */      swc1 $f8, 0x30($s0)
  /* 04A760 800CED80 461AA182 */     mul.s $f6, $f20, $f26
  /* 04A764 800CED84 00000000 */       nop 
  /* 04A768 800CED88 46121102 */     mul.s $f4, $f2, $f18
  /* 04A76C 800CED8C 46065201 */     sub.s $f8, $f10, $f6
  /* 04A770 800CED90 46102282 */     mul.s $f10, $f4, $f16
  /* 04A774 800CED94 460A4180 */     add.s $f6, $f8, $f10
  /* 04A778 800CED98 E6060034 */      swc1 $f6, 0x34($s0)
  /* 04A77C 800CED9C 8FBF003C */        lw $ra, 0x3c($sp)
  /* 04A780 800CEDA0 8FB00038 */        lw $s0, 0x38($sp)
  /* 04A784 800CEDA4 D7BA0030 */      ldc1 $f26, 0x30($sp)
  /* 04A788 800CEDA8 D7B80028 */      ldc1 $f24, 0x28($sp)
  /* 04A78C 800CEDAC D7B60020 */      ldc1 $f22, 0x20($sp)
  /* 04A790 800CEDB0 D7B40018 */      ldc1 $f20, 0x18($sp)
  /* 04A794 800CEDB4 03E00008 */        jr $ra
  /* 04A798 800CEDB8 27BD0070 */     addiu $sp, $sp, 0x70

glabel func_ovl0_800CEDBC
  /* 04A79C 800CEDBC 27BDFFD8 */     addiu $sp, $sp, -0x28
  /* 04A7A0 800CEDC0 10A00039 */      beqz $a1, .L800CEEA8
  /* 04A7A4 800CEDC4 AFBF0014 */        sw $ra, 0x14($sp)
  /* 04A7A8 800CEDC8 C4A4001C */      lwc1 $f4, 0x1c($a1)
  /* 04A7AC 800CEDCC C4860020 */      lwc1 $f6, 0x20($a0)
  /* 04A7B0 800CEDD0 C4A80020 */      lwc1 $f8, 0x20($a1)
  /* 04A7B4 800CEDD4 C48A0024 */      lwc1 $f10, 0x24($a0)
  /* 04A7B8 800CEDD8 46062401 */     sub.s $f16, $f4, $f6
  /* 04A7BC 800CEDDC C4860028 */      lwc1 $f6, 0x28($a0)
  /* 04A7C0 800CEDE0 C4A40024 */      lwc1 $f4, 0x24($a1)
  /* 04A7C4 800CEDE4 460A4481 */     sub.s $f18, $f8, $f10
  /* 04A7C8 800CEDE8 46062201 */     sub.s $f8, $f4, $f6
  /* 04A7CC 800CEDEC E7A8001C */      swc1 $f8, 0x1c($sp)
  /* 04A7D0 800CEDF0 C480002C */      lwc1 $f0, 0x2c($a0)
  /* 04A7D4 800CEDF4 C4820030 */      lwc1 $f2, 0x30($a0)
  /* 04A7D8 800CEDF8 C48E0034 */      lwc1 $f14, 0x34($a0)
  /* 04A7DC 800CEDFC 46000282 */     mul.s $f10, $f0, $f0
  /* 04A7E0 800CEE00 E7B20020 */      swc1 $f18, 0x20($sp)
  /* 04A7E4 800CEE04 E7B00024 */      swc1 $f16, 0x24($sp)
  /* 04A7E8 800CEE08 46021102 */     mul.s $f4, $f2, $f2
  /* 04A7EC 800CEE0C AFA40028 */        sw $a0, 0x28($sp)
  /* 04A7F0 800CEE10 460E7202 */     mul.s $f8, $f14, $f14
  /* 04A7F4 800CEE14 46045180 */     add.s $f6, $f10, $f4
  /* 04A7F8 800CEE18 0C00CD44 */       jal sqrtf
  /* 04A7FC 800CEE1C 46083300 */     add.s $f12, $f6, $f8
  /* 04A800 800CEE20 C7B00024 */      lwc1 $f16, 0x24($sp)
  /* 04A804 800CEE24 C7B20020 */      lwc1 $f18, 0x20($sp)
  /* 04A808 800CEE28 C7AE001C */      lwc1 $f14, 0x1c($sp)
  /* 04A80C 800CEE2C 46108282 */     mul.s $f10, $f16, $f16
  /* 04A810 800CEE30 8FA40028 */        lw $a0, 0x28($sp)
  /* 04A814 800CEE34 46000086 */     mov.s $f2, $f0
  /* 04A818 800CEE38 46129102 */     mul.s $f4, $f18, $f18
  /* 04A81C 800CEE3C 46045180 */     add.s $f6, $f10, $f4
  /* 04A820 800CEE40 460E7202 */     mul.s $f8, $f14, $f14
  /* 04A824 800CEE44 44805000 */      mtc1 $zero, $f10
  /* 04A828 800CEE48 46083300 */     add.s $f12, $f6, $f8
  /* 04A82C 800CEE4C 460C5032 */    c.eq.s $f10, $f12
  /* 04A830 800CEE50 00000000 */       nop 
  /* 04A834 800CEE54 45030015 */     bc1tl .L800CEEAC
  /* 04A838 800CEE58 8FBF0014 */        lw $ra, 0x14($sp)
  /* 04A83C 800CEE5C AFA40028 */        sw $a0, 0x28($sp)
  /* 04A840 800CEE60 E7A20018 */      swc1 $f2, 0x18($sp)
  /* 04A844 800CEE64 E7B00024 */      swc1 $f16, 0x24($sp)
  /* 04A848 800CEE68 0C00CD44 */       jal sqrtf
  /* 04A84C 800CEE6C E7B20020 */      swc1 $f18, 0x20($sp)
  /* 04A850 800CEE70 C7A20018 */      lwc1 $f2, 0x18($sp)
  /* 04A854 800CEE74 C7B00024 */      lwc1 $f16, 0x24($sp)
  /* 04A858 800CEE78 C7B20020 */      lwc1 $f18, 0x20($sp)
  /* 04A85C 800CEE7C 46001083 */     div.s $f2, $f2, $f0
  /* 04A860 800CEE80 C7AE001C */      lwc1 $f14, 0x1c($sp)
  /* 04A864 800CEE84 8FA40028 */        lw $a0, 0x28($sp)
  /* 04A868 800CEE88 46028102 */     mul.s $f4, $f16, $f2
  /* 04A86C 800CEE8C 00000000 */       nop 
  /* 04A870 800CEE90 46029182 */     mul.s $f6, $f18, $f2
  /* 04A874 800CEE94 00000000 */       nop 
  /* 04A878 800CEE98 46027202 */     mul.s $f8, $f14, $f2
  /* 04A87C 800CEE9C E484002C */      swc1 $f4, 0x2c($a0)
  /* 04A880 800CEEA0 E4860030 */      swc1 $f6, 0x30($a0)
  /* 04A884 800CEEA4 E4880034 */      swc1 $f8, 0x34($a0)
  .L800CEEA8:
  /* 04A888 800CEEA8 8FBF0014 */        lw $ra, 0x14($sp)
  .L800CEEAC:
  /* 04A88C 800CEEAC 27BD0028 */     addiu $sp, $sp, 0x28
  /* 04A890 800CEEB0 03E00008 */        jr $ra
  /* 04A894 800CEEB4 00000000 */       nop 

glabel func_ovl0_800CEEB8
  /* 04A898 800CEEB8 10A00022 */      beqz $a1, .L800CEF44
  /* 04A89C 800CEEBC AFA60008 */        sw $a2, 8($sp)
  /* 04A8A0 800CEEC0 C4A4001C */      lwc1 $f4, 0x1c($a1)
  /* 04A8A4 800CEEC4 C4860020 */      lwc1 $f6, 0x20($a0)
  /* 04A8A8 800CEEC8 C4A80020 */      lwc1 $f8, 0x20($a1)
  /* 04A8AC 800CEECC C48A0024 */      lwc1 $f10, 0x24($a0)
  /* 04A8B0 800CEED0 46062001 */     sub.s $f0, $f4, $f6
  /* 04A8B4 800CEED4 C4840028 */      lwc1 $f4, 0x28($a0)
  /* 04A8B8 800CEED8 C4B20024 */      lwc1 $f18, 0x24($a1)
  /* 04A8BC 800CEEDC 460A4081 */     sub.s $f2, $f8, $f10
  /* 04A8C0 800CEEE0 46000182 */     mul.s $f6, $f0, $f0
  /* 04A8C4 800CEEE4 46049301 */     sub.s $f12, $f18, $f4
  /* 04A8C8 800CEEE8 46021202 */     mul.s $f8, $f2, $f2
  /* 04A8CC 800CEEEC 44802000 */      mtc1 $zero, $f4
  /* 04A8D0 800CEEF0 460C6482 */     mul.s $f18, $f12, $f12
  /* 04A8D4 800CEEF4 46083280 */     add.s $f10, $f6, $f8
  /* 04A8D8 800CEEF8 C7A60008 */      lwc1 $f6, 8($sp)
  /* 04A8DC 800CEEFC 46125400 */     add.s $f16, $f10, $f18
  /* 04A8E0 800CEF00 46102032 */    c.eq.s $f4, $f16
  /* 04A8E4 800CEF04 00000000 */       nop 
  /* 04A8E8 800CEF08 4501000E */      bc1t .L800CEF44
  /* 04A8EC 800CEF0C 00000000 */       nop 
  /* 04A8F0 800CEF10 46103383 */     div.s $f14, $f6, $f16
  /* 04A8F4 800CEF14 C488002C */      lwc1 $f8, 0x2c($a0)
  /* 04A8F8 800CEF18 C4840030 */      lwc1 $f4, 0x30($a0)
  /* 04A8FC 800CEF1C 46007282 */     mul.s $f10, $f14, $f0
  /* 04A900 800CEF20 460A4480 */     add.s $f18, $f8, $f10
  /* 04A904 800CEF24 46027182 */     mul.s $f6, $f14, $f2
  /* 04A908 800CEF28 C48A0034 */      lwc1 $f10, 0x34($a0)
  /* 04A90C 800CEF2C E492002C */      swc1 $f18, 0x2c($a0)
  /* 04A910 800CEF30 460C7482 */     mul.s $f18, $f14, $f12
  /* 04A914 800CEF34 46062200 */     add.s $f8, $f4, $f6
  /* 04A918 800CEF38 46125100 */     add.s $f4, $f10, $f18
  /* 04A91C 800CEF3C E4880030 */      swc1 $f8, 0x30($a0)
  /* 04A920 800CEF40 E4840034 */      swc1 $f4, 0x34($a0)
  .L800CEF44:
  /* 04A924 800CEF44 03E00008 */        jr $ra
  /* 04A928 800CEF48 00000000 */       nop 

# read sprite bank commands? byte code?
glabel func_ovl0_800CEF4C
  /* 04A92C 800CEF4C 27BDFF58 */     addiu $sp, $sp, -0xa8
  /* 04A930 800CEF50 AFBF0024 */        sw $ra, 0x24($sp)
  /* 04A934 800CEF54 AFB30020 */        sw $s3, 0x20($sp)
  /* 04A938 800CEF58 AFB2001C */        sw $s2, 0x1c($sp)
  /* 04A93C 800CEF5C AFB10018 */        sw $s1, 0x18($sp)
  /* 04A940 800CEF60 AFB00014 */        sw $s0, 0x14($sp)
  /* 04A944 800CEF64 AFA500AC */        sw $a1, 0xac($sp)
  /* 04A948 800CEF68 AFA600B0 */        sw $a2, 0xb0($sp)
  /* 04A94C 800CEF6C 948E0006 */       lhu $t6, 6($a0)
  /* 04A950 800CEF70 00809025 */        or $s2, $a0, $zero
  /* 04A954 800CEF74 31CF0800 */      andi $t7, $t6, 0x800
  /* 04A958 800CEF78 51E00004 */      beql $t7, $zero, .L800CEF8C
  /* 04A95C 800CEF7C 9642000C */       lhu $v0, 0xc($s2)
  /* 04A960 800CEF80 10000735 */         b .L800D0C58
  /* 04A964 800CEF84 8E420000 */        lw $v0, ($s2)
  /* 04A968 800CEF88 9642000C */       lhu $v0, 0xc($s2)
  .L800CEF8C:
  /* 04A96C 800CEF8C 50400532 */      beql $v0, $zero, .L800D0458
  /* 04A970 800CEF90 9642000E */       lhu $v0, 0xe($s2)
  /* 04A974 800CEF94 2458FFFF */     addiu $t8, $v0, -1
  /* 04A978 800CEF98 3319FFFF */      andi $t9, $t8, 0xffff
  /* 04A97C 800CEF9C 1720052D */      bnez $t9, .L800D0454
  /* 04A980 800CEFA0 A658000C */        sh $t8, 0xc($s2)
  /* 04A984 800CEFA4 8E480014 */        lw $t0, 0x14($s2)
  /* 04A988 800CEFA8 96490018 */       lhu $t1, 0x18($s2)
  /* 04A98C 800CEFAC 27B30080 */     addiu $s3, $sp, 0x80
  /* 04A990 800CEFB0 01098821 */      addu $s1, $t0, $t1
  /* 04A994 800CEFB4 92240000 */       lbu $a0, ($s1)
  .L800CEFB8:
  /* 04A998 800CEFB8 26310001 */     addiu $s1, $s1, 1
  /* 04A99C 800CEFBC 28810080 */      slti $at, $a0, 0x80
  /* 04A9A0 800CEFC0 14200509 */      bnez $at, .L800D03E8
  /* 04A9A4 800CEFC4 00808025 */        or $s0, $a0, $zero
  /* 04A9A8 800CEFC8 320200F8 */      andi $v0, $s0, 0xf8
  /* 04A9AC 800CEFCC 304A00FF */      andi $t2, $v0, 0xff
  /* 04A9B0 800CEFD0 29410099 */      slti $at, $t2, 0x99
  /* 04A9B4 800CEFD4 A7A00094 */        sh $zero, 0x94($sp)
  /* 04A9B8 800CEFD8 1420000A */      bnez $at, .L800CF004
  /* 04A9BC 800CEFDC 304300FF */      andi $v1, $v0, 0xff
  /* 04A9C0 800CEFE0 320200F0 */      andi $v0, $s0, 0xf0
  /* 04A9C4 800CEFE4 304500FF */      andi $a1, $v0, 0xff
  /* 04A9C8 800CEFE8 240100C0 */     addiu $at, $zero, 0xc0
  /* 04A9CC 800CEFEC 10A10005 */       beq $a1, $at, .L800CF004
  /* 04A9D0 800CEFF0 304300FF */      andi $v1, $v0, 0xff
  /* 04A9D4 800CEFF4 240100D0 */     addiu $at, $zero, 0xd0
  /* 04A9D8 800CEFF8 50A10003 */      beql $a1, $at, .L800CF008
  /* 04A9DC 800CEFFC 286100D1 */      slti $at, $v1, 0xd1
  /* 04A9E0 800CF000 308300FF */      andi $v1, $a0, 0xff
  .L800CF004:
  /* 04A9E4 800CF004 286100D1 */      slti $at, $v1, 0xd1
  .L800CF008:
  /* 04A9E8 800CF008 1420000B */      bnez $at, .L800CF038
  /* 04A9EC 800CF00C 00601025 */        or $v0, $v1, $zero
  /* 04A9F0 800CF010 244BFF06 */     addiu $t3, $v0, -0xfa
  /* 04A9F4 800CF014 2D610006 */     sltiu $at, $t3, 6
  /* 04A9F8 800CF018 50200507 */      beql $at, $zero, .L800D0438
  /* 04A9FC 800CF01C 97AA0094 */       lhu $t2, 0x94($sp)
  /* 04AA00 800CF020 000B5880 */       sll $t3, $t3, 2
  /* 04AA04 800CF024 3C01800D */       lui $at, %hi(jtbl_ovl0_800D5FC4)
  /* 04AA08 800CF028 002B0821 */      addu $at, $at, $t3
  /* 04AA0C 800CF02C 8C2B5FC4 */        lw $t3, %lo(jtbl_ovl0_800D5FC4)($at)
  /* 04AA10 800CF030 01600008 */        jr $t3
  /* 04AA14 800CF034 00000000 */       nop 
  .L800CF038:
  /* 04AA18 800CF038 244CFF80 */     addiu $t4, $v0, -0x80
  /* 04AA1C 800CF03C 2D810051 */     sltiu $at, $t4, 0x51
  /* 04AA20 800CF040 102004FC */      beqz $at, jtgt_ovl0_800D0434
  /* 04AA24 800CF044 000C6080 */       sll $t4, $t4, 2
  /* 04AA28 800CF048 3C01800D */       lui $at, %hi(D_ovl0_800D5FDC)
  /* 04AA2C 800CF04C 002C0821 */      addu $at, $at, $t4
  /* 04AA30 800CF050 8C2C5FDC */        lw $t4, %lo(D_ovl0_800D5FDC)($at)
  /* 04AA34 800CF054 01800008 */        jr $t4
  /* 04AA38 800CF058 00000000 */       nop 
  glabel jtgt_ovl0_800CF05C
  /* 04AA3C 800CF05C 320D0001 */      andi $t5, $s0, 1
  /* 04AA40 800CF060 51A00006 */      beql $t5, $zero, .L800CF07C
  /* 04AA44 800CF064 320E0002 */      andi $t6, $s0, 2
  /* 04AA48 800CF068 02202025 */        or $a0, $s1, $zero
  /* 04AA4C 800CF06C 0C033AF0 */       jal func_ovl0_800CEBC0
  /* 04AA50 800CF070 26450020 */     addiu $a1, $s2, 0x20
  /* 04AA54 800CF074 00408825 */        or $s1, $v0, $zero
  /* 04AA58 800CF078 320E0002 */      andi $t6, $s0, 2
  .L800CF07C:
  /* 04AA5C 800CF07C 51C00006 */      beql $t6, $zero, .L800CF098
  /* 04AA60 800CF080 320F0004 */      andi $t7, $s0, 4
  /* 04AA64 800CF084 02202025 */        or $a0, $s1, $zero
  /* 04AA68 800CF088 0C033AF0 */       jal func_ovl0_800CEBC0
  /* 04AA6C 800CF08C 26450024 */     addiu $a1, $s2, 0x24
  /* 04AA70 800CF090 00408825 */        or $s1, $v0, $zero
  /* 04AA74 800CF094 320F0004 */      andi $t7, $s0, 4
  .L800CF098:
  /* 04AA78 800CF098 51E004E7 */      beql $t7, $zero, .L800D0438
  /* 04AA7C 800CF09C 97AA0094 */       lhu $t2, 0x94($sp)
  /* 04AA80 800CF0A0 02202025 */        or $a0, $s1, $zero
  /* 04AA84 800CF0A4 0C033AF0 */       jal func_ovl0_800CEBC0
  /* 04AA88 800CF0A8 26450028 */     addiu $a1, $s2, 0x28
  /* 04AA8C 800CF0AC 100004E1 */         b jtgt_ovl0_800D0434
  /* 04AA90 800CF0B0 00408825 */        or $s1, $v0, $zero
  glabel jtgt_ovl0_800CF0B4
  /* 04AA94 800CF0B4 32180001 */      andi $t8, $s0, 1
  /* 04AA98 800CF0B8 5300000A */      beql $t8, $zero, .L800CF0E4
  /* 04AA9C 800CF0BC 32190002 */      andi $t9, $s0, 2
  /* 04AAA0 800CF0C0 02202025 */        or $a0, $s1, $zero
  /* 04AAA4 800CF0C4 0C033AF0 */       jal func_ovl0_800CEBC0
  /* 04AAA8 800CF0C8 02602825 */        or $a1, $s3, $zero
  /* 04AAAC 800CF0CC C6440020 */      lwc1 $f4, 0x20($s2)
  /* 04AAB0 800CF0D0 C7A60080 */      lwc1 $f6, 0x80($sp)
  /* 04AAB4 800CF0D4 00408825 */        or $s1, $v0, $zero
  /* 04AAB8 800CF0D8 46062200 */     add.s $f8, $f4, $f6
  /* 04AABC 800CF0DC E6480020 */      swc1 $f8, 0x20($s2)
  /* 04AAC0 800CF0E0 32190002 */      andi $t9, $s0, 2
  .L800CF0E4:
  /* 04AAC4 800CF0E4 5320000A */      beql $t9, $zero, .L800CF110
  /* 04AAC8 800CF0E8 32080004 */      andi $t0, $s0, 4
  /* 04AACC 800CF0EC 02202025 */        or $a0, $s1, $zero
  /* 04AAD0 800CF0F0 0C033AF0 */       jal func_ovl0_800CEBC0
  /* 04AAD4 800CF0F4 02602825 */        or $a1, $s3, $zero
  /* 04AAD8 800CF0F8 C64A0024 */      lwc1 $f10, 0x24($s2)
  /* 04AADC 800CF0FC C7A40080 */      lwc1 $f4, 0x80($sp)
  /* 04AAE0 800CF100 00408825 */        or $s1, $v0, $zero
  /* 04AAE4 800CF104 46045180 */     add.s $f6, $f10, $f4
  /* 04AAE8 800CF108 E6460024 */      swc1 $f6, 0x24($s2)
  /* 04AAEC 800CF10C 32080004 */      andi $t0, $s0, 4
  .L800CF110:
  /* 04AAF0 800CF110 510004C9 */      beql $t0, $zero, .L800D0438
  /* 04AAF4 800CF114 97AA0094 */       lhu $t2, 0x94($sp)
  /* 04AAF8 800CF118 02202025 */        or $a0, $s1, $zero
  /* 04AAFC 800CF11C 0C033AF0 */       jal func_ovl0_800CEBC0
  /* 04AB00 800CF120 02602825 */        or $a1, $s3, $zero
  /* 04AB04 800CF124 C6480028 */      lwc1 $f8, 0x28($s2)
  /* 04AB08 800CF128 C7AA0080 */      lwc1 $f10, 0x80($sp)
  /* 04AB0C 800CF12C 00408825 */        or $s1, $v0, $zero
  /* 04AB10 800CF130 460A4100 */     add.s $f4, $f8, $f10
  /* 04AB14 800CF134 100004BF */         b jtgt_ovl0_800D0434
  /* 04AB18 800CF138 E6440028 */      swc1 $f4, 0x28($s2)
  glabel jtgt_ovl0_800CF13C
  /* 04AB1C 800CF13C 32090001 */      andi $t1, $s0, 1
  /* 04AB20 800CF140 51200006 */      beql $t1, $zero, .L800CF15C
  /* 04AB24 800CF144 320A0002 */      andi $t2, $s0, 2
  /* 04AB28 800CF148 02202025 */        or $a0, $s1, $zero
  /* 04AB2C 800CF14C 0C033AF0 */       jal func_ovl0_800CEBC0
  /* 04AB30 800CF150 2645002C */     addiu $a1, $s2, 0x2c
  /* 04AB34 800CF154 00408825 */        or $s1, $v0, $zero
  /* 04AB38 800CF158 320A0002 */      andi $t2, $s0, 2
  .L800CF15C:
  /* 04AB3C 800CF15C 51400006 */      beql $t2, $zero, .L800CF178
  /* 04AB40 800CF160 320B0004 */      andi $t3, $s0, 4
  /* 04AB44 800CF164 02202025 */        or $a0, $s1, $zero
  /* 04AB48 800CF168 0C033AF0 */       jal func_ovl0_800CEBC0
  /* 04AB4C 800CF16C 26450030 */     addiu $a1, $s2, 0x30
  /* 04AB50 800CF170 00408825 */        or $s1, $v0, $zero
  /* 04AB54 800CF174 320B0004 */      andi $t3, $s0, 4
  .L800CF178:
  /* 04AB58 800CF178 516004AF */      beql $t3, $zero, .L800D0438
  /* 04AB5C 800CF17C 97AA0094 */       lhu $t2, 0x94($sp)
  /* 04AB60 800CF180 02202025 */        or $a0, $s1, $zero
  /* 04AB64 800CF184 0C033AF0 */       jal func_ovl0_800CEBC0
  /* 04AB68 800CF188 26450034 */     addiu $a1, $s2, 0x34
  /* 04AB6C 800CF18C 100004A9 */         b jtgt_ovl0_800D0434
  /* 04AB70 800CF190 00408825 */        or $s1, $v0, $zero
  glabel jtgt_ovl0_800CF194
  /* 04AB74 800CF194 320C0001 */      andi $t4, $s0, 1
  /* 04AB78 800CF198 5180000A */      beql $t4, $zero, .L800CF1C4
  /* 04AB7C 800CF19C 320D0002 */      andi $t5, $s0, 2
  /* 04AB80 800CF1A0 02202025 */        or $a0, $s1, $zero
  /* 04AB84 800CF1A4 0C033AF0 */       jal func_ovl0_800CEBC0
  /* 04AB88 800CF1A8 02602825 */        or $a1, $s3, $zero
  /* 04AB8C 800CF1AC C646002C */      lwc1 $f6, 0x2c($s2)
  /* 04AB90 800CF1B0 C7A80080 */      lwc1 $f8, 0x80($sp)
  /* 04AB94 800CF1B4 00408825 */        or $s1, $v0, $zero
  /* 04AB98 800CF1B8 46083280 */     add.s $f10, $f6, $f8
  /* 04AB9C 800CF1BC E64A002C */      swc1 $f10, 0x2c($s2)
  /* 04ABA0 800CF1C0 320D0002 */      andi $t5, $s0, 2
  .L800CF1C4:
  /* 04ABA4 800CF1C4 51A0000A */      beql $t5, $zero, .L800CF1F0
  /* 04ABA8 800CF1C8 320E0004 */      andi $t6, $s0, 4
  /* 04ABAC 800CF1CC 02202025 */        or $a0, $s1, $zero
  /* 04ABB0 800CF1D0 0C033AF0 */       jal func_ovl0_800CEBC0
  /* 04ABB4 800CF1D4 02602825 */        or $a1, $s3, $zero
  /* 04ABB8 800CF1D8 C6440030 */      lwc1 $f4, 0x30($s2)
  /* 04ABBC 800CF1DC C7A60080 */      lwc1 $f6, 0x80($sp)
  /* 04ABC0 800CF1E0 00408825 */        or $s1, $v0, $zero
  /* 04ABC4 800CF1E4 46062200 */     add.s $f8, $f4, $f6
  /* 04ABC8 800CF1E8 E6480030 */      swc1 $f8, 0x30($s2)
  /* 04ABCC 800CF1EC 320E0004 */      andi $t6, $s0, 4
  .L800CF1F0:
  /* 04ABD0 800CF1F0 51C00491 */      beql $t6, $zero, .L800D0438
  /* 04ABD4 800CF1F4 97AA0094 */       lhu $t2, 0x94($sp)
  /* 04ABD8 800CF1F8 02202025 */        or $a0, $s1, $zero
  /* 04ABDC 800CF1FC 0C033AF0 */       jal func_ovl0_800CEBC0
  /* 04ABE0 800CF200 02602825 */        or $a1, $s3, $zero
  /* 04ABE4 800CF204 C64A0034 */      lwc1 $f10, 0x34($s2)
  /* 04ABE8 800CF208 C7A40080 */      lwc1 $f4, 0x80($sp)
  /* 04ABEC 800CF20C 00408825 */        or $s1, $v0, $zero
  /* 04ABF0 800CF210 46045180 */     add.s $f6, $f10, $f4
  /* 04ABF4 800CF214 10000487 */         b jtgt_ovl0_800D0434
  /* 04ABF8 800CF218 E6460034 */      swc1 $f6, 0x34($s2)
  glabel jtgt_ovl0_800CF21C
  /* 04ABFC 800CF21C 02202025 */        or $a0, $s1, $zero
  /* 04AC00 800CF220 2645000E */     addiu $a1, $s2, 0xe
  /* 04AC04 800CF224 0C033AFE */       jal func_ovl0_800CEBF8
  /* 04AC08 800CF228 26500044 */     addiu $s0, $s2, 0x44
  /* 04AC0C 800CF22C 00402025 */        or $a0, $v0, $zero
  /* 04AC10 800CF230 0C033AF0 */       jal func_ovl0_800CEBC0
  /* 04AC14 800CF234 02002825 */        or $a1, $s0, $zero
  /* 04AC18 800CF238 964F000E */       lhu $t7, 0xe($s2)
  /* 04AC1C 800CF23C 24010001 */     addiu $at, $zero, 1
  /* 04AC20 800CF240 00408825 */        or $s1, $v0, $zero
  /* 04AC24 800CF244 55E1047C */      bnel $t7, $at, .L800D0438
  /* 04AC28 800CF248 97AA0094 */       lhu $t2, 0x94($sp)
  /* 04AC2C 800CF24C C6480044 */      lwc1 $f8, 0x44($s2)
  /* 04AC30 800CF250 A640000E */        sh $zero, 0xe($s2)
  /* 04AC34 800CF254 10000477 */         b jtgt_ovl0_800D0434
  /* 04AC38 800CF258 E6480040 */      swc1 $f8, 0x40($s2)
  glabel jtgt_ovl0_800CF25C
  /* 04AC3C 800CF25C 92380000 */       lbu $t8, ($s1)
  /* 04AC40 800CF260 26310001 */     addiu $s1, $s1, 1
  /* 04AC44 800CF264 10000473 */         b jtgt_ovl0_800D0434
  /* 04AC48 800CF268 A6580006 */        sh $t8, 6($s2)
  glabel jtgt_ovl0_800CF26C
  /* 04AC4C 800CF26C 02202025 */        or $a0, $s1, $zero
  /* 04AC50 800CF270 0C033AF0 */       jal func_ovl0_800CEBC0
  /* 04AC54 800CF274 26450038 */     addiu $a1, $s2, 0x38
  /* 04AC58 800CF278 44805000 */      mtc1 $zero, $f10
  /* 04AC5C 800CF27C C6440038 */      lwc1 $f4, 0x38($s2)
  /* 04AC60 800CF280 00408825 */        or $s1, $v0, $zero
  /* 04AC64 800CF284 46045032 */    c.eq.s $f10, $f4
  /* 04AC68 800CF288 00000000 */       nop 
  /* 04AC6C 800CF28C 45020007 */     bc1fl .L800CF2AC
  /* 04AC70 800CF290 96490006 */       lhu $t1, 6($s2)
  /* 04AC74 800CF294 96590006 */       lhu $t9, 6($s2)
  /* 04AC78 800CF298 2401FFFE */     addiu $at, $zero, -2
  /* 04AC7C 800CF29C 03214024 */       and $t0, $t9, $at
  /* 04AC80 800CF2A0 10000464 */         b jtgt_ovl0_800D0434
  /* 04AC84 800CF2A4 A6480006 */        sh $t0, 6($s2)
  /* 04AC88 800CF2A8 96490006 */       lhu $t1, 6($s2)
  .L800CF2AC:
  /* 04AC8C 800CF2AC 352A0001 */       ori $t2, $t1, 1
  /* 04AC90 800CF2B0 10000460 */         b jtgt_ovl0_800D0434
  /* 04AC94 800CF2B4 A64A0006 */        sh $t2, 6($s2)
  glabel jtgt_ovl0_800CF2B8
  /* 04AC98 800CF2B8 02202025 */        or $a0, $s1, $zero
  /* 04AC9C 800CF2BC 0C033AF0 */       jal func_ovl0_800CEBC0
  /* 04ACA0 800CF2C0 2645003C */     addiu $a1, $s2, 0x3c
  /* 04ACA4 800CF2C4 3C013F80 */       lui $at, (0x3F800000 >> 16) # 1.0
  /* 04ACA8 800CF2C8 44813000 */      mtc1 $at, $f6 # 1.0 to cop1
  /* 04ACAC 800CF2CC C648003C */      lwc1 $f8, 0x3c($s2)
  /* 04ACB0 800CF2D0 00408825 */        or $s1, $v0, $zero
  /* 04ACB4 800CF2D4 46083032 */    c.eq.s $f6, $f8
  /* 04ACB8 800CF2D8 00000000 */       nop 
  /* 04ACBC 800CF2DC 45020007 */     bc1fl .L800CF2FC
  /* 04ACC0 800CF2E0 964D0006 */       lhu $t5, 6($s2)
  /* 04ACC4 800CF2E4 964B0006 */       lhu $t3, 6($s2)
  /* 04ACC8 800CF2E8 2401FFFD */     addiu $at, $zero, -3
  /* 04ACCC 800CF2EC 316CFFFD */      andi $t4, $t3, 0xfffd
  /* 04ACD0 800CF2F0 10000450 */         b jtgt_ovl0_800D0434
  /* 04ACD4 800CF2F4 A64C0006 */        sh $t4, 6($s2)
  /* 04ACD8 800CF2F8 964D0006 */       lhu $t5, 6($s2)
  .L800CF2FC:
  /* 04ACDC 800CF2FC 35AE0002 */       ori $t6, $t5, 2
  /* 04ACE0 800CF300 1000044C */         b jtgt_ovl0_800D0434
  /* 04ACE4 800CF304 A64E0006 */        sh $t6, 6($s2)
  glabel jtgt_ovl0_800CF308
  /* 04ACE8 800CF308 92300000 */       lbu $s0, ($s1)
  /* 04ACEC 800CF30C 922F0001 */       lbu $t7, 1($s1)
  /* 04ACF0 800CF310 26310002 */     addiu $s1, $s1, 2
  /* 04ACF4 800CF314 00108200 */       sll $s0, $s0, 8
  /* 04ACF8 800CF318 020F8021 */      addu $s0, $s0, $t7
  /* 04ACFC 800CF31C 02003025 */        or $a2, $s0, $zero
  /* 04AD00 800CF320 02402025 */        or $a0, $s2, $zero
  /* 04AD04 800CF324 0C0339AE */       jal func_ovl0_800CE6B8
  /* 04AD08 800CF328 92450008 */       lbu $a1, 8($s2)
  /* 04AD0C 800CF32C 10400441 */      beqz $v0, jtgt_ovl0_800D0434
  /* 04AD10 800CF330 00402025 */        or $a0, $v0, $zero
  /* 04AD14 800CF334 C64A0020 */      lwc1 $f10, 0x20($s2)
  /* 04AD18 800CF338 E44A0020 */      swc1 $f10, 0x20($v0)
  /* 04AD1C 800CF33C C6440024 */      lwc1 $f4, 0x24($s2)
  /* 04AD20 800CF340 E4440024 */      swc1 $f4, 0x24($v0)
  /* 04AD24 800CF344 C6460028 */      lwc1 $f6, 0x28($s2)
  /* 04AD28 800CF348 E4460028 */      swc1 $f6, 0x28($v0)
  /* 04AD2C 800CF34C 96580004 */       lhu $t8, 4($s2)
  /* 04AD30 800CF350 A4580004 */        sh $t8, 4($v0)
  /* 04AD34 800CF354 8E590058 */        lw $t9, 0x58($s2)
  /* 04AD38 800CF358 AC590058 */        sw $t9, 0x58($v0)
  /* 04AD3C 800CF35C 8E48005C */        lw $t0, 0x5c($s2)
  /* 04AD40 800CF360 11000004 */      beqz $t0, .L800CF374
  /* 04AD44 800CF364 AC48005C */        sw $t0, 0x5c($v0)
  /* 04AD48 800CF368 9509002A */       lhu $t1, 0x2a($t0)
  /* 04AD4C 800CF36C 252A0001 */     addiu $t2, $t1, 1
  /* 04AD50 800CF370 A50A002A */        sh $t2, 0x2a($t0)
  .L800CF374:
  /* 04AD54 800CF374 92460008 */       lbu $a2, 8($s2)
  /* 04AD58 800CF378 02402825 */        or $a1, $s2, $zero
  /* 04AD5C 800CF37C 0C033BD3 */       jal func_ovl0_800CEF4C
  /* 04AD60 800CF380 000630C3 */       sra $a2, $a2, 3
  /* 04AD64 800CF384 1000042C */         b .L800D0438
  /* 04AD68 800CF388 97AA0094 */       lhu $t2, 0x94($sp)
  glabel jtgt_ovl0_800CF38C
  /* 04AD6C 800CF38C 92300000 */       lbu $s0, ($s1)
  /* 04AD70 800CF390 922B0001 */       lbu $t3, 1($s1)
  /* 04AD74 800CF394 26310002 */     addiu $s1, $s1, 2
  /* 04AD78 800CF398 00108200 */       sll $s0, $s0, 8
  /* 04AD7C 800CF39C 020B8021 */      addu $s0, $s0, $t3
  /* 04AD80 800CF3A0 02002825 */        or $a1, $s0, $zero
  /* 04AD84 800CF3A4 0C034D77 */       jal func_ovl0_800D35DC
  /* 04AD88 800CF3A8 92440008 */       lbu $a0, 8($s2)
  /* 04AD8C 800CF3AC 50400422 */      beql $v0, $zero, .L800D0438
  /* 04AD90 800CF3B0 97AA0094 */       lhu $t2, 0x94($sp)
  /* 04AD94 800CF3B4 C6480020 */      lwc1 $f8, 0x20($s2)
  /* 04AD98 800CF3B8 E4480014 */      swc1 $f8, 0x14($v0)
  /* 04AD9C 800CF3BC C64A0024 */      lwc1 $f10, 0x24($s2)
  /* 04ADA0 800CF3C0 E44A0018 */      swc1 $f10, 0x18($v0)
  /* 04ADA4 800CF3C4 C6440028 */      lwc1 $f4, 0x28($s2)
  /* 04ADA8 800CF3C8 E444001C */      swc1 $f4, 0x1c($v0)
  /* 04ADAC 800CF3CC 964C0004 */       lhu $t4, 4($s2)
  /* 04ADB0 800CF3D0 A44C0004 */        sh $t4, 4($v0)
  /* 04ADB4 800CF3D4 8E4D005C */        lw $t5, 0x5c($s2)
  /* 04ADB8 800CF3D8 AC4D004C */        sw $t5, 0x4c($v0)
  /* 04ADBC 800CF3DC 11A00415 */      beqz $t5, jtgt_ovl0_800D0434
  /* 04ADC0 800CF3E0 01A01825 */        or $v1, $t5, $zero
  /* 04ADC4 800CF3E4 946E002A */       lhu $t6, 0x2a($v1)
  /* 04ADC8 800CF3E8 25CF0001 */     addiu $t7, $t6, 1
  /* 04ADCC 800CF3EC 10000411 */         b jtgt_ovl0_800D0434
  /* 04ADD0 800CF3F0 A46F002A */        sh $t7, 0x2a($v1)
  glabel jtgt_ovl0_800CF3F4
  /* 04ADD4 800CF3F4 92220002 */       lbu $v0, 2($s1)
  /* 04ADD8 800CF3F8 92300000 */       lbu $s0, ($s1)
  /* 04ADDC 800CF3FC 92390003 */       lbu $t9, 3($s1)
  /* 04ADE0 800CF400 92380001 */       lbu $t8, 1($s1)
  /* 04ADE4 800CF404 00021200 */       sll $v0, $v0, 8
  /* 04ADE8 800CF408 00108200 */       sll $s0, $s0, 8
  /* 04ADEC 800CF40C 00591021 */      addu $v0, $v0, $t9
  /* 04ADF0 800CF410 26310004 */     addiu $s1, $s1, 4
  /* 04ADF4 800CF414 AFA20088 */        sw $v0, 0x88($sp)
  /* 04ADF8 800CF418 0C006252 */       jal rand_f32
  /* 04ADFC 800CF41C 02188021 */      addu $s0, $s0, $t8
  /* 04AE00 800CF420 8FA20088 */        lw $v0, 0x88($sp)
  /* 04AE04 800CF424 44823000 */      mtc1 $v0, $f6
  /* 04AE08 800CF428 00000000 */       nop 
  /* 04AE0C 800CF42C 46803220 */   cvt.s.w $f8, $f6
  /* 04AE10 800CF430 46080282 */     mul.s $f10, $f0, $f8
  /* 04AE14 800CF434 4600510D */ trunc.w.s $f4, $f10
  /* 04AE18 800CF438 44092000 */      mfc1 $t1, $f4
  /* 04AE1C 800CF43C 00000000 */       nop 
  /* 04AE20 800CF440 01305021 */      addu $t2, $t1, $s0
  /* 04AE24 800CF444 100003FB */         b jtgt_ovl0_800D0434
  /* 04AE28 800CF448 A64A001E */        sh $t2, 0x1e($s2)
  glabel jtgt_ovl0_800CF44C
  /* 04AE2C 800CF44C 92300000 */       lbu $s0, ($s1)
  /* 04AE30 800CF450 0C006252 */       jal rand_f32
  /* 04AE34 800CF454 26310001 */     addiu $s1, $s1, 1
  /* 04AE38 800CF458 3C0142C8 */       lui $at, (0x42C80000 >> 16) # 100.0
  /* 04AE3C 800CF45C 44813000 */      mtc1 $at, $f6 # 100.0 to cop1
  /* 04AE40 800CF460 00000000 */       nop 
  /* 04AE44 800CF464 46060202 */     mul.s $f8, $f0, $f6
  /* 04AE48 800CF468 4600428D */ trunc.w.s $f10, $f8
  /* 04AE4C 800CF46C 440C5000 */      mfc1 $t4, $f10
  /* 04AE50 800CF470 00000000 */       nop 
  /* 04AE54 800CF474 020C082A */       slt $at, $s0, $t4
  /* 04AE58 800CF478 542003EF */      bnel $at, $zero, .L800D0438
  /* 04AE5C 800CF47C 97AA0094 */       lhu $t2, 0x94($sp)
  /* 04AE60 800CF480 8E4E0014 */        lw $t6, 0x14($s2)
  /* 04AE64 800CF484 240D0001 */     addiu $t5, $zero, 1
  /* 04AE68 800CF488 A64D001E */        sh $t5, 0x1e($s2)
  /* 04AE6C 800CF48C 100003EE */         b .L800D0448
  /* 04AE70 800CF490 022E1023 */      subu $v0, $s1, $t6
  glabel jtgt_ovl0_800CF494
  /* 04AE74 800CF494 02202025 */        or $a0, $s1, $zero
  /* 04AE78 800CF498 0C033AF0 */       jal func_ovl0_800CEBC0
  /* 04AE7C 800CF49C 02602825 */        or $a1, $s3, $zero
  /* 04AE80 800CF4A0 0C006252 */       jal rand_f32
  /* 04AE84 800CF4A4 00408825 */        or $s1, $v0, $zero
  /* 04AE88 800CF4A8 C7A60080 */      lwc1 $f6, 0x80($sp)
  /* 04AE8C 800CF4AC C6440020 */      lwc1 $f4, 0x20($s2)
  /* 04AE90 800CF4B0 02202025 */        or $a0, $s1, $zero
  /* 04AE94 800CF4B4 46003202 */     mul.s $f8, $f6, $f0
  /* 04AE98 800CF4B8 02602825 */        or $a1, $s3, $zero
  /* 04AE9C 800CF4BC 46082280 */     add.s $f10, $f4, $f8
  /* 04AEA0 800CF4C0 0C033AF0 */       jal func_ovl0_800CEBC0
  /* 04AEA4 800CF4C4 E64A0020 */      swc1 $f10, 0x20($s2)
  /* 04AEA8 800CF4C8 0C006252 */       jal rand_f32
  /* 04AEAC 800CF4CC 00408825 */        or $s1, $v0, $zero
  /* 04AEB0 800CF4D0 C7A40080 */      lwc1 $f4, 0x80($sp)
  /* 04AEB4 800CF4D4 C6460024 */      lwc1 $f6, 0x24($s2)
  /* 04AEB8 800CF4D8 02202025 */        or $a0, $s1, $zero
  /* 04AEBC 800CF4DC 46002202 */     mul.s $f8, $f4, $f0
  /* 04AEC0 800CF4E0 02602825 */        or $a1, $s3, $zero
  /* 04AEC4 800CF4E4 46083280 */     add.s $f10, $f6, $f8
  /* 04AEC8 800CF4E8 0C033AF0 */       jal func_ovl0_800CEBC0
  /* 04AECC 800CF4EC E64A0024 */      swc1 $f10, 0x24($s2)
  /* 04AED0 800CF4F0 0C006252 */       jal rand_f32
  /* 04AED4 800CF4F4 00408825 */        or $s1, $v0, $zero
  /* 04AED8 800CF4F8 C7A60080 */      lwc1 $f6, 0x80($sp)
  /* 04AEDC 800CF4FC C6440028 */      lwc1 $f4, 0x28($s2)
  /* 04AEE0 800CF500 46003202 */     mul.s $f8, $f6, $f0
  /* 04AEE4 800CF504 46082280 */     add.s $f10, $f4, $f8
  /* 04AEE8 800CF508 100003CA */         b jtgt_ovl0_800D0434
  /* 04AEEC 800CF50C E64A0028 */      swc1 $f10, 0x28($s2)
  glabel jtgt_ovl0_800CF510
  /* 04AEF0 800CF510 02202025 */        or $a0, $s1, $zero
  /* 04AEF4 800CF514 0C033AF0 */       jal func_ovl0_800CEBC0
  /* 04AEF8 800CF518 02602825 */        or $a1, $s3, $zero
  /* 04AEFC 800CF51C 00408825 */        or $s1, $v0, $zero
  /* 04AF00 800CF520 02402025 */        or $a0, $s2, $zero
  /* 04AF04 800CF524 0C033B0D */       jal func_ovl0_800CEC34
  /* 04AF08 800CF528 8FA50080 */        lw $a1, 0x80($sp)
  /* 04AF0C 800CF52C 100003C2 */         b .L800D0438
  /* 04AF10 800CF530 97AA0094 */       lhu $t2, 0x94($sp)
  glabel jtgt_ovl0_800CF534
  /* 04AF14 800CF534 92220002 */       lbu $v0, 2($s1)
  /* 04AF18 800CF538 92300000 */       lbu $s0, ($s1)
  /* 04AF1C 800CF53C 92380003 */       lbu $t8, 3($s1)
  /* 04AF20 800CF540 922F0001 */       lbu $t7, 1($s1)
  /* 04AF24 800CF544 00021200 */       sll $v0, $v0, 8
  /* 04AF28 800CF548 00108200 */       sll $s0, $s0, 8
  /* 04AF2C 800CF54C 00581021 */      addu $v0, $v0, $t8
  /* 04AF30 800CF550 26310004 */     addiu $s1, $s1, 4
  /* 04AF34 800CF554 AFA20088 */        sw $v0, 0x88($sp)
  /* 04AF38 800CF558 0C006252 */       jal rand_f32
  /* 04AF3C 800CF55C 020F8021 */      addu $s0, $s0, $t7
  /* 04AF40 800CF560 8FA20088 */        lw $v0, 0x88($sp)
  /* 04AF44 800CF564 02402025 */        or $a0, $s2, $zero
  /* 04AF48 800CF568 92450008 */       lbu $a1, 8($s2)
  /* 04AF4C 800CF56C 44823000 */      mtc1 $v0, $f6
  /* 04AF50 800CF570 00000000 */       nop 
  /* 04AF54 800CF574 46803120 */   cvt.s.w $f4, $f6
  /* 04AF58 800CF578 46002202 */     mul.s $f8, $f4, $f0
  /* 04AF5C 800CF57C 4600428D */ trunc.w.s $f10, $f8
  /* 04AF60 800CF580 44085000 */      mfc1 $t0, $f10
  /* 04AF64 800CF584 00000000 */       nop 
  /* 04AF68 800CF588 02088021 */      addu $s0, $s0, $t0
  /* 04AF6C 800CF58C 0C0339AE */       jal func_ovl0_800CE6B8
  /* 04AF70 800CF590 02003025 */        or $a2, $s0, $zero
  /* 04AF74 800CF594 104003A7 */      beqz $v0, jtgt_ovl0_800D0434
  /* 04AF78 800CF598 00402025 */        or $a0, $v0, $zero
  /* 04AF7C 800CF59C C6460020 */      lwc1 $f6, 0x20($s2)
  /* 04AF80 800CF5A0 E4460020 */      swc1 $f6, 0x20($v0)
  /* 04AF84 800CF5A4 C6440024 */      lwc1 $f4, 0x24($s2)
  /* 04AF88 800CF5A8 E4440024 */      swc1 $f4, 0x24($v0)
  /* 04AF8C 800CF5AC C6480028 */      lwc1 $f8, 0x28($s2)
  /* 04AF90 800CF5B0 E4480028 */      swc1 $f8, 0x28($v0)
  /* 04AF94 800CF5B4 96490004 */       lhu $t1, 4($s2)
  /* 04AF98 800CF5B8 A4490004 */        sh $t1, 4($v0)
  /* 04AF9C 800CF5BC 8E4A0058 */        lw $t2, 0x58($s2)
  /* 04AFA0 800CF5C0 AC4A0058 */        sw $t2, 0x58($v0)
  /* 04AFA4 800CF5C4 8E4B005C */        lw $t3, 0x5c($s2)
  /* 04AFA8 800CF5C8 11600004 */      beqz $t3, .L800CF5DC
  /* 04AFAC 800CF5CC AC4B005C */        sw $t3, 0x5c($v0)
  /* 04AFB0 800CF5D0 956C002A */       lhu $t4, 0x2a($t3)
  /* 04AFB4 800CF5D4 258D0001 */     addiu $t5, $t4, 1
  /* 04AFB8 800CF5D8 A56D002A */        sh $t5, 0x2a($t3)
  .L800CF5DC:
  /* 04AFBC 800CF5DC 92460008 */       lbu $a2, 8($s2)
  /* 04AFC0 800CF5E0 02402825 */        or $a1, $s2, $zero
  /* 04AFC4 800CF5E4 0C033BD3 */       jal func_ovl0_800CEF4C
  /* 04AFC8 800CF5E8 000630C3 */       sra $a2, $a2, 3
  /* 04AFCC 800CF5EC 10000392 */         b .L800D0438
  /* 04AFD0 800CF5F0 97AA0094 */       lhu $t2, 0x94($sp)
  glabel jtgt_ovl0_800CF5F4
  /* 04AFD4 800CF5F4 02202025 */        or $a0, $s1, $zero
  /* 04AFD8 800CF5F8 0C033AF0 */       jal func_ovl0_800CEBC0
  /* 04AFDC 800CF5FC 02602825 */        or $a1, $s3, $zero
  /* 04AFE0 800CF600 C64A002C */      lwc1 $f10, 0x2c($s2)
  /* 04AFE4 800CF604 C7A60080 */      lwc1 $f6, 0x80($sp)
  /* 04AFE8 800CF608 C6480030 */      lwc1 $f8, 0x30($s2)
  /* 04AFEC 800CF60C 00408825 */        or $s1, $v0, $zero
  /* 04AFF0 800CF610 46065102 */     mul.s $f4, $f10, $f6
  /* 04AFF4 800CF614 E644002C */      swc1 $f4, 0x2c($s2)
  /* 04AFF8 800CF618 C7AA0080 */      lwc1 $f10, 0x80($sp)
  /* 04AFFC 800CF61C C6440034 */      lwc1 $f4, 0x34($s2)
  /* 04B000 800CF620 460A4182 */     mul.s $f6, $f8, $f10
  /* 04B004 800CF624 E6460030 */      swc1 $f6, 0x30($s2)
  /* 04B008 800CF628 C7A80080 */      lwc1 $f8, 0x80($sp)
  /* 04B00C 800CF62C 46082282 */     mul.s $f10, $f4, $f8
  /* 04B010 800CF630 10000380 */         b jtgt_ovl0_800D0434
  /* 04B014 800CF634 E64A0034 */      swc1 $f10, 0x34($s2)
  glabel jtgt_ovl0_800CF638
  /* 04B018 800CF638 02202025 */        or $a0, $s1, $zero
  /* 04B01C 800CF63C 2645000E */     addiu $a1, $s2, 0xe
  /* 04B020 800CF640 0C033AFE */       jal func_ovl0_800CEBF8
  /* 04B024 800CF644 26500044 */     addiu $s0, $s2, 0x44
  /* 04B028 800CF648 00402025 */        or $a0, $v0, $zero
  /* 04B02C 800CF64C 0C033AF0 */       jal func_ovl0_800CEBC0
  /* 04B030 800CF650 02002825 */        or $a1, $s0, $zero
  /* 04B034 800CF654 00402025 */        or $a0, $v0, $zero
  /* 04B038 800CF658 0C033AF0 */       jal func_ovl0_800CEBC0
  /* 04B03C 800CF65C 02602825 */        or $a1, $s3, $zero
  /* 04B040 800CF660 0C006252 */       jal rand_f32
  /* 04B044 800CF664 00408825 */        or $s1, $v0, $zero
  /* 04B048 800CF668 C7A40080 */      lwc1 $f4, 0x80($sp)
  /* 04B04C 800CF66C C6460044 */      lwc1 $f6, 0x44($s2)
  /* 04B050 800CF670 964E000E */       lhu $t6, 0xe($s2)
  /* 04B054 800CF674 46002202 */     mul.s $f8, $f4, $f0
  /* 04B058 800CF678 24010001 */     addiu $at, $zero, 1
  /* 04B05C 800CF67C 46083280 */     add.s $f10, $f6, $f8
  /* 04B060 800CF680 15C1036C */       bne $t6, $at, jtgt_ovl0_800D0434
  /* 04B064 800CF684 E64A0044 */      swc1 $f10, 0x44($s2)
  /* 04B068 800CF688 C6440044 */      lwc1 $f4, 0x44($s2)
  /* 04B06C 800CF68C A640000E */        sh $zero, 0xe($s2)
  /* 04B070 800CF690 10000368 */         b jtgt_ovl0_800D0434
  /* 04B074 800CF694 E6440040 */      swc1 $f4, 0x40($s2)
  glabel jtgt_ovl0_800CF698
  /* 04B078 800CF698 964F0006 */       lhu $t7, 6($s2)
  /* 04B07C 800CF69C 35F80080 */       ori $t8, $t7, 0x80
  /* 04B080 800CF6A0 10000364 */         b jtgt_ovl0_800D0434
  /* 04B084 800CF6A4 A6580006 */        sh $t8, 6($s2)
  glabel jtgt_ovl0_800CF6A8
  /* 04B088 800CF6A8 96590006 */       lhu $t9, 6($s2)
  /* 04B08C 800CF6AC 2401FF9F */     addiu $at, $zero, -0x61
  /* 04B090 800CF6B0 03214024 */       and $t0, $t9, $at
  /* 04B094 800CF6B4 1000035F */         b jtgt_ovl0_800D0434
  /* 04B098 800CF6B8 A6480006 */        sh $t0, 6($s2)
  glabel jtgt_ovl0_800CF6BC
  /* 04B09C 800CF6BC 96490006 */       lhu $t1, 6($s2)
  /* 04B0A0 800CF6C0 2401FFBF */     addiu $at, $zero, -0x41
  /* 04B0A4 800CF6C4 312AFFBF */      andi $t2, $t1, 0xffbf
  /* 04B0A8 800CF6C8 314BFFFF */      andi $t3, $t2, 0xffff
  /* 04B0AC 800CF6CC A64A0006 */        sh $t2, 6($s2)
  /* 04B0B0 800CF6D0 356C0020 */       ori $t4, $t3, 0x20
  /* 04B0B4 800CF6D4 10000357 */         b jtgt_ovl0_800D0434
  /* 04B0B8 800CF6D8 A64C0006 */        sh $t4, 6($s2)
  glabel jtgt_ovl0_800CF6DC
  /* 04B0BC 800CF6DC 964D0006 */       lhu $t5, 6($s2)
  /* 04B0C0 800CF6E0 2401FFDF */     addiu $at, $zero, -0x21
  /* 04B0C4 800CF6E4 01A17024 */       and $t6, $t5, $at
  /* 04B0C8 800CF6E8 31CFFFFF */      andi $t7, $t6, 0xffff
  /* 04B0CC 800CF6EC A64E0006 */        sh $t6, 6($s2)
  /* 04B0D0 800CF6F0 35F80040 */       ori $t8, $t7, 0x40
  /* 04B0D4 800CF6F4 1000034F */         b jtgt_ovl0_800D0434
  /* 04B0D8 800CF6F8 A6580006 */        sh $t8, 6($s2)
  glabel jtgt_ovl0_800CF6FC
  /* 04B0DC 800CF6FC 96590006 */       lhu $t9, 6($s2)
  /* 04B0E0 800CF700 37280060 */       ori $t0, $t9, 0x60
  /* 04B0E4 800CF704 1000034B */         b jtgt_ovl0_800D0434
  /* 04B0E8 800CF708 A6480006 */        sh $t0, 6($s2)
  glabel jtgt_ovl0_800CF70C
  /* 04B0EC 800CF70C 96490006 */       lhu $t1, 6($s2)
  /* 04B0F0 800CF710 352A0200 */       ori $t2, $t1, 0x200
  /* 04B0F4 800CF714 10000347 */         b jtgt_ovl0_800D0434
  /* 04B0F8 800CF718 A64A0006 */        sh $t2, 6($s2)
  glabel jtgt_ovl0_800CF71C
  /* 04B0FC 800CF71C 964B0006 */       lhu $t3, 6($s2)
  /* 04B100 800CF720 2401FBFF */     addiu $at, $zero, -0x401
  /* 04B104 800CF724 316CFBFF */      andi $t4, $t3, 0xfbff
  /* 04B108 800CF728 10000342 */         b jtgt_ovl0_800D0434
  /* 04B10C 800CF72C A64C0006 */        sh $t4, 6($s2)
  glabel jtgt_ovl0_800CF730
  /* 04B110 800CF730 964D0006 */       lhu $t5, 6($s2)
  /* 04B114 800CF734 35AE0400 */       ori $t6, $t5, 0x400
  /* 04B118 800CF738 1000033E */         b jtgt_ovl0_800D0434
  /* 04B11C 800CF73C A64E0006 */        sh $t6, 6($s2)
  glabel jtgt_ovl0_800CF740
  /* 04B120 800CF740 964F0006 */       lhu $t7, 6($s2)
  /* 04B124 800CF744 35F80100 */       ori $t8, $t7, 0x100
  /* 04B128 800CF748 1000033A */         b jtgt_ovl0_800D0434
  /* 04B12C 800CF74C A6580006 */        sh $t8, 6($s2)
  glabel jtgt_ovl0_800CF750
  /* 04B130 800CF750 96590006 */       lhu $t9, 6($s2)
  /* 04B134 800CF754 2401FEFF */     addiu $at, $zero, -0x101
  /* 04B138 800CF758 03214024 */       and $t0, $t9, $at
  /* 04B13C 800CF75C 10000335 */         b jtgt_ovl0_800D0434
  /* 04B140 800CF760 A6480006 */        sh $t0, 6($s2)
  glabel jtgt_ovl0_800CF764
  /* 04B144 800CF764 92300000 */       lbu $s0, ($s1)
  /* 04B148 800CF768 3C05800D */       lui $a1, %hi(D_ovl0_800D639C)
  /* 04B14C 800CF76C 26310001 */     addiu $s1, $s1, 1
  /* 04B150 800CF770 00104880 */       sll $t1, $s0, 2
  /* 04B154 800CF774 00A92821 */      addu $a1, $a1, $t1
  /* 04B158 800CF778 8CA5639C */        lw $a1, %lo(D_ovl0_800D639C)($a1)
  /* 04B15C 800CF77C 0C033B6F */       jal func_ovl0_800CEDBC
  /* 04B160 800CF780 02402025 */        or $a0, $s2, $zero
  /* 04B164 800CF784 1000032C */         b .L800D0438
  /* 04B168 800CF788 97AA0094 */       lhu $t2, 0x94($sp)
  glabel jtgt_ovl0_800CF78C
  /* 04B16C 800CF78C 92300000 */       lbu $s0, ($s1)
  /* 04B170 800CF790 26240001 */     addiu $a0, $s1, 1
  /* 04B174 800CF794 0C033AF0 */       jal func_ovl0_800CEBC0
  /* 04B178 800CF798 02602825 */        or $a1, $s3, $zero
  /* 04B17C 800CF79C 00105080 */       sll $t2, $s0, 2
  /* 04B180 800CF7A0 3C05800D */       lui $a1, %hi(D_ovl0_800D639C)
  /* 04B184 800CF7A4 00AA2821 */      addu $a1, $a1, $t2
  /* 04B188 800CF7A8 00408825 */        or $s1, $v0, $zero
  /* 04B18C 800CF7AC 8CA5639C */        lw $a1, %lo(D_ovl0_800D639C)($a1)
  /* 04B190 800CF7B0 02402025 */        or $a0, $s2, $zero
  /* 04B194 800CF7B4 0C033BAE */       jal func_ovl0_800CEEB8
  /* 04B198 800CF7B8 8FA60080 */        lw $a2, 0x80($sp)
  /* 04B19C 800CF7BC 1000031E */         b .L800D0438
  /* 04B1A0 800CF7C0 97AA0094 */       lhu $t2, 0x94($sp)
  glabel jtgt_ovl0_800CF7C4
  /* 04B1A4 800CF7C4 92300000 */       lbu $s0, ($s1)
  /* 04B1A8 800CF7C8 922B0001 */       lbu $t3, 1($s1)
  /* 04B1AC 800CF7CC 26310002 */     addiu $s1, $s1, 2
  /* 04B1B0 800CF7D0 00108200 */       sll $s0, $s0, 8
  /* 04B1B4 800CF7D4 020B8021 */      addu $s0, $s0, $t3
  /* 04B1B8 800CF7D8 02003025 */        or $a2, $s0, $zero
  /* 04B1BC 800CF7DC 02402025 */        or $a0, $s2, $zero
  /* 04B1C0 800CF7E0 0C0339AE */       jal func_ovl0_800CE6B8
  /* 04B1C4 800CF7E4 92450008 */       lbu $a1, 8($s2)
  /* 04B1C8 800CF7E8 10400312 */      beqz $v0, jtgt_ovl0_800D0434
  /* 04B1CC 800CF7EC 00402025 */        or $a0, $v0, $zero
  /* 04B1D0 800CF7F0 C6460020 */      lwc1 $f6, 0x20($s2)
  /* 04B1D4 800CF7F4 E4460020 */      swc1 $f6, 0x20($v0)
  /* 04B1D8 800CF7F8 C6480024 */      lwc1 $f8, 0x24($s2)
  /* 04B1DC 800CF7FC E4480024 */      swc1 $f8, 0x24($v0)
  /* 04B1E0 800CF800 C64A0028 */      lwc1 $f10, 0x28($s2)
  /* 04B1E4 800CF804 E44A0028 */      swc1 $f10, 0x28($v0)
  /* 04B1E8 800CF808 C644002C */      lwc1 $f4, 0x2c($s2)
  /* 04B1EC 800CF80C E444002C */      swc1 $f4, 0x2c($v0)
  /* 04B1F0 800CF810 C6460030 */      lwc1 $f6, 0x30($s2)
  /* 04B1F4 800CF814 E4460030 */      swc1 $f6, 0x30($v0)
  /* 04B1F8 800CF818 C6480034 */      lwc1 $f8, 0x34($s2)
  /* 04B1FC 800CF81C E4480034 */      swc1 $f8, 0x34($v0)
  /* 04B200 800CF820 964C0004 */       lhu $t4, 4($s2)
  /* 04B204 800CF824 A44C0004 */        sh $t4, 4($v0)
  /* 04B208 800CF828 8E4D0058 */        lw $t5, 0x58($s2)
  /* 04B20C 800CF82C AC4D0058 */        sw $t5, 0x58($v0)
  /* 04B210 800CF830 8E4E005C */        lw $t6, 0x5c($s2)
  /* 04B214 800CF834 11C00004 */      beqz $t6, .L800CF848
  /* 04B218 800CF838 AC4E005C */        sw $t6, 0x5c($v0)
  /* 04B21C 800CF83C 95CF002A */       lhu $t7, 0x2a($t6)
  /* 04B220 800CF840 25F80001 */     addiu $t8, $t7, 1
  /* 04B224 800CF844 A5D8002A */        sh $t8, 0x2a($t6)
  .L800CF848:
  /* 04B228 800CF848 92460008 */       lbu $a2, 8($s2)
  /* 04B22C 800CF84C 02402825 */        or $a1, $s2, $zero
  /* 04B230 800CF850 0C033BD3 */       jal func_ovl0_800CEF4C
  /* 04B234 800CF854 000630C3 */       sra $a2, $a2, 3
  /* 04B238 800CF858 100002F7 */         b .L800D0438
  /* 04B23C 800CF85C 97AA0094 */       lhu $t2, 0x94($sp)
  glabel jtgt_ovl0_800CF860
  /* 04B240 800CF860 92390000 */       lbu $t9, ($s1)
  /* 04B244 800CF864 26310001 */     addiu $s1, $s1, 1
  /* 04B248 800CF868 3C014F80 */       lui $at, (0x4F800000 >> 16) # 4294967300.0
  /* 04B24C 800CF86C 44995000 */      mtc1 $t9, $f10
  /* 04B250 800CF870 07210004 */      bgez $t9, .L800CF884
  /* 04B254 800CF874 46805120 */   cvt.s.w $f4, $f10
  /* 04B258 800CF878 44813000 */      mtc1 $at, $f6 # 4294967300.0 to cop1
  /* 04B25C 800CF87C 00000000 */       nop 
  /* 04B260 800CF880 46062100 */     add.s $f4, $f4, $f6
  .L800CF884:
  /* 04B264 800CF884 0C006252 */       jal rand_f32
  /* 04B268 800CF888 E7A40080 */      swc1 $f4, 0x80($sp)
  /* 04B26C 800CF88C 9248004C */       lbu $t0, 0x4c($s2)
  /* 04B270 800CF890 C7A40080 */      lwc1 $f4, 0x80($sp)
  /* 04B274 800CF894 3C014F80 */       lui $at, (0x4F800000 >> 16) # 4294967300.0
  /* 04B278 800CF898 44884000 */      mtc1 $t0, $f8
  /* 04B27C 800CF89C 00000000 */       nop 
  /* 04B280 800CF8A0 468042A0 */   cvt.s.w $f10, $f8
  /* 04B284 800CF8A4 46002202 */     mul.s $f8, $f4, $f0
  /* 04B288 800CF8A8 05030005 */     bgezl $t0, .L800CF8C0
  /* 04B28C 800CF8AC 46085180 */     add.s $f6, $f10, $f8
  /* 04B290 800CF8B0 44813000 */      mtc1 $at, $f6 # 4294967300.0 to cop1
  /* 04B294 800CF8B4 00000000 */       nop 
  /* 04B298 800CF8B8 46065280 */     add.s $f10, $f10, $f6
  /* 04B29C 800CF8BC 46085180 */     add.s $f6, $f10, $f8
  .L800CF8C0:
  /* 04B2A0 800CF8C0 240A0001 */     addiu $t2, $zero, 1
  /* 04B2A4 800CF8C4 3C014F00 */       lui $at, (0x4F000000 >> 16) # 2147483600.0
  /* 04B2A8 800CF8C8 4449F800 */      cfc1 $t1, $31
  /* 04B2AC 800CF8CC 44CAF800 */      ctc1 $t2, $31
  /* 04B2B0 800CF8D0 00000000 */       nop 
  /* 04B2B4 800CF8D4 46003124 */   cvt.w.s $f4, $f6
  /* 04B2B8 800CF8D8 444AF800 */      cfc1 $t2, $31
  /* 04B2BC 800CF8DC 00000000 */       nop 
  /* 04B2C0 800CF8E0 314A0078 */      andi $t2, $t2, 0x78
  /* 04B2C4 800CF8E4 51400013 */      beql $t2, $zero, .L800CF934
  /* 04B2C8 800CF8E8 440A2000 */      mfc1 $t2, $f4
  /* 04B2CC 800CF8EC 44812000 */      mtc1 $at, $f4 # 2147483600.0 to cop1
  /* 04B2D0 800CF8F0 240A0001 */     addiu $t2, $zero, 1
  /* 04B2D4 800CF8F4 46043101 */     sub.s $f4, $f6, $f4
  /* 04B2D8 800CF8F8 44CAF800 */      ctc1 $t2, $31
  /* 04B2DC 800CF8FC 00000000 */       nop 
  /* 04B2E0 800CF900 46002124 */   cvt.w.s $f4, $f4
  /* 04B2E4 800CF904 444AF800 */      cfc1 $t2, $31
  /* 04B2E8 800CF908 00000000 */       nop 
  /* 04B2EC 800CF90C 314A0078 */      andi $t2, $t2, 0x78
  /* 04B2F0 800CF910 15400005 */      bnez $t2, .L800CF928
  /* 04B2F4 800CF914 00000000 */       nop 
  /* 04B2F8 800CF918 440A2000 */      mfc1 $t2, $f4
  /* 04B2FC 800CF91C 3C018000 */       lui $at, 0x8000
  /* 04B300 800CF920 10000007 */         b .L800CF940
  /* 04B304 800CF924 01415025 */        or $t2, $t2, $at
  .L800CF928:
  /* 04B308 800CF928 10000005 */         b .L800CF940
  /* 04B30C 800CF92C 240AFFFF */     addiu $t2, $zero, -1
  /* 04B310 800CF930 440A2000 */      mfc1 $t2, $f4
  .L800CF934:
  /* 04B314 800CF934 00000000 */       nop 
  /* 04B318 800CF938 0540FFFB */      bltz $t2, .L800CF928
  /* 04B31C 800CF93C 00000000 */       nop 
  .L800CF940:
  /* 04B320 800CF940 A24A004C */        sb $t2, 0x4c($s2)
  /* 04B324 800CF944 922B0000 */       lbu $t3, ($s1)
  /* 04B328 800CF948 44C9F800 */      ctc1 $t1, $31
  /* 04B32C 800CF94C 26310001 */     addiu $s1, $s1, 1
  /* 04B330 800CF950 448B5000 */      mtc1 $t3, $f10
  /* 04B334 800CF954 3C014F80 */       lui $at, (0x4F800000 >> 16) # 4294967300.0
  /* 04B338 800CF958 05610004 */      bgez $t3, .L800CF96C
  /* 04B33C 800CF95C 46805220 */   cvt.s.w $f8, $f10
  /* 04B340 800CF960 44813000 */      mtc1 $at, $f6 # 4294967300.0 to cop1
  /* 04B344 800CF964 00000000 */       nop 
  /* 04B348 800CF968 46064200 */     add.s $f8, $f8, $f6
  .L800CF96C:
  /* 04B34C 800CF96C 0C006252 */       jal rand_f32
  /* 04B350 800CF970 E7A80080 */      swc1 $f8, 0x80($sp)
  /* 04B354 800CF974 924C004D */       lbu $t4, 0x4d($s2)
  /* 04B358 800CF978 C7A80080 */      lwc1 $f8, 0x80($sp)
  /* 04B35C 800CF97C 3C014F80 */       lui $at, (0x4F800000 >> 16) # 4294967300.0
  /* 04B360 800CF980 448C2000 */      mtc1 $t4, $f4
  /* 04B364 800CF984 00000000 */       nop 
  /* 04B368 800CF988 468022A0 */   cvt.s.w $f10, $f4
  /* 04B36C 800CF98C 46004102 */     mul.s $f4, $f8, $f0
  /* 04B370 800CF990 05830005 */     bgezl $t4, .L800CF9A8
  /* 04B374 800CF994 46045180 */     add.s $f6, $f10, $f4
  /* 04B378 800CF998 44813000 */      mtc1 $at, $f6 # 4294967300.0 to cop1
  /* 04B37C 800CF99C 00000000 */       nop 
  /* 04B380 800CF9A0 46065280 */     add.s $f10, $f10, $f6
  /* 04B384 800CF9A4 46045180 */     add.s $f6, $f10, $f4
  .L800CF9A8:
  /* 04B388 800CF9A8 240E0001 */     addiu $t6, $zero, 1
  /* 04B38C 800CF9AC 3C014F00 */       lui $at, (0x4F000000 >> 16) # 2147483600.0
  /* 04B390 800CF9B0 444DF800 */      cfc1 $t5, $31
  /* 04B394 800CF9B4 44CEF800 */      ctc1 $t6, $31
  /* 04B398 800CF9B8 00000000 */       nop 
  /* 04B39C 800CF9BC 46003224 */   cvt.w.s $f8, $f6
  /* 04B3A0 800CF9C0 444EF800 */      cfc1 $t6, $31
  /* 04B3A4 800CF9C4 00000000 */       nop 
  /* 04B3A8 800CF9C8 31CE0078 */      andi $t6, $t6, 0x78
  /* 04B3AC 800CF9CC 51C00013 */      beql $t6, $zero, .L800CFA1C
  /* 04B3B0 800CF9D0 440E4000 */      mfc1 $t6, $f8
  /* 04B3B4 800CF9D4 44814000 */      mtc1 $at, $f8 # 2147483600.0 to cop1
  /* 04B3B8 800CF9D8 240E0001 */     addiu $t6, $zero, 1
  /* 04B3BC 800CF9DC 46083201 */     sub.s $f8, $f6, $f8
  /* 04B3C0 800CF9E0 44CEF800 */      ctc1 $t6, $31
  /* 04B3C4 800CF9E4 00000000 */       nop 
  /* 04B3C8 800CF9E8 46004224 */   cvt.w.s $f8, $f8
  /* 04B3CC 800CF9EC 444EF800 */      cfc1 $t6, $31
  /* 04B3D0 800CF9F0 00000000 */       nop 
  /* 04B3D4 800CF9F4 31CE0078 */      andi $t6, $t6, 0x78
  /* 04B3D8 800CF9F8 15C00005 */      bnez $t6, .L800CFA10
  /* 04B3DC 800CF9FC 00000000 */       nop 
  /* 04B3E0 800CFA00 440E4000 */      mfc1 $t6, $f8
  /* 04B3E4 800CFA04 3C018000 */       lui $at, 0x8000
  /* 04B3E8 800CFA08 10000007 */         b .L800CFA28
  /* 04B3EC 800CFA0C 01C17025 */        or $t6, $t6, $at
  .L800CFA10:
  /* 04B3F0 800CFA10 10000005 */         b .L800CFA28
  /* 04B3F4 800CFA14 240EFFFF */     addiu $t6, $zero, -1
  /* 04B3F8 800CFA18 440E4000 */      mfc1 $t6, $f8
  .L800CFA1C:
  /* 04B3FC 800CFA1C 00000000 */       nop 
  /* 04B400 800CFA20 05C0FFFB */      bltz $t6, .L800CFA10
  /* 04B404 800CFA24 00000000 */       nop 
  .L800CFA28:
  /* 04B408 800CFA28 A24E004D */        sb $t6, 0x4d($s2)
  /* 04B40C 800CFA2C 922F0000 */       lbu $t7, ($s1)
  /* 04B410 800CFA30 44CDF800 */      ctc1 $t5, $31
  /* 04B414 800CFA34 26310001 */     addiu $s1, $s1, 1
  /* 04B418 800CFA38 448F5000 */      mtc1 $t7, $f10
  /* 04B41C 800CFA3C 3C014F80 */       lui $at, (0x4F800000 >> 16) # 4294967300.0
  /* 04B420 800CFA40 05E10004 */      bgez $t7, .L800CFA54
  /* 04B424 800CFA44 46805120 */   cvt.s.w $f4, $f10
  /* 04B428 800CFA48 44813000 */      mtc1 $at, $f6 # 4294967300.0 to cop1
  /* 04B42C 800CFA4C 00000000 */       nop 
  /* 04B430 800CFA50 46062100 */     add.s $f4, $f4, $f6
  .L800CFA54:
  /* 04B434 800CFA54 0C006252 */       jal rand_f32
  /* 04B438 800CFA58 E7A40080 */      swc1 $f4, 0x80($sp)
  /* 04B43C 800CFA5C 9258004E */       lbu $t8, 0x4e($s2)
  /* 04B440 800CFA60 C7A40080 */      lwc1 $f4, 0x80($sp)
  /* 04B444 800CFA64 3C014F80 */       lui $at, (0x4F800000 >> 16) # 4294967300.0
  /* 04B448 800CFA68 44984000 */      mtc1 $t8, $f8
  /* 04B44C 800CFA6C 00000000 */       nop 
  /* 04B450 800CFA70 468042A0 */   cvt.s.w $f10, $f8
  /* 04B454 800CFA74 46002202 */     mul.s $f8, $f4, $f0
  /* 04B458 800CFA78 07030005 */     bgezl $t8, .L800CFA90
  /* 04B45C 800CFA7C 46085180 */     add.s $f6, $f10, $f8
  /* 04B460 800CFA80 44813000 */      mtc1 $at, $f6 # 4294967300.0 to cop1
  /* 04B464 800CFA84 00000000 */       nop 
  /* 04B468 800CFA88 46065280 */     add.s $f10, $f10, $f6
  /* 04B46C 800CFA8C 46085180 */     add.s $f6, $f10, $f8
  .L800CFA90:
  /* 04B470 800CFA90 24080001 */     addiu $t0, $zero, 1
  /* 04B474 800CFA94 3C014F00 */       lui $at, (0x4F000000 >> 16) # 2147483600.0
  /* 04B478 800CFA98 4459F800 */      cfc1 $t9, $31
  /* 04B47C 800CFA9C 44C8F800 */      ctc1 $t0, $31
  /* 04B480 800CFAA0 00000000 */       nop 
  /* 04B484 800CFAA4 46003124 */   cvt.w.s $f4, $f6
  /* 04B488 800CFAA8 4448F800 */      cfc1 $t0, $31
  /* 04B48C 800CFAAC 00000000 */       nop 
  /* 04B490 800CFAB0 31080078 */      andi $t0, $t0, 0x78
  /* 04B494 800CFAB4 51000013 */      beql $t0, $zero, .L800CFB04
  /* 04B498 800CFAB8 44082000 */      mfc1 $t0, $f4
  /* 04B49C 800CFABC 44812000 */      mtc1 $at, $f4 # 2147483600.0 to cop1
  /* 04B4A0 800CFAC0 24080001 */     addiu $t0, $zero, 1
  /* 04B4A4 800CFAC4 46043101 */     sub.s $f4, $f6, $f4
  /* 04B4A8 800CFAC8 44C8F800 */      ctc1 $t0, $31
  /* 04B4AC 800CFACC 00000000 */       nop 
  /* 04B4B0 800CFAD0 46002124 */   cvt.w.s $f4, $f4
  /* 04B4B4 800CFAD4 4448F800 */      cfc1 $t0, $31
  /* 04B4B8 800CFAD8 00000000 */       nop 
  /* 04B4BC 800CFADC 31080078 */      andi $t0, $t0, 0x78
  /* 04B4C0 800CFAE0 15000005 */      bnez $t0, .L800CFAF8
  /* 04B4C4 800CFAE4 00000000 */       nop 
  /* 04B4C8 800CFAE8 44082000 */      mfc1 $t0, $f4
  /* 04B4CC 800CFAEC 3C018000 */       lui $at, 0x8000
  /* 04B4D0 800CFAF0 10000007 */         b .L800CFB10
  /* 04B4D4 800CFAF4 01014025 */        or $t0, $t0, $at
  .L800CFAF8:
  /* 04B4D8 800CFAF8 10000005 */         b .L800CFB10
  /* 04B4DC 800CFAFC 2408FFFF */     addiu $t0, $zero, -1
  /* 04B4E0 800CFB00 44082000 */      mfc1 $t0, $f4
  .L800CFB04:
  /* 04B4E4 800CFB04 00000000 */       nop 
  /* 04B4E8 800CFB08 0500FFFB */      bltz $t0, .L800CFAF8
  /* 04B4EC 800CFB0C 00000000 */       nop 
  .L800CFB10:
  /* 04B4F0 800CFB10 A248004E */        sb $t0, 0x4e($s2)
  /* 04B4F4 800CFB14 92290000 */       lbu $t1, ($s1)
  /* 04B4F8 800CFB18 44D9F800 */      ctc1 $t9, $31
  /* 04B4FC 800CFB1C 26310001 */     addiu $s1, $s1, 1
  /* 04B500 800CFB20 44895000 */      mtc1 $t1, $f10
  /* 04B504 800CFB24 3C014F80 */       lui $at, (0x4F800000 >> 16) # 4294967300.0
  /* 04B508 800CFB28 05210004 */      bgez $t1, .L800CFB3C
  /* 04B50C 800CFB2C 46805220 */   cvt.s.w $f8, $f10
  /* 04B510 800CFB30 44813000 */      mtc1 $at, $f6 # 4294967300.0 to cop1
  /* 04B514 800CFB34 00000000 */       nop 
  /* 04B518 800CFB38 46064200 */     add.s $f8, $f8, $f6
  .L800CFB3C:
  /* 04B51C 800CFB3C 0C006252 */       jal rand_f32
  /* 04B520 800CFB40 E7A80080 */      swc1 $f8, 0x80($sp)
  /* 04B524 800CFB44 924A004F */       lbu $t2, 0x4f($s2)
  /* 04B528 800CFB48 C7A80080 */      lwc1 $f8, 0x80($sp)
  /* 04B52C 800CFB4C 3C014F80 */       lui $at, (0x4F800000 >> 16) # 4294967300.0
  /* 04B530 800CFB50 448A2000 */      mtc1 $t2, $f4
  /* 04B534 800CFB54 00000000 */       nop 
  /* 04B538 800CFB58 468022A0 */   cvt.s.w $f10, $f4
  /* 04B53C 800CFB5C 46004102 */     mul.s $f4, $f8, $f0
  /* 04B540 800CFB60 05430005 */     bgezl $t2, .L800CFB78
  /* 04B544 800CFB64 46045180 */     add.s $f6, $f10, $f4
  /* 04B548 800CFB68 44813000 */      mtc1 $at, $f6 # 4294967300.0 to cop1
  /* 04B54C 800CFB6C 00000000 */       nop 
  /* 04B550 800CFB70 46065280 */     add.s $f10, $f10, $f6
  /* 04B554 800CFB74 46045180 */     add.s $f6, $f10, $f4
  .L800CFB78:
  /* 04B558 800CFB78 240C0001 */     addiu $t4, $zero, 1
  /* 04B55C 800CFB7C 444BF800 */      cfc1 $t3, $31
  /* 04B560 800CFB80 44CCF800 */      ctc1 $t4, $31
  /* 04B564 800CFB84 00000000 */       nop 
  /* 04B568 800CFB88 46003224 */   cvt.w.s $f8, $f6
  /* 04B56C 800CFB8C 444CF800 */      cfc1 $t4, $31
  /* 04B570 800CFB90 00000000 */       nop 
  /* 04B574 800CFB94 31810004 */      andi $at, $t4, 4
  /* 04B578 800CFB98 318C0078 */      andi $t4, $t4, 0x78
  /* 04B57C 800CFB9C 51800015 */      beql $t4, $zero, .L800CFBF4
  /* 04B580 800CFBA0 440C4000 */      mfc1 $t4, $f8
  /* 04B584 800CFBA4 3C014F00 */       lui $at, (0x4F000000 >> 16) # 2147483600.0
  /* 04B588 800CFBA8 44814000 */      mtc1 $at, $f8 # 2147483600.0 to cop1
  /* 04B58C 800CFBAC 240C0001 */     addiu $t4, $zero, 1
  /* 04B590 800CFBB0 46083201 */     sub.s $f8, $f6, $f8
  /* 04B594 800CFBB4 44CCF800 */      ctc1 $t4, $31
  /* 04B598 800CFBB8 00000000 */       nop 
  /* 04B59C 800CFBBC 46004224 */   cvt.w.s $f8, $f8
  /* 04B5A0 800CFBC0 444CF800 */      cfc1 $t4, $31
  /* 04B5A4 800CFBC4 00000000 */       nop 
  /* 04B5A8 800CFBC8 31810004 */      andi $at, $t4, 4
  /* 04B5AC 800CFBCC 318C0078 */      andi $t4, $t4, 0x78
  /* 04B5B0 800CFBD0 15800005 */      bnez $t4, .L800CFBE8
  /* 04B5B4 800CFBD4 00000000 */       nop 
  /* 04B5B8 800CFBD8 440C4000 */      mfc1 $t4, $f8
  /* 04B5BC 800CFBDC 3C018000 */       lui $at, 0x8000
  /* 04B5C0 800CFBE0 10000007 */         b .L800CFC00
  /* 04B5C4 800CFBE4 01816025 */        or $t4, $t4, $at
  .L800CFBE8:
  /* 04B5C8 800CFBE8 10000005 */         b .L800CFC00
  /* 04B5CC 800CFBEC 240CFFFF */     addiu $t4, $zero, -1
  /* 04B5D0 800CFBF0 440C4000 */      mfc1 $t4, $f8
  .L800CFBF4:
  /* 04B5D4 800CFBF4 00000000 */       nop 
  /* 04B5D8 800CFBF8 0580FFFB */      bltz $t4, .L800CFBE8
  /* 04B5DC 800CFBFC 00000000 */       nop 
  .L800CFC00:
  /* 04B5E0 800CFC00 964D0010 */       lhu $t5, 0x10($s2)
  /* 04B5E4 800CFC04 44CBF800 */      ctc1 $t3, $31
  /* 04B5E8 800CFC08 A24C004F */        sb $t4, 0x4f($s2)
  /* 04B5EC 800CFC0C 55A0020A */      bnel $t5, $zero, .L800D0438
  /* 04B5F0 800CFC10 97AA0094 */       lhu $t2, 0x94($sp)
  /* 04B5F4 800CFC14 8A4F004C */       lwl $t7, 0x4c($s2)
  /* 04B5F8 800CFC18 9A4F004F */       lwr $t7, 0x4f($s2)
  /* 04B5FC 800CFC1C AA4F0048 */       swl $t7, 0x48($s2)
  /* 04B600 800CFC20 10000204 */         b jtgt_ovl0_800D0434
  /* 04B604 800CFC24 BA4F004B */       swr $t7, 0x4b($s2)
  glabel jtgt_ovl0_800CFC28
  /* 04B608 800CFC28 92380000 */       lbu $t8, ($s1)
  /* 04B60C 800CFC2C 26310001 */     addiu $s1, $s1, 1
  /* 04B610 800CFC30 3C014F80 */       lui $at, (0x4F800000 >> 16) # 4294967300.0
  /* 04B614 800CFC34 44985000 */      mtc1 $t8, $f10
  /* 04B618 800CFC38 07010004 */      bgez $t8, .L800CFC4C
  /* 04B61C 800CFC3C 46805120 */   cvt.s.w $f4, $f10
  /* 04B620 800CFC40 44813000 */      mtc1 $at, $f6 # 4294967300.0 to cop1
  /* 04B624 800CFC44 00000000 */       nop 
  /* 04B628 800CFC48 46062100 */     add.s $f4, $f4, $f6
  .L800CFC4C:
  /* 04B62C 800CFC4C 0C006252 */       jal rand_f32
  /* 04B630 800CFC50 E7A40080 */      swc1 $f4, 0x80($sp)
  /* 04B634 800CFC54 92590054 */       lbu $t9, 0x54($s2)
  /* 04B638 800CFC58 C7A40080 */      lwc1 $f4, 0x80($sp)
  /* 04B63C 800CFC5C 3C014F80 */       lui $at, (0x4F800000 >> 16) # 4294967300.0
  /* 04B640 800CFC60 44994000 */      mtc1 $t9, $f8
  /* 04B644 800CFC64 00000000 */       nop 
  /* 04B648 800CFC68 468042A0 */   cvt.s.w $f10, $f8
  /* 04B64C 800CFC6C 46002202 */     mul.s $f8, $f4, $f0
  /* 04B650 800CFC70 07230005 */     bgezl $t9, .L800CFC88
  /* 04B654 800CFC74 46085180 */     add.s $f6, $f10, $f8
  /* 04B658 800CFC78 44813000 */      mtc1 $at, $f6 # 4294967300.0 to cop1
  /* 04B65C 800CFC7C 00000000 */       nop 
  /* 04B660 800CFC80 46065280 */     add.s $f10, $f10, $f6
  /* 04B664 800CFC84 46085180 */     add.s $f6, $f10, $f8
  .L800CFC88:
  /* 04B668 800CFC88 24090001 */     addiu $t1, $zero, 1
  /* 04B66C 800CFC8C 3C014F00 */       lui $at, (0x4F000000 >> 16) # 2147483600.0
  /* 04B670 800CFC90 4448F800 */      cfc1 $t0, $31
  /* 04B674 800CFC94 44C9F800 */      ctc1 $t1, $31
  /* 04B678 800CFC98 00000000 */       nop 
  /* 04B67C 800CFC9C 46003124 */   cvt.w.s $f4, $f6
  /* 04B680 800CFCA0 4449F800 */      cfc1 $t1, $31
  /* 04B684 800CFCA4 00000000 */       nop 
  /* 04B688 800CFCA8 31290078 */      andi $t1, $t1, 0x78
  /* 04B68C 800CFCAC 51200013 */      beql $t1, $zero, .L800CFCFC
  /* 04B690 800CFCB0 44092000 */      mfc1 $t1, $f4
  /* 04B694 800CFCB4 44812000 */      mtc1 $at, $f4 # 2147483600.0 to cop1
  /* 04B698 800CFCB8 24090001 */     addiu $t1, $zero, 1
  /* 04B69C 800CFCBC 46043101 */     sub.s $f4, $f6, $f4
  /* 04B6A0 800CFCC0 44C9F800 */      ctc1 $t1, $31
  /* 04B6A4 800CFCC4 00000000 */       nop 
  /* 04B6A8 800CFCC8 46002124 */   cvt.w.s $f4, $f4
  /* 04B6AC 800CFCCC 4449F800 */      cfc1 $t1, $31
  /* 04B6B0 800CFCD0 00000000 */       nop 
  /* 04B6B4 800CFCD4 31290078 */      andi $t1, $t1, 0x78
  /* 04B6B8 800CFCD8 15200005 */      bnez $t1, .L800CFCF0
  /* 04B6BC 800CFCDC 00000000 */       nop 
  /* 04B6C0 800CFCE0 44092000 */      mfc1 $t1, $f4
  /* 04B6C4 800CFCE4 3C018000 */       lui $at, 0x8000
  /* 04B6C8 800CFCE8 10000007 */         b .L800CFD08
  /* 04B6CC 800CFCEC 01214825 */        or $t1, $t1, $at
  .L800CFCF0:
  /* 04B6D0 800CFCF0 10000005 */         b .L800CFD08
  /* 04B6D4 800CFCF4 2409FFFF */     addiu $t1, $zero, -1
  /* 04B6D8 800CFCF8 44092000 */      mfc1 $t1, $f4
  .L800CFCFC:
  /* 04B6DC 800CFCFC 00000000 */       nop 
  /* 04B6E0 800CFD00 0520FFFB */      bltz $t1, .L800CFCF0
  /* 04B6E4 800CFD04 00000000 */       nop 
  .L800CFD08:
  /* 04B6E8 800CFD08 A2490054 */        sb $t1, 0x54($s2)
  /* 04B6EC 800CFD0C 922A0000 */       lbu $t2, ($s1)
  /* 04B6F0 800CFD10 44C8F800 */      ctc1 $t0, $31
  /* 04B6F4 800CFD14 26310001 */     addiu $s1, $s1, 1
  /* 04B6F8 800CFD18 448A5000 */      mtc1 $t2, $f10
  /* 04B6FC 800CFD1C 3C014F80 */       lui $at, (0x4F800000 >> 16) # 4294967300.0
  /* 04B700 800CFD20 05410004 */      bgez $t2, .L800CFD34
  /* 04B704 800CFD24 46805220 */   cvt.s.w $f8, $f10
  /* 04B708 800CFD28 44813000 */      mtc1 $at, $f6 # 4294967300.0 to cop1
  /* 04B70C 800CFD2C 00000000 */       nop 
  /* 04B710 800CFD30 46064200 */     add.s $f8, $f8, $f6
  .L800CFD34:
  /* 04B714 800CFD34 0C006252 */       jal rand_f32
  /* 04B718 800CFD38 E7A80080 */      swc1 $f8, 0x80($sp)
  /* 04B71C 800CFD3C 924B0055 */       lbu $t3, 0x55($s2)
  /* 04B720 800CFD40 C7A80080 */      lwc1 $f8, 0x80($sp)
  /* 04B724 800CFD44 3C014F80 */       lui $at, (0x4F800000 >> 16) # 4294967300.0
  /* 04B728 800CFD48 448B2000 */      mtc1 $t3, $f4
  /* 04B72C 800CFD4C 00000000 */       nop 
  /* 04B730 800CFD50 468022A0 */   cvt.s.w $f10, $f4
  /* 04B734 800CFD54 46004102 */     mul.s $f4, $f8, $f0
  /* 04B738 800CFD58 05630005 */     bgezl $t3, .L800CFD70
  /* 04B73C 800CFD5C 46045180 */     add.s $f6, $f10, $f4
  /* 04B740 800CFD60 44813000 */      mtc1 $at, $f6 # 4294967300.0 to cop1
  /* 04B744 800CFD64 00000000 */       nop 
  /* 04B748 800CFD68 46065280 */     add.s $f10, $f10, $f6
  /* 04B74C 800CFD6C 46045180 */     add.s $f6, $f10, $f4
  .L800CFD70:
  /* 04B750 800CFD70 240D0001 */     addiu $t5, $zero, 1
  /* 04B754 800CFD74 3C014F00 */       lui $at, (0x4F000000 >> 16) # 2147483600.0
  /* 04B758 800CFD78 444CF800 */      cfc1 $t4, $31
  /* 04B75C 800CFD7C 44CDF800 */      ctc1 $t5, $31
  /* 04B760 800CFD80 00000000 */       nop 
  /* 04B764 800CFD84 46003224 */   cvt.w.s $f8, $f6
  /* 04B768 800CFD88 444DF800 */      cfc1 $t5, $31
  /* 04B76C 800CFD8C 00000000 */       nop 
  /* 04B770 800CFD90 31AD0078 */      andi $t5, $t5, 0x78
  /* 04B774 800CFD94 51A00013 */      beql $t5, $zero, .L800CFDE4
  /* 04B778 800CFD98 440D4000 */      mfc1 $t5, $f8
  /* 04B77C 800CFD9C 44814000 */      mtc1 $at, $f8 # 2147483600.0 to cop1
  /* 04B780 800CFDA0 240D0001 */     addiu $t5, $zero, 1
  /* 04B784 800CFDA4 46083201 */     sub.s $f8, $f6, $f8
  /* 04B788 800CFDA8 44CDF800 */      ctc1 $t5, $31
  /* 04B78C 800CFDAC 00000000 */       nop 
  /* 04B790 800CFDB0 46004224 */   cvt.w.s $f8, $f8
  /* 04B794 800CFDB4 444DF800 */      cfc1 $t5, $31
  /* 04B798 800CFDB8 00000000 */       nop 
  /* 04B79C 800CFDBC 31AD0078 */      andi $t5, $t5, 0x78
  /* 04B7A0 800CFDC0 15A00005 */      bnez $t5, .L800CFDD8
  /* 04B7A4 800CFDC4 00000000 */       nop 
  /* 04B7A8 800CFDC8 440D4000 */      mfc1 $t5, $f8
  /* 04B7AC 800CFDCC 3C018000 */       lui $at, 0x8000
  /* 04B7B0 800CFDD0 10000007 */         b .L800CFDF0
  /* 04B7B4 800CFDD4 01A16825 */        or $t5, $t5, $at
  .L800CFDD8:
  /* 04B7B8 800CFDD8 10000005 */         b .L800CFDF0
  /* 04B7BC 800CFDDC 240DFFFF */     addiu $t5, $zero, -1
  /* 04B7C0 800CFDE0 440D4000 */      mfc1 $t5, $f8
  .L800CFDE4:
  /* 04B7C4 800CFDE4 00000000 */       nop 
  /* 04B7C8 800CFDE8 05A0FFFB */      bltz $t5, .L800CFDD8
  /* 04B7CC 800CFDEC 00000000 */       nop 
  .L800CFDF0:
  /* 04B7D0 800CFDF0 A24D0055 */        sb $t5, 0x55($s2)
  /* 04B7D4 800CFDF4 922E0000 */       lbu $t6, ($s1)
  /* 04B7D8 800CFDF8 44CCF800 */      ctc1 $t4, $31
  /* 04B7DC 800CFDFC 26310001 */     addiu $s1, $s1, 1
  /* 04B7E0 800CFE00 448E5000 */      mtc1 $t6, $f10
  /* 04B7E4 800CFE04 3C014F80 */       lui $at, (0x4F800000 >> 16) # 4294967300.0
  /* 04B7E8 800CFE08 05C10004 */      bgez $t6, .L800CFE1C
  /* 04B7EC 800CFE0C 46805120 */   cvt.s.w $f4, $f10
  /* 04B7F0 800CFE10 44813000 */      mtc1 $at, $f6 # 4294967300.0 to cop1
  /* 04B7F4 800CFE14 00000000 */       nop 
  /* 04B7F8 800CFE18 46062100 */     add.s $f4, $f4, $f6
  .L800CFE1C:
  /* 04B7FC 800CFE1C 0C006252 */       jal rand_f32
  /* 04B800 800CFE20 E7A40080 */      swc1 $f4, 0x80($sp)
  /* 04B804 800CFE24 924F0056 */       lbu $t7, 0x56($s2)
  /* 04B808 800CFE28 C7A40080 */      lwc1 $f4, 0x80($sp)
  /* 04B80C 800CFE2C 3C014F80 */       lui $at, (0x4F800000 >> 16) # 4294967300.0
  /* 04B810 800CFE30 448F4000 */      mtc1 $t7, $f8
  /* 04B814 800CFE34 00000000 */       nop 
  /* 04B818 800CFE38 468042A0 */   cvt.s.w $f10, $f8
  /* 04B81C 800CFE3C 46002202 */     mul.s $f8, $f4, $f0
  /* 04B820 800CFE40 05E30005 */     bgezl $t7, .L800CFE58
  /* 04B824 800CFE44 46085180 */     add.s $f6, $f10, $f8
  /* 04B828 800CFE48 44813000 */      mtc1 $at, $f6 # 4294967300.0 to cop1
  /* 04B82C 800CFE4C 00000000 */       nop 
  /* 04B830 800CFE50 46065280 */     add.s $f10, $f10, $f6
  /* 04B834 800CFE54 46085180 */     add.s $f6, $f10, $f8
  .L800CFE58:
  /* 04B838 800CFE58 24190001 */     addiu $t9, $zero, 1
  /* 04B83C 800CFE5C 3C014F00 */       lui $at, (0x4F000000 >> 16) # 2147483600.0
  /* 04B840 800CFE60 4458F800 */      cfc1 $t8, $31
  /* 04B844 800CFE64 44D9F800 */      ctc1 $t9, $31
  /* 04B848 800CFE68 00000000 */       nop 
  /* 04B84C 800CFE6C 46003124 */   cvt.w.s $f4, $f6
  /* 04B850 800CFE70 4459F800 */      cfc1 $t9, $31
  /* 04B854 800CFE74 00000000 */       nop 
  /* 04B858 800CFE78 33390078 */      andi $t9, $t9, 0x78
  /* 04B85C 800CFE7C 53200013 */      beql $t9, $zero, .L800CFECC
  /* 04B860 800CFE80 44192000 */      mfc1 $t9, $f4
  /* 04B864 800CFE84 44812000 */      mtc1 $at, $f4 # 2147483600.0 to cop1
  /* 04B868 800CFE88 24190001 */     addiu $t9, $zero, 1
  /* 04B86C 800CFE8C 46043101 */     sub.s $f4, $f6, $f4
  /* 04B870 800CFE90 44D9F800 */      ctc1 $t9, $31
  /* 04B874 800CFE94 00000000 */       nop 
  /* 04B878 800CFE98 46002124 */   cvt.w.s $f4, $f4
  /* 04B87C 800CFE9C 4459F800 */      cfc1 $t9, $31
  /* 04B880 800CFEA0 00000000 */       nop 
  /* 04B884 800CFEA4 33390078 */      andi $t9, $t9, 0x78
  /* 04B888 800CFEA8 17200005 */      bnez $t9, .L800CFEC0
  /* 04B88C 800CFEAC 00000000 */       nop 
  /* 04B890 800CFEB0 44192000 */      mfc1 $t9, $f4
  /* 04B894 800CFEB4 3C018000 */       lui $at, 0x8000
  /* 04B898 800CFEB8 10000007 */         b .L800CFED8
  /* 04B89C 800CFEBC 0321C825 */        or $t9, $t9, $at
  .L800CFEC0:
  /* 04B8A0 800CFEC0 10000005 */         b .L800CFED8
  /* 04B8A4 800CFEC4 2419FFFF */     addiu $t9, $zero, -1
  /* 04B8A8 800CFEC8 44192000 */      mfc1 $t9, $f4
  .L800CFECC:
  /* 04B8AC 800CFECC 00000000 */       nop 
  /* 04B8B0 800CFED0 0720FFFB */      bltz $t9, .L800CFEC0
  /* 04B8B4 800CFED4 00000000 */       nop 
  .L800CFED8:
  /* 04B8B8 800CFED8 A2590056 */        sb $t9, 0x56($s2)
  /* 04B8BC 800CFEDC 92280000 */       lbu $t0, ($s1)
  /* 04B8C0 800CFEE0 44D8F800 */      ctc1 $t8, $31
  /* 04B8C4 800CFEE4 26310001 */     addiu $s1, $s1, 1
  /* 04B8C8 800CFEE8 44885000 */      mtc1 $t0, $f10
  /* 04B8CC 800CFEEC 3C014F80 */       lui $at, (0x4F800000 >> 16) # 4294967300.0
  /* 04B8D0 800CFEF0 05010004 */      bgez $t0, .L800CFF04
  /* 04B8D4 800CFEF4 46805220 */   cvt.s.w $f8, $f10
  /* 04B8D8 800CFEF8 44813000 */      mtc1 $at, $f6 # 4294967300.0 to cop1
  /* 04B8DC 800CFEFC 00000000 */       nop 
  /* 04B8E0 800CFF00 46064200 */     add.s $f8, $f8, $f6
  .L800CFF04:
  /* 04B8E4 800CFF04 0C006252 */       jal rand_f32
  /* 04B8E8 800CFF08 E7A80080 */      swc1 $f8, 0x80($sp)
  /* 04B8EC 800CFF0C 92490057 */       lbu $t1, 0x57($s2)
  /* 04B8F0 800CFF10 C7A80080 */      lwc1 $f8, 0x80($sp)
  /* 04B8F4 800CFF14 3C014F80 */       lui $at, (0x4F800000 >> 16) # 4294967300.0
  /* 04B8F8 800CFF18 44892000 */      mtc1 $t1, $f4
  /* 04B8FC 800CFF1C 00000000 */       nop 
  /* 04B900 800CFF20 468022A0 */   cvt.s.w $f10, $f4
  /* 04B904 800CFF24 46004102 */     mul.s $f4, $f8, $f0
  /* 04B908 800CFF28 05230005 */     bgezl $t1, .L800CFF40
  /* 04B90C 800CFF2C 46045180 */     add.s $f6, $f10, $f4
  /* 04B910 800CFF30 44813000 */      mtc1 $at, $f6 # 4294967300.0 to cop1
  /* 04B914 800CFF34 00000000 */       nop 
  /* 04B918 800CFF38 46065280 */     add.s $f10, $f10, $f6
  /* 04B91C 800CFF3C 46045180 */     add.s $f6, $f10, $f4
  .L800CFF40:
  /* 04B920 800CFF40 240B0001 */     addiu $t3, $zero, 1
  /* 04B924 800CFF44 444AF800 */      cfc1 $t2, $31
  /* 04B928 800CFF48 44CBF800 */      ctc1 $t3, $31
  /* 04B92C 800CFF4C 00000000 */       nop 
  /* 04B930 800CFF50 46003224 */   cvt.w.s $f8, $f6
  /* 04B934 800CFF54 444BF800 */      cfc1 $t3, $31
  /* 04B938 800CFF58 00000000 */       nop 
  /* 04B93C 800CFF5C 31610004 */      andi $at, $t3, 4
  /* 04B940 800CFF60 316B0078 */      andi $t3, $t3, 0x78
  /* 04B944 800CFF64 51600015 */      beql $t3, $zero, .L800CFFBC
  /* 04B948 800CFF68 440B4000 */      mfc1 $t3, $f8
  /* 04B94C 800CFF6C 3C014F00 */       lui $at, (0x4F000000 >> 16) # 2147483600.0
  /* 04B950 800CFF70 44814000 */      mtc1 $at, $f8 # 2147483600.0 to cop1
  /* 04B954 800CFF74 240B0001 */     addiu $t3, $zero, 1
  /* 04B958 800CFF78 46083201 */     sub.s $f8, $f6, $f8
  /* 04B95C 800CFF7C 44CBF800 */      ctc1 $t3, $31
  /* 04B960 800CFF80 00000000 */       nop 
  /* 04B964 800CFF84 46004224 */   cvt.w.s $f8, $f8
  /* 04B968 800CFF88 444BF800 */      cfc1 $t3, $31
  /* 04B96C 800CFF8C 00000000 */       nop 
  /* 04B970 800CFF90 31610004 */      andi $at, $t3, 4
  /* 04B974 800CFF94 316B0078 */      andi $t3, $t3, 0x78
  /* 04B978 800CFF98 15600005 */      bnez $t3, .L800CFFB0
  /* 04B97C 800CFF9C 00000000 */       nop 
  /* 04B980 800CFFA0 440B4000 */      mfc1 $t3, $f8
  /* 04B984 800CFFA4 3C018000 */       lui $at, 0x8000
  /* 04B988 800CFFA8 10000007 */         b .L800CFFC8
  /* 04B98C 800CFFAC 01615825 */        or $t3, $t3, $at
  .L800CFFB0:
  /* 04B990 800CFFB0 10000005 */         b .L800CFFC8
  /* 04B994 800CFFB4 240BFFFF */     addiu $t3, $zero, -1
  /* 04B998 800CFFB8 440B4000 */      mfc1 $t3, $f8
  .L800CFFBC:
  /* 04B99C 800CFFBC 00000000 */       nop 
  /* 04B9A0 800CFFC0 0560FFFB */      bltz $t3, .L800CFFB0
  /* 04B9A4 800CFFC4 00000000 */       nop 
  .L800CFFC8:
  /* 04B9A8 800CFFC8 964C0012 */       lhu $t4, 0x12($s2)
  /* 04B9AC 800CFFCC 44CAF800 */      ctc1 $t2, $31
  /* 04B9B0 800CFFD0 A24B0057 */        sb $t3, 0x57($s2)
  /* 04B9B4 800CFFD4 55800118 */      bnel $t4, $zero, .L800D0438
  /* 04B9B8 800CFFD8 97AA0094 */       lhu $t2, 0x94($sp)
  /* 04B9BC 800CFFDC 8A4E0054 */       lwl $t6, 0x54($s2)
  /* 04B9C0 800CFFE0 9A4E0057 */       lwr $t6, 0x57($s2)
  /* 04B9C4 800CFFE4 AA4E0050 */       swl $t6, 0x50($s2)
  /* 04B9C8 800CFFE8 10000112 */         b jtgt_ovl0_800D0434
  /* 04B9CC 800CFFEC BA4E0053 */       swr $t6, 0x53($s2)
  glabel jtgt_ovl0_800CFFF0
  /* 04B9D0 800CFFF0 922F0000 */       lbu $t7, ($s1)
  /* 04B9D4 800CFFF4 26310001 */     addiu $s1, $s1, 1
  /* 04B9D8 800CFFF8 26310001 */     addiu $s1, $s1, 1
  /* 04B9DC 800CFFFC A24F000B */        sb $t7, 0xb($s2)
  /* 04B9E0 800D0000 9238FFFF */       lbu $t8, -1($s1)
  /* 04B9E4 800D0004 3C014F80 */       lui $at, (0x4F800000 >> 16) # 4294967300.0
  /* 04B9E8 800D0008 44985000 */      mtc1 $t8, $f10
  /* 04B9EC 800D000C 07010004 */      bgez $t8, .L800D0020
  /* 04B9F0 800D0010 46805120 */   cvt.s.w $f4, $f10
  /* 04B9F4 800D0014 44813000 */      mtc1 $at, $f6 # 4294967300.0 to cop1
  /* 04B9F8 800D0018 00000000 */       nop 
  /* 04B9FC 800D001C 46062100 */     add.s $f4, $f4, $f6
  .L800D0020:
  /* 04BA00 800D0020 0C006252 */       jal rand_f32
  /* 04BA04 800D0024 E7A40080 */      swc1 $f4, 0x80($sp)
  /* 04BA08 800D0028 9259000B */       lbu $t9, 0xb($s2)
  /* 04BA0C 800D002C C7A40080 */      lwc1 $f4, 0x80($sp)
  /* 04BA10 800D0030 3C014F80 */       lui $at, (0x4F800000 >> 16) # 4294967300.0
  /* 04BA14 800D0034 44994000 */      mtc1 $t9, $f8
  /* 04BA18 800D0038 00000000 */       nop 
  /* 04BA1C 800D003C 468042A0 */   cvt.s.w $f10, $f8
  /* 04BA20 800D0040 46002202 */     mul.s $f8, $f4, $f0
  /* 04BA24 800D0044 07230005 */     bgezl $t9, .L800D005C
  /* 04BA28 800D0048 46085180 */     add.s $f6, $f10, $f8
  /* 04BA2C 800D004C 44813000 */      mtc1 $at, $f6 # 4294967300.0 to cop1
  /* 04BA30 800D0050 00000000 */       nop 
  /* 04BA34 800D0054 46065280 */     add.s $f10, $f10, $f6
  /* 04BA38 800D0058 46085180 */     add.s $f6, $f10, $f8
  .L800D005C:
  /* 04BA3C 800D005C 24090001 */     addiu $t1, $zero, 1
  /* 04BA40 800D0060 4448F800 */      cfc1 $t0, $31
  /* 04BA44 800D0064 44C9F800 */      ctc1 $t1, $31
  /* 04BA48 800D0068 00000000 */       nop 
  /* 04BA4C 800D006C 46003124 */   cvt.w.s $f4, $f6
  /* 04BA50 800D0070 4449F800 */      cfc1 $t1, $31
  /* 04BA54 800D0074 00000000 */       nop 
  /* 04BA58 800D0078 31210004 */      andi $at, $t1, 4
  /* 04BA5C 800D007C 31290078 */      andi $t1, $t1, 0x78
  /* 04BA60 800D0080 51200015 */      beql $t1, $zero, .L800D00D8
  /* 04BA64 800D0084 44092000 */      mfc1 $t1, $f4
  /* 04BA68 800D0088 3C014F00 */       lui $at, (0x4F000000 >> 16) # 2147483600.0
  /* 04BA6C 800D008C 44812000 */      mtc1 $at, $f4 # 2147483600.0 to cop1
  /* 04BA70 800D0090 24090001 */     addiu $t1, $zero, 1
  /* 04BA74 800D0094 46043101 */     sub.s $f4, $f6, $f4
  /* 04BA78 800D0098 44C9F800 */      ctc1 $t1, $31
  /* 04BA7C 800D009C 00000000 */       nop 
  /* 04BA80 800D00A0 46002124 */   cvt.w.s $f4, $f4
  /* 04BA84 800D00A4 4449F800 */      cfc1 $t1, $31
  /* 04BA88 800D00A8 00000000 */       nop 
  /* 04BA8C 800D00AC 31210004 */      andi $at, $t1, 4
  /* 04BA90 800D00B0 31290078 */      andi $t1, $t1, 0x78
  /* 04BA94 800D00B4 15200005 */      bnez $t1, .L800D00CC
  /* 04BA98 800D00B8 00000000 */       nop 
  /* 04BA9C 800D00BC 44092000 */      mfc1 $t1, $f4
  /* 04BAA0 800D00C0 3C018000 */       lui $at, 0x8000
  /* 04BAA4 800D00C4 10000007 */         b .L800D00E4
  /* 04BAA8 800D00C8 01214825 */        or $t1, $t1, $at
  .L800D00CC:
  /* 04BAAC 800D00CC 10000005 */         b .L800D00E4
  /* 04BAB0 800D00D0 2409FFFF */     addiu $t1, $zero, -1
  /* 04BAB4 800D00D4 44092000 */      mfc1 $t1, $f4
  .L800D00D8:
  /* 04BAB8 800D00D8 00000000 */       nop 
  /* 04BABC 800D00DC 0520FFFB */      bltz $t1, .L800D00CC
  /* 04BAC0 800D00E0 00000000 */       nop 
  .L800D00E4:
  /* 04BAC4 800D00E4 44C8F800 */      ctc1 $t0, $31
  /* 04BAC8 800D00E8 100000D2 */         b jtgt_ovl0_800D0434
  /* 04BACC 800D00EC A249000B */        sb $t1, 0xb($s2)
  glabel jtgt_ovl0_800D00F0
  /* 04BAD0 800D00F0 02202025 */        or $a0, $s1, $zero
  /* 04BAD4 800D00F4 0C033AF0 */       jal func_ovl0_800CEBC0
  /* 04BAD8 800D00F8 02602825 */        or $a1, $s3, $zero
  /* 04BADC 800D00FC 00402025 */        or $a0, $v0, $zero
  /* 04BAE0 800D0100 0C033AF0 */       jal func_ovl0_800CEBC0
  /* 04BAE4 800D0104 27A5007C */     addiu $a1, $sp, 0x7c
  /* 04BAE8 800D0108 0C006252 */       jal rand_f32
  /* 04BAEC 800D010C 00408825 */        or $s1, $v0, $zero
  /* 04BAF0 800D0110 C7A8007C */      lwc1 $f8, 0x7c($sp)
  /* 04BAF4 800D0114 C7AA0080 */      lwc1 $f10, 0x80($sp)
  /* 04BAF8 800D0118 46004182 */     mul.s $f6, $f8, $f0
  /* 04BAFC 800D011C 46065100 */     add.s $f4, $f10, $f6
  /* 04BB00 800D0120 E7A40080 */      swc1 $f4, 0x80($sp)
  /* 04BB04 800D0124 C642002C */      lwc1 $f2, 0x2c($s2)
  /* 04BB08 800D0128 C64E0030 */      lwc1 $f14, 0x30($s2)
  /* 04BB0C 800D012C C6500034 */      lwc1 $f16, 0x34($s2)
  /* 04BB10 800D0130 46021202 */     mul.s $f8, $f2, $f2
  /* 04BB14 800D0134 00000000 */       nop 
  /* 04BB18 800D0138 460E7282 */     mul.s $f10, $f14, $f14
  /* 04BB1C 800D013C 460A4180 */     add.s $f6, $f8, $f10
  /* 04BB20 800D0140 46108102 */     mul.s $f4, $f16, $f16
  /* 04BB24 800D0144 0C00CD44 */       jal sqrtf
  /* 04BB28 800D0148 46043300 */     add.s $f12, $f6, $f4
  /* 04BB2C 800D014C C7A80080 */      lwc1 $f8, 0x80($sp)
  /* 04BB30 800D0150 E7A0007C */      swc1 $f0, 0x7c($sp)
  /* 04BB34 800D0154 46004283 */     div.s $f10, $f8, $f0
  /* 04BB38 800D0158 E7AA0080 */      swc1 $f10, 0x80($sp)
  /* 04BB3C 800D015C C646002C */      lwc1 $f6, 0x2c($s2)
  /* 04BB40 800D0160 C6480030 */      lwc1 $f8, 0x30($s2)
  /* 04BB44 800D0164 460A3102 */     mul.s $f4, $f6, $f10
  /* 04BB48 800D0168 E644002C */      swc1 $f4, 0x2c($s2)
  /* 04BB4C 800D016C C7A60080 */      lwc1 $f6, 0x80($sp)
  /* 04BB50 800D0170 C6440034 */      lwc1 $f4, 0x34($s2)
  /* 04BB54 800D0174 46064282 */     mul.s $f10, $f8, $f6
  /* 04BB58 800D0178 E64A0030 */      swc1 $f10, 0x30($s2)
  /* 04BB5C 800D017C C7A80080 */      lwc1 $f8, 0x80($sp)
  /* 04BB60 800D0180 46082182 */     mul.s $f6, $f4, $f8
  /* 04BB64 800D0184 100000AB */         b jtgt_ovl0_800D0434
  /* 04BB68 800D0188 E6460034 */      swc1 $f6, 0x34($s2)
  glabel jtgt_ovl0_800D018C
  /* 04BB6C 800D018C 02202025 */        or $a0, $s1, $zero
  /* 04BB70 800D0190 0C033AF0 */       jal func_ovl0_800CEBC0
  /* 04BB74 800D0194 02602825 */        or $a1, $s3, $zero
  /* 04BB78 800D0198 C64A002C */      lwc1 $f10, 0x2c($s2)
  /* 04BB7C 800D019C C7A40080 */      lwc1 $f4, 0x80($sp)
  /* 04BB80 800D01A0 00402025 */        or $a0, $v0, $zero
  /* 04BB84 800D01A4 02602825 */        or $a1, $s3, $zero
  /* 04BB88 800D01A8 46045202 */     mul.s $f8, $f10, $f4
  /* 04BB8C 800D01AC 0C033AF0 */       jal func_ovl0_800CEBC0
  /* 04BB90 800D01B0 E648002C */      swc1 $f8, 0x2c($s2)
  /* 04BB94 800D01B4 C6460030 */      lwc1 $f6, 0x30($s2)
  /* 04BB98 800D01B8 C7AA0080 */      lwc1 $f10, 0x80($sp)
  /* 04BB9C 800D01BC 00402025 */        or $a0, $v0, $zero
  /* 04BBA0 800D01C0 02602825 */        or $a1, $s3, $zero
  /* 04BBA4 800D01C4 460A3102 */     mul.s $f4, $f6, $f10
  /* 04BBA8 800D01C8 0C033AF0 */       jal func_ovl0_800CEBC0
  /* 04BBAC 800D01CC E6440030 */      swc1 $f4, 0x30($s2)
  /* 04BBB0 800D01D0 C6480034 */      lwc1 $f8, 0x34($s2)
  /* 04BBB4 800D01D4 C7A60080 */      lwc1 $f6, 0x80($sp)
  /* 04BBB8 800D01D8 00408825 */        or $s1, $v0, $zero
  /* 04BBBC 800D01DC 46064282 */     mul.s $f10, $f8, $f6
  /* 04BBC0 800D01E0 10000094 */         b jtgt_ovl0_800D0434
  /* 04BBC4 800D01E4 E64A0034 */      swc1 $f10, 0x34($s2)
  glabel jtgt_ovl0_800D01E8
  /* 04BBC8 800D01E8 92300000 */       lbu $s0, ($s1)
  /* 04BBCC 800D01EC 964A0006 */       lhu $t2, 6($s2)
  /* 04BBD0 800D01F0 26310001 */     addiu $s1, $s1, 1
  /* 04BBD4 800D01F4 2610FFFF */     addiu $s0, $s0, -1
  /* 04BBD8 800D01F8 00106300 */       sll $t4, $s0, 0xc
  /* 04BBDC 800D01FC 354B8000 */       ori $t3, $t2, 0x8000
  /* 04BBE0 800D0200 016C6825 */        or $t5, $t3, $t4
  /* 04BBE4 800D0204 1000008B */         b jtgt_ovl0_800D0434
  /* 04BBE8 800D0208 A64D0006 */        sh $t5, 6($s2)
  glabel jtgt_ovl0_800D020C
  /* 04BBEC 800D020C 26430048 */     addiu $v1, $s2, 0x48
  /* 04BBF0 800D0210 2646004C */     addiu $a2, $s2, 0x4c
  /* 04BBF4 800D0214 AFA60028 */        sw $a2, 0x28($sp)
  /* 04BBF8 800D0218 AFA3002C */        sw $v1, 0x2c($sp)
  /* 04BBFC 800D021C 02202025 */        or $a0, $s1, $zero
  /* 04BC00 800D0220 0C033AFE */       jal func_ovl0_800CEBF8
  /* 04BC04 800D0224 26450010 */     addiu $a1, $s2, 0x10
  /* 04BC08 800D0228 8FA3002C */        lw $v1, 0x2c($sp)
  /* 04BC0C 800D022C 8FA60028 */        lw $a2, 0x28($sp)
  /* 04BC10 800D0230 32180001 */      andi $t8, $s0, 1
  /* 04BC14 800D0234 886F0000 */       lwl $t7, ($v1)
  /* 04BC18 800D0238 986F0003 */       lwr $t7, 3($v1)
  /* 04BC1C 800D023C 00408825 */        or $s1, $v0, $zero
  /* 04BC20 800D0240 32080002 */      andi $t0, $s0, 2
  /* 04BC24 800D0244 A8CF0000 */       swl $t7, ($a2)
  /* 04BC28 800D0248 13000004 */      beqz $t8, .L800D025C
  /* 04BC2C 800D024C B8CF0003 */       swr $t7, 3($a2)
  /* 04BC30 800D0250 90590000 */       lbu $t9, ($v0)
  /* 04BC34 800D0254 24510001 */     addiu $s1, $v0, 1
  /* 04BC38 800D0258 A259004C */        sb $t9, 0x4c($s2)
  .L800D025C:
  /* 04BC3C 800D025C 11000004 */      beqz $t0, .L800D0270
  /* 04BC40 800D0260 320A0004 */      andi $t2, $s0, 4
  /* 04BC44 800D0264 92290000 */       lbu $t1, ($s1)
  /* 04BC48 800D0268 26310001 */     addiu $s1, $s1, 1
  /* 04BC4C 800D026C A249004D */        sb $t1, 0x4d($s2)
  .L800D0270:
  /* 04BC50 800D0270 11400004 */      beqz $t2, .L800D0284
  /* 04BC54 800D0274 320C0008 */      andi $t4, $s0, 8
  /* 04BC58 800D0278 922B0000 */       lbu $t3, ($s1)
  /* 04BC5C 800D027C 26310001 */     addiu $s1, $s1, 1
  /* 04BC60 800D0280 A24B004E */        sb $t3, 0x4e($s2)
  .L800D0284:
  /* 04BC64 800D0284 51800005 */      beql $t4, $zero, .L800D029C
  /* 04BC68 800D0288 964E0010 */       lhu $t6, 0x10($s2)
  /* 04BC6C 800D028C 922D0000 */       lbu $t5, ($s1)
  /* 04BC70 800D0290 26310001 */     addiu $s1, $s1, 1
  /* 04BC74 800D0294 A24D004F */        sb $t5, 0x4f($s2)
  /* 04BC78 800D0298 964E0010 */       lhu $t6, 0x10($s2)
  .L800D029C:
  /* 04BC7C 800D029C 24010001 */     addiu $at, $zero, 1
  /* 04BC80 800D02A0 55C10065 */      bnel $t6, $at, .L800D0438
  /* 04BC84 800D02A4 97AA0094 */       lhu $t2, 0x94($sp)
  /* 04BC88 800D02A8 88D80000 */       lwl $t8, ($a2)
  /* 04BC8C 800D02AC 98D80003 */       lwr $t8, 3($a2)
  /* 04BC90 800D02B0 A8780000 */       swl $t8, ($v1)
  /* 04BC94 800D02B4 B8780003 */       swr $t8, 3($v1)
  /* 04BC98 800D02B8 1000005E */         b jtgt_ovl0_800D0434
  /* 04BC9C 800D02BC A6400010 */        sh $zero, 0x10($s2)
  glabel jtgt_ovl0_800D02C0
  /* 04BCA0 800D02C0 26430050 */     addiu $v1, $s2, 0x50
  /* 04BCA4 800D02C4 26460054 */     addiu $a2, $s2, 0x54
  /* 04BCA8 800D02C8 AFA60028 */        sw $a2, 0x28($sp)
  /* 04BCAC 800D02CC AFA3002C */        sw $v1, 0x2c($sp)
  /* 04BCB0 800D02D0 02202025 */        or $a0, $s1, $zero
  /* 04BCB4 800D02D4 0C033AFE */       jal func_ovl0_800CEBF8
  /* 04BCB8 800D02D8 26450012 */     addiu $a1, $s2, 0x12
  /* 04BCBC 800D02DC 8FA3002C */        lw $v1, 0x2c($sp)
  /* 04BCC0 800D02E0 8FA60028 */        lw $a2, 0x28($sp)
  /* 04BCC4 800D02E4 32090001 */      andi $t1, $s0, 1
  /* 04BCC8 800D02E8 88680000 */       lwl $t0, ($v1)
  /* 04BCCC 800D02EC 98680003 */       lwr $t0, 3($v1)
  /* 04BCD0 800D02F0 00408825 */        or $s1, $v0, $zero
  /* 04BCD4 800D02F4 320B0002 */      andi $t3, $s0, 2
  /* 04BCD8 800D02F8 A8C80000 */       swl $t0, ($a2)
  /* 04BCDC 800D02FC 11200004 */      beqz $t1, .L800D0310
  /* 04BCE0 800D0300 B8C80003 */       swr $t0, 3($a2)
  /* 04BCE4 800D0304 904A0000 */       lbu $t2, ($v0)
  /* 04BCE8 800D0308 24510001 */     addiu $s1, $v0, 1
  /* 04BCEC 800D030C A24A0054 */        sb $t2, 0x54($s2)
  .L800D0310:
  /* 04BCF0 800D0310 11600004 */      beqz $t3, .L800D0324
  /* 04BCF4 800D0314 320D0004 */      andi $t5, $s0, 4
  /* 04BCF8 800D0318 922C0000 */       lbu $t4, ($s1)
  /* 04BCFC 800D031C 26310001 */     addiu $s1, $s1, 1
  /* 04BD00 800D0320 A24C0055 */        sb $t4, 0x55($s2)
  .L800D0324:
  /* 04BD04 800D0324 11A00004 */      beqz $t5, .L800D0338
  /* 04BD08 800D0328 320F0008 */      andi $t7, $s0, 8
  /* 04BD0C 800D032C 922E0000 */       lbu $t6, ($s1)
  /* 04BD10 800D0330 26310001 */     addiu $s1, $s1, 1
  /* 04BD14 800D0334 A24E0056 */        sb $t6, 0x56($s2)
  .L800D0338:
  /* 04BD18 800D0338 51E00005 */      beql $t7, $zero, .L800D0350
  /* 04BD1C 800D033C 96590012 */       lhu $t9, 0x12($s2)
  /* 04BD20 800D0340 92380000 */       lbu $t8, ($s1)
  /* 04BD24 800D0344 26310001 */     addiu $s1, $s1, 1
  /* 04BD28 800D0348 A2580057 */        sb $t8, 0x57($s2)
  /* 04BD2C 800D034C 96590012 */       lhu $t9, 0x12($s2)
  .L800D0350:
  /* 04BD30 800D0350 24010001 */     addiu $at, $zero, 1
  /* 04BD34 800D0354 57210038 */      bnel $t9, $at, .L800D0438
  /* 04BD38 800D0358 97AA0094 */       lhu $t2, 0x94($sp)
  /* 04BD3C 800D035C 88C90000 */       lwl $t1, ($a2)
  /* 04BD40 800D0360 98C90003 */       lwr $t1, 3($a2)
  /* 04BD44 800D0364 A8690000 */       swl $t1, ($v1)
  /* 04BD48 800D0368 B8690003 */       swr $t1, 3($v1)
  /* 04BD4C 800D036C 10000031 */         b jtgt_ovl0_800D0434
  /* 04BD50 800D0370 A6400012 */        sh $zero, 0x12($s2)
  glabel jtgt_ovl0_800D0374
  /* 04BD54 800D0374 8E4B0014 */        lw $t3, 0x14($s2)
  /* 04BD58 800D0378 922A0000 */       lbu $t2, ($s1)
  /* 04BD5C 800D037C 26310001 */     addiu $s1, $s1, 1
  /* 04BD60 800D0380 022B6023 */      subu $t4, $s1, $t3
  /* 04BD64 800D0384 A64C001C */        sh $t4, 0x1c($s2)
  /* 04BD68 800D0388 1000002A */         b jtgt_ovl0_800D0434
  /* 04BD6C 800D038C A24A0009 */        sb $t2, 9($s2)
  glabel jtgt_ovl0_800D0390
  /* 04BD70 800D0390 924D0009 */       lbu $t5, 9($s2)
  /* 04BD74 800D0394 25AEFFFF */     addiu $t6, $t5, -1
  /* 04BD78 800D0398 31CF00FF */      andi $t7, $t6, 0xff
  /* 04BD7C 800D039C 11E00025 */      beqz $t7, jtgt_ovl0_800D0434
  /* 04BD80 800D03A0 A24E0009 */        sb $t6, 9($s2)
  /* 04BD84 800D03A4 8E580014 */        lw $t8, 0x14($s2)
  /* 04BD88 800D03A8 9659001C */       lhu $t9, 0x1c($s2)
  /* 04BD8C 800D03AC 10000021 */         b jtgt_ovl0_800D0434
  /* 04BD90 800D03B0 03198821 */      addu $s1, $t8, $t9
  glabel jtgt_ovl0_800D03B4
  /* 04BD94 800D03B4 8E480014 */        lw $t0, 0x14($s2)
  /* 04BD98 800D03B8 02284823 */      subu $t1, $s1, $t0
  /* 04BD9C 800D03BC 1000001D */         b jtgt_ovl0_800D0434
  /* 04BDA0 800D03C0 A649001A */        sh $t1, 0x1a($s2)
  glabel jtgt_ovl0_800D03C4
  /* 04BDA4 800D03C4 8E4A0014 */        lw $t2, 0x14($s2)
  /* 04BDA8 800D03C8 964B001A */       lhu $t3, 0x1a($s2)
  /* 04BDAC 800D03CC 10000019 */         b jtgt_ovl0_800D0434
  /* 04BDB0 800D03D0 014B8821 */      addu $s1, $t2, $t3
  glabel jtgt_ovl0_800D03D4
  /* 04BDB4 800D03D4 8E4D0014 */        lw $t5, 0x14($s2)
  /* 04BDB8 800D03D8 240C0001 */     addiu $t4, $zero, 1
  /* 04BDBC 800D03DC A64C001E */        sh $t4, 0x1e($s2)
  /* 04BDC0 800D03E0 10000019 */         b .L800D0448
  /* 04BDC4 800D03E4 022D1023 */      subu $v0, $s1, $t5
  .L800D03E8:
  /* 04BDC8 800D03E8 3202001F */      andi $v0, $s0, 0x1f
  /* 04BDCC 800D03EC 320E0020 */      andi $t6, $s0, 0x20
  /* 04BDD0 800D03F0 11C00007 */      beqz $t6, .L800D0410
  /* 04BDD4 800D03F4 A7A20094 */        sh $v0, 0x94($sp)
  /* 04BDD8 800D03F8 922F0000 */       lbu $t7, ($s1)
  /* 04BDDC 800D03FC 3058FFFF */      andi $t8, $v0, 0xffff
  /* 04BDE0 800D0400 0018CA00 */       sll $t9, $t8, 8
  /* 04BDE4 800D0404 01F94021 */      addu $t0, $t7, $t9
  /* 04BDE8 800D0408 A7A80094 */        sh $t0, 0x94($sp)
  /* 04BDEC 800D040C 26310001 */     addiu $s1, $s1, 1
  .L800D0410:
  /* 04BDF0 800D0410 320200C0 */      andi $v0, $s0, 0xc0
  /* 04BDF4 800D0414 50400008 */      beql $v0, $zero, .L800D0438
  /* 04BDF8 800D0418 97AA0094 */       lhu $t2, 0x94($sp)
  /* 04BDFC 800D041C 24010040 */     addiu $at, $zero, 0x40
  /* 04BE00 800D0420 54410005 */      bnel $v0, $at, .L800D0438
  /* 04BE04 800D0424 97AA0094 */       lhu $t2, 0x94($sp)
  /* 04BE08 800D0428 92290000 */       lbu $t1, ($s1)
  /* 04BE0C 800D042C 26310001 */     addiu $s1, $s1, 1
  /* 04BE10 800D0430 A249000B */        sb $t1, 0xb($s2)
  glabel jtgt_ovl0_800D0434
  /* 04BE14 800D0434 97AA0094 */       lhu $t2, 0x94($sp)
  .L800D0438:
  /* 04BE18 800D0438 5140FADF */      beql $t2, $zero, .L800CEFB8
  /* 04BE1C 800D043C 92240000 */       lbu $a0, ($s1)
  /* 04BE20 800D0440 8E4B0014 */        lw $t3, 0x14($s2)
  /* 04BE24 800D0444 022B1023 */      subu $v0, $s1, $t3
  .L800D0448:
  /* 04BE28 800D0448 A6420018 */        sh $v0, 0x18($s2)
  /* 04BE2C 800D044C 97AC0094 */       lhu $t4, 0x94($sp)
  /* 04BE30 800D0450 A64C000C */        sh $t4, 0xc($s2)
  .L800D0454:
  /* 04BE34 800D0454 9642000E */       lhu $v0, 0xe($s2)
  .L800D0458:
  /* 04BE38 800D0458 50400011 */      beql $v0, $zero, .L800D04A0
  /* 04BE3C 800D045C 96470010 */       lhu $a3, 0x10($s2)
  /* 04BE40 800D0460 C6400040 */      lwc1 $f0, 0x40($s2)
  /* 04BE44 800D0464 C6440044 */      lwc1 $f4, 0x44($s2)
  /* 04BE48 800D0468 44823000 */      mtc1 $v0, $f6
  /* 04BE4C 800D046C 46002201 */     sub.s $f8, $f4, $f0
  /* 04BE50 800D0470 04410005 */      bgez $v0, .L800D0488
  /* 04BE54 800D0474 468032A0 */   cvt.s.w $f10, $f6
  /* 04BE58 800D0478 3C014F80 */       lui $at, (0x4F800000 >> 16) # 4294967300.0
  /* 04BE5C 800D047C 44812000 */      mtc1 $at, $f4 # 4294967300.0 to cop1
  /* 04BE60 800D0480 00000000 */       nop 
  /* 04BE64 800D0484 46045280 */     add.s $f10, $f10, $f4
  .L800D0488:
  /* 04BE68 800D0488 460A4183 */     div.s $f6, $f8, $f10
  /* 04BE6C 800D048C 244DFFFF */     addiu $t5, $v0, -1
  /* 04BE70 800D0490 A64D000E */        sh $t5, 0xe($s2)
  /* 04BE74 800D0494 46060100 */     add.s $f4, $f0, $f6
  /* 04BE78 800D0498 E6440040 */      swc1 $f4, 0x40($s2)
  /* 04BE7C 800D049C 96470010 */       lhu $a3, 0x10($s2)
  .L800D04A0:
  /* 04BE80 800D04A0 50E00034 */      beql $a3, $zero, .L800D0574
  /* 04BE84 800D04A4 96470012 */       lhu $a3, 0x12($s2)
  /* 04BE88 800D04A8 3C0E0001 */       lui $t6, 1
  /* 04BE8C 800D04AC 01C7001A */       div $zero, $t6, $a3
  /* 04BE90 800D04B0 92430048 */       lbu $v1, 0x48($s2)
  /* 04BE94 800D04B4 924F004C */       lbu $t7, 0x4c($s2)
  /* 04BE98 800D04B8 00001012 */      mflo $v0
  /* 04BE9C 800D04BC 92440049 */       lbu $a0, 0x49($s2)
  /* 04BEA0 800D04C0 01E3C823 */      subu $t9, $t7, $v1
  /* 04BEA4 800D04C4 03220019 */     multu $t9, $v0
  /* 04BEA8 800D04C8 924C004D */       lbu $t4, 0x4d($s2)
  /* 04BEAC 800D04CC 0003C400 */       sll $t8, $v1, 0x10
  /* 04BEB0 800D04D0 9245004A */       lbu $a1, 0x4a($s2)
  /* 04BEB4 800D04D4 01846823 */      subu $t5, $t4, $a0
  /* 04BEB8 800D04D8 14E00002 */      bnez $a3, .L800D04E4
  /* 04BEBC 800D04DC 00000000 */       nop 
  /* 04BEC0 800D04E0 0007000D */     break 7
  .L800D04E4:
  /* 04BEC4 800D04E4 2401FFFF */     addiu $at, $zero, -1
  /* 04BEC8 800D04E8 14E10004 */       bne $a3, $at, .L800D04FC
  /* 04BECC 800D04EC 3C018000 */       lui $at, 0x8000
  /* 04BED0 800D04F0 15C10002 */       bne $t6, $at, .L800D04FC
  /* 04BED4 800D04F4 00000000 */       nop 
  /* 04BED8 800D04F8 0006000D */     break 6
  .L800D04FC:
  /* 04BEDC 800D04FC 00004012 */      mflo $t0
  /* 04BEE0 800D0500 03084821 */      addu $t1, $t8, $t0
  /* 04BEE4 800D0504 9248004E */       lbu $t0, 0x4e($s2)
  /* 04BEE8 800D0508 01A20019 */     multu $t5, $v0
  /* 04BEEC 800D050C 00095403 */       sra $t2, $t1, 0x10
  /* 04BEF0 800D0510 01054823 */      subu $t1, $t0, $a1
  /* 04BEF4 800D0514 00045C00 */       sll $t3, $a0, 0x10
  /* 04BEF8 800D0518 9246004B */       lbu $a2, 0x4b($s2)
  /* 04BEFC 800D051C A24A0048 */        sb $t2, 0x48($s2)
  /* 04BF00 800D0520 0005C400 */       sll $t8, $a1, 0x10
  /* 04BF04 800D0524 00007012 */      mflo $t6
  /* 04BF08 800D0528 016E7821 */      addu $t7, $t3, $t6
  /* 04BF0C 800D052C 924E004F */       lbu $t6, 0x4f($s2)
  /* 04BF10 800D0530 01220019 */     multu $t1, $v0
  /* 04BF14 800D0534 000FCC03 */       sra $t9, $t7, 0x10
  /* 04BF18 800D0538 01C67823 */      subu $t7, $t6, $a2
  /* 04BF1C 800D053C A2590049 */        sb $t9, 0x49($s2)
  /* 04BF20 800D0540 00065C00 */       sll $t3, $a2, 0x10
  /* 04BF24 800D0544 00005012 */      mflo $t2
  /* 04BF28 800D0548 030A6021 */      addu $t4, $t8, $t2
  /* 04BF2C 800D054C 000C6C03 */       sra $t5, $t4, 0x10
  /* 04BF30 800D0550 01E20019 */     multu $t7, $v0
  /* 04BF34 800D0554 24F8FFFF */     addiu $t8, $a3, -1
  /* 04BF38 800D0558 A24D004A */        sb $t5, 0x4a($s2)
  /* 04BF3C 800D055C A6580010 */        sh $t8, 0x10($s2)
  /* 04BF40 800D0560 0000C812 */      mflo $t9
  /* 04BF44 800D0564 01794021 */      addu $t0, $t3, $t9
  /* 04BF48 800D0568 00084C03 */       sra $t1, $t0, 0x10
  /* 04BF4C 800D056C A249004B */        sb $t1, 0x4b($s2)
  /* 04BF50 800D0570 96470012 */       lhu $a3, 0x12($s2)
  .L800D0574:
  /* 04BF54 800D0574 3C0A0001 */       lui $t2, 1
  /* 04BF58 800D0578 50E00033 */      beql $a3, $zero, .L800D0648
  /* 04BF5C 800D057C 9659001E */       lhu $t9, 0x1e($s2)
  /* 04BF60 800D0580 0147001A */       div $zero, $t2, $a3
  /* 04BF64 800D0584 92430050 */       lbu $v1, 0x50($s2)
  /* 04BF68 800D0588 924D0054 */       lbu $t5, 0x54($s2)
  /* 04BF6C 800D058C 00001012 */      mflo $v0
  /* 04BF70 800D0590 92440051 */       lbu $a0, 0x51($s2)
  /* 04BF74 800D0594 01A37023 */      subu $t6, $t5, $v1
  /* 04BF78 800D0598 01C20019 */     multu $t6, $v0
  /* 04BF7C 800D059C 92490055 */       lbu $t1, 0x55($s2)
  /* 04BF80 800D05A0 00036400 */       sll $t4, $v1, 0x10
  /* 04BF84 800D05A4 92450052 */       lbu $a1, 0x52($s2)
  /* 04BF88 800D05A8 0124C023 */      subu $t8, $t1, $a0
  /* 04BF8C 800D05AC 14E00002 */      bnez $a3, .L800D05B8
  /* 04BF90 800D05B0 00000000 */       nop 
  /* 04BF94 800D05B4 0007000D */     break 7
  .L800D05B8:
  /* 04BF98 800D05B8 2401FFFF */     addiu $at, $zero, -1
  /* 04BF9C 800D05BC 14E10004 */       bne $a3, $at, .L800D05D0
  /* 04BFA0 800D05C0 3C018000 */       lui $at, 0x8000
  /* 04BFA4 800D05C4 15410002 */       bne $t2, $at, .L800D05D0
  /* 04BFA8 800D05C8 00000000 */       nop 
  /* 04BFAC 800D05CC 0006000D */     break 6
  .L800D05D0:
  /* 04BFB0 800D05D0 00007812 */      mflo $t7
  /* 04BFB4 800D05D4 018F5821 */      addu $t3, $t4, $t7
  /* 04BFB8 800D05D8 924F0056 */       lbu $t7, 0x56($s2)
  /* 04BFBC 800D05DC 03020019 */     multu $t8, $v0
  /* 04BFC0 800D05E0 000BCC03 */       sra $t9, $t3, 0x10
  /* 04BFC4 800D05E4 01E55823 */      subu $t3, $t7, $a1
  /* 04BFC8 800D05E8 00044400 */       sll $t0, $a0, 0x10
  /* 04BFCC 800D05EC 92460053 */       lbu $a2, 0x53($s2)
  /* 04BFD0 800D05F0 A2590050 */        sb $t9, 0x50($s2)
  /* 04BFD4 800D05F4 00056400 */       sll $t4, $a1, 0x10
  /* 04BFD8 800D05F8 00005012 */      mflo $t2
  /* 04BFDC 800D05FC 010A6821 */      addu $t5, $t0, $t2
  /* 04BFE0 800D0600 924A0057 */       lbu $t2, 0x57($s2)
  /* 04BFE4 800D0604 01620019 */     multu $t3, $v0
  /* 04BFE8 800D0608 000D7403 */       sra $t6, $t5, 0x10
  /* 04BFEC 800D060C 01466823 */      subu $t5, $t2, $a2
  /* 04BFF0 800D0610 A24E0051 */        sb $t6, 0x51($s2)
  /* 04BFF4 800D0614 00064400 */       sll $t0, $a2, 0x10
  /* 04BFF8 800D0618 0000C812 */      mflo $t9
  /* 04BFFC 800D061C 01994821 */      addu $t1, $t4, $t9
  /* 04C000 800D0620 0009C403 */       sra $t8, $t1, 0x10
  /* 04C004 800D0624 01A20019 */     multu $t5, $v0
  /* 04C008 800D0628 24ECFFFF */     addiu $t4, $a3, -1
  /* 04C00C 800D062C A2580052 */        sb $t8, 0x52($s2)
  /* 04C010 800D0630 A64C0012 */        sh $t4, 0x12($s2)
  /* 04C014 800D0634 00007012 */      mflo $t6
  /* 04C018 800D0638 010E7821 */      addu $t7, $t0, $t6
  /* 04C01C 800D063C 000F5C03 */       sra $t3, $t7, 0x10
  /* 04C020 800D0640 A24B0053 */        sb $t3, 0x53($s2)
  /* 04C024 800D0644 9659001E */       lhu $t9, 0x1e($s2)
  .L800D0648:
  /* 04C028 800D0648 2729FFFF */     addiu $t1, $t9, -1
  /* 04C02C 800D064C 3138FFFF */      andi $t8, $t1, 0xffff
  /* 04C030 800D0650 1700003E */      bnez $t8, .L800D074C
  /* 04C034 800D0654 A649001E */        sh $t1, 0x1e($s2)
  /* 04C038 800D0658 8FAA00AC */        lw $t2, 0xac($sp)
  /* 04C03C 800D065C 8FA800B0 */        lw $t0, 0xb0($sp)
  /* 04C040 800D0660 8FAB00AC */        lw $t3, 0xac($sp)
  /* 04C044 800D0664 15400006 */      bnez $t2, .L800D0680
  /* 04C048 800D0668 00087080 */       sll $t6, $t0, 2
  /* 04C04C 800D066C 8E4D0000 */        lw $t5, ($s2)
  /* 04C050 800D0670 3C01800D */       lui $at, %hi(D_ovl0_800D6358)
  /* 04C054 800D0674 002E0821 */      addu $at, $at, $t6
  /* 04C058 800D0678 10000003 */         b .L800D0688
  /* 04C05C 800D067C AC2D6358 */        sw $t5, %lo(D_ovl0_800D6358)($at)
  .L800D0680:
  /* 04C060 800D0680 8E4F0000 */        lw $t7, ($s2)
  /* 04C064 800D0684 AD6F0000 */        sw $t7, ($t3)
  .L800D0688:
  /* 04C068 800D0688 8E420058 */        lw $v0, 0x58($s2)
  /* 04C06C 800D068C 8E500000 */        lw $s0, ($s2)
  /* 04C070 800D0690 5040000D */      beql $v0, $zero, .L800D06C8
  /* 04C074 800D0694 8E44005C */        lw $a0, 0x5c($s2)
  /* 04C078 800D0698 964C0006 */       lhu $t4, 6($s2)
  /* 04C07C 800D069C 31990004 */      andi $t9, $t4, 4
  /* 04C080 800D06A0 53200009 */      beql $t9, $zero, .L800D06C8
  /* 04C084 800D06A4 8E44005C */        lw $a0, 0x5c($s2)
  /* 04C088 800D06A8 90490008 */       lbu $t1, 8($v0)
  /* 04C08C 800D06AC 24010002 */     addiu $at, $zero, 2
  /* 04C090 800D06B0 55210005 */      bnel $t1, $at, .L800D06C8
  /* 04C094 800D06B4 8E44005C */        lw $a0, 0x5c($s2)
  /* 04C098 800D06B8 94580054 */       lhu $t8, 0x54($v0)
  /* 04C09C 800D06BC 270AFFFF */     addiu $t2, $t8, -1
  /* 04C0A0 800D06C0 A44A0054 */        sh $t2, 0x54($v0)
  /* 04C0A4 800D06C4 8E44005C */        lw $a0, 0x5c($s2)
  .L800D06C8:
  /* 04C0A8 800D06C8 10800014 */      beqz $a0, .L800D071C
  /* 04C0AC 800D06CC 00000000 */       nop 
  /* 04C0B0 800D06D0 9488002A */       lhu $t0, 0x2a($a0)
  /* 04C0B4 800D06D4 250DFFFF */     addiu $t5, $t0, -1
  /* 04C0B8 800D06D8 A48D002A */        sh $t5, 0x2a($a0)
  /* 04C0BC 800D06DC 8E44005C */        lw $a0, 0x5c($s2)
  /* 04C0C0 800D06E0 948E002A */       lhu $t6, 0x2a($a0)
  /* 04C0C4 800D06E4 15C0000D */      bnez $t6, .L800D071C
  /* 04C0C8 800D06E8 00000000 */       nop 
  /* 04C0CC 800D06EC 0C033862 */       jal func_ovl0_800CE188
  /* 04C0D0 800D06F0 00000000 */       nop 
  /* 04C0D4 800D06F4 8FAF00AC */        lw $t7, 0xac($sp)
  /* 04C0D8 800D06F8 8FAB00B0 */        lw $t3, 0xb0($sp)
  /* 04C0DC 800D06FC 3C02800D */       lui $v0, %hi(D_ovl0_800D6358)
  /* 04C0E0 800D0700 15E00006 */      bnez $t7, .L800D071C
  /* 04C0E4 800D0704 000B6080 */       sll $t4, $t3, 2
  /* 04C0E8 800D0708 004C1021 */      addu $v0, $v0, $t4
  /* 04C0EC 800D070C 8C426358 */        lw $v0, %lo(D_ovl0_800D6358)($v0)
  /* 04C0F0 800D0710 12020002 */       beq $s0, $v0, .L800D071C
  /* 04C0F4 800D0714 00000000 */       nop 
  /* 04C0F8 800D0718 00408025 */        or $s0, $v0, $zero
  .L800D071C:
  /* 04C0FC 800D071C 3C03800D */       lui $v1, %hi(D_ovl0_800D6350)
  /* 04C100 800D0720 24636350 */     addiu $v1, $v1, %lo(D_ovl0_800D6350)
  /* 04C104 800D0724 8C790000 */        lw $t9, ($v1) # D_ovl0_800D6350 + 0
  /* 04C108 800D0728 3C04800D */       lui $a0, %hi(D_ovl0_800D6448)
  /* 04C10C 800D072C 24846448 */     addiu $a0, $a0, %lo(D_ovl0_800D6448)
  /* 04C110 800D0730 AE590000 */        sw $t9, ($s2)
  /* 04C114 800D0734 94890000 */       lhu $t1, ($a0) # D_ovl0_800D6448 + 0
  /* 04C118 800D0738 AC720000 */        sw $s2, ($v1) # D_ovl0_800D6350 + 0
  /* 04C11C 800D073C 02001025 */        or $v0, $s0, $zero
  /* 04C120 800D0740 2538FFFF */     addiu $t8, $t1, -1
  /* 04C124 800D0744 10000144 */         b .L800D0C58
  /* 04C128 800D0748 A4980000 */        sh $t8, ($a0) # D_ovl0_800D6448 + 0
  .L800D074C:
  /* 04C12C 800D074C 96420006 */       lhu $v0, 6($s2)
  /* 04C130 800D0750 304A0004 */      andi $t2, $v0, 4
  /* 04C134 800D0754 1140010A */      beqz $t2, .L800D0B80
  /* 04C138 800D0758 3C01800D */       lui $at, %hi(D_ovl0_800D6120)
  /* 04C13C 800D075C C42A6120 */      lwc1 $f10, %lo(D_ovl0_800D6120)($at)
  /* 04C140 800D0760 C6480038 */      lwc1 $f8, 0x38($s2)
  /* 04C144 800D0764 3C058004 */       lui $a1, %hi(gSinTable)
  /* 04C148 800D0768 24A5B950 */     addiu $a1, $a1, %lo(gSinTable)
  /* 04C14C 800D076C 460A4182 */     mul.s $f6, $f8, $f10
  /* 04C150 800D0770 8E460058 */        lw $a2, 0x58($s2)
  /* 04C154 800D0774 4600310D */ trunc.w.s $f4, $f6
  /* 04C158 800D0778 44032000 */      mfc1 $v1, $f4
  /* 04C15C 800D077C 00000000 */       nop 
  /* 04C160 800D0780 30630FFF */      andi $v1, $v1, 0xfff
  /* 04C164 800D0784 3062FFFF */      andi $v0, $v1, 0xffff
  /* 04C168 800D0788 304D07FF */      andi $t5, $v0, 0x7ff
  /* 04C16C 800D078C 000D7040 */       sll $t6, $t5, 1
  /* 04C170 800D0790 00AE7821 */      addu $t7, $a1, $t6
  /* 04C174 800D0794 95EB0000 */       lhu $t3, ($t7)
  /* 04C178 800D0798 304C0800 */      andi $t4, $v0, 0x800
  /* 04C17C 800D079C 24430400 */     addiu $v1, $v0, 0x400
  /* 04C180 800D07A0 448B4000 */      mtc1 $t3, $f8
  /* 04C184 800D07A4 3062FFFF */      andi $v0, $v1, 0xffff
  /* 04C188 800D07A8 05610005 */      bgez $t3, .L800D07C0
  /* 04C18C 800D07AC 468042A0 */   cvt.s.w $f10, $f8
  /* 04C190 800D07B0 3C014F80 */       lui $at, (0x4F800000 >> 16) # 4294967300.0
  /* 04C194 800D07B4 44813000 */      mtc1 $at, $f6 # 4294967300.0 to cop1
  /* 04C198 800D07B8 00000000 */       nop 
  /* 04C19C 800D07BC 46065280 */     add.s $f10, $f10, $f6
  .L800D07C0:
  /* 04C1A0 800D07C0 11800004 */      beqz $t4, .L800D07D4
  /* 04C1A4 800D07C4 E7AA005C */      swc1 $f10, 0x5c($sp)
  /* 04C1A8 800D07C8 C7A4005C */      lwc1 $f4, 0x5c($sp)
  /* 04C1AC 800D07CC 46002207 */     neg.s $f8, $f4
  /* 04C1B0 800D07D0 E7A8005C */      swc1 $f8, 0x5c($sp)
  .L800D07D4:
  /* 04C1B4 800D07D4 305907FF */      andi $t9, $v0, 0x7ff
  /* 04C1B8 800D07D8 00194840 */       sll $t1, $t9, 1
  /* 04C1BC 800D07DC 00A9C021 */      addu $t8, $a1, $t1
  /* 04C1C0 800D07E0 970A0000 */       lhu $t2, ($t8)
  /* 04C1C4 800D07E4 30480800 */      andi $t0, $v0, 0x800
  /* 04C1C8 800D07E8 448A3000 */      mtc1 $t2, $f6
  /* 04C1CC 800D07EC 05410005 */      bgez $t2, .L800D0804
  /* 04C1D0 800D07F0 46803420 */   cvt.s.w $f16, $f6
  /* 04C1D4 800D07F4 3C014F80 */       lui $at, (0x4F800000 >> 16) # 4294967300.0
  /* 04C1D8 800D07F8 44815000 */      mtc1 $at, $f10 # 4294967300.0 to cop1
  /* 04C1DC 800D07FC 00000000 */       nop 
  /* 04C1E0 800D0800 460A8400 */     add.s $f16, $f16, $f10
  .L800D0804:
  /* 04C1E4 800D0804 11000002 */      beqz $t0, .L800D0810
  /* 04C1E8 800D0808 3C01800D */       lui $at, %hi(D_ovl0_800D6124)
  /* 04C1EC 800D080C 46008407 */     neg.s $f16, $f16
  .L800D0810:
  /* 04C1F0 800D0810 C644003C */      lwc1 $f4, 0x3c($s2)
  /* 04C1F4 800D0814 C4286124 */      lwc1 $f8, %lo(D_ovl0_800D6124)($at)
  /* 04C1F8 800D0818 46082182 */     mul.s $f6, $f4, $f8
  /* 04C1FC 800D081C 4600328D */ trunc.w.s $f10, $f6
  /* 04C200 800D0820 44035000 */      mfc1 $v1, $f10
  /* 04C204 800D0824 00000000 */       nop 
  /* 04C208 800D0828 30630FFF */      andi $v1, $v1, 0xfff
  /* 04C20C 800D082C 3062FFFF */      andi $v0, $v1, 0xffff
  /* 04C210 800D0830 304E07FF */      andi $t6, $v0, 0x7ff
  /* 04C214 800D0834 000E7840 */       sll $t7, $t6, 1
  /* 04C218 800D0838 00AF5821 */      addu $t3, $a1, $t7
  /* 04C21C 800D083C 956C0000 */       lhu $t4, ($t3)
  /* 04C220 800D0840 30590800 */      andi $t9, $v0, 0x800
  /* 04C224 800D0844 24430400 */     addiu $v1, $v0, 0x400
  /* 04C228 800D0848 448C2000 */      mtc1 $t4, $f4
  /* 04C22C 800D084C 3062FFFF */      andi $v0, $v1, 0xffff
  /* 04C230 800D0850 05810005 */      bgez $t4, .L800D0868
  /* 04C234 800D0854 46802220 */   cvt.s.w $f8, $f4
  /* 04C238 800D0858 3C014F80 */       lui $at, (0x4F800000 >> 16) # 4294967300.0
  /* 04C23C 800D085C 44813000 */      mtc1 $at, $f6 # 4294967300.0 to cop1
  /* 04C240 800D0860 00000000 */       nop 
  /* 04C244 800D0864 46064200 */     add.s $f8, $f8, $f6
  .L800D0868:
  /* 04C248 800D0868 13200004 */      beqz $t9, .L800D087C
  /* 04C24C 800D086C E7A80058 */      swc1 $f8, 0x58($sp)
  /* 04C250 800D0870 C7AA0058 */      lwc1 $f10, 0x58($sp)
  /* 04C254 800D0874 46005107 */     neg.s $f4, $f10
  /* 04C258 800D0878 E7A40058 */      swc1 $f4, 0x58($sp)
  .L800D087C:
  /* 04C25C 800D087C 304907FF */      andi $t1, $v0, 0x7ff
  /* 04C260 800D0880 0009C040 */       sll $t8, $t1, 1
  /* 04C264 800D0884 00B85021 */      addu $t2, $a1, $t8
  /* 04C268 800D0888 95480000 */       lhu $t0, ($t2)
  /* 04C26C 800D088C 304D0800 */      andi $t5, $v0, 0x800
  /* 04C270 800D0890 C7AA005C */      lwc1 $f10, 0x5c($sp)
  /* 04C274 800D0894 44883000 */      mtc1 $t0, $f6
  /* 04C278 800D0898 05010005 */      bgez $t0, .L800D08B0
  /* 04C27C 800D089C 46803320 */   cvt.s.w $f12, $f6
  /* 04C280 800D08A0 3C014F80 */       lui $at, (0x4F800000 >> 16) # 4294967300.0
  /* 04C284 800D08A4 44814000 */      mtc1 $at, $f8 # 4294967300.0 to cop1
  /* 04C288 800D08A8 00000000 */       nop 
  /* 04C28C 800D08AC 46086300 */     add.s $f12, $f12, $f8
  .L800D08B0:
  /* 04C290 800D08B0 11A00002 */      beqz $t5, .L800D08BC
  /* 04C294 800D08B4 3C013800 */       lui $at, (0x38000000 >> 16) # 0.000030517578
  /* 04C298 800D08B8 46006307 */     neg.s $f12, $f12
  .L800D08BC:
  /* 04C29C 800D08BC 44817000 */      mtc1 $at, $f14 # 0.000030517578 to cop1
  /* 04C2A0 800D08C0 C7A60058 */      lwc1 $f6, 0x58($sp)
  /* 04C2A4 800D08C4 44801000 */      mtc1 $zero, $f2
  /* 04C2A8 800D08C8 460E5102 */     mul.s $f4, $f10, $f14
  /* 04C2AC 800D08CC 3C01800D */       lui $at, %hi(D_ovl0_800D6128)
  /* 04C2B0 800D08D0 460E8402 */     mul.s $f16, $f16, $f14
  /* 04C2B4 800D08D4 00000000 */       nop 
  /* 04C2B8 800D08D8 460E3202 */     mul.s $f8, $f6, $f14
  /* 04C2BC 800D08DC E7A4005C */      swc1 $f4, 0x5c($sp)
  /* 04C2C0 800D08E0 460E6302 */     mul.s $f12, $f12, $f14
  /* 04C2C4 800D08E4 E7A80058 */      swc1 $f8, 0x58($sp)
  /* 04C2C8 800D08E8 C64A0034 */      lwc1 $f10, 0x34($s2)
  /* 04C2CC 800D08EC C4C40050 */      lwc1 $f4, 0x50($a2)
  /* 04C2D0 800D08F0 46045180 */     add.s $f6, $f10, $f4
  /* 04C2D4 800D08F4 E6460034 */      swc1 $f6, 0x34($s2)
  /* 04C2D8 800D08F8 C4C00038 */      lwc1 $f0, 0x38($a2)
  /* 04C2DC 800D08FC 4602003C */    c.lt.s $f0, $f2
  /* 04C2E0 800D0900 00000000 */       nop 
  /* 04C2E4 800D0904 45000004 */      bc1f .L800D0918
  /* 04C2E8 800D0908 00000000 */       nop 
  /* 04C2EC 800D090C 46000207 */     neg.s $f8, $f0
  /* 04C2F0 800D0910 10000002 */         b .L800D091C
  /* 04C2F4 800D0914 E7A80070 */      swc1 $f8, 0x70($sp)
  .L800D0918:
  /* 04C2F8 800D0918 E7A00070 */      swc1 $f0, 0x70($sp)
  .L800D091C:
  /* 04C2FC 800D091C C4C0003C */      lwc1 $f0, 0x3c($a2)
  /* 04C300 800D0920 4602003C */    c.lt.s $f0, $f2
  /* 04C304 800D0924 00000000 */       nop 
  /* 04C308 800D0928 45020004 */     bc1fl .L800D093C
  /* 04C30C 800D092C 46000086 */     mov.s $f2, $f0
  /* 04C310 800D0930 10000002 */         b .L800D093C
  /* 04C314 800D0934 46000087 */     neg.s $f2, $f0
  /* 04C318 800D0938 46000086 */     mov.s $f2, $f0
  .L800D093C:
  /* 04C31C 800D093C C42A6128 */      lwc1 $f10, %lo(D_ovl0_800D6128)($at)
  /* 04C320 800D0940 3C014F80 */       lui $at, (0x4F800000 >> 16) # 4294967300.0
  /* 04C324 800D0944 460A1102 */     mul.s $f4, $f2, $f10
  /* 04C328 800D0948 4600218D */ trunc.w.s $f6, $f4
  /* 04C32C 800D094C 44023000 */      mfc1 $v0, $f6
  /* 04C330 800D0950 00000000 */       nop 
  /* 04C334 800D0954 30420FFF */      andi $v0, $v0, 0xfff
  /* 04C338 800D0958 3043FFFF */      andi $v1, $v0, 0xffff
  /* 04C33C 800D095C 306F07FF */      andi $t7, $v1, 0x7ff
  /* 04C340 800D0960 000F5840 */       sll $t3, $t7, 1
  /* 04C344 800D0964 00AB6021 */      addu $t4, $a1, $t3
  /* 04C348 800D0968 95990000 */       lhu $t9, ($t4)
  /* 04C34C 800D096C 24640400 */     addiu $a0, $v1, 0x400
  /* 04C350 800D0970 3082FFFF */      andi $v0, $a0, 0xffff
  /* 04C354 800D0974 44994000 */      mtc1 $t9, $f8
  /* 04C358 800D0978 30690800 */      andi $t1, $v1, 0x800
  /* 04C35C 800D097C 07210004 */      bgez $t9, .L800D0990
  /* 04C360 800D0980 468044A0 */   cvt.s.w $f18, $f8
  /* 04C364 800D0984 44815000 */      mtc1 $at, $f10 # 4294967300.0 to cop1
  /* 04C368 800D0988 00000000 */       nop 
  /* 04C36C 800D098C 460A9480 */     add.s $f18, $f18, $f10
  .L800D0990:
  /* 04C370 800D0990 11200002 */      beqz $t1, .L800D099C
  /* 04C374 800D0994 305807FF */      andi $t8, $v0, 0x7ff
  /* 04C378 800D0998 46009487 */     neg.s $f18, $f18
  .L800D099C:
  /* 04C37C 800D099C 00185040 */       sll $t2, $t8, 1
  /* 04C380 800D09A0 00AA4021 */      addu $t0, $a1, $t2
  /* 04C384 800D09A4 950D0000 */       lhu $t5, ($t0)
  /* 04C388 800D09A8 304E0800 */      andi $t6, $v0, 0x800
  /* 04C38C 800D09AC 3C014F80 */       lui $at, (0x4F800000 >> 16) # 4294967300.0
  /* 04C390 800D09B0 448D2000 */      mtc1 $t5, $f4
  /* 04C394 800D09B4 05A10004 */      bgez $t5, .L800D09C8
  /* 04C398 800D09B8 46802020 */   cvt.s.w $f0, $f4
  /* 04C39C 800D09BC 44813000 */      mtc1 $at, $f6 # 4294967300.0 to cop1
  /* 04C3A0 800D09C0 00000000 */       nop 
  /* 04C3A4 800D09C4 46060000 */     add.s $f0, $f0, $f6
  .L800D09C8:
  /* 04C3A8 800D09C8 11C00003 */      beqz $t6, .L800D09D8
  /* 04C3AC 800D09CC E7B00054 */      swc1 $f16, 0x54($sp)
  /* 04C3B0 800D09D0 46000007 */     neg.s $f0, $f0
  /* 04C3B4 800D09D4 E7B00054 */      swc1 $f16, 0x54($sp)
  .L800D09D8:
  /* 04C3B8 800D09D8 46009283 */     div.s $f10, $f18, $f0
  /* 04C3BC 800D09DC C6500034 */      lwc1 $f16, 0x34($s2)
  /* 04C3C0 800D09E0 C7A80070 */      lwc1 $f8, 0x70($sp)
  /* 04C3C4 800D09E4 3C01800D */       lui $at, %hi(D_ovl0_800D612C)
  /* 04C3C8 800D09E8 460A8102 */     mul.s $f4, $f16, $f10
  /* 04C3CC 800D09EC 46044180 */     add.s $f6, $f8, $f4
  /* 04C3D0 800D09F0 E7A60070 */      swc1 $f6, 0x70($sp)
  /* 04C3D4 800D09F4 C64A0030 */      lwc1 $f10, 0x30($s2)
  /* 04C3D8 800D09F8 460A3202 */     mul.s $f8, $f6, $f10
  /* 04C3DC 800D09FC E7A80070 */      swc1 $f8, 0x70($sp)
  /* 04C3E0 800D0A00 C644002C */      lwc1 $f4, 0x2c($s2)
  /* 04C3E4 800D0A04 C4C6002C */      lwc1 $f6, 0x2c($a2)
  /* 04C3E8 800D0A08 46062280 */     add.s $f10, $f4, $f6
  /* 04C3EC 800D0A0C E64A002C */      swc1 $f10, 0x2c($s2)
  /* 04C3F0 800D0A10 C424612C */      lwc1 $f4, %lo(D_ovl0_800D612C)($at)
  /* 04C3F4 800D0A14 C648002C */      lwc1 $f8, 0x2c($s2)
  /* 04C3F8 800D0A18 3C014F80 */       lui $at, (0x4F800000 >> 16) # 4294967300.0
  /* 04C3FC 800D0A1C 46044182 */     mul.s $f6, $f8, $f4
  /* 04C400 800D0A20 4600328D */ trunc.w.s $f10, $f6
  /* 04C404 800D0A24 44035000 */      mfc1 $v1, $f10
  /* 04C408 800D0A28 00000000 */       nop 
  /* 04C40C 800D0A2C 30630FFF */      andi $v1, $v1, 0xfff
  /* 04C410 800D0A30 3062FFFF */      andi $v0, $v1, 0xffff
  /* 04C414 800D0A34 304B07FF */      andi $t3, $v0, 0x7ff
  /* 04C418 800D0A38 000B6040 */       sll $t4, $t3, 1
  /* 04C41C 800D0A3C 00ACC821 */      addu $t9, $a1, $t4
  /* 04C420 800D0A40 97290000 */       lhu $t1, ($t9)
  /* 04C424 800D0A44 30580800 */      andi $t8, $v0, 0x800
  /* 04C428 800D0A48 24430400 */     addiu $v1, $v0, 0x400
  /* 04C42C 800D0A4C 44894000 */      mtc1 $t1, $f8
  /* 04C430 800D0A50 3062FFFF */      andi $v0, $v1, 0xffff
  /* 04C434 800D0A54 05210004 */      bgez $t1, .L800D0A68
  /* 04C438 800D0A58 468044A0 */   cvt.s.w $f18, $f8
  /* 04C43C 800D0A5C 44812000 */      mtc1 $at, $f4 # 4294967300.0 to cop1
  /* 04C440 800D0A60 00000000 */       nop 
  /* 04C444 800D0A64 46049480 */     add.s $f18, $f18, $f4
  .L800D0A68:
  /* 04C448 800D0A68 13000002 */      beqz $t8, .L800D0A74
  /* 04C44C 800D0A6C 304A07FF */      andi $t2, $v0, 0x7ff
  /* 04C450 800D0A70 46009487 */     neg.s $f18, $f18
  .L800D0A74:
  /* 04C454 800D0A74 000A4040 */       sll $t0, $t2, 1
  /* 04C458 800D0A78 00A86821 */      addu $t5, $a1, $t0
  /* 04C45C 800D0A7C 95AE0000 */       lhu $t6, ($t5)
  /* 04C460 800D0A80 304F0800 */      andi $t7, $v0, 0x800
  /* 04C464 800D0A84 3C014F80 */       lui $at, (0x4F800000 >> 16) # 4294967300.0
  /* 04C468 800D0A88 448E3000 */      mtc1 $t6, $f6
  /* 04C46C 800D0A8C 05C10004 */      bgez $t6, .L800D0AA0
  /* 04C470 800D0A90 46803020 */   cvt.s.w $f0, $f6
  /* 04C474 800D0A94 44815000 */      mtc1 $at, $f10 # 4294967300.0 to cop1
  /* 04C478 800D0A98 00000000 */       nop 
  /* 04C47C 800D0A9C 460A0000 */     add.s $f0, $f0, $f10
  .L800D0AA0:
  /* 04C480 800D0AA0 E7A00044 */      swc1 $f0, 0x44($sp)
  /* 04C484 800D0AA4 11E00004 */      beqz $t7, .L800D0AB8
  /* 04C488 800D0AA8 E7AC0050 */      swc1 $f12, 0x50($sp)
  /* 04C48C 800D0AAC 46000007 */     neg.s $f0, $f0
  /* 04C490 800D0AB0 E7AC0050 */      swc1 $f12, 0x50($sp)
  /* 04C494 800D0AB4 E7A00044 */      swc1 $f0, 0x44($sp)
  .L800D0AB8:
  /* 04C498 800D0AB8 3C013800 */       lui $at, (0x38000000 >> 16) # 0.000030517578
  /* 04C49C 800D0ABC 44812000 */      mtc1 $at, $f4 # 0.000030517578 to cop1
  /* 04C4A0 800D0AC0 C7A80070 */      lwc1 $f8, 0x70($sp)
  /* 04C4A4 800D0AC4 C7AA0044 */      lwc1 $f10, 0x44($sp)
  /* 04C4A8 800D0AC8 46044182 */     mul.s $f6, $f8, $f4
  /* 04C4AC 800D0ACC C7A80050 */      lwc1 $f8, 0x50($sp)
  /* 04C4B0 800D0AD0 460A3082 */     mul.s $f2, $f6, $f10
  /* 04C4B4 800D0AD4 E7A60070 */      swc1 $f6, 0x70($sp)
  /* 04C4B8 800D0AD8 C7A60058 */      lwc1 $f6, 0x58($sp)
  /* 04C4BC 800D0ADC 46081102 */     mul.s $f4, $f2, $f8
  /* 04C4C0 800D0AE0 46001387 */     neg.s $f14, $f2
  /* 04C4C4 800D0AE4 46068282 */     mul.s $f10, $f16, $f6
  /* 04C4C8 800D0AE8 C4C60014 */      lwc1 $f6, 0x14($a2)
  /* 04C4CC 800D0AEC 460A2200 */     add.s $f8, $f4, $f10
  /* 04C4D0 800D0AF0 46064100 */     add.s $f4, $f8, $f6
  /* 04C4D4 800D0AF4 E6440020 */      swc1 $f4, 0x20($s2)
  /* 04C4D8 800D0AF8 C7AA0070 */      lwc1 $f10, 0x70($sp)
  /* 04C4DC 800D0AFC C7A8005C */      lwc1 $f8, 0x5c($sp)
  /* 04C4E0 800D0B00 C7A40058 */      lwc1 $f4, 0x58($sp)
  /* 04C4E4 800D0B04 46125302 */     mul.s $f12, $f10, $f18
  /* 04C4E8 800D0B08 00000000 */       nop 
  /* 04C4EC 800D0B0C 46087182 */     mul.s $f6, $f14, $f8
  /* 04C4F0 800D0B10 00000000 */       nop 
  /* 04C4F4 800D0B14 46043282 */     mul.s $f10, $f6, $f4
  /* 04C4F8 800D0B18 C7A60054 */      lwc1 $f6, 0x54($sp)
  /* 04C4FC 800D0B1C 46066102 */     mul.s $f4, $f12, $f6
  /* 04C500 800D0B20 46045180 */     add.s $f6, $f10, $f4
  /* 04C504 800D0B24 46088282 */     mul.s $f10, $f16, $f8
  /* 04C508 800D0B28 C7A40050 */      lwc1 $f4, 0x50($sp)
  /* 04C50C 800D0B2C 46045202 */     mul.s $f8, $f10, $f4
  /* 04C510 800D0B30 C4C40018 */      lwc1 $f4, 0x18($a2)
  /* 04C514 800D0B34 46083280 */     add.s $f10, $f6, $f8
  /* 04C518 800D0B38 46045180 */     add.s $f6, $f10, $f4
  /* 04C51C 800D0B3C E6460024 */      swc1 $f6, 0x24($s2)
  /* 04C520 800D0B40 C7A80054 */      lwc1 $f8, 0x54($sp)
  /* 04C524 800D0B44 C7A40058 */      lwc1 $f4, 0x58($sp)
  /* 04C528 800D0B48 46087282 */     mul.s $f10, $f14, $f8
  /* 04C52C 800D0B4C 00000000 */       nop 
  /* 04C530 800D0B50 46045182 */     mul.s $f6, $f10, $f4
  /* 04C534 800D0B54 C7AA005C */      lwc1 $f10, 0x5c($sp)
  /* 04C538 800D0B58 460A6102 */     mul.s $f4, $f12, $f10
  /* 04C53C 800D0B5C 46043281 */     sub.s $f10, $f6, $f4
  /* 04C540 800D0B60 46088182 */     mul.s $f6, $f16, $f8
  /* 04C544 800D0B64 C7A40050 */      lwc1 $f4, 0x50($sp)
  /* 04C548 800D0B68 46043202 */     mul.s $f8, $f6, $f4
  /* 04C54C 800D0B6C C4C4001C */      lwc1 $f4, 0x1c($a2)
  /* 04C550 800D0B70 46085180 */     add.s $f6, $f10, $f8
  /* 04C554 800D0B74 46043280 */     add.s $f10, $f6, $f4
  /* 04C558 800D0B78 10000022 */         b .L800D0C04
  /* 04C55C 800D0B7C E64A0028 */      swc1 $f10, 0x28($s2)
  .L800D0B80:
  /* 04C560 800D0B80 304B0001 */      andi $t3, $v0, 1
  /* 04C564 800D0B84 51600007 */      beql $t3, $zero, .L800D0BA4
  /* 04C568 800D0B88 304C0002 */      andi $t4, $v0, 2
  /* 04C56C 800D0B8C C6480030 */      lwc1 $f8, 0x30($s2)
  /* 04C570 800D0B90 C6460038 */      lwc1 $f6, 0x38($s2)
  /* 04C574 800D0B94 96420006 */       lhu $v0, 6($s2)
  /* 04C578 800D0B98 46064101 */     sub.s $f4, $f8, $f6
  /* 04C57C 800D0B9C E6440030 */      swc1 $f4, 0x30($s2)
  /* 04C580 800D0BA0 304C0002 */      andi $t4, $v0, 2
  .L800D0BA4:
  /* 04C584 800D0BA4 5180000C */      beql $t4, $zero, .L800D0BD8
  /* 04C588 800D0BA8 C6460020 */      lwc1 $f6, 0x20($s2)
  /* 04C58C 800D0BAC C640003C */      lwc1 $f0, 0x3c($s2)
  /* 04C590 800D0BB0 C64A002C */      lwc1 $f10, 0x2c($s2)
  /* 04C594 800D0BB4 C6460030 */      lwc1 $f6, 0x30($s2)
  /* 04C598 800D0BB8 46005202 */     mul.s $f8, $f10, $f0
  /* 04C59C 800D0BBC C64A0034 */      lwc1 $f10, 0x34($s2)
  /* 04C5A0 800D0BC0 46003102 */     mul.s $f4, $f6, $f0
  /* 04C5A4 800D0BC4 E648002C */      swc1 $f8, 0x2c($s2)
  /* 04C5A8 800D0BC8 46005202 */     mul.s $f8, $f10, $f0
  /* 04C5AC 800D0BCC E6440030 */      swc1 $f4, 0x30($s2)
  /* 04C5B0 800D0BD0 E6480034 */      swc1 $f8, 0x34($s2)
  /* 04C5B4 800D0BD4 C6460020 */      lwc1 $f6, 0x20($s2)
  .L800D0BD8:
  /* 04C5B8 800D0BD8 C644002C */      lwc1 $f4, 0x2c($s2)
  /* 04C5BC 800D0BDC C6480024 */      lwc1 $f8, 0x24($s2)
  /* 04C5C0 800D0BE0 46043280 */     add.s $f10, $f6, $f4
  /* 04C5C4 800D0BE4 C6460030 */      lwc1 $f6, 0x30($s2)
  /* 04C5C8 800D0BE8 46064100 */     add.s $f4, $f8, $f6
  /* 04C5CC 800D0BEC E64A0020 */      swc1 $f10, 0x20($s2)
  /* 04C5D0 800D0BF0 C64A0028 */      lwc1 $f10, 0x28($s2)
  /* 04C5D4 800D0BF4 C6480034 */      lwc1 $f8, 0x34($s2)
  /* 04C5D8 800D0BF8 E6440024 */      swc1 $f4, 0x24($s2)
  /* 04C5DC 800D0BFC 46085180 */     add.s $f6, $f10, $f8
  /* 04C5E0 800D0C00 E6460028 */      swc1 $f6, 0x28($s2)
  .L800D0C04:
  /* 04C5E4 800D0C04 96420006 */       lhu $v0, 6($s2)
  /* 04C5E8 800D0C08 30598000 */      andi $t9, $v0, 0x8000
  /* 04C5EC 800D0C0C 13200011 */      beqz $t9, .L800D0C54
  /* 04C5F0 800D0C10 30507000 */      andi $s0, $v0, 0x7000
  /* 04C5F4 800D0C14 00108303 */       sra $s0, $s0, 0xc
  /* 04C5F8 800D0C18 3C18800D */       lui $t8, %hi(D_ovl0_800D63A0)
  /* 04C5FC 800D0C1C 271863A0 */     addiu $t8, $t8, %lo(D_ovl0_800D63A0)
  /* 04C600 800D0C20 00104880 */       sll $t1, $s0, 2
  /* 04C604 800D0C24 01381821 */      addu $v1, $t1, $t8
  /* 04C608 800D0C28 8C640000 */        lw $a0, ($v1) # D_ovl0_800D6350 + 0
  /* 04C60C 800D0C2C 5080000A */      beql $a0, $zero, .L800D0C58
  /* 04C610 800D0C30 8E420000 */        lw $v0, ($s2)
  /* 04C614 800D0C34 C6440020 */      lwc1 $f4, 0x20($s2)
  /* 04C618 800D0C38 E484001C */      swc1 $f4, 0x1c($a0)
  /* 04C61C 800D0C3C 8C6A0000 */        lw $t2, ($v1) # D_ovl0_800D6350 + 0
  /* 04C620 800D0C40 C64A0024 */      lwc1 $f10, 0x24($s2)
  /* 04C624 800D0C44 E54A0020 */      swc1 $f10, 0x20($t2)
  /* 04C628 800D0C48 8C680000 */        lw $t0, ($v1) # D_ovl0_800D6350 + 0
  /* 04C62C 800D0C4C C6480028 */      lwc1 $f8, 0x28($s2)
  /* 04C630 800D0C50 E5080024 */      swc1 $f8, 0x24($t0)
  .L800D0C54:
  /* 04C634 800D0C54 8E420000 */        lw $v0, ($s2)
  .L800D0C58:
  /* 04C638 800D0C58 8FBF0024 */        lw $ra, 0x24($sp)
  /* 04C63C 800D0C5C 8FB00014 */        lw $s0, 0x14($sp)
  /* 04C640 800D0C60 8FB10018 */        lw $s1, 0x18($sp)
  /* 04C644 800D0C64 8FB2001C */        lw $s2, 0x1c($sp)
  /* 04C648 800D0C68 8FB30020 */        lw $s3, 0x20($sp)
  /* 04C64C 800D0C6C 03E00008 */        jr $ra
  /* 04C650 800D0C70 27BD00A8 */     addiu $sp, $sp, 0xa8

glabel func_ovl0_800D0C74
  /* 04C654 800D0C74 27BDFFC8 */     addiu $sp, $sp, -0x38
  /* 04C658 800D0C78 AFB60030 */        sw $s6, 0x30($sp)
  /* 04C65C 800D0C7C AFB5002C */        sw $s5, 0x2c($sp)
  /* 04C660 800D0C80 AFB40028 */        sw $s4, 0x28($sp)
  /* 04C664 800D0C84 AFB20020 */        sw $s2, 0x20($sp)
  /* 04C668 800D0C88 AFBF0034 */        sw $ra, 0x34($sp)
  /* 04C66C 800D0C8C AFB30024 */        sw $s3, 0x24($sp)
  /* 04C670 800D0C90 AFB1001C */        sw $s1, 0x1c($sp)
  /* 04C674 800D0C94 AFB00018 */        sw $s0, 0x18($sp)
  /* 04C678 800D0C98 3C16800D */       lui $s6, %hi(D_ovl0_800D6358)
  /* 04C67C 800D0C9C 8C93007C */        lw $s3, 0x7c($a0)
  /* 04C680 800D0CA0 26D66358 */     addiu $s6, $s6, %lo(D_ovl0_800D6358)
  /* 04C684 800D0CA4 00009025 */        or $s2, $zero, $zero
  /* 04C688 800D0CA8 3C140001 */       lui $s4, 1
  /* 04C68C 800D0CAC 24150010 */     addiu $s5, $zero, 0x10
  .L800D0CB0:
  /* 04C690 800D0CB0 02747024 */       and $t6, $s3, $s4
  /* 04C694 800D0CB4 15C00012 */      bnez $t6, .L800D0D00
  /* 04C698 800D0CB8 00127880 */       sll $t7, $s2, 2
  /* 04C69C 800D0CBC 02CFC021 */      addu $t8, $s6, $t7
  /* 04C6A0 800D0CC0 8F100000 */        lw $s0, ($t8)
  /* 04C6A4 800D0CC4 00008825 */        or $s1, $zero, $zero
  /* 04C6A8 800D0CC8 1200000D */      beqz $s0, .L800D0D00
  /* 04C6AC 800D0CCC 02002025 */        or $a0, $s0, $zero
  .L800D0CD0:
  /* 04C6B0 800D0CD0 02202825 */        or $a1, $s1, $zero
  /* 04C6B4 800D0CD4 0C033BD3 */       jal func_ovl0_800CEF4C
  /* 04C6B8 800D0CD8 02403025 */        or $a2, $s2, $zero
  /* 04C6BC 800D0CDC 8E190000 */        lw $t9, ($s0)
  /* 04C6C0 800D0CE0 54590005 */      bnel $v0, $t9, .L800D0CF8
  /* 04C6C4 800D0CE4 00408025 */        or $s0, $v0, $zero
  /* 04C6C8 800D0CE8 02008825 */        or $s1, $s0, $zero
  /* 04C6CC 800D0CEC 10000002 */         b .L800D0CF8
  /* 04C6D0 800D0CF0 00408025 */        or $s0, $v0, $zero
  /* 04C6D4 800D0CF4 00408025 */        or $s0, $v0, $zero
  .L800D0CF8:
  /* 04C6D8 800D0CF8 5600FFF5 */      bnel $s0, $zero, .L800D0CD0
  /* 04C6DC 800D0CFC 02002025 */        or $a0, $s0, $zero
  .L800D0D00:
  /* 04C6E0 800D0D00 26520001 */     addiu $s2, $s2, 1
  /* 04C6E4 800D0D04 1655FFEA */       bne $s2, $s5, .L800D0CB0
  /* 04C6E8 800D0D08 00139842 */       srl $s3, $s3, 1
  /* 04C6EC 800D0D0C 8FBF0034 */        lw $ra, 0x34($sp)
  /* 04C6F0 800D0D10 8FB00018 */        lw $s0, 0x18($sp)
  /* 04C6F4 800D0D14 8FB1001C */        lw $s1, 0x1c($sp)
  /* 04C6F8 800D0D18 8FB20020 */        lw $s2, 0x20($sp)
  /* 04C6FC 800D0D1C 8FB30024 */        lw $s3, 0x24($sp)
  /* 04C700 800D0D20 8FB40028 */        lw $s4, 0x28($sp)
  /* 04C704 800D0D24 8FB5002C */        lw $s5, 0x2c($sp)
  /* 04C708 800D0D28 8FB60030 */        lw $s6, 0x30($sp)
  /* 04C70C 800D0D2C 03E00008 */        jr $ra
  /* 04C710 800D0D30 27BD0038 */     addiu $sp, $sp, 0x38

glabel func_ovl0_800D0D34
  /* 04C714 800D0D34 27BDFD20 */     addiu $sp, $sp, -0x2e0
  /* 04C718 800D0D38 3C0E8004 */       lui $t6, %hi(D_80046A58)
  /* 04C71C 800D0D3C 8DCE6A58 */        lw $t6, %lo(D_80046A58)($t6)
  /* 04C720 800D0D40 AFBF008C */        sw $ra, 0x8c($sp)
  /* 04C724 800D0D44 AFBE0088 */        sw $fp, 0x88($sp)
  /* 04C728 800D0D48 AFB70084 */        sw $s7, 0x84($sp)
  /* 04C72C 800D0D4C AFB60080 */        sw $s6, 0x80($sp)
  /* 04C730 800D0D50 AFB5007C */        sw $s5, 0x7c($sp)
  /* 04C734 800D0D54 AFB40078 */        sw $s4, 0x78($sp)
  /* 04C738 800D0D58 AFB30074 */        sw $s3, 0x74($sp)
  /* 04C73C 800D0D5C AFB20070 */        sw $s2, 0x70($sp)
  /* 04C740 800D0D60 AFB1006C */        sw $s1, 0x6c($sp)
  /* 04C744 800D0D64 AFB00068 */        sw $s0, 0x68($sp)
  /* 04C748 800D0D68 F7BE0060 */      sdc1 $f30, 0x60($sp)
  /* 04C74C 800D0D6C F7BC0058 */      sdc1 $f28, 0x58($sp)
  /* 04C750 800D0D70 F7BA0050 */      sdc1 $f26, 0x50($sp)
  /* 04C754 800D0D74 F7B80048 */      sdc1 $f24, 0x48($sp)
  /* 04C758 800D0D78 F7B60040 */      sdc1 $f22, 0x40($sp)
  /* 04C75C 800D0D7C F7B40038 */      sdc1 $f20, 0x38($sp)
  /* 04C760 800D0D80 AFA402E0 */        sw $a0, 0x2e0($sp)
  /* 04C764 800D0D84 8DD00074 */        lw $s0, 0x74($t6)
  /* 04C768 800D0D88 00009025 */        or $s2, $zero, $zero
  /* 04C76C 800D0D8C 27B50248 */     addiu $s5, $sp, 0x248
  /* 04C770 800D0D90 8E020060 */        lw $v0, 0x60($s0)
  /* 04C774 800D0D94 3C013F80 */       lui $at, 0x3f80
  /* 04C778 800D0D98 02009825 */        or $s3, $s0, $zero
  /* 04C77C 800D0D9C 58400092 */     blezl $v0, .L800D0FE8
  /* 04C780 800D0DA0 3C013F80 */       lui $at, (0x3F800000 >> 16) # 1.0
  /* 04C784 800D0DA4 4481F000 */      mtc1 $at, $f30 # 1.0 to cop1
  /* 04C788 800D0DA8 4480E000 */      mtc1 $zero, $f28
  /* 04C78C 800D0DAC 27B10288 */     addiu $s1, $sp, 0x288
  /* 04C790 800D0DB0 8E6F0064 */        lw $t7, 0x64($s3)
  .L800D0DB4:
  /* 04C794 800D0DB4 91F80004 */       lbu $t8, 4($t7)
  /* 04C798 800D0DB8 2719FFFD */     addiu $t9, $t8, -3
  /* 04C79C 800D0DBC 2F21000F */     sltiu $at, $t9, 0xf
  /* 04C7A0 800D0DC0 10200066 */      beqz $at, .L800D0F5C
  /* 04C7A4 800D0DC4 0019C880 */       sll $t9, $t9, 2
  /* 04C7A8 800D0DC8 3C01800D */       lui $at, %hi(jtbl_ovl0_800D6130)
  /* 04C7AC 800D0DCC 00390821 */      addu $at, $at, $t9
  /* 04C7B0 800D0DD0 8C396130 */        lw $t9, %lo(jtbl_ovl0_800D6130)($at)
  /* 04C7B4 800D0DD4 03200008 */        jr $t9
  /* 04C7B8 800D0DD8 00000000 */       nop 
  glabel jtgt_ovl0_800D0DDC
  /* 04C7BC 800D0DDC C6040028 */      lwc1 $f4, 0x28($s0)
  /* 04C7C0 800D0DE0 8E060020 */        lw $a2, 0x20($s0)
  /* 04C7C4 800D0DE4 8E070024 */        lw $a3, 0x24($s0)
  /* 04C7C8 800D0DE8 E7A40010 */      swc1 $f4, 0x10($sp)
  /* 04C7CC 800D0DEC C606002C */      lwc1 $f6, 0x2c($s0)
  /* 04C7D0 800D0DF0 02A02025 */        or $a0, $s5, $zero
  /* 04C7D4 800D0DF4 00002825 */        or $a1, $zero, $zero
  /* 04C7D8 800D0DF8 E7A60014 */      swc1 $f6, 0x14($sp)
  /* 04C7DC 800D0DFC C6080030 */      lwc1 $f8, 0x30($s0)
  /* 04C7E0 800D0E00 0C006C92 */       jal func_8001B248
  /* 04C7E4 800D0E04 E7A80018 */      swc1 $f8, 0x18($sp)
  /* 04C7E8 800D0E08 10000071 */         b .L800D0FD0
  /* 04C7EC 800D0E0C 8E020060 */        lw $v0, 0x60($s0)
  glabel jtgt_ovl0_800D0E10
  /* 04C7F0 800D0E10 C60A0028 */      lwc1 $f10, 0x28($s0)
  /* 04C7F4 800D0E14 8E060020 */        lw $a2, 0x20($s0)
  /* 04C7F8 800D0E18 8E070024 */        lw $a3, 0x24($s0)
  /* 04C7FC 800D0E1C E7AA0010 */      swc1 $f10, 0x10($sp)
  /* 04C800 800D0E20 C604002C */      lwc1 $f4, 0x2c($s0)
  /* 04C804 800D0E24 02A02025 */        or $a0, $s5, $zero
  /* 04C808 800D0E28 00002825 */        or $a1, $zero, $zero
  /* 04C80C 800D0E2C E7A40014 */      swc1 $f4, 0x14($sp)
  /* 04C810 800D0E30 C6060030 */      lwc1 $f6, 0x30($s0)
  /* 04C814 800D0E34 0C006D33 */       jal func_8001B4CC
  /* 04C818 800D0E38 E7A60018 */      swc1 $f6, 0x18($sp)
  /* 04C81C 800D0E3C 10000064 */         b .L800D0FD0
  /* 04C820 800D0E40 8E020060 */        lw $v0, 0x60($s0)
  glabel jtgt_ovl0_800D0E44
  /* 04C824 800D0E44 C6080028 */      lwc1 $f8, 0x28($s0)
  /* 04C828 800D0E48 8E05001C */        lw $a1, 0x1c($s0)
  /* 04C82C 800D0E4C 8E060020 */        lw $a2, 0x20($s0)
  /* 04C830 800D0E50 8E070024 */        lw $a3, 0x24($s0)
  /* 04C834 800D0E54 E7A80010 */      swc1 $f8, 0x10($sp)
  /* 04C838 800D0E58 C60A002C */      lwc1 $f10, 0x2c($s0)
  /* 04C83C 800D0E5C 02A02025 */        or $a0, $s5, $zero
  /* 04C840 800D0E60 E7AA0014 */      swc1 $f10, 0x14($sp)
  /* 04C844 800D0E64 C6040030 */      lwc1 $f4, 0x30($s0)
  /* 04C848 800D0E68 E7A40018 */      swc1 $f4, 0x18($sp)
  /* 04C84C 800D0E6C C6060034 */      lwc1 $f6, 0x34($s0)
  /* 04C850 800D0E70 0C006C14 */       jal func_8001B050
  /* 04C854 800D0E74 E7A6001C */      swc1 $f6, 0x1c($sp)
  /* 04C858 800D0E78 10000055 */         b .L800D0FD0
  /* 04C85C 800D0E7C 8E020060 */        lw $v0, 0x60($s0)
  glabel jtgt_ovl0_800D0E80
  /* 04C860 800D0E80 C6080048 */      lwc1 $f8, 0x48($s0)
  /* 04C864 800D0E84 8E05003C */        lw $a1, 0x3c($s0)
  /* 04C868 800D0E88 8E060040 */        lw $a2, 0x40($s0)
  /* 04C86C 800D0E8C 8E070044 */        lw $a3, 0x44($s0)
  /* 04C870 800D0E90 E7A80010 */      swc1 $f8, 0x10($sp)
  /* 04C874 800D0E94 C60A004C */      lwc1 $f10, 0x4c($s0)
  /* 04C878 800D0E98 02202025 */        or $a0, $s1, $zero
  /* 04C87C 800D0E9C E7AA0014 */      swc1 $f10, 0x14($sp)
  /* 04C880 800D0EA0 C6040050 */      lwc1 $f4, 0x50($s0)
  /* 04C884 800D0EA4 E7A40018 */      swc1 $f4, 0x18($sp)
  /* 04C888 800D0EA8 C6060054 */      lwc1 $f6, 0x54($s0)
  /* 04C88C 800D0EAC E7A6001C */      swc1 $f6, 0x1c($sp)
  /* 04C890 800D0EB0 C6080058 */      lwc1 $f8, 0x58($s0)
  /* 04C894 800D0EB4 E7A80020 */      swc1 $f8, 0x20($sp)
  /* 04C898 800D0EB8 C60A005C */      lwc1 $f10, 0x5c($s0)
  /* 04C89C 800D0EBC 0C00683C */       jal hal_look_at_f
  /* 04C8A0 800D0EC0 E7AA0024 */      swc1 $f10, 0x24($sp)
  /* 04C8A4 800D0EC4 10000042 */         b .L800D0FD0
  /* 04C8A8 800D0EC8 8E020060 */        lw $v0, 0x60($s0)
  glabel jtgt_ovl0_800D0ECC
  /* 04C8AC 800D0ECC C6040048 */      lwc1 $f4, 0x48($s0)
  /* 04C8B0 800D0ED0 8E05003C */        lw $a1, 0x3c($s0)
  /* 04C8B4 800D0ED4 8E060040 */        lw $a2, 0x40($s0)
  /* 04C8B8 800D0ED8 8E070044 */        lw $a3, 0x44($s0)
  /* 04C8BC 800D0EDC E7A40010 */      swc1 $f4, 0x10($sp)
  /* 04C8C0 800D0EE0 C606004C */      lwc1 $f6, 0x4c($s0)
  /* 04C8C4 800D0EE4 02202025 */        or $a0, $s1, $zero
  /* 04C8C8 800D0EE8 E7A60014 */      swc1 $f6, 0x14($sp)
  /* 04C8CC 800D0EEC C6080050 */      lwc1 $f8, 0x50($s0)
  /* 04C8D0 800D0EF0 E7A80018 */      swc1 $f8, 0x18($sp)
  /* 04C8D4 800D0EF4 C60A0054 */      lwc1 $f10, 0x54($s0)
  /* 04C8D8 800D0EF8 E7BC0028 */      swc1 $f28, 0x28($sp)
  /* 04C8DC 800D0EFC E7BE0024 */      swc1 $f30, 0x24($sp)
  /* 04C8E0 800D0F00 E7BC0020 */      swc1 $f28, 0x20($sp)
  /* 04C8E4 800D0F04 0C0068FC */       jal hal_mod_look_at_f
  /* 04C8E8 800D0F08 E7AA001C */      swc1 $f10, 0x1c($sp)
  /* 04C8EC 800D0F0C 10000030 */         b .L800D0FD0
  /* 04C8F0 800D0F10 8E020060 */        lw $v0, 0x60($s0)
  glabel jtgt_ovl0_800D0F14
  /* 04C8F4 800D0F14 C6040048 */      lwc1 $f4, 0x48($s0)
  /* 04C8F8 800D0F18 8E05003C */        lw $a1, 0x3c($s0)
  /* 04C8FC 800D0F1C 8E060040 */        lw $a2, 0x40($s0)
  /* 04C900 800D0F20 8E070044 */        lw $a3, 0x44($s0)
  /* 04C904 800D0F24 E7A40010 */      swc1 $f4, 0x10($sp)
  /* 04C908 800D0F28 C606004C */      lwc1 $f6, 0x4c($s0)
  /* 04C90C 800D0F2C 02202025 */        or $a0, $s1, $zero
  /* 04C910 800D0F30 E7A60014 */      swc1 $f6, 0x14($sp)
  /* 04C914 800D0F34 C6080050 */      lwc1 $f8, 0x50($s0)
  /* 04C918 800D0F38 E7A80018 */      swc1 $f8, 0x18($sp)
  /* 04C91C 800D0F3C C60A0054 */      lwc1 $f10, 0x54($s0)
  /* 04C920 800D0F40 E7BE0028 */      swc1 $f30, 0x28($sp)
  /* 04C924 800D0F44 E7BC0024 */      swc1 $f28, 0x24($sp)
  /* 04C928 800D0F48 E7BC0020 */      swc1 $f28, 0x20($sp)
  /* 04C92C 800D0F4C 0C0068FC */       jal hal_mod_look_at_f
  /* 04C930 800D0F50 E7AA001C */      swc1 $f10, 0x1c($sp)
  /* 04C934 800D0F54 1000001E */         b .L800D0FD0
  /* 04C938 800D0F58 8E020060 */        lw $v0, 0x60($s0)
  .L800D0F5C:
  /* 04C93C 800D0F5C C6040028 */      lwc1 $f4, 0x28($s0)
  /* 04C940 800D0F60 8E060020 */        lw $a2, 0x20($s0)
  /* 04C944 800D0F64 8E070024 */        lw $a3, 0x24($s0)
  /* 04C948 800D0F68 E7A40010 */      swc1 $f4, 0x10($sp)
  /* 04C94C 800D0F6C C606002C */      lwc1 $f6, 0x2c($s0)
  /* 04C950 800D0F70 02A02025 */        or $a0, $s5, $zero
  /* 04C954 800D0F74 00002825 */        or $a1, $zero, $zero
  /* 04C958 800D0F78 E7A60014 */      swc1 $f6, 0x14($sp)
  /* 04C95C 800D0F7C C6080030 */      lwc1 $f8, 0x30($s0)
  /* 04C960 800D0F80 0C006C92 */       jal func_8001B248
  /* 04C964 800D0F84 E7A80018 */      swc1 $f8, 0x18($sp)
  /* 04C968 800D0F88 C60A0048 */      lwc1 $f10, 0x48($s0)
  /* 04C96C 800D0F8C 8E05003C */        lw $a1, 0x3c($s0)
  /* 04C970 800D0F90 8E060040 */        lw $a2, 0x40($s0)
  /* 04C974 800D0F94 8E070044 */        lw $a3, 0x44($s0)
  /* 04C978 800D0F98 E7AA0010 */      swc1 $f10, 0x10($sp)
  /* 04C97C 800D0F9C C604004C */      lwc1 $f4, 0x4c($s0)
  /* 04C980 800D0FA0 02202025 */        or $a0, $s1, $zero
  /* 04C984 800D0FA4 E7A40014 */      swc1 $f4, 0x14($sp)
  /* 04C988 800D0FA8 C6060050 */      lwc1 $f6, 0x50($s0)
  /* 04C98C 800D0FAC E7A60018 */      swc1 $f6, 0x18($sp)
  /* 04C990 800D0FB0 C6080054 */      lwc1 $f8, 0x54($s0)
  /* 04C994 800D0FB4 E7A8001C */      swc1 $f8, 0x1c($sp)
  /* 04C998 800D0FB8 C60A0058 */      lwc1 $f10, 0x58($s0)
  /* 04C99C 800D0FBC E7AA0020 */      swc1 $f10, 0x20($sp)
  /* 04C9A0 800D0FC0 C604005C */      lwc1 $f4, 0x5c($s0)
  /* 04C9A4 800D0FC4 0C00683C */       jal hal_look_at_f
  /* 04C9A8 800D0FC8 E7A40024 */      swc1 $f4, 0x24($sp)
  /* 04C9AC 800D0FCC 8E020060 */        lw $v0, 0x60($s0)
  .L800D0FD0:
  /* 04C9B0 800D0FD0 26520001 */     addiu $s2, $s2, 1
  /* 04C9B4 800D0FD4 26730004 */     addiu $s3, $s3, 4
  /* 04C9B8 800D0FD8 0242082A */       slt $at, $s2, $v0
  /* 04C9BC 800D0FDC 5420FF75 */      bnel $at, $zero, .L800D0DB4
  /* 04C9C0 800D0FE0 8E6F0064 */        lw $t7, 0x64($s3)
  /* 04C9C4 800D0FE4 3C013F80 */       lui $at, (0x3F800000 >> 16) # 1.0
  .L800D0FE8:
  /* 04C9C8 800D0FE8 4481F000 */      mtc1 $at, $f30 # 1.0 to cop1
  /* 04C9CC 800D0FEC 4480E000 */      mtc1 $zero, $f28
  /* 04C9D0 800D0FF0 27B10288 */     addiu $s1, $sp, 0x288
  /* 04C9D4 800D0FF4 10400025 */      beqz $v0, .L800D108C
  /* 04C9D8 800D0FF8 27B50248 */     addiu $s5, $sp, 0x248
  /* 04C9DC 800D0FFC 02202025 */        or $a0, $s1, $zero
  /* 04C9E0 800D1000 02A02825 */        or $a1, $s5, $zero
  /* 04C9E4 800D1004 0C00D260 */       jal guMtxCatF
  /* 04C9E8 800D1008 02A03025 */        or $a2, $s5, $zero
  /* 04C9EC 800D100C 860E0008 */        lh $t6, 8($s0)
  /* 04C9F0 800D1010 448E3000 */      mtc1 $t6, $f6
  /* 04C9F4 800D1014 00000000 */       nop 
  /* 04C9F8 800D1018 46803220 */   cvt.s.w $f8, $f6
  /* 04C9FC 800D101C E7A80208 */      swc1 $f8, 0x208($sp)
  /* 04CA00 800D1020 860F000A */        lh $t7, 0xa($s0)
  /* 04CA04 800D1024 000FC023 */      negu $t8, $t7
  /* 04CA08 800D1028 44985000 */      mtc1 $t8, $f10
  /* 04CA0C 800D102C 00000000 */       nop 
  /* 04CA10 800D1030 46805120 */   cvt.s.w $f4, $f10
  /* 04CA14 800D1034 E7A40200 */      swc1 $f4, 0x200($sp)
  /* 04CA18 800D1038 8619000C */        lh $t9, 0xc($s0)
  /* 04CA1C 800D103C 44993000 */      mtc1 $t9, $f6
  /* 04CA20 800D1040 00000000 */       nop 
  /* 04CA24 800D1044 46803220 */   cvt.s.w $f8, $f6
  /* 04CA28 800D1048 E7A801F8 */      swc1 $f8, 0x1f8($sp)
  /* 04CA2C 800D104C 860E0010 */        lh $t6, 0x10($s0)
  /* 04CA30 800D1050 448E5000 */      mtc1 $t6, $f10
  /* 04CA34 800D1054 00000000 */       nop 
  /* 04CA38 800D1058 46805120 */   cvt.s.w $f4, $f10
  /* 04CA3C 800D105C E7A40204 */      swc1 $f4, 0x204($sp)
  /* 04CA40 800D1060 860F0012 */        lh $t7, 0x12($s0)
  /* 04CA44 800D1064 448F3000 */      mtc1 $t7, $f6
  /* 04CA48 800D1068 00000000 */       nop 
  /* 04CA4C 800D106C 46803220 */   cvt.s.w $f8, $f6
  /* 04CA50 800D1070 E7A801FC */      swc1 $f8, 0x1fc($sp)
  /* 04CA54 800D1074 86180014 */        lh $t8, 0x14($s0)
  /* 04CA58 800D1078 44985000 */      mtc1 $t8, $f10
  /* 04CA5C 800D107C 00000000 */       nop 
  /* 04CA60 800D1080 46805120 */   cvt.s.w $f4, $f10
  /* 04CA64 800D1084 1000002E */         b .L800D1140
  /* 04CA68 800D1088 E7A401F4 */      swc1 $f4, 0x1f4($sp)
  .L800D108C:
  /* 04CA6C 800D108C 86190008 */        lh $t9, 8($s0)
  /* 04CA70 800D1090 860E000A */        lh $t6, 0xa($s0)
  /* 04CA74 800D1094 8618000C */        lh $t8, 0xc($s0)
  /* 04CA78 800D1098 44993000 */      mtc1 $t9, $f6
  /* 04CA7C 800D109C 86190010 */        lh $t9, 0x10($s0)
  /* 04CA80 800D10A0 000E7823 */      negu $t7, $t6
  /* 04CA84 800D10A4 46803620 */   cvt.s.w $f24, $f6
  /* 04CA88 800D10A8 44992000 */      mtc1 $t9, $f4
  /* 04CA8C 800D10AC 448F4000 */      mtc1 $t7, $f8
  /* 04CA90 800D10B0 44985000 */      mtc1 $t8, $f10
  /* 04CA94 800D10B4 02A02025 */        or $a0, $s5, $zero
  /* 04CA98 800D10B8 468021A0 */   cvt.s.w $f6, $f4
  /* 04CA9C 800D10BC 468045A0 */   cvt.s.w $f22, $f8
  /* 04CAA0 800D10C0 E7A60204 */      swc1 $f6, 0x204($sp)
  /* 04CAA4 800D10C4 860E0012 */        lh $t6, 0x12($s0)
  /* 04CAA8 800D10C8 448E4000 */      mtc1 $t6, $f8
  /* 04CAAC 800D10CC 46805520 */   cvt.s.w $f20, $f10
  /* 04CAB0 800D10D0 468042A0 */   cvt.s.w $f10, $f8
  /* 04CAB4 800D10D4 E7AA01FC */      swc1 $f10, 0x1fc($sp)
  /* 04CAB8 800D10D8 860F0014 */        lh $t7, 0x14($s0)
  /* 04CABC 800D10DC 448F2000 */      mtc1 $t7, $f4
  /* 04CAC0 800D10E0 0C00CA90 */       jal guMtxIdentF
  /* 04CAC4 800D10E4 468026A0 */   cvt.s.w $f26, $f4
  /* 04CAC8 800D10E8 4618F183 */     div.s $f6, $f30, $f24
  /* 04CACC 800D10EC 3C01BF80 */       lui $at, (0xBF800000 >> 16) # -1.0
  /* 04CAD0 800D10F0 44815000 */      mtc1 $at, $f10 # -1.0 to cop1
  /* 04CAD4 800D10F4 E7B401F8 */      swc1 $f20, 0x1f8($sp)
  /* 04CAD8 800D10F8 E7B60200 */      swc1 $f22, 0x200($sp)
  /* 04CADC 800D10FC E7B80208 */      swc1 $f24, 0x208($sp)
  /* 04CAE0 800D1100 E7BA01F4 */      swc1 $f26, 0x1f4($sp)
  /* 04CAE4 800D1104 4616F203 */     div.s $f8, $f30, $f22
  /* 04CAE8 800D1108 E7A60248 */      swc1 $f6, 0x248($sp)
  /* 04CAEC 800D110C C7A60204 */      lwc1 $f6, 0x204($sp)
  /* 04CAF0 800D1110 46145103 */     div.s $f4, $f10, $f20
  /* 04CAF4 800D1114 E7A8025C */      swc1 $f8, 0x25c($sp)
  /* 04CAF8 800D1118 46003207 */     neg.s $f8, $f6
  /* 04CAFC 800D111C 46184283 */     div.s $f10, $f8, $f24
  /* 04CB00 800D1120 E7A40270 */      swc1 $f4, 0x270($sp)
  /* 04CB04 800D1124 C7A401FC */      lwc1 $f4, 0x1fc($sp)
  /* 04CB08 800D1128 46002187 */     neg.s $f6, $f4
  /* 04CB0C 800D112C 46163203 */     div.s $f8, $f6, $f22
  /* 04CB10 800D1130 E7AA0278 */      swc1 $f10, 0x278($sp)
  /* 04CB14 800D1134 4614D283 */     div.s $f10, $f26, $f20
  /* 04CB18 800D1138 E7A8027C */      swc1 $f8, 0x27c($sp)
  /* 04CB1C 800D113C E7AA0280 */      swc1 $f10, 0x280($sp)
  .L800D1140:
  /* 04CB20 800D1140 C7A40248 */      lwc1 $f4, 0x248($sp)
  /* 04CB24 800D1144 C7A80258 */      lwc1 $f8, 0x258($sp)
  /* 04CB28 800D1148 46042182 */     mul.s $f6, $f4, $f4
  /* 04CB2C 800D114C 00000000 */       nop 
  /* 04CB30 800D1150 46084282 */     mul.s $f10, $f8, $f8
  /* 04CB34 800D1154 C7A80268 */      lwc1 $f8, 0x268($sp)
  /* 04CB38 800D1158 460A3100 */     add.s $f4, $f6, $f10
  /* 04CB3C 800D115C 46084182 */     mul.s $f6, $f8, $f8
  /* 04CB40 800D1160 0C00CD44 */       jal sqrtf
  /* 04CB44 800D1164 46043300 */     add.s $f12, $f6, $f4
  /* 04CB48 800D1168 C7AA024C */      lwc1 $f10, 0x24c($sp)
  /* 04CB4C 800D116C C7A6025C */      lwc1 $f6, 0x25c($sp)
  /* 04CB50 800D1170 E7A00220 */      swc1 $f0, 0x220($sp)
  /* 04CB54 800D1174 460A5202 */     mul.s $f8, $f10, $f10
  /* 04CB58 800D1178 00000000 */       nop 
  /* 04CB5C 800D117C 46063102 */     mul.s $f4, $f6, $f6
  /* 04CB60 800D1180 C7A6026C */      lwc1 $f6, 0x26c($sp)
  /* 04CB64 800D1184 46044280 */     add.s $f10, $f8, $f4
  /* 04CB68 800D1188 46063202 */     mul.s $f8, $f6, $f6
  /* 04CB6C 800D118C 0C00CD44 */       jal sqrtf
  /* 04CB70 800D1190 460A4300 */     add.s $f12, $f8, $f10
  /* 04CB74 800D1194 3C118004 */       lui $s1, %hi(D_800465B0)
  /* 04CB78 800D1198 263165B0 */     addiu $s1, $s1, %lo(D_800465B0)
  /* 04CB7C 800D119C 8E220000 */        lw $v0, ($s1) # D_800465B0 + 0
  /* 04CB80 800D11A0 E7A0021C */      swc1 $f0, 0x21c($sp)
  /* 04CB84 800D11A4 3C19E700 */       lui $t9, 0xe700
  /* 04CB88 800D11A8 24580008 */     addiu $t8, $v0, 8
  /* 04CB8C 800D11AC AE380000 */        sw $t8, ($s1) # D_800465B0 + 0
  /* 04CB90 800D11B0 AC400004 */        sw $zero, 4($v0)
  /* 04CB94 800D11B4 AC590000 */        sw $t9, ($v0)
  /* 04CB98 800D11B8 8E220000 */        lw $v0, ($s1) # D_800465B0 + 0
  /* 04CB9C 800D11BC 3C0FE300 */       lui $t7, (0xE3000C00 >> 16) # 3808431104
  /* 04CBA0 800D11C0 35EF0C00 */       ori $t7, $t7, (0xE3000C00 & 0xFFFF) # 3808431104
  /* 04CBA4 800D11C4 244E0008 */     addiu $t6, $v0, 8
  /* 04CBA8 800D11C8 AE2E0000 */        sw $t6, ($s1) # D_800465B0 + 0
  /* 04CBAC 800D11CC AC400004 */        sw $zero, 4($v0)
  /* 04CBB0 800D11D0 AC4F0000 */        sw $t7, ($v0)
  /* 04CBB4 800D11D4 8E220000 */        lw $v0, ($s1) # D_800465B0 + 0
  /* 04CBB8 800D11D8 3C19E200 */       lui $t9, (0xE2001D00 >> 16) # 3791658240
  /* 04CBBC 800D11DC 37391D00 */       ori $t9, $t9, (0xE2001D00 & 0xFFFF) # 3791658240
  /* 04CBC0 800D11E0 24580008 */     addiu $t8, $v0, 8
  /* 04CBC4 800D11E4 AE380000 */        sw $t8, ($s1) # D_800465B0 + 0
  /* 04CBC8 800D11E8 240E0004 */     addiu $t6, $zero, 4
  /* 04CBCC 800D11EC AC4E0004 */        sw $t6, 4($v0)
  /* 04CBD0 800D11F0 AC590000 */        sw $t9, ($v0)
  /* 04CBD4 800D11F4 8E220000 */        lw $v0, ($s1) # D_800465B0 + 0
  /* 04CBD8 800D11F8 3C18E300 */       lui $t8, (0xE3001801 >> 16) # 3808434177
  /* 04CBDC 800D11FC 37181801 */       ori $t8, $t8, (0xE3001801 & 0xFFFF) # 3808434177
  /* 04CBE0 800D1200 244F0008 */     addiu $t7, $v0, 8
  /* 04CBE4 800D1204 AE2F0000 */        sw $t7, ($s1) # D_800465B0 + 0
  /* 04CBE8 800D1208 3C19800D */       lui $t9, %hi(D_ovl0_800D5D50)
  /* 04CBEC 800D120C AC580000 */        sw $t8, ($v0)
  /* 04CBF0 800D1210 93395D50 */       lbu $t9, %lo(D_ovl0_800D5D50)($t9)
  /* 04CBF4 800D1214 3C0FE300 */       lui $t7, (0xE3001A01 >> 16) # 3808434689
  /* 04CBF8 800D1218 35EF1A01 */       ori $t7, $t7, (0xE3001A01 & 0xFFFF) # 3808434689
  /* 04CBFC 800D121C AC590004 */        sw $t9, 4($v0)
  /* 04CC00 800D1220 8E220000 */        lw $v0, ($s1) # D_800465B0 + 0
  /* 04CC04 800D1224 3C18800D */       lui $t8, %hi(D_ovl0_800D5D54)
  /* 04CC08 800D1228 3C12800D */       lui $s2, %hi(D_ovl0_800D5D5C)
  /* 04CC0C 800D122C 244E0008 */     addiu $t6, $v0, 8
  /* 04CC10 800D1230 AE2E0000 */        sw $t6, ($s1) # D_800465B0 + 0
  /* 04CC14 800D1234 AC4F0000 */        sw $t7, ($v0)
  /* 04CC18 800D1238 93185D54 */       lbu $t8, %lo(D_ovl0_800D5D54)($t8)
  /* 04CC1C 800D123C 26525D5C */     addiu $s2, $s2, %lo(D_ovl0_800D5D5C)
  /* 04CC20 800D1240 2419FFFF */     addiu $t9, $zero, -1
  /* 04CC24 800D1244 AC580004 */        sw $t8, 4($v0)
  /* 04CC28 800D1248 92580000 */       lbu $t8, ($s2) # D_ovl0_800D5D5C + 0
  /* 04CC2C 800D124C AFB902D0 */        sw $t9, 0x2d0($sp)
  /* 04CC30 800D1250 240EFFFF */     addiu $t6, $zero, -1
  /* 04CC34 800D1254 240FFFFF */     addiu $t7, $zero, -1
  /* 04CC38 800D1258 27190001 */     addiu $t9, $t8, 1
  /* 04CC3C 800D125C 0000A025 */        or $s4, $zero, $zero
  /* 04CC40 800D1260 AFA002D4 */        sw $zero, 0x2d4($sp)
  /* 04CC44 800D1264 AFAE02CC */        sw $t6, 0x2cc($sp)
  /* 04CC48 800D1268 AFAF02C8 */        sw $t7, 0x2c8($sp)
  /* 04CC4C 800D126C A2590000 */        sb $t9, ($s2) # D_ovl0_800D5D5C + 0
  /* 04CC50 800D1270 AFA001D4 */        sw $zero, 0x1d4($sp)
  .L800D1274:
  /* 04CC54 800D1274 8FAE02E0 */        lw $t6, 0x2e0($sp)
  /* 04CC58 800D1278 8FAF01D4 */        lw $t7, 0x1d4($sp)
  /* 04CC5C 800D127C 8DD80030 */        lw $t8, 0x30($t6)
  /* 04CC60 800D1280 8DD90034 */        lw $t9, 0x34($t6)
  /* 04CC64 800D1284 240E0001 */     addiu $t6, $zero, 1
  /* 04CC68 800D1288 01EE7004 */      sllv $t6, $t6, $t7
  /* 04CC6C 800D128C 01C07825 */        or $t7, $t6, $zero
  /* 04CC70 800D1290 000E77C3 */       sra $t6, $t6, 0x1f
  /* 04CC74 800D1294 030EC024 */       and $t8, $t8, $t6
  /* 04CC78 800D1298 17000003 */      bnez $t8, .L800D12A8
  /* 04CC7C 800D129C 032FC824 */       and $t9, $t9, $t7
  /* 04CC80 800D12A0 532004FF */      beql $t9, $zero, .L800D26A0
  /* 04CC84 800D12A4 8FB801D4 */        lw $t8, 0x1d4($sp)
  .L800D12A8:
  /* 04CC88 800D12A8 8FAE01D4 */        lw $t6, 0x1d4($sp)
  /* 04CC8C 800D12AC 3C16800D */       lui $s6, %hi(D_ovl0_800D6358)
  /* 04CC90 800D12B0 000E7880 */       sll $t7, $t6, 2
  /* 04CC94 800D12B4 02CFB021 */      addu $s6, $s6, $t7
  /* 04CC98 800D12B8 8ED66358 */        lw $s6, %lo(D_ovl0_800D6358)($s6)
  /* 04CC9C 800D12BC 52C004F8 */      beql $s6, $zero, .L800D26A0
  /* 04CCA0 800D12C0 8FB801D4 */        lw $t8, 0x1d4($sp)
  /* 04CCA4 800D12C4 C6C40040 */      lwc1 $f4, 0x40($s6)
  .L800D12C8:
  /* 04CCA8 800D12C8 4604E032 */    c.eq.s $f28, $f4
  /* 04CCAC 800D12CC 00000000 */       nop 
  /* 04CCB0 800D12D0 450304F0 */     bc1tl .L800D2694
  /* 04CCB4 800D12D4 8ED60000 */        lw $s6, ($s6)
  /* 04CCB8 800D12D8 8ED0005C */        lw $s0, 0x5c($s6)
  /* 04CCBC 800D12DC C6D60020 */      lwc1 $f22, 0x20($s6)
  /* 04CCC0 800D12E0 C6D80024 */      lwc1 $f24, 0x24($s6)
  /* 04CCC4 800D12E4 12000080 */      beqz $s0, .L800D14E8
  /* 04CCC8 800D12E8 C6D40028 */      lwc1 $f20, 0x28($s6)
  /* 04CCCC 800D12EC 92580000 */       lbu $t8, ($s2) # D_ovl0_800D5D5C + 0
  /* 04CCD0 800D12F0 92190029 */       lbu $t9, 0x29($s0)
  /* 04CCD4 800D12F4 53190040 */      beql $t8, $t9, .L800D13F8
  /* 04CCD8 800D12F8 C60A002C */      lwc1 $f10, 0x2c($s0)
  /* 04CCDC 800D12FC 92020028 */       lbu $v0, 0x28($s0)
  /* 04CCE0 800D1300 24010002 */     addiu $at, $zero, 2
  /* 04CCE4 800D1304 50410015 */      beql $v0, $at, .L800D135C
  /* 04CCE8 800D1308 24010001 */     addiu $at, $zero, 1
  /* 04CCEC 800D130C C6060010 */      lwc1 $f6, 0x10($s0)
  /* 04CCF0 800D1310 8E050004 */        lw $a1, 4($s0)
  /* 04CCF4 800D1314 8E060008 */        lw $a2, 8($s0)
  /* 04CCF8 800D1318 8E07000C */        lw $a3, 0xc($s0)
  /* 04CCFC 800D131C E7A60010 */      swc1 $f6, 0x10($sp)
  /* 04CD00 800D1320 C6080014 */      lwc1 $f8, 0x14($s0)
  /* 04CD04 800D1324 2604002C */     addiu $a0, $s0, 0x2c
  /* 04CD08 800D1328 E7A80014 */      swc1 $f8, 0x14($sp)
  /* 04CD0C 800D132C C60A0018 */      lwc1 $f10, 0x18($s0)
  /* 04CD10 800D1330 E7AA0018 */      swc1 $f10, 0x18($sp)
  /* 04CD14 800D1334 C604001C */      lwc1 $f4, 0x1c($s0)
  /* 04CD18 800D1338 E7A4001C */      swc1 $f4, 0x1c($sp)
  /* 04CD1C 800D133C C6060020 */      lwc1 $f6, 0x20($s0)
  /* 04CD20 800D1340 E7A60020 */      swc1 $f6, 0x20($sp)
  /* 04CD24 800D1344 C6080024 */      lwc1 $f8, 0x24($s0)
  /* 04CD28 800D1348 0C007149 */       jal func_8001C524
  /* 04CD2C 800D134C E7A80024 */      swc1 $f8, 0x24($sp)
  /* 04CD30 800D1350 8ED0005C */        lw $s0, 0x5c($s6)
  /* 04CD34 800D1354 92020028 */       lbu $v0, 0x28($s0)
  /* 04CD38 800D1358 24010001 */     addiu $at, $zero, 1
  .L800D135C:
  /* 04CD3C 800D135C 14410004 */       bne $v0, $at, .L800D1370
  /* 04CD40 800D1360 02A02825 */        or $a1, $s5, $zero
  /* 04CD44 800D1364 240E0002 */     addiu $t6, $zero, 2
  /* 04CD48 800D1368 A20E0028 */        sb $t6, 0x28($s0)
  /* 04CD4C 800D136C 8ED0005C */        lw $s0, 0x5c($s6)
  .L800D1370:
  /* 04CD50 800D1370 2604002C */     addiu $a0, $s0, 0x2c
  /* 04CD54 800D1374 0C00D260 */       jal guMtxCatF
  /* 04CD58 800D1378 2606006C */     addiu $a2, $s0, 0x6c
  /* 04CD5C 800D137C 8ED0005C */        lw $s0, 0x5c($s6)
  /* 04CD60 800D1380 C602006C */      lwc1 $f2, 0x6c($s0)
  /* 04CD64 800D1384 C60E007C */      lwc1 $f14, 0x7c($s0)
  /* 04CD68 800D1388 C600008C */      lwc1 $f0, 0x8c($s0)
  /* 04CD6C 800D138C 46021282 */     mul.s $f10, $f2, $f2
  /* 04CD70 800D1390 00000000 */       nop 
  /* 04CD74 800D1394 460E7102 */     mul.s $f4, $f14, $f14
  /* 04CD78 800D1398 46045180 */     add.s $f6, $f10, $f4
  /* 04CD7C 800D139C 46000202 */     mul.s $f8, $f0, $f0
  /* 04CD80 800D13A0 0C00CD44 */       jal sqrtf
  /* 04CD84 800D13A4 46064300 */     add.s $f12, $f8, $f6
  /* 04CD88 800D13A8 8ECF005C */        lw $t7, 0x5c($s6)
  /* 04CD8C 800D13AC E5E000AC */      swc1 $f0, 0xac($t7)
  /* 04CD90 800D13B0 8ED0005C */        lw $s0, 0x5c($s6)
  /* 04CD94 800D13B4 C60E0070 */      lwc1 $f14, 0x70($s0)
  /* 04CD98 800D13B8 C6100080 */      lwc1 $f16, 0x80($s0)
  /* 04CD9C 800D13BC C6020090 */      lwc1 $f2, 0x90($s0)
  /* 04CDA0 800D13C0 460E7282 */     mul.s $f10, $f14, $f14
  /* 04CDA4 800D13C4 00000000 */       nop 
  /* 04CDA8 800D13C8 46108102 */     mul.s $f4, $f16, $f16
  /* 04CDAC 800D13CC 46045200 */     add.s $f8, $f10, $f4
  /* 04CDB0 800D13D0 46021182 */     mul.s $f6, $f2, $f2
  /* 04CDB4 800D13D4 0C00CD44 */       jal sqrtf
  /* 04CDB8 800D13D8 46083300 */     add.s $f12, $f6, $f8
  /* 04CDBC 800D13DC 8ED8005C */        lw $t8, 0x5c($s6)
  /* 04CDC0 800D13E0 E70000B0 */      swc1 $f0, 0xb0($t8)
  /* 04CDC4 800D13E4 8ECE005C */        lw $t6, 0x5c($s6)
  /* 04CDC8 800D13E8 92590000 */       lbu $t9, ($s2) # D_ovl0_800D5D5C + 0
  /* 04CDCC 800D13EC A1D90029 */        sb $t9, 0x29($t6)
  /* 04CDD0 800D13F0 8ED0005C */        lw $s0, 0x5c($s6)
  /* 04CDD4 800D13F4 C60A002C */      lwc1 $f10, 0x2c($s0)
  .L800D13F8:
  /* 04CDD8 800D13F8 240FFFFF */     addiu $t7, $zero, -1
  /* 04CDDC 800D13FC 2418FFFF */     addiu $t8, $zero, -1
  /* 04CDE0 800D1400 460AE03E */    c.le.s $f28, $f10
  /* 04CDE4 800D1404 00000000 */       nop 
  /* 04CDE8 800D1408 45020004 */     bc1fl .L800D141C
  /* 04CDEC 800D140C AFAF0210 */        sw $t7, 0x210($sp)
  /* 04CDF0 800D1410 10000002 */         b .L800D141C
  /* 04CDF4 800D1414 AFA00210 */        sw $zero, 0x210($sp)
  /* 04CDF8 800D1418 AFAF0210 */        sw $t7, 0x210($sp)
  .L800D141C:
  /* 04CDFC 800D141C C6040040 */      lwc1 $f4, 0x40($s0)
  /* 04CE00 800D1420 4604E03E */    c.le.s $f28, $f4
  /* 04CE04 800D1424 00000000 */       nop 
  /* 04CE08 800D1428 45020004 */     bc1fl .L800D143C
  /* 04CE0C 800D142C AFB8020C */        sw $t8, 0x20c($sp)
  /* 04CE10 800D1430 10000002 */         b .L800D143C
  /* 04CE14 800D1434 AFA0020C */        sw $zero, 0x20c($sp)
  /* 04CE18 800D1438 AFB8020C */        sw $t8, 0x20c($sp)
  .L800D143C:
  /* 04CE1C 800D143C C606006C */      lwc1 $f6, 0x6c($s0)
  /* 04CE20 800D1440 C60A007C */      lwc1 $f10, 0x7c($s0)
  /* 04CE24 800D1444 C60E00AC */      lwc1 $f14, 0xac($s0)
  /* 04CE28 800D1448 46163202 */     mul.s $f8, $f6, $f22
  /* 04CE2C 800D144C C61000B0 */      lwc1 $f16, 0xb0($s0)
  /* 04CE30 800D1450 46185102 */     mul.s $f4, $f10, $f24
  /* 04CE34 800D1454 C60A008C */      lwc1 $f10, 0x8c($s0)
  /* 04CE38 800D1458 46044180 */     add.s $f6, $f8, $f4
  /* 04CE3C 800D145C 46145202 */     mul.s $f8, $f10, $f20
  /* 04CE40 800D1460 C60A009C */      lwc1 $f10, 0x9c($s0)
  /* 04CE44 800D1464 46083100 */     add.s $f4, $f6, $f8
  /* 04CE48 800D1468 C6060070 */      lwc1 $f6, 0x70($s0)
  /* 04CE4C 800D146C 46045000 */     add.s $f0, $f10, $f4
  /* 04CE50 800D1470 46163202 */     mul.s $f8, $f6, $f22
  /* 04CE54 800D1474 C60A0080 */      lwc1 $f10, 0x80($s0)
  /* 04CE58 800D1478 46185102 */     mul.s $f4, $f10, $f24
  /* 04CE5C 800D147C C60A0090 */      lwc1 $f10, 0x90($s0)
  /* 04CE60 800D1480 46044180 */     add.s $f6, $f8, $f4
  /* 04CE64 800D1484 46145202 */     mul.s $f8, $f10, $f20
  /* 04CE68 800D1488 C60A00A0 */      lwc1 $f10, 0xa0($s0)
  /* 04CE6C 800D148C 46083100 */     add.s $f4, $f6, $f8
  /* 04CE70 800D1490 C6060074 */      lwc1 $f6, 0x74($s0)
  /* 04CE74 800D1494 46045300 */     add.s $f12, $f10, $f4
  /* 04CE78 800D1498 46163202 */     mul.s $f8, $f6, $f22
  /* 04CE7C 800D149C C60A0084 */      lwc1 $f10, 0x84($s0)
  /* 04CE80 800D14A0 46185102 */     mul.s $f4, $f10, $f24
  /* 04CE84 800D14A4 C60A0094 */      lwc1 $f10, 0x94($s0)
  /* 04CE88 800D14A8 46044180 */     add.s $f6, $f8, $f4
  /* 04CE8C 800D14AC 46145202 */     mul.s $f8, $f10, $f20
  /* 04CE90 800D14B0 C60A00A4 */      lwc1 $f10, 0xa4($s0)
  /* 04CE94 800D14B4 46083100 */     add.s $f4, $f6, $f8
  /* 04CE98 800D14B8 C6060078 */      lwc1 $f6, 0x78($s0)
  /* 04CE9C 800D14BC 46045680 */     add.s $f26, $f10, $f4
  /* 04CEA0 800D14C0 46163202 */     mul.s $f8, $f6, $f22
  /* 04CEA4 800D14C4 C60A0088 */      lwc1 $f10, 0x88($s0)
  /* 04CEA8 800D14C8 46185102 */     mul.s $f4, $f10, $f24
  /* 04CEAC 800D14CC C60A0098 */      lwc1 $f10, 0x98($s0)
  /* 04CEB0 800D14D0 46044180 */     add.s $f6, $f8, $f4
  /* 04CEB4 800D14D4 46145202 */     mul.s $f8, $f10, $f20
  /* 04CEB8 800D14D8 C60A00A8 */      lwc1 $f10, 0xa8($s0)
  /* 04CEBC 800D14DC 46083100 */     add.s $f4, $f6, $f8
  /* 04CEC0 800D14E0 1000002D */         b .L800D1598
  /* 04CEC4 800D14E4 46045080 */     add.s $f2, $f10, $f4
  .L800D14E8:
  /* 04CEC8 800D14E8 C7A60248 */      lwc1 $f6, 0x248($sp)
  /* 04CECC 800D14EC C7AA0258 */      lwc1 $f10, 0x258($sp)
  /* 04CED0 800D14F0 AFA0020C */        sw $zero, 0x20c($sp)
  /* 04CED4 800D14F4 46163202 */     mul.s $f8, $f6, $f22
  /* 04CED8 800D14F8 AFA00210 */        sw $zero, 0x210($sp)
  /* 04CEDC 800D14FC C7AE0220 */      lwc1 $f14, 0x220($sp)
  /* 04CEE0 800D1500 46185102 */     mul.s $f4, $f10, $f24
  /* 04CEE4 800D1504 C7AA0268 */      lwc1 $f10, 0x268($sp)
  /* 04CEE8 800D1508 C7B0021C */      lwc1 $f16, 0x21c($sp)
  /* 04CEEC 800D150C 46044180 */     add.s $f6, $f8, $f4
  /* 04CEF0 800D1510 46145202 */     mul.s $f8, $f10, $f20
  /* 04CEF4 800D1514 C7AA0278 */      lwc1 $f10, 0x278($sp)
  /* 04CEF8 800D1518 46083100 */     add.s $f4, $f6, $f8
  /* 04CEFC 800D151C C7A6024C */      lwc1 $f6, 0x24c($sp)
  /* 04CF00 800D1520 46045000 */     add.s $f0, $f10, $f4
  /* 04CF04 800D1524 46163202 */     mul.s $f8, $f6, $f22
  /* 04CF08 800D1528 C7AA025C */      lwc1 $f10, 0x25c($sp)
  /* 04CF0C 800D152C 46185102 */     mul.s $f4, $f10, $f24
  /* 04CF10 800D1530 C7AA026C */      lwc1 $f10, 0x26c($sp)
  /* 04CF14 800D1534 46044180 */     add.s $f6, $f8, $f4
  /* 04CF18 800D1538 46145202 */     mul.s $f8, $f10, $f20
  /* 04CF1C 800D153C C7AA027C */      lwc1 $f10, 0x27c($sp)
  /* 04CF20 800D1540 46083100 */     add.s $f4, $f6, $f8
  /* 04CF24 800D1544 C7A60250 */      lwc1 $f6, 0x250($sp)
  /* 04CF28 800D1548 46045300 */     add.s $f12, $f10, $f4
  /* 04CF2C 800D154C 46163202 */     mul.s $f8, $f6, $f22
  /* 04CF30 800D1550 C7AA0260 */      lwc1 $f10, 0x260($sp)
  /* 04CF34 800D1554 46185102 */     mul.s $f4, $f10, $f24
  /* 04CF38 800D1558 C7AA0270 */      lwc1 $f10, 0x270($sp)
  /* 04CF3C 800D155C 46044180 */     add.s $f6, $f8, $f4
  /* 04CF40 800D1560 46145202 */     mul.s $f8, $f10, $f20
  /* 04CF44 800D1564 C7AA0280 */      lwc1 $f10, 0x280($sp)
  /* 04CF48 800D1568 46083100 */     add.s $f4, $f6, $f8
  /* 04CF4C 800D156C C7A60254 */      lwc1 $f6, 0x254($sp)
  /* 04CF50 800D1570 46045680 */     add.s $f26, $f10, $f4
  /* 04CF54 800D1574 46163202 */     mul.s $f8, $f6, $f22
  /* 04CF58 800D1578 C7AA0264 */      lwc1 $f10, 0x264($sp)
  /* 04CF5C 800D157C 46185102 */     mul.s $f4, $f10, $f24
  /* 04CF60 800D1580 C7AA0274 */      lwc1 $f10, 0x274($sp)
  /* 04CF64 800D1584 46044180 */     add.s $f6, $f8, $f4
  /* 04CF68 800D1588 46145202 */     mul.s $f8, $f10, $f20
  /* 04CF6C 800D158C C7AA0284 */      lwc1 $f10, 0x284($sp)
  /* 04CF70 800D1590 46083100 */     add.s $f4, $f6, $f8
  /* 04CF74 800D1594 46045080 */     add.s $f2, $f10, $f4
  .L800D1598:
  /* 04CF78 800D1598 461C1032 */    c.eq.s $f2, $f28
  /* 04CF7C 800D159C 00000000 */       nop 
  /* 04CF80 800D15A0 45020004 */     bc1fl .L800D15B4
  /* 04CF84 800D15A4 4602F083 */     div.s $f2, $f30, $f2
  /* 04CF88 800D15A8 10000439 */         b .L800D2690
  /* 04CF8C 800D15AC 27B50248 */     addiu $s5, $sp, 0x248
  /* 04CF90 800D15B0 4602F083 */     div.s $f2, $f30, $f2
  .L800D15B4:
  /* 04CF94 800D15B4 3C01BF80 */       lui $at, (0xBF800000 >> 16) # -1.0
  /* 04CF98 800D15B8 44813000 */      mtc1 $at, $f6 # -1.0 to cop1
  /* 04CF9C 800D15BC 46020002 */     mul.s $f0, $f0, $f2
  /* 04CFA0 800D15C0 4606003C */    c.lt.s $f0, $f6
  /* 04CFA4 800D15C4 46026302 */     mul.s $f12, $f12, $f2
  /* 04CFA8 800D15C8 00000000 */       nop 
  /* 04CFAC 800D15CC 4602D682 */     mul.s $f26, $f26, $f2
  /* 04CFB0 800D15D0 45010018 */      bc1t .L800D1634
  /* 04CFB4 800D15D4 00000000 */       nop 
  /* 04CFB8 800D15D8 4600F03C */    c.lt.s $f30, $f0
  /* 04CFBC 800D15DC 3C01BF80 */       lui $at, (0xBF800000 >> 16) # -1.0
  /* 04CFC0 800D15E0 45010014 */      bc1t .L800D1634
  /* 04CFC4 800D15E4 00000000 */       nop 
  /* 04CFC8 800D15E8 44814000 */      mtc1 $at, $f8 # -1.0 to cop1
  /* 04CFCC 800D15EC 00000000 */       nop 
  /* 04CFD0 800D15F0 4608603C */    c.lt.s $f12, $f8
  /* 04CFD4 800D15F4 00000000 */       nop 
  /* 04CFD8 800D15F8 4501000E */      bc1t .L800D1634
  /* 04CFDC 800D15FC 00000000 */       nop 
  /* 04CFE0 800D1600 460CF03C */    c.lt.s $f30, $f12
  /* 04CFE4 800D1604 00000000 */       nop 
  /* 04CFE8 800D1608 4501000A */      bc1t .L800D1634
  /* 04CFEC 800D160C 00000000 */       nop 
  /* 04CFF0 800D1610 461CD03C */    c.lt.s $f26, $f28
  /* 04CFF4 800D1614 00000000 */       nop 
  /* 04CFF8 800D1618 45010006 */      bc1t .L800D1634
  /* 04CFFC 800D161C 00000000 */       nop 
  /* 04D000 800D1620 461AF03C */    c.lt.s $f30, $f26
  /* 04D004 800D1624 3C0E800D */       lui $t6, %hi(D_ovl0_800D6420)
  /* 04D008 800D1628 24010002 */     addiu $at, $zero, 2
  /* 04D00C 800D162C 45020004 */     bc1fl .L800D1640
  /* 04D010 800D1630 C6CA0040 */      lwc1 $f10, 0x40($s6)
  .L800D1634:
  /* 04D014 800D1634 10000416 */         b .L800D2690
  /* 04D018 800D1638 27B50248 */     addiu $s5, $sp, 0x248
  /* 04D01C 800D163C C6CA0040 */      lwc1 $f10, 0x40($s6)
  .L800D1640:
  /* 04D020 800D1640 C7B80208 */      lwc1 $f24, 0x208($sp)
  /* 04D024 800D1644 C7B60204 */      lwc1 $f22, 0x204($sp)
  /* 04D028 800D1648 460A1082 */     mul.s $f2, $f2, $f10
  /* 04D02C 800D164C 00000000 */       nop 
  /* 04D030 800D1650 460E1102 */     mul.s $f4, $f2, $f14
  /* 04D034 800D1654 46002480 */     add.s $f18, $f4, $f0
  /* 04D038 800D1658 46101182 */     mul.s $f6, $f2, $f16
  /* 04D03C 800D165C C7A20200 */      lwc1 $f2, 0x200($sp)
  /* 04D040 800D1660 46180202 */     mul.s $f8, $f0, $f24
  /* 04D044 800D1664 00000000 */       nop 
  /* 04D048 800D1668 46189282 */     mul.s $f10, $f18, $f24
  /* 04D04C 800D166C 460C3500 */     add.s $f20, $f6, $f12
  /* 04D050 800D1670 46164000 */     add.s $f0, $f8, $f22
  /* 04D054 800D1674 46026202 */     mul.s $f8, $f12, $f2
  /* 04D058 800D1678 46165480 */     add.s $f18, $f10, $f22
  /* 04D05C 800D167C 4602A282 */     mul.s $f10, $f20, $f2
  /* 04D060 800D1680 4612003C */    c.lt.s $f0, $f18
  /* 04D064 800D1684 00000000 */       nop 
  /* 04D068 800D1688 45000004 */      bc1f .L800D169C
  /* 04D06C 800D168C 00000000 */       nop 
  /* 04D070 800D1690 46009101 */     sub.s $f4, $f18, $f0
  /* 04D074 800D1694 10000004 */         b .L800D16A8
  /* 04D078 800D1698 46040581 */     sub.s $f22, $f0, $f4
  .L800D169C:
  /* 04D07C 800D169C 46009181 */     sub.s $f6, $f18, $f0
  /* 04D080 800D16A0 46009586 */     mov.s $f22, $f18
  /* 04D084 800D16A4 46060481 */     sub.s $f18, $f0, $f6
  .L800D16A8:
  /* 04D088 800D16A8 C7A001FC */      lwc1 $f0, 0x1fc($sp)
  /* 04D08C 800D16AC 46004300 */     add.s $f12, $f8, $f0
  /* 04D090 800D16B0 C7A801F8 */      lwc1 $f8, 0x1f8($sp)
  /* 04D094 800D16B4 46005500 */     add.s $f20, $f10, $f0
  /* 04D098 800D16B8 4614603C */    c.lt.s $f12, $f20
  /* 04D09C 800D16BC 00000000 */       nop 
  /* 04D0A0 800D16C0 45020005 */     bc1fl .L800D16D8
  /* 04D0A4 800D16C4 460CA181 */     sub.s $f6, $f20, $f12
  /* 04D0A8 800D16C8 460CA101 */     sub.s $f4, $f20, $f12
  /* 04D0AC 800D16CC 10000004 */         b .L800D16E0
  /* 04D0B0 800D16D0 46046601 */     sub.s $f24, $f12, $f4
  /* 04D0B4 800D16D4 460CA181 */     sub.s $f6, $f20, $f12
  .L800D16D8:
  /* 04D0B8 800D16D8 4600A606 */     mov.s $f24, $f20
  /* 04D0BC 800D16DC 46066501 */     sub.s $f20, $f12, $f6
  .L800D16E0:
  /* 04D0C0 800D16E0 92C30008 */       lbu $v1, 8($s6)
  /* 04D0C4 800D16E4 92CF000A */       lbu $t7, 0xa($s6)
  /* 04D0C8 800D16E8 92C4000B */       lbu $a0, 0xb($s6)
  /* 04D0CC 800D16EC 30630007 */      andi $v1, $v1, 7
  /* 04D0D0 800D16F0 0003C880 */       sll $t9, $v1, 2
  /* 04D0D4 800D16F4 01D97021 */      addu $t6, $t6, $t9
  /* 04D0D8 800D16F8 8DCE6420 */        lw $t6, %lo(D_ovl0_800D6420)($t6)
  /* 04D0DC 800D16FC 000FC080 */       sll $t8, $t7, 2
  /* 04D0E0 800D1700 4608D282 */     mul.s $f10, $f26, $f8
  /* 04D0E4 800D1704 01D8C821 */      addu $t9, $t6, $t8
  /* 04D0E8 800D1708 8F220000 */        lw $v0, ($t9)
  /* 04D0EC 800D170C 00042080 */       sll $a0, $a0, 2
  /* 04D0F0 800D1710 C7A401F4 */      lwc1 $f4, 0x1f4($sp)
  /* 04D0F4 800D1714 8C5E0004 */        lw $fp, 4($v0)
  /* 04D0F8 800D1718 00447821 */      addu $t7, $v0, $a0
  /* 04D0FC 800D171C 8DEE0018 */        lw $t6, 0x18($t7)
  /* 04D100 800D1720 8C4B0008 */        lw $t3, 8($v0)
  /* 04D104 800D1724 8C53000C */        lw $s3, 0xc($v0)
  /* 04D108 800D1728 8C550010 */        lw $s5, 0x10($v0)
  /* 04D10C 800D172C 46045680 */     add.s $f26, $f10, $f4
  /* 04D110 800D1730 17C1000E */       bne $fp, $at, .L800D176C
  /* 04D114 800D1734 AFAE01B8 */        sw $t6, 0x1b8($sp)
  /* 04D118 800D1738 8C580000 */        lw $t8, ($v0)
  /* 04D11C 800D173C 96CF0006 */       lhu $t7, 6($s6)
  /* 04D120 800D1740 0018C880 */       sll $t9, $t8, 2
  /* 04D124 800D1744 00591821 */      addu $v1, $v0, $t9
  /* 04D128 800D1748 31EE0010 */      andi $t6, $t7, 0x10
  /* 04D12C 800D174C 15C00005 */      bnez $t6, .L800D1764
  /* 04D130 800D1750 24630018 */     addiu $v1, $v1, 0x18
  /* 04D134 800D1754 0064C021 */      addu $t8, $v1, $a0
  /* 04D138 800D1758 8F190000 */        lw $t9, ($t8)
  /* 04D13C 800D175C 10000003 */         b .L800D176C
  /* 04D140 800D1760 AFB901B4 */        sw $t9, 0x1b4($sp)
  .L800D1764:
  /* 04D144 800D1764 8C6F0000 */        lw $t7, ($v1)
  /* 04D148 800D1768 AFAF01B4 */        sw $t7, 0x1b4($sp)
  .L800D176C:
  /* 04D14C 800D176C 44933000 */      mtc1 $s3, $f6
  /* 04D150 800D1770 3C014580 */       lui $at, (0x45800000 >> 16) # 4096.0
  /* 04D154 800D1774 44810000 */      mtc1 $at, $f0 # 4096.0 to cop1
  /* 04D158 800D1778 46803220 */   cvt.s.w $f8, $f6
  /* 04D15C 800D177C 8FB90210 */        lw $t9, 0x210($sp)
  /* 04D160 800D1780 00137940 */       sll $t7, $s3, 5
  /* 04D164 800D1784 2A610041 */      slti $at, $s3, 0x41
  /* 04D168 800D1788 46169101 */     sub.s $f4, $f18, $f22
  /* 04D16C 800D178C 46004282 */     mul.s $f10, $f8, $f0
  /* 04D170 800D1790 46045183 */     div.s $f6, $f10, $f4
  /* 04D174 800D1794 44955000 */      mtc1 $s5, $f10
  /* 04D178 800D1798 00000000 */       nop 
  /* 04D17C 800D179C 46805120 */   cvt.s.w $f4, $f10
  /* 04D180 800D17A0 4600320D */ trunc.w.s $f8, $f6
  /* 04D184 800D17A4 46002182 */     mul.s $f6, $f4, $f0
  /* 04D188 800D17A8 44024000 */      mfc1 $v0, $f8
  /* 04D18C 800D17AC 4618A201 */     sub.s $f8, $f20, $f24
  /* 04D190 800D17B0 AFA201F0 */        sw $v0, 0x1f0($sp)
  /* 04D194 800D17B4 00027023 */      negu $t6, $v0
  /* 04D198 800D17B8 46083283 */     div.s $f10, $f6, $f8
  /* 04D19C 800D17BC 4600510D */ trunc.w.s $f4, $f10
  /* 04D1A0 800D17C0 44032000 */      mfc1 $v1, $f4
  /* 04D1A4 800D17C4 00000000 */       nop 
  /* 04D1A8 800D17C8 AFA301EC */        sw $v1, 0x1ec($sp)
  /* 04D1AC 800D17CC 07210003 */      bgez $t9, .L800D17DC
  /* 04D1B0 800D17D0 96C40006 */       lhu $a0, 6($s6)
  /* 04D1B4 800D17D4 AFAF0210 */        sw $t7, 0x210($sp)
  /* 04D1B8 800D17D8 AFAE01F0 */        sw $t6, 0x1f0($sp)
  .L800D17DC:
  /* 04D1BC 800D17DC 8FB8020C */        lw $t8, 0x20c($sp)
  /* 04D1C0 800D17E0 0015C940 */       sll $t9, $s5, 5
  /* 04D1C4 800D17E4 00037823 */      negu $t7, $v1
  /* 04D1C8 800D17E8 07010003 */      bgez $t8, .L800D17F8
  /* 04D1CC 800D17EC 308E0020 */      andi $t6, $a0, 0x20
  /* 04D1D0 800D17F0 AFB9020C */        sw $t9, 0x20c($sp)
  /* 04D1D4 800D17F4 AFAF01EC */        sw $t7, 0x1ec($sp)
  .L800D17F8:
  /* 04D1D8 800D17F8 11C00030 */      beqz $t6, .L800D18BC
  /* 04D1DC 800D17FC 24180002 */     addiu $t8, $zero, 2
  /* 04D1E0 800D1800 8FB801F0 */        lw $t8, 0x1f0($sp)
  /* 04D1E4 800D1804 240F0001 */     addiu $t7, $zero, 1
  /* 04D1E8 800D1808 AFAF01E8 */        sw $t7, 0x1e8($sp)
  /* 04D1EC 800D180C 0018C840 */       sll $t9, $t8, 1
  /* 04D1F0 800D1810 14200008 */      bnez $at, .L800D1834
  /* 04D1F4 800D1814 AFB901F0 */        sw $t9, 0x1f0($sp)
  /* 04D1F8 800D1818 24010080 */     addiu $at, $zero, 0x80
  /* 04D1FC 800D181C 12610021 */       beq $s3, $at, .L800D18A4
  /* 04D200 800D1820 24010100 */     addiu $at, $zero, 0x100
  /* 04D204 800D1824 12610021 */       beq $s3, $at, .L800D18AC
  /* 04D208 800D1828 00000000 */       nop 
  /* 04D20C 800D182C 10000025 */         b .L800D18C4
  /* 04D210 800D1830 00008025 */        or $s0, $zero, $zero
  .L800D1834:
  /* 04D214 800D1834 2A610021 */      slti $at, $s3, 0x21
  /* 04D218 800D1838 14200006 */      bnez $at, .L800D1854
  /* 04D21C 800D183C 266EFFFE */     addiu $t6, $s3, -2
  /* 04D220 800D1840 24010040 */     addiu $at, $zero, 0x40
  /* 04D224 800D1844 12610015 */       beq $s3, $at, .L800D189C
  /* 04D228 800D1848 00000000 */       nop 
  /* 04D22C 800D184C 1000001D */         b .L800D18C4
  /* 04D230 800D1850 00008025 */        or $s0, $zero, $zero
  .L800D1854:
  /* 04D234 800D1854 2DC1001F */     sltiu $at, $t6, 0x1f
  /* 04D238 800D1858 10200016 */      beqz $at, jtgt_ovl0_800D18B4
  /* 04D23C 800D185C 000E7080 */       sll $t6, $t6, 2
  /* 04D240 800D1860 3C01800D */       lui $at, %hi(D_ovl0_800D616C)
  /* 04D244 800D1864 002E0821 */      addu $at, $at, $t6
  /* 04D248 800D1868 8C2E616C */        lw $t6, %lo(D_ovl0_800D616C)($at)
  /* 04D24C 800D186C 01C00008 */        jr $t6
  /* 04D250 800D1870 00000000 */       nop 
  glabel jtgt_ovl0_800D1874
  /* 04D254 800D1874 10000013 */         b .L800D18C4
  /* 04D258 800D1878 24100001 */     addiu $s0, $zero, 1
  glabel jtgt_ovl0_800D187C
  /* 04D25C 800D187C 10000011 */         b .L800D18C4
  /* 04D260 800D1880 24100002 */     addiu $s0, $zero, 2
  glabel jtgt_ovl0_800D1884
  /* 04D264 800D1884 1000000F */         b .L800D18C4
  /* 04D268 800D1888 24100003 */     addiu $s0, $zero, 3
  glabel jtgt_ovl0_800D188C
  /* 04D26C 800D188C 1000000D */         b .L800D18C4
  /* 04D270 800D1890 24100004 */     addiu $s0, $zero, 4
  glabel jtgt_ovl0_800D1894
  /* 04D274 800D1894 1000000B */         b .L800D18C4
  /* 04D278 800D1898 24100005 */     addiu $s0, $zero, 5
  .L800D189C:
  /* 04D27C 800D189C 10000009 */         b .L800D18C4
  /* 04D280 800D18A0 24100006 */     addiu $s0, $zero, 6
  .L800D18A4:
  /* 04D284 800D18A4 10000007 */         b .L800D18C4
  /* 04D288 800D18A8 24100007 */     addiu $s0, $zero, 7
  .L800D18AC:
  /* 04D28C 800D18AC 10000005 */         b .L800D18C4
  /* 04D290 800D18B0 24100008 */     addiu $s0, $zero, 8
  glabel jtgt_ovl0_800D18B4
  /* 04D294 800D18B4 10000003 */         b .L800D18C4
  /* 04D298 800D18B8 00008025 */        or $s0, $zero, $zero
  .L800D18BC:
  /* 04D29C 800D18BC AFB801E8 */        sw $t8, 0x1e8($sp)
  /* 04D2A0 800D18C0 00008025 */        or $s0, $zero, $zero
  .L800D18C4:
  /* 04D2A4 800D18C4 30990040 */      andi $t9, $a0, 0x40
  /* 04D2A8 800D18C8 13200030 */      beqz $t9, .L800D198C
  /* 04D2AC 800D18CC 24170002 */     addiu $s7, $zero, 2
  /* 04D2B0 800D18D0 8FAF01EC */        lw $t7, 0x1ec($sp)
  /* 04D2B4 800D18D4 2AA10041 */      slti $at, $s5, 0x41
  /* 04D2B8 800D18D8 24170001 */     addiu $s7, $zero, 1
  /* 04D2BC 800D18DC 000F7040 */       sll $t6, $t7, 1
  /* 04D2C0 800D18E0 14200008 */      bnez $at, .L800D1904
  /* 04D2C4 800D18E4 AFAE01EC */        sw $t6, 0x1ec($sp)
  /* 04D2C8 800D18E8 24010080 */     addiu $at, $zero, 0x80
  /* 04D2CC 800D18EC 12A10021 */       beq $s5, $at, .L800D1974
  /* 04D2D0 800D18F0 24010100 */     addiu $at, $zero, 0x100
  /* 04D2D4 800D18F4 12A10021 */       beq $s5, $at, .L800D197C
  /* 04D2D8 800D18F8 00000000 */       nop 
  /* 04D2DC 800D18FC 10000024 */         b .L800D1990
  /* 04D2E0 800D1900 00004825 */        or $t1, $zero, $zero
  .L800D1904:
  /* 04D2E4 800D1904 2AA10021 */      slti $at, $s5, 0x21
  /* 04D2E8 800D1908 14200006 */      bnez $at, .L800D1924
  /* 04D2EC 800D190C 26B8FFFE */     addiu $t8, $s5, -2
  /* 04D2F0 800D1910 24010040 */     addiu $at, $zero, 0x40
  /* 04D2F4 800D1914 12A10015 */       beq $s5, $at, .L800D196C
  /* 04D2F8 800D1918 00000000 */       nop 
  /* 04D2FC 800D191C 1000001C */         b .L800D1990
  /* 04D300 800D1920 00004825 */        or $t1, $zero, $zero
  .L800D1924:
  /* 04D304 800D1924 2F01001F */     sltiu $at, $t8, 0x1f
  /* 04D308 800D1928 10200016 */      beqz $at, jtgt_ovl0_800D1984
  /* 04D30C 800D192C 0018C080 */       sll $t8, $t8, 2
  /* 04D310 800D1930 3C01800D */       lui $at, %hi(D_ovl0_800D61E8)
  /* 04D314 800D1934 00380821 */      addu $at, $at, $t8
  /* 04D318 800D1938 8C3861E8 */        lw $t8, %lo(D_ovl0_800D61E8)($at)
  /* 04D31C 800D193C 03000008 */        jr $t8
  /* 04D320 800D1940 00000000 */       nop 
  glabel jtgt_ovl0_800D1944
  /* 04D324 800D1944 10000012 */         b .L800D1990
  /* 04D328 800D1948 24090001 */     addiu $t1, $zero, 1
  glabel jtgt_ovl0_800D194C
  /* 04D32C 800D194C 10000010 */         b .L800D1990
  /* 04D330 800D1950 24090002 */     addiu $t1, $zero, 2
  glabel jtgt_ovl0_800D1954
  /* 04D334 800D1954 1000000E */         b .L800D1990
  /* 04D338 800D1958 24090003 */     addiu $t1, $zero, 3
  glabel jtgt_ovl0_800D195C
  /* 04D33C 800D195C 1000000C */         b .L800D1990
  /* 04D340 800D1960 24090004 */     addiu $t1, $zero, 4
  glabel jtgt_ovl0_800D1964
  /* 04D344 800D1964 1000000A */         b .L800D1990
  /* 04D348 800D1968 24090005 */     addiu $t1, $zero, 5
  .L800D196C:
  /* 04D34C 800D196C 10000008 */         b .L800D1990
  /* 04D350 800D1970 24090006 */     addiu $t1, $zero, 6
  .L800D1974:
  /* 04D354 800D1974 10000006 */         b .L800D1990
  /* 04D358 800D1978 24090007 */     addiu $t1, $zero, 7
  .L800D197C:
  /* 04D35C 800D197C 10000004 */         b .L800D1990
  /* 04D360 800D1980 24090008 */     addiu $t1, $zero, 8
  glabel jtgt_ovl0_800D1984
  /* 04D364 800D1984 10000002 */         b .L800D1990
  /* 04D368 800D1988 00004825 */        or $t1, $zero, $zero
  .L800D198C:
  /* 04D36C 800D198C 00004825 */        or $t1, $zero, $zero
  .L800D1990:
  /* 04D370 800D1990 24010002 */     addiu $at, $zero, 2
  /* 04D374 800D1994 57C1003E */      bnel $fp, $at, .L800D1A90
  /* 04D378 800D1998 8FB902C8 */        lw $t9, 0x2c8($sp)
  /* 04D37C 800D199C 8FB901B4 */        lw $t9, 0x1b4($sp)
  /* 04D380 800D19A0 8FAF02D4 */        lw $t7, 0x2d4($sp)
  /* 04D384 800D19A4 532F002C */      beql $t9, $t7, .L800D1A58
  /* 04D388 800D19A8 8FAF02C8 */        lw $t7, 0x2c8($sp)
  /* 04D38C 800D19AC 8E220000 */        lw $v0, ($s1) # D_800465B0 + 0
  /* 04D390 800D19B0 3C18FD10 */       lui $t8, 0xfd10
  /* 04D394 800D19B4 03205025 */        or $t2, $t9, $zero
  /* 04D398 800D19B8 244E0008 */     addiu $t6, $v0, 8
  /* 04D39C 800D19BC AE2E0000 */        sw $t6, ($s1) # D_800465B0 + 0
  /* 04D3A0 800D19C0 AC590004 */        sw $t9, 4($v0)
  /* 04D3A4 800D19C4 AC580000 */        sw $t8, ($v0)
  /* 04D3A8 800D19C8 8E220000 */        lw $v0, ($s1) # D_800465B0 + 0
  /* 04D3AC 800D19CC 3C19E800 */       lui $t9, 0xe800
  /* 04D3B0 800D19D0 3C18F500 */       lui $t8, (0xF5000100 >> 16) # 4110418176
  /* 04D3B4 800D19D4 244F0008 */     addiu $t7, $v0, 8
  /* 04D3B8 800D19D8 AE2F0000 */        sw $t7, ($s1) # D_800465B0 + 0
  /* 04D3BC 800D19DC AC400004 */        sw $zero, 4($v0)
  /* 04D3C0 800D19E0 AC590000 */        sw $t9, ($v0)
  /* 04D3C4 800D19E4 8E220000 */        lw $v0, ($s1) # D_800465B0 + 0
  /* 04D3C8 800D19E8 3C0F0700 */       lui $t7, 0x700
  /* 04D3CC 800D19EC 37180100 */       ori $t8, $t8, (0xF5000100 & 0xFFFF) # 4110418176
  /* 04D3D0 800D19F0 244E0008 */     addiu $t6, $v0, 8
  /* 04D3D4 800D19F4 AE2E0000 */        sw $t6, ($s1) # D_800465B0 + 0
  /* 04D3D8 800D19F8 AC4F0004 */        sw $t7, 4($v0)
  /* 04D3DC 800D19FC AC580000 */        sw $t8, ($v0)
  /* 04D3E0 800D1A00 8E220000 */        lw $v0, ($s1) # D_800465B0 + 0
  /* 04D3E4 800D1A04 3C0EE600 */       lui $t6, 0xe600
  /* 04D3E8 800D1A08 3C0FF000 */       lui $t7, 0xf000
  /* 04D3EC 800D1A0C 24590008 */     addiu $t9, $v0, 8
  /* 04D3F0 800D1A10 AE390000 */        sw $t9, ($s1) # D_800465B0 + 0
  /* 04D3F4 800D1A14 AC400004 */        sw $zero, 4($v0)
  /* 04D3F8 800D1A18 AC4E0000 */        sw $t6, ($v0)
  /* 04D3FC 800D1A1C 8E220000 */        lw $v0, ($s1) # D_800465B0 + 0
  /* 04D400 800D1A20 3C19073F */       lui $t9, (0x73FC000 >> 16) # 121618432
  /* 04D404 800D1A24 3739C000 */       ori $t9, $t9, (0x73FC000 & 0xFFFF) # 121618432
  /* 04D408 800D1A28 24580008 */     addiu $t8, $v0, 8
  /* 04D40C 800D1A2C AE380000 */        sw $t8, ($s1) # D_800465B0 + 0
  /* 04D410 800D1A30 AC590004 */        sw $t9, 4($v0)
  /* 04D414 800D1A34 AC4F0000 */        sw $t7, ($v0)
  /* 04D418 800D1A38 8E220000 */        lw $v0, ($s1) # D_800465B0 + 0
  /* 04D41C 800D1A3C 3C18E700 */       lui $t8, 0xe700
  /* 04D420 800D1A40 244E0008 */     addiu $t6, $v0, 8
  /* 04D424 800D1A44 AE2E0000 */        sw $t6, ($s1) # D_800465B0 + 0
  /* 04D428 800D1A48 AC400004 */        sw $zero, 4($v0)
  /* 04D42C 800D1A4C AC580000 */        sw $t8, ($v0)
  /* 04D430 800D1A50 AFAA02D4 */        sw $t2, 0x2d4($sp)
  /* 04D434 800D1A54 8FAF02C8 */        lw $t7, 0x2c8($sp)
  .L800D1A58:
  /* 04D438 800D1A58 24010001 */     addiu $at, $zero, 1
  /* 04D43C 800D1A5C 3C0EE300 */       lui $t6, (0xE3001001 >> 16) # 3808432129
  /* 04D440 800D1A60 11E10015 */       beq $t7, $at, .L800D1AB8
  /* 04D444 800D1A64 35CE1001 */       ori $t6, $t6, (0xE3001001 & 0xFFFF) # 3808432129
  /* 04D448 800D1A68 8E220000 */        lw $v0, ($s1) # D_800465B0 + 0
  /* 04D44C 800D1A6C 34188000 */       ori $t8, $zero, 0x8000
  /* 04D450 800D1A70 240F0001 */     addiu $t7, $zero, 1
  /* 04D454 800D1A74 24590008 */     addiu $t9, $v0, 8
  /* 04D458 800D1A78 AE390000 */        sw $t9, ($s1) # D_800465B0 + 0
  /* 04D45C 800D1A7C AC580004 */        sw $t8, 4($v0)
  /* 04D460 800D1A80 AC4E0000 */        sw $t6, ($v0)
  /* 04D464 800D1A84 1000000C */         b .L800D1AB8
  /* 04D468 800D1A88 AFAF02C8 */        sw $t7, 0x2c8($sp)
  /* 04D46C 800D1A8C 8FB902C8 */        lw $t9, 0x2c8($sp)
  .L800D1A90:
  /* 04D470 800D1A90 5320000A */      beql $t9, $zero, .L800D1ABC
  /* 04D474 800D1A94 8FAF01B8 */        lw $t7, 0x1b8($sp)
  /* 04D478 800D1A98 8E220000 */        lw $v0, ($s1) # D_800465B0 + 0
  /* 04D47C 800D1A9C 3C18E300 */       lui $t8, (0xE3001001 >> 16) # 3808432129
  /* 04D480 800D1AA0 37181001 */       ori $t8, $t8, (0xE3001001 & 0xFFFF) # 3808432129
  /* 04D484 800D1AA4 244E0008 */     addiu $t6, $v0, 8
  /* 04D488 800D1AA8 AE2E0000 */        sw $t6, ($s1) # D_800465B0 + 0
  /* 04D48C 800D1AAC AC400004 */        sw $zero, 4($v0)
  /* 04D490 800D1AB0 AC580000 */        sw $t8, ($v0)
  /* 04D494 800D1AB4 AFA002C8 */        sw $zero, 0x2c8($sp)
  .L800D1AB8:
  /* 04D498 800D1AB8 8FAF01B8 */        lw $t7, 0x1b8($sp)
  .L800D1ABC:
  /* 04D49C 800D1ABC 51F40206 */      beql $t7, $s4, .L800D22D8
  /* 04D4A0 800D1AC0 8E220000 */        lw $v0, ($s1) # D_800465B0 + 0
  /* 04D4A4 800D1AC4 1160000C */      beqz $t3, .L800D1AF8
  /* 04D4A8 800D1AC8 3C080010 */       lui $t0, 0x10
  /* 04D4AC 800D1ACC 24010001 */     addiu $at, $zero, 1
  /* 04D4B0 800D1AD0 11610087 */       beq $t3, $at, .L800D1CF0
  /* 04D4B4 800D1AD4 3C080010 */       lui $t0, 0x10
  /* 04D4B8 800D1AD8 24010002 */     addiu $at, $zero, 2
  /* 04D4BC 800D1ADC 11610104 */       beq $t3, $at, .L800D1EF0
  /* 04D4C0 800D1AE0 3C080010 */       lui $t0, 0x10
  /* 04D4C4 800D1AE4 24010003 */     addiu $at, $zero, 3
  /* 04D4C8 800D1AE8 1161017D */       beq $t3, $at, .L800D20E0
  /* 04D4CC 800D1AEC 3C080018 */       lui $t0, 0x18
  /* 04D4D0 800D1AF0 100001F8 */         b .L800D22D4
  /* 04D4D4 800D1AF4 8FB401B8 */        lw $s4, 0x1b8($sp)
  .L800D1AF8:
  /* 04D4D8 800D1AF8 8E240000 */        lw $a0, ($s1) # D_800465B0 + 0
  /* 04D4DC 800D1AFC 33C30007 */      andi $v1, $fp, 7
  /* 04D4E0 800D1B00 00031D40 */       sll $v1, $v1, 0x15
  /* 04D4E4 800D1B04 3C01FD00 */       lui $at, 0xfd00
  /* 04D4E8 800D1B08 00617025 */        or $t6, $v1, $at
  /* 04D4EC 800D1B0C 24990008 */     addiu $t9, $a0, 8
  /* 04D4F0 800D1B10 AE390000 */        sw $t9, ($s1) # D_800465B0 + 0
  /* 04D4F4 800D1B14 01C8C025 */        or $t8, $t6, $t0
  /* 04D4F8 800D1B18 AC980000 */        sw $t8, ($a0)
  /* 04D4FC 800D1B1C 8FAF01B8 */        lw $t7, 0x1b8($sp)
  /* 04D500 800D1B20 3C01F500 */       lui $at, 0xf500
  /* 04D504 800D1B24 00619025 */        or $s2, $v1, $at
  /* 04D508 800D1B28 AC8F0004 */        sw $t7, 4($a0)
  /* 04D50C 800D1B2C 8E250000 */        lw $a1, ($s1) # D_800465B0 + 0
  /* 04D510 800D1B30 02487025 */        or $t6, $s2, $t0
  /* 04D514 800D1B34 32EA0003 */      andi $t2, $s7, 3
  /* 04D518 800D1B38 24B90008 */     addiu $t9, $a1, 8
  /* 04D51C 800D1B3C AE390000 */        sw $t9, ($s1) # D_800465B0 + 0
  /* 04D520 800D1B40 ACAE0000 */        sw $t6, ($a1)
  /* 04D524 800D1B44 8FAC01E8 */        lw $t4, 0x1e8($sp)
  /* 04D528 800D1B48 000A5480 */       sll $t2, $t2, 0x12
  /* 04D52C 800D1B4C 3C010700 */       lui $at, 0x700
  /* 04D530 800D1B50 312B000F */      andi $t3, $t1, 0xf
  /* 04D534 800D1B54 000B5B80 */       sll $t3, $t3, 0xe
  /* 04D538 800D1B58 0141C025 */        or $t8, $t2, $at
  /* 04D53C 800D1B5C 318C0003 */      andi $t4, $t4, 3
  /* 04D540 800D1B60 000C6200 */       sll $t4, $t4, 8
  /* 04D544 800D1B64 030B7825 */        or $t7, $t8, $t3
  /* 04D548 800D1B68 320D000F */      andi $t5, $s0, 0xf
  /* 04D54C 800D1B6C 02750019 */     multu $s3, $s5
  /* 04D550 800D1B70 000D6900 */       sll $t5, $t5, 4
  /* 04D554 800D1B74 01ECC825 */        or $t9, $t7, $t4
  /* 04D558 800D1B78 032D7025 */        or $t6, $t9, $t5
  /* 04D55C 800D1B7C ACAE0004 */        sw $t6, 4($a1)
  /* 04D560 800D1B80 8E260000 */        lw $a2, ($s1) # D_800465B0 + 0
  /* 04D564 800D1B84 3C0FE600 */       lui $t7, 0xe600
  /* 04D568 800D1B88 3C0EF300 */       lui $t6, 0xf300
  /* 04D56C 800D1B8C 24D80008 */     addiu $t8, $a2, 8
  /* 04D570 800D1B90 AE380000 */        sw $t8, ($s1) # D_800465B0 + 0
  /* 04D574 800D1B94 ACC00004 */        sw $zero, 4($a2)
  /* 04D578 800D1B98 ACCF0000 */        sw $t7, ($a2)
  /* 04D57C 800D1B9C 8E340000 */        lw $s4, ($s1) # D_800465B0 + 0
  /* 04D580 800D1BA0 0000F812 */      mflo $ra
  /* 04D584 800D1BA4 27E70003 */     addiu $a3, $ra, 3
  /* 04D588 800D1BA8 00073883 */       sra $a3, $a3, 2
  /* 04D58C 800D1BAC 24E7FFFF */     addiu $a3, $a3, -1
  /* 04D590 800D1BB0 26990008 */     addiu $t9, $s4, 8
  /* 04D594 800D1BB4 AE390000 */        sw $t9, ($s1) # D_800465B0 + 0
  /* 04D598 800D1BB8 28E107FF */      slti $at, $a3, 0x7ff
  /* 04D59C 800D1BBC 10200003 */      beqz $at, .L800D1BCC
  /* 04D5A0 800D1BC0 AE8E0000 */        sw $t6, ($s4)
  /* 04D5A4 800D1BC4 10000002 */         b .L800D1BD0
  /* 04D5A8 800D1BC8 00E04025 */        or $t0, $a3, $zero
  .L800D1BCC:
  /* 04D5AC 800D1BCC 240807FF */     addiu $t0, $zero, 0x7ff
  .L800D1BD0:
  /* 04D5B0 800D1BD0 06610003 */      bgez $s3, .L800D1BE0
  /* 04D5B4 800D1BD4 00131103 */       sra $v0, $s3, 4
  /* 04D5B8 800D1BD8 2661000F */     addiu $at, $s3, 0xf
  /* 04D5BC 800D1BDC 00011103 */       sra $v0, $at, 4
  .L800D1BE0:
  /* 04D5C0 800D1BE0 1C400003 */      bgtz $v0, .L800D1BF0
  /* 04D5C4 800D1BE4 00403825 */        or $a3, $v0, $zero
  /* 04D5C8 800D1BE8 10000001 */         b .L800D1BF0
  /* 04D5CC 800D1BEC 24070001 */     addiu $a3, $zero, 1
  .L800D1BF0:
  /* 04D5D0 800D1BF0 1C400003 */      bgtz $v0, .L800D1C00
  /* 04D5D4 800D1BF4 24F807FF */     addiu $t8, $a3, 0x7ff
  /* 04D5D8 800D1BF8 10000002 */         b .L800D1C04
  /* 04D5DC 800D1BFC 24030001 */     addiu $v1, $zero, 1
  .L800D1C00:
  /* 04D5E0 800D1C00 00401825 */        or $v1, $v0, $zero
  .L800D1C04:
  /* 04D5E4 800D1C04 0303001A */       div $zero, $t8, $v1
  /* 04D5E8 800D1C08 14600002 */      bnez $v1, .L800D1C14
  /* 04D5EC 800D1C0C 00000000 */       nop 
  /* 04D5F0 800D1C10 0007000D */     break 7
  .L800D1C14:
  /* 04D5F4 800D1C14 2401FFFF */     addiu $at, $zero, -1
  /* 04D5F8 800D1C18 14610004 */       bne $v1, $at, .L800D1C2C
  /* 04D5FC 800D1C1C 3C018000 */       lui $at, 0x8000
  /* 04D600 800D1C20 17010002 */       bne $t8, $at, .L800D1C2C
  /* 04D604 800D1C24 00000000 */       nop 
  /* 04D608 800D1C28 0006000D */     break 6
  .L800D1C2C:
  /* 04D60C 800D1C2C 00007812 */      mflo $t7
  /* 04D610 800D1C30 31F90FFF */      andi $t9, $t7, 0xfff
  /* 04D614 800D1C34 3C010700 */       lui $at, 0x700
  /* 04D618 800D1C38 31180FFF */      andi $t8, $t0, 0xfff
  /* 04D61C 800D1C3C 00187B00 */       sll $t7, $t8, 0xc
  /* 04D620 800D1C40 03217025 */        or $t6, $t9, $at
  /* 04D624 800D1C44 01CFC825 */        or $t9, $t6, $t7
  /* 04D628 800D1C48 AE990004 */        sw $t9, 4($s4)
  /* 04D62C 800D1C4C 8E220000 */        lw $v0, ($s1) # D_800465B0 + 0
  /* 04D630 800D1C50 3C0EE700 */       lui $t6, 0xe700
  /* 04D634 800D1C54 0013C843 */       sra $t9, $s3, 1
  /* 04D638 800D1C58 24580008 */     addiu $t8, $v0, 8
  /* 04D63C 800D1C5C AE380000 */        sw $t8, ($s1) # D_800465B0 + 0
  /* 04D640 800D1C60 AC400004 */        sw $zero, 4($v0)
  /* 04D644 800D1C64 AC4E0000 */        sw $t6, ($v0)
  /* 04D648 800D1C68 00402025 */        or $a0, $v0, $zero
  /* 04D64C 800D1C6C 8E220000 */        lw $v0, ($s1) # D_800465B0 + 0
  /* 04D650 800D1C70 27380007 */     addiu $t8, $t9, 7
  /* 04D654 800D1C74 001870C3 */       sra $t6, $t8, 3
  /* 04D658 800D1C78 244F0008 */     addiu $t7, $v0, 8
  /* 04D65C 800D1C7C AE2F0000 */        sw $t7, ($s1) # D_800465B0 + 0
  /* 04D660 800D1C80 31CF01FF */      andi $t7, $t6, 0x1ff
  /* 04D664 800D1C84 000FCA40 */       sll $t9, $t7, 9
  /* 04D668 800D1C88 014B7025 */        or $t6, $t2, $t3
  /* 04D66C 800D1C8C 01CC7825 */        or $t7, $t6, $t4
  /* 04D670 800D1C90 0259C025 */        or $t8, $s2, $t9
  /* 04D674 800D1C94 01EDC825 */        or $t9, $t7, $t5
  /* 04D678 800D1C98 AC590004 */        sw $t9, 4($v0)
  /* 04D67C 800D1C9C AC580000 */        sw $t8, ($v0)
  /* 04D680 800D1CA0 00402825 */        or $a1, $v0, $zero
  /* 04D684 800D1CA4 8E220000 */        lw $v0, ($s1) # D_800465B0 + 0
  /* 04D688 800D1CA8 266FFFFF */     addiu $t7, $s3, -1
  /* 04D68C 800D1CAC 000FC880 */       sll $t9, $t7, 2
  /* 04D690 800D1CB0 24580008 */     addiu $t8, $v0, 8
  /* 04D694 800D1CB4 AE380000 */        sw $t8, ($s1) # D_800465B0 + 0
  /* 04D698 800D1CB8 33380FFF */      andi $t8, $t9, 0xfff
  /* 04D69C 800D1CBC 3C0EF200 */       lui $t6, 0xf200
  /* 04D6A0 800D1CC0 26AFFFFF */     addiu $t7, $s5, -1
  /* 04D6A4 800D1CC4 AC4E0000 */        sw $t6, ($v0)
  /* 04D6A8 800D1CC8 00187300 */       sll $t6, $t8, 0xc
  /* 04D6AC 800D1CCC 000FC880 */       sll $t9, $t7, 2
  /* 04D6B0 800D1CD0 33380FFF */      andi $t8, $t9, 0xfff
  /* 04D6B4 800D1CD4 01D87825 */        or $t7, $t6, $t8
  /* 04D6B8 800D1CD8 2BE11000 */      slti $at, $ra, 0x1000
  /* 04D6BC 800D1CDC AC4F0004 */        sw $t7, 4($v0)
  /* 04D6C0 800D1CE0 1420017B */      bnez $at, .L800D22D0
  /* 04D6C4 800D1CE4 00403025 */        or $a2, $v0, $zero
  /* 04D6C8 800D1CE8 10000179 */         b .L800D22D0
  /* 04D6CC 800D1CEC AFA002D4 */        sw $zero, 0x2d4($sp)
  .L800D1CF0:
  /* 04D6D0 800D1CF0 8E240000 */        lw $a0, ($s1) # D_800465B0 + 0
  /* 04D6D4 800D1CF4 33C30007 */      andi $v1, $fp, 7
  /* 04D6D8 800D1CF8 00031D40 */       sll $v1, $v1, 0x15
  /* 04D6DC 800D1CFC 3C01FD00 */       lui $at, 0xfd00
  /* 04D6E0 800D1D00 00617025 */        or $t6, $v1, $at
  /* 04D6E4 800D1D04 24990008 */     addiu $t9, $a0, 8
  /* 04D6E8 800D1D08 AE390000 */        sw $t9, ($s1) # D_800465B0 + 0
  /* 04D6EC 800D1D0C 01C8C025 */        or $t8, $t6, $t0
  /* 04D6F0 800D1D10 AC980000 */        sw $t8, ($a0)
  /* 04D6F4 800D1D14 8FAF01B8 */        lw $t7, 0x1b8($sp)
  /* 04D6F8 800D1D18 3C01F500 */       lui $at, 0xf500
  /* 04D6FC 800D1D1C 00619025 */        or $s2, $v1, $at
  /* 04D700 800D1D20 AC8F0004 */        sw $t7, 4($a0)
  /* 04D704 800D1D24 8E250000 */        lw $a1, ($s1) # D_800465B0 + 0
  /* 04D708 800D1D28 02487025 */        or $t6, $s2, $t0
  /* 04D70C 800D1D2C 32EA0003 */      andi $t2, $s7, 3
  /* 04D710 800D1D30 24B90008 */     addiu $t9, $a1, 8
  /* 04D714 800D1D34 AE390000 */        sw $t9, ($s1) # D_800465B0 + 0
  /* 04D718 800D1D38 ACAE0000 */        sw $t6, ($a1)
  /* 04D71C 800D1D3C 8FAC01E8 */        lw $t4, 0x1e8($sp)
  /* 04D720 800D1D40 000A5480 */       sll $t2, $t2, 0x12
  /* 04D724 800D1D44 3C010700 */       lui $at, 0x700
  /* 04D728 800D1D48 312B000F */      andi $t3, $t1, 0xf
  /* 04D72C 800D1D4C 000B5B80 */       sll $t3, $t3, 0xe
  /* 04D730 800D1D50 0141C025 */        or $t8, $t2, $at
  /* 04D734 800D1D54 318C0003 */      andi $t4, $t4, 3
  /* 04D738 800D1D58 000C6200 */       sll $t4, $t4, 8
  /* 04D73C 800D1D5C 030B7825 */        or $t7, $t8, $t3
  /* 04D740 800D1D60 320D000F */      andi $t5, $s0, 0xf
  /* 04D744 800D1D64 02750019 */     multu $s3, $s5
  /* 04D748 800D1D68 000D6900 */       sll $t5, $t5, 4
  /* 04D74C 800D1D6C 01ECC825 */        or $t9, $t7, $t4
  /* 04D750 800D1D70 032D7025 */        or $t6, $t9, $t5
  /* 04D754 800D1D74 ACAE0004 */        sw $t6, 4($a1)
  /* 04D758 800D1D78 8E260000 */        lw $a2, ($s1) # D_800465B0 + 0
  /* 04D75C 800D1D7C 3C0FE600 */       lui $t7, 0xe600
  /* 04D760 800D1D80 3C0EF300 */       lui $t6, 0xf300
  /* 04D764 800D1D84 24D80008 */     addiu $t8, $a2, 8
  /* 04D768 800D1D88 AE380000 */        sw $t8, ($s1) # D_800465B0 + 0
  /* 04D76C 800D1D8C ACC00004 */        sw $zero, 4($a2)
  /* 04D770 800D1D90 ACCF0000 */        sw $t7, ($a2)
  /* 04D774 800D1D94 8E340000 */        lw $s4, ($s1) # D_800465B0 + 0
  /* 04D778 800D1D98 0000F812 */      mflo $ra
  /* 04D77C 800D1D9C 27E70001 */     addiu $a3, $ra, 1
  /* 04D780 800D1DA0 00073843 */       sra $a3, $a3, 1
  /* 04D784 800D1DA4 24E7FFFF */     addiu $a3, $a3, -1
  /* 04D788 800D1DA8 26990008 */     addiu $t9, $s4, 8
  /* 04D78C 800D1DAC AE390000 */        sw $t9, ($s1) # D_800465B0 + 0
  /* 04D790 800D1DB0 28E107FF */      slti $at, $a3, 0x7ff
  /* 04D794 800D1DB4 10200003 */      beqz $at, .L800D1DC4
  /* 04D798 800D1DB8 AE8E0000 */        sw $t6, ($s4)
  /* 04D79C 800D1DBC 10000002 */         b .L800D1DC8
  /* 04D7A0 800D1DC0 00E04025 */        or $t0, $a3, $zero
  .L800D1DC4:
  /* 04D7A4 800D1DC4 240807FF */     addiu $t0, $zero, 0x7ff
  .L800D1DC8:
  /* 04D7A8 800D1DC8 02604825 */        or $t1, $s3, $zero
  /* 04D7AC 800D1DCC 05210003 */      bgez $t1, .L800D1DDC
  /* 04D7B0 800D1DD0 000910C3 */       sra $v0, $t1, 3
  /* 04D7B4 800D1DD4 25210007 */     addiu $at, $t1, 7
  /* 04D7B8 800D1DD8 000110C3 */       sra $v0, $at, 3
  .L800D1DDC:
  /* 04D7BC 800D1DDC 1C400003 */      bgtz $v0, .L800D1DEC
  /* 04D7C0 800D1DE0 00403825 */        or $a3, $v0, $zero
  /* 04D7C4 800D1DE4 10000001 */         b .L800D1DEC
  /* 04D7C8 800D1DE8 24070001 */     addiu $a3, $zero, 1
  .L800D1DEC:
  /* 04D7CC 800D1DEC 1C400003 */      bgtz $v0, .L800D1DFC
  /* 04D7D0 800D1DF0 24F807FF */     addiu $t8, $a3, 0x7ff
  /* 04D7D4 800D1DF4 10000002 */         b .L800D1E00
  /* 04D7D8 800D1DF8 24030001 */     addiu $v1, $zero, 1
  .L800D1DFC:
  /* 04D7DC 800D1DFC 00401825 */        or $v1, $v0, $zero
  .L800D1E00:
  /* 04D7E0 800D1E00 0303001A */       div $zero, $t8, $v1
  /* 04D7E4 800D1E04 14600002 */      bnez $v1, .L800D1E10
  /* 04D7E8 800D1E08 00000000 */       nop 
  /* 04D7EC 800D1E0C 0007000D */     break 7
  .L800D1E10:
  /* 04D7F0 800D1E10 2401FFFF */     addiu $at, $zero, -1
  /* 04D7F4 800D1E14 14610004 */       bne $v1, $at, .L800D1E28
  /* 04D7F8 800D1E18 3C018000 */       lui $at, 0x8000
  /* 04D7FC 800D1E1C 17010002 */       bne $t8, $at, .L800D1E28
  /* 04D800 800D1E20 00000000 */       nop 
  /* 04D804 800D1E24 0006000D */     break 6
  .L800D1E28:
  /* 04D808 800D1E28 00007812 */      mflo $t7
  /* 04D80C 800D1E2C 31F90FFF */      andi $t9, $t7, 0xfff
  /* 04D810 800D1E30 3C010700 */       lui $at, 0x700
  /* 04D814 800D1E34 31180FFF */      andi $t8, $t0, 0xfff
  /* 04D818 800D1E38 00187B00 */       sll $t7, $t8, 0xc
  /* 04D81C 800D1E3C 03217025 */        or $t6, $t9, $at
  /* 04D820 800D1E40 01CFC825 */        or $t9, $t6, $t7
  /* 04D824 800D1E44 AE990004 */        sw $t9, 4($s4)
  /* 04D828 800D1E48 8E220000 */        lw $v0, ($s1) # D_800465B0 + 0
  /* 04D82C 800D1E4C 3C0EE700 */       lui $t6, 0xe700
  /* 04D830 800D1E50 3C010008 */       lui $at, 8
  /* 04D834 800D1E54 24580008 */     addiu $t8, $v0, 8
  /* 04D838 800D1E58 AE380000 */        sw $t8, ($s1) # D_800465B0 + 0
  /* 04D83C 800D1E5C AC400004 */        sw $zero, 4($v0)
  /* 04D840 800D1E60 AC4E0000 */        sw $t6, ($v0)
  /* 04D844 800D1E64 00402025 */        or $a0, $v0, $zero
  /* 04D848 800D1E68 8E220000 */        lw $v0, ($s1) # D_800465B0 + 0
  /* 04D84C 800D1E6C 25380007 */     addiu $t8, $t1, 7
  /* 04D850 800D1E70 001870C3 */       sra $t6, $t8, 3
  /* 04D854 800D1E74 244F0008 */     addiu $t7, $v0, 8
  /* 04D858 800D1E78 AE2F0000 */        sw $t7, ($s1) # D_800465B0 + 0
  /* 04D85C 800D1E7C 31CF01FF */      andi $t7, $t6, 0x1ff
  /* 04D860 800D1E80 000FC240 */       sll $t8, $t7, 9
  /* 04D864 800D1E84 0241C825 */        or $t9, $s2, $at
  /* 04D868 800D1E88 03387025 */        or $t6, $t9, $t8
  /* 04D86C 800D1E8C 014B7825 */        or $t7, $t2, $t3
  /* 04D870 800D1E90 01ECC825 */        or $t9, $t7, $t4
  /* 04D874 800D1E94 032DC025 */        or $t8, $t9, $t5
  /* 04D878 800D1E98 AC580004 */        sw $t8, 4($v0)
  /* 04D87C 800D1E9C AC4E0000 */        sw $t6, ($v0)
  /* 04D880 800D1EA0 00402825 */        or $a1, $v0, $zero
  /* 04D884 800D1EA4 8E220000 */        lw $v0, ($s1) # D_800465B0 + 0
  /* 04D888 800D1EA8 2679FFFF */     addiu $t9, $s3, -1
  /* 04D88C 800D1EAC 0019C080 */       sll $t8, $t9, 2
  /* 04D890 800D1EB0 244E0008 */     addiu $t6, $v0, 8
  /* 04D894 800D1EB4 AE2E0000 */        sw $t6, ($s1) # D_800465B0 + 0
  /* 04D898 800D1EB8 330E0FFF */      andi $t6, $t8, 0xfff
  /* 04D89C 800D1EBC 3C0FF200 */       lui $t7, 0xf200
  /* 04D8A0 800D1EC0 26B9FFFF */     addiu $t9, $s5, -1
  /* 04D8A4 800D1EC4 AC4F0000 */        sw $t7, ($v0)
  /* 04D8A8 800D1EC8 000E7B00 */       sll $t7, $t6, 0xc
  /* 04D8AC 800D1ECC 0019C080 */       sll $t8, $t9, 2
  /* 04D8B0 800D1ED0 330E0FFF */      andi $t6, $t8, 0xfff
  /* 04D8B4 800D1ED4 01EEC825 */        or $t9, $t7, $t6
  /* 04D8B8 800D1ED8 2BE10800 */      slti $at, $ra, 0x800
  /* 04D8BC 800D1EDC AC590004 */        sw $t9, 4($v0)
  /* 04D8C0 800D1EE0 142000FB */      bnez $at, .L800D22D0
  /* 04D8C4 800D1EE4 00403025 */        or $a2, $v0, $zero
  /* 04D8C8 800D1EE8 100000F9 */         b .L800D22D0
  /* 04D8CC 800D1EEC AFA002D4 */        sw $zero, 0x2d4($sp)
  .L800D1EF0:
  /* 04D8D0 800D1EF0 8E240000 */        lw $a0, ($s1) # D_800465B0 + 0
  /* 04D8D4 800D1EF4 33C30007 */      andi $v1, $fp, 7
  /* 04D8D8 800D1EF8 00031D40 */       sll $v1, $v1, 0x15
  /* 04D8DC 800D1EFC 3C01FD00 */       lui $at, 0xfd00
  /* 04D8E0 800D1F00 00617825 */        or $t7, $v1, $at
  /* 04D8E4 800D1F04 24980008 */     addiu $t8, $a0, 8
  /* 04D8E8 800D1F08 AE380000 */        sw $t8, ($s1) # D_800465B0 + 0
  /* 04D8EC 800D1F0C 01E87025 */        or $t6, $t7, $t0
  /* 04D8F0 800D1F10 AC8E0000 */        sw $t6, ($a0)
  /* 04D8F4 800D1F14 8FB901B8 */        lw $t9, 0x1b8($sp)
  /* 04D8F8 800D1F18 3C01F500 */       lui $at, 0xf500
  /* 04D8FC 800D1F1C 00617825 */        or $t7, $v1, $at
  /* 04D900 800D1F20 AC990004 */        sw $t9, 4($a0)
  /* 04D904 800D1F24 8E250000 */        lw $a1, ($s1) # D_800465B0 + 0
  /* 04D908 800D1F28 01E89025 */        or $s2, $t7, $t0
  /* 04D90C 800D1F2C 32EA0003 */      andi $t2, $s7, 3
  /* 04D910 800D1F30 24B80008 */     addiu $t8, $a1, 8
  /* 04D914 800D1F34 AE380000 */        sw $t8, ($s1) # D_800465B0 + 0
  /* 04D918 800D1F38 ACB20000 */        sw $s2, ($a1)
  /* 04D91C 800D1F3C 8FAC01E8 */        lw $t4, 0x1e8($sp)
  /* 04D920 800D1F40 000A5480 */       sll $t2, $t2, 0x12
  /* 04D924 800D1F44 3C010700 */       lui $at, 0x700
  /* 04D928 800D1F48 312B000F */      andi $t3, $t1, 0xf
  /* 04D92C 800D1F4C 000B5B80 */       sll $t3, $t3, 0xe
  /* 04D930 800D1F50 01417025 */        or $t6, $t2, $at
  /* 04D934 800D1F54 318C0003 */      andi $t4, $t4, 3
  /* 04D938 800D1F58 000C6200 */       sll $t4, $t4, 8
  /* 04D93C 800D1F5C 01CBC825 */        or $t9, $t6, $t3
  /* 04D940 800D1F60 320D000F */      andi $t5, $s0, 0xf
  /* 04D944 800D1F64 000D6900 */       sll $t5, $t5, 4
  /* 04D948 800D1F68 032CC025 */        or $t8, $t9, $t4
  /* 04D94C 800D1F6C 030D7825 */        or $t7, $t8, $t5
  /* 04D950 800D1F70 02750019 */     multu $s3, $s5
  /* 04D954 800D1F74 ACAF0004 */        sw $t7, 4($a1)
  /* 04D958 800D1F78 8E260000 */        lw $a2, ($s1) # D_800465B0 + 0
  /* 04D95C 800D1F7C 3C19E600 */       lui $t9, 0xe600
  /* 04D960 800D1F80 3C0FF300 */       lui $t7, 0xf300
  /* 04D964 800D1F84 24CE0008 */     addiu $t6, $a2, 8
  /* 04D968 800D1F88 AE2E0000 */        sw $t6, ($s1) # D_800465B0 + 0
  /* 04D96C 800D1F8C ACC00004 */        sw $zero, 4($a2)
  /* 04D970 800D1F90 ACD90000 */        sw $t9, ($a2)
  /* 04D974 800D1F94 8E340000 */        lw $s4, ($s1) # D_800465B0 + 0
  /* 04D978 800D1F98 0000F812 */      mflo $ra
  /* 04D97C 800D1F9C 27E7FFFF */     addiu $a3, $ra, -1
  /* 04D980 800D1FA0 26980008 */     addiu $t8, $s4, 8
  /* 04D984 800D1FA4 AE380000 */        sw $t8, ($s1) # D_800465B0 + 0
  /* 04D988 800D1FA8 28E107FF */      slti $at, $a3, 0x7ff
  /* 04D98C 800D1FAC 10200003 */      beqz $at, .L800D1FBC
  /* 04D990 800D1FB0 AE8F0000 */        sw $t7, ($s4)
  /* 04D994 800D1FB4 10000002 */         b .L800D1FC0
  /* 04D998 800D1FB8 00E04025 */        or $t0, $a3, $zero
  .L800D1FBC:
  /* 04D99C 800D1FBC 240807FF */     addiu $t0, $zero, 0x7ff
  .L800D1FC0:
  /* 04D9A0 800D1FC0 00134840 */       sll $t1, $s3, 1
  /* 04D9A4 800D1FC4 05210003 */      bgez $t1, .L800D1FD4
  /* 04D9A8 800D1FC8 000910C3 */       sra $v0, $t1, 3
  /* 04D9AC 800D1FCC 25210007 */     addiu $at, $t1, 7
  /* 04D9B0 800D1FD0 000110C3 */       sra $v0, $at, 3
  .L800D1FD4:
  /* 04D9B4 800D1FD4 1C400003 */      bgtz $v0, .L800D1FE4
  /* 04D9B8 800D1FD8 00403825 */        or $a3, $v0, $zero
  /* 04D9BC 800D1FDC 10000001 */         b .L800D1FE4
  /* 04D9C0 800D1FE0 24070001 */     addiu $a3, $zero, 1
  .L800D1FE4:
  /* 04D9C4 800D1FE4 1C400003 */      bgtz $v0, .L800D1FF4
  /* 04D9C8 800D1FE8 24EE07FF */     addiu $t6, $a3, 0x7ff
  /* 04D9CC 800D1FEC 10000002 */         b .L800D1FF8
  /* 04D9D0 800D1FF0 24030001 */     addiu $v1, $zero, 1
  .L800D1FF4:
  /* 04D9D4 800D1FF4 00401825 */        or $v1, $v0, $zero
  .L800D1FF8:
  /* 04D9D8 800D1FF8 01C3001A */       div $zero, $t6, $v1
  /* 04D9DC 800D1FFC 14600002 */      bnez $v1, .L800D2008
  /* 04D9E0 800D2000 00000000 */       nop 
  /* 04D9E4 800D2004 0007000D */     break 7
  .L800D2008:
  /* 04D9E8 800D2008 2401FFFF */     addiu $at, $zero, -1
  /* 04D9EC 800D200C 14610004 */       bne $v1, $at, .L800D2020
  /* 04D9F0 800D2010 3C018000 */       lui $at, 0x8000
  /* 04D9F4 800D2014 15C10002 */       bne $t6, $at, .L800D2020
  /* 04D9F8 800D2018 00000000 */       nop 
  /* 04D9FC 800D201C 0006000D */     break 6
  .L800D2020:
  /* 04DA00 800D2020 0000C812 */      mflo $t9
  /* 04DA04 800D2024 33380FFF */      andi $t8, $t9, 0xfff
  /* 04DA08 800D2028 3C010700 */       lui $at, 0x700
  /* 04DA0C 800D202C 310E0FFF */      andi $t6, $t0, 0xfff
  /* 04DA10 800D2030 000ECB00 */       sll $t9, $t6, 0xc
  /* 04DA14 800D2034 03017825 */        or $t7, $t8, $at
  /* 04DA18 800D2038 01F9C025 */        or $t8, $t7, $t9
  /* 04DA1C 800D203C AE980004 */        sw $t8, 4($s4)
  /* 04DA20 800D2040 8E220000 */        lw $v0, ($s1) # D_800465B0 + 0
  /* 04DA24 800D2044 3C0FE700 */       lui $t7, 0xe700
  /* 04DA28 800D2048 25380007 */     addiu $t8, $t1, 7
  /* 04DA2C 800D204C 244E0008 */     addiu $t6, $v0, 8
  /* 04DA30 800D2050 AE2E0000 */        sw $t6, ($s1) # D_800465B0 + 0
  /* 04DA34 800D2054 AC400004 */        sw $zero, 4($v0)
  /* 04DA38 800D2058 AC4F0000 */        sw $t7, ($v0)
  /* 04DA3C 800D205C 00402025 */        or $a0, $v0, $zero
  /* 04DA40 800D2060 8E220000 */        lw $v0, ($s1) # D_800465B0 + 0
  /* 04DA44 800D2064 001870C3 */       sra $t6, $t8, 3
  /* 04DA48 800D2068 31CF01FF */      andi $t7, $t6, 0x1ff
  /* 04DA4C 800D206C 24590008 */     addiu $t9, $v0, 8
  /* 04DA50 800D2070 AE390000 */        sw $t9, ($s1) # D_800465B0 + 0
  /* 04DA54 800D2074 000FCA40 */       sll $t9, $t7, 9
  /* 04DA58 800D2078 014B7025 */        or $t6, $t2, $t3
  /* 04DA5C 800D207C 01CC7825 */        or $t7, $t6, $t4
  /* 04DA60 800D2080 0259C025 */        or $t8, $s2, $t9
  /* 04DA64 800D2084 01EDC825 */        or $t9, $t7, $t5
  /* 04DA68 800D2088 AC590004 */        sw $t9, 4($v0)
  /* 04DA6C 800D208C AC580000 */        sw $t8, ($v0)
  /* 04DA70 800D2090 00402825 */        or $a1, $v0, $zero
  /* 04DA74 800D2094 8E220000 */        lw $v0, ($s1) # D_800465B0 + 0
  /* 04DA78 800D2098 266FFFFF */     addiu $t7, $s3, -1
  /* 04DA7C 800D209C 000FC880 */       sll $t9, $t7, 2
  /* 04DA80 800D20A0 24580008 */     addiu $t8, $v0, 8
  /* 04DA84 800D20A4 AE380000 */        sw $t8, ($s1) # D_800465B0 + 0
  /* 04DA88 800D20A8 33380FFF */      andi $t8, $t9, 0xfff
  /* 04DA8C 800D20AC 3C0EF200 */       lui $t6, 0xf200
  /* 04DA90 800D20B0 26AFFFFF */     addiu $t7, $s5, -1
  /* 04DA94 800D20B4 AC4E0000 */        sw $t6, ($v0)
  /* 04DA98 800D20B8 00187300 */       sll $t6, $t8, 0xc
  /* 04DA9C 800D20BC 000FC880 */       sll $t9, $t7, 2
  /* 04DAA0 800D20C0 33380FFF */      andi $t8, $t9, 0xfff
  /* 04DAA4 800D20C4 01D87825 */        or $t7, $t6, $t8
  /* 04DAA8 800D20C8 2BE10400 */      slti $at, $ra, 0x400
  /* 04DAAC 800D20CC AC4F0004 */        sw $t7, 4($v0)
  /* 04DAB0 800D20D0 1420007F */      bnez $at, .L800D22D0
  /* 04DAB4 800D20D4 00403025 */        or $a2, $v0, $zero
  /* 04DAB8 800D20D8 1000007D */         b .L800D22D0
  /* 04DABC 800D20DC AFA002D4 */        sw $zero, 0x2d4($sp)
  .L800D20E0:
  /* 04DAC0 800D20E0 8E240000 */        lw $a0, ($s1) # D_800465B0 + 0
  /* 04DAC4 800D20E4 33C30007 */      andi $v1, $fp, 7
  /* 04DAC8 800D20E8 00031D40 */       sll $v1, $v1, 0x15
  /* 04DACC 800D20EC 3C01FD00 */       lui $at, 0xfd00
  /* 04DAD0 800D20F0 00617025 */        or $t6, $v1, $at
  /* 04DAD4 800D20F4 24990008 */     addiu $t9, $a0, 8
  /* 04DAD8 800D20F8 AE390000 */        sw $t9, ($s1) # D_800465B0 + 0
  /* 04DADC 800D20FC 01C8C025 */        or $t8, $t6, $t0
  /* 04DAE0 800D2100 AC980000 */        sw $t8, ($a0)
  /* 04DAE4 800D2104 8FAF01B8 */        lw $t7, 0x1b8($sp)
  /* 04DAE8 800D2108 3C01F500 */       lui $at, 0xf500
  /* 04DAEC 800D210C 00617025 */        or $t6, $v1, $at
  /* 04DAF0 800D2110 AC8F0004 */        sw $t7, 4($a0)
  /* 04DAF4 800D2114 8E250000 */        lw $a1, ($s1) # D_800465B0 + 0
  /* 04DAF8 800D2118 01C89025 */        or $s2, $t6, $t0
  /* 04DAFC 800D211C 32EA0003 */      andi $t2, $s7, 3
  /* 04DB00 800D2120 24B90008 */     addiu $t9, $a1, 8
  /* 04DB04 800D2124 AE390000 */        sw $t9, ($s1) # D_800465B0 + 0
  /* 04DB08 800D2128 ACB20000 */        sw $s2, ($a1)
  /* 04DB0C 800D212C 8FAC01E8 */        lw $t4, 0x1e8($sp)
  /* 04DB10 800D2130 000A5480 */       sll $t2, $t2, 0x12
  /* 04DB14 800D2134 3C010700 */       lui $at, 0x700
  /* 04DB18 800D2138 312B000F */      andi $t3, $t1, 0xf
  /* 04DB1C 800D213C 000B5B80 */       sll $t3, $t3, 0xe
  /* 04DB20 800D2140 0141C025 */        or $t8, $t2, $at
  /* 04DB24 800D2144 318C0003 */      andi $t4, $t4, 3
  /* 04DB28 800D2148 000C6200 */       sll $t4, $t4, 8
  /* 04DB2C 800D214C 030B7825 */        or $t7, $t8, $t3
  /* 04DB30 800D2150 320D000F */      andi $t5, $s0, 0xf
  /* 04DB34 800D2154 000D6900 */       sll $t5, $t5, 4
  /* 04DB38 800D2158 01ECC825 */        or $t9, $t7, $t4
  /* 04DB3C 800D215C 032D7025 */        or $t6, $t9, $t5
  /* 04DB40 800D2160 02750019 */     multu $s3, $s5
  /* 04DB44 800D2164 ACAE0004 */        sw $t6, 4($a1)
  /* 04DB48 800D2168 8E260000 */        lw $a2, ($s1) # D_800465B0 + 0
  /* 04DB4C 800D216C 3C0FE600 */       lui $t7, 0xe600
  /* 04DB50 800D2170 3C0EF300 */       lui $t6, 0xf300
  /* 04DB54 800D2174 24D80008 */     addiu $t8, $a2, 8
  /* 04DB58 800D2178 AE380000 */        sw $t8, ($s1) # D_800465B0 + 0
  /* 04DB5C 800D217C ACC00004 */        sw $zero, 4($a2)
  /* 04DB60 800D2180 ACCF0000 */        sw $t7, ($a2)
  /* 04DB64 800D2184 8E340000 */        lw $s4, ($s1) # D_800465B0 + 0
  /* 04DB68 800D2188 0000F812 */      mflo $ra
  /* 04DB6C 800D218C 27E7FFFF */     addiu $a3, $ra, -1
  /* 04DB70 800D2190 26990008 */     addiu $t9, $s4, 8
  /* 04DB74 800D2194 AE390000 */        sw $t9, ($s1) # D_800465B0 + 0
  /* 04DB78 800D2198 28E107FF */      slti $at, $a3, 0x7ff
  /* 04DB7C 800D219C 10200003 */      beqz $at, .L800D21AC
  /* 04DB80 800D21A0 AE8E0000 */        sw $t6, ($s4)
  /* 04DB84 800D21A4 10000002 */         b .L800D21B0
  /* 04DB88 800D21A8 00E04025 */        or $t0, $a3, $zero
  .L800D21AC:
  /* 04DB8C 800D21AC 240807FF */     addiu $t0, $zero, 0x7ff
  .L800D21B0:
  /* 04DB90 800D21B0 00131080 */       sll $v0, $s3, 2
  /* 04DB94 800D21B4 04410002 */      bgez $v0, .L800D21C0
  /* 04DB98 800D21B8 00400821 */      addu $at, $v0, $zero
  /* 04DB9C 800D21BC 24410007 */     addiu $at, $v0, 7
  .L800D21C0:
  /* 04DBA0 800D21C0 000110C3 */       sra $v0, $at, 3
  /* 04DBA4 800D21C4 1C400003 */      bgtz $v0, .L800D21D4
  /* 04DBA8 800D21C8 00403825 */        or $a3, $v0, $zero
  /* 04DBAC 800D21CC 10000001 */         b .L800D21D4
  /* 04DBB0 800D21D0 24070001 */     addiu $a3, $zero, 1
  .L800D21D4:
  /* 04DBB4 800D21D4 1C400003 */      bgtz $v0, .L800D21E4
  /* 04DBB8 800D21D8 24F807FF */     addiu $t8, $a3, 0x7ff
  /* 04DBBC 800D21DC 10000002 */         b .L800D21E8
  /* 04DBC0 800D21E0 24030001 */     addiu $v1, $zero, 1
  .L800D21E4:
  /* 04DBC4 800D21E4 00401825 */        or $v1, $v0, $zero
  .L800D21E8:
  /* 04DBC8 800D21E8 0303001A */       div $zero, $t8, $v1
  /* 04DBCC 800D21EC 14600002 */      bnez $v1, .L800D21F8
  /* 04DBD0 800D21F0 00000000 */       nop 
  /* 04DBD4 800D21F4 0007000D */     break 7
  .L800D21F8:
  /* 04DBD8 800D21F8 2401FFFF */     addiu $at, $zero, -1
  /* 04DBDC 800D21FC 14610004 */       bne $v1, $at, .L800D2210
  /* 04DBE0 800D2200 3C018000 */       lui $at, 0x8000
  /* 04DBE4 800D2204 17010002 */       bne $t8, $at, .L800D2210
  /* 04DBE8 800D2208 00000000 */       nop 
  /* 04DBEC 800D220C 0006000D */     break 6
  .L800D2210:
  /* 04DBF0 800D2210 00007812 */      mflo $t7
  /* 04DBF4 800D2214 31F90FFF */      andi $t9, $t7, 0xfff
  /* 04DBF8 800D2218 3C010700 */       lui $at, 0x700
  /* 04DBFC 800D221C 31180FFF */      andi $t8, $t0, 0xfff
  /* 04DC00 800D2220 00187B00 */       sll $t7, $t8, 0xc
  /* 04DC04 800D2224 03217025 */        or $t6, $t9, $at
  /* 04DC08 800D2228 01CFC825 */        or $t9, $t6, $t7
  /* 04DC0C 800D222C AE990004 */        sw $t9, 4($s4)
  /* 04DC10 800D2230 8E220000 */        lw $v0, ($s1) # D_800465B0 + 0
  /* 04DC14 800D2234 3C0EE700 */       lui $t6, 0xe700
  /* 04DC18 800D2238 0013C840 */       sll $t9, $s3, 1
  /* 04DC1C 800D223C 24580008 */     addiu $t8, $v0, 8
  /* 04DC20 800D2240 AE380000 */        sw $t8, ($s1) # D_800465B0 + 0
  /* 04DC24 800D2244 AC400004 */        sw $zero, 4($v0)
  /* 04DC28 800D2248 AC4E0000 */        sw $t6, ($v0)
  /* 04DC2C 800D224C 00402025 */        or $a0, $v0, $zero
  /* 04DC30 800D2250 8E220000 */        lw $v0, ($s1) # D_800465B0 + 0
  /* 04DC34 800D2254 27380007 */     addiu $t8, $t9, 7
  /* 04DC38 800D2258 001870C3 */       sra $t6, $t8, 3
  /* 04DC3C 800D225C 244F0008 */     addiu $t7, $v0, 8
  /* 04DC40 800D2260 AE2F0000 */        sw $t7, ($s1) # D_800465B0 + 0
  /* 04DC44 800D2264 31CF01FF */      andi $t7, $t6, 0x1ff
  /* 04DC48 800D2268 000FCA40 */       sll $t9, $t7, 9
  /* 04DC4C 800D226C 014B7025 */        or $t6, $t2, $t3
  /* 04DC50 800D2270 01CC7825 */        or $t7, $t6, $t4
  /* 04DC54 800D2274 0259C025 */        or $t8, $s2, $t9
  /* 04DC58 800D2278 01EDC825 */        or $t9, $t7, $t5
  /* 04DC5C 800D227C AC590004 */        sw $t9, 4($v0)
  /* 04DC60 800D2280 AC580000 */        sw $t8, ($v0)
  /* 04DC64 800D2284 00402825 */        or $a1, $v0, $zero
  /* 04DC68 800D2288 8E220000 */        lw $v0, ($s1) # D_800465B0 + 0
  /* 04DC6C 800D228C 266FFFFF */     addiu $t7, $s3, -1
  /* 04DC70 800D2290 000FC880 */       sll $t9, $t7, 2
  /* 04DC74 800D2294 24580008 */     addiu $t8, $v0, 8
  /* 04DC78 800D2298 AE380000 */        sw $t8, ($s1) # D_800465B0 + 0
  /* 04DC7C 800D229C 33380FFF */      andi $t8, $t9, 0xfff
  /* 04DC80 800D22A0 3C0EF200 */       lui $t6, 0xf200
  /* 04DC84 800D22A4 26AFFFFF */     addiu $t7, $s5, -1
  /* 04DC88 800D22A8 AC4E0000 */        sw $t6, ($v0)
  /* 04DC8C 800D22AC 00187300 */       sll $t6, $t8, 0xc
  /* 04DC90 800D22B0 000FC880 */       sll $t9, $t7, 2
  /* 04DC94 800D22B4 33380FFF */      andi $t8, $t9, 0xfff
  /* 04DC98 800D22B8 01D87825 */        or $t7, $t6, $t8
  /* 04DC9C 800D22BC 2BE10200 */      slti $at, $ra, 0x200
  /* 04DCA0 800D22C0 AC4F0004 */        sw $t7, 4($v0)
  /* 04DCA4 800D22C4 14200002 */      bnez $at, .L800D22D0
  /* 04DCA8 800D22C8 00403025 */        or $a2, $v0, $zero
  /* 04DCAC 800D22CC AFA002D4 */        sw $zero, 0x2d4($sp)
  .L800D22D0:
  /* 04DCB0 800D22D0 8FB401B8 */        lw $s4, 0x1b8($sp)
  .L800D22D4:
  /* 04DCB4 800D22D4 8E220000 */        lw $v0, ($s1) # D_800465B0 + 0
  .L800D22D8:
  /* 04DCB8 800D22D8 3C0EFA00 */       lui $t6, 0xfa00
  /* 04DCBC 800D22DC 3C014200 */       lui $at, (0x42000000 >> 16) # 32.0
  /* 04DCC0 800D22E0 24590008 */     addiu $t9, $v0, 8
  /* 04DCC4 800D22E4 AE390000 */        sw $t9, ($s1) # D_800465B0 + 0
  /* 04DCC8 800D22E8 AC4E0000 */        sw $t6, ($v0)
  /* 04DCCC 800D22EC 92CF0048 */       lbu $t7, 0x48($s6)
  /* 04DCD0 800D22F0 92D80049 */       lbu $t8, 0x49($s6)
  /* 04DCD4 800D22F4 44813000 */      mtc1 $at, $f6 # 32.0 to cop1
  /* 04DCD8 800D22F8 000FCE00 */       sll $t9, $t7, 0x18
  /* 04DCDC 800D22FC 00187C00 */       sll $t7, $t8, 0x10
  /* 04DCE0 800D2300 032F7025 */        or $t6, $t9, $t7
  /* 04DCE4 800D2304 92D9004A */       lbu $t9, 0x4a($s6)
  /* 04DCE8 800D2308 4606D202 */     mul.s $f8, $f26, $f6
  /* 04DCEC 800D230C 4600A18D */ trunc.w.s $f6, $f20
  /* 04DCF0 800D2310 00197A00 */       sll $t7, $t9, 8
  /* 04DCF4 800D2314 01CFC025 */        or $t8, $t6, $t7
  /* 04DCF8 800D2318 92CE004B */       lbu $t6, 0x4b($s6)
  /* 04DCFC 800D231C 3C01E400 */       lui $at, 0xe400
  /* 04DD00 800D2320 030E7825 */        or $t7, $t8, $t6
  /* 04DD04 800D2324 AC4F0004 */        sw $t7, 4($v0)
  /* 04DD08 800D2328 96C40006 */       lhu $a0, 6($s6)
  /* 04DD0C 800D232C 4600428D */ trunc.w.s $f10, $f8
  /* 04DD10 800D2330 30990080 */      andi $t9, $a0, 0x80
  /* 04DD14 800D2334 1320001B */      beqz $t9, .L800D23A4
  /* 04DD18 800D2338 4600B20D */ trunc.w.s $f8, $f22
  /* 04DD1C 800D233C 8E220000 */        lw $v0, ($s1) # D_800465B0 + 0
  /* 04DD20 800D2340 3C0EFB00 */       lui $t6, 0xfb00
  /* 04DD24 800D2344 24580008 */     addiu $t8, $v0, 8
  /* 04DD28 800D2348 AE380000 */        sw $t8, ($s1) # D_800465B0 + 0
  /* 04DD2C 800D234C AC4E0000 */        sw $t6, ($v0)
  /* 04DD30 800D2350 92D90050 */       lbu $t9, 0x50($s6)
  /* 04DD34 800D2354 92CF0051 */       lbu $t7, 0x51($s6)
  /* 04DD38 800D2358 0019C600 */       sll $t8, $t9, 0x18
  /* 04DD3C 800D235C 000FCC00 */       sll $t9, $t7, 0x10
  /* 04DD40 800D2360 03197025 */        or $t6, $t8, $t9
  /* 04DD44 800D2364 92D80052 */       lbu $t8, 0x52($s6)
  /* 04DD48 800D2368 0018CA00 */       sll $t9, $t8, 8
  /* 04DD4C 800D236C 01D97825 */        or $t7, $t6, $t9
  /* 04DD50 800D2370 92CE0053 */       lbu $t6, 0x53($s6)
  /* 04DD54 800D2374 01EEC825 */        or $t9, $t7, $t6
  /* 04DD58 800D2378 AC590004 */        sw $t9, 4($v0)
  /* 04DD5C 800D237C 8E220000 */        lw $v0, ($s1) # D_800465B0 + 0
  /* 04DD60 800D2380 3C0E5566 */       lui $t6, (0x5566DB6D >> 16) # 1432804205
  /* 04DD64 800D2384 3C0FFC30 */       lui $t7, (0xFC30B261 >> 16) # 4231049825
  /* 04DD68 800D2388 24580008 */     addiu $t8, $v0, 8
  /* 04DD6C 800D238C AE380000 */        sw $t8, ($s1) # D_800465B0 + 0
  /* 04DD70 800D2390 35EFB261 */       ori $t7, $t7, (0xFC30B261 & 0xFFFF) # 4231049825
  /* 04DD74 800D2394 35CEDB6D */       ori $t6, $t6, (0x5566DB6D & 0xFFFF) # 1432804205
  /* 04DD78 800D2398 AC4E0004 */        sw $t6, 4($v0)
  /* 04DD7C 800D239C 10000016 */         b .L800D23F8
  /* 04DD80 800D23A0 AC4F0000 */        sw $t7, ($v0)
  .L800D23A4:
  /* 04DD84 800D23A4 30990100 */      andi $t9, $a0, 0x100
  /* 04DD88 800D23A8 1320000B */      beqz $t9, .L800D23D8
  /* 04DD8C 800D23AC 3C18FC11 */       lui $t8, (0xFC119623 >> 16) # 4229010979
  /* 04DD90 800D23B0 8E220000 */        lw $v0, ($s1) # D_800465B0 + 0
  /* 04DD94 800D23B4 3C0FFC70 */       lui $t7, (0xFC7096E1 >> 16) # 4235237089
  /* 04DD98 800D23B8 3C0EFF2F */       lui $t6, (0xFF2FFFFF >> 16) # 4281335807
  /* 04DD9C 800D23BC 24580008 */     addiu $t8, $v0, 8
  /* 04DDA0 800D23C0 AE380000 */        sw $t8, ($s1) # D_800465B0 + 0
  /* 04DDA4 800D23C4 35CEFFFF */       ori $t6, $t6, (0xFF2FFFFF & 0xFFFF) # 4281335807
  /* 04DDA8 800D23C8 35EF96E1 */       ori $t7, $t7, (0xFC7096E1 & 0xFFFF) # 4235237089
  /* 04DDAC 800D23CC AC4F0000 */        sw $t7, ($v0)
  /* 04DDB0 800D23D0 10000009 */         b .L800D23F8
  /* 04DDB4 800D23D4 AC4E0004 */        sw $t6, 4($v0)
  .L800D23D8:
  /* 04DDB8 800D23D8 8E220000 */        lw $v0, ($s1) # D_800465B0 + 0
  /* 04DDBC 800D23DC 3C0FFF2F */       lui $t7, (0xFF2FFFFF >> 16) # 4281335807
  /* 04DDC0 800D23E0 35EFFFFF */       ori $t7, $t7, (0xFF2FFFFF & 0xFFFF) # 4281335807
  /* 04DDC4 800D23E4 24590008 */     addiu $t9, $v0, 8
  /* 04DDC8 800D23E8 AE390000 */        sw $t9, ($s1) # D_800465B0 + 0
  /* 04DDCC 800D23EC 37189623 */       ori $t8, $t8, (0xFC119623 & 0xFFFF) # 4229010979
  /* 04DDD0 800D23F0 AC580000 */        sw $t8, ($v0)
  /* 04DDD4 800D23F4 AC4F0004 */        sw $t7, 4($v0)
  .L800D23F8:
  /* 04DDD8 800D23F8 96C40006 */       lhu $a0, 6($s6)
  /* 04DDDC 800D23FC 8FB802CC */        lw $t8, 0x2cc($sp)
  /* 04DDE0 800D2400 308E0400 */      andi $t6, $a0, 0x400
  /* 04DDE4 800D2404 11C00003 */      beqz $t6, .L800D2414
  /* 04DDE8 800D2408 30990200 */      andi $t9, $a0, 0x200
  /* 04DDEC 800D240C 10000010 */         b .L800D2450
  /* 04DDF0 800D2410 24050003 */     addiu $a1, $zero, 3
  .L800D2414:
  /* 04DDF4 800D2414 13200003 */      beqz $t9, .L800D2424
  /* 04DDF8 800D2418 24050001 */     addiu $a1, $zero, 1
  /* 04DDFC 800D241C 10000002 */         b .L800D2428
  /* 04DE00 800D2420 92C40053 */       lbu $a0, 0x53($s6)
  .L800D2424:
  /* 04DE04 800D2424 24040008 */     addiu $a0, $zero, 8
  .L800D2428:
  /* 04DE08 800D2428 5304000A */      beql $t8, $a0, .L800D2454
  /* 04DE0C 800D242C 8FB802D0 */        lw $t8, 0x2d0($sp)
  /* 04DE10 800D2430 8E220000 */        lw $v0, ($s1) # D_800465B0 + 0
  /* 04DE14 800D2434 3C0EF900 */       lui $t6, 0xf900
  /* 04DE18 800D2438 309900FF */      andi $t9, $a0, 0xff
  /* 04DE1C 800D243C 244F0008 */     addiu $t7, $v0, 8
  /* 04DE20 800D2440 AE2F0000 */        sw $t7, ($s1) # D_800465B0 + 0
  /* 04DE24 800D2444 AC590004 */        sw $t9, 4($v0)
  /* 04DE28 800D2448 AC4E0000 */        sw $t6, ($v0)
  /* 04DE2C 800D244C AFA402CC */        sw $a0, 0x2cc($sp)
  .L800D2450:
  /* 04DE30 800D2450 8FB802D0 */        lw $t8, 0x2d0($sp)
  .L800D2454:
  /* 04DE34 800D2454 00003825 */        or $a3, $zero, $zero
  /* 04DE38 800D2458 00001825 */        or $v1, $zero, $zero
  /* 04DE3C 800D245C 5305000A */      beql $t8, $a1, .L800D2488
  /* 04DE40 800D2460 8E220000 */        lw $v0, ($s1) # D_800465B0 + 0
  /* 04DE44 800D2464 8E220000 */        lw $v0, ($s1) # D_800465B0 + 0
  /* 04DE48 800D2468 3C0EE200 */       lui $t6, (0xE2001E01 >> 16) # 3791658497
  /* 04DE4C 800D246C 35CE1E01 */       ori $t6, $t6, (0xE2001E01 & 0xFFFF) # 3791658497
  /* 04DE50 800D2470 244F0008 */     addiu $t7, $v0, 8
  /* 04DE54 800D2474 AE2F0000 */        sw $t7, ($s1) # D_800465B0 + 0
  /* 04DE58 800D2478 AC450004 */        sw $a1, 4($v0)
  /* 04DE5C 800D247C AC4E0000 */        sw $t6, ($v0)
  /* 04DE60 800D2480 AFA502D0 */        sw $a1, 0x2d0($sp)
  /* 04DE64 800D2484 8E220000 */        lw $v0, ($s1) # D_800465B0 + 0
  .L800D2488:
  /* 04DE68 800D2488 4600910D */ trunc.w.s $f4, $f18
  /* 04DE6C 800D248C 3C18EE00 */       lui $t8, 0xee00
  /* 04DE70 800D2490 24590008 */     addiu $t9, $v0, 8
  /* 04DE74 800D2494 AE390000 */        sw $t9, ($s1) # D_800465B0 + 0
  /* 04DE78 800D2498 44195000 */      mfc1 $t9, $f10
  /* 04DE7C 800D249C AC580000 */        sw $t8, ($v0)
  /* 04DE80 800D24A0 44042000 */      mfc1 $a0, $f4
  /* 04DE84 800D24A4 0019C400 */       sll $t8, $t9, 0x10
  /* 04DE88 800D24A8 AC580004 */        sw $t8, 4($v0)
  /* 04DE8C 800D24AC 8E260000 */        lw $a2, ($s1) # D_800465B0 + 0
  /* 04DE90 800D24B0 00042400 */       sll $a0, $a0, 0x10
  /* 04DE94 800D24B4 00042403 */       sra $a0, $a0, 0x10
  /* 04DE98 800D24B8 24CF0008 */     addiu $t7, $a2, 8
  /* 04DE9C 800D24BC 18800003 */      blez $a0, .L800D24CC
  /* 04DEA0 800D24C0 AE2F0000 */        sw $t7, ($s1) # D_800465B0 + 0
  /* 04DEA4 800D24C4 10000001 */         b .L800D24CC
  /* 04DEA8 800D24C8 00803825 */        or $a3, $a0, $zero
  .L800D24CC:
  /* 04DEAC 800D24CC 44023000 */      mfc1 $v0, $f6
  /* 04DEB0 800D24D0 30EE0FFF */      andi $t6, $a3, 0xfff
  /* 04DEB4 800D24D4 44044000 */      mfc1 $a0, $f8
  /* 04DEB8 800D24D8 00021400 */       sll $v0, $v0, 0x10
  /* 04DEBC 800D24DC 00021403 */       sra $v0, $v0, 0x10
  /* 04DEC0 800D24E0 18400003 */      blez $v0, .L800D24F0
  /* 04DEC4 800D24E4 000ECB00 */       sll $t9, $t6, 0xc
  /* 04DEC8 800D24E8 10000001 */         b .L800D24F0
  /* 04DECC 800D24EC 00401825 */        or $v1, $v0, $zero
  .L800D24F0:
  /* 04DED0 800D24F0 30780FFF */      andi $t8, $v1, 0xfff
  /* 04DED4 800D24F4 03017825 */        or $t7, $t8, $at
  /* 04DED8 800D24F8 00042400 */       sll $a0, $a0, 0x10
  /* 04DEDC 800D24FC 00042403 */       sra $a0, $a0, 0x10
  /* 04DEE0 800D2500 01F9C025 */        or $t8, $t7, $t9
  /* 04DEE4 800D2504 18800003 */      blez $a0, .L800D2514
  /* 04DEE8 800D2508 ACD80000 */        sw $t8, ($a2)
  /* 04DEEC 800D250C 10000002 */         b .L800D2518
  /* 04DEF0 800D2510 00803825 */        or $a3, $a0, $zero
  .L800D2514:
  /* 04DEF4 800D2514 00003825 */        or $a3, $zero, $zero
  .L800D2518:
  /* 04DEF8 800D2518 4600C28D */ trunc.w.s $f10, $f24
  /* 04DEFC 800D251C 30F80FFF */      andi $t8, $a3, 0xfff
  /* 04DF00 800D2520 00187300 */       sll $t6, $t8, 0xc
  /* 04DF04 800D2524 00001825 */        or $v1, $zero, $zero
  /* 04DF08 800D2528 44085000 */      mfc1 $t0, $f10
  /* 04DF0C 800D252C 00000000 */       nop 
  /* 04DF10 800D2530 00082C00 */       sll $a1, $t0, 0x10
  /* 04DF14 800D2534 00052C03 */       sra $a1, $a1, 0x10
  /* 04DF18 800D2538 18A00003 */      blez $a1, .L800D2548
  /* 04DF1C 800D253C 00000000 */       nop 
  /* 04DF20 800D2540 10000001 */         b .L800D2548
  /* 04DF24 800D2544 00A01825 */        or $v1, $a1, $zero
  .L800D2548:
  /* 04DF28 800D2548 30790FFF */      andi $t9, $v1, 0xfff
  /* 04DF2C 800D254C 032E7825 */        or $t7, $t9, $t6
  /* 04DF30 800D2550 ACCF0004 */        sw $t7, 4($a2)
  /* 04DF34 800D2554 8E290000 */        lw $t1, ($s1) # D_800465B0 + 0
  /* 04DF38 800D2558 3C19E100 */       lui $t9, 0xe100
  /* 04DF3C 800D255C 00003025 */        or $a2, $zero, $zero
  /* 04DF40 800D2560 25380008 */     addiu $t8, $t1, 8
  /* 04DF44 800D2564 AE380000 */        sw $t8, ($s1) # D_800465B0 + 0
  /* 04DF48 800D2568 04810019 */      bgez $a0, .L800D25D0
  /* 04DF4C 800D256C AD390000 */        sw $t9, ($t1)
  /* 04DF50 800D2570 87A301F2 */        lh $v1, 0x1f2($sp)
  /* 04DF54 800D2574 0461000B */      bgez $v1, .L800D25A4
  /* 04DF58 800D2578 00000000 */       nop 
  /* 04DF5C 800D257C 00830019 */     multu $a0, $v1
  /* 04DF60 800D2580 00001825 */        or $v1, $zero, $zero
  /* 04DF64 800D2584 00001012 */      mflo $v0
  /* 04DF68 800D2588 000211C3 */       sra $v0, $v0, 7
  /* 04DF6C 800D258C 18400003 */      blez $v0, .L800D259C
  /* 04DF70 800D2590 00000000 */       nop 
  /* 04DF74 800D2594 1000000E */         b .L800D25D0
  /* 04DF78 800D2598 00403025 */        or $a2, $v0, $zero
  .L800D259C:
  /* 04DF7C 800D259C 1000000C */         b .L800D25D0
  /* 04DF80 800D25A0 00603025 */        or $a2, $v1, $zero
  .L800D25A4:
  /* 04DF84 800D25A4 00830019 */     multu $a0, $v1
  /* 04DF88 800D25A8 00001825 */        or $v1, $zero, $zero
  /* 04DF8C 800D25AC 00001012 */      mflo $v0
  /* 04DF90 800D25B0 000211C3 */       sra $v0, $v0, 7
  /* 04DF94 800D25B4 04410003 */      bgez $v0, .L800D25C4
  /* 04DF98 800D25B8 00000000 */       nop 
  /* 04DF9C 800D25BC 10000001 */         b .L800D25C4
  /* 04DFA0 800D25C0 00401825 */        or $v1, $v0, $zero
  .L800D25C4:
  /* 04DFA4 800D25C4 00601025 */        or $v0, $v1, $zero
  /* 04DFA8 800D25C8 10000001 */         b .L800D25D0
  /* 04DFAC 800D25CC 00403025 */        or $a2, $v0, $zero
  .L800D25D0:
  /* 04DFB0 800D25D0 05010019 */      bgez $t0, .L800D2638
  /* 04DFB4 800D25D4 8FAE020C */        lw $t6, 0x20c($sp)
  /* 04DFB8 800D25D8 87A301EE */        lh $v1, 0x1ee($sp)
  /* 04DFBC 800D25DC 0461000B */      bgez $v1, .L800D260C
  /* 04DFC0 800D25E0 00000000 */       nop 
  /* 04DFC4 800D25E4 00A30019 */     multu $a1, $v1
  /* 04DFC8 800D25E8 00004025 */        or $t0, $zero, $zero
  /* 04DFCC 800D25EC 00001012 */      mflo $v0
  /* 04DFD0 800D25F0 000211C3 */       sra $v0, $v0, 7
  /* 04DFD4 800D25F4 18400003 */      blez $v0, .L800D2604
  /* 04DFD8 800D25F8 00000000 */       nop 
  /* 04DFDC 800D25FC 1000000F */         b .L800D263C
  /* 04DFE0 800D2600 00401825 */        or $v1, $v0, $zero
  .L800D2604:
  /* 04DFE4 800D2604 1000000D */         b .L800D263C
  /* 04DFE8 800D2608 01001825 */        or $v1, $t0, $zero
  .L800D260C:
  /* 04DFEC 800D260C 00A30019 */     multu $a1, $v1
  /* 04DFF0 800D2610 00001825 */        or $v1, $zero, $zero
  /* 04DFF4 800D2614 00001012 */      mflo $v0
  /* 04DFF8 800D2618 000211C3 */       sra $v0, $v0, 7
  /* 04DFFC 800D261C 04410003 */      bgez $v0, .L800D262C
  /* 04E000 800D2620 00000000 */       nop 
  /* 04E004 800D2624 10000001 */         b .L800D262C
  /* 04E008 800D2628 00401825 */        or $v1, $v0, $zero
  .L800D262C:
  /* 04E00C 800D262C 00603825 */        or $a3, $v1, $zero
  /* 04E010 800D2630 10000002 */         b .L800D263C
  /* 04E014 800D2634 00E01825 */        or $v1, $a3, $zero
  .L800D2638:
  /* 04E018 800D2638 00001825 */        or $v1, $zero, $zero
  .L800D263C:
  /* 04E01C 800D263C 8FB90210 */        lw $t9, 0x210($sp)
  /* 04E020 800D2640 01C37823 */      subu $t7, $t6, $v1
  /* 04E024 800D2644 31F8FFFF */      andi $t8, $t7, 0xffff
  /* 04E028 800D2648 03267823 */      subu $t7, $t9, $a2
  /* 04E02C 800D264C 000FCC00 */       sll $t9, $t7, 0x10
  /* 04E030 800D2650 03197025 */        or $t6, $t8, $t9
  /* 04E034 800D2654 AD2E0004 */        sw $t6, 4($t1)
  /* 04E038 800D2658 8E220000 */        lw $v0, ($s1) # D_800465B0 + 0
  /* 04E03C 800D265C 3C18F100 */       lui $t8, 0xf100
  /* 04E040 800D2660 3C12800D */       lui $s2, %hi(D_ovl0_800D5D5C)
  /* 04E044 800D2664 244F0008 */     addiu $t7, $v0, 8
  /* 04E048 800D2668 AE2F0000 */        sw $t7, ($s1) # D_800465B0 + 0
  /* 04E04C 800D266C AC580000 */        sw $t8, ($v0)
  /* 04E050 800D2670 8FB801EC */        lw $t8, 0x1ec($sp)
  /* 04E054 800D2674 8FAE01F0 */        lw $t6, 0x1f0($sp)
  /* 04E058 800D2678 26525D5C */     addiu $s2, $s2, %lo(D_ovl0_800D5D5C)
  /* 04E05C 800D267C 3319FFFF */      andi $t9, $t8, 0xffff
  /* 04E060 800D2680 000E7C00 */       sll $t7, $t6, 0x10
  /* 04E064 800D2684 01F97025 */        or $t6, $t7, $t9
  /* 04E068 800D2688 27B50248 */     addiu $s5, $sp, 0x248
  /* 04E06C 800D268C AC4E0004 */        sw $t6, 4($v0)
  .L800D2690:
  /* 04E070 800D2690 8ED60000 */        lw $s6, ($s6)
  .L800D2694:
  /* 04E074 800D2694 56C0FB0C */      bnel $s6, $zero, .L800D12C8
  /* 04E078 800D2698 C6C40040 */      lwc1 $f4, 0x40($s6)
  /* 04E07C 800D269C 8FB801D4 */        lw $t8, 0x1d4($sp)
  .L800D26A0:
  /* 04E080 800D26A0 24010010 */     addiu $at, $zero, 0x10
  /* 04E084 800D26A4 8FB902C8 */        lw $t9, 0x2c8($sp)
  /* 04E088 800D26A8 270F0001 */     addiu $t7, $t8, 1
  /* 04E08C 800D26AC 15E1FAF1 */       bne $t7, $at, .L800D1274
  /* 04E090 800D26B0 AFAF01D4 */        sw $t7, 0x1d4($sp)
  /* 04E094 800D26B4 53200009 */      beql $t9, $zero, .L800D26DC
  /* 04E098 800D26B8 8FBF008C */        lw $ra, 0x8c($sp)
  /* 04E09C 800D26BC 8E220000 */        lw $v0, ($s1) # D_800465B0 + 0
  /* 04E0A0 800D26C0 3C18E300 */       lui $t8, (0xE3001001 >> 16) # 3808432129
  /* 04E0A4 800D26C4 37181001 */       ori $t8, $t8, (0xE3001001 & 0xFFFF) # 3808432129
  /* 04E0A8 800D26C8 244E0008 */     addiu $t6, $v0, 8
  /* 04E0AC 800D26CC AE2E0000 */        sw $t6, ($s1) # D_800465B0 + 0
  /* 04E0B0 800D26D0 AC400004 */        sw $zero, 4($v0)
  /* 04E0B4 800D26D4 AC580000 */        sw $t8, ($v0)
  /* 04E0B8 800D26D8 8FBF008C */        lw $ra, 0x8c($sp)
  .L800D26DC:
  /* 04E0BC 800D26DC D7B40038 */      ldc1 $f20, 0x38($sp)
  /* 04E0C0 800D26E0 D7B60040 */      ldc1 $f22, 0x40($sp)
  /* 04E0C4 800D26E4 D7B80048 */      ldc1 $f24, 0x48($sp)
  /* 04E0C8 800D26E8 D7BA0050 */      ldc1 $f26, 0x50($sp)
  /* 04E0CC 800D26EC D7BC0058 */      ldc1 $f28, 0x58($sp)
  /* 04E0D0 800D26F0 D7BE0060 */      ldc1 $f30, 0x60($sp)
  /* 04E0D4 800D26F4 8FB00068 */        lw $s0, 0x68($sp)
  /* 04E0D8 800D26F8 8FB1006C */        lw $s1, 0x6c($sp)
  /* 04E0DC 800D26FC 8FB20070 */        lw $s2, 0x70($sp)
  /* 04E0E0 800D2700 8FB30074 */        lw $s3, 0x74($sp)
  /* 04E0E4 800D2704 8FB40078 */        lw $s4, 0x78($sp)
  /* 04E0E8 800D2708 8FB5007C */        lw $s5, 0x7c($sp)
  /* 04E0EC 800D270C 8FB60080 */        lw $s6, 0x80($sp)
  /* 04E0F0 800D2710 8FB70084 */        lw $s7, 0x84($sp)
  /* 04E0F4 800D2714 8FBE0088 */        lw $fp, 0x88($sp)
  /* 04E0F8 800D2718 03E00008 */        jr $ra
  /* 04E0FC 800D271C 27BD02E0 */     addiu $sp, $sp, 0x2e0

  /* 04E100 800D2720 18800006 */      blez $a0, .L800D273C
  /* 04E104 800D2724 28810009 */      slti $at, $a0, 9
  /* 04E108 800D2728 10200004 */      beqz $at, .L800D273C
  /* 04E10C 800D272C 00047080 */       sll $t6, $a0, 2
  /* 04E110 800D2730 3C01800D */       lui $at, %hi(D_ovl0_800D639C)
  /* 04E114 800D2734 002E0821 */      addu $at, $at, $t6
  /* 04E118 800D2738 AC25639C */        sw $a1, %lo(D_ovl0_800D639C)($at)
  .L800D273C:
  /* 04E11C 800D273C 03E00008 */        jr $ra
  /* 04E120 800D2740 00000000 */       nop 

  /* 04E124 800D2744 3C01800D */       lui $at, %hi(D_ovl0_800D5D50)
  /* 04E128 800D2748 A0245D50 */        sb $a0, %lo(D_ovl0_800D5D50)($at)
  /* 04E12C 800D274C 3C01800D */       lui $at, %hi(D_ovl0_800D5D54)
  /* 04E130 800D2750 03E00008 */        jr $ra
  /* 04E134 800D2754 A0255D54 */        sb $a1, %lo(D_ovl0_800D5D54)($at)

glabel func_ovl0_800D2758
  /* 04E138 800D2758 27BDFFE0 */     addiu $sp, $sp, -0x20
  /* 04E13C 800D275C AFB10018 */        sw $s1, 0x18($sp)
  /* 04E140 800D2760 3C11800D */       lui $s1, %hi(D_ovl0_800D6398)
  /* 04E144 800D2764 AFB00014 */        sw $s0, 0x14($sp)
  /* 04E148 800D2768 3C03800D */       lui $v1, %hi(D_ovl0_800D639C)
  /* 04E14C 800D276C 2463639C */     addiu $v1, $v1, %lo(D_ovl0_800D639C)
  /* 04E150 800D2770 26316398 */     addiu $s1, $s1, %lo(D_ovl0_800D6398)
  /* 04E154 800D2774 2490FFFF */     addiu $s0, $a0, -1
  /* 04E158 800D2778 AFBF001C */        sw $ra, 0x1c($sp)
  /* 04E15C 800D277C AE200000 */        sw $zero, ($s1) # D_ovl0_800D6398 + 0
  /* 04E160 800D2780 0600000E */      bltz $s0, .L800D27BC
  /* 04E164 800D2784 AC600000 */        sw $zero, ($v1) # D_ovl0_800D639C + 0
  .L800D2788:
  /* 04E168 800D2788 2404005C */     addiu $a0, $zero, 0x5c
  /* 04E16C 800D278C 0C001260 */       jal func_80004980
  /* 04E170 800D2790 24050004 */     addiu $a1, $zero, 4
  /* 04E174 800D2794 54400004 */      bnel $v0, $zero, .L800D27A8
  /* 04E178 800D2798 8E2F0000 */        lw $t7, ($s1) # D_ovl0_800D6398 + 0
  /* 04E17C 800D279C 10000011 */         b .L800D27E4
  /* 04E180 800D27A0 00001025 */        or $v0, $zero, $zero
  /* 04E184 800D27A4 8E2F0000 */        lw $t7, ($s1) # D_ovl0_800D6398 + 0
  .L800D27A8:
  /* 04E188 800D27A8 2610FFFF */     addiu $s0, $s0, -1
  /* 04E18C 800D27AC 3C01800D */       lui $at, %hi(D_ovl0_800D6398)
  /* 04E190 800D27B0 AC4F0000 */        sw $t7, ($v0)
  /* 04E194 800D27B4 0601FFF4 */      bgez $s0, .L800D2788
  /* 04E198 800D27B8 AC226398 */        sw $v0, %lo(D_ovl0_800D6398)($at)
  .L800D27BC:
  /* 04E19C 800D27BC 3C01800D */       lui $at, %hi(D_ovl0_800D644A)
  /* 04E1A0 800D27C0 A420644A */        sh $zero, %lo(D_ovl0_800D644A)($at)
  /* 04E1A4 800D27C4 3C01800D */       lui $at, %hi(D_ovl0_800D6450)
  /* 04E1A8 800D27C8 3C05800D */       lui $a1, %hi(func_ovl0_800D2C4C)
  /* 04E1AC 800D27CC A4206450 */        sh $zero, %lo(D_ovl0_800D6450)($at)
  /* 04E1B0 800D27D0 24A52C4C */     addiu $a1, $a1, %lo(func_ovl0_800D2C4C)
  /* 04E1B4 800D27D4 2404FFF9 */     addiu $a0, $zero, -7
  /* 04E1B8 800D27D8 00003025 */        or $a2, $zero, $zero
  /* 04E1BC 800D27DC 0C00265A */       jal func_80009968
  /* 04E1C0 800D27E0 3C078000 */       lui $a3, 0x8000
  .L800D27E4:
  /* 04E1C4 800D27E4 8FBF001C */        lw $ra, 0x1c($sp)
  /* 04E1C8 800D27E8 8FB00014 */        lw $s0, 0x14($sp)
  /* 04E1CC 800D27EC 8FB10018 */        lw $s1, 0x18($sp)
  /* 04E1D0 800D27F0 03E00008 */        jr $ra
  /* 04E1D4 800D27F4 27BD0020 */     addiu $sp, $sp, 0x20

glabel func_ovl0_800D27F8
  /* 04E1D8 800D27F8 27BDFF08 */     addiu $sp, $sp, -0xf8
  /* 04E1DC 800D27FC AFB50038 */        sw $s5, 0x38($sp)
  /* 04E1E0 800D2800 27B500B8 */     addiu $s5, $sp, 0xb8
  /* 04E1E4 800D2804 AFBF0044 */        sw $ra, 0x44($sp)
  /* 04E1E8 800D2808 AFB30030 */        sw $s3, 0x30($sp)
  /* 04E1EC 800D280C AFA400F8 */        sw $a0, 0xf8($sp)
  /* 04E1F0 800D2810 00C09825 */        or $s3, $a2, $zero
  /* 04E1F4 800D2814 AFB70040 */        sw $s7, 0x40($sp)
  /* 04E1F8 800D2818 AFB6003C */        sw $s6, 0x3c($sp)
  /* 04E1FC 800D281C AFB40034 */        sw $s4, 0x34($sp)
  /* 04E200 800D2820 AFB2002C */        sw $s2, 0x2c($sp)
  /* 04E204 800D2824 AFB10028 */        sw $s1, 0x28($sp)
  /* 04E208 800D2828 AFB00024 */        sw $s0, 0x24($sp)
  /* 04E20C 800D282C F7B60018 */      sdc1 $f22, 0x18($sp)
  /* 04E210 800D2830 F7B40010 */      sdc1 $f20, 0x10($sp)
  /* 04E214 800D2834 AFA500FC */        sw $a1, 0xfc($sp)
  /* 04E218 800D2838 0C00CA90 */       jal guMtxIdentF
  /* 04E21C 800D283C 02A02025 */        or $a0, $s5, $zero
  /* 04E220 800D2840 3C013F80 */       lui $at, (0x3F800000 >> 16) # 1.0
  /* 04E224 800D2844 4481B000 */      mtc1 $at, $f22 # 1.0 to cop1
  /* 04E228 800D2848 4480A000 */      mtc1 $zero, $f20
  /* 04E22C 800D284C 24170002 */     addiu $s7, $zero, 2
  /* 04E230 800D2850 24160001 */     addiu $s6, $zero, 1
  /* 04E234 800D2854 27B40078 */     addiu $s4, $sp, 0x78
  /* 04E238 800D2858 24120003 */     addiu $s2, $zero, 3
  /* 04E23C 800D285C C6600040 */      lwc1 $f0, 0x40($s3)
  .L800D2860:
  /* 04E240 800D2860 02802025 */        or $a0, $s4, $zero
  /* 04E244 800D2864 4600B032 */    c.eq.s $f22, $f0
  /* 04E248 800D2868 00000000 */       nop 
  /* 04E24C 800D286C 4502000C */     bc1fl .L800D28A0
  /* 04E250 800D2870 44050000 */      mfc1 $a1, $f0
  /* 04E254 800D2874 C6640044 */      lwc1 $f4, 0x44($s3)
  /* 04E258 800D2878 4604B032 */    c.eq.s $f22, $f4
  /* 04E25C 800D287C 00000000 */       nop 
  /* 04E260 800D2880 45020007 */     bc1fl .L800D28A0
  /* 04E264 800D2884 44050000 */      mfc1 $a1, $f0
  /* 04E268 800D2888 C6660048 */      lwc1 $f6, 0x48($s3)
  /* 04E26C 800D288C 4606B032 */    c.eq.s $f22, $f6
  /* 04E270 800D2890 00000000 */       nop 
  /* 04E274 800D2894 4503000A */     bc1tl .L800D28C0
  /* 04E278 800D2898 C6600030 */      lwc1 $f0, 0x30($s3)
  /* 04E27C 800D289C 44050000 */      mfc1 $a1, $f0
  .L800D28A0:
  /* 04E280 800D28A0 8E660044 */        lw $a2, 0x44($s3)
  /* 04E284 800D28A4 0C006DBB */       jal func_8001B6EC
  /* 04E288 800D28A8 8E670048 */        lw $a3, 0x48($s3)
  /* 04E28C 800D28AC 02A02025 */        or $a0, $s5, $zero
  /* 04E290 800D28B0 02802825 */        or $a1, $s4, $zero
  /* 04E294 800D28B4 0C00D260 */       jal guMtxCatF
  /* 04E298 800D28B8 02A03025 */        or $a2, $s5, $zero
  /* 04E29C 800D28BC C6600030 */      lwc1 $f0, 0x30($s3)
  .L800D28C0:
  /* 04E2A0 800D28C0 02802025 */        or $a0, $s4, $zero
  /* 04E2A4 800D28C4 4600A032 */    c.eq.s $f20, $f0
  /* 04E2A8 800D28C8 00000000 */       nop 
  /* 04E2AC 800D28CC 4502000C */     bc1fl .L800D2900
  /* 04E2B0 800D28D0 44050000 */      mfc1 $a1, $f0
  /* 04E2B4 800D28D4 C6680034 */      lwc1 $f8, 0x34($s3)
  /* 04E2B8 800D28D8 4608A032 */    c.eq.s $f20, $f8
  /* 04E2BC 800D28DC 00000000 */       nop 
  /* 04E2C0 800D28E0 45020007 */     bc1fl .L800D2900
  /* 04E2C4 800D28E4 44050000 */      mfc1 $a1, $f0
  /* 04E2C8 800D28E8 C66A0038 */      lwc1 $f10, 0x38($s3)
  /* 04E2CC 800D28EC 460AA032 */    c.eq.s $f20, $f10
  /* 04E2D0 800D28F0 00000000 */       nop 
  /* 04E2D4 800D28F4 4503000A */     bc1tl .L800D2920
  /* 04E2D8 800D28F8 C660001C */      lwc1 $f0, 0x1c($s3)
  /* 04E2DC 800D28FC 44050000 */      mfc1 $a1, $f0
  .L800D2900:
  /* 04E2E0 800D2900 8E660034 */        lw $a2, 0x34($s3)
  /* 04E2E4 800D2904 0C006F7B */       jal func_8001BDEC
  /* 04E2E8 800D2908 8E670038 */        lw $a3, 0x38($s3)
  /* 04E2EC 800D290C 02A02025 */        or $a0, $s5, $zero
  /* 04E2F0 800D2910 02802825 */        or $a1, $s4, $zero
  /* 04E2F4 800D2914 0C00D260 */       jal guMtxCatF
  /* 04E2F8 800D2918 02A03025 */        or $a2, $s5, $zero
  /* 04E2FC 800D291C C660001C */      lwc1 $f0, 0x1c($s3)
  .L800D2920:
  /* 04E300 800D2920 02802025 */        or $a0, $s4, $zero
  /* 04E304 800D2924 4600A032 */    c.eq.s $f20, $f0
  /* 04E308 800D2928 00000000 */       nop 
  /* 04E30C 800D292C 4502000C */     bc1fl .L800D2960
  /* 04E310 800D2930 44050000 */      mfc1 $a1, $f0
  /* 04E314 800D2934 C6700020 */      lwc1 $f16, 0x20($s3)
  /* 04E318 800D2938 4610A032 */    c.eq.s $f20, $f16
  /* 04E31C 800D293C 00000000 */       nop 
  /* 04E320 800D2940 45020007 */     bc1fl .L800D2960
  /* 04E324 800D2944 44050000 */      mfc1 $a1, $f0
  /* 04E328 800D2948 C6720024 */      lwc1 $f18, 0x24($s3)
  /* 04E32C 800D294C 4612A032 */    c.eq.s $f20, $f18
  /* 04E330 800D2950 00000000 */       nop 
  /* 04E334 800D2954 4503000A */     bc1tl .L800D2980
  /* 04E338 800D2958 8E62004C */        lw $v0, 0x4c($s3)
  /* 04E33C 800D295C 44050000 */      mfc1 $a1, $f0
  .L800D2960:
  /* 04E340 800D2960 8E660020 */        lw $a2, 0x20($s3)
  /* 04E344 800D2964 0C006E49 */       jal func_8001B924
  /* 04E348 800D2968 8E670024 */        lw $a3, 0x24($s3)
  /* 04E34C 800D296C 02A02025 */        or $a0, $s5, $zero
  /* 04E350 800D2970 02802825 */        or $a1, $s4, $zero
  /* 04E354 800D2974 0C00D260 */       jal guMtxCatF
  /* 04E358 800D2978 02A03025 */        or $a2, $s5, $zero
  /* 04E35C 800D297C 8E62004C */        lw $v0, 0x4c($s3)
  .L800D2980:
  /* 04E360 800D2980 00008825 */        or $s1, $zero, $zero
  /* 04E364 800D2984 00008025 */        or $s0, $zero, $zero
  /* 04E368 800D2988 10400068 */      beqz $v0, .L800D2B2C
  /* 04E36C 800D298C 00004025 */        or $t0, $zero, $zero
  /* 04E370 800D2990 24430004 */     addiu $v1, $v0, 4
  /* 04E374 800D2994 00002025 */        or $a0, $zero, $zero
  /* 04E378 800D2998 00402825 */        or $a1, $v0, $zero
  .L800D299C:
  /* 04E37C 800D299C 90A20000 */       lbu $v0, ($a1)
  /* 04E380 800D29A0 24840001 */     addiu $a0, $a0, 1
  /* 04E384 800D29A4 10400011 */      beqz $v0, .L800D29EC
  /* 04E388 800D29A8 00000000 */       nop 
  /* 04E38C 800D29AC 50560008 */      beql $v0, $s6, .L800D29D0
  /* 04E390 800D29B0 00608825 */        or $s1, $v1, $zero
  /* 04E394 800D29B4 50570009 */      beql $v0, $s7, .L800D29DC
  /* 04E398 800D29B8 00608025 */        or $s0, $v1, $zero
  /* 04E39C 800D29BC 5052000A */      beql $v0, $s2, .L800D29E8
  /* 04E3A0 800D29C0 00604025 */        or $t0, $v1, $zero
  /* 04E3A4 800D29C4 10000009 */         b .L800D29EC
  /* 04E3A8 800D29C8 00000000 */       nop 
  /* 04E3AC 800D29CC 00608825 */        or $s1, $v1, $zero
  .L800D29D0:
  /* 04E3B0 800D29D0 10000006 */         b .L800D29EC
  /* 04E3B4 800D29D4 24630010 */     addiu $v1, $v1, 0x10
  /* 04E3B8 800D29D8 00608025 */        or $s0, $v1, $zero
  .L800D29DC:
  /* 04E3BC 800D29DC 10000003 */         b .L800D29EC
  /* 04E3C0 800D29E0 24630014 */     addiu $v1, $v1, 0x14
  /* 04E3C4 800D29E4 00604025 */        or $t0, $v1, $zero
  .L800D29E8:
  /* 04E3C8 800D29E8 24630010 */     addiu $v1, $v1, 0x10
  .L800D29EC:
  /* 04E3CC 800D29EC 1492FFEB */       bne $a0, $s2, .L800D299C
  /* 04E3D0 800D29F0 24A50001 */     addiu $a1, $a1, 1
  /* 04E3D4 800D29F4 11000019 */      beqz $t0, .L800D2A5C
  /* 04E3D8 800D29F8 00000000 */       nop 
  /* 04E3DC 800D29FC C5000004 */      lwc1 $f0, 4($t0)
  /* 04E3E0 800D2A00 02802025 */        or $a0, $s4, $zero
  /* 04E3E4 800D2A04 4600B032 */    c.eq.s $f22, $f0
  /* 04E3E8 800D2A08 00000000 */       nop 
  /* 04E3EC 800D2A0C 4502000C */     bc1fl .L800D2A40
  /* 04E3F0 800D2A10 44050000 */      mfc1 $a1, $f0
  /* 04E3F4 800D2A14 C5040008 */      lwc1 $f4, 8($t0)
  /* 04E3F8 800D2A18 4604B032 */    c.eq.s $f22, $f4
  /* 04E3FC 800D2A1C 00000000 */       nop 
  /* 04E400 800D2A20 45020007 */     bc1fl .L800D2A40
  /* 04E404 800D2A24 44050000 */      mfc1 $a1, $f0
  /* 04E408 800D2A28 C506000C */      lwc1 $f6, 0xc($t0)
  /* 04E40C 800D2A2C 4606B032 */    c.eq.s $f22, $f6
  /* 04E410 800D2A30 00000000 */       nop 
  /* 04E414 800D2A34 45010009 */      bc1t .L800D2A5C
  /* 04E418 800D2A38 00000000 */       nop 
  /* 04E41C 800D2A3C 44050000 */      mfc1 $a1, $f0
  .L800D2A40:
  /* 04E420 800D2A40 8D060008 */        lw $a2, 8($t0)
  /* 04E424 800D2A44 0C006DBB */       jal func_8001B6EC
  /* 04E428 800D2A48 8D07000C */        lw $a3, 0xc($t0)
  /* 04E42C 800D2A4C 02A02025 */        or $a0, $s5, $zero
  /* 04E430 800D2A50 02802825 */        or $a1, $s4, $zero
  /* 04E434 800D2A54 0C00D260 */       jal guMtxCatF
  /* 04E438 800D2A58 02A03025 */        or $a2, $s5, $zero
  .L800D2A5C:
  /* 04E43C 800D2A5C 12000019 */      beqz $s0, .L800D2AC4
  /* 04E440 800D2A60 00000000 */       nop 
  /* 04E444 800D2A64 C6000008 */      lwc1 $f0, 8($s0)
  /* 04E448 800D2A68 02802025 */        or $a0, $s4, $zero
  /* 04E44C 800D2A6C 4600A032 */    c.eq.s $f20, $f0
  /* 04E450 800D2A70 00000000 */       nop 
  /* 04E454 800D2A74 4502000C */     bc1fl .L800D2AA8
  /* 04E458 800D2A78 44050000 */      mfc1 $a1, $f0
  /* 04E45C 800D2A7C C608000C */      lwc1 $f8, 0xc($s0)
  /* 04E460 800D2A80 4608A032 */    c.eq.s $f20, $f8
  /* 04E464 800D2A84 00000000 */       nop 
  /* 04E468 800D2A88 45020007 */     bc1fl .L800D2AA8
  /* 04E46C 800D2A8C 44050000 */      mfc1 $a1, $f0
  /* 04E470 800D2A90 C60A0010 */      lwc1 $f10, 0x10($s0)
  /* 04E474 800D2A94 460AA032 */    c.eq.s $f20, $f10
  /* 04E478 800D2A98 00000000 */       nop 
  /* 04E47C 800D2A9C 45010009 */      bc1t .L800D2AC4
  /* 04E480 800D2AA0 00000000 */       nop 
  /* 04E484 800D2AA4 44050000 */      mfc1 $a1, $f0
  .L800D2AA8:
  /* 04E488 800D2AA8 8E06000C */        lw $a2, 0xc($s0)
  /* 04E48C 800D2AAC 0C006F7B */       jal func_8001BDEC
  /* 04E490 800D2AB0 8E070010 */        lw $a3, 0x10($s0)
  /* 04E494 800D2AB4 02A02025 */        or $a0, $s5, $zero
  /* 04E498 800D2AB8 02802825 */        or $a1, $s4, $zero
  /* 04E49C 800D2ABC 0C00D260 */       jal guMtxCatF
  /* 04E4A0 800D2AC0 02A03025 */        or $a2, $s5, $zero
  .L800D2AC4:
  /* 04E4A4 800D2AC4 5220001A */      beql $s1, $zero, .L800D2B30
  /* 04E4A8 800D2AC8 8E730014 */        lw $s3, 0x14($s3)
  /* 04E4AC 800D2ACC C6200004 */      lwc1 $f0, 4($s1)
  /* 04E4B0 800D2AD0 02802025 */        or $a0, $s4, $zero
  /* 04E4B4 800D2AD4 4600A032 */    c.eq.s $f20, $f0
  /* 04E4B8 800D2AD8 00000000 */       nop 
  /* 04E4BC 800D2ADC 4502000C */     bc1fl .L800D2B10
  /* 04E4C0 800D2AE0 44050000 */      mfc1 $a1, $f0
  /* 04E4C4 800D2AE4 C6300008 */      lwc1 $f16, 8($s1)
  /* 04E4C8 800D2AE8 4610A032 */    c.eq.s $f20, $f16
  /* 04E4CC 800D2AEC 00000000 */       nop 
  /* 04E4D0 800D2AF0 45020007 */     bc1fl .L800D2B10
  /* 04E4D4 800D2AF4 44050000 */      mfc1 $a1, $f0
  /* 04E4D8 800D2AF8 C632000C */      lwc1 $f18, 0xc($s1)
  /* 04E4DC 800D2AFC 4612A032 */    c.eq.s $f20, $f18
  /* 04E4E0 800D2B00 00000000 */       nop 
  /* 04E4E4 800D2B04 4503000A */     bc1tl .L800D2B30
  /* 04E4E8 800D2B08 8E730014 */        lw $s3, 0x14($s3)
  /* 04E4EC 800D2B0C 44050000 */      mfc1 $a1, $f0
  .L800D2B10:
  /* 04E4F0 800D2B10 8E260008 */        lw $a2, 8($s1)
  /* 04E4F4 800D2B14 0C006E49 */       jal func_8001B924
  /* 04E4F8 800D2B18 8E27000C */        lw $a3, 0xc($s1)
  /* 04E4FC 800D2B1C 02A02025 */        or $a0, $s5, $zero
  /* 04E500 800D2B20 02802825 */        or $a1, $s4, $zero
  /* 04E504 800D2B24 0C00D260 */       jal guMtxCatF
  /* 04E508 800D2B28 02A03025 */        or $a2, $s5, $zero
  .L800D2B2C:
  /* 04E50C 800D2B2C 8E730014 */        lw $s3, 0x14($s3)
  .L800D2B30:
  /* 04E510 800D2B30 24010001 */     addiu $at, $zero, 1
  /* 04E514 800D2B34 5661FF4A */      bnel $s3, $at, .L800D2860
  /* 04E518 800D2B38 C6600040 */      lwc1 $f0, 0x40($s3)
  /* 04E51C 800D2B3C 8FA300F8 */        lw $v1, 0xf8($sp)
  /* 04E520 800D2B40 C7A400E8 */      lwc1 $f4, 0xe8($sp)
  /* 04E524 800D2B44 8FA200FC */        lw $v0, 0xfc($sp)
  /* 04E528 800D2B48 02A02025 */        or $a0, $s5, $zero
  /* 04E52C 800D2B4C E4640000 */      swc1 $f4, ($v1)
  /* 04E530 800D2B50 C7A600EC */      lwc1 $f6, 0xec($sp)
  /* 04E534 800D2B54 27A500C8 */     addiu $a1, $sp, 0xc8
  /* 04E538 800D2B58 27A600D8 */     addiu $a2, $sp, 0xd8
  /* 04E53C 800D2B5C E4660004 */      swc1 $f6, 4($v1)
  /* 04E540 800D2B60 C7A800F0 */      lwc1 $f8, 0xf0($sp)
  /* 04E544 800D2B64 E4680008 */      swc1 $f8, 8($v1)
  /* 04E548 800D2B68 C44A0008 */      lwc1 $f10, 8($v0)
  /* 04E54C 800D2B6C C4560004 */      lwc1 $f22, 4($v0)
  /* 04E550 800D2B70 C4540000 */      lwc1 $f20, ($v0)
  /* 04E554 800D2B74 0C00D4E0 */       jal guNormalize
  /* 04E558 800D2B78 E7AA006C */      swc1 $f10, 0x6c($sp)
  /* 04E55C 800D2B7C 27A400BC */     addiu $a0, $sp, 0xbc
  /* 04E560 800D2B80 27A500CC */     addiu $a1, $sp, 0xcc
  /* 04E564 800D2B84 0C00D4E0 */       jal guNormalize
  /* 04E568 800D2B88 27A600DC */     addiu $a2, $sp, 0xdc
  /* 04E56C 800D2B8C 27A400C0 */     addiu $a0, $sp, 0xc0
  /* 04E570 800D2B90 27A500D0 */     addiu $a1, $sp, 0xd0
  /* 04E574 800D2B94 0C00D4E0 */       jal guNormalize
  /* 04E578 800D2B98 27A600E0 */     addiu $a2, $sp, 0xe0
  /* 04E57C 800D2B9C C7B000B8 */      lwc1 $f16, 0xb8($sp)
  /* 04E580 800D2BA0 C7A400C8 */      lwc1 $f4, 0xc8($sp)
  /* 04E584 800D2BA4 C7A0006C */      lwc1 $f0, 0x6c($sp)
  /* 04E588 800D2BA8 46148482 */     mul.s $f18, $f16, $f20
  /* 04E58C 800D2BAC C7AA00D8 */      lwc1 $f10, 0xd8($sp)
  /* 04E590 800D2BB0 8FA200FC */        lw $v0, 0xfc($sp)
  /* 04E594 800D2BB4 46162182 */     mul.s $f6, $f4, $f22
  /* 04E598 800D2BB8 46069200 */     add.s $f8, $f18, $f6
  /* 04E59C 800D2BBC 46005402 */     mul.s $f16, $f10, $f0
  /* 04E5A0 800D2BC0 46088100 */     add.s $f4, $f16, $f8
  /* 04E5A4 800D2BC4 E4440000 */      swc1 $f4, ($v0)
  /* 04E5A8 800D2BC8 C7B200BC */      lwc1 $f18, 0xbc($sp)
  /* 04E5AC 800D2BCC C7AA00CC */      lwc1 $f10, 0xcc($sp)
  /* 04E5B0 800D2BD0 C7A400DC */      lwc1 $f4, 0xdc($sp)
  /* 04E5B4 800D2BD4 46149182 */     mul.s $f6, $f18, $f20
  /* 04E5B8 800D2BD8 00000000 */       nop 
  /* 04E5BC 800D2BDC 46165402 */     mul.s $f16, $f10, $f22
  /* 04E5C0 800D2BE0 46103200 */     add.s $f8, $f6, $f16
  /* 04E5C4 800D2BE4 46002482 */     mul.s $f18, $f4, $f0
  /* 04E5C8 800D2BE8 46089280 */     add.s $f10, $f18, $f8
  /* 04E5CC 800D2BEC E44A0004 */      swc1 $f10, 4($v0)
  /* 04E5D0 800D2BF0 C7A600C0 */      lwc1 $f6, 0xc0($sp)
  /* 04E5D4 800D2BF4 C7A400D0 */      lwc1 $f4, 0xd0($sp)
  /* 04E5D8 800D2BF8 C7AA00E0 */      lwc1 $f10, 0xe0($sp)
  /* 04E5DC 800D2BFC 46143402 */     mul.s $f16, $f6, $f20
  /* 04E5E0 800D2C00 00000000 */       nop 
  /* 04E5E4 800D2C04 46162482 */     mul.s $f18, $f4, $f22
  /* 04E5E8 800D2C08 46128200 */     add.s $f8, $f16, $f18
  /* 04E5EC 800D2C0C 46005182 */     mul.s $f6, $f10, $f0
  /* 04E5F0 800D2C10 46083100 */     add.s $f4, $f6, $f8
  /* 04E5F4 800D2C14 E4440008 */      swc1 $f4, 8($v0)
  /* 04E5F8 800D2C18 8FBF0044 */        lw $ra, 0x44($sp)
  /* 04E5FC 800D2C1C 8FB70040 */        lw $s7, 0x40($sp)
  /* 04E600 800D2C20 8FB6003C */        lw $s6, 0x3c($sp)
  /* 04E604 800D2C24 8FB50038 */        lw $s5, 0x38($sp)
  /* 04E608 800D2C28 8FB40034 */        lw $s4, 0x34($sp)
  /* 04E60C 800D2C2C 8FB30030 */        lw $s3, 0x30($sp)
  /* 04E610 800D2C30 8FB2002C */        lw $s2, 0x2c($sp)
  /* 04E614 800D2C34 8FB10028 */        lw $s1, 0x28($sp)
  /* 04E618 800D2C38 8FB00024 */        lw $s0, 0x24($sp)
  /* 04E61C 800D2C3C D7B60018 */      ldc1 $f22, 0x18($sp)
  /* 04E620 800D2C40 D7B40010 */      ldc1 $f20, 0x10($sp)
  /* 04E624 800D2C44 03E00008 */        jr $ra
  /* 04E628 800D2C48 27BD00F8 */     addiu $sp, $sp, 0xf8

glabel func_ovl0_800D2C4C
  /* 04E62C 800D2C4C 27BDFEC0 */     addiu $sp, $sp, -0x140
  /* 04E630 800D2C50 AFB00078 */        sw $s0, 0x78($sp)
  /* 04E634 800D2C54 3C10800D */       lui $s0, %hi(D_ovl0_800D639C)
  /* 04E638 800D2C58 8E10639C */        lw $s0, %lo(D_ovl0_800D639C)($s0)
  /* 04E63C 800D2C5C AFB40088 */        sw $s4, 0x88($sp)
  /* 04E640 800D2C60 3C14800D */       lui $s4, %hi(D_ovl0_800D6458)
  /* 04E644 800D2C64 26946458 */     addiu $s4, $s4, %lo(D_ovl0_800D6458)
  /* 04E648 800D2C68 AFBF008C */        sw $ra, 0x8c($sp)
  /* 04E64C 800D2C6C AFB30084 */        sw $s3, 0x84($sp)
  /* 04E650 800D2C70 AFB20080 */        sw $s2, 0x80($sp)
  /* 04E654 800D2C74 AFB1007C */        sw $s1, 0x7c($sp)
  /* 04E658 800D2C78 F7BE0070 */      sdc1 $f30, 0x70($sp)
  /* 04E65C 800D2C7C F7BC0068 */      sdc1 $f28, 0x68($sp)
  /* 04E660 800D2C80 F7BA0060 */      sdc1 $f26, 0x60($sp)
  /* 04E664 800D2C84 F7B80058 */      sdc1 $f24, 0x58($sp)
  /* 04E668 800D2C88 F7B60050 */      sdc1 $f22, 0x50($sp)
  /* 04E66C 800D2C8C F7B40048 */      sdc1 $f20, 0x48($sp)
  /* 04E670 800D2C90 AFA40140 */        sw $a0, 0x140($sp)
  /* 04E674 800D2C94 1200021B */      beqz $s0, .L800D3504
  /* 04E678 800D2C98 AE800000 */        sw $zero, ($s4) # D_ovl0_800D6458 + 0
  /* 04E67C 800D2C9C 3C013F80 */       lui $at, (0x3F800000 >> 16) # 1.0
  /* 04E680 800D2CA0 3C13800D */       lui $s3, %hi(D_ovl0_800D6440)
  /* 04E684 800D2CA4 4481D000 */      mtc1 $at, $f26 # 1.0 to cop1
  /* 04E688 800D2CA8 26736440 */     addiu $s3, $s3, %lo(D_ovl0_800D6440)
  /* 04E68C 800D2CAC 24120003 */     addiu $s2, $zero, 3
  /* 04E690 800D2CB0 27B1011C */     addiu $s1, $sp, 0x11c
  /* 04E694 800D2CB4 8FAF0140 */        lw $t7, 0x140($sp)
  .L800D2CB8:
  /* 04E698 800D2CB8 920B0009 */       lbu $t3, 9($s0)
  /* 04E69C 800D2CBC 240E0001 */     addiu $t6, $zero, 1
  /* 04E6A0 800D2CC0 8DEA007C */        lw $t2, 0x7c($t7)
  /* 04E6A4 800D2CC4 000B60C3 */       sra $t4, $t3, 3
  /* 04E6A8 800D2CC8 258D0010 */     addiu $t5, $t4, 0x10
  /* 04E6AC 800D2CCC 01AEC004 */      sllv $t8, $t6, $t5
  /* 04E6B0 800D2CD0 0158C824 */       and $t9, $t2, $t8
  /* 04E6B4 800D2CD4 53200005 */      beql $t9, $zero, .L800D2CEC
  /* 04E6B8 800D2CD8 96090006 */       lhu $t1, 6($s0)
  /* 04E6BC 800D2CDC AE900000 */        sw $s0, ($s4) # D_ovl0_800D6458 + 0
  /* 04E6C0 800D2CE0 10000206 */         b .L800D34FC
  /* 04E6C4 800D2CE4 8E100000 */        lw $s0, ($s0)
  /* 04E6C8 800D2CE8 96090006 */       lhu $t1, 6($s0)
  .L800D2CEC:
  /* 04E6CC 800D2CEC 31280800 */      andi $t0, $t1, 0x800
  /* 04E6D0 800D2CF0 51000005 */      beql $t0, $zero, .L800D2D08
  /* 04E6D4 800D2CF4 C6000040 */      lwc1 $f0, 0x40($s0)
  /* 04E6D8 800D2CF8 AE900000 */        sw $s0, ($s4) # D_ovl0_800D6458 + 0
  /* 04E6DC 800D2CFC 100001FF */         b .L800D34FC
  /* 04E6E0 800D2D00 8E100000 */        lw $s0, ($s0)
  /* 04E6E4 800D2D04 C6000040 */      lwc1 $f0, 0x40($s0)
  .L800D2D08:
  /* 04E6E8 800D2D08 44805000 */      mtc1 $zero, $f10
  /* 04E6EC 800D2D0C 00000000 */       nop 
  /* 04E6F0 800D2D10 460A003C */    c.lt.s $f0, $f10
  /* 04E6F4 800D2D14 00000000 */       nop 
  /* 04E6F8 800D2D18 45000005 */      bc1f .L800D2D30
  /* 04E6FC 800D2D1C 00000000 */       nop 
  /* 04E700 800D2D20 C6080044 */      lwc1 $f8, 0x44($s0)
  /* 04E704 800D2D24 46004101 */     sub.s $f4, $f8, $f0
  /* 04E708 800D2D28 1000000A */         b .L800D2D54
  /* 04E70C 800D2D2C E6040044 */      swc1 $f4, 0x44($s0)
  .L800D2D30:
  /* 04E710 800D2D30 0C006252 */       jal rand_f32
  /* 04E714 800D2D34 00000000 */       nop 
  /* 04E718 800D2D38 C60A0040 */      lwc1 $f10, 0x40($s0)
  /* 04E71C 800D2D3C C6060044 */      lwc1 $f6, 0x44($s0)
  /* 04E720 800D2D40 3C013F80 */       lui $at, (0x3F800000 >> 16) # 1.0
  /* 04E724 800D2D44 460A0202 */     mul.s $f8, $f0, $f10
  /* 04E728 800D2D48 4481D000 */      mtc1 $at, $f26 # 1.0 to cop1
  /* 04E72C 800D2D4C 46083100 */     add.s $f4, $f6, $f8
  /* 04E730 800D2D50 E6040044 */      swc1 $f4, 0x44($s0)
  .L800D2D54:
  /* 04E734 800D2D54 C6020044 */      lwc1 $f2, 0x44($s0)
  /* 04E738 800D2D58 4602D03E */    c.le.s $f26, $f2
  /* 04E73C 800D2D5C 00000000 */       nop 
  /* 04E740 800D2D60 45020042 */     bc1fl .L800D2E6C
  /* 04E744 800D2D64 4602D03E */    c.le.s $f26, $f2
  /* 04E748 800D2D68 C60A0020 */      lwc1 $f10, 0x20($s0)
  /* 04E74C 800D2D6C 27A40128 */     addiu $a0, $sp, 0x128
  /* 04E750 800D2D70 E7AA011C */      swc1 $f10, 0x11c($sp)
  /* 04E754 800D2D74 C6060024 */      lwc1 $f6, 0x24($s0)
  /* 04E758 800D2D78 E7A60120 */      swc1 $f6, 0x120($sp)
  /* 04E75C 800D2D7C C6080028 */      lwc1 $f8, 0x28($s0)
  /* 04E760 800D2D80 E7A80124 */      swc1 $f8, 0x124($sp)
  /* 04E764 800D2D84 8E060048 */        lw $a2, 0x48($s0)
  /* 04E768 800D2D88 50C0000A */      beql $a2, $zero, .L800D2DB4
  /* 04E76C 800D2D8C 92020008 */       lbu $v0, 8($s0)
  /* 04E770 800D2D90 0C0349FE */       jal func_ovl0_800D27F8
  /* 04E774 800D2D94 02202825 */        or $a1, $s1, $zero
  /* 04E778 800D2D98 C7A40128 */      lwc1 $f4, 0x128($sp)
  /* 04E77C 800D2D9C E6040014 */      swc1 $f4, 0x14($s0)
  /* 04E780 800D2DA0 C7AA012C */      lwc1 $f10, 0x12c($sp)
  /* 04E784 800D2DA4 E60A0018 */      swc1 $f10, 0x18($s0)
  /* 04E788 800D2DA8 C7A60130 */      lwc1 $f6, 0x130($sp)
  /* 04E78C 800D2DAC E606001C */      swc1 $f6, 0x1c($s0)
  /* 04E790 800D2DB0 92020008 */       lbu $v0, 8($s0)
  .L800D2DB4:
  /* 04E794 800D2DB4 10400005 */      beqz $v0, .L800D2DCC
  /* 04E798 800D2DB8 00000000 */       nop 
  /* 04E79C 800D2DBC 10520003 */       beq $v0, $s2, .L800D2DCC
  /* 04E7A0 800D2DC0 24010004 */     addiu $at, $zero, 4
  /* 04E7A4 800D2DC4 14410015 */       bne $v0, $at, .L800D2E1C
  /* 04E7A8 800D2DC8 00000000 */       nop 
  .L800D2DCC:
  /* 04E7AC 800D2DCC 0C006252 */       jal rand_f32
  /* 04E7B0 800D2DD0 00000000 */       nop 
  /* 04E7B4 800D2DD4 C60C0050 */      lwc1 $f12, 0x50($s0)
  /* 04E7B8 800D2DD8 C6080054 */      lwc1 $f8, 0x54($s0)
  /* 04E7BC 800D2DDC 3C013F80 */       lui $at, (0x3F800000 >> 16) # 1.0
  /* 04E7C0 800D2DE0 4481D000 */      mtc1 $at, $f26 # 1.0 to cop1
  /* 04E7C4 800D2DE4 460C4381 */     sub.s $f14, $f8, $f12
  /* 04E7C8 800D2DE8 460E0102 */     mul.s $f4, $f0, $f14
  /* 04E7CC 800D2DEC 460C2280 */     add.s $f10, $f4, $f12
  /* 04E7D0 800D2DF0 E7AA00DC */      swc1 $f10, 0xdc($sp)
  /* 04E7D4 800D2DF4 C6020044 */      lwc1 $f2, 0x44($s0)
  /* 04E7D8 800D2DF8 4600118D */ trunc.w.s $f6, $f2
  /* 04E7DC 800D2DFC 440B3000 */      mfc1 $t3, $f6
  /* 04E7E0 800D2E00 00000000 */       nop 
  /* 04E7E4 800D2E04 448B4000 */      mtc1 $t3, $f8
  /* 04E7E8 800D2E08 00000000 */       nop 
  /* 04E7EC 800D2E0C 46804120 */   cvt.s.w $f4, $f8
  /* 04E7F0 800D2E10 46047283 */     div.s $f10, $f14, $f4
  /* 04E7F4 800D2E14 10000014 */         b .L800D2E68
  /* 04E7F8 800D2E18 E7AA00B8 */      swc1 $f10, 0xb8($sp)
  .L800D2E1C:
  /* 04E7FC 800D2E1C 0C006252 */       jal rand_f32
  /* 04E800 800D2E20 00000000 */       nop 
  /* 04E804 800D2E24 3C01800D */       lui $at, %hi(D_ovl0_800D6264)
  /* 04E808 800D2E28 C4266264 */      lwc1 $f6, %lo(D_ovl0_800D6264)($at)
  /* 04E80C 800D2E2C 3C01800D */       lui $at, %hi(D_ovl0_800D6268)
  /* 04E810 800D2E30 C4246268 */      lwc1 $f4, %lo(D_ovl0_800D6268)($at)
  /* 04E814 800D2E34 46060202 */     mul.s $f8, $f0, $f6
  /* 04E818 800D2E38 3C013F80 */       lui $at, (0x3F800000 >> 16) # 1.0
  /* 04E81C 800D2E3C 4481D000 */      mtc1 $at, $f26 # 1.0 to cop1
  /* 04E820 800D2E40 E7A800DC */      swc1 $f8, 0xdc($sp)
  /* 04E824 800D2E44 C6020044 */      lwc1 $f2, 0x44($s0)
  /* 04E828 800D2E48 4600128D */ trunc.w.s $f10, $f2
  /* 04E82C 800D2E4C 440E5000 */      mfc1 $t6, $f10
  /* 04E830 800D2E50 00000000 */       nop 
  /* 04E834 800D2E54 448E3000 */      mtc1 $t6, $f6
  /* 04E838 800D2E58 00000000 */       nop 
  /* 04E83C 800D2E5C 46803220 */   cvt.s.w $f8, $f6
  /* 04E840 800D2E60 46082283 */     div.s $f10, $f4, $f8
  /* 04E844 800D2E64 E7AA00B8 */      swc1 $f10, 0xb8($sp)
  .L800D2E68:
  /* 04E848 800D2E68 4602D03E */    c.le.s $f26, $f2
  .L800D2E6C:
  /* 04E84C 800D2E6C 00000000 */       nop 
  /* 04E850 800D2E70 4502016C */     bc1fl .L800D3424
  /* 04E854 800D2E74 9602000E */       lhu $v0, 0xe($s0)
  /* 04E858 800D2E78 920D0008 */       lbu $t5, 8($s0)
  .L800D2E7C:
  /* 04E85C 800D2E7C 2DA10005 */     sltiu $at, $t5, 5
  /* 04E860 800D2E80 10200159 */      beqz $at, .L800D33E8
  /* 04E864 800D2E84 000D6880 */       sll $t5, $t5, 2
  /* 04E868 800D2E88 3C01800D */       lui $at, %hi(jtbl_ovl0_800D626C)
  /* 04E86C 800D2E8C 002D0821 */      addu $at, $at, $t5
  /* 04E870 800D2E90 8C2D626C */        lw $t5, %lo(jtbl_ovl0_800D626C)($at)
  /* 04E874 800D2E94 01A00008 */        jr $t5
  /* 04E878 800D2E98 00000000 */       nop 
  glabel jtgt_ovl0_800D2E9C
  /* 04E87C 800D2E9C C7AC0120 */      lwc1 $f12, 0x120($sp)
  /* 04E880 800D2EA0 C7AE0124 */      lwc1 $f14, 0x124($sp)
  /* 04E884 800D2EA4 C7B4011C */      lwc1 $f20, 0x11c($sp)
  /* 04E888 800D2EA8 46006586 */     mov.s $f22, $f12
  /* 04E88C 800D2EAC 0C00618F */       jal atan2f
  /* 04E890 800D2EB0 46007606 */     mov.s $f24, $f14
  /* 04E894 800D2EB4 46000686 */     mov.s $f26, $f0
  /* 04E898 800D2EB8 0C00C0FC */       jal __sinf
  /* 04E89C 800D2EBC 46000306 */     mov.s $f12, $f0
  /* 04E8A0 800D2EC0 46000786 */     mov.s $f30, $f0
  /* 04E8A4 800D2EC4 0C00D734 */       jal cosf
  /* 04E8A8 800D2EC8 4600D306 */     mov.s $f12, $f26
  /* 04E8AC 800D2ECC 461EB182 */     mul.s $f6, $f22, $f30
  /* 04E8B0 800D2ED0 E7A000F8 */      swc1 $f0, 0xf8($sp)
  /* 04E8B4 800D2ED4 4600A306 */     mov.s $f12, $f20
  /* 04E8B8 800D2ED8 4600C102 */     mul.s $f4, $f24, $f0
  /* 04E8BC 800D2EDC 0C00618F */       jal atan2f
  /* 04E8C0 800D2EE0 46043380 */     add.s $f14, $f6, $f4
  /* 04E8C4 800D2EE4 46000706 */     mov.s $f28, $f0
  /* 04E8C8 800D2EE8 0C00C0FC */       jal __sinf
  /* 04E8CC 800D2EEC 46000306 */     mov.s $f12, $f0
  /* 04E8D0 800D2EF0 E7A000F4 */      swc1 $f0, 0xf4($sp)
  /* 04E8D4 800D2EF4 0C00D734 */       jal cosf
  /* 04E8D8 800D2EF8 4600E306 */     mov.s $f12, $f28
  /* 04E8DC 800D2EFC 4614A202 */     mul.s $f8, $f20, $f20
  /* 04E8E0 800D2F00 E7A000F0 */      swc1 $f0, 0xf0($sp)
  /* 04E8E4 800D2F04 E7BE00FC */      swc1 $f30, 0xfc($sp)
  /* 04E8E8 800D2F08 4616B282 */     mul.s $f10, $f22, $f22
  /* 04E8EC 800D2F0C 460A4180 */     add.s $f6, $f8, $f10
  /* 04E8F0 800D2F10 4618C102 */     mul.s $f4, $f24, $f24
  /* 04E8F4 800D2F14 0C00CD44 */       jal sqrtf
  /* 04E8F8 800D2F18 46043300 */     add.s $f12, $f6, $f4
  /* 04E8FC 800D2F1C E7A00108 */      swc1 $f0, 0x108($sp)
  /* 04E900 800D2F20 4480D000 */      mtc1 $zero, $f26
  /* 04E904 800D2F24 C6020038 */      lwc1 $f2, 0x38($s0)
  /* 04E908 800D2F28 3C013F80 */       lui $at, (0x3F800000 >> 16) # 1.0
  /* 04E90C 800D2F2C 461A103C */    c.lt.s $f2, $f26
  /* 04E910 800D2F30 00000000 */       nop 
  /* 04E914 800D2F34 45000006 */      bc1f .L800D2F50
  /* 04E918 800D2F38 00000000 */       nop 
  /* 04E91C 800D2F3C 44814000 */      mtc1 $at, $f8 # 1.0 to cop1
  /* 04E920 800D2F40 4481C000 */      mtc1 $at, $f24 # 1.0 to cop1
  /* 04E924 800D2F44 46001507 */     neg.s $f20, $f2
  /* 04E928 800D2F48 1000000F */         b .L800D2F88
  /* 04E92C 800D2F4C E7A800B4 */      swc1 $f8, 0xb4($sp)
  .L800D2F50:
  /* 04E930 800D2F50 0C006252 */       jal rand_f32
  /* 04E934 800D2F54 00000000 */       nop 
  /* 04E938 800D2F58 E7A000B4 */      swc1 $f0, 0xb4($sp)
  /* 04E93C 800D2F5C 920A0008 */       lbu $t2, 8($s0)
  /* 04E940 800D2F60 46000606 */     mov.s $f24, $f0
  /* 04E944 800D2F64 51400006 */      beql $t2, $zero, .L800D2F80
  /* 04E948 800D2F68 C60A0038 */      lwc1 $f10, 0x38($s0)
  /* 04E94C 800D2F6C 0C00CD44 */       jal sqrtf
  /* 04E950 800D2F70 4600C306 */     mov.s $f12, $f24
  /* 04E954 800D2F74 46000606 */     mov.s $f24, $f0
  /* 04E958 800D2F78 E7A000B4 */      swc1 $f0, 0xb4($sp)
  /* 04E95C 800D2F7C C60A0038 */      lwc1 $f10, 0x38($s0)
  .L800D2F80:
  /* 04E960 800D2F80 46005502 */     mul.s $f20, $f10, $f0
  /* 04E964 800D2F84 00000000 */       nop 
  .L800D2F88:
  /* 04E968 800D2F88 C600003C */      lwc1 $f0, 0x3c($s0)
  /* 04E96C 800D2F8C C7A600DC */      lwc1 $f6, 0xdc($sp)
  /* 04E970 800D2F90 C7A400B8 */      lwc1 $f4, 0xb8($sp)
  /* 04E974 800D2F94 461A003C */    c.lt.s $f0, $f26
  /* 04E978 800D2F98 00000000 */       nop 
  /* 04E97C 800D2F9C 45000005 */      bc1f .L800D2FB4
  /* 04E980 800D2FA0 00000000 */       nop 
  /* 04E984 800D2FA4 46043580 */     add.s $f22, $f6, $f4
  /* 04E988 800D2FA8 46000607 */     neg.s $f24, $f0
  /* 04E98C 800D2FAC 1000000B */         b .L800D2FDC
  /* 04E990 800D2FB0 E7B600DC */      swc1 $f22, 0xdc($sp)
  .L800D2FB4:
  /* 04E994 800D2FB4 0C006252 */       jal rand_f32
  /* 04E998 800D2FB8 00000000 */       nop 
  /* 04E99C 800D2FBC C60C0050 */      lwc1 $f12, 0x50($s0)
  /* 04E9A0 800D2FC0 C60A0054 */      lwc1 $f10, 0x54($s0)
  /* 04E9A4 800D2FC4 C608003C */      lwc1 $f8, 0x3c($s0)
  /* 04E9A8 800D2FC8 460C5181 */     sub.s $f6, $f10, $f12
  /* 04E9AC 800D2FCC 46060102 */     mul.s $f4, $f0, $f6
  /* 04E9B0 800D2FD0 460C2580 */     add.s $f22, $f4, $f12
  /* 04E9B4 800D2FD4 4608C602 */     mul.s $f24, $f24, $f8
  /* 04E9B8 800D2FD8 00000000 */       nop 
  .L800D2FDC:
  /* 04E9BC 800D2FDC 0C00D734 */       jal cosf
  /* 04E9C0 800D2FE0 4600B306 */     mov.s $f12, $f22
  /* 04E9C4 800D2FE4 46140282 */     mul.s $f10, $f0, $f20
  /* 04E9C8 800D2FE8 4600B306 */     mov.s $f12, $f22
  /* 04E9CC 800D2FEC 0C00C0FC */       jal __sinf
  /* 04E9D0 800D2FF0 E7AA00EC */      swc1 $f10, 0xec($sp)
  /* 04E9D4 800D2FF4 46140682 */     mul.s $f26, $f0, $f20
  /* 04E9D8 800D2FF8 0C00C0FC */       jal __sinf
  /* 04E9DC 800D2FFC 4600C306 */     mov.s $f12, $f24
  /* 04E9E0 800D3000 C7A60108 */      lwc1 $f6, 0x108($sp)
  /* 04E9E4 800D3004 4600B306 */     mov.s $f12, $f22
  /* 04E9E8 800D3008 E7B600DC */      swc1 $f22, 0xdc($sp)
  /* 04E9EC 800D300C 46060702 */     mul.s $f28, $f0, $f6
  /* 04E9F0 800D3010 0C00D734 */       jal cosf
  /* 04E9F4 800D3014 00000000 */       nop 
  /* 04E9F8 800D3018 461C0502 */     mul.s $f20, $f0, $f28
  /* 04E9FC 800D301C 0C00C0FC */       jal __sinf
  /* 04EA00 800D3020 C7AC00DC */      lwc1 $f12, 0xdc($sp)
  /* 04EA04 800D3024 461C0582 */     mul.s $f22, $f0, $f28
  /* 04EA08 800D3028 0C00D734 */       jal cosf
  /* 04EA0C 800D302C 4600C306 */     mov.s $f12, $f24
  /* 04EA10 800D3030 C7B800EC */      lwc1 $f24, 0xec($sp)
  /* 04EA14 800D3034 C7A600F0 */      lwc1 $f6, 0xf0($sp)
  /* 04EA18 800D3038 44806000 */      mtc1 $zero, $f12
  /* 04EA1C 800D303C C7AE00F4 */      lwc1 $f14, 0xf4($sp)
  /* 04EA20 800D3040 4606C102 */     mul.s $f4, $f24, $f6
  /* 04EA24 800D3044 C7B000F8 */      lwc1 $f16, 0xf8($sp)
  /* 04EA28 800D3048 E7AE0090 */      swc1 $f14, 0x90($sp)
  /* 04EA2C 800D304C C7AA00FC */      lwc1 $f10, 0xfc($sp)
  /* 04EA30 800D3050 E7B00094 */      swc1 $f16, 0x94($sp)
  /* 04EA34 800D3054 C6080014 */      lwc1 $f8, 0x14($s0)
  /* 04EA38 800D3058 4600C087 */     neg.s $f2, $f24
  /* 04EA3C 800D305C 460C2100 */     add.s $f4, $f4, $f12
  /* 04EA40 800D3060 46082780 */     add.s $f30, $f4, $f8
  /* 04EA44 800D3064 460A1102 */     mul.s $f4, $f2, $f10
  /* 04EA48 800D3068 00000000 */       nop 
  /* 04EA4C 800D306C 460E2202 */     mul.s $f8, $f4, $f14
  /* 04EA50 800D3070 00000000 */       nop 
  /* 04EA54 800D3074 4610D102 */     mul.s $f4, $f26, $f16
  /* 04EA58 800D3078 46044200 */     add.s $f8, $f8, $f4
  /* 04EA5C 800D307C 460C4100 */     add.s $f4, $f8, $f12
  /* 04EA60 800D3080 C6080018 */      lwc1 $f8, 0x18($s0)
  /* 04EA64 800D3084 46082100 */     add.s $f4, $f4, $f8
  /* 04EA68 800D3088 46101202 */     mul.s $f8, $f2, $f16
  /* 04EA6C 800D308C E7A400CC */      swc1 $f4, 0xcc($sp)
  /* 04EA70 800D3090 460E4102 */     mul.s $f4, $f8, $f14
  /* 04EA74 800D3094 00000000 */       nop 
  /* 04EA78 800D3098 460AD202 */     mul.s $f8, $f26, $f10
  /* 04EA7C 800D309C 46082101 */     sub.s $f4, $f4, $f8
  /* 04EA80 800D30A0 460C2200 */     add.s $f8, $f4, $f12
  /* 04EA84 800D30A4 C604001C */      lwc1 $f4, 0x1c($s0)
  /* 04EA88 800D30A8 4600A307 */     neg.s $f12, $f20
  /* 04EA8C 800D30AC 46044200 */     add.s $f8, $f8, $f4
  /* 04EA90 800D30B0 C7A40108 */      lwc1 $f4, 0x108($sp)
  /* 04EA94 800D30B4 46040082 */     mul.s $f2, $f0, $f4
  /* 04EA98 800D30B8 E7A800C8 */      swc1 $f8, 0xc8($sp)
  /* 04EA9C 800D30BC C7A40090 */      lwc1 $f4, 0x90($sp)
  /* 04EAA0 800D30C0 4606A202 */     mul.s $f8, $f20, $f6
  /* 04EAA4 800D30C4 E7AA0090 */      swc1 $f10, 0x90($sp)
  /* 04EAA8 800D30C8 C7A000B4 */      lwc1 $f0, 0xb4($sp)
  /* 04EAAC 800D30CC 46041282 */     mul.s $f10, $f2, $f4
  /* 04EAB0 800D30D0 460A4600 */     add.s $f24, $f8, $f10
  /* 04EAB4 800D30D4 C7A80090 */      lwc1 $f8, 0x90($sp)
  /* 04EAB8 800D30D8 E7A60090 */      swc1 $f6, 0x90($sp)
  /* 04EABC 800D30DC C7A60094 */      lwc1 $f6, 0x94($sp)
  /* 04EAC0 800D30E0 46086282 */     mul.s $f10, $f12, $f8
  /* 04EAC4 800D30E4 E7A80094 */      swc1 $f8, 0x94($sp)
  /* 04EAC8 800D30E8 E7A60098 */      swc1 $f6, 0x98($sp)
  /* 04EACC 800D30EC 4600C386 */     mov.s $f14, $f24
  /* 04EAD0 800D30F0 46045282 */     mul.s $f10, $f10, $f4
  /* 04EAD4 800D30F4 00000000 */       nop 
  /* 04EAD8 800D30F8 4606B202 */     mul.s $f8, $f22, $f6
  /* 04EADC 800D30FC C7A60090 */      lwc1 $f6, 0x90($sp)
  /* 04EAE0 800D3100 46085280 */     add.s $f10, $f10, $f8
  /* 04EAE4 800D3104 C7A80094 */      lwc1 $f8, 0x94($sp)
  /* 04EAE8 800D3108 E7A40094 */      swc1 $f4, 0x94($sp)
  /* 04EAEC 800D310C 46081102 */     mul.s $f4, $f2, $f8
  /* 04EAF0 800D3110 00000000 */       nop 
  /* 04EAF4 800D3114 46062102 */     mul.s $f4, $f4, $f6
  /* 04EAF8 800D3118 46045680 */     add.s $f26, $f10, $f4
  /* 04EAFC 800D311C C7AA0098 */      lwc1 $f10, 0x98($sp)
  /* 04EB00 800D3120 E7A80098 */      swc1 $f8, 0x98($sp)
  /* 04EB04 800D3124 C7A80094 */      lwc1 $f8, 0x94($sp)
  /* 04EB08 800D3128 460A6102 */     mul.s $f4, $f12, $f10
  /* 04EB0C 800D312C 92180008 */       lbu $t8, 8($s0)
  /* 04EB10 800D3130 4600D406 */     mov.s $f16, $f26
  /* 04EB14 800D3134 46082102 */     mul.s $f4, $f4, $f8
  /* 04EB18 800D3138 C7A80098 */      lwc1 $f8, 0x98($sp)
  /* 04EB1C 800D313C 4608B202 */     mul.s $f8, $f22, $f8
  /* 04EB20 800D3140 46082101 */     sub.s $f4, $f4, $f8
  /* 04EB24 800D3144 460A1202 */     mul.s $f8, $f2, $f10
  /* 04EB28 800D3148 00000000 */       nop 
  /* 04EB2C 800D314C 46064282 */     mul.s $f10, $f8, $f6
  /* 04EB30 800D3150 460A2700 */     add.s $f28, $f4, $f10
  /* 04EB34 800D3154 16580007 */       bne $s2, $t8, .L800D3174
  /* 04EB38 800D3158 4600E486 */     mov.s $f18, $f28
  /* 04EB3C 800D315C 4600C382 */     mul.s $f14, $f24, $f0
  /* 04EB40 800D3160 00000000 */       nop 
  /* 04EB44 800D3164 4600D402 */     mul.s $f16, $f26, $f0
  /* 04EB48 800D3168 00000000 */       nop 
  /* 04EB4C 800D316C 4600E482 */     mul.s $f18, $f28, $f0
  /* 04EB50 800D3170 00000000 */       nop 
  .L800D3174:
  /* 04EB54 800D3174 9619000C */       lhu $t9, 0xc($s0)
  /* 04EB58 800D3178 92040009 */       lbu $a0, 9($s0)
  /* 04EB5C 800D317C 96050006 */       lhu $a1, 6($s0)
  /* 04EB60 800D3180 9606000A */       lhu $a2, 0xa($s0)
  /* 04EB64 800D3184 8E070010 */        lw $a3, 0x10($s0)
  /* 04EB68 800D3188 C7A800CC */      lwc1 $f8, 0xcc($sp)
  /* 04EB6C 800D318C C7A600C8 */      lwc1 $f6, 0xc8($sp)
  /* 04EB70 800D3190 E7B20028 */      swc1 $f18, 0x28($sp)
  /* 04EB74 800D3194 E7B00024 */      swc1 $f16, 0x24($sp)
  /* 04EB78 800D3198 E7AE0020 */      swc1 $f14, 0x20($sp)
  /* 04EB7C 800D319C E7BE0014 */      swc1 $f30, 0x14($sp)
  /* 04EB80 800D31A0 AFB90010 */        sw $t9, 0x10($sp)
  /* 04EB84 800D31A4 E7A80018 */      swc1 $f8, 0x18($sp)
  /* 04EB88 800D31A8 E7A6001C */      swc1 $f6, 0x1c($sp)
  /* 04EB8C 800D31AC C6040034 */      lwc1 $f4, 0x34($s0)
  /* 04EB90 800D31B0 E7A4002C */      swc1 $f4, 0x2c($sp)
  /* 04EB94 800D31B4 C60A002C */      lwc1 $f10, 0x2c($s0)
  /* 04EB98 800D31B8 E7AA0030 */      swc1 $f10, 0x30($sp)
  /* 04EB9C 800D31BC C6080030 */      lwc1 $f8, 0x30($s0)
  /* 04EBA0 800D31C0 AFB0003C */        sw $s0, 0x3c($sp)
  /* 04EBA4 800D31C4 AFA00038 */        sw $zero, 0x38($sp)
  /* 04EBA8 800D31C8 0C0339EA */       jal func_ovl0_800CE7A8
  /* 04EBAC 800D31CC E7A80034 */      swc1 $f8, 0x34($sp)
  /* 04EBB0 800D31D0 3C013F80 */       lui $at, (0x3F800000 >> 16) # 1.0
  /* 04EBB4 800D31D4 4481D000 */      mtc1 $at, $f26 # 1.0 to cop1
  /* 04EBB8 800D31D8 1000008A */         b .L800D3404
  /* 04EBBC 800D31DC C6020044 */      lwc1 $f2, 0x44($s0)
  glabel jtgt_ovl0_800D31E0
  /* 04EBC0 800D31E0 0C006252 */       jal rand_f32
  /* 04EBC4 800D31E4 00000000 */       nop 
  /* 04EBC8 800D31E8 C6020014 */      lwc1 $f2, 0x14($s0)
  /* 04EBCC 800D31EC C6060050 */      lwc1 $f6, 0x50($s0)
  /* 04EBD0 800D31F0 C60C0018 */      lwc1 $f12, 0x18($s0)
  /* 04EBD4 800D31F4 C6080054 */      lwc1 $f8, 0x54($s0)
  /* 04EBD8 800D31F8 46023101 */     sub.s $f4, $f6, $f2
  /* 04EBDC 800D31FC C60E001C */      lwc1 $f14, 0x1c($s0)
  /* 04EBE0 800D3200 9609000C */       lhu $t1, 0xc($s0)
  /* 04EBE4 800D3204 460C4181 */     sub.s $f6, $f8, $f12
  /* 04EBE8 800D3208 46040282 */     mul.s $f10, $f0, $f4
  /* 04EBEC 800D320C 92040009 */       lbu $a0, 9($s0)
  /* 04EBF0 800D3210 96050006 */       lhu $a1, 6($s0)
  /* 04EBF4 800D3214 46060102 */     mul.s $f4, $f0, $f6
  /* 04EBF8 800D3218 9606000A */       lhu $a2, 0xa($s0)
  /* 04EBFC 800D321C 8E070010 */        lw $a3, 0x10($s0)
  /* 04EC00 800D3220 460A1780 */     add.s $f30, $f2, $f10
  /* 04EC04 800D3224 C60A0058 */      lwc1 $f10, 0x58($s0)
  /* 04EC08 800D3228 AFA90010 */        sw $t1, 0x10($sp)
  /* 04EC0C 800D322C 46046480 */     add.s $f18, $f12, $f4
  /* 04EC10 800D3230 C7A4011C */      lwc1 $f4, 0x11c($sp)
  /* 04EC14 800D3234 E7BE0014 */      swc1 $f30, 0x14($sp)
  /* 04EC18 800D3238 460E5201 */     sub.s $f8, $f10, $f14
  /* 04EC1C 800D323C C7AA0120 */      lwc1 $f10, 0x120($sp)
  /* 04EC20 800D3240 E7B20018 */      swc1 $f18, 0x18($sp)
  /* 04EC24 800D3244 E7A40020 */      swc1 $f4, 0x20($sp)
  /* 04EC28 800D3248 46080182 */     mul.s $f6, $f0, $f8
  /* 04EC2C 800D324C C7A80124 */      lwc1 $f8, 0x124($sp)
  /* 04EC30 800D3250 E7AA0024 */      swc1 $f10, 0x24($sp)
  /* 04EC34 800D3254 E7A80028 */      swc1 $f8, 0x28($sp)
  /* 04EC38 800D3258 46067400 */     add.s $f16, $f14, $f6
  /* 04EC3C 800D325C E7B0001C */      swc1 $f16, 0x1c($sp)
  /* 04EC40 800D3260 C6060034 */      lwc1 $f6, 0x34($s0)
  /* 04EC44 800D3264 E7A6002C */      swc1 $f6, 0x2c($sp)
  /* 04EC48 800D3268 C604002C */      lwc1 $f4, 0x2c($s0)
  /* 04EC4C 800D326C E7A40030 */      swc1 $f4, 0x30($sp)
  /* 04EC50 800D3270 C60A0030 */      lwc1 $f10, 0x30($s0)
  /* 04EC54 800D3274 AFB0003C */        sw $s0, 0x3c($sp)
  /* 04EC58 800D3278 AFA00038 */        sw $zero, 0x38($sp)
  /* 04EC5C 800D327C 0C0339EA */       jal func_ovl0_800CE7A8
  /* 04EC60 800D3280 E7AA0034 */      swc1 $f10, 0x34($sp)
  /* 04EC64 800D3284 3C013F80 */       lui $at, (0x3F800000 >> 16) # 1.0
  /* 04EC68 800D3288 4481D000 */      mtc1 $at, $f26 # 1.0 to cop1
  /* 04EC6C 800D328C 1000005D */         b .L800D3404
  /* 04EC70 800D3290 C6020044 */      lwc1 $f2, 0x44($s0)
  glabel jtgt_ovl0_800D3294
  /* 04EC74 800D3294 C7AC0120 */      lwc1 $f12, 0x120($sp)
  /* 04EC78 800D3298 C7AE0124 */      lwc1 $f14, 0x124($sp)
  /* 04EC7C 800D329C C7B4011C */      lwc1 $f20, 0x11c($sp)
  /* 04EC80 800D32A0 46006586 */     mov.s $f22, $f12
  /* 04EC84 800D32A4 0C00618F */       jal atan2f
  /* 04EC88 800D32A8 46007606 */     mov.s $f24, $f14
  /* 04EC8C 800D32AC 46000686 */     mov.s $f26, $f0
  /* 04EC90 800D32B0 0C00C0FC */       jal __sinf
  /* 04EC94 800D32B4 46000306 */     mov.s $f12, $f0
  /* 04EC98 800D32B8 46000706 */     mov.s $f28, $f0
  /* 04EC9C 800D32BC 0C00D734 */       jal cosf
  /* 04ECA0 800D32C0 4600D306 */     mov.s $f12, $f26
  /* 04ECA4 800D32C4 461CB202 */     mul.s $f8, $f22, $f28
  /* 04ECA8 800D32C8 4600A306 */     mov.s $f12, $f20
  /* 04ECAC 800D32CC 4600C182 */     mul.s $f6, $f24, $f0
  /* 04ECB0 800D32D0 0C00618F */       jal atan2f
  /* 04ECB4 800D32D4 46064380 */     add.s $f14, $f8, $f6
  /* 04ECB8 800D32D8 4614A102 */     mul.s $f4, $f20, $f20
  /* 04ECBC 800D32DC 46000706 */     mov.s $f28, $f0
  /* 04ECC0 800D32E0 4616B282 */     mul.s $f10, $f22, $f22
  /* 04ECC4 800D32E4 460A2200 */     add.s $f8, $f4, $f10
  /* 04ECC8 800D32E8 4618C182 */     mul.s $f6, $f24, $f24
  /* 04ECCC 800D32EC 0C00CD44 */       jal sqrtf
  /* 04ECD0 800D32F0 46064300 */     add.s $f12, $f8, $f6
  /* 04ECD4 800D32F4 4480F000 */      mtc1 $zero, $f30
  /* 04ECD8 800D32F8 C6040038 */      lwc1 $f4, 0x38($s0)
  /* 04ECDC 800D32FC 46000586 */     mov.s $f22, $f0
  /* 04ECE0 800D3300 3C013F80 */       lui $at, (0x3F800000 >> 16) # 1.0
  /* 04ECE4 800D3304 461E203C */    c.lt.s $f4, $f30
  /* 04ECE8 800D3308 00000000 */       nop 
  /* 04ECEC 800D330C 45000004 */      bc1f .L800D3320
  /* 04ECF0 800D3310 00000000 */       nop 
  /* 04ECF4 800D3314 4481C000 */      mtc1 $at, $f24 # 1.0 to cop1
  /* 04ECF8 800D3318 10000005 */         b .L800D3330
  /* 04ECFC 800D331C C60A003C */      lwc1 $f10, 0x3c($s0)
  .L800D3320:
  /* 04ED00 800D3320 0C006252 */       jal rand_f32
  /* 04ED04 800D3324 00000000 */       nop 
  /* 04ED08 800D3328 46000606 */     mov.s $f24, $f0
  /* 04ED0C 800D332C C60A003C */      lwc1 $f10, 0x3c($s0)
  .L800D3330:
  /* 04ED10 800D3330 C7A800DC */      lwc1 $f8, 0xdc($sp)
  /* 04ED14 800D3334 C7A600B8 */      lwc1 $f6, 0xb8($sp)
  /* 04ED18 800D3338 461E503C */    c.lt.s $f10, $f30
  /* 04ED1C 800D333C 00000000 */       nop 
  /* 04ED20 800D3340 45000004 */      bc1f .L800D3354
  /* 04ED24 800D3344 00000000 */       nop 
  /* 04ED28 800D3348 46064100 */     add.s $f4, $f8, $f6
  /* 04ED2C 800D334C 10000007 */         b .L800D336C
  /* 04ED30 800D3350 E7A400DC */      swc1 $f4, 0xdc($sp)
  .L800D3354:
  /* 04ED34 800D3354 0C006252 */       jal rand_f32
  /* 04ED38 800D3358 00000000 */       nop 
  /* 04ED3C 800D335C 3C01800D */       lui $at, %hi(D_ovl0_800D6280)
  /* 04ED40 800D3360 C42A6280 */      lwc1 $f10, %lo(D_ovl0_800D6280)($at)
  /* 04ED44 800D3364 460A0202 */     mul.s $f8, $f0, $f10
  /* 04ED48 800D3368 E7A800DC */      swc1 $f8, 0xdc($sp)
  .L800D336C:
  /* 04ED4C 800D336C E6160050 */      swc1 $f22, 0x50($s0)
  /* 04ED50 800D3370 96050006 */       lhu $a1, 6($s0)
  /* 04ED54 800D3374 9608000C */       lhu $t0, 0xc($s0)
  /* 04ED58 800D3378 92040009 */       lbu $a0, 9($s0)
  /* 04ED5C 800D337C 9606000A */       lhu $a2, 0xa($s0)
  /* 04ED60 800D3380 8E070010 */        lw $a3, 0x10($s0)
  /* 04ED64 800D3384 4480A000 */      mtc1 $zero, $f20
  /* 04ED68 800D3388 C7A600DC */      lwc1 $f6, 0xdc($sp)
  /* 04ED6C 800D338C E7B80024 */      swc1 $f24, 0x24($sp)
  /* 04ED70 800D3390 AFA80010 */        sw $t0, 0x10($sp)
  /* 04ED74 800D3394 E7A60020 */      swc1 $f6, 0x20($sp)
  /* 04ED78 800D3398 E7B40014 */      swc1 $f20, 0x14($sp)
  /* 04ED7C 800D339C E7B40018 */      swc1 $f20, 0x18($sp)
  /* 04ED80 800D33A0 E7B4001C */      swc1 $f20, 0x1c($sp)
  /* 04ED84 800D33A4 E7B40028 */      swc1 $f20, 0x28($sp)
  /* 04ED88 800D33A8 C6040034 */      lwc1 $f4, 0x34($s0)
  /* 04ED8C 800D33AC AFB0003C */        sw $s0, 0x3c($sp)
  /* 04ED90 800D33B0 AFA00038 */        sw $zero, 0x38($sp)
  /* 04ED94 800D33B4 E7BC0034 */      swc1 $f28, 0x34($sp)
  /* 04ED98 800D33B8 E7BA0030 */      swc1 $f26, 0x30($sp)
  /* 04ED9C 800D33BC 34A50004 */       ori $a1, $a1, 4
  /* 04EDA0 800D33C0 0C0339EA */       jal func_ovl0_800CE7A8
  /* 04EDA4 800D33C4 E7A4002C */      swc1 $f4, 0x2c($sp)
  /* 04EDA8 800D33C8 10400004 */      beqz $v0, .L800D33DC
  /* 04EDAC 800D33CC 3C013F80 */       lui $at, (0x3F800000 >> 16) # 1.0
  /* 04EDB0 800D33D0 960F0054 */       lhu $t7, 0x54($s0)
  /* 04EDB4 800D33D4 25EB0001 */     addiu $t3, $t7, 1
  /* 04EDB8 800D33D8 A60B0054 */        sh $t3, 0x54($s0)
  .L800D33DC:
  /* 04EDBC 800D33DC 4481D000 */      mtc1 $at, $f26 # 1.0 to cop1
  /* 04EDC0 800D33E0 10000008 */         b .L800D3404
  /* 04EDC4 800D33E4 C6020044 */      lwc1 $f2, 0x44($s0)
  .L800D33E8:
  /* 04EDC8 800D33E8 8E620000 */        lw $v0, ($s3) # D_ovl0_800D6440 + 0
  /* 04EDCC 800D33EC 02202825 */        or $a1, $s1, $zero
  /* 04EDD0 800D33F0 50400005 */      beql $v0, $zero, .L800D3408
  /* 04EDD4 800D33F4 461A1281 */     sub.s $f10, $f2, $f26
  /* 04EDD8 800D33F8 0040F809 */      jalr $v0
  /* 04EDDC 800D33FC 02002025 */        or $a0, $s0, $zero
  /* 04EDE0 800D3400 C6020044 */      lwc1 $f2, 0x44($s0)
  .L800D3404:
  /* 04EDE4 800D3404 461A1281 */     sub.s $f10, $f2, $f26
  .L800D3408:
  /* 04EDE8 800D3408 E60A0044 */      swc1 $f10, 0x44($s0)
  /* 04EDEC 800D340C C6020044 */      lwc1 $f2, 0x44($s0)
  /* 04EDF0 800D3410 4602D03E */    c.le.s $f26, $f2
  /* 04EDF4 800D3414 00000000 */       nop 
  /* 04EDF8 800D3418 4503FE98 */     bc1tl .L800D2E7C
  /* 04EDFC 800D341C 920D0008 */       lbu $t5, 8($s0)
  /* 04EE00 800D3420 9602000E */       lhu $v0, 0xe($s0)
  .L800D3424:
  /* 04EE04 800D3424 10400033 */      beqz $v0, .L800D34F4
  /* 04EE08 800D3428 244CFFFF */     addiu $t4, $v0, -1
  /* 04EE0C 800D342C 318EFFFF */      andi $t6, $t4, 0xffff
  /* 04EE10 800D3430 15C00030 */      bnez $t6, .L800D34F4
  /* 04EE14 800D3434 A60C000E */        sh $t4, 0xe($s0)
  /* 04EE18 800D3438 920D0008 */       lbu $t5, 8($s0)
  /* 04EE1C 800D343C 24010002 */     addiu $at, $zero, 2
  /* 04EE20 800D3440 55A1000A */      bnel $t5, $at, .L800D346C
  /* 04EE24 800D3444 8E820000 */        lw $v0, ($s4) # D_ovl0_800D6458 + 0
  /* 04EE28 800D3448 960A0054 */       lhu $t2, 0x54($s0)
  /* 04EE2C 800D344C 24180001 */     addiu $t8, $zero, 1
  /* 04EE30 800D3450 51400006 */      beql $t2, $zero, .L800D346C
  /* 04EE34 800D3454 8E820000 */        lw $v0, ($s4) # D_ovl0_800D6458 + 0
  /* 04EE38 800D3458 44804000 */      mtc1 $zero, $f8
  /* 04EE3C 800D345C A618000E */        sh $t8, 0xe($s0)
  /* 04EE40 800D3460 10000024 */         b .L800D34F4
  /* 04EE44 800D3464 E6080040 */      swc1 $f8, 0x40($s0)
  /* 04EE48 800D3468 8E820000 */        lw $v0, ($s4) # D_ovl0_800D6458 + 0
  .L800D346C:
  /* 04EE4C 800D346C 54400006 */      bnel $v0, $zero, .L800D3488
  /* 04EE50 800D3470 8E090000 */        lw $t1, ($s0)
  /* 04EE54 800D3474 8E190000 */        lw $t9, ($s0)
  /* 04EE58 800D3478 3C01800D */       lui $at, %hi(D_ovl0_800D639C)
  /* 04EE5C 800D347C 10000003 */         b .L800D348C
  /* 04EE60 800D3480 AC39639C */        sw $t9, %lo(D_ovl0_800D639C)($at)
  /* 04EE64 800D3484 8E090000 */        lw $t1, ($s0)
  .L800D3488:
  /* 04EE68 800D3488 AC490000 */        sw $t1, ($v0)
  .L800D348C:
  /* 04EE6C 800D348C 8E04004C */        lw $a0, 0x4c($s0)
  /* 04EE70 800D3490 8E020000 */        lw $v0, ($s0)
  /* 04EE74 800D3494 1080000B */      beqz $a0, .L800D34C4
  /* 04EE78 800D3498 00000000 */       nop 
  /* 04EE7C 800D349C 9488002A */       lhu $t0, 0x2a($a0)
  /* 04EE80 800D34A0 250FFFFF */     addiu $t7, $t0, -1
  /* 04EE84 800D34A4 A48F002A */        sh $t7, 0x2a($a0)
  /* 04EE88 800D34A8 8E04004C */        lw $a0, 0x4c($s0)
  /* 04EE8C 800D34AC 948B002A */       lhu $t3, 0x2a($a0)
  /* 04EE90 800D34B0 15600004 */      bnez $t3, .L800D34C4
  /* 04EE94 800D34B4 00000000 */       nop 
  /* 04EE98 800D34B8 0C033862 */       jal func_ovl0_800CE188
  /* 04EE9C 800D34BC AFA20138 */        sw $v0, 0x138($sp)
  /* 04EEA0 800D34C0 8FA20138 */        lw $v0, 0x138($sp)
  .L800D34C4:
  /* 04EEA4 800D34C4 3C0C800D */       lui $t4, %hi(D_ovl0_800D6398)
  /* 04EEA8 800D34C8 8D8C6398 */        lw $t4, %lo(D_ovl0_800D6398)($t4)
  /* 04EEAC 800D34CC 3C0E800D */       lui $t6, %hi(D_ovl0_800D644A)
  /* 04EEB0 800D34D0 3C01800D */       lui $at, %hi(D_ovl0_800D6398)
  /* 04EEB4 800D34D4 AE0C0000 */        sw $t4, ($s0)
  /* 04EEB8 800D34D8 95CE644A */       lhu $t6, %lo(D_ovl0_800D644A)($t6)
  /* 04EEBC 800D34DC AC306398 */        sw $s0, %lo(D_ovl0_800D6398)($at)
  /* 04EEC0 800D34E0 3C01800D */       lui $at, %hi(D_ovl0_800D644A)
  /* 04EEC4 800D34E4 25CDFFFF */     addiu $t5, $t6, -1
  /* 04EEC8 800D34E8 00408025 */        or $s0, $v0, $zero
  /* 04EECC 800D34EC 10000003 */         b .L800D34FC
  /* 04EED0 800D34F0 A42D644A */        sh $t5, %lo(D_ovl0_800D644A)($at)
  .L800D34F4:
  /* 04EED4 800D34F4 AE900000 */        sw $s0, ($s4) # D_ovl0_800D6458 + 0
  /* 04EED8 800D34F8 8E100000 */        lw $s0, ($s0)
  .L800D34FC:
  /* 04EEDC 800D34FC 5600FDEE */      bnel $s0, $zero, .L800D2CB8
  /* 04EEE0 800D3500 8FAF0140 */        lw $t7, 0x140($sp)
  .L800D3504:
  /* 04EEE4 800D3504 8FBF008C */        lw $ra, 0x8c($sp)
  /* 04EEE8 800D3508 D7B40048 */      ldc1 $f20, 0x48($sp)
  /* 04EEEC 800D350C D7B60050 */      ldc1 $f22, 0x50($sp)
  /* 04EEF0 800D3510 D7B80058 */      ldc1 $f24, 0x58($sp)
  /* 04EEF4 800D3514 D7BA0060 */      ldc1 $f26, 0x60($sp)
  /* 04EEF8 800D3518 D7BC0068 */      ldc1 $f28, 0x68($sp)
  /* 04EEFC 800D351C D7BE0070 */      ldc1 $f30, 0x70($sp)
  /* 04EF00 800D3520 8FB00078 */        lw $s0, 0x78($sp)
  /* 04EF04 800D3524 8FB1007C */        lw $s1, 0x7c($sp)
  /* 04EF08 800D3528 8FB20080 */        lw $s2, 0x80($sp)
  /* 04EF0C 800D352C 8FB30084 */        lw $s3, 0x84($sp)
  /* 04EF10 800D3530 8FB40088 */        lw $s4, 0x88($sp)
  /* 04EF14 800D3534 03E00008 */        jr $ra
  /* 04EF18 800D3538 27BD0140 */     addiu $sp, $sp, 0x140

glabel func_ovl0_800D353C
  /* 04EF1C 800D353C 3C04800D */       lui $a0, %hi(D_ovl0_800D6398)
  /* 04EF20 800D3540 24846398 */     addiu $a0, $a0, %lo(D_ovl0_800D6398)
  /* 04EF24 800D3544 8C830000 */        lw $v1, ($a0) # D_ovl0_800D6398 + 0
  /* 04EF28 800D3548 3C05800D */       lui $a1, %hi(D_ovl0_800D644A)
  /* 04EF2C 800D354C 24A5644A */     addiu $a1, $a1, %lo(D_ovl0_800D644A)
  /* 04EF30 800D3550 14600003 */      bnez $v1, .L800D3560
  /* 04EF34 800D3554 3C06800D */       lui $a2, 0x800d
  /* 04EF38 800D3558 03E00008 */        jr $ra
  /* 04EF3C 800D355C 00001025 */        or $v0, $zero, $zero

  .L800D3560:
  /* 04EF40 800D3560 94AE0000 */       lhu $t6, ($a1)
  /* 04EF44 800D3564 24C66450 */     addiu $a2, $a2, 0x6450
  /* 04EF48 800D3568 94D80000 */       lhu $t8, ($a2)
  /* 04EF4C 800D356C 25CF0001 */     addiu $t7, $t6, 1
  /* 04EF50 800D3570 31E2FFFF */      andi $v0, $t7, 0xffff
  /* 04EF54 800D3574 0302082A */       slt $at, $t8, $v0
  /* 04EF58 800D3578 10200002 */      beqz $at, .L800D3584
  /* 04EF5C 800D357C A4AF0000 */        sh $t7, ($a1)
  /* 04EF60 800D3580 A4C20000 */        sh $v0, ($a2)
  .L800D3584:
  /* 04EF64 800D3584 3C02800D */       lui $v0, %hi(D_ovl0_800D639C)
  /* 04EF68 800D3588 8C790000 */        lw $t9, ($v1)
  /* 04EF6C 800D358C 2442639C */     addiu $v0, $v0, %lo(D_ovl0_800D639C)
  /* 04EF70 800D3590 8C480000 */        lw $t0, ($v0) # D_ovl0_800D639C + 0
  /* 04EF74 800D3594 3C05800D */       lui $a1, %hi(D_ovl0_800D6458)
  /* 04EF78 800D3598 AC990000 */        sw $t9, ($a0)
  /* 04EF7C 800D359C 24A56458 */     addiu $a1, $a1, %lo(D_ovl0_800D6458)
  /* 04EF80 800D35A0 AC680000 */        sw $t0, ($v1)
  /* 04EF84 800D35A4 8CA90000 */        lw $t1, ($a1) # D_ovl0_800D6458 + 0
  /* 04EF88 800D35A8 3C04800D */       lui $a0, %hi(D_ovl0_800D5D58)
  /* 04EF8C 800D35AC AC430000 */        sw $v1, ($v0) # D_ovl0_800D639C + 0
  /* 04EF90 800D35B0 15200002 */      bnez $t1, .L800D35BC
  /* 04EF94 800D35B4 24845D58 */     addiu $a0, $a0, %lo(D_ovl0_800D5D58)
  /* 04EF98 800D35B8 ACA30000 */        sw $v1, ($a1) # D_ovl0_800D6458 + 0
  .L800D35BC:
  /* 04EF9C 800D35BC 948A0000 */       lhu $t2, ($a0) # D_ovl0_800D5D58 + 0
  /* 04EFA0 800D35C0 00601025 */        or $v0, $v1, $zero
  /* 04EFA4 800D35C4 254C0001 */     addiu $t4, $t2, 1
  /* 04EFA8 800D35C8 A48C0000 */        sh $t4, ($a0) # D_ovl0_800D5D58 + 0
  /* 04EFAC 800D35CC A46C0004 */        sh $t4, 4($v1)
  /* 04EFB0 800D35D0 AC60004C */        sw $zero, 0x4c($v1)
  /* 04EFB4 800D35D4 03E00008 */        jr $ra
  /* 04EFB8 800D35D8 00000000 */       nop 

# render sprite info?
glabel func_ovl0_800D35DC
  /* 04EFBC 800D35DC 30820007 */      andi $v0, $a0, 7
  /* 04EFC0 800D35E0 27BDFFD0 */     addiu $sp, $sp, -0x30
  /* 04EFC4 800D35E4 28410008 */      slti $at, $v0, 8
  /* 04EFC8 800D35E8 AFBF0014 */        sw $ra, 0x14($sp)
  /* 04EFCC 800D35EC 00803025 */        or $a2, $a0, $zero
  /* 04EFD0 800D35F0 14200003 */      bnez $at, .L800D3600
  /* 04EFD4 800D35F4 00A03825 */        or $a3, $a1, $zero
  /* 04EFD8 800D35F8 1000009E */         b .L800D3874
  /* 04EFDC 800D35FC 00001025 */        or $v0, $zero, $zero
  .L800D3600:
  /* 04EFE0 800D3600 00022880 */       sll $a1, $v0, 2
  /* 04EFE4 800D3604 3C0E800D */       lui $t6, %hi(D_ovl0_800D63C0)
  /* 04EFE8 800D3608 01C57021 */      addu $t6, $t6, $a1
  /* 04EFEC 800D360C 8DCE63C0 */        lw $t6, %lo(D_ovl0_800D63C0)($t6)
  /* 04EFF0 800D3610 00EE082A */       slt $at, $a3, $t6
  /* 04EFF4 800D3614 54200004 */      bnel $at, $zero, .L800D3628
  /* 04EFF8 800D3618 AFA5001C */        sw $a1, 0x1c($sp)
  /* 04EFFC 800D361C 10000095 */         b .L800D3874
  /* 04F000 800D3620 00001025 */        or $v0, $zero, $zero
  /* 04F004 800D3624 AFA5001C */        sw $a1, 0x1c($sp)
  .L800D3628:
  /* 04F008 800D3628 AFA60030 */        sw $a2, 0x30($sp)
  /* 04F00C 800D362C 0C034D4F */       jal func_ovl0_800D353C
  /* 04F010 800D3630 AFA70034 */        sw $a3, 0x34($sp)
  /* 04F014 800D3634 8FA5001C */        lw $a1, 0x1c($sp)
  /* 04F018 800D3638 8FA60030 */        lw $a2, 0x30($sp)
  /* 04F01C 800D363C 8FA70034 */        lw $a3, 0x34($sp)
  /* 04F020 800D3640 1040008B */      beqz $v0, .L800D3870
  /* 04F024 800D3644 AFA2002C */        sw $v0, 0x2c($sp)
  /* 04F028 800D3648 3C0F800D */       lui $t7, %hi(D_ovl0_800D6400)
  /* 04F02C 800D364C 25EF6400 */     addiu $t7, $t7, %lo(D_ovl0_800D6400)
  /* 04F030 800D3650 00AF2021 */      addu $a0, $a1, $t7
  /* 04F034 800D3654 8C980000 */        lw $t8, ($a0)
  /* 04F038 800D3658 00071880 */       sll $v1, $a3, 2
  /* 04F03C 800D365C 44800000 */      mtc1 $zero, $f0
  /* 04F040 800D3660 0303C821 */      addu $t9, $t8, $v1
  /* 04F044 800D3664 8F280000 */        lw $t0, ($t9)
  /* 04F048 800D3668 95090000 */       lhu $t1, ($t0)
  /* 04F04C 800D366C A0460009 */        sb $a2, 9($v0)
  /* 04F050 800D3670 A0490008 */        sb $t1, 8($v0)
  /* 04F054 800D3674 8C8A0000 */        lw $t2, ($a0)
  /* 04F058 800D3678 01435821 */      addu $t3, $t2, $v1
  /* 04F05C 800D367C 8D6C0000 */        lw $t4, ($t3)
  /* 04F060 800D3680 8D8D0008 */        lw $t5, 8($t4)
  /* 04F064 800D3684 A44D0006 */        sh $t5, 6($v0)
  /* 04F068 800D3688 8C8E0000 */        lw $t6, ($a0)
  /* 04F06C 800D368C 01C37821 */      addu $t7, $t6, $v1
  /* 04F070 800D3690 8DF80000 */        lw $t8, ($t7) # D_ovl0_800D6400 + 0
  /* 04F074 800D3694 97190002 */       lhu $t9, 2($t8)
  /* 04F078 800D3698 A459000A */        sh $t9, 0xa($v0)
  /* 04F07C 800D369C 8C880000 */        lw $t0, ($a0)
  /* 04F080 800D36A0 01034821 */      addu $t1, $t0, $v1
  /* 04F084 800D36A4 8D2A0000 */        lw $t2, ($t1)
  /* 04F088 800D36A8 954B0006 */       lhu $t3, 6($t2)
  /* 04F08C 800D36AC A44B000C */        sh $t3, 0xc($v0)
  /* 04F090 800D36B0 8C8C0000 */        lw $t4, ($a0)
  /* 04F094 800D36B4 01836821 */      addu $t5, $t4, $v1
  /* 04F098 800D36B8 8DAE0000 */        lw $t6, ($t5)
  /* 04F09C 800D36BC 95CF0004 */       lhu $t7, 4($t6)
  /* 04F0A0 800D36C0 E4400014 */      swc1 $f0, 0x14($v0)
  /* 04F0A4 800D36C4 E4400018 */      swc1 $f0, 0x18($v0)
  /* 04F0A8 800D36C8 E440001C */      swc1 $f0, 0x1c($v0)
  /* 04F0AC 800D36CC A44F000E */        sh $t7, 0xe($v0)
  /* 04F0B0 800D36D0 8C980000 */        lw $t8, ($a0)
  /* 04F0B4 800D36D4 0303C821 */      addu $t9, $t8, $v1
  /* 04F0B8 800D36D8 8F280000 */        lw $t0, ($t9)
  /* 04F0BC 800D36DC C5040014 */      lwc1 $f4, 0x14($t0)
  /* 04F0C0 800D36E0 E4440020 */      swc1 $f4, 0x20($v0)
  /* 04F0C4 800D36E4 8C890000 */        lw $t1, ($a0)
  /* 04F0C8 800D36E8 01235021 */      addu $t2, $t1, $v1
  /* 04F0CC 800D36EC 8D4B0000 */        lw $t3, ($t2)
  /* 04F0D0 800D36F0 C5660018 */      lwc1 $f6, 0x18($t3)
  /* 04F0D4 800D36F4 E4460024 */      swc1 $f6, 0x24($v0)
  /* 04F0D8 800D36F8 8C8C0000 */        lw $t4, ($a0)
  /* 04F0DC 800D36FC 01836821 */      addu $t5, $t4, $v1
  /* 04F0E0 800D3700 8DAE0000 */        lw $t6, ($t5)
  /* 04F0E4 800D3704 C5C8001C */      lwc1 $f8, 0x1c($t6)
  /* 04F0E8 800D3708 E4480028 */      swc1 $f8, 0x28($v0)
  /* 04F0EC 800D370C 8C8F0000 */        lw $t7, ($a0)
  /* 04F0F0 800D3710 01E3C021 */      addu $t8, $t7, $v1
  /* 04F0F4 800D3714 8F190000 */        lw $t9, ($t8)
  /* 04F0F8 800D3718 C72A000C */      lwc1 $f10, 0xc($t9)
  /* 04F0FC 800D371C E44A002C */      swc1 $f10, 0x2c($v0)
  /* 04F100 800D3720 8C880000 */        lw $t0, ($a0)
  /* 04F104 800D3724 01034821 */      addu $t1, $t0, $v1
  /* 04F108 800D3728 8D2A0000 */        lw $t2, ($t1)
  /* 04F10C 800D372C C5500010 */      lwc1 $f16, 0x10($t2)
  /* 04F110 800D3730 E4500030 */      swc1 $f16, 0x30($v0)
  /* 04F114 800D3734 8C8B0000 */        lw $t3, ($a0)
  /* 04F118 800D3738 01636021 */      addu $t4, $t3, $v1
  /* 04F11C 800D373C 8D8D0000 */        lw $t5, ($t4)
  /* 04F120 800D3740 C5B2002C */      lwc1 $f18, 0x2c($t5)
  /* 04F124 800D3744 E4520034 */      swc1 $f18, 0x34($v0)
  /* 04F128 800D3748 8C8E0000 */        lw $t6, ($a0)
  /* 04F12C 800D374C 01C37821 */      addu $t7, $t6, $v1
  /* 04F130 800D3750 8DF80000 */        lw $t8, ($t7)
  /* 04F134 800D3754 27190030 */     addiu $t9, $t8, 0x30
  /* 04F138 800D3758 AC590010 */        sw $t9, 0x10($v0)
  /* 04F13C 800D375C 8C880000 */        lw $t0, ($a0)
  /* 04F140 800D3760 3C19800D */       lui $t9, %hi(D_ovl0_800D6420)
  /* 04F144 800D3764 0325C821 */      addu $t9, $t9, $a1
  /* 04F148 800D3768 01034821 */      addu $t1, $t0, $v1
  /* 04F14C 800D376C 8D2A0000 */        lw $t2, ($t1)
  /* 04F150 800D3770 C5440020 */      lwc1 $f4, 0x20($t2)
  /* 04F154 800D3774 E4440038 */      swc1 $f4, 0x38($v0)
  /* 04F158 800D3778 8C8B0000 */        lw $t3, ($a0)
  /* 04F15C 800D377C 01636021 */      addu $t4, $t3, $v1
  /* 04F160 800D3780 8D8D0000 */        lw $t5, ($t4)
  /* 04F164 800D3784 C5A60024 */      lwc1 $f6, 0x24($t5)
  /* 04F168 800D3788 E446003C */      swc1 $f6, 0x3c($v0)
  /* 04F16C 800D378C 8C8E0000 */        lw $t6, ($a0)
  /* 04F170 800D3790 01C37821 */      addu $t7, $t6, $v1
  /* 04F174 800D3794 8DF80000 */        lw $t8, ($t7)
  /* 04F178 800D3798 C7080028 */      lwc1 $f8, 0x28($t8)
  /* 04F17C 800D379C E4400044 */      swc1 $f0, 0x44($v0)
  /* 04F180 800D37A0 E4480040 */      swc1 $f8, 0x40($v0)
  /* 04F184 800D37A4 8C880000 */        lw $t0, ($a0)
  /* 04F188 800D37A8 8F396420 */        lw $t9, %lo(D_ovl0_800D6420)($t9)
  /* 04F18C 800D37AC 01034821 */      addu $t1, $t0, $v1
  /* 04F190 800D37B0 8D2A0000 */        lw $t2, ($t1)
  /* 04F194 800D37B4 954B0002 */       lhu $t3, 2($t2)
  /* 04F198 800D37B8 000B6080 */       sll $t4, $t3, 2
  /* 04F19C 800D37BC 032C6821 */      addu $t5, $t9, $t4
  /* 04F1A0 800D37C0 8DAE0000 */        lw $t6, ($t5)
  /* 04F1A4 800D37C4 8DCF0014 */        lw $t7, 0x14($t6)
  /* 04F1A8 800D37C8 51E00005 */      beql $t7, $zero, .L800D37E0
  /* 04F1AC 800D37CC 90490008 */       lbu $t1, 8($v0)
  /* 04F1B0 800D37D0 94580006 */       lhu $t8, 6($v0)
  /* 04F1B4 800D37D4 37080010 */       ori $t0, $t8, 0x10
  /* 04F1B8 800D37D8 A4480006 */        sh $t0, 6($v0)
  /* 04F1BC 800D37DC 90490008 */       lbu $t1, 8($v0)
  .L800D37E0:
  /* 04F1C0 800D37E0 AC400048 */        sw $zero, 0x48($v0)
  /* 04F1C4 800D37E4 2D210005 */     sltiu $at, $t1, 5
  /* 04F1C8 800D37E8 1020001B */      beqz $at, .L800D3858
  /* 04F1CC 800D37EC 00094880 */       sll $t1, $t1, 2
  /* 04F1D0 800D37F0 3C01800D */       lui $at, %hi(jtbl_ovl0_800D6284)
  /* 04F1D4 800D37F4 00290821 */      addu $at, $at, $t1
  /* 04F1D8 800D37F8 8C296284 */        lw $t1, %lo(jtbl_ovl0_800D6284)($at)
  /* 04F1DC 800D37FC 01200008 */        jr $t1
  /* 04F1E0 800D3800 00000000 */       nop 
  glabel jtgt_ovl0_800D3804
  /* 04F1E4 800D3804 44805000 */      mtc1 $zero, $f10
  /* 04F1E8 800D3808 3C01800D */       lui $at, %hi(D_ovl0_800D6298)
  /* 04F1EC 800D380C E44A0050 */      swc1 $f10, 0x50($v0)
  /* 04F1F0 800D3810 C4306298 */      lwc1 $f16, %lo(D_ovl0_800D6298)($at)
  /* 04F1F4 800D3814 10000016 */         b .L800D3870
  /* 04F1F8 800D3818 E4500054 */      swc1 $f16, 0x54($v0)
  glabel jtgt_ovl0_800D381C
  /* 04F1FC 800D381C C4520014 */      lwc1 $f18, 0x14($v0)
  /* 04F200 800D3820 C4440020 */      lwc1 $f4, 0x20($v0)
  /* 04F204 800D3824 C4480018 */      lwc1 $f8, 0x18($v0)
  /* 04F208 800D3828 C44A0024 */      lwc1 $f10, 0x24($v0)
  /* 04F20C 800D382C 46049180 */     add.s $f6, $f18, $f4
  /* 04F210 800D3830 C4440028 */      lwc1 $f4, 0x28($v0)
  /* 04F214 800D3834 C452001C */      lwc1 $f18, 0x1c($v0)
  /* 04F218 800D3838 460A4400 */     add.s $f16, $f8, $f10
  /* 04F21C 800D383C E4460050 */      swc1 $f6, 0x50($v0)
  /* 04F220 800D3840 46049180 */     add.s $f6, $f18, $f4
  /* 04F224 800D3844 E4500054 */      swc1 $f16, 0x54($v0)
  /* 04F228 800D3848 10000009 */         b .L800D3870
  /* 04F22C 800D384C E4460058 */      swc1 $f6, 0x58($v0)
  glabel jtgt_ovl0_800D3850
  /* 04F230 800D3850 10000007 */         b .L800D3870
  /* 04F234 800D3854 A4400054 */        sh $zero, 0x54($v0)
  .L800D3858:
  /* 04F238 800D3858 3C02800D */       lui $v0, %hi(D_ovl0_800D6444)
  /* 04F23C 800D385C 8C426444 */        lw $v0, %lo(D_ovl0_800D6444)($v0)
  /* 04F240 800D3860 50400004 */      beql $v0, $zero, .L800D3874
  /* 04F244 800D3864 8FA2002C */        lw $v0, 0x2c($sp)
  /* 04F248 800D3868 0040F809 */      jalr $v0
  /* 04F24C 800D386C 8FA4002C */        lw $a0, 0x2c($sp)
  .L800D3870:
  /* 04F250 800D3870 8FA2002C */        lw $v0, 0x2c($sp)
  .L800D3874:
  /* 04F254 800D3874 8FBF0014 */        lw $ra, 0x14($sp)
  /* 04F258 800D3878 27BD0030 */     addiu $sp, $sp, 0x30
  /* 04F25C 800D387C 03E00008 */        jr $ra
  /* 04F260 800D3880 00000000 */       nop 

glabel func_ovl0_800D3884
  /* 04F264 800D3884 3C05800D */       lui $a1, %hi(D_ovl0_800D639C)
  /* 04F268 800D3888 24A5639C */     addiu $a1, $a1, %lo(D_ovl0_800D639C)
  /* 04F26C 800D388C 8CA20000 */        lw $v0, ($a1) # D_ovl0_800D639C + 0
  /* 04F270 800D3890 27BDFFE0 */     addiu $sp, $sp, -0x20
  /* 04F274 800D3894 AFBF0014 */        sw $ra, 0x14($sp)
  /* 04F278 800D3898 10400033 */      beqz $v0, .L800D3968
  /* 04F27C 800D389C 00001825 */        or $v1, $zero, $zero
  .L800D38A0:
  /* 04F280 800D38A0 5444002E */      bnel $v0, $a0, .L800D395C
  /* 04F284 800D38A4 00401825 */        or $v1, $v0, $zero
  /* 04F288 800D38A8 908E0008 */       lbu $t6, 8($a0)
  /* 04F28C 800D38AC 24010002 */     addiu $at, $zero, 2
  /* 04F290 800D38B0 15C10009 */       bne $t6, $at, .L800D38D8
  /* 04F294 800D38B4 00000000 */       nop 
  /* 04F298 800D38B8 948F0054 */       lhu $t7, 0x54($a0)
  /* 04F29C 800D38BC 24180001 */     addiu $t8, $zero, 1
  /* 04F2A0 800D38C0 11E00005 */      beqz $t7, .L800D38D8
  /* 04F2A4 800D38C4 00000000 */       nop 
  /* 04F2A8 800D38C8 44802000 */      mtc1 $zero, $f4
  /* 04F2AC 800D38CC A498000E */        sh $t8, 0xe($a0)
  /* 04F2B0 800D38D0 10000025 */         b .L800D3968
  /* 04F2B4 800D38D4 E4840040 */      swc1 $f4, 0x40($a0)
  .L800D38D8:
  /* 04F2B8 800D38D8 54600005 */      bnel $v1, $zero, .L800D38F0
  /* 04F2BC 800D38DC 8C480000 */        lw $t0, ($v0)
  /* 04F2C0 800D38E0 8C590000 */        lw $t9, ($v0)
  /* 04F2C4 800D38E4 10000003 */         b .L800D38F4
  /* 04F2C8 800D38E8 ACB90000 */        sw $t9, ($a1) # D_ovl0_800D639C + 0
  /* 04F2CC 800D38EC 8C480000 */        lw $t0, ($v0)
  .L800D38F0:
  /* 04F2D0 800D38F0 AC680000 */        sw $t0, ($v1)
  .L800D38F4:
  /* 04F2D4 800D38F4 8C85004C */        lw $a1, 0x4c($a0)
  /* 04F2D8 800D38F8 10A0000C */      beqz $a1, .L800D392C
  /* 04F2DC 800D38FC 00000000 */       nop 
  /* 04F2E0 800D3900 94A9002A */       lhu $t1, 0x2a($a1)
  /* 04F2E4 800D3904 252AFFFF */     addiu $t2, $t1, -1
  /* 04F2E8 800D3908 A4AA002A */        sh $t2, 0x2a($a1)
  /* 04F2EC 800D390C 8C85004C */        lw $a1, 0x4c($a0)
  /* 04F2F0 800D3910 94AB002A */       lhu $t3, 0x2a($a1)
  /* 04F2F4 800D3914 00A02025 */        or $a0, $a1, $zero
  /* 04F2F8 800D3918 15600004 */      bnez $t3, .L800D392C
  /* 04F2FC 800D391C 00000000 */       nop 
  /* 04F300 800D3920 0C033862 */       jal func_ovl0_800CE188
  /* 04F304 800D3924 AFA20018 */        sw $v0, 0x18($sp)
  /* 04F308 800D3928 8FA20018 */        lw $v0, 0x18($sp)
  .L800D392C:
  /* 04F30C 800D392C 3C03800D */       lui $v1, %hi(D_ovl0_800D6398)
  /* 04F310 800D3930 24636398 */     addiu $v1, $v1, %lo(D_ovl0_800D6398)
  /* 04F314 800D3934 8C6C0000 */        lw $t4, ($v1) # D_ovl0_800D6398 + 0
  /* 04F318 800D3938 3C04800D */       lui $a0, %hi(D_ovl0_800D644A)
  /* 04F31C 800D393C 2484644A */     addiu $a0, $a0, %lo(D_ovl0_800D644A)
  /* 04F320 800D3940 AC4C0000 */        sw $t4, ($v0)
  /* 04F324 800D3944 948D0000 */       lhu $t5, ($a0) # D_ovl0_800D644A + 0
  /* 04F328 800D3948 AC620000 */        sw $v0, ($v1) # D_ovl0_800D6398 + 0
  /* 04F32C 800D394C 25AEFFFF */     addiu $t6, $t5, -1
  /* 04F330 800D3950 10000005 */         b .L800D3968
  /* 04F334 800D3954 A48E0000 */        sh $t6, ($a0) # D_ovl0_800D644A + 0
  /* 04F338 800D3958 00401825 */        or $v1, $v0, $zero
  .L800D395C:
  /* 04F33C 800D395C 8C420000 */        lw $v0, ($v0)
  /* 04F340 800D3960 1440FFCF */      bnez $v0, .L800D38A0
  /* 04F344 800D3964 00000000 */       nop 
  .L800D3968:
  /* 04F348 800D3968 8FBF0014 */        lw $ra, 0x14($sp)
  /* 04F34C 800D396C 27BD0020 */     addiu $sp, $sp, 0x20
  /* 04F350 800D3970 03E00008 */        jr $ra
  /* 04F354 800D3974 00000000 */       nop 

  /* 04F358 800D3978 27BDFFE0 */     addiu $sp, $sp, -0x20
  /* 04F35C 800D397C AFB00014 */        sw $s0, 0x14($sp)
  /* 04F360 800D3980 3C10800D */       lui $s0, %hi(D_ovl0_800D639C)
  /* 04F364 800D3984 8E10639C */        lw $s0, %lo(D_ovl0_800D639C)($s0)
  /* 04F368 800D3988 AFBF001C */        sw $ra, 0x1c($sp)
  /* 04F36C 800D398C AFB10018 */        sw $s1, 0x18($sp)
  /* 04F370 800D3990 52000007 */      beql $s0, $zero, .L800D39B0
  /* 04F374 800D3994 8FBF001C */        lw $ra, 0x1c($sp)
  .L800D3998:
  /* 04F378 800D3998 8E110000 */        lw $s1, ($s0)
  /* 04F37C 800D399C 0C034E21 */       jal func_ovl0_800D3884
  /* 04F380 800D39A0 02002025 */        or $a0, $s0, $zero
  /* 04F384 800D39A4 1620FFFC */      bnez $s1, .L800D3998
  /* 04F388 800D39A8 02208025 */        or $s0, $s1, $zero
  /* 04F38C 800D39AC 8FBF001C */        lw $ra, 0x1c($sp)
  .L800D39B0:
  /* 04F390 800D39B0 8FB00014 */        lw $s0, 0x14($sp)
  /* 04F394 800D39B4 8FB10018 */        lw $s1, 0x18($sp)
  /* 04F398 800D39B8 03E00008 */        jr $ra
  /* 04F39C 800D39BC 27BD0020 */     addiu $sp, $sp, 0x20

  /* 04F3A0 800D39C0 3C01800D */       lui $at, %hi(D_ovl0_800D6444)
  /* 04F3A4 800D39C4 AC246444 */        sw $a0, %lo(D_ovl0_800D6444)($at)
  /* 04F3A8 800D39C8 3C01800D */       lui $at, %hi(D_ovl0_800D6440)
  /* 04F3AC 800D39CC 03E00008 */        jr $ra
  /* 04F3B0 800D39D0 AC256440 */        sw $a1, %lo(D_ovl0_800D6440)($at)

glabel func_ovl0_800D39D4
  /* 04F3B4 800D39D4 27BDFFB8 */     addiu $sp, $sp, -0x48
  /* 04F3B8 800D39D8 3C0F800D */       lui $t7, %hi(D_ovl0_800D6358)
  /* 04F3BC 800D39DC AFB60038 */        sw $s6, 0x38($sp)
  /* 04F3C0 800D39E0 25EF6358 */     addiu $t7, $t7, %lo(D_ovl0_800D6358)
  /* 04F3C4 800D39E4 00057080 */       sll $t6, $a1, 2
  /* 04F3C8 800D39E8 AFB00020 */        sw $s0, 0x20($sp)
  /* 04F3CC 800D39EC 01CFB021 */      addu $s6, $t6, $t7
  /* 04F3D0 800D39F0 8ED00000 */        lw $s0, ($s6)
  /* 04F3D4 800D39F4 AFBE0040 */        sw $fp, 0x40($sp)
  /* 04F3D8 800D39F8 AFB10024 */        sw $s1, 0x24($sp)
  /* 04F3DC 800D39FC 309EFFFF */      andi $fp, $a0, 0xffff
  /* 04F3E0 800D3A00 AFBF0044 */        sw $ra, 0x44($sp)
  /* 04F3E4 800D3A04 AFB7003C */        sw $s7, 0x3c($sp)
  /* 04F3E8 800D3A08 AFB50034 */        sw $s5, 0x34($sp)
  /* 04F3EC 800D3A0C AFB40030 */        sw $s4, 0x30($sp)
  /* 04F3F0 800D3A10 AFB3002C */        sw $s3, 0x2c($sp)
  /* 04F3F4 800D3A14 AFB20028 */        sw $s2, 0x28($sp)
  /* 04F3F8 800D3A18 F7B40018 */      sdc1 $f20, 0x18($sp)
  /* 04F3FC 800D3A1C AFA40048 */        sw $a0, 0x48($sp)
  /* 04F400 800D3A20 12000033 */      beqz $s0, .L800D3AF0
  /* 04F404 800D3A24 00008825 */        or $s1, $zero, $zero
  /* 04F408 800D3A28 3C14800D */       lui $s4, %hi(D_ovl0_800D6448)
  /* 04F40C 800D3A2C 3C13800D */       lui $s3, %hi(D_ovl0_800D6350)
  /* 04F410 800D3A30 26736350 */     addiu $s3, $s3, %lo(D_ovl0_800D6350)
  /* 04F414 800D3A34 26946448 */     addiu $s4, $s4, %lo(D_ovl0_800D6448)
  /* 04F418 800D3A38 03C0A825 */        or $s5, $fp, $zero
  /* 04F41C 800D3A3C 24170002 */     addiu $s7, $zero, 2
  .L800D3A40:
  /* 04F420 800D3A40 96180004 */       lhu $t8, 4($s0)
  /* 04F424 800D3A44 8E020000 */        lw $v0, ($s0)
  /* 04F428 800D3A48 16B80026 */       bne $s5, $t8, .L800D3AE4
  /* 04F42C 800D3A4C 00409025 */        or $s2, $v0, $zero
  /* 04F430 800D3A50 56200004 */      bnel $s1, $zero, .L800D3A64
  /* 04F434 800D3A54 AE220000 */        sw $v0, ($s1)
  /* 04F438 800D3A58 10000002 */         b .L800D3A64
  /* 04F43C 800D3A5C AEC20000 */        sw $v0, ($s6)
  /* 04F440 800D3A60 AE220000 */        sw $v0, ($s1)
  .L800D3A64:
  /* 04F444 800D3A64 8E020058 */        lw $v0, 0x58($s0)
  /* 04F448 800D3A68 5040000C */      beql $v0, $zero, .L800D3A9C
  /* 04F44C 800D3A6C 8E04005C */        lw $a0, 0x5c($s0)
  /* 04F450 800D3A70 96190006 */       lhu $t9, 6($s0)
  /* 04F454 800D3A74 33280004 */      andi $t0, $t9, 4
  /* 04F458 800D3A78 51000008 */      beql $t0, $zero, .L800D3A9C
  /* 04F45C 800D3A7C 8E04005C */        lw $a0, 0x5c($s0)
  /* 04F460 800D3A80 90490008 */       lbu $t1, 8($v0)
  /* 04F464 800D3A84 56E90005 */      bnel $s7, $t1, .L800D3A9C
  /* 04F468 800D3A88 8E04005C */        lw $a0, 0x5c($s0)
  /* 04F46C 800D3A8C 944A0054 */       lhu $t2, 0x54($v0)
  /* 04F470 800D3A90 254BFFFF */     addiu $t3, $t2, -1
  /* 04F474 800D3A94 A44B0054 */        sh $t3, 0x54($v0)
  /* 04F478 800D3A98 8E04005C */        lw $a0, 0x5c($s0)
  .L800D3A9C:
  /* 04F47C 800D3A9C 5080000B */      beql $a0, $zero, .L800D3ACC
  /* 04F480 800D3AA0 8E6F0000 */        lw $t7, ($s3) # D_ovl0_800D6350 + 0
  /* 04F484 800D3AA4 948C002A */       lhu $t4, 0x2a($a0)
  /* 04F488 800D3AA8 258DFFFF */     addiu $t5, $t4, -1
  /* 04F48C 800D3AAC A48D002A */        sh $t5, 0x2a($a0)
  /* 04F490 800D3AB0 8E04005C */        lw $a0, 0x5c($s0)
  /* 04F494 800D3AB4 948E002A */       lhu $t6, 0x2a($a0)
  /* 04F498 800D3AB8 55C00004 */      bnel $t6, $zero, .L800D3ACC
  /* 04F49C 800D3ABC 8E6F0000 */        lw $t7, ($s3) # D_ovl0_800D6350 + 0
  /* 04F4A0 800D3AC0 0C033862 */       jal func_ovl0_800CE188
  /* 04F4A4 800D3AC4 00000000 */       nop 
  /* 04F4A8 800D3AC8 8E6F0000 */        lw $t7, ($s3) # D_ovl0_800D6350 + 0
  .L800D3ACC:
  /* 04F4AC 800D3ACC AE0F0000 */        sw $t7, ($s0)
  /* 04F4B0 800D3AD0 96980000 */       lhu $t8, ($s4) # D_ovl0_800D6448 + 0
  /* 04F4B4 800D3AD4 AE700000 */        sw $s0, ($s3) # D_ovl0_800D6350 + 0
  /* 04F4B8 800D3AD8 2719FFFF */     addiu $t9, $t8, -1
  /* 04F4BC 800D3ADC 10000002 */         b .L800D3AE8
  /* 04F4C0 800D3AE0 A6990000 */        sh $t9, ($s4) # D_ovl0_800D6448 + 0
  .L800D3AE4:
  /* 04F4C4 800D3AE4 02008825 */        or $s1, $s0, $zero
  .L800D3AE8:
  /* 04F4C8 800D3AE8 1640FFD5 */      bnez $s2, .L800D3A40
  /* 04F4CC 800D3AEC 02408025 */        or $s0, $s2, $zero
  .L800D3AF0:
  /* 04F4D0 800D3AF0 3C16800D */       lui $s6, %hi(D_ovl0_800D639C)
  /* 04F4D4 800D3AF4 26D6639C */     addiu $s6, $s6, %lo(D_ovl0_800D639C)
  /* 04F4D8 800D3AF8 8ED00000 */        lw $s0, ($s6) # D_ovl0_800D639C + 0
  /* 04F4DC 800D3AFC 24170002 */     addiu $s7, $zero, 2
  /* 04F4E0 800D3B00 00008825 */        or $s1, $zero, $zero
  /* 04F4E4 800D3B04 12000030 */      beqz $s0, .L800D3BC8
  /* 04F4E8 800D3B08 03C0A825 */        or $s5, $fp, $zero
  /* 04F4EC 800D3B0C 3C14800D */       lui $s4, %hi(D_ovl0_800D644A)
  /* 04F4F0 800D3B10 3C13800D */       lui $s3, %hi(D_ovl0_800D6398)
  /* 04F4F4 800D3B14 4480A000 */      mtc1 $zero, $f20
  /* 04F4F8 800D3B18 26736398 */     addiu $s3, $s3, %lo(D_ovl0_800D6398)
  /* 04F4FC 800D3B1C 2694644A */     addiu $s4, $s4, %lo(D_ovl0_800D644A)
  /* 04F500 800D3B20 241E0001 */     addiu $fp, $zero, 1
  .L800D3B24:
  /* 04F504 800D3B24 96080004 */       lhu $t0, 4($s0)
  /* 04F508 800D3B28 8E020000 */        lw $v0, ($s0)
  /* 04F50C 800D3B2C 16A80023 */       bne $s5, $t0, .L800D3BBC
  /* 04F510 800D3B30 00409025 */        or $s2, $v0, $zero
  /* 04F514 800D3B34 92090008 */       lbu $t1, 8($s0)
  /* 04F518 800D3B38 16E90008 */       bne $s7, $t1, .L800D3B5C
  /* 04F51C 800D3B3C 00000000 */       nop 
  /* 04F520 800D3B40 960A0054 */       lhu $t2, 0x54($s0)
  /* 04F524 800D3B44 11400005 */      beqz $t2, .L800D3B5C
  /* 04F528 800D3B48 00000000 */       nop 
  /* 04F52C 800D3B4C E6140040 */      swc1 $f20, 0x40($s0)
  /* 04F530 800D3B50 A61E000E */        sh $fp, 0xe($s0)
  /* 04F534 800D3B54 1000001A */         b .L800D3BC0
  /* 04F538 800D3B58 02008825 */        or $s1, $s0, $zero
  .L800D3B5C:
  /* 04F53C 800D3B5C 56200004 */      bnel $s1, $zero, .L800D3B70
  /* 04F540 800D3B60 AE220000 */        sw $v0, ($s1)
  /* 04F544 800D3B64 10000002 */         b .L800D3B70
  /* 04F548 800D3B68 AEC20000 */        sw $v0, ($s6) # D_ovl0_800D639C + 0
  /* 04F54C 800D3B6C AE220000 */        sw $v0, ($s1)
  .L800D3B70:
  /* 04F550 800D3B70 8E04004C */        lw $a0, 0x4c($s0)
  /* 04F554 800D3B74 5080000B */      beql $a0, $zero, .L800D3BA4
  /* 04F558 800D3B78 8E6E0000 */        lw $t6, ($s3) # D_ovl0_800D6398 + 0
  /* 04F55C 800D3B7C 948B002A */       lhu $t3, 0x2a($a0)
  /* 04F560 800D3B80 256CFFFF */     addiu $t4, $t3, -1
  /* 04F564 800D3B84 A48C002A */        sh $t4, 0x2a($a0)
  /* 04F568 800D3B88 8E04004C */        lw $a0, 0x4c($s0)
  /* 04F56C 800D3B8C 948D002A */       lhu $t5, 0x2a($a0)
  /* 04F570 800D3B90 55A00004 */      bnel $t5, $zero, .L800D3BA4
  /* 04F574 800D3B94 8E6E0000 */        lw $t6, ($s3) # D_ovl0_800D6398 + 0
  /* 04F578 800D3B98 0C033862 */       jal func_ovl0_800CE188
  /* 04F57C 800D3B9C 00000000 */       nop 
  /* 04F580 800D3BA0 8E6E0000 */        lw $t6, ($s3) # D_ovl0_800D6398 + 0
  .L800D3BA4:
  /* 04F584 800D3BA4 AE0E0000 */        sw $t6, ($s0)
  /* 04F588 800D3BA8 968F0000 */       lhu $t7, ($s4) # D_ovl0_800D644A + 0
  /* 04F58C 800D3BAC AE700000 */        sw $s0, ($s3) # D_ovl0_800D6398 + 0
  /* 04F590 800D3BB0 25F8FFFF */     addiu $t8, $t7, -1
  /* 04F594 800D3BB4 10000002 */         b .L800D3BC0
  /* 04F598 800D3BB8 A6980000 */        sh $t8, ($s4) # D_ovl0_800D644A + 0
  .L800D3BBC:
  /* 04F59C 800D3BBC 02008825 */        or $s1, $s0, $zero
  .L800D3BC0:
  /* 04F5A0 800D3BC0 1640FFD8 */      bnez $s2, .L800D3B24
  /* 04F5A4 800D3BC4 02408025 */        or $s0, $s2, $zero
  .L800D3BC8:
  /* 04F5A8 800D3BC8 8FBF0044 */        lw $ra, 0x44($sp)
  /* 04F5AC 800D3BCC D7B40018 */      ldc1 $f20, 0x18($sp)
  /* 04F5B0 800D3BD0 8FB00020 */        lw $s0, 0x20($sp)
  /* 04F5B4 800D3BD4 8FB10024 */        lw $s1, 0x24($sp)
  /* 04F5B8 800D3BD8 8FB20028 */        lw $s2, 0x28($sp)
  /* 04F5BC 800D3BDC 8FB3002C */        lw $s3, 0x2c($sp)
  /* 04F5C0 800D3BE0 8FB40030 */        lw $s4, 0x30($sp)
  /* 04F5C4 800D3BE4 8FB50034 */        lw $s5, 0x34($sp)
  /* 04F5C8 800D3BE8 8FB60038 */        lw $s6, 0x38($sp)
  /* 04F5CC 800D3BEC 8FB7003C */        lw $s7, 0x3c($sp)
  /* 04F5D0 800D3BF0 8FBE0040 */        lw $fp, 0x40($sp)
  /* 04F5D4 800D3BF4 03E00008 */        jr $ra
  /* 04F5D8 800D3BF8 27BD0048 */     addiu $sp, $sp, 0x48

  /* 04F5DC 800D3BFC 27BDFFE8 */     addiu $sp, $sp, -0x18
  /* 04F5E0 800D3C00 AFBF0014 */        sw $ra, 0x14($sp)
  /* 04F5E4 800D3C04 00803025 */        or $a2, $a0, $zero
  /* 04F5E8 800D3C08 90C50008 */       lbu $a1, 8($a2)
  /* 04F5EC 800D3C0C 94840004 */       lhu $a0, 4($a0)
  /* 04F5F0 800D3C10 0C034E75 */       jal func_ovl0_800D39D4
  /* 04F5F4 800D3C14 000528C3 */       sra $a1, $a1, 3
  /* 04F5F8 800D3C18 8FBF0014 */        lw $ra, 0x14($sp)
  /* 04F5FC 800D3C1C 27BD0018 */     addiu $sp, $sp, 0x18
  /* 04F600 800D3C20 03E00008 */        jr $ra
  /* 04F604 800D3C24 00000000 */       nop 

  /* 04F608 800D3C28 27BDFFE8 */     addiu $sp, $sp, -0x18
  /* 04F60C 800D3C2C AFBF0014 */        sw $ra, 0x14($sp)
  /* 04F610 800D3C30 00803025 */        or $a2, $a0, $zero
  /* 04F614 800D3C34 90C50009 */       lbu $a1, 9($a2)
  /* 04F618 800D3C38 94840004 */       lhu $a0, 4($a0)
  /* 04F61C 800D3C3C 0C034E75 */       jal func_ovl0_800D39D4
  /* 04F620 800D3C40 000528C3 */       sra $a1, $a1, 3
  /* 04F624 800D3C44 8FBF0014 */        lw $ra, 0x14($sp)
  /* 04F628 800D3C48 27BD0018 */     addiu $sp, $sp, 0x18
  /* 04F62C 800D3C4C 03E00008 */        jr $ra
  /* 04F630 800D3C50 00000000 */       nop 

  /* 04F634 800D3C54 27BDFFD8 */     addiu $sp, $sp, -0x28
  /* 04F638 800D3C58 AFBF0024 */        sw $ra, 0x24($sp)
  /* 04F63C 800D3C5C AFB20020 */        sw $s2, 0x20($sp)
  /* 04F640 800D3C60 AFB1001C */        sw $s1, 0x1c($sp)
  /* 04F644 800D3C64 AFB00018 */        sw $s0, 0x18($sp)
  /* 04F648 800D3C68 908E000F */       lbu $t6, 0xf($a0)
  /* 04F64C 800D3C6C 24010001 */     addiu $at, $zero, 1
  /* 04F650 800D3C70 55C10016 */      bnel $t6, $at, .L800D3CCC
  /* 04F654 800D3C74 8FBF0024 */        lw $ra, 0x24($sp)
  /* 04F658 800D3C78 8C910074 */        lw $s1, 0x74($a0)
  /* 04F65C 800D3C7C 3C12800D */       lui $s2, %hi(D_ovl0_800D639C)
  /* 04F660 800D3C80 2652639C */     addiu $s2, $s2, %lo(D_ovl0_800D639C)
  /* 04F664 800D3C84 52200011 */      beql $s1, $zero, .L800D3CCC
  /* 04F668 800D3C88 8FBF0024 */        lw $ra, 0x24($sp)
  .L800D3C8C:
  /* 04F66C 800D3C8C 8E440000 */        lw $a0, ($s2) # D_ovl0_800D639C + 0
  /* 04F670 800D3C90 10800009 */      beqz $a0, .L800D3CB8
  /* 04F674 800D3C94 00000000 */       nop 
  .L800D3C98:
  /* 04F678 800D3C98 8C8F0048 */        lw $t7, 0x48($a0)
  /* 04F67C 800D3C9C 8C900000 */        lw $s0, ($a0)
  /* 04F680 800D3CA0 162F0003 */       bne $s1, $t7, .L800D3CB0
  /* 04F684 800D3CA4 00000000 */       nop 
  /* 04F688 800D3CA8 0C034E21 */       jal func_ovl0_800D3884
  /* 04F68C 800D3CAC 00000000 */       nop 
  .L800D3CB0:
  /* 04F690 800D3CB0 1600FFF9 */      bnez $s0, .L800D3C98
  /* 04F694 800D3CB4 02002025 */        or $a0, $s0, $zero
  .L800D3CB8:
  /* 04F698 800D3CB8 0C002EA8 */       jal func_8000BAA0
  /* 04F69C 800D3CBC 02202025 */        or $a0, $s1, $zero
  /* 04F6A0 800D3CC0 1440FFF2 */      bnez $v0, .L800D3C8C
  /* 04F6A4 800D3CC4 00408825 */        or $s1, $v0, $zero
  /* 04F6A8 800D3CC8 8FBF0024 */        lw $ra, 0x24($sp)
  .L800D3CCC:
  /* 04F6AC 800D3CCC 8FB00018 */        lw $s0, 0x18($sp)
  /* 04F6B0 800D3CD0 8FB1001C */        lw $s1, 0x1c($sp)
  /* 04F6B4 800D3CD4 8FB20020 */        lw $s2, 0x20($sp)
  /* 04F6B8 800D3CD8 03E00008 */        jr $ra
  /* 04F6BC 800D3CDC 27BD0028 */     addiu $sp, $sp, 0x28

  /* 04F6C0 800D3CE0 27BDFFF0 */     addiu $sp, $sp, -0x10
  /* 04F6C4 800D3CE4 F7B40008 */      sdc1 $f20, 8($sp)
  /* 04F6C8 800D3CE8 3C03800D */       lui $v1, %hi(D_ovl0_800D6358)
  /* 04F6CC 800D3CEC 3C04800D */       lui $a0, %hi(D_ovl0_800D6398)
  /* 04F6D0 800D3CF0 4486A000 */      mtc1 $a2, $f20
  /* 04F6D4 800D3CF4 24846398 */     addiu $a0, $a0, %lo(D_ovl0_800D6398)
  /* 04F6D8 800D3CF8 24636358 */     addiu $v1, $v1, %lo(D_ovl0_800D6358)
  /* 04F6DC 800D3CFC 8C620000 */        lw $v0, ($v1) # D_ovl0_800D6358 + 0
  .L800D3D00:
  /* 04F6E0 800D3D00 24630004 */     addiu $v1, $v1, 4
  /* 04F6E4 800D3D04 0064082B */      sltu $at, $v1, $a0
  /* 04F6E8 800D3D08 10400007 */      beqz $v0, .L800D3D28
  /* 04F6EC 800D3D0C 00000000 */       nop 
  /* 04F6F0 800D3D10 E44C0020 */      swc1 $f12, 0x20($v0)
  .L800D3D14:
  /* 04F6F4 800D3D14 E44E0024 */      swc1 $f14, 0x24($v0)
  /* 04F6F8 800D3D18 E4540028 */      swc1 $f20, 0x28($v0)
  /* 04F6FC 800D3D1C 8C420000 */        lw $v0, ($v0)
  /* 04F700 800D3D20 5440FFFC */      bnel $v0, $zero, .L800D3D14
  /* 04F704 800D3D24 E44C0020 */      swc1 $f12, 0x20($v0)
  .L800D3D28:
  /* 04F708 800D3D28 5420FFF5 */      bnel $at, $zero, .L800D3D00
  /* 04F70C 800D3D2C 8C620000 */        lw $v0, ($v1) # D_ovl0_800D6358 + 0
  /* 04F710 800D3D30 3C02800D */       lui $v0, %hi(D_ovl0_800D639C)
  /* 04F714 800D3D34 8C42639C */        lw $v0, %lo(D_ovl0_800D639C)($v0)
  /* 04F718 800D3D38 50400008 */      beql $v0, $zero, .L800D3D5C
  /* 04F71C 800D3D3C D7B40008 */      ldc1 $f20, 8($sp)
  /* 04F720 800D3D40 E44C0014 */      swc1 $f12, 0x14($v0)
  .L800D3D44:
  /* 04F724 800D3D44 E44E0018 */      swc1 $f14, 0x18($v0)
  /* 04F728 800D3D48 E454001C */      swc1 $f20, 0x1c($v0)
  /* 04F72C 800D3D4C 8C420000 */        lw $v0, ($v0)
  /* 04F730 800D3D50 5440FFFC */      bnel $v0, $zero, .L800D3D44
  /* 04F734 800D3D54 E44C0014 */      swc1 $f12, 0x14($v0)
  /* 04F738 800D3D58 D7B40008 */      ldc1 $f20, 8($sp)
  .L800D3D5C:
  /* 04F73C 800D3D5C 03E00008 */        jr $ra
  /* 04F740 800D3D60 27BD0010 */     addiu $sp, $sp, 0x10

  /* 04F744 800D3D64 00057080 */       sll $t6, $a1, 2
  /* 04F748 800D3D68 3C02800D */       lui $v0, %hi(D_ovl0_800D6358)
  /* 04F74C 800D3D6C 004E1021 */      addu $v0, $v0, $t6
  /* 04F750 800D3D70 8C426358 */        lw $v0, %lo(D_ovl0_800D6358)($v0)
  /* 04F754 800D3D74 AFA40000 */        sw $a0, ($sp)
  /* 04F758 800D3D78 3084FFFF */      andi $a0, $a0, 0xffff
  /* 04F75C 800D3D7C 1040000A */      beqz $v0, .L800D3DA8
  /* 04F760 800D3D80 00801825 */        or $v1, $a0, $zero
  /* 04F764 800D3D84 944F0004 */       lhu $t7, 4($v0)
  .L800D3D88:
  /* 04F768 800D3D88 546F0005 */      bnel $v1, $t7, .L800D3DA0
  /* 04F76C 800D3D8C 8C420000 */        lw $v0, ($v0)
  /* 04F770 800D3D90 94580006 */       lhu $t8, 6($v0)
  /* 04F774 800D3D94 37190800 */       ori $t9, $t8, 0x800
  /* 04F778 800D3D98 A4590006 */        sh $t9, 6($v0)
  /* 04F77C 800D3D9C 8C420000 */        lw $v0, ($v0)
  .L800D3DA0:
  /* 04F780 800D3DA0 5440FFF9 */      bnel $v0, $zero, .L800D3D88
  /* 04F784 800D3DA4 944F0004 */       lhu $t7, 4($v0)
  .L800D3DA8:
  /* 04F788 800D3DA8 3C02800D */       lui $v0, %hi(D_ovl0_800D639C)
  /* 04F78C 800D3DAC 8C42639C */        lw $v0, %lo(D_ovl0_800D639C)($v0)
  /* 04F790 800D3DB0 00801825 */        or $v1, $a0, $zero
  /* 04F794 800D3DB4 1040000A */      beqz $v0, .L800D3DE0
  /* 04F798 800D3DB8 00000000 */       nop 
  /* 04F79C 800D3DBC 94480004 */       lhu $t0, 4($v0)
  .L800D3DC0:
  /* 04F7A0 800D3DC0 54680005 */      bnel $v1, $t0, .L800D3DD8
  /* 04F7A4 800D3DC4 8C420000 */        lw $v0, ($v0)
  /* 04F7A8 800D3DC8 94490006 */       lhu $t1, 6($v0)
  /* 04F7AC 800D3DCC 352A0800 */       ori $t2, $t1, 0x800
  /* 04F7B0 800D3DD0 A44A0006 */        sh $t2, 6($v0)
  /* 04F7B4 800D3DD4 8C420000 */        lw $v0, ($v0)
  .L800D3DD8:
  /* 04F7B8 800D3DD8 5440FFF9 */      bnel $v0, $zero, .L800D3DC0
  /* 04F7BC 800D3DDC 94480004 */       lhu $t0, 4($v0)
  .L800D3DE0:
  /* 04F7C0 800D3DE0 03E00008 */        jr $ra
  /* 04F7C4 800D3DE4 00000000 */       nop 

  /* 04F7C8 800D3DE8 00057080 */       sll $t6, $a1, 2
  /* 04F7CC 800D3DEC 3C02800D */       lui $v0, %hi(D_ovl0_800D6358)
  /* 04F7D0 800D3DF0 004E1021 */      addu $v0, $v0, $t6
  /* 04F7D4 800D3DF4 8C426358 */        lw $v0, %lo(D_ovl0_800D6358)($v0)
  /* 04F7D8 800D3DF8 AFA40000 */        sw $a0, ($sp)
  /* 04F7DC 800D3DFC 3084FFFF */      andi $a0, $a0, 0xffff
  /* 04F7E0 800D3E00 1040000B */      beqz $v0, .L800D3E30
  /* 04F7E4 800D3E04 00801825 */        or $v1, $a0, $zero
  /* 04F7E8 800D3E08 2405F7FF */     addiu $a1, $zero, -0x801
  /* 04F7EC 800D3E0C 944F0004 */       lhu $t7, 4($v0)
  .L800D3E10:
  /* 04F7F0 800D3E10 546F0005 */      bnel $v1, $t7, .L800D3E28
  /* 04F7F4 800D3E14 8C420000 */        lw $v0, ($v0)
  /* 04F7F8 800D3E18 94580006 */       lhu $t8, 6($v0)
  /* 04F7FC 800D3E1C 0305C824 */       and $t9, $t8, $a1
  /* 04F800 800D3E20 A4590006 */        sh $t9, 6($v0)
  /* 04F804 800D3E24 8C420000 */        lw $v0, ($v0)
  .L800D3E28:
  /* 04F808 800D3E28 5440FFF9 */      bnel $v0, $zero, .L800D3E10
  /* 04F80C 800D3E2C 944F0004 */       lhu $t7, 4($v0)
  .L800D3E30:
  /* 04F810 800D3E30 3C02800D */       lui $v0, %hi(D_ovl0_800D639C)
  /* 04F814 800D3E34 8C42639C */        lw $v0, %lo(D_ovl0_800D639C)($v0)
  /* 04F818 800D3E38 2405F7FF */     addiu $a1, $zero, -0x801
  /* 04F81C 800D3E3C 00801825 */        or $v1, $a0, $zero
  /* 04F820 800D3E40 1040000A */      beqz $v0, .L800D3E6C
  /* 04F824 800D3E44 00000000 */       nop 
  /* 04F828 800D3E48 94480004 */       lhu $t0, 4($v0)
  .L800D3E4C:
  /* 04F82C 800D3E4C 54680005 */      bnel $v1, $t0, .L800D3E64
  /* 04F830 800D3E50 8C420000 */        lw $v0, ($v0)
  /* 04F834 800D3E54 94490006 */       lhu $t1, 6($v0)
  /* 04F838 800D3E58 01255024 */       and $t2, $t1, $a1
  /* 04F83C 800D3E5C A44A0006 */        sh $t2, 6($v0)
  /* 04F840 800D3E60 8C420000 */        lw $v0, ($v0)
  .L800D3E64:
  /* 04F844 800D3E64 5440FFF9 */      bnel $v0, $zero, .L800D3E4C
  /* 04F848 800D3E68 94480004 */       lhu $t0, 4($v0)
  .L800D3E6C:
  /* 04F84C 800D3E6C 03E00008 */        jr $ra
  /* 04F850 800D3E70 00000000 */       nop 

  /* 04F854 800D3E74 00000000 */       nop 
  /* 04F858 800D3E78 00000000 */       nop 
  /* 04F85C 800D3E7C 00000000 */       nop 
