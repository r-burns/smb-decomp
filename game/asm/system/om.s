.include "macros.inc"

.section .data
# om
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


.section .rodata
#om
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


.section .bss
#om
glabel D_800466B0
    .space 4
glabel D_800466B4
    .space 4
glabel D_800466B8
    .space 4
glabel D_800466BC
    .space 4
glabel D_800466C0
    .space 4
glabel D_800466C4
    .space 4
glabel D_800466C8
    .space 4
glabel D_800466CC
    .space 4
glabel D_800466D0
    .space 20
glabel D_800466E4
    .space 4
glabel D_800466E8
    .space 8
glabel D_800466F0
    .space 8
glabel D_800466F8
    .space 4
glabel D_800466FC
    .space 4
glabel D_80046700
    .space 4
glabel D_80046704
    .space 4
glabel D_80046708
    .space 8
glabel D_80046710
    .space 4
glabel D_80046714
    .space 4
glabel D_80046718
    .space 4
glabel D_8004671C
    .space 8
glabel D_80046724
    .space 4
glabel D_80046728
    .space 76
glabel D_80046774
    .space 4
glabel D_80046778
    .space 132
glabel D_800467FC
    .space 4
glabel D_80046800
    .space 4
glabel D_80046804
    .space 252
glabel D_80046900
    .space 4
glabel D_80046904
    .space 4
glabel D_80046908
    .space 4
glabel D_8004690C
    .space 256
glabel D_80046A0C
    .space 4
glabel D_80046A10
    .space 2
glabel D_80046A12
    .space 2
glabel D_80046A14
    .space 4
glabel D_80046A18
    .space 4
glabel D_80046A1C
    .space 4
glabel D_80046A20
    .space 4
glabel D_80046A24
    .space 4
glabel D_80046A28
    .space 4
glabel D_80046A2C
    .space 4
glabel D_80046A30
    .space 4
glabel D_80046A34
    .space 4
glabel D_80046A38
    .space 4
glabel D_80046A3C
    .space 4
glabel D_80046A40
    .space 4
glabel D_80046A44
    .space 4
glabel D_80046A48
    .space 4
glabel D_80046A4C
    .space 4
glabel D_80046A50
    .space 4
glabel D_80046A54
    .space 4
glabel D_80046A58
    .space 4
glabel D_80046A5C
    .space 4
glabel D_80046A60
    .space 4
glabel D_80046A64
    .space 4
glabel D_80046A68
    .space 8
glabel D_80046A70
    .space 24
glabel D_80046A88
    .space 1280
glabel D_80046F88
    .space 24

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text

.align 4

# Text Sections
#  0x80000910 -> 0x800396C0

# Likely start of new file
glabel func_800073E0
  /* 007FE0 800073E0 3C068004 */       lui $a2, %hi(D_800466B0)
  /* 007FE4 800073E4 24C666B0 */     addiu $a2, $a2, %lo(D_800466B0)
  /* 007FE8 800073E8 8CC30000 */        lw $v1, ($a2) # D_800466B0 + 0
  /* 007FEC 800073EC 27BDFFE8 */     addiu $sp, $sp, -0x18
  /* 007FF0 800073F0 AFBF0014 */        sw $ra, 0x14($sp)
  /* 007FF4 800073F4 14600008 */      bnez $v1, .L80007418
  /* 007FF8 800073F8 240401C0 */     addiu $a0, $zero, 0x1c0
  /* 007FFC 800073FC 0C001260 */       jal func_80004980
  /* 008000 80007400 24050008 */     addiu $a1, $zero, 8
  /* 008004 80007404 3C068004 */       lui $a2, %hi(D_800466B0)
  /* 008008 80007408 24C666B0 */     addiu $a2, $a2, %lo(D_800466B0)
  /* 00800C 8000740C ACC20000 */        sw $v0, ($a2) # D_800466B0 + 0
  /* 008010 80007410 AC400000 */        sw $zero, ($v0)
  /* 008014 80007414 8CC30000 */        lw $v1, ($a2) # D_800466B0 + 0
  .L80007418:
  /* 008018 80007418 14600006 */      bnez $v1, .L80007434
  /* 00801C 8000741C 3C058004 */       lui $a1, 0x8004
  /* 008020 80007420 3C048004 */       lui $a0, %hi(D_8003D930)
  /* 008024 80007424 0C008D89 */       jal fatal_printf
  /* 008028 80007428 2484D930 */     addiu $a0, $a0, %lo(D_8003D930)
  .L8000742C:
  /* 00802C 8000742C 1000FFFF */         b .L8000742C
  /* 008030 80007430 00000000 */       nop 
  .L80007434:
  /* 008034 80007434 24A566B4 */     addiu $a1, $a1, 0x66b4
  /* 008038 80007438 8CB80000 */        lw $t8, ($a1)
  /* 00803C 8000743C 8FBF0014 */        lw $ra, 0x14($sp)
  /* 008040 80007440 8C6F0000 */        lw $t7, ($v1)
  /* 008044 80007444 27190001 */     addiu $t9, $t8, 1
  /* 008048 80007448 ACB90000 */        sw $t9, ($a1)
  /* 00804C 8000744C 27BD0018 */     addiu $sp, $sp, 0x18
  /* 008050 80007450 00601025 */        or $v0, $v1, $zero
  /* 008054 80007454 03E00008 */        jr $ra
  /* 008058 80007458 ACCF0000 */        sw $t7, ($a2)

glabel func_8000745C
  /* 00805C 8000745C 3C028004 */       lui $v0, %hi(D_800466B0)
  /* 008060 80007460 244266B0 */     addiu $v0, $v0, %lo(D_800466B0)
  /* 008064 80007464 8C4E0000 */        lw $t6, ($v0) # D_800466B0 + 0
  /* 008068 80007468 3C038004 */       lui $v1, %hi(D_800466B4)
  /* 00806C 8000746C 246366B4 */     addiu $v1, $v1, %lo(D_800466B4)
  /* 008070 80007470 AC8E0000 */        sw $t6, ($a0)
  /* 008074 80007474 8C6F0000 */        lw $t7, ($v1) # D_800466B4 + 0
  /* 008078 80007478 AC440000 */        sw $a0, ($v0) # D_800466B0 + 0
  /* 00807C 8000747C 25F8FFFF */     addiu $t8, $t7, -1
  /* 008080 80007480 03E00008 */        jr $ra
  /* 008084 80007484 AC780000 */        sw $t8, ($v1) # D_800466B4 + 0

glabel func_80007488
  /* 008088 80007488 3C038004 */       lui $v1, %hi(D_800466C4)
  /* 00808C 8000748C 8C6366C4 */        lw $v1, %lo(D_800466C4)($v1)
  /* 008090 80007490 27BDFFE0 */     addiu $sp, $sp, -0x20
  /* 008094 80007494 AFBF0014 */        sw $ra, 0x14($sp)
  /* 008098 80007498 00803825 */        or $a3, $a0, $zero
  /* 00809C 8000749C 10600008 */      beqz $v1, .L800074C0
  /* 0080A0 800074A0 00003025 */        or $a2, $zero, $zero
  /* 0080A4 800074A4 8C6E0008 */        lw $t6, 8($v1)
  .L800074A8:
  /* 0080A8 800074A8 10EE0005 */       beq $a3, $t6, .L800074C0
  /* 0080AC 800074AC 00000000 */       nop 
  /* 0080B0 800074B0 00603025 */        or $a2, $v1, $zero
  /* 0080B4 800074B4 8C630000 */        lw $v1, ($v1)
  /* 0080B8 800074B8 5460FFFB */      bnel $v1, $zero, .L800074A8
  /* 0080BC 800074BC 8C6E0008 */        lw $t6, 8($v1)
  .L800074C0:
  /* 0080C0 800074C0 14600010 */      bnez $v1, .L80007504
  /* 0080C4 800074C4 2404000C */     addiu $a0, $zero, 0xc
  /* 0080C8 800074C8 24050004 */     addiu $a1, $zero, 4
  /* 0080CC 800074CC AFA60018 */        sw $a2, 0x18($sp)
  /* 0080D0 800074D0 0C001260 */       jal func_80004980
  /* 0080D4 800074D4 AFA70020 */        sw $a3, 0x20($sp)
  /* 0080D8 800074D8 8FA60018 */        lw $a2, 0x18($sp)
  /* 0080DC 800074DC 8FA70020 */        lw $a3, 0x20($sp)
  /* 0080E0 800074E0 00401825 */        or $v1, $v0, $zero
  /* 0080E4 800074E4 AC400000 */        sw $zero, ($v0)
  /* 0080E8 800074E8 AC400004 */        sw $zero, 4($v0)
  /* 0080EC 800074EC 10C00003 */      beqz $a2, .L800074FC
  /* 0080F0 800074F0 AC470008 */        sw $a3, 8($v0)
  /* 0080F4 800074F4 10000003 */         b .L80007504
  /* 0080F8 800074F8 ACC20000 */        sw $v0, ($a2)
  .L800074FC:
  /* 0080FC 800074FC 3C018004 */       lui $at, %hi(D_800466C4)
  /* 008100 80007500 AC2266C4 */        sw $v0, %lo(D_800466C4)($at)
  .L80007504:
  /* 008104 80007504 8C620004 */        lw $v0, 4($v1)
  /* 008108 80007508 24E40008 */     addiu $a0, $a3, 8
  /* 00810C 8000750C 24050008 */     addiu $a1, $zero, 8
  /* 008110 80007510 10400005 */      beqz $v0, .L80007528
  /* 008114 80007514 00000000 */       nop 
  /* 008118 80007518 8C4F0000 */        lw $t7, ($v0)
  /* 00811C 8000751C 00402025 */        or $a0, $v0, $zero
  /* 008120 80007520 10000006 */         b .L8000753C
  /* 008124 80007524 AC6F0004 */        sw $t7, 4($v1)
  .L80007528:
  /* 008128 80007528 0C001260 */       jal func_80004980
  /* 00812C 8000752C AFA70020 */        sw $a3, 0x20($sp)
  /* 008130 80007530 8FA70020 */        lw $a3, 0x20($sp)
  /* 008134 80007534 00402025 */        or $a0, $v0, $zero
  /* 008138 80007538 AC470004 */        sw $a3, 4($v0)
  .L8000753C:
  /* 00813C 8000753C 3C038004 */       lui $v1, %hi(D_800466B8)
  /* 008140 80007540 246366B8 */     addiu $v1, $v1, %lo(D_800466B8)
  /* 008144 80007544 AC800000 */        sw $zero, ($a0)
  /* 008148 80007548 8C780000 */        lw $t8, ($v1) # D_800466B8 + 0
  /* 00814C 8000754C 8FBF0014 */        lw $ra, 0x14($sp)
  /* 008150 80007550 27BD0020 */     addiu $sp, $sp, 0x20
  /* 008154 80007554 27190001 */     addiu $t9, $t8, 1
  /* 008158 80007558 AC790000 */        sw $t9, ($v1) # D_800466B8 + 0
  /* 00815C 8000755C 03E00008 */        jr $ra
  /* 008160 80007560 00801025 */        or $v0, $a0, $zero

glabel func_80007564
  /* 008164 80007564 27BDFFE8 */     addiu $sp, $sp, -0x18
  /* 008168 80007568 AFBF0014 */        sw $ra, 0x14($sp)
  /* 00816C 8000756C 3C048004 */       lui $a0, %hi(D_800466BC)
  /* 008170 80007570 0C001D22 */       jal func_80007488
  /* 008174 80007574 8C8466BC */        lw $a0, %lo(D_800466BC)($a0)
  /* 008178 80007578 8FBF0014 */        lw $ra, 0x14($sp)
  /* 00817C 8000757C 27BD0018 */     addiu $sp, $sp, 0x18
  /* 008180 80007580 03E00008 */        jr $ra
  /* 008184 80007584 00000000 */       nop 

glabel func_80007588
  /* 008188 80007588 3C028004 */       lui $v0, %hi(D_800466C4)
  /* 00818C 8000758C 8C4266C4 */        lw $v0, %lo(D_800466C4)($v0)
  /* 008190 80007590 27BDFFE8 */     addiu $sp, $sp, -0x18
  /* 008194 80007594 AFBF0014 */        sw $ra, 0x14($sp)
  /* 008198 80007598 10400008 */      beqz $v0, .L800075BC
  /* 00819C 8000759C 00000000 */       nop 
  /* 0081A0 800075A0 8C830004 */        lw $v1, 4($a0)
  /* 0081A4 800075A4 8C4E0008 */        lw $t6, 8($v0)
  .L800075A8:
  /* 0081A8 800075A8 106E0004 */       beq $v1, $t6, .L800075BC
  /* 0081AC 800075AC 00000000 */       nop 
  /* 0081B0 800075B0 8C420000 */        lw $v0, ($v0)
  /* 0081B4 800075B4 5440FFFC */      bnel $v0, $zero, .L800075A8
  /* 0081B8 800075B8 8C4E0008 */        lw $t6, 8($v0)
  .L800075BC:
  /* 0081BC 800075BC 54400007 */      bnel $v0, $zero, .L800075DC
  /* 0081C0 800075C0 8C4F0004 */        lw $t7, 4($v0)
  /* 0081C4 800075C4 3C048004 */       lui $a0, %hi(D_8003D950)
  /* 0081C8 800075C8 0C008D89 */       jal fatal_printf
  /* 0081CC 800075CC 2484D950 */     addiu $a0, $a0, %lo(D_8003D950)
  .L800075D0:
  /* 0081D0 800075D0 1000FFFF */         b .L800075D0
  /* 0081D4 800075D4 00000000 */       nop 
  /* 0081D8 800075D8 8C4F0004 */        lw $t7, 4($v0)
  .L800075DC:
  /* 0081DC 800075DC 3C038004 */       lui $v1, %hi(D_800466B8)
  /* 0081E0 800075E0 246366B8 */     addiu $v1, $v1, %lo(D_800466B8)
  /* 0081E4 800075E4 AC8F0000 */        sw $t7, ($a0)
  /* 0081E8 800075E8 AC440004 */        sw $a0, 4($v0)
  /* 0081EC 800075EC 8C780000 */        lw $t8, ($v1) # D_800466B8 + 0
  /* 0081F0 800075F0 8FBF0014 */        lw $ra, 0x14($sp)
  /* 0081F4 800075F4 27BD0018 */     addiu $sp, $sp, 0x18
  /* 0081F8 800075F8 2719FFFF */     addiu $t9, $t8, -1
  /* 0081FC 800075FC 03E00008 */        jr $ra
  /* 008200 80007600 AC790000 */        sw $t9, ($v1) # D_800466B8 + 0

glabel func_80007604
  /* 008204 80007604 3C068004 */       lui $a2, %hi(D_800466CC)
  /* 008208 80007608 24C666CC */     addiu $a2, $a2, %lo(D_800466CC)
  /* 00820C 8000760C 8CC30000 */        lw $v1, ($a2) # D_800466CC + 0
  /* 008210 80007610 27BDFFE8 */     addiu $sp, $sp, -0x18
  /* 008214 80007614 AFBF0014 */        sw $ra, 0x14($sp)
  /* 008218 80007618 14600008 */      bnez $v1, .L8000763C
  /* 00821C 8000761C 24040024 */     addiu $a0, $zero, 0x24
  /* 008220 80007620 0C001260 */       jal func_80004980
  /* 008224 80007624 24050004 */     addiu $a1, $zero, 4
  /* 008228 80007628 3C068004 */       lui $a2, %hi(D_800466CC)
  /* 00822C 8000762C 24C666CC */     addiu $a2, $a2, %lo(D_800466CC)
  /* 008230 80007630 ACC20000 */        sw $v0, ($a2) # D_800466CC + 0
  /* 008234 80007634 AC400000 */        sw $zero, ($v0)
  /* 008238 80007638 8CC30000 */        lw $v1, ($a2) # D_800466CC + 0
  .L8000763C:
  /* 00823C 8000763C 14600006 */      bnez $v1, .L80007658
  /* 008240 80007640 3C058004 */       lui $a1, 0x8004
  /* 008244 80007644 3C048004 */       lui $a0, %hi(D_8003D974)
  /* 008248 80007648 0C008D89 */       jal fatal_printf
  /* 00824C 8000764C 2484D974 */     addiu $a0, $a0, %lo(D_8003D974)
  .L80007650:
  /* 008250 80007650 1000FFFF */         b .L80007650
  /* 008254 80007654 00000000 */       nop 
  .L80007658:
  /* 008258 80007658 24A566E8 */     addiu $a1, $a1, 0x66e8
  /* 00825C 8000765C 8CB80000 */        lw $t8, ($a1)
  /* 008260 80007660 8FBF0014 */        lw $ra, 0x14($sp)
  /* 008264 80007664 8C6F0000 */        lw $t7, ($v1)
  /* 008268 80007668 27190001 */     addiu $t9, $t8, 1
  /* 00826C 8000766C ACB90000 */        sw $t9, ($a1)
  /* 008270 80007670 27BD0018 */     addiu $sp, $sp, 0x18
  /* 008274 80007674 00601025 */        or $v0, $v1, $zero
  /* 008278 80007678 03E00008 */        jr $ra
  /* 00827C 8000767C ACCF0000 */        sw $t7, ($a2)

glabel func_80007680
  /* 008280 80007680 8C860018 */        lw $a2, 0x18($a0)
  /* 008284 80007684 3C098004 */       lui $t1, %hi(D_80046778)
  /* 008288 80007688 25296778 */     addiu $t1, $t1, %lo(D_80046778)
  /* 00828C 8000768C 8C870010 */        lw $a3, 0x10($a0)
  /* 008290 80007690 00C01025 */        or $v0, $a2, $zero
  /* 008294 80007694 90C5000C */       lbu $a1, 0xc($a2)
  .L80007698:
  /* 008298 80007698 10C00012 */      beqz $a2, .L800076E4
  /* 00829C 8000769C 24A8FFFF */     addiu $t0, $a1, -1
  /* 0082A0 800076A0 8CC3001C */        lw $v1, 0x1c($a2)
  .L800076A4:
  /* 0082A4 800076A4 5060000D */      beql $v1, $zero, .L800076DC
  /* 0082A8 800076A8 8CC60008 */        lw $a2, 8($a2)
  /* 0082AC 800076AC 8C6E0010 */        lw $t6, 0x10($v1)
  .L800076B0:
  /* 0082B0 800076B0 54EE0007 */      bnel $a3, $t6, .L800076D0
  /* 0082B4 800076B4 8C630004 */        lw $v1, 4($v1)
  /* 0082B8 800076B8 8C6F0008 */        lw $t7, 8($v1)
  /* 0082BC 800076BC AC8F0008 */        sw $t7, 8($a0)
  /* 0082C0 800076C0 AC640008 */        sw $a0, 8($v1)
  /* 0082C4 800076C4 10000015 */         b .L8000771C
  /* 0082C8 800076C8 AC83000C */        sw $v1, 0xc($a0)
  /* 0082CC 800076CC 8C630004 */        lw $v1, 4($v1)
  .L800076D0:
  /* 0082D0 800076D0 5460FFF7 */      bnel $v1, $zero, .L800076B0
  /* 0082D4 800076D4 8C6E0010 */        lw $t6, 0x10($v1)
  /* 0082D8 800076D8 8CC60008 */        lw $a2, 8($a2)
  .L800076DC:
  /* 0082DC 800076DC 54C0FFF1 */      bnel $a2, $zero, .L800076A4
  /* 0082E0 800076E0 8CC3001C */        lw $v1, 0x1c($a2)
  .L800076E4:
  /* 0082E4 800076E4 10A00005 */      beqz $a1, .L800076FC
  /* 0082E8 800076E8 0008C080 */       sll $t8, $t0, 2
  /* 0082EC 800076EC 0138C821 */      addu $t9, $t1, $t8
  /* 0082F0 800076F0 8F260000 */        lw $a2, ($t9)
  /* 0082F4 800076F4 1000FFE8 */         b .L80007698
  /* 0082F8 800076F8 01002825 */        or $a1, $t0, $zero
  .L800076FC:
  /* 0082FC 800076FC 3C0B8004 */       lui $t3, %hi(D_800466D0)
  /* 008300 80007700 256B66D0 */     addiu $t3, $t3, %lo(D_800466D0)
  /* 008304 80007704 00075080 */       sll $t2, $a3, 2
  /* 008308 80007708 014B1821 */      addu $v1, $t2, $t3
  /* 00830C 8000770C 8C6C0000 */        lw $t4, ($v1)
  /* 008310 80007710 AC8C0008 */        sw $t4, 8($a0)
  /* 008314 80007714 AC640000 */        sw $a0, ($v1)
  /* 008318 80007718 AC80000C */        sw $zero, 0xc($a0)
  .L8000771C:
  /* 00831C 8000771C 8C830008 */        lw $v1, 8($a0)
  /* 008320 80007720 50600003 */      beql $v1, $zero, .L80007730
  /* 008324 80007724 8C43001C */        lw $v1, 0x1c($v0)
  /* 008328 80007728 AC64000C */        sw $a0, 0xc($v1)
  /* 00832C 8000772C 8C43001C */        lw $v1, 0x1c($v0)
  .L80007730:
  /* 008330 80007730 50600004 */      beql $v1, $zero, .L80007744
  /* 008334 80007734 AC440018 */        sw $a0, 0x18($v0)
  /* 008338 80007738 10000002 */         b .L80007744
  /* 00833C 8000773C AC640000 */        sw $a0, ($v1)
  /* 008340 80007740 AC440018 */        sw $a0, 0x18($v0)
  .L80007744:
  /* 008344 80007744 8C4D001C */        lw $t5, 0x1c($v0)
  /* 008348 80007748 AC800000 */        sw $zero, ($a0)
  /* 00834C 8000774C AC8D0004 */        sw $t5, 4($a0)
  /* 008350 80007750 03E00008 */        jr $ra
  /* 008354 80007754 AC44001C */        sw $a0, 0x1c($v0)

glabel func_80007758
  /* 008358 80007758 3C028004 */       lui $v0, %hi(D_800466CC)
  /* 00835C 8000775C 244266CC */     addiu $v0, $v0, %lo(D_800466CC)
  /* 008360 80007760 8C4E0000 */        lw $t6, ($v0) # D_800466CC + 0
  /* 008364 80007764 3C038004 */       lui $v1, %hi(D_800466E8)
  /* 008368 80007768 246366E8 */     addiu $v1, $v1, %lo(D_800466E8)
  /* 00836C 8000776C AC8E0000 */        sw $t6, ($a0)
  /* 008370 80007770 8C6F0000 */        lw $t7, ($v1) # D_800466E8 + 0
  /* 008374 80007774 AC440000 */        sw $a0, ($v0) # D_800466CC + 0
  /* 008378 80007778 25F8FFFF */     addiu $t8, $t7, -1
  /* 00837C 8000777C 03E00008 */        jr $ra
  /* 008380 80007780 AC780000 */        sw $t8, ($v1) # D_800466E8 + 0

glabel func_80007784
  /* 008384 80007784 8C82000C */        lw $v0, 0xc($a0)
  /* 008388 80007788 50400005 */      beql $v0, $zero, .L800077A0
  /* 00838C 8000778C 8C980010 */        lw $t8, 0x10($a0)
  /* 008390 80007790 8C8E0008 */        lw $t6, 8($a0)
  /* 008394 80007794 10000007 */         b .L800077B4
  /* 008398 80007798 AC4E0008 */        sw $t6, 8($v0)
  /* 00839C 8000779C 8C980010 */        lw $t8, 0x10($a0)
  .L800077A0:
  /* 0083A0 800077A0 8C8F0008 */        lw $t7, 8($a0)
  /* 0083A4 800077A4 3C018004 */       lui $at, %hi(D_800466D0)
  /* 0083A8 800077A8 0018C880 */       sll $t9, $t8, 2
  /* 0083AC 800077AC 00390821 */      addu $at, $at, $t9
  /* 0083B0 800077B0 AC2F66D0 */        sw $t7, %lo(D_800466D0)($at)
  .L800077B4:
  /* 0083B4 800077B4 8C820008 */        lw $v0, 8($a0)
  /* 0083B8 800077B8 10400003 */      beqz $v0, .L800077C8
  /* 0083BC 800077BC 00000000 */       nop 
  /* 0083C0 800077C0 8C88000C */        lw $t0, 0xc($a0)
  /* 0083C4 800077C4 AC48000C */        sw $t0, 0xc($v0)
  .L800077C8:
  /* 0083C8 800077C8 03E00008 */        jr $ra
  /* 0083CC 800077CC 00000000 */       nop 

glabel func_800077D0
  /* 0083D0 800077D0 27BDFFE0 */     addiu $sp, $sp, -0x20
  /* 0083D4 800077D4 AFBF0014 */        sw $ra, 0x14($sp)
  /* 0083D8 800077D8 8C830018 */        lw $v1, 0x18($a0)
  /* 0083DC 800077DC AFA40020 */        sw $a0, 0x20($sp)
  /* 0083E0 800077E0 0C001DE1 */       jal func_80007784
  /* 0083E4 800077E4 AFA3001C */        sw $v1, 0x1c($sp)
  /* 0083E8 800077E8 8FA40020 */        lw $a0, 0x20($sp)
  /* 0083EC 800077EC 8FA3001C */        lw $v1, 0x1c($sp)
  /* 0083F0 800077F0 8C820004 */        lw $v0, 4($a0)
  /* 0083F4 800077F4 50400005 */      beql $v0, $zero, .L8000780C
  /* 0083F8 800077F8 8C8F0000 */        lw $t7, ($a0)
  /* 0083FC 800077FC 8C8E0000 */        lw $t6, ($a0)
  /* 008400 80007800 10000003 */         b .L80007810
  /* 008404 80007804 AC4E0000 */        sw $t6, ($v0)
  /* 008408 80007808 8C8F0000 */        lw $t7, ($a0)
  .L8000780C:
  /* 00840C 8000780C AC6F0018 */        sw $t7, 0x18($v1)
  .L80007810:
  /* 008410 80007810 8C820000 */        lw $v0, ($a0)
  /* 008414 80007814 50400005 */      beql $v0, $zero, .L8000782C
  /* 008418 80007818 8C990004 */        lw $t9, 4($a0)
  /* 00841C 8000781C 8C980004 */        lw $t8, 4($a0)
  /* 008420 80007820 10000003 */         b .L80007830
  /* 008424 80007824 AC580004 */        sw $t8, 4($v0)
  /* 008428 80007828 8C990004 */        lw $t9, 4($a0)
  .L8000782C:
  /* 00842C 8000782C AC79001C */        sw $t9, 0x1c($v1)
  .L80007830:
  /* 008430 80007830 8FBF0014 */        lw $ra, 0x14($sp)
  /* 008434 80007834 27BD0020 */     addiu $sp, $sp, 0x20
  /* 008438 80007838 03E00008 */        jr $ra
  /* 00843C 8000783C 00000000 */       nop 

  /* 008440 80007840 3C028004 */       lui $v0, %hi(D_80046A60)
  /* 008444 80007844 03E00008 */        jr $ra
  /* 008448 80007848 8C426A60 */        lw $v0, %lo(D_80046A60)($v0)

  /* 00844C 8000784C 14800003 */      bnez $a0, .L8000785C
  /* 008450 80007850 00001025 */        or $v0, $zero, $zero
  /* 008454 80007854 3C048004 */       lui $a0, %hi(D_80046A60)
  /* 008458 80007858 8C846A60 */        lw $a0, %lo(D_80046A60)($a0)
  .L8000785C:
  /* 00845C 8000785C 10800007 */      beqz $a0, .L8000787C
  /* 008460 80007860 00000000 */       nop 
  /* 008464 80007864 908E0014 */       lbu $t6, 0x14($a0)
  /* 008468 80007868 15C00004 */      bnez $t6, .L8000787C
  /* 00846C 8000786C 00000000 */       nop 
  /* 008470 80007870 8C8F001C */        lw $t7, 0x1c($a0)
  /* 008474 80007874 03E00008 */        jr $ra
  /* 008478 80007878 8DE201B8 */        lw $v0, 0x1b8($t7)

  .L8000787C:
  /* 00847C 8000787C 03E00008 */        jr $ra
  /* 008480 80007880 00000000 */       nop 

  /* 008484 80007884 14800003 */      bnez $a0, .L80007894
  /* 008488 80007888 00001025 */        or $v0, $zero, $zero
  /* 00848C 8000788C 3C048004 */       lui $a0, %hi(D_80046A60)
  /* 008490 80007890 8C846A60 */        lw $a0, %lo(D_80046A60)($a0)
  .L80007894:
  /* 008494 80007894 10800007 */      beqz $a0, .L800078B4
  /* 008498 80007898 00000000 */       nop 
  /* 00849C 8000789C 908E0014 */       lbu $t6, 0x14($a0)
  /* 0084A0 800078A0 15C00004 */      bnez $t6, .L800078B4
  /* 0084A4 800078A4 00000000 */       nop 
  /* 0084A8 800078A8 8C8F001C */        lw $t7, 0x1c($a0)
  /* 0084AC 800078AC 03E00008 */        jr $ra
  /* 0084B0 800078B0 8DE201BC */        lw $v0, 0x1bc($t7)

  .L800078B4:
  /* 0084B4 800078B4 03E00008 */        jr $ra
  /* 0084B8 800078B8 00000000 */       nop 

  /* 0084BC 800078BC 3C018004 */       lui $at, %hi(D_800466C8)
  /* 0084C0 800078C0 03E00008 */        jr $ra
  /* 0084C4 800078C4 AC2466C8 */        sw $a0, %lo(D_800466C8)($at)

glabel func_800078C8
  /* 0084C8 800078C8 3C028004 */       lui $v0, %hi(D_800467FC)
  /* 0084CC 800078CC 8C4267FC */        lw $v0, %lo(D_800467FC)($v0)
  /* 0084D0 800078D0 00001825 */        or $v1, $zero, $zero
  /* 0084D4 800078D4 3C0E8004 */       lui $t6, %hi(D_80046A0C)
  /* 0084D8 800078D8 10400005 */      beqz $v0, .L800078F0
  /* 0084DC 800078DC 00000000 */       nop 
  /* 0084E0 800078E0 8C420004 */        lw $v0, 4($v0)
  .L800078E4:
  /* 0084E4 800078E4 24630001 */     addiu $v1, $v1, 1
  /* 0084E8 800078E8 5440FFFE */      bnel $v0, $zero, .L800078E4
  /* 0084EC 800078EC 8C420004 */        lw $v0, 4($v0)
  .L800078F0:
  /* 0084F0 800078F0 8DCE6A0C */        lw $t6, %lo(D_80046A0C)($t6)
  /* 0084F4 800078F4 03E00008 */        jr $ra
  /* 0084F8 800078F8 006E1021 */      addu $v0, $v1, $t6

glabel func_800078FC
  /* 0084FC 800078FC 3C028004 */       lui $v0, %hi(D_80046A12)
  /* 008500 80007900 84426A12 */        lh $v0, %lo(D_80046A12)($v0)
  /* 008504 80007904 27BDFFE8 */     addiu $sp, $sp, -0x18
  /* 008508 80007908 2401FFFF */     addiu $at, $zero, -1
  /* 00850C 8000790C 10410005 */       beq $v0, $at, .L80007924
  /* 008510 80007910 AFBF0014 */        sw $ra, 0x14($sp)
  /* 008514 80007914 3C0E8004 */       lui $t6, %hi(D_80046A0C)
  /* 008518 80007918 8DCE6A0C */        lw $t6, %lo(D_80046A0C)($t6)
  /* 00851C 8000791C 01C2082A */       slt $at, $t6, $v0
  /* 008520 80007920 1020000F */      beqz $at, .L80007960
  .L80007924:
  /* 008524 80007924 3C068004 */       lui $a2, %hi(D_800467FC)
  /* 008528 80007928 24C667FC */     addiu $a2, $a2, %lo(D_800467FC)
  /* 00852C 8000792C 8CC30000 */        lw $v1, ($a2) # D_800467FC + 0
  /* 008530 80007930 3C048004 */       lui $a0, %hi(D_80046A10)
  /* 008534 80007934 24050008 */     addiu $a1, $zero, 8
  /* 008538 80007938 1460000B */      bnez $v1, .L80007968
  /* 00853C 8000793C 00000000 */       nop 
  /* 008540 80007940 0C001260 */       jal func_80004980
  /* 008544 80007944 94846A10 */       lhu $a0, %lo(D_80046A10)($a0)
  /* 008548 80007948 3C068004 */       lui $a2, %hi(D_800467FC)
  /* 00854C 8000794C 24C667FC */     addiu $a2, $a2, %lo(D_800467FC)
  /* 008550 80007950 ACC20000 */        sw $v0, ($a2) # D_800467FC + 0
  /* 008554 80007954 AC400004 */        sw $zero, 4($v0)
  /* 008558 80007958 10000003 */         b .L80007968
  /* 00855C 8000795C 8CC30000 */        lw $v1, ($a2) # D_800467FC + 0
  .L80007960:
  /* 008560 80007960 1000000D */         b .L80007998
  /* 008564 80007964 00001025 */        or $v0, $zero, $zero
  .L80007968:
  /* 008568 80007968 54600004 */      bnel $v1, $zero, .L8000797C
  /* 00856C 8000796C 8C780004 */        lw $t8, 4($v1)
  /* 008570 80007970 10000009 */         b .L80007998
  /* 008574 80007974 00001025 */        or $v0, $zero, $zero
  /* 008578 80007978 8C780004 */        lw $t8, 4($v1)
  .L8000797C:
  /* 00857C 8000797C 3C198004 */       lui $t9, %hi(D_80046A0C)
  /* 008580 80007980 3C018004 */       lui $at, %hi(D_80046A0C)
  /* 008584 80007984 ACD80000 */        sw $t8, ($a2) # D_800467FC + 0
  /* 008588 80007988 8F396A0C */        lw $t9, %lo(D_80046A0C)($t9)
  /* 00858C 8000798C 00601025 */        or $v0, $v1, $zero
  /* 008590 80007990 27280001 */     addiu $t0, $t9, 1
  /* 008594 80007994 AC286A0C */        sw $t0, %lo(D_80046A0C)($at)
  .L80007998:
  /* 008598 80007998 8FBF0014 */        lw $ra, 0x14($sp)
  /* 00859C 8000799C 27BD0018 */     addiu $sp, $sp, 0x18
  /* 0085A0 800079A0 03E00008 */        jr $ra
  /* 0085A4 800079A4 00000000 */       nop 

glabel func_800079A8
  /* 0085A8 800079A8 3C028004 */       lui $v0, %hi(D_800467FC)
  /* 0085AC 800079AC 244267FC */     addiu $v0, $v0, %lo(D_800467FC)
  /* 0085B0 800079B0 8C4E0000 */        lw $t6, ($v0) # D_800467FC + 0
  /* 0085B4 800079B4 3C038004 */       lui $v1, %hi(D_80046A0C)
  /* 0085B8 800079B8 24636A0C */     addiu $v1, $v1, %lo(D_80046A0C)
  /* 0085BC 800079BC AC8E0004 */        sw $t6, 4($a0)
  /* 0085C0 800079C0 8C6F0000 */        lw $t7, ($v1) # D_80046A0C + 0
  /* 0085C4 800079C4 AC440000 */        sw $a0, ($v0) # D_800467FC + 0
  /* 0085C8 800079C8 25F8FFFF */     addiu $t8, $t7, -1
  /* 0085CC 800079CC 03E00008 */        jr $ra
  /* 0085D0 800079D0 AC780000 */        sw $t8, ($v1) # D_80046A0C + 0

glabel func_800079D4
  /* 0085D4 800079D4 10A00005 */      beqz $a1, .L800079EC
  /* 0085D8 800079D8 AC850008 */        sw $a1, 8($a0)
  /* 0085DC 800079DC 8CAE0004 */        lw $t6, 4($a1)
  /* 0085E0 800079E0 AC8E0004 */        sw $t6, 4($a0)
  /* 0085E4 800079E4 10000009 */         b .L80007A0C
  /* 0085E8 800079E8 ACA40004 */        sw $a0, 4($a1)
  .L800079EC:
  /* 0085EC 800079EC 908F000C */       lbu $t7, 0xc($a0)
  /* 0085F0 800079F0 3C198004 */       lui $t9, %hi(D_800466F0)
  /* 0085F4 800079F4 273966F0 */     addiu $t9, $t9, %lo(D_800466F0)
  /* 0085F8 800079F8 000FC080 */       sll $t8, $t7, 2
  /* 0085FC 800079FC 03191021 */      addu $v0, $t8, $t9
  /* 008600 80007A00 8C480000 */        lw $t0, ($v0)
  /* 008604 80007A04 AC880004 */        sw $t0, 4($a0)
  /* 008608 80007A08 AC440000 */        sw $a0, ($v0)
  .L80007A0C:
  /* 00860C 80007A0C 8C820004 */        lw $v0, 4($a0)
  /* 008610 80007A10 50400004 */      beql $v0, $zero, .L80007A24
  /* 008614 80007A14 9089000C */       lbu $t1, 0xc($a0)
  /* 008618 80007A18 03E00008 */        jr $ra
  /* 00861C 80007A1C AC440008 */        sw $a0, 8($v0)

  /* 008620 80007A20 9089000C */       lbu $t1, 0xc($a0)
  .L80007A24:
  /* 008624 80007A24 3C018004 */       lui $at, %hi(D_80046778)
  /* 008628 80007A28 00095080 */       sll $t2, $t1, 2
  /* 00862C 80007A2C 002A0821 */      addu $at, $at, $t2
  /* 008630 80007A30 AC246778 */        sw $a0, %lo(D_80046778)($at)
  /* 008634 80007A34 03E00008 */        jr $ra
  /* 008638 80007A38 00000000 */       nop 

glabel func_80007A3C
  /* 00863C 80007A3C 27BDFFE8 */     addiu $sp, $sp, -0x18
  /* 008640 80007A40 AFBF0014 */        sw $ra, 0x14($sp)
  /* 008644 80007A44 908E000C */       lbu $t6, 0xc($a0)
  /* 008648 80007A48 3C058004 */       lui $a1, %hi(D_80046778)
  /* 00864C 80007A4C 000E7880 */       sll $t7, $t6, 2
  /* 008650 80007A50 00AF2821 */      addu $a1, $a1, $t7
  /* 008654 80007A54 8CA56778 */        lw $a1, %lo(D_80046778)($a1)
  /* 008658 80007A58 10A0000D */      beqz $a1, .L80007A90
  /* 00865C 80007A5C 00000000 */       nop 
  /* 008660 80007A60 8C820010 */        lw $v0, 0x10($a0)
  /* 008664 80007A64 8CB80010 */        lw $t8, 0x10($a1)
  /* 008668 80007A68 0302082B */      sltu $at, $t8, $v0
  /* 00866C 80007A6C 10200008 */      beqz $at, .L80007A90
  /* 008670 80007A70 00000000 */       nop 
  /* 008674 80007A74 8CA50008 */        lw $a1, 8($a1)
  .L80007A78:
  /* 008678 80007A78 10A00005 */      beqz $a1, .L80007A90
  /* 00867C 80007A7C 00000000 */       nop 
  /* 008680 80007A80 8CB90010 */        lw $t9, 0x10($a1)
  /* 008684 80007A84 0322082B */      sltu $at, $t9, $v0
  /* 008688 80007A88 5420FFFB */      bnel $at, $zero, .L80007A78
  /* 00868C 80007A8C 8CA50008 */        lw $a1, 8($a1)
  .L80007A90:
  /* 008690 80007A90 0C001E75 */       jal func_800079D4
  /* 008694 80007A94 00000000 */       nop 
  /* 008698 80007A98 8FBF0014 */        lw $ra, 0x14($sp)
  /* 00869C 80007A9C 27BD0018 */     addiu $sp, $sp, 0x18
  /* 0086A0 80007AA0 03E00008 */        jr $ra
  /* 0086A4 80007AA4 00000000 */       nop 

glabel func_80007AA8
  /* 0086A8 80007AA8 27BDFFE8 */     addiu $sp, $sp, -0x18
  /* 0086AC 80007AAC AFBF0014 */        sw $ra, 0x14($sp)
  /* 0086B0 80007AB0 9086000C */       lbu $a2, 0xc($a0)
  /* 0086B4 80007AB4 3C028004 */       lui $v0, %hi(D_800466F0)
  /* 0086B8 80007AB8 3C058004 */       lui $a1, 0x8004
  /* 0086BC 80007ABC 00063080 */       sll $a2, $a2, 2
  /* 0086C0 80007AC0 00461021 */      addu $v0, $v0, $a2
  /* 0086C4 80007AC4 8C4266F0 */        lw $v0, %lo(D_800466F0)($v0)
  /* 0086C8 80007AC8 00A62821 */      addu $a1, $a1, $a2
  /* 0086CC 80007ACC 1040000D */      beqz $v0, .L80007B04
  /* 0086D0 80007AD0 00000000 */       nop 
  /* 0086D4 80007AD4 8C830010 */        lw $v1, 0x10($a0)
  /* 0086D8 80007AD8 8C4E0010 */        lw $t6, 0x10($v0)
  /* 0086DC 80007ADC 006E082B */      sltu $at, $v1, $t6
  /* 0086E0 80007AE0 10200008 */      beqz $at, .L80007B04
  /* 0086E4 80007AE4 00000000 */       nop 
  /* 0086E8 80007AE8 8C420004 */        lw $v0, 4($v0)
  .L80007AEC:
  /* 0086EC 80007AEC 10400005 */      beqz $v0, .L80007B04
  /* 0086F0 80007AF0 00000000 */       nop 
  /* 0086F4 80007AF4 8C4F0010 */        lw $t7, 0x10($v0)
  /* 0086F8 80007AF8 006F082B */      sltu $at, $v1, $t7
  /* 0086FC 80007AFC 5420FFFB */      bnel $at, $zero, .L80007AEC
  /* 008700 80007B00 8C420004 */        lw $v0, 4($v0)
  .L80007B04:
  /* 008704 80007B04 10400003 */      beqz $v0, .L80007B14
  /* 008708 80007B08 00000000 */       nop 
  /* 00870C 80007B0C 10000002 */         b .L80007B18
  /* 008710 80007B10 8C450008 */        lw $a1, 8($v0)
  .L80007B14:
  /* 008714 80007B14 8CA56778 */        lw $a1, 0x6778($a1)
  .L80007B18:
  /* 008718 80007B18 0C001E75 */       jal func_800079D4
  /* 00871C 80007B1C 00000000 */       nop 
  /* 008720 80007B20 8FBF0014 */        lw $ra, 0x14($sp)
  /* 008724 80007B24 27BD0018 */     addiu $sp, $sp, 0x18
  /* 008728 80007B28 03E00008 */        jr $ra
  /* 00872C 80007B2C 00000000 */       nop 

glabel func_80007B30
  /* 008730 80007B30 8C820008 */        lw $v0, 8($a0)
  /* 008734 80007B34 50400005 */      beql $v0, $zero, .L80007B4C
  /* 008738 80007B38 9098000C */       lbu $t8, 0xc($a0)
  /* 00873C 80007B3C 8C8E0004 */        lw $t6, 4($a0)
  /* 008740 80007B40 10000007 */         b .L80007B60
  /* 008744 80007B44 AC4E0004 */        sw $t6, 4($v0)
  /* 008748 80007B48 9098000C */       lbu $t8, 0xc($a0)
  .L80007B4C:
  /* 00874C 80007B4C 8C8F0004 */        lw $t7, 4($a0)
  /* 008750 80007B50 3C018004 */       lui $at, %hi(D_800466F0)
  /* 008754 80007B54 0018C880 */       sll $t9, $t8, 2
  /* 008758 80007B58 00390821 */      addu $at, $at, $t9
  /* 00875C 80007B5C AC2F66F0 */        sw $t7, %lo(D_800466F0)($at)
  .L80007B60:
  /* 008760 80007B60 8C820004 */        lw $v0, 4($a0)
  /* 008764 80007B64 50400005 */      beql $v0, $zero, .L80007B7C
  /* 008768 80007B68 908A000C */       lbu $t2, 0xc($a0)
  /* 00876C 80007B6C 8C880008 */        lw $t0, 8($a0)
  /* 008770 80007B70 03E00008 */        jr $ra
  /* 008774 80007B74 AC480008 */        sw $t0, 8($v0)

  /* 008778 80007B78 908A000C */       lbu $t2, 0xc($a0)
  .L80007B7C:
  /* 00877C 80007B7C 8C890008 */        lw $t1, 8($a0)
  /* 008780 80007B80 3C018004 */       lui $at, %hi(D_80046778)
  /* 008784 80007B84 000A5880 */       sll $t3, $t2, 2
  /* 008788 80007B88 002B0821 */      addu $at, $at, $t3
  /* 00878C 80007B8C AC296778 */        sw $t1, %lo(D_80046778)($at)
  /* 008790 80007B90 03E00008 */        jr $ra
  /* 008794 80007B94 00000000 */       nop 

glabel func_80007B98
  /* 008798 80007B98 10A00005 */      beqz $a1, .L80007BB0
  /* 00879C 80007B9C AC850024 */        sw $a1, 0x24($a0)
  /* 0087A0 80007BA0 8CAE0020 */        lw $t6, 0x20($a1)
  /* 0087A4 80007BA4 AC8E0020 */        sw $t6, 0x20($a0)
  /* 0087A8 80007BA8 10000009 */         b .L80007BD0
  /* 0087AC 80007BAC ACA40020 */        sw $a0, 0x20($a1)
  .L80007BB0:
  /* 0087B0 80007BB0 908F000D */       lbu $t7, 0xd($a0)
  /* 0087B4 80007BB4 3C198004 */       lui $t9, %hi(D_80046800)
  /* 0087B8 80007BB8 27396800 */     addiu $t9, $t9, %lo(D_80046800)
  /* 0087BC 80007BBC 000FC080 */       sll $t8, $t7, 2
  /* 0087C0 80007BC0 03191021 */      addu $v0, $t8, $t9
  /* 0087C4 80007BC4 8C480000 */        lw $t0, ($v0)
  /* 0087C8 80007BC8 AC880020 */        sw $t0, 0x20($a0)
  /* 0087CC 80007BCC AC440000 */        sw $a0, ($v0)
  .L80007BD0:
  /* 0087D0 80007BD0 8C820020 */        lw $v0, 0x20($a0)
  /* 0087D4 80007BD4 50400004 */      beql $v0, $zero, .L80007BE8
  /* 0087D8 80007BD8 9089000D */       lbu $t1, 0xd($a0)
  /* 0087DC 80007BDC 03E00008 */        jr $ra
  /* 0087E0 80007BE0 AC440024 */        sw $a0, 0x24($v0)

  /* 0087E4 80007BE4 9089000D */       lbu $t1, 0xd($a0)
  .L80007BE8:
  /* 0087E8 80007BE8 3C018004 */       lui $at, %hi(D_80046908)
  /* 0087EC 80007BEC 00095080 */       sll $t2, $t1, 2
  /* 0087F0 80007BF0 002A0821 */      addu $at, $at, $t2
  /* 0087F4 80007BF4 AC246908 */        sw $a0, %lo(D_80046908)($at)
  /* 0087F8 80007BF8 03E00008 */        jr $ra
  /* 0087FC 80007BFC 00000000 */       nop 

glabel func_80007C00
  /* 008800 80007C00 27BDFFE8 */     addiu $sp, $sp, -0x18
  /* 008804 80007C04 AFBF0014 */        sw $ra, 0x14($sp)
  /* 008808 80007C08 908E000D */       lbu $t6, 0xd($a0)
  /* 00880C 80007C0C 3C058004 */       lui $a1, %hi(D_80046908)
  /* 008810 80007C10 000E7880 */       sll $t7, $t6, 2
  /* 008814 80007C14 00AF2821 */      addu $a1, $a1, $t7
  /* 008818 80007C18 8CA56908 */        lw $a1, %lo(D_80046908)($a1)
  /* 00881C 80007C1C 10A0000D */      beqz $a1, .L80007C54
  /* 008820 80007C20 00000000 */       nop 
  /* 008824 80007C24 8C820028 */        lw $v0, 0x28($a0)
  /* 008828 80007C28 8CB80028 */        lw $t8, 0x28($a1)
  /* 00882C 80007C2C 0302082B */      sltu $at, $t8, $v0
  /* 008830 80007C30 10200008 */      beqz $at, .L80007C54
  /* 008834 80007C34 00000000 */       nop 
  /* 008838 80007C38 8CA50024 */        lw $a1, 0x24($a1)
  .L80007C3C:
  /* 00883C 80007C3C 10A00005 */      beqz $a1, .L80007C54
  /* 008840 80007C40 00000000 */       nop 
  /* 008844 80007C44 8CB90028 */        lw $t9, 0x28($a1)
  /* 008848 80007C48 0322082B */      sltu $at, $t9, $v0
  /* 00884C 80007C4C 5420FFFB */      bnel $at, $zero, .L80007C3C
  /* 008850 80007C50 8CA50024 */        lw $a1, 0x24($a1)
  .L80007C54:
  /* 008854 80007C54 0C001EE6 */       jal func_80007B98
  /* 008858 80007C58 00000000 */       nop 
  /* 00885C 80007C5C 8FBF0014 */        lw $ra, 0x14($sp)
  /* 008860 80007C60 27BD0018 */     addiu $sp, $sp, 0x18
  /* 008864 80007C64 03E00008 */        jr $ra
  /* 008868 80007C68 00000000 */       nop 

glabel func_80007C6C
  /* 00886C 80007C6C 27BDFFE8 */     addiu $sp, $sp, -0x18
  /* 008870 80007C70 AFBF0014 */        sw $ra, 0x14($sp)
  /* 008874 80007C74 9086000D */       lbu $a2, 0xd($a0)
  /* 008878 80007C78 3C028004 */       lui $v0, %hi(D_80046800)
  /* 00887C 80007C7C 3C058004 */       lui $a1, 0x8004
  /* 008880 80007C80 00063080 */       sll $a2, $a2, 2
  /* 008884 80007C84 00461021 */      addu $v0, $v0, $a2
  /* 008888 80007C88 8C426800 */        lw $v0, %lo(D_80046800)($v0)
  /* 00888C 80007C8C 00A62821 */      addu $a1, $a1, $a2
  /* 008890 80007C90 1040000D */      beqz $v0, .L80007CC8
  /* 008894 80007C94 00000000 */       nop 
  /* 008898 80007C98 8C830028 */        lw $v1, 0x28($a0)
  /* 00889C 80007C9C 8C4E0028 */        lw $t6, 0x28($v0)
  /* 0088A0 80007CA0 006E082B */      sltu $at, $v1, $t6
  /* 0088A4 80007CA4 10200008 */      beqz $at, .L80007CC8
  /* 0088A8 80007CA8 00000000 */       nop 
  /* 0088AC 80007CAC 8C420020 */        lw $v0, 0x20($v0)
  .L80007CB0:
  /* 0088B0 80007CB0 10400005 */      beqz $v0, .L80007CC8
  /* 0088B4 80007CB4 00000000 */       nop 
  /* 0088B8 80007CB8 8C4F0028 */        lw $t7, 0x28($v0)
  /* 0088BC 80007CBC 006F082B */      sltu $at, $v1, $t7
  /* 0088C0 80007CC0 5420FFFB */      bnel $at, $zero, .L80007CB0
  /* 0088C4 80007CC4 8C420020 */        lw $v0, 0x20($v0)
  .L80007CC8:
  /* 0088C8 80007CC8 10400003 */      beqz $v0, .L80007CD8
  /* 0088CC 80007CCC 00000000 */       nop 
  /* 0088D0 80007CD0 10000002 */         b .L80007CDC
  /* 0088D4 80007CD4 8C450024 */        lw $a1, 0x24($v0)
  .L80007CD8:
  /* 0088D8 80007CD8 8CA56908 */        lw $a1, 0x6908($a1)
  .L80007CDC:
  /* 0088DC 80007CDC 0C001EE6 */       jal func_80007B98
  /* 0088E0 80007CE0 00000000 */       nop 
  /* 0088E4 80007CE4 8FBF0014 */        lw $ra, 0x14($sp)
  /* 0088E8 80007CE8 27BD0018 */     addiu $sp, $sp, 0x18
  /* 0088EC 80007CEC 03E00008 */        jr $ra
  /* 0088F0 80007CF0 00000000 */       nop 

glabel func_80007CF4
  /* 0088F4 80007CF4 8C820024 */        lw $v0, 0x24($a0)
  /* 0088F8 80007CF8 50400005 */      beql $v0, $zero, .L80007D10
  /* 0088FC 80007CFC 9098000D */       lbu $t8, 0xd($a0)
  /* 008900 80007D00 8C8E0020 */        lw $t6, 0x20($a0)
  /* 008904 80007D04 10000007 */         b .L80007D24
  /* 008908 80007D08 AC4E0020 */        sw $t6, 0x20($v0)
  /* 00890C 80007D0C 9098000D */       lbu $t8, 0xd($a0)
  .L80007D10:
  /* 008910 80007D10 8C8F0020 */        lw $t7, 0x20($a0)
  /* 008914 80007D14 3C018004 */       lui $at, %hi(D_80046800)
  /* 008918 80007D18 0018C880 */       sll $t9, $t8, 2
  /* 00891C 80007D1C 00390821 */      addu $at, $at, $t9
  /* 008920 80007D20 AC2F6800 */        sw $t7, %lo(D_80046800)($at)
  .L80007D24:
  /* 008924 80007D24 8C820020 */        lw $v0, 0x20($a0)
  /* 008928 80007D28 50400005 */      beql $v0, $zero, .L80007D40
  /* 00892C 80007D2C 908A000D */       lbu $t2, 0xd($a0)
  /* 008930 80007D30 8C880024 */        lw $t0, 0x24($a0)
  /* 008934 80007D34 03E00008 */        jr $ra
  /* 008938 80007D38 AC480024 */        sw $t0, 0x24($v0)

  /* 00893C 80007D3C 908A000D */       lbu $t2, 0xd($a0)
  .L80007D40:
  /* 008940 80007D40 8C890024 */        lw $t1, 0x24($a0)
  /* 008944 80007D44 3C018004 */       lui $at, %hi(D_80046908)
  /* 008948 80007D48 000A5880 */       sll $t3, $t2, 2
  /* 00894C 80007D4C 002B0821 */      addu $at, $at, $t3
  /* 008950 80007D50 AC296908 */        sw $t1, %lo(D_80046908)($at)
  /* 008954 80007D54 03E00008 */        jr $ra
  /* 008958 80007D58 00000000 */       nop 

glabel func_80007D5C
  /* 00895C 80007D5C 3C068004 */       lui $a2, %hi(D_80046A14)
  /* 008960 80007D60 24C66A14 */     addiu $a2, $a2, %lo(D_80046A14)
  /* 008964 80007D64 8CC30000 */        lw $v1, ($a2) # D_80046A14 + 0
  /* 008968 80007D68 27BDFFE8 */     addiu $sp, $sp, -0x18
  /* 00896C 80007D6C AFBF0014 */        sw $ra, 0x14($sp)
  /* 008970 80007D70 14600008 */      bnez $v1, .L80007D94
  /* 008974 80007D74 24040048 */     addiu $a0, $zero, 0x48
  /* 008978 80007D78 0C001260 */       jal func_80004980
  /* 00897C 80007D7C 24050008 */     addiu $a1, $zero, 8
  /* 008980 80007D80 3C068004 */       lui $a2, %hi(D_80046A14)
  /* 008984 80007D84 24C66A14 */     addiu $a2, $a2, %lo(D_80046A14)
  /* 008988 80007D88 ACC20000 */        sw $v0, ($a2) # D_80046A14 + 0
  /* 00898C 80007D8C AC400000 */        sw $zero, ($v0)
  /* 008990 80007D90 8CC30000 */        lw $v1, ($a2) # D_80046A14 + 0
  .L80007D94:
  /* 008994 80007D94 14600006 */      bnez $v1, .L80007DB0
  /* 008998 80007D98 3C058004 */       lui $a1, 0x8004
  /* 00899C 80007D9C 3C048004 */       lui $a0, %hi(D_8003D994)
  /* 0089A0 80007DA0 0C008D89 */       jal fatal_printf
  /* 0089A4 80007DA4 2484D994 */     addiu $a0, $a0, %lo(D_8003D994)
  .L80007DA8:
  /* 0089A8 80007DA8 1000FFFF */         b .L80007DA8
  /* 0089AC 80007DAC 00000000 */       nop 
  .L80007DB0:
  /* 0089B0 80007DB0 24A56A18 */     addiu $a1, $a1, 0x6a18
  /* 0089B4 80007DB4 8CB80000 */        lw $t8, ($a1)
  /* 0089B8 80007DB8 8FBF0014 */        lw $ra, 0x14($sp)
  /* 0089BC 80007DBC 8C6F0000 */        lw $t7, ($v1)
  /* 0089C0 80007DC0 27190001 */     addiu $t9, $t8, 1
  /* 0089C4 80007DC4 ACB90000 */        sw $t9, ($a1)
  /* 0089C8 80007DC8 27BD0018 */     addiu $sp, $sp, 0x18
  /* 0089CC 80007DCC 00601025 */        or $v0, $v1, $zero
  /* 0089D0 80007DD0 03E00008 */        jr $ra
  /* 0089D4 80007DD4 ACCF0000 */        sw $t7, ($a2)

glabel func_80007DD8
  /* 0089D8 80007DD8 3C028004 */       lui $v0, %hi(D_80046A14)
  /* 0089DC 80007DDC 24426A14 */     addiu $v0, $v0, %lo(D_80046A14)
  /* 0089E0 80007DE0 8C4E0000 */        lw $t6, ($v0) # D_80046A14 + 0
  /* 0089E4 80007DE4 3C038004 */       lui $v1, %hi(D_80046A18)
  /* 0089E8 80007DE8 24636A18 */     addiu $v1, $v1, %lo(D_80046A18)
  /* 0089EC 80007DEC AC8E0000 */        sw $t6, ($a0)
  /* 0089F0 80007DF0 8C6F0000 */        lw $t7, ($v1) # D_80046A18 + 0
  /* 0089F4 80007DF4 AC440000 */        sw $a0, ($v0) # D_80046A14 + 0
  /* 0089F8 80007DF8 25F8FFFF */     addiu $t8, $t7, -1
  /* 0089FC 80007DFC 03E00008 */        jr $ra
  /* 008A00 80007E00 AC780000 */        sw $t8, ($v1) # D_80046A18 + 0

glabel func_80007E04
  /* 008A04 80007E04 3C068004 */       lui $a2, %hi(D_80046A20)
  /* 008A08 80007E08 24C66A20 */     addiu $a2, $a2, %lo(D_80046A20)
  /* 008A0C 80007E0C 8CC30000 */        lw $v1, ($a2) # D_80046A20 + 0
  /* 008A10 80007E10 27BDFFE8 */     addiu $sp, $sp, -0x18
  /* 008A14 80007E14 AFBF0014 */        sw $ra, 0x14($sp)
  /* 008A18 80007E18 14600008 */      bnez $v1, .L80007E3C
  /* 008A1C 80007E1C 24040024 */     addiu $a0, $zero, 0x24
  /* 008A20 80007E20 0C001260 */       jal func_80004980
  /* 008A24 80007E24 24050004 */     addiu $a1, $zero, 4
  /* 008A28 80007E28 3C068004 */       lui $a2, %hi(D_80046A20)
  /* 008A2C 80007E2C 24C66A20 */     addiu $a2, $a2, %lo(D_80046A20)
  /* 008A30 80007E30 ACC20000 */        sw $v0, ($a2) # D_80046A20 + 0
  /* 008A34 80007E34 AC400000 */        sw $zero, ($v0)
  /* 008A38 80007E38 8CC30000 */        lw $v1, ($a2) # D_80046A20 + 0
  .L80007E3C:
  /* 008A3C 80007E3C 14600006 */      bnez $v1, .L80007E58
  /* 008A40 80007E40 3C058004 */       lui $a1, 0x8004
  /* 008A44 80007E44 3C048004 */       lui $a0, %hi(D_8003D9B0)
  /* 008A48 80007E48 0C008D89 */       jal fatal_printf
  /* 008A4C 80007E4C 2484D9B0 */     addiu $a0, $a0, %lo(D_8003D9B0)
  .L80007E50:
  /* 008A50 80007E50 1000FFFF */         b .L80007E50
  /* 008A54 80007E54 00000000 */       nop 
  .L80007E58:
  /* 008A58 80007E58 24A56A24 */     addiu $a1, $a1, 0x6a24
  /* 008A5C 80007E5C 8CB80000 */        lw $t8, ($a1)
  /* 008A60 80007E60 8FBF0014 */        lw $ra, 0x14($sp)
  /* 008A64 80007E64 8C6F0000 */        lw $t7, ($v1)
  /* 008A68 80007E68 27190001 */     addiu $t9, $t8, 1
  /* 008A6C 80007E6C ACB90000 */        sw $t9, ($a1)
  /* 008A70 80007E70 27BD0018 */     addiu $sp, $sp, 0x18
  /* 008A74 80007E74 00601025 */        or $v0, $v1, $zero
  /* 008A78 80007E78 03E00008 */        jr $ra
  /* 008A7C 80007E7C ACCF0000 */        sw $t7, ($a2)

glabel func_80007E80
  /* 008A80 80007E80 8C8E006C */        lw $t6, 0x6c($a0)
  /* 008A84 80007E84 ACAE0000 */        sw $t6, ($a1)
  /* 008A88 80007E88 03E00008 */        jr $ra
  /* 008A8C 80007E8C AC85006C */        sw $a1, 0x6c($a0)

glabel func_80007E90
  /* 008A90 80007E90 8C8E0090 */        lw $t6, 0x90($a0)
  /* 008A94 80007E94 ACAE0000 */        sw $t6, ($a1)
  /* 008A98 80007E98 03E00008 */        jr $ra
  /* 008A9C 80007E9C AC850090 */        sw $a1, 0x90($a0)

glabel func_80007EA0
  /* 008AA0 80007EA0 8C8E006C */        lw $t6, 0x6c($a0)
  /* 008AA4 80007EA4 ACAE0000 */        sw $t6, ($a1)
  /* 008AA8 80007EA8 03E00008 */        jr $ra
  /* 008AAC 80007EAC AC85006C */        sw $a1, 0x6c($a0)

glabel func_80007EB0
  /* 008AB0 80007EB0 3C028004 */       lui $v0, %hi(D_80046A20)
  /* 008AB4 80007EB4 24426A20 */     addiu $v0, $v0, %lo(D_80046A20)
  /* 008AB8 80007EB8 8C4E0000 */        lw $t6, ($v0) # D_80046A20 + 0
  /* 008ABC 80007EBC 3C038004 */       lui $v1, %hi(D_80046A24)
  /* 008AC0 80007EC0 24636A24 */     addiu $v1, $v1, %lo(D_80046A24)
  /* 008AC4 80007EC4 AC8E0000 */        sw $t6, ($a0)
  /* 008AC8 80007EC8 8C6F0000 */        lw $t7, ($v1) # D_80046A24 + 0
  /* 008ACC 80007ECC AC440000 */        sw $a0, ($v0) # D_80046A20 + 0
  /* 008AD0 80007ED0 25F8FFFF */     addiu $t8, $t7, -1
  /* 008AD4 80007ED4 03E00008 */        jr $ra
  /* 008AD8 80007ED8 AC780000 */        sw $t8, ($v1) # D_80046A24 + 0

glabel func_80007EDC
  /* 008ADC 80007EDC 3C068004 */       lui $a2, %hi(D_80046A28)
  /* 008AE0 80007EE0 24C66A28 */     addiu $a2, $a2, %lo(D_80046A28)
  /* 008AE4 80007EE4 8CC30000 */        lw $v1, ($a2) # D_80046A28 + 0
  /* 008AE8 80007EE8 27BDFFE8 */     addiu $sp, $sp, -0x18
  /* 008AEC 80007EEC AFBF0014 */        sw $ra, 0x14($sp)
  /* 008AF0 80007EF0 14600008 */      bnez $v1, .L80007F14
  /* 008AF4 80007EF4 240400A8 */     addiu $a0, $zero, 0xa8
  /* 008AF8 80007EF8 0C001260 */       jal func_80004980
  /* 008AFC 80007EFC 24050004 */     addiu $a1, $zero, 4
  /* 008B00 80007F00 3C068004 */       lui $a2, %hi(D_80046A28)
  /* 008B04 80007F04 24C66A28 */     addiu $a2, $a2, %lo(D_80046A28)
  /* 008B08 80007F08 ACC20000 */        sw $v0, ($a2) # D_80046A28 + 0
  /* 008B0C 80007F0C AC400000 */        sw $zero, ($v0)
  /* 008B10 80007F10 8CC30000 */        lw $v1, ($a2) # D_80046A28 + 0
  .L80007F14:
  /* 008B14 80007F14 14600006 */      bnez $v1, .L80007F30
  /* 008B18 80007F18 3C058004 */       lui $a1, 0x8004
  /* 008B1C 80007F1C 3C048004 */       lui $a0, %hi(D_8003D9C8)
  /* 008B20 80007F20 0C008D89 */       jal fatal_printf
  /* 008B24 80007F24 2484D9C8 */     addiu $a0, $a0, %lo(D_8003D9C8)
  .L80007F28:
  /* 008B28 80007F28 1000FFFF */         b .L80007F28
  /* 008B2C 80007F2C 00000000 */       nop 
  .L80007F30:
  /* 008B30 80007F30 24A56A2C */     addiu $a1, $a1, 0x6a2c
  /* 008B34 80007F34 8CB80000 */        lw $t8, ($a1)
  /* 008B38 80007F38 8FBF0014 */        lw $ra, 0x14($sp)
  /* 008B3C 80007F3C 8C6F0000 */        lw $t7, ($v1)
  /* 008B40 80007F40 27190001 */     addiu $t9, $t8, 1
  /* 008B44 80007F44 ACB90000 */        sw $t9, ($a1)
  /* 008B48 80007F48 27BD0018 */     addiu $sp, $sp, 0x18
  /* 008B4C 80007F4C 00601025 */        or $v0, $v1, $zero
  /* 008B50 80007F50 03E00008 */        jr $ra
  /* 008B54 80007F54 ACCF0000 */        sw $t7, ($a2)

glabel func_80007F58
  /* 008B58 80007F58 3C028004 */       lui $v0, %hi(D_80046A28)
  /* 008B5C 80007F5C 24426A28 */     addiu $v0, $v0, %lo(D_80046A28)
  /* 008B60 80007F60 8C4E0000 */        lw $t6, ($v0) # D_80046A28 + 0
  /* 008B64 80007F64 3C038004 */       lui $v1, %hi(D_80046A2C)
  /* 008B68 80007F68 24636A2C */     addiu $v1, $v1, %lo(D_80046A2C)
  /* 008B6C 80007F6C AC8E0000 */        sw $t6, ($a0)
  /* 008B70 80007F70 8C6F0000 */        lw $t7, ($v1) # D_80046A2C + 0
  /* 008B74 80007F74 AC440000 */        sw $a0, ($v0) # D_80046A28 + 0
  /* 008B78 80007F78 25F8FFFF */     addiu $t8, $t7, -1
  /* 008B7C 80007F7C 03E00008 */        jr $ra
  /* 008B80 80007F80 AC780000 */        sw $t8, ($v1) # D_80046A2C + 0

glabel func_80007F84
  /* 008B84 80007F84 3C068004 */       lui $a2, %hi(D_80046A30)
  /* 008B88 80007F88 24C66A30 */     addiu $a2, $a2, %lo(D_80046A30)
  /* 008B8C 80007F8C 8CC30000 */        lw $v1, ($a2) # D_80046A30 + 0
  /* 008B90 80007F90 27BDFFE8 */     addiu $sp, $sp, -0x18
  /* 008B94 80007F94 AFBF0014 */        sw $ra, 0x14($sp)
  /* 008B98 80007F98 14600009 */      bnez $v1, .L80007FC0
  /* 008B9C 80007F9C 3C048004 */       lui $a0, %hi(D_80046A38)
  /* 008BA0 80007FA0 94846A38 */       lhu $a0, %lo(D_80046A38)($a0)
  /* 008BA4 80007FA4 0C001260 */       jal func_80004980
  /* 008BA8 80007FA8 24050008 */     addiu $a1, $zero, 8
  /* 008BAC 80007FAC 3C068004 */       lui $a2, %hi(D_80046A30)
  /* 008BB0 80007FB0 24C66A30 */     addiu $a2, $a2, %lo(D_80046A30)
  /* 008BB4 80007FB4 ACC20000 */        sw $v0, ($a2) # D_80046A30 + 0
  /* 008BB8 80007FB8 AC400000 */        sw $zero, ($v0)
  /* 008BBC 80007FBC 8CC30000 */        lw $v1, ($a2) # D_80046A30 + 0
  .L80007FC0:
  /* 008BC0 80007FC0 14600006 */      bnez $v1, .L80007FDC
  /* 008BC4 80007FC4 3C058004 */       lui $a1, 0x8004
  /* 008BC8 80007FC8 3C048004 */       lui $a0, %hi(D_8003D9E0)
  /* 008BCC 80007FCC 0C008D89 */       jal fatal_printf
  /* 008BD0 80007FD0 2484D9E0 */     addiu $a0, $a0, %lo(D_8003D9E0)
  .L80007FD4:
  /* 008BD4 80007FD4 1000FFFF */         b .L80007FD4
  /* 008BD8 80007FD8 00000000 */       nop 
  .L80007FDC:
  /* 008BDC 80007FDC 24A56A34 */     addiu $a1, $a1, 0x6a34
  /* 008BE0 80007FE0 8CB80000 */        lw $t8, ($a1)
  /* 008BE4 80007FE4 8FBF0014 */        lw $ra, 0x14($sp)
  /* 008BE8 80007FE8 8C6F0000 */        lw $t7, ($v1)
  /* 008BEC 80007FEC 27190001 */     addiu $t9, $t8, 1
  /* 008BF0 80007FF0 ACB90000 */        sw $t9, ($a1)
  /* 008BF4 80007FF4 27BD0018 */     addiu $sp, $sp, 0x18
  /* 008BF8 80007FF8 00601025 */        or $v0, $v1, $zero
  /* 008BFC 80007FFC 03E00008 */        jr $ra
glabel func_80008000
  /* 008C00 80008000 ACCF0000 */        sw $t7, ($a2)

glabel func_80008004
  /* 008C04 80008004 3C028004 */       lui $v0, %hi(D_80046A30)
  /* 008C08 80008008 24426A30 */     addiu $v0, $v0, %lo(D_80046A30)
  /* 008C0C 8000800C 8C4E0000 */        lw $t6, ($v0) # D_80046A30 + 0
  /* 008C10 80008010 3C038004 */       lui $v1, %hi(D_80046A34)
  /* 008C14 80008014 24636A34 */     addiu $v1, $v1, %lo(D_80046A34)
  /* 008C18 80008018 AC8E0000 */        sw $t6, ($a0)
  /* 008C1C 8000801C 8C6F0000 */        lw $t7, ($v1) # D_80046A34 + 0
  /* 008C20 80008020 AC440000 */        sw $a0, ($v0) # D_80046A30 + 0
  /* 008C24 80008024 25F8FFFF */     addiu $t8, $t7, -1
  /* 008C28 80008028 03E00008 */        jr $ra
  /* 008C2C 8000802C AC780000 */        sw $t8, ($v1) # D_80046A34 + 0

glabel func_80008030
  /* 008C30 80008030 3C068004 */       lui $a2, %hi(D_80046A3C)
  /* 008C34 80008034 24C66A3C */     addiu $a2, $a2, %lo(D_80046A3C)
  /* 008C38 80008038 8CC30000 */        lw $v1, ($a2) # D_80046A3C + 0
  /* 008C3C 8000803C 27BDFFE8 */     addiu $sp, $sp, -0x18
  /* 008C40 80008040 AFBF0014 */        sw $ra, 0x14($sp)
  /* 008C44 80008044 14600009 */      bnez $v1, .L8000806C
  /* 008C48 80008048 3C048004 */       lui $a0, %hi(D_80046A44)
  /* 008C4C 8000804C 94846A44 */       lhu $a0, %lo(D_80046A44)($a0)
  /* 008C50 80008050 0C001260 */       jal func_80004980
  /* 008C54 80008054 24050008 */     addiu $a1, $zero, 8
  /* 008C58 80008058 3C068004 */       lui $a2, %hi(D_80046A3C)
  /* 008C5C 8000805C 24C66A3C */     addiu $a2, $a2, %lo(D_80046A3C)
  /* 008C60 80008060 ACC20000 */        sw $v0, ($a2) # D_80046A3C + 0
  /* 008C64 80008064 AC400000 */        sw $zero, ($v0)
  /* 008C68 80008068 8CC30000 */        lw $v1, ($a2) # D_80046A3C + 0
  .L8000806C:
  /* 008C6C 8000806C 14600006 */      bnez $v1, .L80008088
  /* 008C70 80008070 3C058004 */       lui $a1, 0x8004
  /* 008C74 80008074 3C048004 */       lui $a0, %hi(D_8003D9F8)
  /* 008C78 80008078 0C008D89 */       jal fatal_printf
  /* 008C7C 8000807C 2484D9F8 */     addiu $a0, $a0, %lo(D_8003D9F8)
  .L80008080:
  /* 008C80 80008080 1000FFFF */         b .L80008080
  /* 008C84 80008084 00000000 */       nop 
  .L80008088:
  /* 008C88 80008088 24A56A40 */     addiu $a1, $a1, 0x6a40
  /* 008C8C 8000808C 8CB80000 */        lw $t8, ($a1)
  /* 008C90 80008090 8FBF0014 */        lw $ra, 0x14($sp)
  /* 008C94 80008094 8C6F0000 */        lw $t7, ($v1)
  /* 008C98 80008098 27190001 */     addiu $t9, $t8, 1
  /* 008C9C 8000809C ACB90000 */        sw $t9, ($a1)
  /* 008CA0 800080A0 27BD0018 */     addiu $sp, $sp, 0x18
  /* 008CA4 800080A4 00601025 */        or $v0, $v1, $zero
  /* 008CA8 800080A8 03E00008 */        jr $ra
  /* 008CAC 800080AC ACCF0000 */        sw $t7, ($a2)

glabel func_800080B0
  /* 008CB0 800080B0 3C028004 */       lui $v0, %hi(D_80046A3C)
  /* 008CB4 800080B4 24426A3C */     addiu $v0, $v0, %lo(D_80046A3C)
  /* 008CB8 800080B8 8C4E0000 */        lw $t6, ($v0) # D_80046A3C + 0
  /* 008CBC 800080BC 3C038004 */       lui $v1, %hi(D_80046A40)
  /* 008CC0 800080C0 24636A40 */     addiu $v1, $v1, %lo(D_80046A40)
  /* 008CC4 800080C4 AC8E0000 */        sw $t6, ($a0)
  /* 008CC8 800080C8 8C6F0000 */        lw $t7, ($v1) # D_80046A40 + 0
  /* 008CCC 800080CC AC440000 */        sw $a0, ($v0) # D_80046A3C + 0
  /* 008CD0 800080D0 25F8FFFF */     addiu $t8, $t7, -1
  /* 008CD4 800080D4 03E00008 */        jr $ra
  /* 008CD8 800080D8 AC780000 */        sw $t8, ($v1) # D_80046A40 + 0

glabel func_800080DC
  /* 008CDC 800080DC 3C068004 */       lui $a2, %hi(D_80046A48)
  /* 008CE0 800080E0 24C66A48 */     addiu $a2, $a2, %lo(D_80046A48)
  /* 008CE4 800080E4 8CC30000 */        lw $v1, ($a2) # D_80046A48 + 0
  /* 008CE8 800080E8 27BDFFE8 */     addiu $sp, $sp, -0x18
  /* 008CEC 800080EC AFBF0014 */        sw $ra, 0x14($sp)
  /* 008CF0 800080F0 14600009 */      bnez $v1, .L80008118
  /* 008CF4 800080F4 3C048004 */       lui $a0, %hi(D_80046A50)
  /* 008CF8 800080F8 94846A50 */       lhu $a0, %lo(D_80046A50)($a0)
  /* 008CFC 800080FC 0C001260 */       jal func_80004980
  /* 008D00 80008100 24050008 */     addiu $a1, $zero, 8
  /* 008D04 80008104 3C068004 */       lui $a2, %hi(D_80046A48)
  /* 008D08 80008108 24C66A48 */     addiu $a2, $a2, %lo(D_80046A48)
  /* 008D0C 8000810C ACC20000 */        sw $v0, ($a2) # D_80046A48 + 0
  /* 008D10 80008110 AC400000 */        sw $zero, ($v0)
  /* 008D14 80008114 8CC30000 */        lw $v1, ($a2) # D_80046A48 + 0
  .L80008118:
  /* 008D18 80008118 14600006 */      bnez $v1, .L80008134
  /* 008D1C 8000811C 3C058004 */       lui $a1, 0x8004
  /* 008D20 80008120 3C048004 */       lui $a0, %hi(D_8003DA10)
  /* 008D24 80008124 0C008D89 */       jal fatal_printf
  /* 008D28 80008128 2484DA10 */     addiu $a0, $a0, %lo(D_8003DA10)
  .L8000812C:
  /* 008D2C 8000812C 1000FFFF */         b .L8000812C
  /* 008D30 80008130 00000000 */       nop 
  .L80008134:
  /* 008D34 80008134 24A56A4C */     addiu $a1, $a1, 0x6a4c
  /* 008D38 80008138 8CB80000 */        lw $t8, ($a1)
  /* 008D3C 8000813C 8FBF0014 */        lw $ra, 0x14($sp)
  /* 008D40 80008140 8C6F0000 */        lw $t7, ($v1)
  /* 008D44 80008144 27190001 */     addiu $t9, $t8, 1
  /* 008D48 80008148 ACB90000 */        sw $t9, ($a1)
  /* 008D4C 8000814C 27BD0018 */     addiu $sp, $sp, 0x18
  /* 008D50 80008150 00601025 */        or $v0, $v1, $zero
  /* 008D54 80008154 03E00008 */        jr $ra
  /* 008D58 80008158 ACCF0000 */        sw $t7, ($a2)

glabel func_8000815C
  /* 008D5C 8000815C 3C028004 */       lui $v0, %hi(D_80046A48)
  /* 008D60 80008160 24426A48 */     addiu $v0, $v0, %lo(D_80046A48)
  /* 008D64 80008164 8C4E0000 */        lw $t6, ($v0) # D_80046A48 + 0
  /* 008D68 80008168 3C038004 */       lui $v1, %hi(D_80046A4C)
  /* 008D6C 8000816C 24636A4C */     addiu $v1, $v1, %lo(D_80046A4C)
  /* 008D70 80008170 AC8E0000 */        sw $t6, ($a0)
  /* 008D74 80008174 8C6F0000 */        lw $t7, ($v1) # D_80046A4C + 0
  /* 008D78 80008178 AC440000 */        sw $a0, ($v0) # D_80046A48 + 0
  /* 008D7C 8000817C 25F8FFFF */     addiu $t8, $t7, -1
  /* 008D80 80008180 03E00008 */        jr $ra
  /* 008D84 80008184 AC780000 */        sw $t8, ($v1) # D_80046A4C + 0

glabel func_80008188
  /* 008D88 80008188 27BDFFD0 */     addiu $sp, $sp, -0x30
  /* 008D8C 8000818C AFA60038 */        sw $a2, 0x38($sp)
  /* 008D90 80008190 30C600FF */      andi $a2, $a2, 0xff
  /* 008D94 80008194 AFBF001C */        sw $ra, 0x1c($sp)
  /* 008D98 80008198 14800003 */      bnez $a0, .L800081A8
  /* 008D9C 8000819C AFA50034 */        sw $a1, 0x34($sp)
  /* 008DA0 800081A0 3C048004 */       lui $a0, %hi(D_80046A54)
  /* 008DA4 800081A4 8C846A54 */        lw $a0, %lo(D_80046A54)($a0)
  .L800081A8:
  /* 008DA8 800081A8 AFA40030 */        sw $a0, 0x30($sp)
  /* 008DAC 800081AC A3A6003B */        sb $a2, 0x3b($sp)
  /* 008DB0 800081B0 0C001D81 */       jal func_80007604
  /* 008DB4 800081B4 AFA7003C */        sw $a3, 0x3c($sp)
  /* 008DB8 800081B8 8FA7003C */        lw $a3, 0x3c($sp)
  /* 008DBC 800081BC 93A6003B */       lbu $a2, 0x3b($sp)
  /* 008DC0 800081C0 AFA20024 */        sw $v0, 0x24($sp)
  /* 008DC4 800081C4 2CE10006 */     sltiu $at, $a3, 6
  /* 008DC8 800081C8 14200006 */      bnez $at, .L800081E4
  /* 008DCC 800081CC 8FA40034 */        lw $a0, 0x34($sp)
  /* 008DD0 800081D0 3C048004 */       lui $a0, %hi(D_8003DA2C)
  /* 008DD4 800081D4 0C008D89 */       jal fatal_printf
  /* 008DD8 800081D8 2484DA2C */     addiu $a0, $a0, %lo(D_8003DA2C)
  .L800081DC:
  /* 008DDC 800081DC 1000FFFF */         b .L800081DC
  /* 008DE0 800081E0 00000000 */       nop 
  .L800081E4:
  /* 008DE4 800081E4 AC470010 */        sw $a3, 0x10($v0)
  /* 008DE8 800081E8 A0460014 */        sb $a2, 0x14($v0)
  /* 008DEC 800081EC A0400015 */        sb $zero, 0x15($v0)
  /* 008DF0 800081F0 8FAE0030 */        lw $t6, 0x30($sp)
  /* 008DF4 800081F4 AC440020 */        sw $a0, 0x20($v0)
  /* 008DF8 800081F8 10C00006 */      beqz $a2, .L80008214
  /* 008DFC 800081FC AC4E0018 */        sw $t6, 0x18($v0)
  /* 008E00 80008200 24010001 */     addiu $at, $zero, 1
  /* 008E04 80008204 10C10032 */       beq $a2, $at, .L800082D0
  /* 008E08 80008208 00000000 */       nop 
  /* 008E0C 8000820C 10000032 */         b .L800082D8
  /* 008E10 80008210 3C048004 */       lui $a0, 0x8004
  .L80008214:
  /* 008E14 80008214 0C001CF8 */       jal func_800073E0
  /* 008E18 80008218 00000000 */       nop 
  /* 008E1C 8000821C 8FAF0024 */        lw $t7, 0x24($sp)
  /* 008E20 80008220 ADE2001C */        sw $v0, 0x1c($t7)
  /* 008E24 80008224 0C001D59 */       jal func_80007564
  /* 008E28 80008228 AFA20028 */        sw $v0, 0x28($sp)
  /* 008E2C 8000822C 8FA80028 */        lw $t0, 0x28($sp)
  /* 008E30 80008230 3C0A8004 */       lui $t2, %hi(D_800466BC)
  /* 008E34 80008234 24430008 */     addiu $v1, $v0, 8
  /* 008E38 80008238 254A66BC */     addiu $t2, $t2, %lo(D_800466BC)
  /* 008E3C 8000823C AD0301B8 */        sw $v1, 0x1b8($t0)
  /* 008E40 80008240 8D580000 */        lw $t8, ($t2) # D_800466BC + 0
  /* 008E44 80008244 3C098004 */       lui $t1, %hi(D_8003B870)
  /* 008E48 80008248 2529B870 */     addiu $t1, $t1, %lo(D_8003B870)
  /* 008E4C 8000824C AD1801BC */        sw $t8, 0x1bc($t0)
  /* 008E50 80008250 8D590000 */        lw $t9, ($t2) # D_800466BC + 0
  /* 008E54 80008254 8D250000 */        lw $a1, ($t1) # D_8003B870 + 0
  /* 008E58 80008258 240E0033 */     addiu $t6, $zero, 0x33
  /* 008E5C 8000825C 001958C2 */       srl $t3, $t9, 3
  /* 008E60 80008260 000B60C0 */       sll $t4, $t3, 3
  /* 008E64 80008264 006C6821 */      addu $t5, $v1, $t4
  /* 008E68 80008268 24AF0001 */     addiu $t7, $a1, 1
  /* 008E6C 8000826C AD2F0000 */        sw $t7, ($t1) # D_8003B870 + 0
  /* 008E70 80008270 AFAD0010 */        sw $t5, 0x10($sp)
  /* 008E74 80008274 AFAE0014 */        sw $t6, 0x14($sp)
  /* 008E78 80008278 8FA70030 */        lw $a3, 0x30($sp)
  /* 008E7C 8000827C 8FA60034 */        lw $a2, 0x34($sp)
  /* 008E80 80008280 0C00C788 */       jal osCreateThread
  /* 008E84 80008284 25040008 */     addiu $a0, $t0, 8
  /* 008E88 80008288 8FA80028 */        lw $t0, 0x28($sp)
  /* 008E8C 8000828C 3C19FEDC */       lui $t9, (0xFEDCBA98 >> 16) # 4275878552
  /* 008E90 80008290 3C098004 */       lui $t1, %hi(D_8003B870)
  /* 008E94 80008294 8D0B01B8 */        lw $t3, 0x1b8($t0)
  /* 008E98 80008298 3739BA98 */       ori $t9, $t9, (0xFEDCBA98 & 0xFFFF) # 4275878552
  /* 008E9C 8000829C 24180000 */     addiu $t8, $zero, 0
  /* 008EA0 800082A0 2529B870 */     addiu $t1, $t1, %lo(D_8003B870)
  /* 008EA4 800082A4 AD780038 */        sw $t8, 0x38($t3)
  /* 008EA8 800082A8 AD79003C */        sw $t9, 0x3c($t3)
  /* 008EAC 800082AC 8D2C0000 */        lw $t4, ($t1) # D_8003B870 + 0
  /* 008EB0 800082B0 3C010131 */       lui $at, (0x1312D00 >> 16) # 20000000
  /* 008EB4 800082B4 34212D00 */       ori $at, $at, (0x1312D00 & 0xFFFF) # 20000000
  /* 008EB8 800082B8 0181082A */       slt $at, $t4, $at
  /* 008EBC 800082BC 1420000A */      bnez $at, .L800082E8
  /* 008EC0 800082C0 3C0D0098 */       lui $t5, (0x989680 >> 16) # 10000000
  /* 008EC4 800082C4 35AD9680 */       ori $t5, $t5, (0x989680 & 0xFFFF) # 10000000
  /* 008EC8 800082C8 10000007 */         b .L800082E8
  /* 008ECC 800082CC AD2D0000 */        sw $t5, ($t1) # D_8003B870 + 0
  .L800082D0:
  /* 008ED0 800082D0 10000005 */         b .L800082E8
  /* 008ED4 800082D4 AC44001C */        sw $a0, 0x1c($v0)
  .L800082D8:
  /* 008ED8 800082D8 0C008D89 */       jal fatal_printf
  /* 008EDC 800082DC 2484DA58 */     addiu $a0, $a0, -0x25a8
  .L800082E0:
  /* 008EE0 800082E0 1000FFFF */         b .L800082E0
  /* 008EE4 800082E4 00000000 */       nop 
  .L800082E8:
  /* 008EE8 800082E8 0C001DA0 */       jal func_80007680
  /* 008EEC 800082EC 8FA40024 */        lw $a0, 0x24($sp)
  /* 008EF0 800082F0 8FBF001C */        lw $ra, 0x1c($sp)
  /* 008EF4 800082F4 8FA20024 */        lw $v0, 0x24($sp)
  /* 008EF8 800082F8 27BD0030 */     addiu $sp, $sp, 0x30
  /* 008EFC 800082FC 03E00008 */        jr $ra
  /* 008F00 80008300 00000000 */       nop 

  /* 008F04 80008304 27BDFFD0 */     addiu $sp, $sp, -0x30
  /* 008F08 80008308 AFBF0024 */        sw $ra, 0x24($sp)
  /* 008F0C 8000830C AFB00020 */        sw $s0, 0x20($sp)
  /* 008F10 80008310 AFA50034 */        sw $a1, 0x34($sp)
  /* 008F14 80008314 14800003 */      bnez $a0, .L80008324
  /* 008F18 80008318 AFA7003C */        sw $a3, 0x3c($sp)
  /* 008F1C 8000831C 3C048004 */       lui $a0, %hi(D_80046A54)
  /* 008F20 80008320 8C846A54 */        lw $a0, %lo(D_80046A54)($a0)
  .L80008324:
  /* 008F24 80008324 AFA40030 */        sw $a0, 0x30($sp)
  /* 008F28 80008328 0C001D81 */       jal func_80007604
  /* 008F2C 8000832C AFA60038 */        sw $a2, 0x38($sp)
  /* 008F30 80008330 8FA60038 */        lw $a2, 0x38($sp)
  /* 008F34 80008334 00408025 */        or $s0, $v0, $zero
  /* 008F38 80008338 3C048004 */       lui $a0, %hi(D_8003DA80)
  /* 008F3C 8000833C 2CC10006 */     sltiu $at, $a2, 6
  /* 008F40 80008340 54200006 */      bnel $at, $zero, .L8000835C
  /* 008F44 80008344 AE060010 */        sw $a2, 0x10($s0)
  /* 008F48 80008348 0C008D89 */       jal fatal_printf
  /* 008F4C 8000834C 2484DA80 */     addiu $a0, $a0, %lo(D_8003DA80)
  .L80008350:
  /* 008F50 80008350 1000FFFF */         b .L80008350
  /* 008F54 80008354 00000000 */       nop 
  /* 008F58 80008358 AE060010 */        sw $a2, 0x10($s0)
  .L8000835C:
  /* 008F5C 8000835C A2000015 */        sb $zero, 0x15($s0)
  /* 008F60 80008360 8FAE0030 */        lw $t6, 0x30($sp)
  /* 008F64 80008364 AE0E0018 */        sw $t6, 0x18($s0)
  /* 008F68 80008368 8FAF0034 */        lw $t7, 0x34($sp)
  /* 008F6C 8000836C 0C001CF8 */       jal func_800073E0
  /* 008F70 80008370 AE0F0020 */        sw $t7, 0x20($s0)
  /* 008F74 80008374 8FA40040 */        lw $a0, 0x40($sp)
  /* 008F78 80008378 AE02001C */        sw $v0, 0x1c($s0)
  /* 008F7C 8000837C 00401825 */        or $v1, $v0, $zero
  /* 008F80 80008380 14800005 */      bnez $a0, .L80008398
  /* 008F84 80008384 A2000014 */        sb $zero, 0x14($s0)
  /* 008F88 80008388 0C001D59 */       jal func_80007564
  /* 008F8C 8000838C AFA20028 */        sw $v0, 0x28($sp)
  /* 008F90 80008390 10000004 */         b .L800083A4
  /* 008F94 80008394 8FA30028 */        lw $v1, 0x28($sp)
  .L80008398:
  /* 008F98 80008398 0C001D22 */       jal func_80007488
  /* 008F9C 8000839C AFA30028 */        sw $v1, 0x28($sp)
  /* 008FA0 800083A0 8FA30028 */        lw $v1, 0x28($sp)
  .L800083A4:
  /* 008FA4 800083A4 24580008 */     addiu $t8, $v0, 8
  /* 008FA8 800083A8 AC7801B8 */        sw $t8, 0x1b8($v1)
  /* 008FAC 800083AC 8FB90040 */        lw $t9, 0x40($sp)
  /* 008FB0 800083B0 8FA90040 */        lw $t1, 0x40($sp)
  /* 008FB4 800083B4 24180033 */     addiu $t8, $zero, 0x33
  /* 008FB8 800083B8 17200005 */      bnez $t9, .L800083D0
  /* 008FBC 800083BC 24640008 */     addiu $a0, $v1, 8
  /* 008FC0 800083C0 3C088004 */       lui $t0, %hi(D_800466BC)
  /* 008FC4 800083C4 8D0866BC */        lw $t0, %lo(D_800466BC)($t0)
  /* 008FC8 800083C8 10000002 */         b .L800083D4
  /* 008FCC 800083CC AC6801BC */        sw $t0, 0x1bc($v1)
  .L800083D0:
  /* 008FD0 800083D0 AC6901BC */        sw $t1, 0x1bc($v1)
  .L800083D4:
  /* 008FD4 800083D4 8FA2003C */        lw $v0, 0x3c($sp)
  /* 008FD8 800083D8 2401FFFF */     addiu $at, $zero, -1
  /* 008FDC 800083DC 10410003 */       beq $v0, $at, .L800083EC
  /* 008FE0 800083E0 00000000 */       nop 
  /* 008FE4 800083E4 10000006 */         b .L80008400
  /* 008FE8 800083E8 00402825 */        or $a1, $v0, $zero
  .L800083EC:
  /* 008FEC 800083EC 3C028004 */       lui $v0, %hi(D_8003B870)
  /* 008FF0 800083F0 8C45B870 */        lw $a1, %lo(D_8003B870)($v0)
  /* 008FF4 800083F4 3C018004 */       lui $at, %hi(D_8003B870)
  /* 008FF8 800083F8 24AA0001 */     addiu $t2, $a1, 1
  /* 008FFC 800083FC AC2AB870 */        sw $t2, %lo(D_8003B870)($at)
  .L80008400:
  /* 009000 80008400 8C6C01BC */        lw $t4, 0x1bc($v1)
  /* 009004 80008404 8C6B01B8 */        lw $t3, 0x1b8($v1)
  /* 009008 80008408 AFA30028 */        sw $v1, 0x28($sp)
  /* 00900C 8000840C 000C68C2 */       srl $t5, $t4, 3
  /* 009010 80008410 000D70C0 */       sll $t6, $t5, 3
  /* 009014 80008414 016E7821 */      addu $t7, $t3, $t6
  /* 009018 80008418 AFAF0010 */        sw $t7, 0x10($sp)
  /* 00901C 8000841C AFB80014 */        sw $t8, 0x14($sp)
  /* 009020 80008420 8FA60034 */        lw $a2, 0x34($sp)
  /* 009024 80008424 0C00C788 */       jal osCreateThread
  /* 009028 80008428 8FA70030 */        lw $a3, 0x30($sp)
  /* 00902C 8000842C 8FA30028 */        lw $v1, 0x28($sp)
  /* 009030 80008430 3C09FEDC */       lui $t1, (0xFEDCBA98 >> 16) # 4275878552
  /* 009034 80008434 3C028004 */       lui $v0, %hi(D_8003B870)
  /* 009038 80008438 8C7901B8 */        lw $t9, 0x1b8($v1)
  /* 00903C 8000843C 3529BA98 */       ori $t1, $t1, (0xFEDCBA98 & 0xFFFF) # 4275878552
  /* 009040 80008440 24080000 */     addiu $t0, $zero, 0
  /* 009044 80008444 2442B870 */     addiu $v0, $v0, %lo(D_8003B870)
  /* 009048 80008448 AF280038 */        sw $t0, 0x38($t9)
  /* 00904C 8000844C AF29003C */        sw $t1, 0x3c($t9)
  /* 009050 80008450 8C4A0000 */        lw $t2, ($v0) # D_8003B870 + 0
  /* 009054 80008454 3C010131 */       lui $at, (0x1312D00 >> 16) # 20000000
  /* 009058 80008458 34212D00 */       ori $at, $at, (0x1312D00 & 0xFFFF) # 20000000
  /* 00905C 8000845C 0141082A */       slt $at, $t2, $at
  /* 009060 80008460 14200003 */      bnez $at, .L80008470
  /* 009064 80008464 3C0C0098 */       lui $t4, (0x989680 >> 16) # 10000000
  /* 009068 80008468 358C9680 */       ori $t4, $t4, (0x989680 & 0xFFFF) # 10000000
  /* 00906C 8000846C AC4C0000 */        sw $t4, ($v0) # D_8003B870 + 0
  .L80008470:
  /* 009070 80008470 0C001DA0 */       jal func_80007680
  /* 009074 80008474 02002025 */        or $a0, $s0, $zero
  /* 009078 80008478 8FBF0024 */        lw $ra, 0x24($sp)
  /* 00907C 8000847C 02001025 */        or $v0, $s0, $zero
  /* 009080 80008480 8FB00020 */        lw $s0, 0x20($sp)
  /* 009084 80008484 03E00008 */        jr $ra
  /* 009088 80008488 27BD0030 */     addiu $sp, $sp, 0x30

glabel func_8000848C
  /* 00908C 8000848C 27BDFFE0 */     addiu $sp, $sp, -0x20
  /* 009090 80008490 AFB00018 */        sw $s0, 0x18($sp)
  /* 009094 80008494 00808025 */        or $s0, $a0, $zero
  /* 009098 80008498 10800005 */      beqz $a0, .L800084B0
  /* 00909C 8000849C AFBF001C */        sw $ra, 0x1c($sp)
  /* 0090A0 800084A0 3C0E8004 */       lui $t6, %hi(D_80046A60)
  /* 0090A4 800084A4 8DCE6A60 */        lw $t6, %lo(D_80046A60)($t6)
  /* 0090A8 800084A8 3C028004 */       lui $v0, 0x8004
  /* 0090AC 800084AC 148E000C */       bne $a0, $t6, .L800084E0
  .L800084B0:
  /* 0090B0 800084B0 3C188004 */       lui $t8, %hi(D_80046A60)
  /* 0090B4 800084B4 8F186A60 */        lw $t8, %lo(D_80046A60)($t8)
  /* 0090B8 800084B8 240F0001 */     addiu $t7, $zero, 1
  /* 0090BC 800084BC 3C018004 */       lui $at, %hi(D_80046A64)
  /* 0090C0 800084C0 AC2F6A64 */        sw $t7, %lo(D_80046A64)($at)
  /* 0090C4 800084C4 93190014 */       lbu $t9, 0x14($t8)
  /* 0090C8 800084C8 57200020 */      bnel $t9, $zero, .L8000854C
  /* 0090CC 800084CC 8FBF001C */        lw $ra, 0x1c($sp)
  /* 0090D0 800084D0 0C002C7A */       jal func_8000B1E8
  /* 0090D4 800084D4 24040001 */     addiu $a0, $zero, 1
  /* 0090D8 800084D8 1000001C */         b .L8000854C
  /* 0090DC 800084DC 8FBF001C */        lw $ra, 0x1c($sp)
  .L800084E0:
  /* 0090E0 800084E0 8C4266C8 */        lw $v0, 0x66c8($v0)
  /* 0090E4 800084E4 50400004 */      beql $v0, $zero, .L800084F8
  /* 0090E8 800084E8 92020014 */       lbu $v0, 0x14($s0)
  /* 0090EC 800084EC 0040F809 */      jalr $v0
  /* 0090F0 800084F0 02002025 */        or $a0, $s0, $zero
  /* 0090F4 800084F4 92020014 */       lbu $v0, 0x14($s0)
  .L800084F8:
  /* 0090F8 800084F8 24010001 */     addiu $at, $zero, 1
  /* 0090FC 800084FC 50400006 */      beql $v0, $zero, .L80008518
  /* 009100 80008500 8E04001C */        lw $a0, 0x1c($s0)
  /* 009104 80008504 1041000C */       beq $v0, $at, .L80008538
  /* 009108 80008508 00000000 */       nop 
  /* 00910C 8000850C 1000000A */         b .L80008538
  /* 009110 80008510 00000000 */       nop 
  /* 009114 80008514 8E04001C */        lw $a0, 0x1c($s0)
  .L80008518:
  /* 009118 80008518 0C00C228 */       jal osDestroyThread
  /* 00911C 8000851C 24840008 */     addiu $a0, $a0, 8
  /* 009120 80008520 8E08001C */        lw $t0, 0x1c($s0)
  /* 009124 80008524 8D0401B8 */        lw $a0, 0x1b8($t0)
  /* 009128 80008528 0C001D62 */       jal func_80007588
  /* 00912C 8000852C 2484FFF8 */     addiu $a0, $a0, -8
  /* 009130 80008530 0C001D17 */       jal func_8000745C
  /* 009134 80008534 8E04001C */        lw $a0, 0x1c($s0)
  .L80008538:
  /* 009138 80008538 0C001DF4 */       jal func_800077D0
  /* 00913C 8000853C 02002025 */        or $a0, $s0, $zero
  /* 009140 80008540 0C001DD6 */       jal func_80007758
  /* 009144 80008544 02002025 */        or $a0, $s0, $zero
  /* 009148 80008548 8FBF001C */        lw $ra, 0x1c($sp)
  .L8000854C:
  /* 00914C 8000854C 8FB00018 */        lw $s0, 0x18($sp)
  /* 009150 80008550 27BD0020 */     addiu $sp, $sp, 0x20
  /* 009154 80008554 03E00008 */        jr $ra
  /* 009158 80008558 00000000 */       nop 

glabel func_8000855C
  /* 00915C 8000855C 27BDFFD0 */     addiu $sp, $sp, -0x30
  /* 009160 80008560 AFBF001C */        sw $ra, 0x1c($sp)
  /* 009164 80008564 AFB00018 */        sw $s0, 0x18($sp)
  /* 009168 80008568 AFA50034 */        sw $a1, 0x34($sp)
  /* 00916C 8000856C AFA60038 */        sw $a2, 0x38($sp)
  /* 009170 80008570 AFA7003C */        sw $a3, 0x3c($sp)
  /* 009174 80008574 908B0056 */       lbu $t3, 0x56($a0)
  /* 009178 80008578 24010005 */     addiu $at, $zero, 5
  /* 00917C 8000857C 00808025 */        or $s0, $a0, $zero
  /* 009180 80008580 15610006 */       bne $t3, $at, .L8000859C
  /* 009184 80008584 01606825 */        or $t5, $t3, $zero
  /* 009188 80008588 3C048004 */       lui $a0, %hi(D_8003DAAC)
  /* 00918C 8000858C 0C008D89 */       jal fatal_printf
  /* 009190 80008590 2484DAAC */     addiu $a0, $a0, %lo(D_8003DAAC)
  .L80008594:
  /* 009194 80008594 1000FFFF */         b .L80008594
  /* 009198 80008598 00000000 */       nop 
  .L8000859C:
  /* 00919C 8000859C 8E02004C */        lw $v0, 0x4c($s0)
  /* 0091A0 800085A0 00002025 */        or $a0, $zero, $zero
  /* 0091A4 800085A4 8FAC0020 */        lw $t4, 0x20($sp)
  /* 0091A8 800085A8 10400020 */      beqz $v0, .L8000862C
  /* 0091AC 800085AC 24430004 */     addiu $v1, $v0, 4
  /* 0091B0 800085B0 00402825 */        or $a1, $v0, $zero
  /* 0091B4 800085B4 8FAA0028 */        lw $t2, 0x28($sp)
  /* 0091B8 800085B8 8FA90024 */        lw $t1, 0x24($sp)
  /* 0091BC 800085BC 24080002 */     addiu $t0, $zero, 2
  /* 0091C0 800085C0 24070001 */     addiu $a3, $zero, 1
  /* 0091C4 800085C4 24060003 */     addiu $a2, $zero, 3
  .L800085C8:
  /* 0091C8 800085C8 90A20000 */       lbu $v0, ($a1)
  /* 0091CC 800085CC 24840001 */     addiu $a0, $a0, 1
  /* 0091D0 800085D0 10400011 */      beqz $v0, .L80008618
  /* 0091D4 800085D4 00000000 */       nop 
  /* 0091D8 800085D8 50470008 */      beql $v0, $a3, .L800085FC
  /* 0091DC 800085DC 00605025 */        or $t2, $v1, $zero
  /* 0091E0 800085E0 50480009 */      beql $v0, $t0, .L80008608
  /* 0091E4 800085E4 00604825 */        or $t1, $v1, $zero
  /* 0091E8 800085E8 5046000A */      beql $v0, $a2, .L80008614
  /* 0091EC 800085EC 00606025 */        or $t4, $v1, $zero
  /* 0091F0 800085F0 10000009 */         b .L80008618
  /* 0091F4 800085F4 00000000 */       nop 
  /* 0091F8 800085F8 00605025 */        or $t2, $v1, $zero
  .L800085FC:
  /* 0091FC 800085FC 10000006 */         b .L80008618
  /* 009200 80008600 24630010 */     addiu $v1, $v1, 0x10
  /* 009204 80008604 00604825 */        or $t1, $v1, $zero
  .L80008608:
  /* 009208 80008608 10000003 */         b .L80008618
  /* 00920C 8000860C 24630014 */     addiu $v1, $v1, 0x14
  /* 009210 80008610 00606025 */        or $t4, $v1, $zero
  .L80008614:
  /* 009214 80008614 24630010 */     addiu $v1, $v1, 0x10
  .L80008618:
  /* 009218 80008618 1486FFEB */       bne $a0, $a2, .L800085C8
  /* 00921C 8000861C 24A50001 */     addiu $a1, $a1, 1
  /* 009220 80008620 AFA90024 */        sw $t1, 0x24($sp)
  /* 009224 80008624 AFAA0028 */        sw $t2, 0x28($sp)
  /* 009228 80008628 AFAC0020 */        sw $t4, 0x20($sp)
  .L8000862C:
  /* 00922C 8000862C 8FAE003C */        lw $t6, 0x3c($sp)
  /* 009230 80008630 8FA90024 */        lw $t1, 0x24($sp)
  /* 009234 80008634 8FAA0028 */        lw $t2, 0x28($sp)
  /* 009238 80008638 01CD082A */       slt $at, $t6, $t5
  /* 00923C 8000863C 1020000B */      beqz $at, .L8000866C
  /* 009240 80008640 8FAC0020 */        lw $t4, 0x20($sp)
  /* 009244 80008644 000D7880 */       sll $t7, $t5, 2
  /* 009248 80008648 000EC080 */       sll $t8, $t6, 2
  /* 00924C 8000864C 03101821 */      addu $v1, $t8, $s0
  /* 009250 80008650 020F1021 */      addu $v0, $s0, $t7
  .L80008654:
  /* 009254 80008654 8C590054 */        lw $t9, 0x54($v0)
  /* 009258 80008658 2442FFFC */     addiu $v0, $v0, -4
  /* 00925C 8000865C 0062082B */      sltu $at, $v1, $v0
  /* 009260 80008660 1420FFFC */      bnez $at, .L80008654
  /* 009264 80008664 AC59005C */        sw $t9, 0x5c($v0)
  /* 009268 80008668 920B0056 */       lbu $t3, 0x56($s0)
  .L8000866C:
  /* 00926C 8000866C 256F0001 */     addiu $t7, $t3, 1
  /* 009270 80008670 A20F0056 */        sb $t7, 0x56($s0)
  /* 009274 80008674 AFAC0020 */        sw $t4, 0x20($sp)
  /* 009278 80008678 AFAA0028 */        sw $t2, 0x28($sp)
  /* 00927C 8000867C 0C001F57 */       jal func_80007D5C
  /* 009280 80008680 AFA90024 */        sw $t1, 0x24($sp)
  /* 009284 80008684 8FAE003C */        lw $t6, 0x3c($sp)
  /* 009288 80008688 93A30037 */       lbu $v1, 0x37($sp)
  /* 00928C 8000868C 8FA90024 */        lw $t1, 0x24($sp)
  /* 009290 80008690 000EC080 */       sll $t8, $t6, 2
  /* 009294 80008694 0218C821 */      addu $t9, $s0, $t8
  /* 009298 80008698 8FAA0028 */        lw $t2, 0x28($sp)
  /* 00929C 8000869C 8FAC0020 */        lw $t4, 0x20($sp)
  /* 0092A0 800086A0 246FFFFF */     addiu $t7, $v1, -1
  /* 0092A4 800086A4 AF220058 */        sw $v0, 0x58($t9)
  /* 0092A8 800086A8 2DE1003F */     sltiu $at, $t7, 0x3f
  /* 0092AC 800086AC 00402025 */        or $a0, $v0, $zero
  /* 0092B0 800086B0 1020017B */      beqz $at, jtgt_80008CA0
  /* 0092B4 800086B4 A0430004 */        sb $v1, 4($v0)
  /* 0092B8 800086B8 000F7880 */       sll $t7, $t7, 2
  /* 0092BC 800086BC 3C018004 */       lui $at, %hi(jtbl_8003DC24)
  /* 0092C0 800086C0 002F0821 */      addu $at, $at, $t7
  /* 0092C4 800086C4 8C2FDC24 */        lw $t7, %lo(jtbl_8003DC24)($at)
  /* 0092C8 800086C8 01E00008 */        jr $t7
  /* 0092CC 800086CC 00000000 */       nop 
  glabel jtgt_800086D0
  /* 0092D0 800086D0 3C0E8004 */       lui $t6, %hi(D_8003B8DC)
  /* 0092D4 800086D4 25CEB8DC */     addiu $t6, $t6, %lo(D_8003B8DC)
  /* 0092D8 800086D8 8DD90000 */        lw $t9, ($t6) # D_8003B8DC + 0
  /* 0092DC 800086DC AE190018 */        sw $t9, 0x18($s0)
  /* 0092E0 800086E0 8DD80004 */        lw $t8, 4($t6) # D_8003B8DC + 4
  /* 0092E4 800086E4 AE18001C */        sw $t8, 0x1c($s0)
  /* 0092E8 800086E8 8DD90008 */        lw $t9, 8($t6) # D_8003B8DC + 8
  /* 0092EC 800086EC AE190020 */        sw $t9, 0x20($s0)
  /* 0092F0 800086F0 8DD8000C */        lw $t8, 0xc($t6) # D_8003B8DC + 12
  /* 0092F4 800086F4 AE020018 */        sw $v0, 0x18($s0)
  /* 0092F8 800086F8 10000169 */         b jtgt_80008CA0
  /* 0092FC 800086FC AE180024 */        sw $t8, 0x24($s0)
  glabel jtgt_80008700
  /* 009300 80008700 3C0F8004 */       lui $t7, %hi(D_8003B8EC)
  /* 009304 80008704 25EFB8EC */     addiu $t7, $t7, %lo(D_8003B8EC)
  /* 009308 80008708 8DF80000 */        lw $t8, ($t7) # D_8003B8EC + 0
  /* 00930C 8000870C AE180028 */        sw $t8, 0x28($s0)
  /* 009310 80008710 8DEE0004 */        lw $t6, 4($t7) # D_8003B8EC + 4
  /* 009314 80008714 AE0E002C */        sw $t6, 0x2c($s0)
  /* 009318 80008718 8DF80008 */        lw $t8, 8($t7) # D_8003B8EC + 8
  /* 00931C 8000871C AE180030 */        sw $t8, 0x30($s0)
  /* 009320 80008720 8DEE000C */        lw $t6, 0xc($t7) # D_8003B8EC + 12
  /* 009324 80008724 AE0E0034 */        sw $t6, 0x34($s0)
  /* 009328 80008728 8DF80010 */        lw $t8, 0x10($t7) # D_8003B8EC + 16
  /* 00932C 8000872C AE020028 */        sw $v0, 0x28($s0)
  /* 009330 80008730 1000015B */         b jtgt_80008CA0
  /* 009334 80008734 AE180038 */        sw $t8, 0x38($s0)
  glabel jtgt_80008738
  /* 009338 80008738 3C198004 */       lui $t9, %hi(D_8003B8DC)
  /* 00933C 8000873C 2739B8DC */     addiu $t9, $t9, %lo(D_8003B8DC)
  /* 009340 80008740 8F2E0000 */        lw $t6, ($t9) # D_8003B8DC + 0
  /* 009344 80008744 3C188004 */       lui $t8, %hi(D_8003B8EC)
  /* 009348 80008748 2718B8EC */     addiu $t8, $t8, %lo(D_8003B8EC)
  /* 00934C 8000874C AE0E0018 */        sw $t6, 0x18($s0)
  /* 009350 80008750 8F2F0004 */        lw $t7, 4($t9) # D_8003B8DC + 4
  /* 009354 80008754 AE0F001C */        sw $t7, 0x1c($s0)
  /* 009358 80008758 8F2E0008 */        lw $t6, 8($t9) # D_8003B8DC + 8
  /* 00935C 8000875C AE0E0020 */        sw $t6, 0x20($s0)
  /* 009360 80008760 8F2F000C */        lw $t7, 0xc($t9) # D_8003B8DC + 12
  /* 009364 80008764 AE0F0024 */        sw $t7, 0x24($s0)
  /* 009368 80008768 8F0F0000 */        lw $t7, ($t8) # D_8003B8EC + 0
  /* 00936C 8000876C AE0F0028 */        sw $t7, 0x28($s0)
  /* 009370 80008770 8F190004 */        lw $t9, 4($t8) # D_8003B8EC + 4
  /* 009374 80008774 AE19002C */        sw $t9, 0x2c($s0)
  /* 009378 80008778 8F0F0008 */        lw $t7, 8($t8) # D_8003B8EC + 8
  /* 00937C 8000877C AE0F0030 */        sw $t7, 0x30($s0)
  /* 009380 80008780 8F19000C */        lw $t9, 0xc($t8) # D_8003B8EC + 12
  /* 009384 80008784 AE190034 */        sw $t9, 0x34($s0)
  /* 009388 80008788 8F0F0010 */        lw $t7, 0x10($t8) # D_8003B8EC + 16
  /* 00938C 8000878C AE020018 */        sw $v0, 0x18($s0)
  /* 009390 80008790 AE020028 */        sw $v0, 0x28($s0)
  /* 009394 80008794 10000142 */         b jtgt_80008CA0
  /* 009398 80008798 AE0F0038 */        sw $t7, 0x38($s0)
  glabel jtgt_8000879C
  /* 00939C 8000879C 3C0E8004 */       lui $t6, %hi(D_8003B900)
  /* 0093A0 800087A0 25CEB900 */     addiu $t6, $t6, %lo(D_8003B900)
  /* 0093A4 800087A4 8DD90000 */        lw $t9, ($t6) # D_8003B900 + 0
  /* 0093A8 800087A8 AE190028 */        sw $t9, 0x28($s0)
  /* 0093AC 800087AC 8DD80004 */        lw $t8, 4($t6) # D_8003B900 + 4
  /* 0093B0 800087B0 AE18002C */        sw $t8, 0x2c($s0)
  /* 0093B4 800087B4 8DD90008 */        lw $t9, 8($t6) # D_8003B900 + 8
  /* 0093B8 800087B8 AE190030 */        sw $t9, 0x30($s0)
  /* 0093BC 800087BC 8DD8000C */        lw $t8, 0xc($t6) # D_8003B900 + 12
  /* 0093C0 800087C0 AE180034 */        sw $t8, 0x34($s0)
  /* 0093C4 800087C4 8DD90010 */        lw $t9, 0x10($t6) # D_8003B900 + 16
  /* 0093C8 800087C8 AE020028 */        sw $v0, 0x28($s0)
  /* 0093CC 800087CC 10000134 */         b jtgt_80008CA0
  /* 0093D0 800087D0 AE190038 */        sw $t9, 0x38($s0)
  glabel jtgt_800087D4
  /* 0093D4 800087D4 3C0F8004 */       lui $t7, %hi(D_8003B8DC)
  /* 0093D8 800087D8 25EFB8DC */     addiu $t7, $t7, %lo(D_8003B8DC)
  /* 0093DC 800087DC 8DF80000 */        lw $t8, ($t7) # D_8003B8DC + 0
  /* 0093E0 800087E0 3C198004 */       lui $t9, %hi(D_8003B900)
  /* 0093E4 800087E4 2739B900 */     addiu $t9, $t9, %lo(D_8003B900)
  /* 0093E8 800087E8 AE180018 */        sw $t8, 0x18($s0)
  /* 0093EC 800087EC 8DEE0004 */        lw $t6, 4($t7) # D_8003B8DC + 4
  /* 0093F0 800087F0 AE0E001C */        sw $t6, 0x1c($s0)
  /* 0093F4 800087F4 8DF80008 */        lw $t8, 8($t7) # D_8003B8DC + 8
  /* 0093F8 800087F8 AE180020 */        sw $t8, 0x20($s0)
  /* 0093FC 800087FC 8DEE000C */        lw $t6, 0xc($t7) # D_8003B8DC + 12
  /* 009400 80008800 AE0E0024 */        sw $t6, 0x24($s0)
  /* 009404 80008804 8F2E0000 */        lw $t6, ($t9) # D_8003B900 + 0
  /* 009408 80008808 AE0E0028 */        sw $t6, 0x28($s0)
  /* 00940C 8000880C 8F2F0004 */        lw $t7, 4($t9) # D_8003B900 + 4
  /* 009410 80008810 AE0F002C */        sw $t7, 0x2c($s0)
  /* 009414 80008814 8F2E0008 */        lw $t6, 8($t9) # D_8003B900 + 8
  /* 009418 80008818 AE0E0030 */        sw $t6, 0x30($s0)
  /* 00941C 8000881C 8F2F000C */        lw $t7, 0xc($t9) # D_8003B900 + 12
  /* 009420 80008820 AE0F0034 */        sw $t7, 0x34($s0)
  /* 009424 80008824 8F2E0010 */        lw $t6, 0x10($t9) # D_8003B900 + 16
  /* 009428 80008828 AE020018 */        sw $v0, 0x18($s0)
  /* 00942C 8000882C AE020028 */        sw $v0, 0x28($s0)
  /* 009430 80008830 1000011B */         b jtgt_80008CA0
  /* 009434 80008834 AE0E0038 */        sw $t6, 0x38($s0)
  glabel jtgt_80008838
  /* 009438 80008838 3C188004 */       lui $t8, %hi(D_8003B8DC)
  /* 00943C 8000883C 2718B8DC */     addiu $t8, $t8, %lo(D_8003B8DC)
  /* 009440 80008840 8F0F0000 */        lw $t7, ($t8) # D_8003B8DC + 0
  /* 009444 80008844 3C0E8004 */       lui $t6, %hi(D_8003B8EC)
  /* 009448 80008848 25CEB8EC */     addiu $t6, $t6, %lo(D_8003B8EC)
  /* 00944C 8000884C AE0F0018 */        sw $t7, 0x18($s0)
  /* 009450 80008850 8F190004 */        lw $t9, 4($t8) # D_8003B8DC + 4
  /* 009454 80008854 AE19001C */        sw $t9, 0x1c($s0)
  /* 009458 80008858 8F0F0008 */        lw $t7, 8($t8) # D_8003B8DC + 8
  /* 00945C 8000885C AE0F0020 */        sw $t7, 0x20($s0)
  /* 009460 80008860 8F19000C */        lw $t9, 0xc($t8) # D_8003B8DC + 12
  /* 009464 80008864 3C0F8004 */       lui $t7, %hi(D_8003B914)
  /* 009468 80008868 25EFB914 */     addiu $t7, $t7, %lo(D_8003B914)
  /* 00946C 8000886C AE190024 */        sw $t9, 0x24($s0)
  /* 009470 80008870 8DD90000 */        lw $t9, ($t6) # D_8003B8EC + 0
  /* 009474 80008874 AE190028 */        sw $t9, 0x28($s0)
  /* 009478 80008878 8DD80004 */        lw $t8, 4($t6) # D_8003B8EC + 4
  /* 00947C 8000887C AE18002C */        sw $t8, 0x2c($s0)
  /* 009480 80008880 8DD90008 */        lw $t9, 8($t6) # D_8003B8EC + 8
  /* 009484 80008884 AE190030 */        sw $t9, 0x30($s0)
  /* 009488 80008888 8DD8000C */        lw $t8, 0xc($t6) # D_8003B8EC + 12
  /* 00948C 8000888C AE180034 */        sw $t8, 0x34($s0)
  /* 009490 80008890 8DD90010 */        lw $t9, 0x10($t6) # D_8003B8EC + 16
  /* 009494 80008894 AE190038 */        sw $t9, 0x38($s0)
  /* 009498 80008898 8DF80000 */        lw $t8, ($t7) # D_8003B914 + 0
  /* 00949C 8000889C AE18003C */        sw $t8, 0x3c($s0)
  /* 0094A0 800088A0 8DEE0004 */        lw $t6, 4($t7) # D_8003B914 + 4
  /* 0094A4 800088A4 AE0E0040 */        sw $t6, 0x40($s0)
  /* 0094A8 800088A8 8DF80008 */        lw $t8, 8($t7) # D_8003B914 + 8
  /* 0094AC 800088AC AE180044 */        sw $t8, 0x44($s0)
  /* 0094B0 800088B0 8DEE000C */        lw $t6, 0xc($t7) # D_8003B914 + 12
  /* 0094B4 800088B4 AE020018 */        sw $v0, 0x18($s0)
  /* 0094B8 800088B8 AE020028 */        sw $v0, 0x28($s0)
  /* 0094BC 800088BC AE02003C */        sw $v0, 0x3c($s0)
  /* 0094C0 800088C0 100000F7 */         b jtgt_80008CA0
  /* 0094C4 800088C4 AE0E0048 */        sw $t6, 0x48($s0)
  glabel jtgt_800088C8
  /* 0094C8 800088C8 3C198004 */       lui $t9, %hi(D_8003B8DC)
  /* 0094CC 800088CC 2739B8DC */     addiu $t9, $t9, %lo(D_8003B8DC)
  /* 0094D0 800088D0 8F2E0000 */        lw $t6, ($t9) # D_8003B8DC + 0
  /* 0094D4 800088D4 3C188004 */       lui $t8, %hi(D_8003B900)
  /* 0094D8 800088D8 2718B900 */     addiu $t8, $t8, %lo(D_8003B900)
  /* 0094DC 800088DC AE0E0018 */        sw $t6, 0x18($s0)
  /* 0094E0 800088E0 8F2F0004 */        lw $t7, 4($t9) # D_8003B8DC + 4
  /* 0094E4 800088E4 AE0F001C */        sw $t7, 0x1c($s0)
  /* 0094E8 800088E8 8F2E0008 */        lw $t6, 8($t9) # D_8003B8DC + 8
  /* 0094EC 800088EC AE0E0020 */        sw $t6, 0x20($s0)
  /* 0094F0 800088F0 8F2F000C */        lw $t7, 0xc($t9) # D_8003B8DC + 12
  /* 0094F4 800088F4 3C0E8004 */       lui $t6, %hi(D_8003B914)
  /* 0094F8 800088F8 25CEB914 */     addiu $t6, $t6, %lo(D_8003B914)
  /* 0094FC 800088FC AE0F0024 */        sw $t7, 0x24($s0)
  /* 009500 80008900 8F0F0000 */        lw $t7, ($t8) # D_8003B900 + 0
  /* 009504 80008904 AE0F0028 */        sw $t7, 0x28($s0)
  /* 009508 80008908 8F190004 */        lw $t9, 4($t8) # D_8003B900 + 4
  /* 00950C 8000890C AE19002C */        sw $t9, 0x2c($s0)
  /* 009510 80008910 8F0F0008 */        lw $t7, 8($t8) # D_8003B900 + 8
  /* 009514 80008914 AE0F0030 */        sw $t7, 0x30($s0)
  /* 009518 80008918 8F19000C */        lw $t9, 0xc($t8) # D_8003B900 + 12
  /* 00951C 8000891C AE190034 */        sw $t9, 0x34($s0)
  /* 009520 80008920 8F0F0010 */        lw $t7, 0x10($t8) # D_8003B900 + 16
  /* 009524 80008924 AE0F0038 */        sw $t7, 0x38($s0)
  /* 009528 80008928 8DD90000 */        lw $t9, ($t6) # D_8003B914 + 0
  /* 00952C 8000892C AE19003C */        sw $t9, 0x3c($s0)
  /* 009530 80008930 8DD80004 */        lw $t8, 4($t6) # D_8003B914 + 4
  /* 009534 80008934 AE180040 */        sw $t8, 0x40($s0)
  /* 009538 80008938 8DD90008 */        lw $t9, 8($t6) # D_8003B914 + 8
  /* 00953C 8000893C AE190044 */        sw $t9, 0x44($s0)
  /* 009540 80008940 8DD8000C */        lw $t8, 0xc($t6) # D_8003B914 + 12
  /* 009544 80008944 AE020018 */        sw $v0, 0x18($s0)
  /* 009548 80008948 AE020028 */        sw $v0, 0x28($s0)
  /* 00954C 8000894C AE02003C */        sw $v0, 0x3c($s0)
  /* 009550 80008950 100000D3 */         b jtgt_80008CA0
  /* 009554 80008954 AE180048 */        sw $t8, 0x48($s0)
  glabel jtgt_80008958
  /* 009558 80008958 3C0F8004 */       lui $t7, %hi(D_8003B914)
  /* 00955C 8000895C 25EFB914 */     addiu $t7, $t7, %lo(D_8003B914)
  /* 009560 80008960 8DF80000 */        lw $t8, ($t7) # D_8003B914 + 0
  /* 009564 80008964 AE18003C */        sw $t8, 0x3c($s0)
  /* 009568 80008968 8DEE0004 */        lw $t6, 4($t7) # D_8003B914 + 4
  /* 00956C 8000896C AE0E0040 */        sw $t6, 0x40($s0)
  /* 009570 80008970 8DF80008 */        lw $t8, 8($t7) # D_8003B914 + 8
  /* 009574 80008974 AE180044 */        sw $t8, 0x44($s0)
  /* 009578 80008978 8DEE000C */        lw $t6, 0xc($t7) # D_8003B914 + 12
  /* 00957C 8000897C AE02003C */        sw $v0, 0x3c($s0)
  /* 009580 80008980 100000C7 */         b jtgt_80008CA0
  /* 009584 80008984 AE0E0048 */        sw $t6, 0x48($s0)
  glabel jtgt_80008988
  /* 009588 80008988 3C198004 */       lui $t9, %hi(D_8003B8EC)
  /* 00958C 8000898C 2739B8EC */     addiu $t9, $t9, %lo(D_8003B8EC)
  /* 009590 80008990 8F2E0000 */        lw $t6, ($t9) # D_8003B8EC + 0
  /* 009594 80008994 3C188004 */       lui $t8, %hi(D_8003B914)
  /* 009598 80008998 2718B914 */     addiu $t8, $t8, %lo(D_8003B914)
  /* 00959C 8000899C AE0E0028 */        sw $t6, 0x28($s0)
  /* 0095A0 800089A0 8F2F0004 */        lw $t7, 4($t9) # D_8003B8EC + 4
  /* 0095A4 800089A4 AE0F002C */        sw $t7, 0x2c($s0)
  /* 0095A8 800089A8 8F2E0008 */        lw $t6, 8($t9) # D_8003B8EC + 8
  /* 0095AC 800089AC AE0E0030 */        sw $t6, 0x30($s0)
  /* 0095B0 800089B0 8F2F000C */        lw $t7, 0xc($t9) # D_8003B8EC + 12
  /* 0095B4 800089B4 AE0F0034 */        sw $t7, 0x34($s0)
  /* 0095B8 800089B8 8F2E0010 */        lw $t6, 0x10($t9) # D_8003B8EC + 16
  /* 0095BC 800089BC AE0E0038 */        sw $t6, 0x38($s0)
  /* 0095C0 800089C0 8F0F0000 */        lw $t7, ($t8) # D_8003B914 + 0
  /* 0095C4 800089C4 AE0F003C */        sw $t7, 0x3c($s0)
  /* 0095C8 800089C8 8F190004 */        lw $t9, 4($t8) # D_8003B914 + 4
  /* 0095CC 800089CC AE190040 */        sw $t9, 0x40($s0)
  /* 0095D0 800089D0 8F0F0008 */        lw $t7, 8($t8) # D_8003B914 + 8
  /* 0095D4 800089D4 AE0F0044 */        sw $t7, 0x44($s0)
  /* 0095D8 800089D8 8F19000C */        lw $t9, 0xc($t8) # D_8003B914 + 12
  /* 0095DC 800089DC AE020028 */        sw $v0, 0x28($s0)
  /* 0095E0 800089E0 AE02003C */        sw $v0, 0x3c($s0)
  /* 0095E4 800089E4 100000AE */         b jtgt_80008CA0
  /* 0095E8 800089E8 AE190048 */        sw $t9, 0x48($s0)
  glabel jtgt_800089EC
  /* 0095EC 800089EC 3C0E8004 */       lui $t6, %hi(D_8003B8DC)
  /* 0095F0 800089F0 25CEB8DC */     addiu $t6, $t6, %lo(D_8003B8DC)
  /* 0095F4 800089F4 8DD90000 */        lw $t9, ($t6) # D_8003B8DC + 0
  /* 0095F8 800089F8 AD590000 */        sw $t9, ($t2)
  /* 0095FC 800089FC 8DD80004 */        lw $t8, 4($t6) # D_8003B8DC + 4
  /* 009600 80008A00 AD580004 */        sw $t8, 4($t2)
  /* 009604 80008A04 8DD90008 */        lw $t9, 8($t6) # D_8003B8DC + 8
  /* 009608 80008A08 AD590008 */        sw $t9, 8($t2)
  /* 00960C 80008A0C 8DD8000C */        lw $t8, 0xc($t6) # D_8003B8DC + 12
  /* 009610 80008A10 AD420000 */        sw $v0, ($t2)
  /* 009614 80008A14 100000A2 */         b jtgt_80008CA0
  /* 009618 80008A18 AD58000C */        sw $t8, 0xc($t2)
  glabel jtgt_80008A1C
  /* 00961C 80008A1C 3C0F8004 */       lui $t7, %hi(D_8003B8EC)
  /* 009620 80008A20 25EFB8EC */     addiu $t7, $t7, %lo(D_8003B8EC)
  /* 009624 80008A24 8DF80000 */        lw $t8, ($t7) # D_8003B8EC + 0
  /* 009628 80008A28 AD380000 */        sw $t8, ($t1)
  /* 00962C 80008A2C 8DEE0004 */        lw $t6, 4($t7) # D_8003B8EC + 4
  /* 009630 80008A30 AD2E0004 */        sw $t6, 4($t1)
  /* 009634 80008A34 8DF80008 */        lw $t8, 8($t7) # D_8003B8EC + 8
  /* 009638 80008A38 AD380008 */        sw $t8, 8($t1)
  /* 00963C 80008A3C 8DEE000C */        lw $t6, 0xc($t7) # D_8003B8EC + 12
  /* 009640 80008A40 AD2E000C */        sw $t6, 0xc($t1)
  /* 009644 80008A44 8DF80010 */        lw $t8, 0x10($t7) # D_8003B8EC + 16
  /* 009648 80008A48 AD220000 */        sw $v0, ($t1)
  /* 00964C 80008A4C 10000094 */         b jtgt_80008CA0
  /* 009650 80008A50 AD380010 */        sw $t8, 0x10($t1)
  glabel jtgt_80008A54
  /* 009654 80008A54 3C198004 */       lui $t9, %hi(D_8003B900)
  /* 009658 80008A58 2739B900 */     addiu $t9, $t9, %lo(D_8003B900)
  /* 00965C 80008A5C 8F2E0000 */        lw $t6, ($t9) # D_8003B900 + 0
  /* 009660 80008A60 AD2E0000 */        sw $t6, ($t1)
  /* 009664 80008A64 8F2F0004 */        lw $t7, 4($t9) # D_8003B900 + 4
  /* 009668 80008A68 AD2F0004 */        sw $t7, 4($t1)
  /* 00966C 80008A6C 8F2E0008 */        lw $t6, 8($t9) # D_8003B900 + 8
  /* 009670 80008A70 AD2E0008 */        sw $t6, 8($t1)
  /* 009674 80008A74 8F2F000C */        lw $t7, 0xc($t9) # D_8003B900 + 12
  /* 009678 80008A78 AD2F000C */        sw $t7, 0xc($t1)
  /* 00967C 80008A7C 8F2E0010 */        lw $t6, 0x10($t9) # D_8003B900 + 16
  /* 009680 80008A80 AD220000 */        sw $v0, ($t1)
  /* 009684 80008A84 10000086 */         b jtgt_80008CA0
  /* 009688 80008A88 AD2E0010 */        sw $t6, 0x10($t1)
  glabel jtgt_80008A8C
  /* 00968C 80008A8C 3C188004 */       lui $t8, %hi(D_8003B914)
  /* 009690 80008A90 2718B914 */     addiu $t8, $t8, %lo(D_8003B914)
  /* 009694 80008A94 8F0F0000 */        lw $t7, ($t8) # D_8003B914 + 0
  /* 009698 80008A98 AD8F0000 */        sw $t7, ($t4)
  /* 00969C 80008A9C 8F190004 */        lw $t9, 4($t8) # D_8003B914 + 4
  /* 0096A0 80008AA0 AD990004 */        sw $t9, 4($t4)
  /* 0096A4 80008AA4 8F0F0008 */        lw $t7, 8($t8) # D_8003B914 + 8
  /* 0096A8 80008AA8 AD8F0008 */        sw $t7, 8($t4)
  /* 0096AC 80008AAC 8F19000C */        lw $t9, 0xc($t8) # D_8003B914 + 12
  /* 0096B0 80008AB0 AD820000 */        sw $v0, ($t4)
  /* 0096B4 80008AB4 1000007A */         b jtgt_80008CA0
  /* 0096B8 80008AB8 AD99000C */        sw $t9, 0xc($t4)
  glabel jtgt_80008ABC
  /* 0096BC 80008ABC 3C0E8004 */       lui $t6, %hi(D_8003B8DC)
  /* 0096C0 80008AC0 25CEB8DC */     addiu $t6, $t6, %lo(D_8003B8DC)
  /* 0096C4 80008AC4 8DD90000 */        lw $t9, ($t6) # D_8003B8DC + 0
  /* 0096C8 80008AC8 3C0F8004 */       lui $t7, %hi(D_8003B8EC)
  /* 0096CC 80008ACC 25EFB8EC */     addiu $t7, $t7, %lo(D_8003B8EC)
  /* 0096D0 80008AD0 AD590000 */        sw $t9, ($t2)
  /* 0096D4 80008AD4 8DD80004 */        lw $t8, 4($t6) # D_8003B8DC + 4
  /* 0096D8 80008AD8 AD580004 */        sw $t8, 4($t2)
  /* 0096DC 80008ADC 8DD90008 */        lw $t9, 8($t6) # D_8003B8DC + 8
  /* 0096E0 80008AE0 AD590008 */        sw $t9, 8($t2)
  /* 0096E4 80008AE4 8DD8000C */        lw $t8, 0xc($t6) # D_8003B8DC + 12
  /* 0096E8 80008AE8 AD58000C */        sw $t8, 0xc($t2)
  /* 0096EC 80008AEC 8DF80000 */        lw $t8, ($t7) # D_8003B8EC + 0
  /* 0096F0 80008AF0 AD380000 */        sw $t8, ($t1)
  /* 0096F4 80008AF4 8DEE0004 */        lw $t6, 4($t7) # D_8003B8EC + 4
  /* 0096F8 80008AF8 AD2E0004 */        sw $t6, 4($t1)
  /* 0096FC 80008AFC 8DF80008 */        lw $t8, 8($t7) # D_8003B8EC + 8
  /* 009700 80008B00 AD380008 */        sw $t8, 8($t1)
  /* 009704 80008B04 8DEE000C */        lw $t6, 0xc($t7) # D_8003B8EC + 12
  /* 009708 80008B08 AD2E000C */        sw $t6, 0xc($t1)
  /* 00970C 80008B0C 8DF80010 */        lw $t8, 0x10($t7) # D_8003B8EC + 16
  /* 009710 80008B10 AD220000 */        sw $v0, ($t1)
  /* 009714 80008B14 AD380010 */        sw $t8, 0x10($t1)
  /* 009718 80008B18 10000061 */         b jtgt_80008CA0
  /* 00971C 80008B1C AD420000 */        sw $v0, ($t2)
  glabel jtgt_80008B20
  /* 009720 80008B20 3C198004 */       lui $t9, %hi(D_8003B8DC)
  /* 009724 80008B24 2739B8DC */     addiu $t9, $t9, %lo(D_8003B8DC)
  /* 009728 80008B28 8F2E0000 */        lw $t6, ($t9) # D_8003B8DC + 0
  /* 00972C 80008B2C 3C188004 */       lui $t8, %hi(D_8003B8EC)
  /* 009730 80008B30 2718B8EC */     addiu $t8, $t8, %lo(D_8003B8EC)
  /* 009734 80008B34 AD4E0000 */        sw $t6, ($t2)
  /* 009738 80008B38 8F2F0004 */        lw $t7, 4($t9) # D_8003B8DC + 4
  /* 00973C 80008B3C AD4F0004 */        sw $t7, 4($t2)
  /* 009740 80008B40 8F2E0008 */        lw $t6, 8($t9) # D_8003B8DC + 8
  /* 009744 80008B44 AD4E0008 */        sw $t6, 8($t2)
  /* 009748 80008B48 8F2F000C */        lw $t7, 0xc($t9) # D_8003B8DC + 12
  /* 00974C 80008B4C 3C0E8004 */       lui $t6, %hi(D_8003B914)
  /* 009750 80008B50 25CEB914 */     addiu $t6, $t6, %lo(D_8003B914)
  /* 009754 80008B54 AD4F000C */        sw $t7, 0xc($t2)
  /* 009758 80008B58 8F0F0000 */        lw $t7, ($t8) # D_8003B8EC + 0
  /* 00975C 80008B5C AD2F0000 */        sw $t7, ($t1)
  /* 009760 80008B60 8F190004 */        lw $t9, 4($t8) # D_8003B8EC + 4
  /* 009764 80008B64 AD390004 */        sw $t9, 4($t1)
  /* 009768 80008B68 8F0F0008 */        lw $t7, 8($t8) # D_8003B8EC + 8
  /* 00976C 80008B6C AD2F0008 */        sw $t7, 8($t1)
  /* 009770 80008B70 8F19000C */        lw $t9, 0xc($t8) # D_8003B8EC + 12
  /* 009774 80008B74 AD39000C */        sw $t9, 0xc($t1)
  /* 009778 80008B78 8F0F0010 */        lw $t7, 0x10($t8) # D_8003B8EC + 16
  /* 00977C 80008B7C AD2F0010 */        sw $t7, 0x10($t1)
  /* 009780 80008B80 8DD90000 */        lw $t9, ($t6) # D_8003B914 + 0
  /* 009784 80008B84 AD990000 */        sw $t9, ($t4)
  /* 009788 80008B88 8DD80004 */        lw $t8, 4($t6) # D_8003B914 + 4
  /* 00978C 80008B8C AD980004 */        sw $t8, 4($t4)
  /* 009790 80008B90 8DD90008 */        lw $t9, 8($t6) # D_8003B914 + 8
  /* 009794 80008B94 AD990008 */        sw $t9, 8($t4)
  /* 009798 80008B98 8DD8000C */        lw $t8, 0xc($t6) # D_8003B914 + 12
  /* 00979C 80008B9C AD820000 */        sw $v0, ($t4)
  /* 0097A0 80008BA0 AD98000C */        sw $t8, 0xc($t4)
  /* 0097A4 80008BA4 AD220000 */        sw $v0, ($t1)
  /* 0097A8 80008BA8 1000003D */         b jtgt_80008CA0
  /* 0097AC 80008BAC AD420000 */        sw $v0, ($t2)
  glabel jtgt_80008BB0
  /* 0097B0 80008BB0 3C0F8004 */       lui $t7, %hi(D_8003B8DC)
  /* 0097B4 80008BB4 25EFB8DC */     addiu $t7, $t7, %lo(D_8003B8DC)
  /* 0097B8 80008BB8 8DF80000 */        lw $t8, ($t7) # D_8003B8DC + 0
  /* 0097BC 80008BBC 3C198004 */       lui $t9, %hi(D_8003B900)
  /* 0097C0 80008BC0 2739B900 */     addiu $t9, $t9, %lo(D_8003B900)
  /* 0097C4 80008BC4 AD580000 */        sw $t8, ($t2)
  /* 0097C8 80008BC8 8DEE0004 */        lw $t6, 4($t7) # D_8003B8DC + 4
  /* 0097CC 80008BCC AD4E0004 */        sw $t6, 4($t2)
  /* 0097D0 80008BD0 8DF80008 */        lw $t8, 8($t7) # D_8003B8DC + 8
  /* 0097D4 80008BD4 AD580008 */        sw $t8, 8($t2)
  /* 0097D8 80008BD8 8DEE000C */        lw $t6, 0xc($t7) # D_8003B8DC + 12
  /* 0097DC 80008BDC AD4E000C */        sw $t6, 0xc($t2)
  /* 0097E0 80008BE0 8F2E0000 */        lw $t6, ($t9) # D_8003B900 + 0
  /* 0097E4 80008BE4 AD2E0000 */        sw $t6, ($t1)
  /* 0097E8 80008BE8 8F2F0004 */        lw $t7, 4($t9) # D_8003B900 + 4
  /* 0097EC 80008BEC AD2F0004 */        sw $t7, 4($t1)
  /* 0097F0 80008BF0 8F2E0008 */        lw $t6, 8($t9) # D_8003B900 + 8
  /* 0097F4 80008BF4 AD2E0008 */        sw $t6, 8($t1)
  /* 0097F8 80008BF8 8F2F000C */        lw $t7, 0xc($t9) # D_8003B900 + 12
  /* 0097FC 80008BFC AD2F000C */        sw $t7, 0xc($t1)
  /* 009800 80008C00 8F2E0010 */        lw $t6, 0x10($t9) # D_8003B900 + 16
  /* 009804 80008C04 AD220000 */        sw $v0, ($t1)
  /* 009808 80008C08 AD2E0010 */        sw $t6, 0x10($t1)
  /* 00980C 80008C0C 10000024 */         b jtgt_80008CA0
  /* 009810 80008C10 AD420000 */        sw $v0, ($t2)
  glabel jtgt_80008C14
  /* 009814 80008C14 3C188004 */       lui $t8, %hi(D_8003B8DC)
  /* 009818 80008C18 2718B8DC */     addiu $t8, $t8, %lo(D_8003B8DC)
  /* 00981C 80008C1C 8F0F0000 */        lw $t7, ($t8) # D_8003B8DC + 0
  /* 009820 80008C20 3C0E8004 */       lui $t6, %hi(D_8003B900)
  /* 009824 80008C24 25CEB900 */     addiu $t6, $t6, %lo(D_8003B900)
  /* 009828 80008C28 AD4F0000 */        sw $t7, ($t2)
  /* 00982C 80008C2C 8F190004 */        lw $t9, 4($t8) # D_8003B8DC + 4
  /* 009830 80008C30 AD590004 */        sw $t9, 4($t2)
  /* 009834 80008C34 8F0F0008 */        lw $t7, 8($t8) # D_8003B8DC + 8
  /* 009838 80008C38 AD4F0008 */        sw $t7, 8($t2)
  /* 00983C 80008C3C 8F19000C */        lw $t9, 0xc($t8) # D_8003B8DC + 12
  /* 009840 80008C40 3C0F8004 */       lui $t7, %hi(D_8003B914)
  /* 009844 80008C44 25EFB914 */     addiu $t7, $t7, %lo(D_8003B914)
  /* 009848 80008C48 AD59000C */        sw $t9, 0xc($t2)
  /* 00984C 80008C4C 8DD90000 */        lw $t9, ($t6) # D_8003B900 + 0
  /* 009850 80008C50 AD390000 */        sw $t9, ($t1)
  /* 009854 80008C54 8DD80004 */        lw $t8, 4($t6) # D_8003B900 + 4
  /* 009858 80008C58 AD380004 */        sw $t8, 4($t1)
  /* 00985C 80008C5C 8DD90008 */        lw $t9, 8($t6) # D_8003B900 + 8
  /* 009860 80008C60 AD390008 */        sw $t9, 8($t1)
  /* 009864 80008C64 8DD8000C */        lw $t8, 0xc($t6) # D_8003B900 + 12
  /* 009868 80008C68 AD38000C */        sw $t8, 0xc($t1)
  /* 00986C 80008C6C 8DD90010 */        lw $t9, 0x10($t6) # D_8003B900 + 16
  /* 009870 80008C70 AD390010 */        sw $t9, 0x10($t1)
  /* 009874 80008C74 8DF80000 */        lw $t8, ($t7) # D_8003B914 + 0
  /* 009878 80008C78 AD980000 */        sw $t8, ($t4)
  /* 00987C 80008C7C 8DEE0004 */        lw $t6, 4($t7) # D_8003B914 + 4
  /* 009880 80008C80 AD8E0004 */        sw $t6, 4($t4)
  /* 009884 80008C84 8DF80008 */        lw $t8, 8($t7) # D_8003B914 + 8
  /* 009888 80008C88 AD980008 */        sw $t8, 8($t4)
  /* 00988C 80008C8C 8DEE000C */        lw $t6, 0xc($t7) # D_8003B914 + 12
  /* 009890 80008C90 AD820000 */        sw $v0, ($t4)
  /* 009894 80008C94 AD8E000C */        sw $t6, 0xc($t4)
  /* 009898 80008C98 AD220000 */        sw $v0, ($t1)
  /* 00989C 80008C9C AD420000 */        sw $v0, ($t2)
  glabel jtgt_80008CA0
  /* 0098A0 80008CA0 93B9003B */       lbu $t9, 0x3b($sp)
  /* 0098A4 80008CA4 00801025 */        or $v0, $a0, $zero
  /* 0098A8 80008CA8 A0990005 */        sb $t9, 5($a0)
  /* 0098AC 80008CAC 8FBF001C */        lw $ra, 0x1c($sp)
  /* 0098B0 80008CB0 8FB00018 */        lw $s0, 0x18($sp)
  /* 0098B4 80008CB4 27BD0030 */     addiu $sp, $sp, 0x30
  /* 0098B8 80008CB8 03E00008 */        jr $ra
  /* 0098BC 80008CBC 00000000 */       nop 

glabel func_80008CC0
  /* 0098C0 80008CC0 27BDFFE8 */     addiu $sp, $sp, -0x18
  /* 0098C4 80008CC4 AFBF0014 */        sw $ra, 0x14($sp)
  /* 0098C8 80008CC8 AFA5001C */        sw $a1, 0x1c($sp)
  /* 0098CC 80008CCC AFA60020 */        sw $a2, 0x20($sp)
  /* 0098D0 80008CD0 30C600FF */      andi $a2, $a2, 0xff
  /* 0098D4 80008CD4 30A500FF */      andi $a1, $a1, 0xff
  /* 0098D8 80008CD8 0C002157 */       jal func_8000855C
  /* 0098DC 80008CDC 90870056 */       lbu $a3, 0x56($a0)
  /* 0098E0 80008CE0 8FBF0014 */        lw $ra, 0x14($sp)
  /* 0098E4 80008CE4 27BD0018 */     addiu $sp, $sp, 0x18
  /* 0098E8 80008CE8 03E00008 */        jr $ra
  /* 0098EC 80008CEC 00000000 */       nop 

glabel func_80008CF0
  /* 0098F0 80008CF0 27BDFFE8 */     addiu $sp, $sp, -0x18
  /* 0098F4 80008CF4 AFBF0014 */        sw $ra, 0x14($sp)
  /* 0098F8 80008CF8 AFA5001C */        sw $a1, 0x1c($sp)
  /* 0098FC 80008CFC AFA60020 */        sw $a2, 0x20($sp)
  /* 009900 80008D00 8C8E0060 */        lw $t6, 0x60($a0)
  /* 009904 80008D04 24010002 */     addiu $at, $zero, 2
  /* 009908 80008D08 30A500FF */      andi $a1, $a1, 0xff
  /* 00990C 80008D0C 55C10007 */      bnel $t6, $at, .L80008D2C
  /* 009910 80008D10 AFA40018 */        sw $a0, 0x18($sp)
  /* 009914 80008D14 3C048004 */       lui $a0, %hi(D_8003DAD0)
  /* 009918 80008D18 0C008D89 */       jal fatal_printf
  /* 00991C 80008D1C 2484DAD0 */     addiu $a0, $a0, %lo(D_8003DAD0)
  .L80008D20:
  /* 009920 80008D20 1000FFFF */         b .L80008D20
  /* 009924 80008D24 00000000 */       nop 
  /* 009928 80008D28 AFA40018 */        sw $a0, 0x18($sp)
  .L80008D2C:
  /* 00992C 80008D2C 0C001F57 */       jal func_80007D5C
  /* 009930 80008D30 A3A5001F */        sb $a1, 0x1f($sp)
  /* 009934 80008D34 8FA40018 */        lw $a0, 0x18($sp)
  /* 009938 80008D38 93A5001F */       lbu $a1, 0x1f($sp)
  /* 00993C 80008D3C 00401825 */        or $v1, $v0, $zero
  /* 009940 80008D40 8C8F0060 */        lw $t7, 0x60($a0)
  /* 009944 80008D44 24AAFFFF */     addiu $t2, $a1, -1
  /* 009948 80008D48 2D410011 */     sltiu $at, $t2, 0x11
  /* 00994C 80008D4C 000FC080 */       sll $t8, $t7, 2
  /* 009950 80008D50 0098C821 */      addu $t9, $a0, $t8
  /* 009954 80008D54 AF220064 */        sw $v0, 0x64($t9)
  /* 009958 80008D58 8C880060 */        lw $t0, 0x60($a0)
  /* 00995C 80008D5C 000A5080 */       sll $t2, $t2, 2
  /* 009960 80008D60 25090001 */     addiu $t1, $t0, 1
  /* 009964 80008D64 AC890060 */        sw $t1, 0x60($a0)
  /* 009968 80008D68 1020003C */      beqz $at, jtgt_80008E5C
  /* 00996C 80008D6C A0450004 */        sb $a1, 4($v0)
  /* 009970 80008D70 3C018004 */       lui $at, %hi(D_8003DD20)
  /* 009974 80008D74 002A0821 */      addu $at, $at, $t2
  /* 009978 80008D78 8C2ADD20 */        lw $t2, %lo(D_8003DD20)($at)
  /* 00997C 80008D7C 01400008 */        jr $t2
  /* 009980 80008D80 00000000 */       nop 
  glabel jtgt_80008D84
  /* 009984 80008D84 3C0B8004 */       lui $t3, %hi(D_8003B878)
  /* 009988 80008D88 256BB878 */     addiu $t3, $t3, %lo(D_8003B878)
  /* 00998C 80008D8C 8D6D0000 */        lw $t5, ($t3) # D_8003B878 + 0
  /* 009990 80008D90 AC8D0018 */        sw $t5, 0x18($a0)
  /* 009994 80008D94 8D6C0004 */        lw $t4, 4($t3) # D_8003B878 + 4
  /* 009998 80008D98 AC8C001C */        sw $t4, 0x1c($a0)
  /* 00999C 80008D9C 8D6D0008 */        lw $t5, 8($t3) # D_8003B878 + 8
  /* 0099A0 80008DA0 AC8D0020 */        sw $t5, 0x20($a0)
  /* 0099A4 80008DA4 8D6C000C */        lw $t4, 0xc($t3) # D_8003B878 + 12
  /* 0099A8 80008DA8 AC8C0024 */        sw $t4, 0x24($a0)
  /* 0099AC 80008DAC 8D6D0010 */        lw $t5, 0x10($t3) # D_8003B878 + 16
  /* 0099B0 80008DB0 AC8D0028 */        sw $t5, 0x28($a0)
  /* 0099B4 80008DB4 8D6C0014 */        lw $t4, 0x14($t3) # D_8003B878 + 20
  /* 0099B8 80008DB8 AC8C002C */        sw $t4, 0x2c($a0)
  /* 0099BC 80008DBC 8D6D0018 */        lw $t5, 0x18($t3) # D_8003B878 + 24
  /* 0099C0 80008DC0 AC820018 */        sw $v0, 0x18($a0)
  /* 0099C4 80008DC4 10000025 */         b jtgt_80008E5C
  /* 0099C8 80008DC8 AC8D0030 */        sw $t5, 0x30($a0)
  glabel jtgt_80008DCC
  /* 0099CC 80008DCC 3C0E8004 */       lui $t6, %hi(D_8003B894)
  /* 0099D0 80008DD0 25CEB894 */     addiu $t6, $t6, %lo(D_8003B894)
  /* 0099D4 80008DD4 8DD80000 */        lw $t8, ($t6) # D_8003B894 + 0
  /* 0099D8 80008DD8 AC980018 */        sw $t8, 0x18($a0)
  /* 0099DC 80008DDC 8DCF0004 */        lw $t7, 4($t6) # D_8003B894 + 4
  /* 0099E0 80008DE0 AC8F001C */        sw $t7, 0x1c($a0)
  /* 0099E4 80008DE4 8DD80008 */        lw $t8, 8($t6) # D_8003B894 + 8
  /* 0099E8 80008DE8 AC980020 */        sw $t8, 0x20($a0)
  /* 0099EC 80008DEC 8DCF000C */        lw $t7, 0xc($t6) # D_8003B894 + 12
  /* 0099F0 80008DF0 AC8F0024 */        sw $t7, 0x24($a0)
  /* 0099F4 80008DF4 8DD80010 */        lw $t8, 0x10($t6) # D_8003B894 + 16
  /* 0099F8 80008DF8 AC980028 */        sw $t8, 0x28($a0)
  /* 0099FC 80008DFC 8DCF0014 */        lw $t7, 0x14($t6) # D_8003B894 + 20
  /* 009A00 80008E00 AC8F002C */        sw $t7, 0x2c($a0)
  /* 009A04 80008E04 8DD80018 */        lw $t8, 0x18($t6) # D_8003B894 + 24
  /* 009A08 80008E08 AC980030 */        sw $t8, 0x30($a0)
  /* 009A0C 80008E0C 8DCF001C */        lw $t7, 0x1c($t6) # D_8003B894 + 28
  /* 009A10 80008E10 AC820018 */        sw $v0, 0x18($a0)
  /* 009A14 80008E14 10000011 */         b jtgt_80008E5C
  /* 009A18 80008E18 AC8F0034 */        sw $t7, 0x34($a0)
  glabel jtgt_80008E1C
  /* 009A1C 80008E1C 3C198004 */       lui $t9, %hi(D_8003B8B4)
  /* 009A20 80008E20 2739B8B4 */     addiu $t9, $t9, %lo(D_8003B8B4)
  /* 009A24 80008E24 272B0024 */     addiu $t3, $t9, 0x24
  /* 009A28 80008E28 00805025 */        or $t2, $a0, $zero
  .L80008E2C:
  /* 009A2C 80008E2C 8F290000 */        lw $t1, ($t9) # D_8003B8B4 + 0
  /* 009A30 80008E30 2739000C */     addiu $t9, $t9, 0xc
  /* 009A34 80008E34 254A000C */     addiu $t2, $t2, 0xc
  /* 009A38 80008E38 AD49002C */        sw $t1, 0x2c($t2)
  /* 009A3C 80008E3C 8F28FFF8 */        lw $t0, -8($t9) # D_8003B8B4 + -8
  /* 009A40 80008E40 AD480030 */        sw $t0, 0x30($t2)
  /* 009A44 80008E44 8F29FFFC */        lw $t1, -4($t9) # D_8003B8B4 + -4
  /* 009A48 80008E48 172BFFF8 */       bne $t9, $t3, .L80008E2C
  /* 009A4C 80008E4C AD490034 */        sw $t1, 0x34($t2)
  /* 009A50 80008E50 8F290000 */        lw $t1, ($t9) # D_8003B8B4 + 0
  /* 009A54 80008E54 AD490038 */        sw $t1, 0x38($t2)
  /* 009A58 80008E58 AC820038 */        sw $v0, 0x38($a0)
  glabel jtgt_80008E5C
  /* 009A5C 80008E5C 93AC0023 */       lbu $t4, 0x23($sp)
  /* 009A60 80008E60 00601025 */        or $v0, $v1, $zero
  /* 009A64 80008E64 A06C0005 */        sb $t4, 5($v1)
  /* 009A68 80008E68 8FBF0014 */        lw $ra, 0x14($sp)
  /* 009A6C 80008E6C 27BD0018 */     addiu $sp, $sp, 0x18
  /* 009A70 80008E70 03E00008 */        jr $ra
  /* 009A74 80008E74 00000000 */       nop 

glabel func_80008E78
  /* 009A78 80008E78 27BDFFE0 */     addiu $sp, $sp, -0x20
  /* 009A7C 80008E7C AFBF0014 */        sw $ra, 0x14($sp)
  /* 009A80 80008E80 AFA40020 */        sw $a0, 0x20($sp)
  /* 009A84 80008E84 0C001F81 */       jal func_80007E04
  /* 009A88 80008E88 AFA50024 */        sw $a1, 0x24($sp)
  /* 009A8C 80008E8C 93AE0027 */       lbu $t6, 0x27($sp)
  /* 009A90 80008E90 AFA2001C */        sw $v0, 0x1c($sp)
  /* 009A94 80008E94 44800000 */      mtc1 $zero, $f0
  /* 009A98 80008E98 3C013F80 */       lui $at, (0x3F800000 >> 16) # 1.0
  /* 009A9C 80008E9C 44812000 */      mtc1 $at, $f4 # 1.0 to cop1
  /* 009AA0 80008EA0 A0400005 */        sb $zero, 5($v0)
  /* 009AA4 80008EA4 AC400020 */        sw $zero, 0x20($v0)
  /* 009AA8 80008EA8 A04E0004 */        sb $t6, 4($v0)
  /* 009AAC 80008EAC E440001C */      swc1 $f0, 0x1c($v0)
  /* 009AB0 80008EB0 E4400018 */      swc1 $f0, 0x18($v0)
  /* 009AB4 80008EB4 E4400014 */      swc1 $f0, 0x14($v0)
  /* 009AB8 80008EB8 E4400010 */      swc1 $f0, 0x10($v0)
  /* 009ABC 80008EBC E440000C */      swc1 $f0, 0xc($v0)
  /* 009AC0 80008EC0 E4440008 */      swc1 $f4, 8($v0)
  /* 009AC4 80008EC4 8FA40020 */        lw $a0, 0x20($sp)
  /* 009AC8 80008EC8 0C001FA0 */       jal func_80007E80
  /* 009ACC 80008ECC 00402825 */        or $a1, $v0, $zero
  /* 009AD0 80008ED0 8FBF0014 */        lw $ra, 0x14($sp)
  /* 009AD4 80008ED4 8FA2001C */        lw $v0, 0x1c($sp)
  /* 009AD8 80008ED8 27BD0020 */     addiu $sp, $sp, 0x20
  /* 009ADC 80008EDC 03E00008 */        jr $ra
  /* 009AE0 80008EE0 00000000 */       nop 

glabel func_80008EE4
  /* 009AE4 80008EE4 27BDFFE0 */     addiu $sp, $sp, -0x20
  /* 009AE8 80008EE8 AFBF001C */        sw $ra, 0x1c($sp)
  /* 009AEC 80008EEC AFB10018 */        sw $s1, 0x18($sp)
  /* 009AF0 80008EF0 AFB00014 */        sw $s0, 0x14($sp)
  /* 009AF4 80008EF4 AFA40020 */        sw $a0, 0x20($sp)
  /* 009AF8 80008EF8 8C90006C */        lw $s0, 0x6c($a0)
  /* 009AFC 80008EFC 52000007 */      beql $s0, $zero, .L80008F1C
  /* 009B00 80008F00 8FAF0020 */        lw $t7, 0x20($sp)
  .L80008F04:
  /* 009B04 80008F04 8E110000 */        lw $s1, ($s0)
  /* 009B08 80008F08 0C001FAC */       jal func_80007EB0
  /* 009B0C 80008F0C 02002025 */        or $a0, $s0, $zero
  /* 009B10 80008F10 1620FFFC */      bnez $s1, .L80008F04
  /* 009B14 80008F14 02208025 */        or $s0, $s1, $zero
  /* 009B18 80008F18 8FAF0020 */        lw $t7, 0x20($sp)
  .L80008F1C:
  /* 009B1C 80008F1C 3C018004 */       lui $at, %hi(D_8003DD64)
  /* 009B20 80008F20 ADE0006C */        sw $zero, 0x6c($t7)
  /* 009B24 80008F24 8FB80020 */        lw $t8, 0x20($sp)
  /* 009B28 80008F28 C424DD64 */      lwc1 $f4, %lo(D_8003DD64)($at)
  /* 009B2C 80008F2C E7040074 */      swc1 $f4, 0x74($t8)
  /* 009B30 80008F30 8FBF001C */        lw $ra, 0x1c($sp)
  /* 009B34 80008F34 8FB10018 */        lw $s1, 0x18($sp)
  /* 009B38 80008F38 8FB00014 */        lw $s0, 0x14($sp)
  /* 009B3C 80008F3C 03E00008 */        jr $ra
  /* 009B40 80008F40 27BD0020 */     addiu $sp, $sp, 0x20

glabel func_80008F44
  /* 009B44 80008F44 27BDFFE0 */     addiu $sp, $sp, -0x20
  /* 009B48 80008F48 AFBF0014 */        sw $ra, 0x14($sp)
  /* 009B4C 80008F4C AFA40020 */        sw $a0, 0x20($sp)
  /* 009B50 80008F50 0C001F81 */       jal func_80007E04
  /* 009B54 80008F54 AFA50024 */        sw $a1, 0x24($sp)
  /* 009B58 80008F58 93AE0027 */       lbu $t6, 0x27($sp)
  /* 009B5C 80008F5C AFA2001C */        sw $v0, 0x1c($sp)
  /* 009B60 80008F60 44800000 */      mtc1 $zero, $f0
  /* 009B64 80008F64 3C013F80 */       lui $at, (0x3F800000 >> 16) # 1.0
  /* 009B68 80008F68 44812000 */      mtc1 $at, $f4 # 1.0 to cop1
  /* 009B6C 80008F6C A0400005 */        sb $zero, 5($v0)
  /* 009B70 80008F70 AC400020 */        sw $zero, 0x20($v0)
  /* 009B74 80008F74 A04E0004 */        sb $t6, 4($v0)
  /* 009B78 80008F78 E440001C */      swc1 $f0, 0x1c($v0)
  /* 009B7C 80008F7C E4400018 */      swc1 $f0, 0x18($v0)
  /* 009B80 80008F80 E4400014 */      swc1 $f0, 0x14($v0)
  /* 009B84 80008F84 E4400010 */      swc1 $f0, 0x10($v0)
  /* 009B88 80008F88 E440000C */      swc1 $f0, 0xc($v0)
  /* 009B8C 80008F8C E4440008 */      swc1 $f4, 8($v0)
  /* 009B90 80008F90 8FA40020 */        lw $a0, 0x20($sp)
  /* 009B94 80008F94 0C001FA4 */       jal func_80007E90
  /* 009B98 80008F98 00402825 */        or $a1, $v0, $zero
  /* 009B9C 80008F9C 8FBF0014 */        lw $ra, 0x14($sp)
  /* 009BA0 80008FA0 8FA2001C */        lw $v0, 0x1c($sp)
  /* 009BA4 80008FA4 27BD0020 */     addiu $sp, $sp, 0x20
  /* 009BA8 80008FA8 03E00008 */        jr $ra
  /* 009BAC 80008FAC 00000000 */       nop 

glabel func_80008FB0
  /* 009BB0 80008FB0 27BDFFE0 */     addiu $sp, $sp, -0x20
  /* 009BB4 80008FB4 AFBF001C */        sw $ra, 0x1c($sp)
  /* 009BB8 80008FB8 AFB10018 */        sw $s1, 0x18($sp)
  /* 009BBC 80008FBC AFB00014 */        sw $s0, 0x14($sp)
  /* 009BC0 80008FC0 AFA40020 */        sw $a0, 0x20($sp)
  /* 009BC4 80008FC4 8C900090 */        lw $s0, 0x90($a0)
  /* 009BC8 80008FC8 52000007 */      beql $s0, $zero, .L80008FE8
  /* 009BCC 80008FCC 8FAF0020 */        lw $t7, 0x20($sp)
  .L80008FD0:
  /* 009BD0 80008FD0 8E110000 */        lw $s1, ($s0)
  /* 009BD4 80008FD4 0C001FAC */       jal func_80007EB0
  /* 009BD8 80008FD8 02002025 */        or $a0, $s0, $zero
  /* 009BDC 80008FDC 1620FFFC */      bnez $s1, .L80008FD0
  /* 009BE0 80008FE0 02208025 */        or $s0, $s1, $zero
  /* 009BE4 80008FE4 8FAF0020 */        lw $t7, 0x20($sp)
  .L80008FE8:
  /* 009BE8 80008FE8 3C018004 */       lui $at, %hi(D_8003DD68)
  /* 009BEC 80008FEC ADE00090 */        sw $zero, 0x90($t7)
  /* 009BF0 80008FF0 8FB80020 */        lw $t8, 0x20($sp)
  /* 009BF4 80008FF4 C424DD68 */      lwc1 $f4, %lo(D_8003DD68)($at)
  /* 009BF8 80008FF8 E7040098 */      swc1 $f4, 0x98($t8)
  /* 009BFC 80008FFC 8FBF001C */        lw $ra, 0x1c($sp)
  /* 009C00 80009000 8FB10018 */        lw $s1, 0x18($sp)
  /* 009C04 80009004 8FB00014 */        lw $s0, 0x14($sp)
  /* 009C08 80009008 03E00008 */        jr $ra
  /* 009C0C 8000900C 27BD0020 */     addiu $sp, $sp, 0x20

glabel func_80009010
  /* 009C10 80009010 27BDFFE0 */     addiu $sp, $sp, -0x20
  /* 009C14 80009014 AFBF0014 */        sw $ra, 0x14($sp)
  /* 009C18 80009018 AFA40020 */        sw $a0, 0x20($sp)
  /* 009C1C 8000901C 0C001F81 */       jal func_80007E04
  /* 009C20 80009020 AFA50024 */        sw $a1, 0x24($sp)
  /* 009C24 80009024 93AE0027 */       lbu $t6, 0x27($sp)
  /* 009C28 80009028 AFA2001C */        sw $v0, 0x1c($sp)
  /* 009C2C 8000902C 44800000 */      mtc1 $zero, $f0
  /* 009C30 80009030 3C013F80 */       lui $at, (0x3F800000 >> 16) # 1.0
  /* 009C34 80009034 44812000 */      mtc1 $at, $f4 # 1.0 to cop1
  /* 009C38 80009038 A0400005 */        sb $zero, 5($v0)
  /* 009C3C 8000903C AC400020 */        sw $zero, 0x20($v0)
  /* 009C40 80009040 A04E0004 */        sb $t6, 4($v0)
  /* 009C44 80009044 E440001C */      swc1 $f0, 0x1c($v0)
  /* 009C48 80009048 E4400018 */      swc1 $f0, 0x18($v0)
  /* 009C4C 8000904C E4400014 */      swc1 $f0, 0x14($v0)
  /* 009C50 80009050 E4400010 */      swc1 $f0, 0x10($v0)
  /* 009C54 80009054 E440000C */      swc1 $f0, 0xc($v0)
  /* 009C58 80009058 E4440008 */      swc1 $f4, 8($v0)
  /* 009C5C 8000905C 8FA40020 */        lw $a0, 0x20($sp)
  /* 009C60 80009060 0C001FA8 */       jal func_80007EA0
  /* 009C64 80009064 00402825 */        or $a1, $v0, $zero
  /* 009C68 80009068 8FBF0014 */        lw $ra, 0x14($sp)
  /* 009C6C 8000906C 8FA2001C */        lw $v0, 0x1c($sp)
  /* 009C70 80009070 27BD0020 */     addiu $sp, $sp, 0x20
  /* 009C74 80009074 03E00008 */        jr $ra
  /* 009C78 80009078 00000000 */       nop 

  /* 009C7C 8000907C 27BDFFE0 */     addiu $sp, $sp, -0x20
  /* 009C80 80009080 AFBF001C */        sw $ra, 0x1c($sp)
  /* 009C84 80009084 AFB10018 */        sw $s1, 0x18($sp)
  /* 009C88 80009088 AFB00014 */        sw $s0, 0x14($sp)
  /* 009C8C 8000908C AFA40020 */        sw $a0, 0x20($sp)
  /* 009C90 80009090 8C90006C */        lw $s0, 0x6c($a0)
  /* 009C94 80009094 52000007 */      beql $s0, $zero, .L800090B4
  /* 009C98 80009098 8FAF0020 */        lw $t7, 0x20($sp)
  .L8000909C:
  /* 009C9C 8000909C 8E110000 */        lw $s1, ($s0)
  /* 009CA0 800090A0 0C001FAC */       jal func_80007EB0
  /* 009CA4 800090A4 02002025 */        or $a0, $s0, $zero
  /* 009CA8 800090A8 1620FFFC */      bnez $s1, .L8000909C
  /* 009CAC 800090AC 02208025 */        or $s0, $s1, $zero
  /* 009CB0 800090B0 8FAF0020 */        lw $t7, 0x20($sp)
  .L800090B4:
  /* 009CB4 800090B4 3C018004 */       lui $at, %hi(D_8003DD6C)
  /* 009CB8 800090B8 ADE0006C */        sw $zero, 0x6c($t7)
  /* 009CBC 800090BC 8FB80020 */        lw $t8, 0x20($sp)
  /* 009CC0 800090C0 C424DD6C */      lwc1 $f4, %lo(D_8003DD6C)($at)
  /* 009CC4 800090C4 E7040074 */      swc1 $f4, 0x74($t8)
  /* 009CC8 800090C8 8FBF001C */        lw $ra, 0x1c($sp)
  /* 009CCC 800090CC 8FB10018 */        lw $s1, 0x18($sp)
  /* 009CD0 800090D0 8FB00014 */        lw $s0, 0x14($sp)
  /* 009CD4 800090D4 03E00008 */        jr $ra
  /* 009CD8 800090D8 27BD0020 */     addiu $sp, $sp, 0x20

glabel func_800090DC
  /* 009CDC 800090DC 27BDFFE8 */     addiu $sp, $sp, -0x18
  /* 009CE0 800090E0 AFBF0014 */        sw $ra, 0x14($sp)
  /* 009CE4 800090E4 AFA40018 */        sw $a0, 0x18($sp)
  /* 009CE8 800090E8 0C001FB7 */       jal func_80007EDC
  /* 009CEC 800090EC AFA5001C */        sw $a1, 0x1c($sp)
  /* 009CF0 800090F0 8FA30018 */        lw $v1, 0x18($sp)
  /* 009CF4 800090F4 8FA7001C */        lw $a3, 0x1c($sp)
  /* 009CF8 800090F8 00402825 */        or $a1, $v0, $zero
  /* 009CFC 800090FC 8C660080 */        lw $a2, 0x80($v1)
  /* 009D00 80009100 3C014F80 */       lui $at, (0x4F800000 >> 16) # 4294967300.0
  /* 009D04 80009104 50C0000C */      beql $a2, $zero, .L80009138
  /* 009D08 80009108 AC620080 */        sw $v0, 0x80($v1)
  /* 009D0C 8000910C 8CC30000 */        lw $v1, ($a2)
  /* 009D10 80009110 00C02025 */        or $a0, $a2, $zero
  /* 009D14 80009114 10600005 */      beqz $v1, .L8000912C
  /* 009D18 80009118 00000000 */       nop 
  /* 009D1C 8000911C 00602025 */        or $a0, $v1, $zero
  .L80009120:
  /* 009D20 80009120 8C630000 */        lw $v1, ($v1)
  /* 009D24 80009124 5460FFFE */      bnel $v1, $zero, .L80009120
  /* 009D28 80009128 00602025 */        or $a0, $v1, $zero
  .L8000912C:
  /* 009D2C 8000912C 10000002 */         b .L80009138
  /* 009D30 80009130 AC820000 */        sw $v0, ($a0)
  /* 009D34 80009134 AC620080 */        sw $v0, 0x80($v1)
  .L80009138:
  /* 009D38 80009138 ACA00000 */        sw $zero, ($a1)
  /* 009D3C 8000913C 90EE0054 */       lbu $t6, 0x54($a3)
  /* 009D40 80009140 448E2000 */      mtc1 $t6, $f4
  /* 009D44 80009144 05C10004 */      bgez $t6, .L80009158
  /* 009D48 80009148 468021A0 */   cvt.s.w $f6, $f4
  /* 009D4C 8000914C 44814000 */      mtc1 $at, $f8 # 4294967300.0 to cop1
  /* 009D50 80009150 00000000 */       nop 
  /* 009D54 80009154 46083180 */     add.s $f6, $f6, $f8
  .L80009158:
  /* 009D58 80009158 3C01437F */       lui $at, (0x437F0000 >> 16) # 255.0
  /* 009D5C 8000915C 44815000 */      mtc1 $at, $f10 # 255.0 to cop1
  /* 009D60 80009160 44804000 */      mtc1 $zero, $f8
  /* 009D64 80009164 00E0C825 */        or $t9, $a3, $zero
  /* 009D68 80009168 460A3403 */     div.s $f16, $f6, $f10
  /* 009D6C 8000916C 00A04025 */        or $t0, $a1, $zero
  /* 009D70 80009170 24E90078 */     addiu $t1, $a3, 0x78
  /* 009D74 80009174 E4B00084 */      swc1 $f16, 0x84($a1)
  .L80009178:
  /* 009D78 80009178 8F380000 */        lw $t8, ($t9)
  /* 009D7C 8000917C 2739000C */     addiu $t9, $t9, 0xc
  /* 009D80 80009180 2508000C */     addiu $t0, $t0, 0xc
  /* 009D84 80009184 AD18FFFC */        sw $t8, -4($t0)
  /* 009D88 80009188 8F2FFFF8 */        lw $t7, -8($t9)
  /* 009D8C 8000918C AD0F0000 */        sw $t7, ($t0)
  /* 009D90 80009190 8F38FFFC */        lw $t8, -4($t9)
  /* 009D94 80009194 1729FFF8 */       bne $t9, $t1, .L80009178
  /* 009D98 80009198 AD180004 */        sw $t8, 4($t0)
  /* 009D9C 8000919C C4F20014 */      lwc1 $f18, 0x14($a3)
  /* 009DA0 800091A0 3C018004 */       lui $at, %hi(D_8003DD70)
  /* 009DA4 800091A4 44808000 */      mtc1 $zero, $f16
  /* 009DA8 800091A8 E4B2002C */      swc1 $f18, 0x2c($a1)
  /* 009DAC 800091AC C4E4001C */      lwc1 $f4, 0x1c($a3)
  /* 009DB0 800091B0 A4A00080 */        sh $zero, 0x80($a1)
  /* 009DB4 800091B4 A4A00082 */        sh $zero, 0x82($a1)
  /* 009DB8 800091B8 E4A80088 */      swc1 $f8, 0x88($a1)
  /* 009DBC 800091BC ACA00090 */        sw $zero, 0x90($a1)
  /* 009DC0 800091C0 ACA00094 */        sw $zero, 0x94($a1)
  /* 009DC4 800091C4 E4A40030 */      swc1 $f4, 0x30($a1)
  /* 009DC8 800091C8 C426DD70 */      lwc1 $f6, %lo(D_8003DD70)($at)
  /* 009DCC 800091CC 3C013F80 */       lui $at, (0x3F800000 >> 16) # 1.0
  /* 009DD0 800091D0 44815000 */      mtc1 $at, $f10 # 1.0 to cop1
  /* 009DD4 800091D4 E4B000A0 */      swc1 $f16, 0xa0($a1)
  /* 009DD8 800091D8 E4A60098 */      swc1 $f6, 0x98($a1)
  /* 009DDC 800091DC E4AA009C */      swc1 $f10, 0x9c($a1)
  /* 009DE0 800091E0 8FBF0014 */        lw $ra, 0x14($sp)
  /* 009DE4 800091E4 27BD0018 */     addiu $sp, $sp, 0x18
  /* 009DE8 800091E8 00A01025 */        or $v0, $a1, $zero
  /* 009DEC 800091EC 03E00008 */        jr $ra
  /* 009DF0 800091F0 00000000 */       nop 

glabel func_800091F4
  /* 009DF4 800091F4 27BDFFD8 */     addiu $sp, $sp, -0x28
  /* 009DF8 800091F8 AFBF0024 */        sw $ra, 0x24($sp)
  /* 009DFC 800091FC AFB20020 */        sw $s2, 0x20($sp)
  /* 009E00 80009200 AFB1001C */        sw $s1, 0x1c($sp)
  /* 009E04 80009204 AFB00018 */        sw $s0, 0x18($sp)
  /* 009E08 80009208 AFA40028 */        sw $a0, 0x28($sp)
  /* 009E0C 8000920C 8C920080 */        lw $s2, 0x80($a0)
  /* 009E10 80009210 5240000F */      beql $s2, $zero, .L80009250
  /* 009E14 80009214 8FAF0028 */        lw $t7, 0x28($sp)
  .L80009218:
  /* 009E18 80009218 8E500090 */        lw $s0, 0x90($s2)
  /* 009E1C 8000921C 52000007 */      beql $s0, $zero, .L8000923C
  /* 009E20 80009220 8E500000 */        lw $s0, ($s2)
  .L80009224:
  /* 009E24 80009224 8E110000 */        lw $s1, ($s0)
  /* 009E28 80009228 0C001FAC */       jal func_80007EB0
  /* 009E2C 8000922C 02002025 */        or $a0, $s0, $zero
  /* 009E30 80009230 1620FFFC */      bnez $s1, .L80009224
  /* 009E34 80009234 02208025 */        or $s0, $s1, $zero
  /* 009E38 80009238 8E500000 */        lw $s0, ($s2)
  .L8000923C:
  /* 009E3C 8000923C 0C001FD6 */       jal func_80007F58
  /* 009E40 80009240 02402025 */        or $a0, $s2, $zero
  /* 009E44 80009244 1600FFF4 */      bnez $s0, .L80009218
  /* 009E48 80009248 02009025 */        or $s2, $s0, $zero
  /* 009E4C 8000924C 8FAF0028 */        lw $t7, 0x28($sp)
  .L80009250:
  /* 009E50 80009250 ADE00080 */        sw $zero, 0x80($t7)
  /* 009E54 80009254 8FBF0024 */        lw $ra, 0x24($sp)
  /* 009E58 80009258 8FB20020 */        lw $s2, 0x20($sp)
  /* 009E5C 8000925C 8FB1001C */        lw $s1, 0x1c($sp)
  /* 009E60 80009260 8FB00018 */        lw $s0, 0x18($sp)
  /* 009E64 80009264 03E00008 */        jr $ra
  /* 009E68 80009268 27BD0028 */     addiu $sp, $sp, 0x28

glabel func_8000926C
  /* 009E6C 8000926C 24020001 */     addiu $v0, $zero, 1
  /* 009E70 80009270 00027080 */       sll $t6, $v0, 2
  /* 009E74 80009274 AC80004C */        sw $zero, 0x4c($a0)
  /* 009E78 80009278 A0800054 */        sb $zero, 0x54($a0)
  /* 009E7C 8000927C A0800055 */        sb $zero, 0x55($a0)
  /* 009E80 80009280 A0800056 */        sb $zero, 0x56($a0)
  /* 009E84 80009284 AC800058 */        sw $zero, 0x58($a0)
  /* 009E88 80009288 008E1821 */      addu $v1, $a0, $t6
  /* 009E8C 8000928C AC60005C */        sw $zero, 0x5c($v1)
  /* 009E90 80009290 AC600060 */        sw $zero, 0x60($v1)
  /* 009E94 80009294 AC600064 */        sw $zero, 0x64($v1)
  /* 009E98 80009298 AC600058 */        sw $zero, 0x58($v1)
  /* 009E9C 8000929C AC80006C */        sw $zero, 0x6c($a0)
  /* 009EA0 800092A0 AC800070 */        sw $zero, 0x70($a0)
  /* 009EA4 800092A4 3C018004 */       lui $at, %hi(D_8003DD74)
  /* 009EA8 800092A8 C424DD74 */      lwc1 $f4, %lo(D_8003DD74)($at)
  /* 009EAC 800092AC 3C013F80 */       lui $at, (0x3F800000 >> 16) # 1.0
  /* 009EB0 800092B0 44813000 */      mtc1 $at, $f6 # 1.0 to cop1
  /* 009EB4 800092B4 44804000 */      mtc1 $zero, $f8
  /* 009EB8 800092B8 AC800080 */        sw $zero, 0x80($a0)
  /* 009EBC 800092BC AC800084 */        sw $zero, 0x84($a0)
  /* 009EC0 800092C0 E4840074 */      swc1 $f4, 0x74($a0)
  /* 009EC4 800092C4 E4860078 */      swc1 $f6, 0x78($a0)
  /* 009EC8 800092C8 03E00008 */        jr $ra
  /* 009ECC 800092CC E488007C */      swc1 $f8, 0x7c($a0)

glabel func_800092D0
  /* 009ED0 800092D0 27BDFFE0 */     addiu $sp, $sp, -0x20
  /* 009ED4 800092D4 AFBF0014 */        sw $ra, 0x14($sp)
  /* 009ED8 800092D8 AFA50024 */        sw $a1, 0x24($sp)
  /* 009EDC 800092DC 14800003 */      bnez $a0, .L800092EC
  /* 009EE0 800092E0 00803025 */        or $a2, $a0, $zero
  /* 009EE4 800092E4 3C068004 */       lui $a2, %hi(D_80046A54)
  /* 009EE8 800092E8 8CC66A54 */        lw $a2, %lo(D_80046A54)($a2)
  .L800092EC:
  /* 009EEC 800092EC 0C001FE1 */       jal func_80007F84
  /* 009EF0 800092F0 AFA60020 */        sw $a2, 0x20($sp)
  /* 009EF4 800092F4 8FA60020 */        lw $a2, 0x20($sp)
  /* 009EF8 800092F8 00402825 */        or $a1, $v0, $zero
  /* 009EFC 800092FC 240E0001 */     addiu $t6, $zero, 1
  /* 009F00 80009300 8CC70074 */        lw $a3, 0x74($a2)
  /* 009F04 80009304 240F0001 */     addiu $t7, $zero, 1
  /* 009F08 80009308 50E0000D */      beql $a3, $zero, .L80009340
  /* 009F0C 8000930C A0CE000F */        sb $t6, 0xf($a2)
  /* 009F10 80009310 8CE30008 */        lw $v1, 8($a3)
  /* 009F14 80009314 00E02025 */        or $a0, $a3, $zero
  /* 009F18 80009318 50600006 */      beql $v1, $zero, .L80009334
  /* 009F1C 8000931C AC820008 */        sw $v0, 8($a0)
  /* 009F20 80009320 00602025 */        or $a0, $v1, $zero
  .L80009324:
  /* 009F24 80009324 8C630008 */        lw $v1, 8($v1)
  /* 009F28 80009328 5460FFFE */      bnel $v1, $zero, .L80009324
  /* 009F2C 8000932C 00602025 */        or $a0, $v1, $zero
  /* 009F30 80009330 AC820008 */        sw $v0, 8($a0)
  .L80009334:
  /* 009F34 80009334 10000004 */         b .L80009348
  /* 009F38 80009338 AC44000C */        sw $a0, 0xc($v0)
  /* 009F3C 8000933C A0CE000F */        sb $t6, 0xf($a2)
  .L80009340:
  /* 009F40 80009340 ACC20074 */        sw $v0, 0x74($a2)
  /* 009F44 80009344 AC40000C */        sw $zero, 0xc($v0)
  .L80009348:
  /* 009F48 80009348 ACA60004 */        sw $a2, 4($a1)
  /* 009F4C 8000934C ACAF0014 */        sw $t7, 0x14($a1)
  /* 009F50 80009350 ACA00008 */        sw $zero, 8($a1)
  /* 009F54 80009354 ACA00010 */        sw $zero, 0x10($a1)
  /* 009F58 80009358 8FB80024 */        lw $t8, 0x24($sp)
  /* 009F5C 8000935C 00A02025 */        or $a0, $a1, $zero
  /* 009F60 80009360 ACB80050 */        sw $t8, 0x50($a1)
  /* 009F64 80009364 0C00249B */       jal func_8000926C
  /* 009F68 80009368 AFA5001C */        sw $a1, 0x1c($sp)
  /* 009F6C 8000936C 8FBF0014 */        lw $ra, 0x14($sp)
  /* 009F70 80009370 8FA2001C */        lw $v0, 0x1c($sp)
  /* 009F74 80009374 27BD0020 */     addiu $sp, $sp, 0x20
  /* 009F78 80009378 03E00008 */        jr $ra
  /* 009F7C 8000937C 00000000 */       nop 

glabel func_80009380
  /* 009F80 80009380 27BDFFE0 */     addiu $sp, $sp, -0x20
  /* 009F84 80009384 AFBF0014 */        sw $ra, 0x14($sp)
  /* 009F88 80009388 AFA50024 */        sw $a1, 0x24($sp)
  /* 009F8C 8000938C 0C001FE1 */       jal func_80007F84
  /* 009F90 80009390 AFA40020 */        sw $a0, 0x20($sp)
  /* 009F94 80009394 8FA60020 */        lw $a2, 0x20($sp)
  /* 009F98 80009398 00402025 */        or $a0, $v0, $zero
  /* 009F9C 8000939C 8CC30008 */        lw $v1, 8($a2)
  /* 009FA0 800093A0 50600003 */      beql $v1, $zero, .L800093B0
  /* 009FA4 800093A4 AC86000C */        sw $a2, 0xc($a0)
  /* 009FA8 800093A8 AC62000C */        sw $v0, 0xc($v1)
  /* 009FAC 800093AC AC86000C */        sw $a2, 0xc($a0)
  .L800093B0:
  /* 009FB0 800093B0 8CCE0008 */        lw $t6, 8($a2)
  /* 009FB4 800093B4 AC8E0008 */        sw $t6, 8($a0)
  /* 009FB8 800093B8 8CCF0004 */        lw $t7, 4($a2)
  /* 009FBC 800093BC ACC40008 */        sw $a0, 8($a2)
  /* 009FC0 800093C0 AC8F0004 */        sw $t7, 4($a0)
  /* 009FC4 800093C4 8CD80014 */        lw $t8, 0x14($a2)
  /* 009FC8 800093C8 AC800010 */        sw $zero, 0x10($a0)
  /* 009FCC 800093CC AC980014 */        sw $t8, 0x14($a0)
  /* 009FD0 800093D0 8FB90024 */        lw $t9, 0x24($sp)
  /* 009FD4 800093D4 AC990050 */        sw $t9, 0x50($a0)
  /* 009FD8 800093D8 0C00249B */       jal func_8000926C
  /* 009FDC 800093DC AFA4001C */        sw $a0, 0x1c($sp)
  /* 009FE0 800093E0 8FBF0014 */        lw $ra, 0x14($sp)
  /* 009FE4 800093E4 8FA2001C */        lw $v0, 0x1c($sp)
  /* 009FE8 800093E8 27BD0020 */     addiu $sp, $sp, 0x20
  /* 009FEC 800093EC 03E00008 */        jr $ra
  /* 009FF0 800093F0 00000000 */       nop 

glabel func_800093F4
  /* 009FF4 800093F4 27BDFFE0 */     addiu $sp, $sp, -0x20
  /* 009FF8 800093F8 AFBF0014 */        sw $ra, 0x14($sp)
  /* 009FFC 800093FC AFA50024 */        sw $a1, 0x24($sp)
  /* 00A000 80009400 0C001FE1 */       jal func_80007F84
  /* 00A004 80009404 AFA40020 */        sw $a0, 0x20($sp)
  /* 00A008 80009408 8FA70020 */        lw $a3, 0x20($sp)
  /* 00A00C 8000940C 00402825 */        or $a1, $v0, $zero
  /* 00A010 80009410 8CE60010 */        lw $a2, 0x10($a3)
  /* 00A014 80009414 50C0000D */      beql $a2, $zero, .L8000944C
  /* 00A018 80009418 ACE20010 */        sw $v0, 0x10($a3)
  /* 00A01C 8000941C 8CC30008 */        lw $v1, 8($a2)
  /* 00A020 80009420 00C02025 */        or $a0, $a2, $zero
  /* 00A024 80009424 50600006 */      beql $v1, $zero, .L80009440
  /* 00A028 80009428 AC820008 */        sw $v0, 8($a0)
  /* 00A02C 8000942C 00602025 */        or $a0, $v1, $zero
  .L80009430:
  /* 00A030 80009430 8C630008 */        lw $v1, 8($v1)
  /* 00A034 80009434 5460FFFE */      bnel $v1, $zero, .L80009430
  /* 00A038 80009438 00602025 */        or $a0, $v1, $zero
  /* 00A03C 8000943C AC820008 */        sw $v0, 8($a0)
  .L80009440:
  /* 00A040 80009440 10000003 */         b .L80009450
  /* 00A044 80009444 AC44000C */        sw $a0, 0xc($v0)
  /* 00A048 80009448 ACE20010 */        sw $v0, 0x10($a3)
  .L8000944C:
  /* 00A04C 8000944C AC40000C */        sw $zero, 0xc($v0)
  .L80009450:
  /* 00A050 80009450 8CEE0004 */        lw $t6, 4($a3)
  /* 00A054 80009454 ACA70014 */        sw $a3, 0x14($a1)
  /* 00A058 80009458 ACA00010 */        sw $zero, 0x10($a1)
  /* 00A05C 8000945C ACA00008 */        sw $zero, 8($a1)
  /* 00A060 80009460 ACAE0004 */        sw $t6, 4($a1)
  /* 00A064 80009464 8FAF0024 */        lw $t7, 0x24($sp)
  /* 00A068 80009468 00A02025 */        or $a0, $a1, $zero
  /* 00A06C 8000946C ACAF0050 */        sw $t7, 0x50($a1)
  /* 00A070 80009470 0C00249B */       jal func_8000926C
  /* 00A074 80009474 AFA5001C */        sw $a1, 0x1c($sp)
  /* 00A078 80009478 8FBF0014 */        lw $ra, 0x14($sp)
  /* 00A07C 8000947C 8FA2001C */        lw $v0, 0x1c($sp)
  /* 00A080 80009480 27BD0020 */     addiu $sp, $sp, 0x20
  /* 00A084 80009484 03E00008 */        jr $ra
  /* 00A088 80009488 00000000 */       nop 

glabel func_8000948C
  /* 00A08C 8000948C 27BDFFD8 */     addiu $sp, $sp, -0x28
  /* 00A090 80009490 AFBF0024 */        sw $ra, 0x24($sp)
  /* 00A094 80009494 AFB30020 */        sw $s3, 0x20($sp)
  /* 00A098 80009498 AFB2001C */        sw $s2, 0x1c($sp)
  /* 00A09C 8000949C AFB10018 */        sw $s1, 0x18($sp)
  /* 00A0A0 800094A0 AFB00014 */        sw $s0, 0x14($sp)
  /* 00A0A4 800094A4 8C900010 */        lw $s0, 0x10($a0)
  /* 00A0A8 800094A8 00809825 */        or $s3, $a0, $zero
  /* 00A0AC 800094AC 52000007 */      beql $s0, $zero, .L800094CC
  /* 00A0B0 800094B0 8E620014 */        lw $v0, 0x14($s3)
  .L800094B4:
  /* 00A0B4 800094B4 0C002523 */       jal func_8000948C
  /* 00A0B8 800094B8 02002025 */        or $a0, $s0, $zero
  /* 00A0BC 800094BC 8E700010 */        lw $s0, 0x10($s3)
  /* 00A0C0 800094C0 1600FFFC */      bnez $s0, .L800094B4
  /* 00A0C4 800094C4 00000000 */       nop 
  /* 00A0C8 800094C8 8E620014 */        lw $v0, 0x14($s3)
  .L800094CC:
  /* 00A0CC 800094CC 24010001 */     addiu $at, $zero, 1
  /* 00A0D0 800094D0 00008025 */        or $s0, $zero, $zero
  /* 00A0D4 800094D4 1441000D */       bne $v0, $at, .L8000950C
  /* 00A0D8 800094D8 02608825 */        or $s1, $s3, $zero
  /* 00A0DC 800094DC 8E620004 */        lw $v0, 4($s3)
  /* 00A0E0 800094E0 8C4E0074 */        lw $t6, 0x74($v0)
  /* 00A0E4 800094E4 566E000F */      bnel $s3, $t6, .L80009524
  /* 00A0E8 800094E8 8E62000C */        lw $v0, 0xc($s3)
  /* 00A0EC 800094EC 8E6F0008 */        lw $t7, 8($s3)
  /* 00A0F0 800094F0 AC4F0074 */        sw $t7, 0x74($v0)
  /* 00A0F4 800094F4 8E620004 */        lw $v0, 4($s3)
  /* 00A0F8 800094F8 8C580074 */        lw $t8, 0x74($v0)
  /* 00A0FC 800094FC 57000009 */      bnel $t8, $zero, .L80009524
  /* 00A100 80009500 8E62000C */        lw $v0, 0xc($s3)
  /* 00A104 80009504 10000006 */         b .L80009520
  /* 00A108 80009508 A040000F */        sb $zero, 0xf($v0)
  .L8000950C:
  /* 00A10C 8000950C 8C590010 */        lw $t9, 0x10($v0)
  /* 00A110 80009510 56790004 */      bnel $s3, $t9, .L80009524
  /* 00A114 80009514 8E62000C */        lw $v0, 0xc($s3)
  /* 00A118 80009518 8E680008 */        lw $t0, 8($s3)
  /* 00A11C 8000951C AC480010 */        sw $t0, 0x10($v0)
  .L80009520:
  /* 00A120 80009520 8E62000C */        lw $v0, 0xc($s3)
  .L80009524:
  /* 00A124 80009524 24120014 */     addiu $s2, $zero, 0x14
  /* 00A128 80009528 50400004 */      beql $v0, $zero, .L8000953C
  /* 00A12C 8000952C 8E620008 */        lw $v0, 8($s3)
  /* 00A130 80009530 8E690008 */        lw $t1, 8($s3)
  /* 00A134 80009534 AC490008 */        sw $t1, 8($v0)
  /* 00A138 80009538 8E620008 */        lw $v0, 8($s3)
  .L8000953C:
  /* 00A13C 8000953C 10400003 */      beqz $v0, .L8000954C
  /* 00A140 80009540 00000000 */       nop 
  /* 00A144 80009544 8E6A000C */        lw $t2, 0xc($s3)
  /* 00A148 80009548 AC4A000C */        sw $t2, 0xc($v0)
  .L8000954C:
  /* 00A14C 8000954C 8E240058 */        lw $a0, 0x58($s1)
  /* 00A150 80009550 50800004 */      beql $a0, $zero, .L80009564
  /* 00A154 80009554 26100004 */     addiu $s0, $s0, 4
  /* 00A158 80009558 0C001F76 */       jal func_80007DD8
  /* 00A15C 8000955C 00000000 */       nop 
  /* 00A160 80009560 26100004 */     addiu $s0, $s0, 4
  .L80009564:
  /* 00A164 80009564 1612FFF9 */       bne $s0, $s2, .L8000954C
  /* 00A168 80009568 26310004 */     addiu $s1, $s1, 4
  /* 00A16C 8000956C 8E64004C */        lw $a0, 0x4c($s3)
  /* 00A170 80009570 3C028004 */       lui $v0, %hi(D_80046A1C)
  /* 00A174 80009574 50800007 */      beql $a0, $zero, .L80009594
  /* 00A178 80009578 8E71006C */        lw $s1, 0x6c($s3)
  /* 00A17C 8000957C 8C426A1C */        lw $v0, %lo(D_80046A1C)($v0)
  /* 00A180 80009580 50400004 */      beql $v0, $zero, .L80009594
  /* 00A184 80009584 8E71006C */        lw $s1, 0x6c($s3)
  /* 00A188 80009588 0040F809 */      jalr $v0
  /* 00A18C 8000958C 00000000 */       nop 
  /* 00A190 80009590 8E71006C */        lw $s1, 0x6c($s3)
  .L80009594:
  /* 00A194 80009594 52200007 */      beql $s1, $zero, .L800095B4
  /* 00A198 80009598 8E720080 */        lw $s2, 0x80($s3)
  .L8000959C:
  /* 00A19C 8000959C 8E300000 */        lw $s0, ($s1)
  /* 00A1A0 800095A0 0C001FAC */       jal func_80007EB0
  /* 00A1A4 800095A4 02202025 */        or $a0, $s1, $zero
  /* 00A1A8 800095A8 1600FFFC */      bnez $s0, .L8000959C
  /* 00A1AC 800095AC 02008825 */        or $s1, $s0, $zero
  /* 00A1B0 800095B0 8E720080 */        lw $s2, 0x80($s3)
  .L800095B4:
  /* 00A1B4 800095B4 1240000E */      beqz $s2, .L800095F0
  /* 00A1B8 800095B8 00000000 */       nop 
  .L800095BC:
  /* 00A1BC 800095BC 8E510090 */        lw $s1, 0x90($s2)
  /* 00A1C0 800095C0 52200007 */      beql $s1, $zero, .L800095E0
  /* 00A1C4 800095C4 8E500000 */        lw $s0, ($s2)
  .L800095C8:
  /* 00A1C8 800095C8 8E300000 */        lw $s0, ($s1)
  /* 00A1CC 800095CC 0C001FAC */       jal func_80007EB0
  /* 00A1D0 800095D0 02202025 */        or $a0, $s1, $zero
  /* 00A1D4 800095D4 1600FFFC */      bnez $s0, .L800095C8
  /* 00A1D8 800095D8 02008825 */        or $s1, $s0, $zero
  /* 00A1DC 800095DC 8E500000 */        lw $s0, ($s2)
  .L800095E0:
  /* 00A1E0 800095E0 0C001FD6 */       jal func_80007F58
  /* 00A1E4 800095E4 02402025 */        or $a0, $s2, $zero
  /* 00A1E8 800095E8 1600FFF4 */      bnez $s0, .L800095BC
  /* 00A1EC 800095EC 02009025 */        or $s2, $s0, $zero
  .L800095F0:
  /* 00A1F0 800095F0 0C002001 */       jal func_80008004
  /* 00A1F4 800095F4 02602025 */        or $a0, $s3, $zero
  /* 00A1F8 800095F8 8FBF0024 */        lw $ra, 0x24($sp)
  /* 00A1FC 800095FC 8FB00014 */        lw $s0, 0x14($sp)
  /* 00A200 80009600 8FB10018 */        lw $s1, 0x18($sp)
  /* 00A204 80009604 8FB2001C */        lw $s2, 0x1c($sp)
  /* 00A208 80009608 8FB30020 */        lw $s3, 0x20($sp)
  /* 00A20C 8000960C 03E00008 */        jr $ra
  /* 00A210 80009610 27BD0028 */     addiu $sp, $sp, 0x28

glabel func_80009614
  /* 00A214 80009614 27BDFFE8 */     addiu $sp, $sp, -0x18
  /* 00A218 80009618 AFBF0014 */        sw $ra, 0x14($sp)
  /* 00A21C 8000961C AFA5001C */        sw $a1, 0x1c($sp)
  /* 00A220 80009620 14800003 */      bnez $a0, .L80009630
  /* 00A224 80009624 00803025 */        or $a2, $a0, $zero
  /* 00A228 80009628 3C068004 */       lui $a2, %hi(D_80046A54)
  /* 00A22C 8000962C 8CC66A54 */        lw $a2, %lo(D_80046A54)($a2)
  .L80009630:
  /* 00A230 80009630 0C00200C */       jal func_80008030
  /* 00A234 80009634 AFA60018 */        sw $a2, 0x18($sp)
  /* 00A238 80009638 8FA60018 */        lw $a2, 0x18($sp)
  /* 00A23C 8000963C 8FA8001C */        lw $t0, 0x1c($sp)
  /* 00A240 80009640 00403825 */        or $a3, $v0, $zero
  /* 00A244 80009644 8CC50074 */        lw $a1, 0x74($a2)
  /* 00A248 80009648 240E0002 */     addiu $t6, $zero, 2
  /* 00A24C 8000964C 00404825 */        or $t1, $v0, $zero
  /* 00A250 80009650 10A0000C */      beqz $a1, .L80009684
  /* 00A254 80009654 0100C825 */        or $t9, $t0, $zero
  /* 00A258 80009658 8CA30008 */        lw $v1, 8($a1)
  /* 00A25C 8000965C 00A02025 */        or $a0, $a1, $zero
  /* 00A260 80009660 50600006 */      beql $v1, $zero, .L8000967C
  /* 00A264 80009664 AC820008 */        sw $v0, 8($a0)
  /* 00A268 80009668 00602025 */        or $a0, $v1, $zero
  .L8000966C:
  /* 00A26C 8000966C 8C630008 */        lw $v1, 8($v1)
  /* 00A270 80009670 5460FFFE */      bnel $v1, $zero, .L8000966C
  /* 00A274 80009674 00602025 */        or $a0, $v1, $zero
  /* 00A278 80009678 AC820008 */        sw $v0, 8($a0)
  .L8000967C:
  /* 00A27C 8000967C 10000004 */         b .L80009690
  /* 00A280 80009680 AC44000C */        sw $a0, 0xc($v0)
  .L80009684:
  /* 00A284 80009684 A0CE000F */        sb $t6, 0xf($a2)
  /* 00A288 80009688 ACC20074 */        sw $v0, 0x74($a2)
  /* 00A28C 8000968C AC40000C */        sw $zero, 0xc($v0)
  .L80009690:
  /* 00A290 80009690 AC460004 */        sw $a2, 4($v0)
  /* 00A294 80009694 1100000F */      beqz $t0, .L800096D4
  /* 00A298 80009698 AC400008 */        sw $zero, 8($v0)
  /* 00A29C 8000969C 250A003C */     addiu $t2, $t0, 0x3c
  .L800096A0:
  /* 00A2A0 800096A0 8F380000 */        lw $t8, ($t9)
  /* 00A2A4 800096A4 2739000C */     addiu $t9, $t9, 0xc
  /* 00A2A8 800096A8 2529000C */     addiu $t1, $t1, 0xc
  /* 00A2AC 800096AC AD380004 */        sw $t8, 4($t1)
  /* 00A2B0 800096B0 8F2FFFF8 */        lw $t7, -8($t9)
  /* 00A2B4 800096B4 AD2F0008 */        sw $t7, 8($t1)
  /* 00A2B8 800096B8 8F38FFFC */        lw $t8, -4($t9)
  /* 00A2BC 800096BC 172AFFF8 */       bne $t9, $t2, .L800096A0
  /* 00A2C0 800096C0 AD38000C */        sw $t8, 0xc($t1)
  /* 00A2C4 800096C4 8F380000 */        lw $t8, ($t9)
  /* 00A2C8 800096C8 AD380010 */        sw $t8, 0x10($t1)
  /* 00A2CC 800096CC 8F2F0004 */        lw $t7, 4($t9)
  /* 00A2D0 800096D0 AD2F0014 */        sw $t7, 0x14($t1)
  .L800096D4:
  /* 00A2D4 800096D4 ACE00054 */        sw $zero, 0x54($a3)
  /* 00A2D8 800096D8 8FBF0014 */        lw $ra, 0x14($sp)
  /* 00A2DC 800096DC 27BD0018 */     addiu $sp, $sp, 0x18
  /* 00A2E0 800096E0 00E01025 */        or $v0, $a3, $zero
  /* 00A2E4 800096E4 03E00008 */        jr $ra
  /* 00A2E8 800096E8 00000000 */       nop 

glabel func_800096EC
  /* 00A2EC 800096EC 27BDFFE8 */     addiu $sp, $sp, -0x18
  /* 00A2F0 800096F0 AFBF0014 */        sw $ra, 0x14($sp)
  /* 00A2F4 800096F4 8C820004 */        lw $v0, 4($a0)
  /* 00A2F8 800096F8 8C4E0074 */        lw $t6, 0x74($v0)
  /* 00A2FC 800096FC 548E0009 */      bnel $a0, $t6, .L80009724
  /* 00A300 80009700 8C82000C */        lw $v0, 0xc($a0)
  /* 00A304 80009704 8C8F0008 */        lw $t7, 8($a0)
  /* 00A308 80009708 AC4F0074 */        sw $t7, 0x74($v0)
  /* 00A30C 8000970C 8C820004 */        lw $v0, 4($a0)
  /* 00A310 80009710 8C580074 */        lw $t8, 0x74($v0)
  /* 00A314 80009714 57000003 */      bnel $t8, $zero, .L80009724
  /* 00A318 80009718 8C82000C */        lw $v0, 0xc($a0)
  /* 00A31C 8000971C A040000F */        sb $zero, 0xf($v0)
  /* 00A320 80009720 8C82000C */        lw $v0, 0xc($a0)
  .L80009724:
  /* 00A324 80009724 50400004 */      beql $v0, $zero, .L80009738
  /* 00A328 80009728 8C820008 */        lw $v0, 8($a0)
  /* 00A32C 8000972C 8C990008 */        lw $t9, 8($a0)
  /* 00A330 80009730 AC590008 */        sw $t9, 8($v0)
  /* 00A334 80009734 8C820008 */        lw $v0, 8($a0)
  .L80009738:
  /* 00A338 80009738 10400003 */      beqz $v0, .L80009748
  /* 00A33C 8000973C 00000000 */       nop 
  /* 00A340 80009740 8C88000C */        lw $t0, 0xc($a0)
  /* 00A344 80009744 AC48000C */        sw $t0, 0xc($v0)
  .L80009748:
  /* 00A348 80009748 0C00202C */       jal func_800080B0
  /* 00A34C 8000974C 00000000 */       nop 
  /* 00A350 80009750 8FBF0014 */        lw $ra, 0x14($sp)
  /* 00A354 80009754 27BD0018 */     addiu $sp, $sp, 0x18
  /* 00A358 80009758 03E00008 */        jr $ra
  /* 00A35C 8000975C 00000000 */       nop 

glabel func_80009760
  /* 00A360 80009760 27BDFFE0 */     addiu $sp, $sp, -0x20
  /* 00A364 80009764 AFBF0014 */        sw $ra, 0x14($sp)
  /* 00A368 80009768 14800003 */      bnez $a0, .L80009778
  /* 00A36C 8000976C 00803025 */        or $a2, $a0, $zero
  /* 00A370 80009770 3C068004 */       lui $a2, %hi(D_80046A54)
  /* 00A374 80009774 8CC66A54 */        lw $a2, %lo(D_80046A54)($a2)
  .L80009778:
  /* 00A378 80009778 240E0003 */     addiu $t6, $zero, 3
  /* 00A37C 8000977C A0CE000F */        sb $t6, 0xf($a2)
  /* 00A380 80009780 0C002037 */       jal func_800080DC
  /* 00A384 80009784 AFA60020 */        sw $a2, 0x20($sp)
  /* 00A388 80009788 8FA60020 */        lw $a2, 0x20($sp)
  /* 00A38C 8000978C 24440008 */     addiu $a0, $v0, 8
  /* 00A390 80009790 ACC20074 */        sw $v0, 0x74($a2)
  /* 00A394 80009794 AC460004 */        sw $a2, 4($v0)
  /* 00A398 80009798 0C001C47 */       jal setup_viewport
  /* 00A39C 8000979C AFA20018 */        sw $v0, 0x18($sp)
  /* 00A3A0 800097A0 8FA50018 */        lw $a1, 0x18($sp)
  /* 00A3A4 800097A4 00001025 */        or $v0, $zero, $zero
  /* 00A3A8 800097A8 24040002 */     addiu $a0, $zero, 2
  /* 00A3AC 800097AC ACA00060 */        sw $zero, 0x60($a1)
  /* 00A3B0 800097B0 00A01825 */        or $v1, $a1, $zero
  .L800097B4:
  /* 00A3B4 800097B4 24420001 */     addiu $v0, $v0, 1
  /* 00A3B8 800097B8 24630004 */     addiu $v1, $v1, 4
  /* 00A3BC 800097BC 1444FFFD */       bne $v0, $a0, .L800097B4
  /* 00A3C0 800097C0 AC600060 */        sw $zero, 0x60($v1)
  /* 00A3C4 800097C4 ACA00080 */        sw $zero, 0x80($a1)
  /* 00A3C8 800097C8 ACA00084 */        sw $zero, 0x84($a1)
  /* 00A3CC 800097CC ACA00088 */        sw $zero, 0x88($a1)
  /* 00A3D0 800097D0 ACA0008C */        sw $zero, 0x8c($a1)
  /* 00A3D4 800097D4 ACA0006C */        sw $zero, 0x6c($a1)
  /* 00A3D8 800097D8 ACA00070 */        sw $zero, 0x70($a1)
  /* 00A3DC 800097DC 3C018004 */       lui $at, %hi(D_8003DD78)
  /* 00A3E0 800097E0 C424DD78 */      lwc1 $f4, %lo(D_8003DD78)($at)
  /* 00A3E4 800097E4 3C013F80 */       lui $at, (0x3F800000 >> 16) # 1.0
  /* 00A3E8 800097E8 44813000 */      mtc1 $at, $f6 # 1.0 to cop1
  /* 00A3EC 800097EC 44804000 */      mtc1 $zero, $f8
  /* 00A3F0 800097F0 E4A40074 */      swc1 $f4, 0x74($a1)
  /* 00A3F4 800097F4 E4A60078 */      swc1 $f6, 0x78($a1)
  /* 00A3F8 800097F8 E4A8007C */      swc1 $f8, 0x7c($a1)
  /* 00A3FC 800097FC 8FBF0014 */        lw $ra, 0x14($sp)
  /* 00A400 80009800 27BD0020 */     addiu $sp, $sp, 0x20
  /* 00A404 80009804 00A01025 */        or $v0, $a1, $zero
  /* 00A408 80009808 03E00008 */        jr $ra
  /* 00A40C 8000980C 00000000 */       nop 

glabel func_80009810
  /* 00A410 80009810 27BDFFD8 */     addiu $sp, $sp, -0x28
  /* 00A414 80009814 AFBF0024 */        sw $ra, 0x24($sp)
  /* 00A418 80009818 AFB20020 */        sw $s2, 0x20($sp)
  /* 00A41C 8000981C AFB1001C */        sw $s1, 0x1c($sp)
  /* 00A420 80009820 AFB00018 */        sw $s0, 0x18($sp)
  /* 00A424 80009824 AFA40028 */        sw $a0, 0x28($sp)
  /* 00A428 80009828 8C820004 */        lw $v0, 4($a0)
  /* 00A42C 8000982C 00008025 */        or $s0, $zero, $zero
  /* 00A430 80009830 24120008 */     addiu $s2, $zero, 8
  /* 00A434 80009834 A040000F */        sb $zero, 0xf($v0)
  /* 00A438 80009838 AC400074 */        sw $zero, 0x74($v0)
  /* 00A43C 8000983C 8FB10028 */        lw $s1, 0x28($sp)
  .L80009840:
  /* 00A440 80009840 8E240064 */        lw $a0, 0x64($s1)
  /* 00A444 80009844 50800004 */      beql $a0, $zero, .L80009858
  /* 00A448 80009848 26100004 */     addiu $s0, $s0, 4
  /* 00A44C 8000984C 0C001F76 */       jal func_80007DD8
  /* 00A450 80009850 00000000 */       nop 
  /* 00A454 80009854 26100004 */     addiu $s0, $s0, 4
  .L80009858:
  /* 00A458 80009858 1612FFF9 */       bne $s0, $s2, .L80009840
  /* 00A45C 8000985C 26310004 */     addiu $s1, $s1, 4
  /* 00A460 80009860 8FAF0028 */        lw $t7, 0x28($sp)
  /* 00A464 80009864 8DF0006C */        lw $s0, 0x6c($t7)
  /* 00A468 80009868 12000006 */      beqz $s0, .L80009884
  /* 00A46C 8000986C 00000000 */       nop 
  .L80009870:
  /* 00A470 80009870 8E110000 */        lw $s1, ($s0)
  /* 00A474 80009874 0C001FAC */       jal func_80007EB0
  /* 00A478 80009878 02002025 */        or $a0, $s0, $zero
  /* 00A47C 8000987C 1620FFFC */      bnez $s1, .L80009870
  /* 00A480 80009880 02208025 */        or $s0, $s1, $zero
  .L80009884:
  /* 00A484 80009884 0C002057 */       jal func_8000815C
  /* 00A488 80009888 8FA40028 */        lw $a0, 0x28($sp)
  /* 00A48C 8000988C 8FBF0024 */        lw $ra, 0x24($sp)
  /* 00A490 80009890 8FB00018 */        lw $s0, 0x18($sp)
  /* 00A494 80009894 8FB1001C */        lw $s1, 0x1c($sp)
  /* 00A498 80009898 8FB20020 */        lw $s2, 0x20($sp)
  /* 00A49C 8000989C 03E00008 */        jr $ra
  /* 00A4A0 800098A0 27BD0028 */     addiu $sp, $sp, 0x28

glabel func_800098A4
  /* 00A4A4 800098A4 27BDFFE0 */     addiu $sp, $sp, -0x20
  /* 00A4A8 800098A8 AFA60028 */        sw $a2, 0x28($sp)
  /* 00A4AC 800098AC 30C600FF */      andi $a2, $a2, 0xff
  /* 00A4B0 800098B0 28C10021 */      slti $at, $a2, 0x21
  /* 00A4B4 800098B4 AFBF0014 */        sw $ra, 0x14($sp)
  /* 00A4B8 800098B8 AFA40020 */        sw $a0, 0x20($sp)
  /* 00A4BC 800098BC AFA50024 */        sw $a1, 0x24($sp)
  /* 00A4C0 800098C0 AFA7002C */        sw $a3, 0x2c($sp)
  /* 00A4C4 800098C4 AFA60018 */        sw $a2, 0x18($sp)
  /* 00A4C8 800098C8 14200008 */      bnez $at, .L800098EC
  /* 00A4CC 800098CC 00C07025 */        or $t6, $a2, $zero
  /* 00A4D0 800098D0 3C048004 */       lui $a0, %hi(D_8003DAF4)
  /* 00A4D4 800098D4 2484DAF4 */     addiu $a0, $a0, %lo(D_8003DAF4)
  /* 00A4D8 800098D8 01C02825 */        or $a1, $t6, $zero
  /* 00A4DC 800098DC 0C008D89 */       jal fatal_printf
  /* 00A4E0 800098E0 8FA60020 */        lw $a2, 0x20($sp)
  .L800098E4:
  /* 00A4E4 800098E4 1000FFFF */         b .L800098E4
  /* 00A4E8 800098E8 00000000 */       nop 
  .L800098EC:
  /* 00A4EC 800098EC 0C001E3F */       jal func_800078FC
  /* 00A4F0 800098F0 A3A6002B */        sb $a2, 0x2b($sp)
  /* 00A4F4 800098F4 93A6002B */       lbu $a2, 0x2b($sp)
  /* 00A4F8 800098F8 14400003 */      bnez $v0, .L80009908
  /* 00A4FC 800098FC 00401825 */        or $v1, $v0, $zero
  /* 00A500 80009900 10000015 */         b .L80009958
  /* 00A504 80009904 00001025 */        or $v0, $zero, $zero
  .L80009908:
  /* 00A508 80009908 8FAF0020 */        lw $t7, 0x20($sp)
  /* 00A50C 8000990C A066000C */        sb $a2, 0xc($v1)
  /* 00A510 80009910 44802000 */      mtc1 $zero, $f4
  /* 00A514 80009914 AC6F0000 */        sw $t7, ($v1)
  /* 00A518 80009918 8FB8002C */        lw $t8, 0x2c($sp)
  /* 00A51C 8000991C 24080041 */     addiu $t0, $zero, 0x41
  /* 00A520 80009920 00601025 */        or $v0, $v1, $zero
  /* 00A524 80009924 AC780010 */        sw $t8, 0x10($v1)
  /* 00A528 80009928 8FB90024 */        lw $t9, 0x24($sp)
  /* 00A52C 8000992C AC600018 */        sw $zero, 0x18($v1)
  /* 00A530 80009930 AC60001C */        sw $zero, 0x1c($v1)
  /* 00A534 80009934 AC600070 */        sw $zero, 0x70($v1)
  /* 00A538 80009938 AC60007C */        sw $zero, 0x7c($v1)
  /* 00A53C 8000993C A060000F */        sb $zero, 0xf($v1)
  /* 00A540 80009940 AC600074 */        sw $zero, 0x74($v1)
  /* 00A544 80009944 A068000D */        sb $t0, 0xd($v1)
  /* 00A548 80009948 AC600080 */        sw $zero, 0x80($v1)
  /* 00A54C 8000994C AC600084 */        sw $zero, 0x84($v1)
  /* 00A550 80009950 E4640078 */      swc1 $f4, 0x78($v1)
  /* 00A554 80009954 AC790014 */        sw $t9, 0x14($v1)
  .L80009958:
  /* 00A558 80009958 8FBF0014 */        lw $ra, 0x14($sp)
  /* 00A55C 8000995C 27BD0020 */     addiu $sp, $sp, 0x20
  /* 00A560 80009960 03E00008 */        jr $ra
  /* 00A564 80009964 00000000 */       nop 

glabel func_80009968
  /* 00A568 80009968 27BDFFE0 */     addiu $sp, $sp, -0x20
  /* 00A56C 8000996C AFBF0014 */        sw $ra, 0x14($sp)
  /* 00A570 80009970 AFA60028 */        sw $a2, 0x28($sp)
  /* 00A574 80009974 0C002629 */       jal func_800098A4
  /* 00A578 80009978 30C600FF */      andi $a2, $a2, 0xff
  /* 00A57C 8000997C 14400003 */      bnez $v0, .L8000998C
  /* 00A580 80009980 00402025 */        or $a0, $v0, $zero
  /* 00A584 80009984 10000004 */         b .L80009998
  /* 00A588 80009988 00001025 */        or $v0, $zero, $zero
  .L8000998C:
  /* 00A58C 8000998C 0C001E8F */       jal func_80007A3C
  /* 00A590 80009990 AFA4001C */        sw $a0, 0x1c($sp)
  /* 00A594 80009994 8FA2001C */        lw $v0, 0x1c($sp)
  .L80009998:
  /* 00A598 80009998 8FBF0014 */        lw $ra, 0x14($sp)
  /* 00A59C 8000999C 27BD0020 */     addiu $sp, $sp, 0x20
  /* 00A5A0 800099A0 03E00008 */        jr $ra
  /* 00A5A4 800099A4 00000000 */       nop 

glabel func_800099A8
  /* 00A5A8 800099A8 27BDFFE0 */     addiu $sp, $sp, -0x20
  /* 00A5AC 800099AC AFBF0014 */        sw $ra, 0x14($sp)
  /* 00A5B0 800099B0 AFA60028 */        sw $a2, 0x28($sp)
  /* 00A5B4 800099B4 0C002629 */       jal func_800098A4
  /* 00A5B8 800099B8 30C600FF */      andi $a2, $a2, 0xff
  /* 00A5BC 800099BC 14400003 */      bnez $v0, .L800099CC
  /* 00A5C0 800099C0 00402025 */        or $a0, $v0, $zero
  /* 00A5C4 800099C4 10000004 */         b .L800099D8
  /* 00A5C8 800099C8 00001025 */        or $v0, $zero, $zero
  .L800099CC:
  /* 00A5CC 800099CC 0C001EAA */       jal func_80007AA8
  /* 00A5D0 800099D0 AFA4001C */        sw $a0, 0x1c($sp)
  /* 00A5D4 800099D4 8FA2001C */        lw $v0, 0x1c($sp)
  .L800099D8:
  /* 00A5D8 800099D8 8FBF0014 */        lw $ra, 0x14($sp)
  /* 00A5DC 800099DC 27BD0020 */     addiu $sp, $sp, 0x20
  /* 00A5E0 800099E0 03E00008 */        jr $ra
  /* 00A5E4 800099E4 00000000 */       nop 

  /* 00A5E8 800099E8 27BDFFE0 */     addiu $sp, $sp, -0x20
  /* 00A5EC 800099EC AFBF0014 */        sw $ra, 0x14($sp)
  /* 00A5F0 800099F0 AFA60028 */        sw $a2, 0x28($sp)
  /* 00A5F4 800099F4 00C07025 */        or $t6, $a2, $zero
  /* 00A5F8 800099F8 8DC70010 */        lw $a3, 0x10($t6)
  /* 00A5FC 800099FC 0C002629 */       jal func_800098A4
  /* 00A600 80009A00 90C6000C */       lbu $a2, 0xc($a2)
  /* 00A604 80009A04 14400003 */      bnez $v0, .L80009A14
  /* 00A608 80009A08 00402025 */        or $a0, $v0, $zero
  /* 00A60C 80009A0C 10000005 */         b .L80009A24
  /* 00A610 80009A10 00001025 */        or $v0, $zero, $zero
  .L80009A14:
  /* 00A614 80009A14 8FA50028 */        lw $a1, 0x28($sp)
  /* 00A618 80009A18 0C001E75 */       jal func_800079D4
  /* 00A61C 80009A1C AFA4001C */        sw $a0, 0x1c($sp)
  /* 00A620 80009A20 8FA2001C */        lw $v0, 0x1c($sp)
  .L80009A24:
  /* 00A624 80009A24 8FBF0014 */        lw $ra, 0x14($sp)
  /* 00A628 80009A28 27BD0020 */     addiu $sp, $sp, 0x20
  /* 00A62C 80009A2C 03E00008 */        jr $ra
  /* 00A630 80009A30 00000000 */       nop 

  /* 00A634 80009A34 27BDFFE0 */     addiu $sp, $sp, -0x20
  /* 00A638 80009A38 AFBF0014 */        sw $ra, 0x14($sp)
  /* 00A63C 80009A3C AFA60028 */        sw $a2, 0x28($sp)
  /* 00A640 80009A40 00C07025 */        or $t6, $a2, $zero
  /* 00A644 80009A44 8DC70010 */        lw $a3, 0x10($t6)
  /* 00A648 80009A48 0C002629 */       jal func_800098A4
  /* 00A64C 80009A4C 90C6000C */       lbu $a2, 0xc($a2)
  /* 00A650 80009A50 14400003 */      bnez $v0, .L80009A60
  /* 00A654 80009A54 00402025 */        or $a0, $v0, $zero
  /* 00A658 80009A58 10000006 */         b .L80009A74
  /* 00A65C 80009A5C 00001025 */        or $v0, $zero, $zero
  .L80009A60:
  /* 00A660 80009A60 8FAF0028 */        lw $t7, 0x28($sp)
  /* 00A664 80009A64 8DE50008 */        lw $a1, 8($t7)
  /* 00A668 80009A68 0C001E75 */       jal func_800079D4
  /* 00A66C 80009A6C AFA4001C */        sw $a0, 0x1c($sp)
  /* 00A670 80009A70 8FA2001C */        lw $v0, 0x1c($sp)
  .L80009A74:
  /* 00A674 80009A74 8FBF0014 */        lw $ra, 0x14($sp)
  /* 00A678 80009A78 27BD0020 */     addiu $sp, $sp, 0x20
  /* 00A67C 80009A7C 03E00008 */        jr $ra
  /* 00A680 80009A80 00000000 */       nop 

glabel func_80009A84
  /* 00A684 80009A84 27BDFFE0 */     addiu $sp, $sp, -0x20
  /* 00A688 80009A88 AFB00018 */        sw $s0, 0x18($sp)
  /* 00A68C 80009A8C 00808025 */        or $s0, $a0, $zero
  /* 00A690 80009A90 10800004 */      beqz $a0, .L80009AA4
  /* 00A694 80009A94 AFBF001C */        sw $ra, 0x1c($sp)
  /* 00A698 80009A98 3C0E8004 */       lui $t6, %hi(D_80046A54)
  /* 00A69C 80009A9C 8DCE6A54 */        lw $t6, %lo(D_80046A54)($t6)
  /* 00A6A0 80009AA0 148E0004 */       bne $a0, $t6, .L80009AB4
  .L80009AA4:
  /* 00A6A4 80009AA4 240F0002 */     addiu $t7, $zero, 2
  /* 00A6A8 80009AA8 3C018004 */       lui $at, %hi(D_80046A64)
  /* 00A6AC 80009AAC 10000021 */         b .L80009B34
  /* 00A6B0 80009AB0 AC2F6A64 */        sw $t7, %lo(D_80046A64)($at)
  .L80009AB4:
  /* 00A6B4 80009AB4 0C002CE7 */       jal func_8000B39C
  /* 00A6B8 80009AB8 02002025 */        or $a0, $s0, $zero
  /* 00A6BC 80009ABC 9202000F */       lbu $v0, 0xf($s0)
  /* 00A6C0 80009AC0 24010001 */     addiu $at, $zero, 1
  /* 00A6C4 80009AC4 10410007 */       beq $v0, $at, .L80009AE4
  /* 00A6C8 80009AC8 24010002 */     addiu $at, $zero, 2
  /* 00A6CC 80009ACC 10410009 */       beq $v0, $at, .L80009AF4
  /* 00A6D0 80009AD0 24010003 */     addiu $at, $zero, 3
  /* 00A6D4 80009AD4 1041000B */       beq $v0, $at, .L80009B04
  /* 00A6D8 80009AD8 00000000 */       nop 
  /* 00A6DC 80009ADC 1000000C */         b .L80009B10
  /* 00A6E0 80009AE0 9218000D */       lbu $t8, 0xd($s0)
  .L80009AE4:
  /* 00A6E4 80009AE4 0C002DC3 */       jal func_8000B70C
  /* 00A6E8 80009AE8 02002025 */        or $a0, $s0, $zero
  /* 00A6EC 80009AEC 10000008 */         b .L80009B10
  /* 00A6F0 80009AF0 9218000D */       lbu $t8, 0xd($s0)
  .L80009AF4:
  /* 00A6F4 80009AF4 0C002DD8 */       jal func_8000B760
  /* 00A6F8 80009AF8 02002025 */        or $a0, $s0, $zero
  /* 00A6FC 80009AFC 10000004 */         b .L80009B10
  /* 00A700 80009B00 9218000D */       lbu $t8, 0xd($s0)
  .L80009B04:
  /* 00A704 80009B04 0C002604 */       jal func_80009810
  /* 00A708 80009B08 8E040074 */        lw $a0, 0x74($s0)
  /* 00A70C 80009B0C 9218000D */       lbu $t8, 0xd($s0)
  .L80009B10:
  /* 00A710 80009B10 24010041 */     addiu $at, $zero, 0x41
  /* 00A714 80009B14 13010003 */       beq $t8, $at, .L80009B24
  /* 00A718 80009B18 00000000 */       nop 
  /* 00A71C 80009B1C 0C001F3D */       jal func_80007CF4
  /* 00A720 80009B20 02002025 */        or $a0, $s0, $zero
  .L80009B24:
  /* 00A724 80009B24 0C001ECC */       jal func_80007B30
  /* 00A728 80009B28 02002025 */        or $a0, $s0, $zero
  /* 00A72C 80009B2C 0C001E6A */       jal func_800079A8
  /* 00A730 80009B30 02002025 */        or $a0, $s0, $zero
  .L80009B34:
  /* 00A734 80009B34 8FBF001C */        lw $ra, 0x1c($sp)
  /* 00A738 80009B38 8FB00018 */        lw $s0, 0x18($sp)
  /* 00A73C 80009B3C 27BD0020 */     addiu $sp, $sp, 0x20
  /* 00A740 80009B40 03E00008 */        jr $ra
  /* 00A744 80009B44 00000000 */       nop 

glabel func_80009B48
  /* 00A748 80009B48 27BDFFD8 */     addiu $sp, $sp, -0x28
  /* 00A74C 80009B4C AFB10018 */        sw $s1, 0x18($sp)
  /* 00A750 80009B50 AFA60030 */        sw $a2, 0x30($sp)
  /* 00A754 80009B54 93B10033 */       lbu $s1, 0x33($sp)
  /* 00A758 80009B58 AFB00014 */        sw $s0, 0x14($sp)
  /* 00A75C 80009B5C 00A08025 */        or $s0, $a1, $zero
  /* 00A760 80009B60 2A210021 */      slti $at, $s1, 0x21
  /* 00A764 80009B64 AFBF001C */        sw $ra, 0x1c($sp)
  /* 00A768 80009B68 AFA40028 */        sw $a0, 0x28($sp)
  /* 00A76C 80009B6C 14200008 */      bnez $at, .L80009B90
  /* 00A770 80009B70 AFA70034 */        sw $a3, 0x34($sp)
  /* 00A774 80009B74 3C048004 */       lui $a0, %hi(D_8003DB2C)
  /* 00A778 80009B78 2484DB2C */     addiu $a0, $a0, %lo(D_8003DB2C)
  /* 00A77C 80009B7C 02202825 */        or $a1, $s1, $zero
  /* 00A780 80009B80 0C008D89 */       jal fatal_printf
  /* 00A784 80009B84 8E060000 */        lw $a2, ($s0)
  .L80009B88:
  /* 00A788 80009B88 1000FFFF */         b .L80009B88
  /* 00A78C 80009B8C 00000000 */       nop 
  .L80009B90:
  /* 00A790 80009B90 56000004 */      bnel $s0, $zero, .L80009BA4
  /* 00A794 80009B94 8E0E0018 */        lw $t6, 0x18($s0)
  /* 00A798 80009B98 3C108004 */       lui $s0, %hi(D_80046A54)
  /* 00A79C 80009B9C 8E106A54 */        lw $s0, %lo(D_80046A54)($s0)
  /* 00A7A0 80009BA0 8E0E0018 */        lw $t6, 0x18($s0)
  .L80009BA4:
  /* 00A7A4 80009BA4 AFAE0020 */        sw $t6, 0x20($sp)
  /* 00A7A8 80009BA8 AE000018 */        sw $zero, 0x18($s0)
  /* 00A7AC 80009BAC AE00001C */        sw $zero, 0x1c($s0)
  /* 00A7B0 80009BB0 8FB10020 */        lw $s1, 0x20($sp)
  /* 00A7B4 80009BB4 12200007 */      beqz $s1, .L80009BD4
  /* 00A7B8 80009BB8 00000000 */       nop 
  .L80009BBC:
  /* 00A7BC 80009BBC 0C001DE1 */       jal func_80007784
  /* 00A7C0 80009BC0 02202025 */        or $a0, $s1, $zero
  /* 00A7C4 80009BC4 8E310000 */        lw $s1, ($s1)
  /* 00A7C8 80009BC8 1620FFFC */      bnez $s1, .L80009BBC
  /* 00A7CC 80009BCC 00000000 */       nop 
  /* 00A7D0 80009BD0 8FB10020 */        lw $s1, 0x20($sp)
  .L80009BD4:
  /* 00A7D4 80009BD4 0C001ECC */       jal func_80007B30
  /* 00A7D8 80009BD8 02002025 */        or $a0, $s0, $zero
  /* 00A7DC 80009BDC 93B80033 */       lbu $t8, 0x33($sp)
  /* 00A7E0 80009BE0 24010001 */     addiu $at, $zero, 1
  /* 00A7E4 80009BE4 A218000C */        sb $t8, 0xc($s0)
  /* 00A7E8 80009BE8 8FB90034 */        lw $t9, 0x34($sp)
  /* 00A7EC 80009BEC AE190010 */        sw $t9, 0x10($s0)
  /* 00A7F0 80009BF0 8FA80028 */        lw $t0, 0x28($sp)
  /* 00A7F4 80009BF4 1100000A */      beqz $t0, .L80009C20
  /* 00A7F8 80009BF8 00000000 */       nop 
  /* 00A7FC 80009BFC 1101000C */       beq $t0, $at, .L80009C30
  /* 00A800 80009C00 24010002 */     addiu $at, $zero, 2
  /* 00A804 80009C04 1101000E */       beq $t0, $at, .L80009C40
  /* 00A808 80009C08 02002025 */        or $a0, $s0, $zero
  /* 00A80C 80009C0C 24010003 */     addiu $at, $zero, 3
  /* 00A810 80009C10 1101000F */       beq $t0, $at, .L80009C50
  /* 00A814 80009C14 8FA90038 */        lw $t1, 0x38($sp)
  /* 00A818 80009C18 10000011 */         b .L80009C60
  /* 00A81C 80009C1C 8FAA0020 */        lw $t2, 0x20($sp)
  .L80009C20:
  /* 00A820 80009C20 0C001E8F */       jal func_80007A3C
  /* 00A824 80009C24 02002025 */        or $a0, $s0, $zero
  /* 00A828 80009C28 1000000D */         b .L80009C60
  /* 00A82C 80009C2C 8FAA0020 */        lw $t2, 0x20($sp)
  .L80009C30:
  /* 00A830 80009C30 0C001EAA */       jal func_80007AA8
  /* 00A834 80009C34 02002025 */        or $a0, $s0, $zero
  /* 00A838 80009C38 10000009 */         b .L80009C60
  /* 00A83C 80009C3C 8FAA0020 */        lw $t2, 0x20($sp)
  .L80009C40:
  /* 00A840 80009C40 0C001E75 */       jal func_800079D4
  /* 00A844 80009C44 8FA50038 */        lw $a1, 0x38($sp)
  /* 00A848 80009C48 10000005 */         b .L80009C60
  /* 00A84C 80009C4C 8FAA0020 */        lw $t2, 0x20($sp)
  .L80009C50:
  /* 00A850 80009C50 02002025 */        or $a0, $s0, $zero
  /* 00A854 80009C54 0C001E75 */       jal func_800079D4
  /* 00A858 80009C58 8D250008 */        lw $a1, 8($t1)
  /* 00A85C 80009C5C 8FAA0020 */        lw $t2, 0x20($sp)
  .L80009C60:
  /* 00A860 80009C60 51400007 */      beql $t2, $zero, .L80009C80
  /* 00A864 80009C64 8FBF001C */        lw $ra, 0x1c($sp)
  .L80009C68:
  /* 00A868 80009C68 8E300000 */        lw $s0, ($s1)
  /* 00A86C 80009C6C 0C001DA0 */       jal func_80007680
  /* 00A870 80009C70 02202025 */        or $a0, $s1, $zero
  /* 00A874 80009C74 1600FFFC */      bnez $s0, .L80009C68
  /* 00A878 80009C78 02008825 */        or $s1, $s0, $zero
  /* 00A87C 80009C7C 8FBF001C */        lw $ra, 0x1c($sp)
  .L80009C80:
  /* 00A880 80009C80 8FB00014 */        lw $s0, 0x14($sp)
  /* 00A884 80009C84 8FB10018 */        lw $s1, 0x18($sp)
  /* 00A888 80009C88 03E00008 */        jr $ra
  /* 00A88C 80009C8C 27BD0028 */     addiu $sp, $sp, 0x28

glabel func_80009C90
  /* 00A890 80009C90 27BDFFE0 */     addiu $sp, $sp, -0x20
  /* 00A894 80009C94 AFA50024 */        sw $a1, 0x24($sp)
  /* 00A898 80009C98 00802825 */        or $a1, $a0, $zero
  /* 00A89C 80009C9C AFBF001C */        sw $ra, 0x1c($sp)
  /* 00A8A0 80009CA0 AFA40020 */        sw $a0, 0x20($sp)
  /* 00A8A4 80009CA4 00C03825 */        or $a3, $a2, $zero
  /* 00A8A8 80009CA8 93A60027 */       lbu $a2, 0x27($sp)
  /* 00A8AC 80009CAC 00002025 */        or $a0, $zero, $zero
  /* 00A8B0 80009CB0 0C0026D2 */       jal func_80009B48
  /* 00A8B4 80009CB4 AFA00010 */        sw $zero, 0x10($sp)
  /* 00A8B8 80009CB8 8FBF001C */        lw $ra, 0x1c($sp)
  /* 00A8BC 80009CBC 27BD0020 */     addiu $sp, $sp, 0x20
  /* 00A8C0 80009CC0 03E00008 */        jr $ra
  /* 00A8C4 80009CC4 00000000 */       nop 

glabel func_80009CC8
  /* 00A8C8 80009CC8 27BDFFE0 */     addiu $sp, $sp, -0x20
  /* 00A8CC 80009CCC AFA50024 */        sw $a1, 0x24($sp)
  /* 00A8D0 80009CD0 00802825 */        or $a1, $a0, $zero
  /* 00A8D4 80009CD4 AFBF001C */        sw $ra, 0x1c($sp)
  /* 00A8D8 80009CD8 AFA40020 */        sw $a0, 0x20($sp)
  /* 00A8DC 80009CDC 00C03825 */        or $a3, $a2, $zero
  /* 00A8E0 80009CE0 93A60027 */       lbu $a2, 0x27($sp)
  /* 00A8E4 80009CE4 24040001 */     addiu $a0, $zero, 1
  /* 00A8E8 80009CE8 0C0026D2 */       jal func_80009B48
  /* 00A8EC 80009CEC AFA00010 */        sw $zero, 0x10($sp)
  /* 00A8F0 80009CF0 8FBF001C */        lw $ra, 0x1c($sp)
  /* 00A8F4 80009CF4 27BD0020 */     addiu $sp, $sp, 0x20
  /* 00A8F8 80009CF8 03E00008 */        jr $ra
  /* 00A8FC 80009CFC 00000000 */       nop 

  /* 00A900 80009D00 27BDFFE0 */     addiu $sp, $sp, -0x20
  /* 00A904 80009D04 AFA50024 */        sw $a1, 0x24($sp)
  /* 00A908 80009D08 8FAE0024 */        lw $t6, 0x24($sp)
  /* 00A90C 80009D0C AFBF001C */        sw $ra, 0x1c($sp)
  /* 00A910 80009D10 AFA40020 */        sw $a0, 0x20($sp)
  /* 00A914 80009D14 00802825 */        or $a1, $a0, $zero
  /* 00A918 80009D18 8DC70010 */        lw $a3, 0x10($t6)
  /* 00A91C 80009D1C 91C6000C */       lbu $a2, 0xc($t6)
  /* 00A920 80009D20 24040002 */     addiu $a0, $zero, 2
  /* 00A924 80009D24 0C0026D2 */       jal func_80009B48
  /* 00A928 80009D28 AFAE0010 */        sw $t6, 0x10($sp)
  /* 00A92C 80009D2C 8FBF001C */        lw $ra, 0x1c($sp)
  /* 00A930 80009D30 27BD0020 */     addiu $sp, $sp, 0x20
  /* 00A934 80009D34 03E00008 */        jr $ra
  /* 00A938 80009D38 00000000 */       nop 

  /* 00A93C 80009D3C 27BDFFE0 */     addiu $sp, $sp, -0x20
  /* 00A940 80009D40 AFA50024 */        sw $a1, 0x24($sp)
  /* 00A944 80009D44 8FAE0024 */        lw $t6, 0x24($sp)
  /* 00A948 80009D48 AFBF001C */        sw $ra, 0x1c($sp)
  /* 00A94C 80009D4C AFA40020 */        sw $a0, 0x20($sp)
  /* 00A950 80009D50 00802825 */        or $a1, $a0, $zero
  /* 00A954 80009D54 8DC70010 */        lw $a3, 0x10($t6)
  /* 00A958 80009D58 91C6000C */       lbu $a2, 0xc($t6)
  /* 00A95C 80009D5C 24040003 */     addiu $a0, $zero, 3
  /* 00A960 80009D60 0C0026D2 */       jal func_80009B48
  /* 00A964 80009D64 AFAE0010 */        sw $t6, 0x10($sp)
  /* 00A968 80009D68 8FBF001C */        lw $ra, 0x1c($sp)
  /* 00A96C 80009D6C 27BD0020 */     addiu $sp, $sp, 0x20
  /* 00A970 80009D70 03E00008 */        jr $ra
  /* 00A974 80009D74 00000000 */       nop 

glabel func_80009D78
  /* 00A978 80009D78 27BDFFD8 */     addiu $sp, $sp, -0x28
  /* 00A97C 80009D7C AFA60030 */        sw $a2, 0x30($sp)
  /* 00A980 80009D80 30C600FF */      andi $a2, $a2, 0xff
  /* 00A984 80009D84 AFB00018 */        sw $s0, 0x18($sp)
  /* 00A988 80009D88 28C10040 */      slti $at, $a2, 0x40
  /* 00A98C 80009D8C 00808025 */        or $s0, $a0, $zero
  /* 00A990 80009D90 AFBF001C */        sw $ra, 0x1c($sp)
  /* 00A994 80009D94 AFA60024 */        sw $a2, 0x24($sp)
  /* 00A998 80009D98 14200008 */      bnez $at, .L80009DBC
  /* 00A99C 80009D9C 00C07025 */        or $t6, $a2, $zero
  /* 00A9A0 80009DA0 3C048004 */       lui $a0, %hi(D_8003DB64)
  /* 00A9A4 80009DA4 2484DB64 */     addiu $a0, $a0, %lo(D_8003DB64)
  /* 00A9A8 80009DA8 01C02825 */        or $a1, $t6, $zero
  /* 00A9AC 80009DAC 0C008D89 */       jal fatal_printf
  /* 00A9B0 80009DB0 8E060000 */        lw $a2, ($s0)
  .L80009DB4:
  /* 00A9B4 80009DB4 1000FFFF */         b .L80009DB4
  /* 00A9B8 80009DB8 00000000 */       nop 
  .L80009DBC:
  /* 00A9BC 80009DBC A206000D */        sb $a2, 0xd($s0)
  /* 00A9C0 80009DC0 AE070028 */        sw $a3, 0x28($s0)
  /* 00A9C4 80009DC4 AE05002C */        sw $a1, 0x2c($s0)
  /* 00A9C8 80009DC8 8FAF0038 */        lw $t7, 0x38($sp)
  /* 00A9CC 80009DCC 3C188004 */       lui $t8, %hi(D_8003B6E8)
  /* 00A9D0 80009DD0 AE0F0038 */        sw $t7, 0x38($s0)
  /* 00A9D4 80009DD4 8F18B6E8 */        lw $t8, %lo(D_8003B6E8)($t8)
  /* 00A9D8 80009DD8 2719FFFF */     addiu $t9, $t8, -1
  /* 00A9DC 80009DDC A219000E */        sb $t9, 0xe($s0)
  /* 00A9E0 80009DE0 8FBF001C */        lw $ra, 0x1c($sp)
  /* 00A9E4 80009DE4 8FB00018 */        lw $s0, 0x18($sp)
  /* 00A9E8 80009DE8 27BD0028 */     addiu $sp, $sp, 0x28
  /* 00A9EC 80009DEC 03E00008 */        jr $ra
  /* 00A9F0 80009DF0 00000000 */       nop 

glabel func_80009DF4
  /* 00A9F4 80009DF4 27BDFFE0 */     addiu $sp, $sp, -0x20
  /* 00A9F8 80009DF8 AFA60028 */        sw $a2, 0x28($sp)
  /* 00A9FC 80009DFC 30C600FF */      andi $a2, $a2, 0xff
  /* 00AA00 80009E00 14800003 */      bnez $a0, .L80009E10
  /* 00AA04 80009E04 AFBF001C */        sw $ra, 0x1c($sp)
  /* 00AA08 80009E08 3C048004 */       lui $a0, %hi(D_80046A54)
  /* 00AA0C 80009E0C 8C846A54 */        lw $a0, %lo(D_80046A54)($a0)
  .L80009E10:
  /* 00AA10 80009E10 8FAE0030 */        lw $t6, 0x30($sp)
  /* 00AA14 80009E14 AFA40020 */        sw $a0, 0x20($sp)
  /* 00AA18 80009E18 0C00275E */       jal func_80009D78
  /* 00AA1C 80009E1C AFAE0010 */        sw $t6, 0x10($sp)
  /* 00AA20 80009E20 0C001F00 */       jal func_80007C00
  /* 00AA24 80009E24 8FA40020 */        lw $a0, 0x20($sp)
  /* 00AA28 80009E28 8FBF001C */        lw $ra, 0x1c($sp)
  /* 00AA2C 80009E2C 27BD0020 */     addiu $sp, $sp, 0x20
  /* 00AA30 80009E30 03E00008 */        jr $ra
  /* 00AA34 80009E34 00000000 */       nop 

  /* 00AA38 80009E38 27BDFFE0 */     addiu $sp, $sp, -0x20
  /* 00AA3C 80009E3C AFA60028 */        sw $a2, 0x28($sp)
  /* 00AA40 80009E40 30C600FF */      andi $a2, $a2, 0xff
  /* 00AA44 80009E44 14800003 */      bnez $a0, .L80009E54
  /* 00AA48 80009E48 AFBF001C */        sw $ra, 0x1c($sp)
  /* 00AA4C 80009E4C 3C048004 */       lui $a0, %hi(D_80046A54)
  /* 00AA50 80009E50 8C846A54 */        lw $a0, %lo(D_80046A54)($a0)
  .L80009E54:
  /* 00AA54 80009E54 8FAE0030 */        lw $t6, 0x30($sp)
  /* 00AA58 80009E58 AFA40020 */        sw $a0, 0x20($sp)
  /* 00AA5C 80009E5C 0C00275E */       jal func_80009D78
  /* 00AA60 80009E60 AFAE0010 */        sw $t6, 0x10($sp)
  /* 00AA64 80009E64 0C001F1B */       jal func_80007C6C
  /* 00AA68 80009E68 8FA40020 */        lw $a0, 0x20($sp)
  /* 00AA6C 80009E6C 8FBF001C */        lw $ra, 0x1c($sp)
  /* 00AA70 80009E70 27BD0020 */     addiu $sp, $sp, 0x20
  /* 00AA74 80009E74 03E00008 */        jr $ra
  /* 00AA78 80009E78 00000000 */       nop 

  /* 00AA7C 80009E7C 27BDFFE0 */     addiu $sp, $sp, -0x20
  /* 00AA80 80009E80 AFBF001C */        sw $ra, 0x1c($sp)
  /* 00AA84 80009E84 AFA60028 */        sw $a2, 0x28($sp)
  /* 00AA88 80009E88 14800003 */      bnez $a0, .L80009E98
  /* 00AA8C 80009E8C AFA7002C */        sw $a3, 0x2c($sp)
  /* 00AA90 80009E90 3C048004 */       lui $a0, %hi(D_80046A54)
  /* 00AA94 80009E94 8C846A54 */        lw $a0, %lo(D_80046A54)($a0)
  .L80009E98:
  /* 00AA98 80009E98 8FAE002C */        lw $t6, 0x2c($sp)
  /* 00AA9C 80009E9C 8FAF0028 */        lw $t7, 0x28($sp)
  /* 00AAA0 80009EA0 91C6000D */       lbu $a2, 0xd($t6)
  /* 00AAA4 80009EA4 8DC70028 */        lw $a3, 0x28($t6)
  /* 00AAA8 80009EA8 AFA40020 */        sw $a0, 0x20($sp)
  /* 00AAAC 80009EAC 0C00275E */       jal func_80009D78
  /* 00AAB0 80009EB0 AFAF0010 */        sw $t7, 0x10($sp)
  /* 00AAB4 80009EB4 8FA40020 */        lw $a0, 0x20($sp)
  /* 00AAB8 80009EB8 0C001EE6 */       jal func_80007B98
  /* 00AABC 80009EBC 8FA5002C */        lw $a1, 0x2c($sp)
  /* 00AAC0 80009EC0 8FBF001C */        lw $ra, 0x1c($sp)
  /* 00AAC4 80009EC4 27BD0020 */     addiu $sp, $sp, 0x20
  /* 00AAC8 80009EC8 03E00008 */        jr $ra
  /* 00AACC 80009ECC 00000000 */       nop 

  /* 00AAD0 80009ED0 27BDFFE0 */     addiu $sp, $sp, -0x20
  /* 00AAD4 80009ED4 AFBF001C */        sw $ra, 0x1c($sp)
  /* 00AAD8 80009ED8 AFA60028 */        sw $a2, 0x28($sp)
  /* 00AADC 80009EDC 14800003 */      bnez $a0, .L80009EEC
  /* 00AAE0 80009EE0 AFA7002C */        sw $a3, 0x2c($sp)
  /* 00AAE4 80009EE4 3C048004 */       lui $a0, %hi(D_80046A54)
  /* 00AAE8 80009EE8 8C846A54 */        lw $a0, %lo(D_80046A54)($a0)
  .L80009EEC:
  /* 00AAEC 80009EEC 8FAE002C */        lw $t6, 0x2c($sp)
  /* 00AAF0 80009EF0 8FAF0028 */        lw $t7, 0x28($sp)
  /* 00AAF4 80009EF4 91C6000D */       lbu $a2, 0xd($t6)
  /* 00AAF8 80009EF8 8DC70028 */        lw $a3, 0x28($t6)
  /* 00AAFC 80009EFC AFA40020 */        sw $a0, 0x20($sp)
  /* 00AB00 80009F00 0C00275E */       jal func_80009D78
  /* 00AB04 80009F04 AFAF0010 */        sw $t7, 0x10($sp)
  /* 00AB08 80009F08 8FB8002C */        lw $t8, 0x2c($sp)
  /* 00AB0C 80009F0C 8FA40020 */        lw $a0, 0x20($sp)
  /* 00AB10 80009F10 0C001EE6 */       jal func_80007B98
  /* 00AB14 80009F14 8F050008 */        lw $a1, 8($t8)
  /* 00AB18 80009F18 8FBF001C */        lw $ra, 0x1c($sp)
  /* 00AB1C 80009F1C 27BD0020 */     addiu $sp, $sp, 0x20
  /* 00AB20 80009F20 03E00008 */        jr $ra
  /* 00AB24 80009F24 00000000 */       nop 

glabel func_80009F28
  /* 00AB28 80009F28 240E0040 */     addiu $t6, $zero, 0x40
  /* 00AB2C 80009F2C A08E000D */        sb $t6, 0xd($a0)
  /* 00AB30 80009F30 AC860028 */        sw $a2, 0x28($a0)
  /* 00AB34 80009F34 AC85002C */        sw $a1, 0x2c($a0)
  /* 00AB38 80009F38 8FB90014 */        lw $t9, 0x14($sp)
  /* 00AB3C 80009F3C 8FB80010 */        lw $t8, 0x10($sp)
  /* 00AB40 80009F40 24080000 */     addiu $t0, $zero, 0
  /* 00AB44 80009F44 AC990034 */        sw $t9, 0x34($a0)
  /* 00AB48 80009F48 AC980030 */        sw $t8, 0x30($a0)
  /* 00AB4C 80009F4C 8FAF0018 */        lw $t7, 0x18($sp)
  /* 00AB50 80009F50 24090000 */     addiu $t1, $zero, 0
  /* 00AB54 80009F54 AC890044 */        sw $t1, 0x44($a0)
  /* 00AB58 80009F58 AC880040 */        sw $t0, 0x40($a0)
  /* 00AB5C 80009F5C 3C0A8004 */       lui $t2, %hi(D_8003B6E8)
  /* 00AB60 80009F60 AC8F0038 */        sw $t7, 0x38($a0)
  /* 00AB64 80009F64 8D4AB6E8 */        lw $t2, %lo(D_8003B6E8)($t2)
  /* 00AB68 80009F68 254BFFFF */     addiu $t3, $t2, -1
  /* 00AB6C 80009F6C 03E00008 */        jr $ra
  /* 00AB70 80009F70 A08B000E */        sb $t3, 0xe($a0)

glabel func_80009F74
  /* 00AB74 80009F74 27BDFFD8 */     addiu $sp, $sp, -0x28
  /* 00AB78 80009F78 14800003 */      bnez $a0, .L80009F88
  /* 00AB7C 80009F7C AFBF0024 */        sw $ra, 0x24($sp)
  /* 00AB80 80009F80 3C048004 */       lui $a0, %hi(D_80046A54)
  /* 00AB84 80009F84 8C846A54 */        lw $a0, %lo(D_80046A54)($a0)
  .L80009F88:
  /* 00AB88 80009F88 8FAE0038 */        lw $t6, 0x38($sp)
  /* 00AB8C 80009F8C 8FAF003C */        lw $t7, 0x3c($sp)
  /* 00AB90 80009F90 8FB80040 */        lw $t8, 0x40($sp)
  /* 00AB94 80009F94 AFA40028 */        sw $a0, 0x28($sp)
  /* 00AB98 80009F98 AFAE0010 */        sw $t6, 0x10($sp)
  /* 00AB9C 80009F9C AFAF0014 */        sw $t7, 0x14($sp)
  /* 00ABA0 80009FA0 0C0027CA */       jal func_80009F28
  /* 00ABA4 80009FA4 AFB80018 */        sw $t8, 0x18($sp)
  /* 00ABA8 80009FA8 0C001F00 */       jal func_80007C00
  /* 00ABAC 80009FAC 8FA40028 */        lw $a0, 0x28($sp)
  /* 00ABB0 80009FB0 8FBF0024 */        lw $ra, 0x24($sp)
  /* 00ABB4 80009FB4 27BD0028 */     addiu $sp, $sp, 0x28
  /* 00ABB8 80009FB8 03E00008 */        jr $ra
  /* 00ABBC 80009FBC 00000000 */       nop 

  /* 00ABC0 80009FC0 27BDFFD8 */     addiu $sp, $sp, -0x28
  /* 00ABC4 80009FC4 14800003 */      bnez $a0, .L80009FD4
  /* 00ABC8 80009FC8 AFBF0024 */        sw $ra, 0x24($sp)
  /* 00ABCC 80009FCC 3C048004 */       lui $a0, %hi(D_80046A54)
  /* 00ABD0 80009FD0 8C846A54 */        lw $a0, %lo(D_80046A54)($a0)
  .L80009FD4:
  /* 00ABD4 80009FD4 8FAE0038 */        lw $t6, 0x38($sp)
  /* 00ABD8 80009FD8 8FAF003C */        lw $t7, 0x3c($sp)
  /* 00ABDC 80009FDC 8FB80040 */        lw $t8, 0x40($sp)
  /* 00ABE0 80009FE0 AFA40028 */        sw $a0, 0x28($sp)
  /* 00ABE4 80009FE4 AFAE0010 */        sw $t6, 0x10($sp)
  /* 00ABE8 80009FE8 AFAF0014 */        sw $t7, 0x14($sp)
  /* 00ABEC 80009FEC 0C0027CA */       jal func_80009F28
  /* 00ABF0 80009FF0 AFB80018 */        sw $t8, 0x18($sp)
  /* 00ABF4 80009FF4 0C001F1B */       jal func_80007C6C
  /* 00ABF8 80009FF8 8FA40028 */        lw $a0, 0x28($sp)
  /* 00ABFC 80009FFC 8FBF0024 */        lw $ra, 0x24($sp)
  /* 00AC00 8000A000 27BD0028 */     addiu $sp, $sp, 0x28
  /* 00AC04 8000A004 03E00008 */        jr $ra
  /* 00AC08 8000A008 00000000 */       nop 

  /* 00AC0C 8000A00C 27BDFFD8 */     addiu $sp, $sp, -0x28
  /* 00AC10 8000A010 AFBF0024 */        sw $ra, 0x24($sp)
  /* 00AC14 8000A014 AFA60030 */        sw $a2, 0x30($sp)
  /* 00AC18 8000A018 14800003 */      bnez $a0, .L8000A028
  /* 00AC1C 8000A01C AFA70034 */        sw $a3, 0x34($sp)
  /* 00AC20 8000A020 3C048004 */       lui $a0, %hi(D_80046A54)
  /* 00AC24 8000A024 8C846A54 */        lw $a0, %lo(D_80046A54)($a0)
  .L8000A028:
  /* 00AC28 8000A028 8FAE003C */        lw $t6, 0x3c($sp)
  /* 00AC2C 8000A02C 8FB80030 */        lw $t8, 0x30($sp)
  /* 00AC30 8000A030 8FB90034 */        lw $t9, 0x34($sp)
  /* 00AC34 8000A034 8DC60028 */        lw $a2, 0x28($t6)
  /* 00AC38 8000A038 8FAF0038 */        lw $t7, 0x38($sp)
  /* 00AC3C 8000A03C AFA40028 */        sw $a0, 0x28($sp)
  /* 00AC40 8000A040 AFB80010 */        sw $t8, 0x10($sp)
  /* 00AC44 8000A044 AFB90014 */        sw $t9, 0x14($sp)
  /* 00AC48 8000A048 0C0027CA */       jal func_80009F28
  /* 00AC4C 8000A04C AFAF0018 */        sw $t7, 0x18($sp)
  /* 00AC50 8000A050 8FA40028 */        lw $a0, 0x28($sp)
  /* 00AC54 8000A054 0C001EE6 */       jal func_80007B98
  /* 00AC58 8000A058 8FA5003C */        lw $a1, 0x3c($sp)
  /* 00AC5C 8000A05C 8FBF0024 */        lw $ra, 0x24($sp)
  /* 00AC60 8000A060 27BD0028 */     addiu $sp, $sp, 0x28
  /* 00AC64 8000A064 03E00008 */        jr $ra
  /* 00AC68 8000A068 00000000 */       nop 

  /* 00AC6C 8000A06C 27BDFFD8 */     addiu $sp, $sp, -0x28
  /* 00AC70 8000A070 AFBF0024 */        sw $ra, 0x24($sp)
  /* 00AC74 8000A074 AFA60030 */        sw $a2, 0x30($sp)
  /* 00AC78 8000A078 14800003 */      bnez $a0, .L8000A088
  /* 00AC7C 8000A07C AFA70034 */        sw $a3, 0x34($sp)
  /* 00AC80 8000A080 3C048004 */       lui $a0, %hi(D_80046A54)
  /* 00AC84 8000A084 8C846A54 */        lw $a0, %lo(D_80046A54)($a0)
  .L8000A088:
  /* 00AC88 8000A088 8FAE003C */        lw $t6, 0x3c($sp)
  /* 00AC8C 8000A08C 8FB80030 */        lw $t8, 0x30($sp)
  /* 00AC90 8000A090 8FB90034 */        lw $t9, 0x34($sp)
  /* 00AC94 8000A094 8DC60028 */        lw $a2, 0x28($t6)
  /* 00AC98 8000A098 8FAF0038 */        lw $t7, 0x38($sp)
  /* 00AC9C 8000A09C AFA40028 */        sw $a0, 0x28($sp)
  /* 00ACA0 8000A0A0 AFB80010 */        sw $t8, 0x10($sp)
  /* 00ACA4 8000A0A4 AFB90014 */        sw $t9, 0x14($sp)
  /* 00ACA8 8000A0A8 0C0027CA */       jal func_80009F28
  /* 00ACAC 8000A0AC AFAF0018 */        sw $t7, 0x18($sp)
  /* 00ACB0 8000A0B0 8FA8003C */        lw $t0, 0x3c($sp)
  /* 00ACB4 8000A0B4 8FA40028 */        lw $a0, 0x28($sp)
  /* 00ACB8 8000A0B8 0C001EE6 */       jal func_80007B98
  /* 00ACBC 8000A0BC 8D050008 */        lw $a1, 8($t0)
  /* 00ACC0 8000A0C0 8FBF0024 */        lw $ra, 0x24($sp)
  /* 00ACC4 8000A0C4 27BD0028 */     addiu $sp, $sp, 0x28
  /* 00ACC8 8000A0C8 03E00008 */        jr $ra
  /* 00ACCC 8000A0CC 00000000 */       nop 

glabel func_8000A0D0
  /* 00ACD0 8000A0D0 27BDFFE0 */     addiu $sp, $sp, -0x20
  /* 00ACD4 8000A0D4 AFA50024 */        sw $a1, 0x24($sp)
  /* 00ACD8 8000A0D8 30A500FF */      andi $a1, $a1, 0xff
  /* 00ACDC 8000A0DC 28A10040 */      slti $at, $a1, 0x40
  /* 00ACE0 8000A0E0 AFBF0014 */        sw $ra, 0x14($sp)
  /* 00ACE4 8000A0E4 AFA60028 */        sw $a2, 0x28($sp)
  /* 00ACE8 8000A0E8 00803825 */        or $a3, $a0, $zero
  /* 00ACEC 8000A0EC AFA5001C */        sw $a1, 0x1c($sp)
  /* 00ACF0 8000A0F0 14200008 */      bnez $at, .L8000A114
  /* 00ACF4 8000A0F4 00A07025 */        or $t6, $a1, $zero
  /* 00ACF8 8000A0F8 3C048004 */       lui $a0, %hi(D_8003DBA8)
  /* 00ACFC 8000A0FC 2484DBA8 */     addiu $a0, $a0, %lo(D_8003DBA8)
  /* 00AD00 8000A100 01C02825 */        or $a1, $t6, $zero
  /* 00AD04 8000A104 0C008D89 */       jal fatal_printf
  /* 00AD08 8000A108 8CE60000 */        lw $a2, ($a3)
  .L8000A10C:
  /* 00AD0C 8000A10C 1000FFFF */         b .L8000A10C
  /* 00AD10 8000A110 00000000 */       nop 
  .L8000A114:
  /* 00AD14 8000A114 00E02025 */        or $a0, $a3, $zero
  /* 00AD18 8000A118 A3A50027 */        sb $a1, 0x27($sp)
  /* 00AD1C 8000A11C 0C001F3D */       jal func_80007CF4
  /* 00AD20 8000A120 AFA70020 */        sw $a3, 0x20($sp)
  /* 00AD24 8000A124 93A50027 */       lbu $a1, 0x27($sp)
  /* 00AD28 8000A128 8FA40020 */        lw $a0, 0x20($sp)
  /* 00AD2C 8000A12C A085000D */        sb $a1, 0xd($a0)
  /* 00AD30 8000A130 8FAF0028 */        lw $t7, 0x28($sp)
  /* 00AD34 8000A134 0C001F00 */       jal func_80007C00
  /* 00AD38 8000A138 AC8F0028 */        sw $t7, 0x28($a0)
  /* 00AD3C 8000A13C 8FBF0014 */        lw $ra, 0x14($sp)
  /* 00AD40 8000A140 27BD0020 */     addiu $sp, $sp, 0x20
  /* 00AD44 8000A144 03E00008 */        jr $ra
  /* 00AD48 8000A148 00000000 */       nop 

glabel func_8000A14C
  /* 00AD4C 8000A14C 27BDFFE0 */     addiu $sp, $sp, -0x20
  /* 00AD50 8000A150 AFA50024 */        sw $a1, 0x24($sp)
  /* 00AD54 8000A154 30A500FF */      andi $a1, $a1, 0xff
  /* 00AD58 8000A158 28A10040 */      slti $at, $a1, 0x40
  /* 00AD5C 8000A15C AFBF0014 */        sw $ra, 0x14($sp)
  /* 00AD60 8000A160 AFA60028 */        sw $a2, 0x28($sp)
  /* 00AD64 8000A164 00803825 */        or $a3, $a0, $zero
  /* 00AD68 8000A168 AFA5001C */        sw $a1, 0x1c($sp)
  /* 00AD6C 8000A16C 14200008 */      bnez $at, .L8000A190
  /* 00AD70 8000A170 00A07025 */        or $t6, $a1, $zero
  /* 00AD74 8000A174 3C048004 */       lui $a0, %hi(D_8003DBE4)
  /* 00AD78 8000A178 2484DBE4 */     addiu $a0, $a0, %lo(D_8003DBE4)
  /* 00AD7C 8000A17C 01C02825 */        or $a1, $t6, $zero
  /* 00AD80 8000A180 0C008D89 */       jal fatal_printf
  /* 00AD84 8000A184 8CE60000 */        lw $a2, ($a3)
  .L8000A188:
  /* 00AD88 8000A188 1000FFFF */         b .L8000A188
  /* 00AD8C 8000A18C 00000000 */       nop 
  .L8000A190:
  /* 00AD90 8000A190 00E02025 */        or $a0, $a3, $zero
  /* 00AD94 8000A194 A3A50027 */        sb $a1, 0x27($sp)
  /* 00AD98 8000A198 0C001F3D */       jal func_80007CF4
  /* 00AD9C 8000A19C AFA70020 */        sw $a3, 0x20($sp)
  /* 00ADA0 8000A1A0 93A50027 */       lbu $a1, 0x27($sp)
  /* 00ADA4 8000A1A4 8FA40020 */        lw $a0, 0x20($sp)
  /* 00ADA8 8000A1A8 A085000D */        sb $a1, 0xd($a0)
  /* 00ADAC 8000A1AC 8FAF0028 */        lw $t7, 0x28($sp)
  /* 00ADB0 8000A1B0 0C001F1B */       jal func_80007C6C
  /* 00ADB4 8000A1B4 AC8F0028 */        sw $t7, 0x28($a0)
  /* 00ADB8 8000A1B8 8FBF0014 */        lw $ra, 0x14($sp)
  /* 00ADBC 8000A1BC 27BD0020 */     addiu $sp, $sp, 0x20
  /* 00ADC0 8000A1C0 03E00008 */        jr $ra
  /* 00ADC4 8000A1C4 00000000 */       nop 

  /* 00ADC8 8000A1C8 27BDFFE8 */     addiu $sp, $sp, -0x18
  /* 00ADCC 8000A1CC AFBF0014 */        sw $ra, 0x14($sp)
  /* 00ADD0 8000A1D0 AFA40018 */        sw $a0, 0x18($sp)
  /* 00ADD4 8000A1D4 0C001F3D */       jal func_80007CF4
  /* 00ADD8 8000A1D8 AFA5001C */        sw $a1, 0x1c($sp)
  /* 00ADDC 8000A1DC 8FA5001C */        lw $a1, 0x1c($sp)
  /* 00ADE0 8000A1E0 8FA40018 */        lw $a0, 0x18($sp)
  /* 00ADE4 8000A1E4 90AE000D */       lbu $t6, 0xd($a1)
  /* 00ADE8 8000A1E8 A08E000D */        sb $t6, 0xd($a0)
  /* 00ADEC 8000A1EC 8CAF0028 */        lw $t7, 0x28($a1)
  /* 00ADF0 8000A1F0 0C001EE6 */       jal func_80007B98
  /* 00ADF4 8000A1F4 AC8F0028 */        sw $t7, 0x28($a0)
  /* 00ADF8 8000A1F8 8FBF0014 */        lw $ra, 0x14($sp)
  /* 00ADFC 8000A1FC 27BD0018 */     addiu $sp, $sp, 0x18
  /* 00AE00 8000A200 03E00008 */        jr $ra
  /* 00AE04 8000A204 00000000 */       nop 

  /* 00AE08 8000A208 27BDFFE8 */     addiu $sp, $sp, -0x18
  /* 00AE0C 8000A20C AFBF0014 */        sw $ra, 0x14($sp)
  /* 00AE10 8000A210 AFA40018 */        sw $a0, 0x18($sp)
  /* 00AE14 8000A214 0C001F3D */       jal func_80007CF4
  /* 00AE18 8000A218 AFA5001C */        sw $a1, 0x1c($sp)
  /* 00AE1C 8000A21C 8FA6001C */        lw $a2, 0x1c($sp)
  /* 00AE20 8000A220 8FA40018 */        lw $a0, 0x18($sp)
  /* 00AE24 8000A224 90CE000D */       lbu $t6, 0xd($a2)
  /* 00AE28 8000A228 A08E000D */        sb $t6, 0xd($a0)
  /* 00AE2C 8000A22C 8CCF0028 */        lw $t7, 0x28($a2)
  /* 00AE30 8000A230 AC8F0028 */        sw $t7, 0x28($a0)
  /* 00AE34 8000A234 0C001EE6 */       jal func_80007B98
  /* 00AE38 8000A238 8CC50024 */        lw $a1, 0x24($a2)
  /* 00AE3C 8000A23C 8FBF0014 */        lw $ra, 0x14($sp)
  /* 00AE40 8000A240 27BD0018 */     addiu $sp, $sp, 0x18
  /* 00AE44 8000A244 03E00008 */        jr $ra
  /* 00AE48 8000A248 00000000 */       nop 

glabel func_8000A24C
  /* 00AE4C 8000A24C 27BDFFE8 */     addiu $sp, $sp, -0x18
  /* 00AE50 8000A250 AFBF0014 */        sw $ra, 0x14($sp)
  /* 00AE54 8000A254 AFA5001C */        sw $a1, 0x1c($sp)
  /* 00AE58 8000A258 0C001F3D */       jal func_80007CF4
  /* 00AE5C 8000A25C AFA40018 */        sw $a0, 0x18($sp)
  /* 00AE60 8000A260 8FA40018 */        lw $a0, 0x18($sp)
  /* 00AE64 8000A264 8FAE001C */        lw $t6, 0x1c($sp)
  /* 00AE68 8000A268 0C001F00 */       jal func_80007C00
  /* 00AE6C 8000A26C AC8E0028 */        sw $t6, 0x28($a0)
  /* 00AE70 8000A270 8FBF0014 */        lw $ra, 0x14($sp)
  /* 00AE74 8000A274 27BD0018 */     addiu $sp, $sp, 0x18
  /* 00AE78 8000A278 03E00008 */        jr $ra
  /* 00AE7C 8000A27C 00000000 */       nop 

  /* 00AE80 8000A280 27BDFFE8 */     addiu $sp, $sp, -0x18
  /* 00AE84 8000A284 AFBF0014 */        sw $ra, 0x14($sp)
  /* 00AE88 8000A288 AFA5001C */        sw $a1, 0x1c($sp)
  /* 00AE8C 8000A28C 0C001F3D */       jal func_80007CF4
  /* 00AE90 8000A290 AFA40018 */        sw $a0, 0x18($sp)
  /* 00AE94 8000A294 8FA40018 */        lw $a0, 0x18($sp)
  /* 00AE98 8000A298 8FAE001C */        lw $t6, 0x1c($sp)
  /* 00AE9C 8000A29C 0C001F1B */       jal func_80007C6C
  /* 00AEA0 8000A2A0 AC8E0028 */        sw $t6, 0x28($a0)
  /* 00AEA4 8000A2A4 8FBF0014 */        lw $ra, 0x14($sp)
  /* 00AEA8 8000A2A8 27BD0018 */     addiu $sp, $sp, 0x18
  /* 00AEAC 8000A2AC 03E00008 */        jr $ra
  /* 00AEB0 8000A2B0 00000000 */       nop 

glabel func_8000A2B4
  /* 00AEB4 8000A2B4 27BDFFE8 */     addiu $sp, $sp, -0x18
  /* 00AEB8 8000A2B8 AFBF0014 */        sw $ra, 0x14($sp)
  /* 00AEBC 8000A2BC AFA5001C */        sw $a1, 0x1c($sp)
  /* 00AEC0 8000A2C0 0C001F3D */       jal func_80007CF4
  /* 00AEC4 8000A2C4 AFA40018 */        sw $a0, 0x18($sp)
  /* 00AEC8 8000A2C8 8FA5001C */        lw $a1, 0x1c($sp)
  /* 00AECC 8000A2CC 8FA40018 */        lw $a0, 0x18($sp)
  /* 00AED0 8000A2D0 8CAE0028 */        lw $t6, 0x28($a1)
  /* 00AED4 8000A2D4 0C001EE6 */       jal func_80007B98
  /* 00AED8 8000A2D8 AC8E0028 */        sw $t6, 0x28($a0)
  /* 00AEDC 8000A2DC 8FBF0014 */        lw $ra, 0x14($sp)
  /* 00AEE0 8000A2E0 27BD0018 */     addiu $sp, $sp, 0x18
  /* 00AEE4 8000A2E4 03E00008 */        jr $ra
  /* 00AEE8 8000A2E8 00000000 */       nop 

  /* 00AEEC 8000A2EC 27BDFFE8 */     addiu $sp, $sp, -0x18
  /* 00AEF0 8000A2F0 AFBF0014 */        sw $ra, 0x14($sp)
  /* 00AEF4 8000A2F4 AFA5001C */        sw $a1, 0x1c($sp)
  /* 00AEF8 8000A2F8 0C001F3D */       jal func_80007CF4
  /* 00AEFC 8000A2FC AFA40018 */        sw $a0, 0x18($sp)
  /* 00AF00 8000A300 8FA2001C */        lw $v0, 0x1c($sp)
  /* 00AF04 8000A304 8FA40018 */        lw $a0, 0x18($sp)
  /* 00AF08 8000A308 8C4E0028 */        lw $t6, 0x28($v0)
  /* 00AF0C 8000A30C AC8E0028 */        sw $t6, 0x28($a0)
  /* 00AF10 8000A310 0C001EE6 */       jal func_80007B98
  /* 00AF14 8000A314 8C450008 */        lw $a1, 8($v0)
  /* 00AF18 8000A318 8FBF0014 */        lw $ra, 0x14($sp)
  /* 00AF1C 8000A31C 27BD0018 */     addiu $sp, $sp, 0x18
  /* 00AF20 8000A320 03E00008 */        jr $ra
  /* 00AF24 8000A324 00000000 */       nop 

glabel func_8000A328
  /* 00AF28 8000A328 3C018004 */       lui $at, %hi(D_80046A12)
  /* 00AF2C 8000A32C 03E00008 */        jr $ra
  /* 00AF30 8000A330 A4246A12 */        sh $a0, %lo(D_80046A12)($at)

glabel func_8000A334
  /* 00AF34 8000A334 3C028004 */       lui $v0, %hi(D_80046A12)
  /* 00AF38 8000A338 03E00008 */        jr $ra
  /* 00AF3C 8000A33C 84426A12 */        lh $v0, %lo(D_80046A12)($v0)

glabel func_8000A340
  /* 00AF40 8000A340 27BDFFD8 */     addiu $sp, $sp, -0x28
  /* 00AF44 8000A344 AFB30020 */        sw $s3, 0x20($sp)
  /* 00AF48 8000A348 3C138004 */       lui $s3, %hi(D_80046A58)
  /* 00AF4C 8000A34C 26736A58 */     addiu $s3, $s3, %lo(D_80046A58)
  /* 00AF50 8000A350 AE600000 */        sw $zero, ($s3) # D_80046A58 + 0
  /* 00AF54 8000A354 3C038004 */       lui $v1, %hi(D_8003B6E8)
  /* 00AF58 8000A358 8C63B6E8 */        lw $v1, %lo(D_8003B6E8)($v1)
  /* 00AF5C 8000A35C 3C018004 */       lui $at, %hi(D_80046A5C)
  /* 00AF60 8000A360 3C028004 */       lui $v0, %hi(D_80046A88)
  /* 00AF64 8000A364 3C048004 */       lui $a0, %hi(D_80046F88)
  /* 00AF68 8000A368 AFBF0024 */        sw $ra, 0x24($sp)
  /* 00AF6C 8000A36C AFB2001C */        sw $s2, 0x1c($sp)
  /* 00AF70 8000A370 AFB10018 */        sw $s1, 0x18($sp)
  /* 00AF74 8000A374 AFB00014 */        sw $s0, 0x14($sp)
  /* 00AF78 8000A378 AC206A5C */        sw $zero, %lo(D_80046A5C)($at)
  /* 00AF7C 8000A37C 24846F88 */     addiu $a0, $a0, %lo(D_80046F88)
  /* 00AF80 8000A380 24426A88 */     addiu $v0, $v0, %lo(D_80046A88)
  /* 00AF84 8000A384 2463FFFF */     addiu $v1, $v1, -1
  .L8000A388:
  /* 00AF88 8000A388 24420050 */     addiu $v0, $v0, 0x50
  /* 00AF8C 8000A38C A043FFC4 */        sb $v1, -0x3c($v0) # D_80046A88 + -60
  /* 00AF90 8000A390 A043FFD8 */        sb $v1, -0x28($v0) # D_80046A88 + -40
  /* 00AF94 8000A394 A043FFEC */        sb $v1, -0x14($v0) # D_80046A88 + -20
  /* 00AF98 8000A398 1444FFFB */       bne $v0, $a0, .L8000A388
  /* 00AF9C 8000A39C A043FFB0 */        sb $v1, -0x50($v0) # D_80046A88 + -80
  /* 00AFA0 8000A3A0 3C108004 */       lui $s0, %hi(D_80046900)
  /* 00AFA4 8000A3A4 8E106900 */        lw $s0, %lo(D_80046900)($s0)
  /* 00AFA8 8000A3A8 3C118004 */       lui $s1, %hi(D_8003B874)
  /* 00AFAC 8000A3AC 2631B874 */     addiu $s1, $s1, %lo(D_8003B874)
  /* 00AFB0 8000A3B0 1200000F */      beqz $s0, .L8000A3F0
  /* 00AFB4 8000A3B4 24120003 */     addiu $s2, $zero, 3
  /* 00AFB8 8000A3B8 8E0E007C */        lw $t6, 0x7c($s0)
  .L8000A3BC:
  /* 00AFBC 8000A3BC 31CF0001 */      andi $t7, $t6, 1
  /* 00AFC0 8000A3C0 55E00009 */      bnel $t7, $zero, .L8000A3E8
  /* 00AFC4 8000A3C4 8E100020 */        lw $s0, 0x20($s0)
  /* 00AFC8 8000A3C8 AE320000 */        sw $s2, ($s1) # D_8003B874 + 0
  /* 00AFCC 8000A3CC AE700000 */        sw $s0, ($s3) # D_80046A58 + 0
  /* 00AFD0 8000A3D0 8E19002C */        lw $t9, 0x2c($s0)
  /* 00AFD4 8000A3D4 02002025 */        or $a0, $s0, $zero
  /* 00AFD8 8000A3D8 0320F809 */      jalr $t9
  /* 00AFDC 8000A3DC 00000000 */       nop 
  /* 00AFE0 8000A3E0 AE200000 */        sw $zero, ($s1) # D_8003B874 + 0
  /* 00AFE4 8000A3E4 8E100020 */        lw $s0, 0x20($s0)
  .L8000A3E8:
  /* 00AFE8 8000A3E8 5600FFF4 */      bnel $s0, $zero, .L8000A3BC
  /* 00AFEC 8000A3EC 8E0E007C */        lw $t6, 0x7c($s0)
  .L8000A3F0:
  /* 00AFF0 8000A3F0 8FBF0024 */        lw $ra, 0x24($sp)
  /* 00AFF4 8000A3F4 8FB00014 */        lw $s0, 0x14($sp)
  /* 00AFF8 8000A3F8 8FB10018 */        lw $s1, 0x18($sp)
  /* 00AFFC 8000A3FC 8FB2001C */        lw $s2, 0x1c($sp)
  /* 00B000 8000A400 8FB30020 */        lw $s3, 0x20($sp)
  /* 00B004 8000A404 03E00008 */        jr $ra
  /* 00B008 8000A408 27BD0028 */     addiu $sp, $sp, 0x28

glabel func_8000A40C
  /* 00B00C 8000A40C 240E0001 */     addiu $t6, $zero, 1
  /* 00B010 8000A410 3C018004 */       lui $at, %hi(D_8003B874)
  /* 00B014 8000A414 27BDFFE0 */     addiu $sp, $sp, -0x20
  /* 00B018 8000A418 AC2EB874 */        sw $t6, %lo(D_8003B874)($at)
  /* 00B01C 8000A41C 3C018004 */       lui $at, %hi(D_80046A54)
  /* 00B020 8000A420 AFBF0014 */        sw $ra, 0x14($sp)
  /* 00B024 8000A424 AC246A54 */        sw $a0, %lo(D_80046A54)($at)
  /* 00B028 8000A428 AFA40020 */        sw $a0, 0x20($sp)
  /* 00B02C 8000A42C 8C990014 */        lw $t9, 0x14($a0)
  /* 00B030 8000A430 0320F809 */      jalr $t9
  /* 00B034 8000A434 00000000 */       nop 
  /* 00B038 8000A438 8FA40020 */        lw $a0, 0x20($sp)
  /* 00B03C 8000A43C 3C018004 */       lui $at, %hi(D_80046A54)
  /* 00B040 8000A440 3C038004 */       lui $v1, %hi(D_80046A64)
  /* 00B044 8000A444 8C850004 */        lw $a1, 4($a0)
  /* 00B048 8000A448 AC206A54 */        sw $zero, %lo(D_80046A54)($at)
  /* 00B04C 8000A44C 3C018004 */       lui $at, %hi(D_8003B874)
  /* 00B050 8000A450 24636A64 */     addiu $v1, $v1, %lo(D_80046A64)
  /* 00B054 8000A454 AC20B874 */        sw $zero, %lo(D_8003B874)($at)
  /* 00B058 8000A458 8C620000 */        lw $v0, ($v1) # D_80046A64 + 0
  /* 00B05C 8000A45C 24010002 */     addiu $at, $zero, 2
  /* 00B060 8000A460 5040000A */      beql $v0, $zero, .L8000A48C
  /* 00B064 8000A464 8FBF0014 */        lw $ra, 0x14($sp)
  /* 00B068 8000A468 50410004 */      beql $v0, $at, .L8000A47C
  /* 00B06C 8000A46C AC600000 */        sw $zero, ($v1) # D_80046A64 + 0
  /* 00B070 8000A470 10000005 */         b .L8000A488
  /* 00B074 8000A474 AC600000 */        sw $zero, ($v1) # D_80046A64 + 0
  /* 00B078 8000A478 AC600000 */        sw $zero, ($v1) # D_80046A64 + 0
  .L8000A47C:
  /* 00B07C 8000A47C 0C0026A1 */       jal func_80009A84
  /* 00B080 8000A480 AFA5001C */        sw $a1, 0x1c($sp)
  /* 00B084 8000A484 8FA5001C */        lw $a1, 0x1c($sp)
  .L8000A488:
  /* 00B088 8000A488 8FBF0014 */        lw $ra, 0x14($sp)
  .L8000A48C:
  /* 00B08C 8000A48C 27BD0020 */     addiu $sp, $sp, 0x20
  /* 00B090 8000A490 00A01025 */        or $v0, $a1, $zero
  /* 00B094 8000A494 03E00008 */        jr $ra
  /* 00B098 8000A498 00000000 */       nop 

glabel func_8000A49C
  /* 00B09C 8000A49C 27BDFFE0 */     addiu $sp, $sp, -0x20
  /* 00B0A0 8000A4A0 240E0002 */     addiu $t6, $zero, 2
  /* 00B0A4 8000A4A4 3C018004 */       lui $at, %hi(D_8003B874)
  /* 00B0A8 8000A4A8 AFBF0014 */        sw $ra, 0x14($sp)
  /* 00B0AC 8000A4AC AC2EB874 */        sw $t6, %lo(D_8003B874)($at)
  /* 00B0B0 8000A4B0 8C8F0018 */        lw $t7, 0x18($a0)
  /* 00B0B4 8000A4B4 3C018004 */       lui $at, %hi(D_80046A54)
  /* 00B0B8 8000A4B8 00803825 */        or $a3, $a0, $zero
  /* 00B0BC 8000A4BC AC2F6A54 */        sw $t7, %lo(D_80046A54)($at)
  /* 00B0C0 8000A4C0 3C018004 */       lui $at, %hi(D_80046A60)
  /* 00B0C4 8000A4C4 AC246A60 */        sw $a0, %lo(D_80046A60)($at)
  /* 00B0C8 8000A4C8 90820014 */       lbu $v0, 0x14($a0)
  /* 00B0CC 8000A4CC 24010001 */     addiu $at, $zero, 1
  /* 00B0D0 8000A4D0 50400006 */      beql $v0, $zero, .L8000A4EC
  /* 00B0D4 8000A4D4 8CE4001C */        lw $a0, 0x1c($a3)
  /* 00B0D8 8000A4D8 5041000F */      beql $v0, $at, .L8000A518
  /* 00B0DC 8000A4DC 8CE40018 */        lw $a0, 0x18($a3)
  /* 00B0E0 8000A4E0 10000013 */         b .L8000A530
  /* 00B0E4 8000A4E4 8CE30008 */        lw $v1, 8($a3)
  /* 00B0E8 8000A4E8 8CE4001C */        lw $a0, 0x1c($a3)
  .L8000A4EC:
  /* 00B0EC 8000A4EC AFA70020 */        sw $a3, 0x20($sp)
  /* 00B0F0 8000A4F0 0C00E464 */       jal osStartThread
  /* 00B0F4 8000A4F4 24840008 */     addiu $a0, $a0, 8
  /* 00B0F8 8000A4F8 3C048004 */       lui $a0, %hi(D_80046A70)
  /* 00B0FC 8000A4FC 24846A70 */     addiu $a0, $a0, %lo(D_80046A70)
  /* 00B100 8000A500 00002825 */        or $a1, $zero, $zero
  /* 00B104 8000A504 0C00C084 */       jal osRecvMesg
  /* 00B108 8000A508 24060001 */     addiu $a2, $zero, 1
  /* 00B10C 8000A50C 10000007 */         b .L8000A52C
  /* 00B110 8000A510 8FA70020 */        lw $a3, 0x20($sp)
  /* 00B114 8000A514 8CE40018 */        lw $a0, 0x18($a3)
  .L8000A518:
  /* 00B118 8000A518 AFA70020 */        sw $a3, 0x20($sp)
  /* 00B11C 8000A51C 8CF9001C */        lw $t9, 0x1c($a3)
  /* 00B120 8000A520 0320F809 */      jalr $t9
  /* 00B124 8000A524 00000000 */       nop 
  /* 00B128 8000A528 8FA70020 */        lw $a3, 0x20($sp)
  .L8000A52C:
  /* 00B12C 8000A52C 8CE30008 */        lw $v1, 8($a3)
  .L8000A530:
  /* 00B130 8000A530 3C018004 */       lui $at, %hi(D_80046A54)
  /* 00B134 8000A534 AC206A54 */        sw $zero, %lo(D_80046A54)($at)
  /* 00B138 8000A538 3C018004 */       lui $at, %hi(D_80046A60)
  /* 00B13C 8000A53C AC206A60 */        sw $zero, %lo(D_80046A60)($at)
  /* 00B140 8000A540 3C058004 */       lui $a1, %hi(D_80046A64)
  /* 00B144 8000A544 3C018004 */       lui $at, %hi(D_8003B874)
  /* 00B148 8000A548 24A56A64 */     addiu $a1, $a1, %lo(D_80046A64)
  /* 00B14C 8000A54C AC20B874 */        sw $zero, %lo(D_8003B874)($at)
  /* 00B150 8000A550 8CA20000 */        lw $v0, ($a1) # D_80046A64 + 0
  /* 00B154 8000A554 24010001 */     addiu $at, $zero, 1
  /* 00B158 8000A558 5040001E */      beql $v0, $zero, .L8000A5D4
  /* 00B15C 8000A55C 8FBF0014 */        lw $ra, 0x14($sp)
  /* 00B160 8000A560 10410017 */       beq $v0, $at, .L8000A5C0
  /* 00B164 8000A564 00E02025 */        or $a0, $a3, $zero
  /* 00B168 8000A568 24010002 */     addiu $at, $zero, 2
  /* 00B16C 8000A56C 10410003 */       beq $v0, $at, .L8000A57C
  /* 00B170 8000A570 00000000 */       nop 
  /* 00B174 8000A574 10000016 */         b .L8000A5D0
  /* 00B178 8000A578 ACA00000 */        sw $zero, ($a1) # D_80046A64 + 0
  .L8000A57C:
  /* 00B17C 8000A57C 1060000B */      beqz $v1, .L8000A5AC
  /* 00B180 8000A580 ACA00000 */        sw $zero, ($a1) # D_80046A64 + 0
  /* 00B184 8000A584 8CE20018 */        lw $v0, 0x18($a3)
  /* 00B188 8000A588 8C780018 */        lw $t8, 0x18($v1)
  /* 00B18C 8000A58C 54580008 */      bnel $v0, $t8, .L8000A5B0
  /* 00B190 8000A590 8CE40018 */        lw $a0, 0x18($a3)
  /* 00B194 8000A594 8C630008 */        lw $v1, 8($v1)
  .L8000A598:
  /* 00B198 8000A598 50600005 */      beql $v1, $zero, .L8000A5B0
  /* 00B19C 8000A59C 8CE40018 */        lw $a0, 0x18($a3)
  /* 00B1A0 8000A5A0 8C680018 */        lw $t0, 0x18($v1)
  /* 00B1A4 8000A5A4 5048FFFC */      beql $v0, $t0, .L8000A598
  /* 00B1A8 8000A5A8 8C630008 */        lw $v1, 8($v1)
  .L8000A5AC:
  /* 00B1AC 8000A5AC 8CE40018 */        lw $a0, 0x18($a3)
  .L8000A5B0:
  /* 00B1B0 8000A5B0 0C0026A1 */       jal func_80009A84
  /* 00B1B4 8000A5B4 AFA3001C */        sw $v1, 0x1c($sp)
  /* 00B1B8 8000A5B8 10000005 */         b .L8000A5D0
  /* 00B1BC 8000A5BC 8FA3001C */        lw $v1, 0x1c($sp)
  .L8000A5C0:
  /* 00B1C0 8000A5C0 ACA00000 */        sw $zero, ($a1)
  /* 00B1C4 8000A5C4 0C002123 */       jal func_8000848C
  /* 00B1C8 8000A5C8 AFA3001C */        sw $v1, 0x1c($sp)
  /* 00B1CC 8000A5CC 8FA3001C */        lw $v1, 0x1c($sp)
  .L8000A5D0:
  /* 00B1D0 8000A5D0 8FBF0014 */        lw $ra, 0x14($sp)
  .L8000A5D4:
  /* 00B1D4 8000A5D4 27BD0020 */     addiu $sp, $sp, 0x20
  /* 00B1D8 8000A5D8 00601025 */        or $v0, $v1, $zero
  /* 00B1DC 8000A5DC 03E00008 */        jr $ra
  /* 00B1E0 8000A5E0 00000000 */       nop 

glabel func_8000A5E4
  /* 00B1E4 8000A5E4 3C018004 */       lui $at, %hi(D_80046A64)
  /* 00B1E8 8000A5E8 27BDFFD8 */     addiu $sp, $sp, -0x28
  /* 00B1EC 8000A5EC AC206A64 */        sw $zero, %lo(D_80046A64)($at)
  /* 00B1F0 8000A5F0 3C018004 */       lui $at, %hi(D_80046A54)
  /* 00B1F4 8000A5F4 AFB20020 */        sw $s2, 0x20($sp)
  /* 00B1F8 8000A5F8 AFB1001C */        sw $s1, 0x1c($sp)
  /* 00B1FC 8000A5FC AC206A54 */        sw $zero, %lo(D_80046A54)($at)
  /* 00B200 8000A600 3C018004 */       lui $at, %hi(D_80046A60)
  /* 00B204 8000A604 3C118004 */       lui $s1, %hi(D_800466F0)
  /* 00B208 8000A608 3C128004 */       lui $s2, %hi(D_80046774)
  /* 00B20C 8000A60C AFBF0024 */        sw $ra, 0x24($sp)
  /* 00B210 8000A610 AFB00018 */        sw $s0, 0x18($sp)
  /* 00B214 8000A614 AC206A60 */        sw $zero, %lo(D_80046A60)($at)
  /* 00B218 8000A618 26526774 */     addiu $s2, $s2, %lo(D_80046774)
  /* 00B21C 8000A61C 263166F0 */     addiu $s1, $s1, %lo(D_800466F0)
  /* 00B220 8000A620 8E300000 */        lw $s0, ($s1) # D_800466F0 + 0
  .L8000A624:
  /* 00B224 8000A624 52000010 */      beql $s0, $zero, .L8000A668
  /* 00B228 8000A628 26310004 */     addiu $s1, $s1, 4
  /* 00B22C 8000A62C 8E0E007C */        lw $t6, 0x7c($s0)
  .L8000A630:
  /* 00B230 8000A630 31CF0040 */      andi $t7, $t6, 0x40
  /* 00B234 8000A634 55E00009 */      bnel $t7, $zero, .L8000A65C
  /* 00B238 8000A638 8E100004 */        lw $s0, 4($s0)
  /* 00B23C 8000A63C 8E180014 */        lw $t8, 0x14($s0)
  /* 00B240 8000A640 53000006 */      beql $t8, $zero, .L8000A65C
  /* 00B244 8000A644 8E100004 */        lw $s0, 4($s0)
  /* 00B248 8000A648 0C002903 */       jal func_8000A40C
  /* 00B24C 8000A64C 02002025 */        or $a0, $s0, $zero
  /* 00B250 8000A650 10000002 */         b .L8000A65C
  /* 00B254 8000A654 00408025 */        or $s0, $v0, $zero
  /* 00B258 8000A658 8E100004 */        lw $s0, 4($s0)
  .L8000A65C:
  /* 00B25C 8000A65C 5600FFF4 */      bnel $s0, $zero, .L8000A630
  /* 00B260 8000A660 8E0E007C */        lw $t6, 0x7c($s0)
  /* 00B264 8000A664 26310004 */     addiu $s1, $s1, 4
  .L8000A668:
  /* 00B268 8000A668 0232082B */      sltu $at, $s1, $s2
  /* 00B26C 8000A66C 5420FFED */      bnel $at, $zero, .L8000A624
  /* 00B270 8000A670 8E300000 */        lw $s0, ($s1) # D_800466F0 + 0
  /* 00B274 8000A674 3C118004 */       lui $s1, %hi(D_800466E4)
  /* 00B278 8000A678 3C128004 */       lui $s2, %hi(D_800466D0)
  /* 00B27C 8000A67C 265266D0 */     addiu $s2, $s2, %lo(D_800466D0)
  /* 00B280 8000A680 263166E4 */     addiu $s1, $s1, %lo(D_800466E4)
  /* 00B284 8000A684 8E300000 */        lw $s0, ($s1) # D_800466E4 + 0
  .L8000A688:
  /* 00B288 8000A688 5200000C */      beql $s0, $zero, .L8000A6BC
  /* 00B28C 8000A68C 2631FFFC */     addiu $s1, $s1, -4
  /* 00B290 8000A690 92190015 */       lbu $t9, 0x15($s0)
  .L8000A694:
  /* 00B294 8000A694 57200006 */      bnel $t9, $zero, .L8000A6B0
  /* 00B298 8000A698 8E100008 */        lw $s0, 8($s0)
  /* 00B29C 8000A69C 0C002927 */       jal func_8000A49C
  /* 00B2A0 8000A6A0 02002025 */        or $a0, $s0, $zero
  /* 00B2A4 8000A6A4 10000002 */         b .L8000A6B0
  /* 00B2A8 8000A6A8 00408025 */        or $s0, $v0, $zero
  /* 00B2AC 8000A6AC 8E100008 */        lw $s0, 8($s0)
  .L8000A6B0:
  /* 00B2B0 8000A6B0 5600FFF8 */      bnel $s0, $zero, .L8000A694
  /* 00B2B4 8000A6B4 92190015 */       lbu $t9, 0x15($s0)
  /* 00B2B8 8000A6B8 2631FFFC */     addiu $s1, $s1, -4
  .L8000A6BC:
  /* 00B2BC 8000A6BC 0232082B */      sltu $at, $s1, $s2
  /* 00B2C0 8000A6C0 5020FFF1 */      beql $at, $zero, .L8000A688
  /* 00B2C4 8000A6C4 8E300000 */        lw $s0, ($s1) # D_800466E4 + 0
  /* 00B2C8 8000A6C8 8FBF0024 */        lw $ra, 0x24($sp)
  /* 00B2CC 8000A6CC 8FB00018 */        lw $s0, 0x18($sp)
  /* 00B2D0 8000A6D0 8FB1001C */        lw $s1, 0x1c($sp)
  /* 00B2D4 8000A6D4 8FB20020 */        lw $s2, 0x20($sp)
  /* 00B2D8 8000A6D8 03E00008 */        jr $ra
  /* 00B2DC 8000A6DC 27BD0028 */     addiu $sp, $sp, 0x28

glabel func_8000A6E0
  /* 00B2E0 8000A6E0 27BDFFE0 */     addiu $sp, $sp, -0x20
  /* 00B2E4 8000A6E4 AFBF0014 */        sw $ra, 0x14($sp)
  /* 00B2E8 8000A6E8 8C8E0008 */        lw $t6, 8($a0)
  /* 00B2EC 8000A6EC 3C088004 */       lui $t0, %hi(D_800466BC)
  /* 00B2F0 8000A6F0 250866BC */     addiu $t0, $t0, %lo(D_800466BC)
  /* 00B2F4 8000A6F4 AD0E0000 */        sw $t6, ($t0) # D_800466BC + 0
  /* 00B2F8 8000A6F8 8C8F0014 */        lw $t7, 0x14($a0)
  /* 00B2FC 8000A6FC 3C018004 */       lui $at, %hi(D_800466C0)
  /* 00B300 8000A700 00803825 */        or $a3, $a0, $zero
  /* 00B304 8000A704 AC2F66C0 */        sw $t7, %lo(D_800466C0)($at)
  /* 00B308 8000A708 8C980004 */        lw $t8, 4($a0)
  /* 00B30C 8000A70C 3C018004 */       lui $at, 0x8004
  /* 00B310 8000A710 00003025 */        or $a2, $zero, $zero
  /* 00B314 8000A714 13000014 */      beqz $t8, .L8000A768
  /* 00B318 8000A718 00000000 */       nop 
  /* 00B31C 8000A71C 8C830000 */        lw $v1, ($a0)
  /* 00B320 8000A720 3C018004 */       lui $at, %hi(D_800466B0)
  /* 00B324 8000A724 00003025 */        or $a2, $zero, $zero
  /* 00B328 8000A728 AC2366B0 */        sw $v1, %lo(D_800466B0)($at)
  /* 00B32C 8000A72C 8C990004 */        lw $t9, 4($a0)
  /* 00B330 8000A730 272BFFFF */     addiu $t3, $t9, -1
  /* 00B334 8000A734 1960000A */      blez $t3, .L8000A760
  /* 00B338 8000A738 246201C0 */     addiu $v0, $v1, 0x1c0
  .L8000A73C:
  /* 00B33C 8000A73C AC620000 */        sw $v0, ($v1)
  /* 00B340 8000A740 8CEC0004 */        lw $t4, 4($a3)
  /* 00B344 8000A744 24C60001 */     addiu $a2, $a2, 1
  /* 00B348 8000A748 00401825 */        or $v1, $v0, $zero
  /* 00B34C 8000A74C 258DFFFF */     addiu $t5, $t4, -1
  /* 00B350 8000A750 00CD082A */       slt $at, $a2, $t5
  /* 00B354 8000A754 5420FFF9 */      bnel $at, $zero, .L8000A73C
  /* 00B358 8000A758 246201C0 */     addiu $v0, $v1, 0x1c0
  /* 00B35C 8000A75C 00003025 */        or $a2, $zero, $zero
  .L8000A760:
  /* 00B360 8000A760 10000002 */         b .L8000A76C
  /* 00B364 8000A764 AC600000 */        sw $zero, ($v1)
  .L8000A768:
  /* 00B368 8000A768 AC2066B0 */        sw $zero, %lo(D_800466B0)($at)
  .L8000A76C:
  /* 00B36C 8000A76C 8CEE0010 */        lw $t6, 0x10($a3)
  /* 00B370 8000A770 11C0002E */      beqz $t6, .L8000A82C
  /* 00B374 8000A774 00000000 */       nop 
  /* 00B378 8000A778 8CEF0008 */        lw $t7, 8($a3)
  /* 00B37C 8000A77C 2404000C */     addiu $a0, $zero, 0xc
  /* 00B380 8000A780 24050004 */     addiu $a1, $zero, 4
  /* 00B384 8000A784 11E00029 */      beqz $t7, .L8000A82C
  /* 00B388 8000A788 00000000 */       nop 
  /* 00B38C 8000A78C AFA6001C */        sw $a2, 0x1c($sp)
  /* 00B390 8000A790 0C001260 */       jal func_80004980
  /* 00B394 8000A794 AFA70020 */        sw $a3, 0x20($sp)
  /* 00B398 8000A798 3C048004 */       lui $a0, %hi(D_800466C4)
  /* 00B39C 8000A79C 248466C4 */     addiu $a0, $a0, %lo(D_800466C4)
  /* 00B3A0 8000A7A0 8FA70020 */        lw $a3, 0x20($sp)
  /* 00B3A4 8000A7A4 AC820000 */        sw $v0, ($a0) # D_800466C4 + 0
  /* 00B3A8 8000A7A8 8FA6001C */        lw $a2, 0x1c($sp)
  /* 00B3AC 8000A7AC 3C088004 */       lui $t0, %hi(D_800466BC)
  /* 00B3B0 8000A7B0 AC400000 */        sw $zero, ($v0)
  /* 00B3B4 8000A7B4 250866BC */     addiu $t0, $t0, %lo(D_800466BC)
  /* 00B3B8 8000A7B8 8D190000 */        lw $t9, ($t0) # D_800466BC + 0
  /* 00B3BC 8000A7BC 8C8B0000 */        lw $t3, ($a0) # D_800466C4 + 0
  /* 00B3C0 8000A7C0 AD790008 */        sw $t9, 8($t3)
  /* 00B3C4 8000A7C4 8C8C0000 */        lw $t4, ($a0) # D_800466C4 + 0
  /* 00B3C8 8000A7C8 8CE3000C */        lw $v1, 0xc($a3)
  /* 00B3CC 8000A7CC AD830004 */        sw $v1, 4($t4)
  /* 00B3D0 8000A7D0 8CED0010 */        lw $t5, 0x10($a3)
  /* 00B3D4 8000A7D4 25AEFFFF */     addiu $t6, $t5, -1
  /* 00B3D8 8000A7D8 51C00011 */      beql $t6, $zero, .L8000A820
  /* 00B3DC 8000A7DC 8D0D0000 */        lw $t5, ($t0) # D_800466BC + 0
  /* 00B3E0 8000A7E0 8D020000 */        lw $v0, ($t0) # D_800466BC + 0
  .L8000A7E4:
  /* 00B3E4 8000A7E4 00627821 */      addu $t7, $v1, $v0
  /* 00B3E8 8000A7E8 25F80008 */     addiu $t8, $t7, 8
  /* 00B3EC 8000A7EC AC780000 */        sw $t8, ($v1)
  /* 00B3F0 8000A7F0 8D190000 */        lw $t9, ($t0) # D_800466BC + 0
  /* 00B3F4 8000A7F4 24C60001 */     addiu $a2, $a2, 1
  /* 00B3F8 8000A7F8 AC790004 */        sw $t9, 4($v1)
  /* 00B3FC 8000A7FC 8CEB0010 */        lw $t3, 0x10($a3)
  /* 00B400 8000A800 8D020000 */        lw $v0, ($t0) # D_800466BC + 0
  /* 00B404 8000A804 256CFFFF */     addiu $t4, $t3, -1
  /* 00B408 8000A808 00CC082B */      sltu $at, $a2, $t4
  /* 00B40C 8000A80C 00621821 */      addu $v1, $v1, $v0
  /* 00B410 8000A810 1420FFF4 */      bnez $at, .L8000A7E4
  /* 00B414 8000A814 24630008 */     addiu $v1, $v1, 8
  /* 00B418 8000A818 00003025 */        or $a2, $zero, $zero
  /* 00B41C 8000A81C 8D0D0000 */        lw $t5, ($t0) # D_800466BC + 0
  .L8000A820:
  /* 00B420 8000A820 AC600000 */        sw $zero, ($v1)
  /* 00B424 8000A824 10000004 */         b .L8000A838
  /* 00B428 8000A828 AC6D0004 */        sw $t5, 4($v1)
  .L8000A82C:
  /* 00B42C 8000A82C 3C048004 */       lui $a0, %hi(D_800466C4)
  /* 00B430 8000A830 248466C4 */     addiu $a0, $a0, %lo(D_800466C4)
  /* 00B434 8000A834 AC800000 */        sw $zero, ($a0) # D_800466C4 + 0
  .L8000A838:
  /* 00B438 8000A838 8CEE001C */        lw $t6, 0x1c($a3)
  /* 00B43C 8000A83C 3C048004 */       lui $a0, %hi(D_80046774)
  /* 00B440 8000A840 24846774 */     addiu $a0, $a0, %lo(D_80046774)
  /* 00B444 8000A844 11C00012 */      beqz $t6, .L8000A890
  /* 00B448 8000A848 00000000 */       nop 
  /* 00B44C 8000A84C 8CE30018 */        lw $v1, 0x18($a3)
  /* 00B450 8000A850 3C018004 */       lui $at, %hi(D_800466CC)
  /* 00B454 8000A854 AC2366CC */        sw $v1, %lo(D_800466CC)($at)
  /* 00B458 8000A858 8CEF001C */        lw $t7, 0x1c($a3)
  /* 00B45C 8000A85C 25F8FFFF */     addiu $t8, $t7, -1
  /* 00B460 8000A860 1B000009 */      blez $t8, .L8000A888
  /* 00B464 8000A864 24620024 */     addiu $v0, $v1, 0x24
  .L8000A868:
  /* 00B468 8000A868 AC620000 */        sw $v0, ($v1)
  /* 00B46C 8000A86C 8CF9001C */        lw $t9, 0x1c($a3)
  /* 00B470 8000A870 24C60001 */     addiu $a2, $a2, 1
  /* 00B474 8000A874 00401825 */        or $v1, $v0, $zero
  /* 00B478 8000A878 272BFFFF */     addiu $t3, $t9, -1
  /* 00B47C 8000A87C 00CB082A */       slt $at, $a2, $t3
  /* 00B480 8000A880 5420FFF9 */      bnel $at, $zero, .L8000A868
  /* 00B484 8000A884 24620024 */     addiu $v0, $v1, 0x24
  .L8000A888:
  /* 00B488 8000A888 10000003 */         b .L8000A898
  /* 00B48C 8000A88C AC600000 */        sw $zero, ($v1)
  .L8000A890:
  /* 00B490 8000A890 3C018004 */       lui $at, %hi(D_800466CC)
  /* 00B494 8000A894 AC2066CC */        sw $zero, %lo(D_800466CC)($at)
  .L8000A898:
  /* 00B498 8000A898 3C028004 */       lui $v0, %hi(D_800466D0)
  /* 00B49C 8000A89C 3C038004 */       lui $v1, %hi(D_800466E8)
  /* 00B4A0 8000A8A0 246366E8 */     addiu $v1, $v1, %lo(D_800466E8)
  /* 00B4A4 8000A8A4 244266D0 */     addiu $v0, $v0, %lo(D_800466D0)
  .L8000A8A8:
  /* 00B4A8 8000A8A8 24420004 */     addiu $v0, $v0, 4
  /* 00B4AC 8000A8AC 0043082B */      sltu $at, $v0, $v1
  /* 00B4B0 8000A8B0 1420FFFD */      bnez $at, .L8000A8A8
  /* 00B4B4 8000A8B4 AC40FFFC */        sw $zero, -4($v0) # D_800466D0 + -4
  /* 00B4B8 8000A8B8 8CEC0024 */        lw $t4, 0x24($a3)
  /* 00B4BC 8000A8BC 11800016 */      beqz $t4, .L8000A918
  /* 00B4C0 8000A8C0 00000000 */       nop 
  /* 00B4C4 8000A8C4 8CE20020 */        lw $v0, 0x20($a3)
  /* 00B4C8 8000A8C8 3C018004 */       lui $at, %hi(D_800467FC)
  /* 00B4CC 8000A8CC 00003025 */        or $a2, $zero, $zero
  /* 00B4D0 8000A8D0 AC2267FC */        sw $v0, %lo(D_800467FC)($at)
  /* 00B4D4 8000A8D4 8CED0024 */        lw $t5, 0x24($a3)
  /* 00B4D8 8000A8D8 25AEFFFF */     addiu $t6, $t5, -1
  /* 00B4DC 8000A8DC 19C0000C */      blez $t6, .L8000A910
  /* 00B4E0 8000A8E0 00000000 */       nop 
  /* 00B4E4 8000A8E4 8CEF0028 */        lw $t7, 0x28($a3)
  .L8000A8E8:
  /* 00B4E8 8000A8E8 24C60001 */     addiu $a2, $a2, 1
  /* 00B4EC 8000A8EC 004FC021 */      addu $t8, $v0, $t7
  /* 00B4F0 8000A8F0 AC580004 */        sw $t8, 4($v0)
  /* 00B4F4 8000A8F4 8CF90024 */        lw $t9, 0x24($a3)
  /* 00B4F8 8000A8F8 03001025 */        or $v0, $t8, $zero
  /* 00B4FC 8000A8FC 272BFFFF */     addiu $t3, $t9, -1
  /* 00B500 8000A900 00CB082A */       slt $at, $a2, $t3
  /* 00B504 8000A904 5420FFF8 */      bnel $at, $zero, .L8000A8E8
  /* 00B508 8000A908 8CEF0028 */        lw $t7, 0x28($a3)
  /* 00B50C 8000A90C 00003025 */        or $a2, $zero, $zero
  .L8000A910:
  /* 00B510 8000A910 10000004 */         b .L8000A924
  /* 00B514 8000A914 AC400004 */        sw $zero, 4($v0)
  .L8000A918:
  /* 00B518 8000A918 3C018004 */       lui $at, %hi(D_800467FC)
  /* 00B51C 8000A91C AC2067FC */        sw $zero, %lo(D_800467FC)($at)
  /* 00B520 8000A920 00003025 */        or $a2, $zero, $zero
  .L8000A924:
  /* 00B524 8000A924 8CEC0028 */        lw $t4, 0x28($a3)
  /* 00B528 8000A928 3C018004 */       lui $at, %hi(D_80046A10)
  /* 00B52C 8000A92C 240DFFFF */     addiu $t5, $zero, -1
  /* 00B530 8000A930 A42C6A10 */        sh $t4, %lo(D_80046A10)($at)
  /* 00B534 8000A934 3C018004 */       lui $at, %hi(D_80046A12)
  /* 00B538 8000A938 A42D6A12 */        sh $t5, %lo(D_80046A12)($at)
  /* 00B53C 8000A93C 8CEE0034 */        lw $t6, 0x34($a3)
  /* 00B540 8000A940 3C018004 */       lui $at, %hi(D_80046A1C)
  /* 00B544 8000A944 AC2E6A1C */        sw $t6, %lo(D_80046A1C)($at)
  /* 00B548 8000A948 8CEF0030 */        lw $t7, 0x30($a3)
  /* 00B54C 8000A94C 11E00013 */      beqz $t7, .L8000A99C
  /* 00B550 8000A950 00000000 */       nop 
  /* 00B554 8000A954 8CE3002C */        lw $v1, 0x2c($a3)
  /* 00B558 8000A958 3C018004 */       lui $at, %hi(D_80046A14)
  /* 00B55C 8000A95C AC236A14 */        sw $v1, %lo(D_80046A14)($at)
  /* 00B560 8000A960 8CF80030 */        lw $t8, 0x30($a3)
  /* 00B564 8000A964 2719FFFF */     addiu $t9, $t8, -1
  /* 00B568 8000A968 1B20000A */      blez $t9, .L8000A994
  /* 00B56C 8000A96C 24620048 */     addiu $v0, $v1, 0x48
  .L8000A970:
  /* 00B570 8000A970 AC620000 */        sw $v0, ($v1)
  /* 00B574 8000A974 8CEB0030 */        lw $t3, 0x30($a3)
  /* 00B578 8000A978 24C60001 */     addiu $a2, $a2, 1
  /* 00B57C 8000A97C 00401825 */        or $v1, $v0, $zero
  /* 00B580 8000A980 256CFFFF */     addiu $t4, $t3, -1
  /* 00B584 8000A984 00CC082A */       slt $at, $a2, $t4
  /* 00B588 8000A988 5420FFF9 */      bnel $at, $zero, .L8000A970
  /* 00B58C 8000A98C 24620048 */     addiu $v0, $v1, 0x48
  /* 00B590 8000A990 00003025 */        or $a2, $zero, $zero
  .L8000A994:
  /* 00B594 8000A994 10000003 */         b .L8000A9A4
  /* 00B598 8000A998 AC600000 */        sw $zero, ($v1)
  .L8000A99C:
  /* 00B59C 8000A99C 3C018004 */       lui $at, %hi(D_80046A14)
  /* 00B5A0 8000A9A0 AC206A14 */        sw $zero, %lo(D_80046A14)($at)
  .L8000A9A4:
  /* 00B5A4 8000A9A4 8CED003C */        lw $t5, 0x3c($a3)
  /* 00B5A8 8000A9A8 3C018004 */       lui $at, 0x8004
  /* 00B5AC 8000A9AC 11A00013 */      beqz $t5, .L8000A9FC
  /* 00B5B0 8000A9B0 00000000 */       nop 
  /* 00B5B4 8000A9B4 8CE30038 */        lw $v1, 0x38($a3)
  /* 00B5B8 8000A9B8 3C018004 */       lui $at, %hi(D_80046A20)
  /* 00B5BC 8000A9BC AC236A20 */        sw $v1, %lo(D_80046A20)($at)
  /* 00B5C0 8000A9C0 8CEE003C */        lw $t6, 0x3c($a3)
  /* 00B5C4 8000A9C4 25CFFFFF */     addiu $t7, $t6, -1
  /* 00B5C8 8000A9C8 19E0000A */      blez $t7, .L8000A9F4
  /* 00B5CC 8000A9CC 24620024 */     addiu $v0, $v1, 0x24
  .L8000A9D0:
  /* 00B5D0 8000A9D0 AC620000 */        sw $v0, ($v1)
  /* 00B5D4 8000A9D4 8CF8003C */        lw $t8, 0x3c($a3)
  /* 00B5D8 8000A9D8 24C60001 */     addiu $a2, $a2, 1
  /* 00B5DC 8000A9DC 00401825 */        or $v1, $v0, $zero
  /* 00B5E0 8000A9E0 2719FFFF */     addiu $t9, $t8, -1
  /* 00B5E4 8000A9E4 00D9082A */       slt $at, $a2, $t9
  /* 00B5E8 8000A9E8 5420FFF9 */      bnel $at, $zero, .L8000A9D0
  /* 00B5EC 8000A9EC 24620024 */     addiu $v0, $v1, 0x24
  /* 00B5F0 8000A9F0 00003025 */        or $a2, $zero, $zero
  .L8000A9F4:
  /* 00B5F4 8000A9F4 10000002 */         b .L8000AA00
  /* 00B5F8 8000A9F8 AC600000 */        sw $zero, ($v1)
  .L8000A9FC:
  /* 00B5FC 8000A9FC AC206A20 */        sw $zero, %lo(D_80046A20)($at)
  .L8000AA00:
  /* 00B600 8000AA00 8CEB0044 */        lw $t3, 0x44($a3)
  /* 00B604 8000AA04 3C018004 */       lui $at, 0x8004
  /* 00B608 8000AA08 11600013 */      beqz $t3, .L8000AA58
  /* 00B60C 8000AA0C 00000000 */       nop 
  /* 00B610 8000AA10 8CE30040 */        lw $v1, 0x40($a3)
  /* 00B614 8000AA14 3C018004 */       lui $at, %hi(D_80046A28)
  /* 00B618 8000AA18 AC236A28 */        sw $v1, %lo(D_80046A28)($at)
  /* 00B61C 8000AA1C 8CEC0044 */        lw $t4, 0x44($a3)
  /* 00B620 8000AA20 258DFFFF */     addiu $t5, $t4, -1
  /* 00B624 8000AA24 19A0000A */      blez $t5, .L8000AA50
  /* 00B628 8000AA28 246200A8 */     addiu $v0, $v1, 0xa8
  .L8000AA2C:
  /* 00B62C 8000AA2C AC620000 */        sw $v0, ($v1)
  /* 00B630 8000AA30 8CEE0044 */        lw $t6, 0x44($a3)
  /* 00B634 8000AA34 24C60001 */     addiu $a2, $a2, 1
  /* 00B638 8000AA38 00401825 */        or $v1, $v0, $zero
  /* 00B63C 8000AA3C 25CFFFFF */     addiu $t7, $t6, -1
  /* 00B640 8000AA40 00CF082A */       slt $at, $a2, $t7
  /* 00B644 8000AA44 5420FFF9 */      bnel $at, $zero, .L8000AA2C
  /* 00B648 8000AA48 246200A8 */     addiu $v0, $v1, 0xa8
  /* 00B64C 8000AA4C 00003025 */        or $a2, $zero, $zero
  .L8000AA50:
  /* 00B650 8000AA50 10000002 */         b .L8000AA5C
  /* 00B654 8000AA54 AC600000 */        sw $zero, ($v1)
  .L8000AA58:
  /* 00B658 8000AA58 AC206A28 */        sw $zero, %lo(D_80046A28)($at)
  .L8000AA5C:
  /* 00B65C 8000AA5C 8CF8004C */        lw $t8, 0x4c($a3)
  /* 00B660 8000AA60 3C038004 */       lui $v1, %hi(D_80046778)
  /* 00B664 8000AA64 3C018004 */       lui $at, 0x8004
  /* 00B668 8000AA68 13000015 */      beqz $t8, .L8000AAC0
  /* 00B66C 8000AA6C 24636778 */     addiu $v1, $v1, %lo(D_80046778)
  /* 00B670 8000AA70 8CE20048 */        lw $v0, 0x48($a3)
  /* 00B674 8000AA74 3C018004 */       lui $at, %hi(D_80046A30)
  /* 00B678 8000AA78 AC226A30 */        sw $v0, %lo(D_80046A30)($at)
  /* 00B67C 8000AA7C 8CF9004C */        lw $t9, 0x4c($a3)
  /* 00B680 8000AA80 272BFFFF */     addiu $t3, $t9, -1
  /* 00B684 8000AA84 1960000C */      blez $t3, .L8000AAB8
  /* 00B688 8000AA88 00000000 */       nop 
  /* 00B68C 8000AA8C 8CEC0050 */        lw $t4, 0x50($a3)
  .L8000AA90:
  /* 00B690 8000AA90 24C60001 */     addiu $a2, $a2, 1
  /* 00B694 8000AA94 004C6821 */      addu $t5, $v0, $t4
  /* 00B698 8000AA98 AC4D0000 */        sw $t5, ($v0)
  /* 00B69C 8000AA9C 8CEE004C */        lw $t6, 0x4c($a3)
  /* 00B6A0 8000AAA0 01A01025 */        or $v0, $t5, $zero
  /* 00B6A4 8000AAA4 25CFFFFF */     addiu $t7, $t6, -1
  /* 00B6A8 8000AAA8 00CF082A */       slt $at, $a2, $t7
  /* 00B6AC 8000AAAC 5420FFF8 */      bnel $at, $zero, .L8000AA90
  /* 00B6B0 8000AAB0 8CEC0050 */        lw $t4, 0x50($a3)
  /* 00B6B4 8000AAB4 00003025 */        or $a2, $zero, $zero
  .L8000AAB8:
  /* 00B6B8 8000AAB8 10000002 */         b .L8000AAC4
  /* 00B6BC 8000AABC AC400000 */        sw $zero, ($v0)
  .L8000AAC0:
  /* 00B6C0 8000AAC0 AC206A30 */        sw $zero, %lo(D_80046A30)($at)
  .L8000AAC4:
  /* 00B6C4 8000AAC4 8CF80050 */        lw $t8, 0x50($a3)
  /* 00B6C8 8000AAC8 3C018004 */       lui $at, %hi(D_80046A38)
  /* 00B6CC 8000AACC A4386A38 */        sh $t8, %lo(D_80046A38)($at)
  /* 00B6D0 8000AAD0 8CF90058 */        lw $t9, 0x58($a3)
  /* 00B6D4 8000AAD4 3C018004 */       lui $at, 0x8004
  /* 00B6D8 8000AAD8 13200015 */      beqz $t9, .L8000AB30
  /* 00B6DC 8000AADC 00000000 */       nop 
  /* 00B6E0 8000AAE0 8CE20054 */        lw $v0, 0x54($a3)
  /* 00B6E4 8000AAE4 3C018004 */       lui $at, %hi(D_80046A3C)
  /* 00B6E8 8000AAE8 AC226A3C */        sw $v0, %lo(D_80046A3C)($at)
  /* 00B6EC 8000AAEC 8CEB0058 */        lw $t3, 0x58($a3)
  /* 00B6F0 8000AAF0 256CFFFF */     addiu $t4, $t3, -1
  /* 00B6F4 8000AAF4 1980000C */      blez $t4, .L8000AB28
  /* 00B6F8 8000AAF8 00000000 */       nop 
  /* 00B6FC 8000AAFC 8CED005C */        lw $t5, 0x5c($a3)
  .L8000AB00:
  /* 00B700 8000AB00 24C60001 */     addiu $a2, $a2, 1
  /* 00B704 8000AB04 004D7021 */      addu $t6, $v0, $t5
  /* 00B708 8000AB08 AC4E0000 */        sw $t6, ($v0)
  /* 00B70C 8000AB0C 8CEF0058 */        lw $t7, 0x58($a3)
  /* 00B710 8000AB10 01C01025 */        or $v0, $t6, $zero
  /* 00B714 8000AB14 25F8FFFF */     addiu $t8, $t7, -1
  /* 00B718 8000AB18 00D8082A */       slt $at, $a2, $t8
  /* 00B71C 8000AB1C 5420FFF8 */      bnel $at, $zero, .L8000AB00
  /* 00B720 8000AB20 8CED005C */        lw $t5, 0x5c($a3)
  /* 00B724 8000AB24 00003025 */        or $a2, $zero, $zero
  .L8000AB28:
  /* 00B728 8000AB28 10000002 */         b .L8000AB34
  /* 00B72C 8000AB2C AC400000 */        sw $zero, ($v0)
  .L8000AB30:
  /* 00B730 8000AB30 AC206A3C */        sw $zero, %lo(D_80046A3C)($at)
  .L8000AB34:
  /* 00B734 8000AB34 8CF9005C */        lw $t9, 0x5c($a3)
  /* 00B738 8000AB38 3C018004 */       lui $at, %hi(D_80046A44)
  /* 00B73C 8000AB3C A4396A44 */        sh $t9, %lo(D_80046A44)($at)
  /* 00B740 8000AB40 8CEB0064 */        lw $t3, 0x64($a3)
  /* 00B744 8000AB44 3C018004 */       lui $at, 0x8004
  /* 00B748 8000AB48 11600014 */      beqz $t3, .L8000AB9C
  /* 00B74C 8000AB4C 00000000 */       nop 
  /* 00B750 8000AB50 8CE20060 */        lw $v0, 0x60($a3)
  /* 00B754 8000AB54 3C018004 */       lui $at, %hi(D_80046A48)
  /* 00B758 8000AB58 AC226A48 */        sw $v0, %lo(D_80046A48)($at)
  /* 00B75C 8000AB5C 8CEC0064 */        lw $t4, 0x64($a3)
  /* 00B760 8000AB60 258DFFFF */     addiu $t5, $t4, -1
  /* 00B764 8000AB64 19A0000B */      blez $t5, .L8000AB94
  /* 00B768 8000AB68 00000000 */       nop 
  /* 00B76C 8000AB6C 8CEE0068 */        lw $t6, 0x68($a3)
  .L8000AB70:
  /* 00B770 8000AB70 24C60001 */     addiu $a2, $a2, 1
  /* 00B774 8000AB74 004E7821 */      addu $t7, $v0, $t6
  /* 00B778 8000AB78 AC4F0000 */        sw $t7, ($v0)
  /* 00B77C 8000AB7C 8CF80064 */        lw $t8, 0x64($a3)
  /* 00B780 8000AB80 01E01025 */        or $v0, $t7, $zero
  /* 00B784 8000AB84 2719FFFF */     addiu $t9, $t8, -1
  /* 00B788 8000AB88 00D9082A */       slt $at, $a2, $t9
  /* 00B78C 8000AB8C 5420FFF8 */      bnel $at, $zero, .L8000AB70
  /* 00B790 8000AB90 8CEE0068 */        lw $t6, 0x68($a3)
  .L8000AB94:
  /* 00B794 8000AB94 10000002 */         b .L8000ABA0
  /* 00B798 8000AB98 AC400000 */        sw $zero, ($v0)
  .L8000AB9C:
  /* 00B79C 8000AB9C AC206A48 */        sw $zero, %lo(D_80046A48)($at)
  .L8000ABA0:
  /* 00B7A0 8000ABA0 8CEB0068 */        lw $t3, 0x68($a3)
  /* 00B7A4 8000ABA4 3C018004 */       lui $at, %hi(D_80046A50)
  /* 00B7A8 8000ABA8 3C028004 */       lui $v0, %hi(D_800466F0)
  /* 00B7AC 8000ABAC 244266F0 */     addiu $v0, $v0, %lo(D_800466F0)
  /* 00B7B0 8000ABB0 A42B6A50 */        sh $t3, %lo(D_80046A50)($at)
  .L8000ABB4:
  /* 00B7B4 8000ABB4 24420004 */     addiu $v0, $v0, 4
  /* 00B7B8 8000ABB8 0044082B */      sltu $at, $v0, $a0
  /* 00B7BC 8000ABBC 24630004 */     addiu $v1, $v1, 4
  /* 00B7C0 8000ABC0 AC60FFFC */        sw $zero, -4($v1) # D_80046778 + -4
  /* 00B7C4 8000ABC4 1420FFFB */      bnez $at, .L8000ABB4
  /* 00B7C8 8000ABC8 AC40FFFC */        sw $zero, -4($v0) # D_800466F0 + -4
  /* 00B7CC 8000ABCC 3C018004 */       lui $at, %hi(D_80046908)
  /* 00B7D0 8000ABD0 AC206908 */        sw $zero, %lo(D_80046908)($at)
  /* 00B7D4 8000ABD4 3C018004 */       lui $at, %hi(D_80046800)
  /* 00B7D8 8000ABD8 3C038004 */       lui $v1, %hi(D_8004690C)
  /* 00B7DC 8000ABDC 3C028004 */       lui $v0, %hi(D_80046804)
  /* 00B7E0 8000ABE0 3C048004 */       lui $a0, %hi(D_80046904)
  /* 00B7E4 8000ABE4 24846904 */     addiu $a0, $a0, %lo(D_80046904)
  /* 00B7E8 8000ABE8 24426804 */     addiu $v0, $v0, %lo(D_80046804)
  /* 00B7EC 8000ABEC 2463690C */     addiu $v1, $v1, %lo(D_8004690C)
  /* 00B7F0 8000ABF0 AC206800 */        sw $zero, %lo(D_80046800)($at)
  .L8000ABF4:
  /* 00B7F4 8000ABF4 24420010 */     addiu $v0, $v0, 0x10
  /* 00B7F8 8000ABF8 AC600004 */        sw $zero, 4($v1) # D_8004690C + 4
  /* 00B7FC 8000ABFC AC40FFF4 */        sw $zero, -0xc($v0) # D_80046804 + -12
  /* 00B800 8000AC00 AC600008 */        sw $zero, 8($v1) # D_8004690C + 8
  /* 00B804 8000AC04 AC40FFF8 */        sw $zero, -8($v0) # D_80046804 + -8
  /* 00B808 8000AC08 AC60000C */        sw $zero, 0xc($v1) # D_8004690C + 12
  /* 00B80C 8000AC0C AC40FFFC */        sw $zero, -4($v0) # D_80046804 + -4
  /* 00B810 8000AC10 24630010 */     addiu $v1, $v1, 0x10
  /* 00B814 8000AC14 AC60FFF0 */        sw $zero, -0x10($v1) # D_8004690C + -16
  /* 00B818 8000AC18 1444FFF6 */       bne $v0, $a0, .L8000ABF4
  /* 00B81C 8000AC1C AC40FFF0 */        sw $zero, -0x10($v0) # D_80046804 + -16
  /* 00B820 8000AC20 0C00510C */       jal func_80014430
  /* 00B824 8000AC24 00000000 */       nop 
  /* 00B828 8000AC28 3C048004 */       lui $a0, %hi(D_80046A70)
  /* 00B82C 8000AC2C 3C058004 */       lui $a1, %hi(D_80046A68)
  /* 00B830 8000AC30 24A56A68 */     addiu $a1, $a1, %lo(D_80046A68)
  /* 00B834 8000AC34 24846A70 */     addiu $a0, $a0, %lo(D_80046A70)
  /* 00B838 8000AC38 0C00D120 */       jal osCreateMesgQueue
  /* 00B83C 8000AC3C 24060001 */     addiu $a2, $zero, 1
  /* 00B840 8000AC40 3C028004 */       lui $v0, %hi(D_80046A4C)
  /* 00B844 8000AC44 3C038004 */       lui $v1, %hi(D_80046A40)
  /* 00B848 8000AC48 3C058004 */       lui $a1, %hi(D_80046A34)
  /* 00B84C 8000AC4C 3C068004 */       lui $a2, %hi(D_80046A24)
  /* 00B850 8000AC50 3C078004 */       lui $a3, %hi(D_80046A18)
  /* 00B854 8000AC54 3C088004 */       lui $t0, %hi(D_80046A0C)
  /* 00B858 8000AC58 3C098004 */       lui $t1, %hi(D_800466E8)
  /* 00B85C 8000AC5C 3C0A8004 */       lui $t2, %hi(D_800466B4)
  /* 00B860 8000AC60 254A66B4 */     addiu $t2, $t2, %lo(D_800466B4)
  /* 00B864 8000AC64 252966E8 */     addiu $t1, $t1, %lo(D_800466E8)
  /* 00B868 8000AC68 25086A0C */     addiu $t0, $t0, %lo(D_80046A0C)
  /* 00B86C 8000AC6C 24E76A18 */     addiu $a3, $a3, %lo(D_80046A18)
  /* 00B870 8000AC70 24C66A24 */     addiu $a2, $a2, %lo(D_80046A24)
  /* 00B874 8000AC74 24A56A34 */     addiu $a1, $a1, %lo(D_80046A34)
  /* 00B878 8000AC78 24636A40 */     addiu $v1, $v1, %lo(D_80046A40)
  /* 00B87C 8000AC7C 24426A4C */     addiu $v0, $v0, %lo(D_80046A4C)
  /* 00B880 8000AC80 AC400000 */        sw $zero, ($v0) # D_80046A4C + 0
  /* 00B884 8000AC84 AC600000 */        sw $zero, ($v1) # D_80046A40 + 0
  /* 00B888 8000AC88 ACA00000 */        sw $zero, ($a1) # D_80046A34 + 0
  /* 00B88C 8000AC8C ACC00000 */        sw $zero, ($a2) # D_80046A24 + 0
  /* 00B890 8000AC90 ACE00000 */        sw $zero, ($a3) # D_80046A18 + 0
  /* 00B894 8000AC94 AD000000 */        sw $zero, ($t0) # D_80046A0C + 0
  /* 00B898 8000AC98 AD200000 */        sw $zero, ($t1) # D_800466E8 + 0
  /* 00B89C 8000AC9C AD400000 */        sw $zero, ($t2) # D_800466B4 + 0
  /* 00B8A0 8000ACA0 3C018004 */       lui $at, %hi(D_800466B8)
  /* 00B8A4 8000ACA4 AC2066B8 */        sw $zero, %lo(D_800466B8)($at)
  /* 00B8A8 8000ACA8 3C018004 */       lui $at, %hi(D_800466C8)
  /* 00B8AC 8000ACAC AC2066C8 */        sw $zero, %lo(D_800466C8)($at)
  /* 00B8B0 8000ACB0 0C005E0C */       jal func_80017830
  /* 00B8B4 8000ACB4 00002025 */        or $a0, $zero, $zero
  /* 00B8B8 8000ACB8 8FBF0014 */        lw $ra, 0x14($sp)
  /* 00B8BC 8000ACBC 3C018004 */       lui $at, %hi(D_8003B874)
  /* 00B8C0 8000ACC0 AC20B874 */        sw $zero, %lo(D_8003B874)($at)
  /* 00B8C4 8000ACC4 03E00008 */        jr $ra
  /* 00B8C8 8000ACC8 27BD0020 */     addiu $sp, $sp, 0x20

  /* 00B8CC 8000ACCC 00000000 */       nop 
