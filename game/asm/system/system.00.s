.include "macros.inc"

.section .bss

glabel D_80046670
    .space 4
glabel D_80046674
    .space 4
glabel D_80046678
    .space 4
glabel D_8004667C
    .space 4
glabel D_80046680
    .space 4
glabel D_80046684
    .space 4
glabel D_80046688
    .space 12
glabel D_80046694
    .space 2
glabel D_80046696
    .space 2
glabel D_80046698
    .space 2
glabel D_8004669A
    .space 6

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text

.align 4

# Likely start of new file
glabel func_80006D70
  /* 007970 80006D70 3C0E8004 */       lui $t6, %hi(D_80046674)
  /* 007974 80006D74 8DCE6674 */        lw $t6, %lo(D_80046674)($t6)
  /* 007978 80006D78 24010003 */     addiu $at, $zero, 3
  /* 00797C 80006D7C 00047C02 */       srl $t7, $a0, 0x10
  /* 007980 80006D80 15C10003 */       bne $t6, $at, .L80006D90
  /* 007984 80006D84 31F8F800 */      andi $t8, $t7, 0xf800
  /* 007988 80006D88 03E00008 */        jr $ra
  /* 00798C 80006D8C 00801025 */        or $v0, $a0, $zero

  .L80006D90:
  /* 007990 80006D90 0004CB42 */       srl $t9, $a0, 0xd
  /* 007994 80006D94 332807C0 */      andi $t0, $t9, 0x7c0
  /* 007998 80006D98 00045282 */       srl $t2, $a0, 0xa
  /* 00799C 80006D9C 314B003E */      andi $t3, $t2, 0x3e
  /* 0079A0 80006DA0 03084825 */        or $t1, $t8, $t0
  /* 0079A4 80006DA4 000469C2 */       srl $t5, $a0, 7
  /* 0079A8 80006DA8 31AE0001 */      andi $t6, $t5, 1
  /* 0079AC 80006DAC 012B6025 */        or $t4, $t1, $t3
  /* 0079B0 80006DB0 018E1025 */        or $v0, $t4, $t6
  /* 0079B4 80006DB4 00027C00 */       sll $t7, $v0, 0x10
  /* 0079B8 80006DB8 01E21825 */        or $v1, $t7, $v0
  /* 0079BC 80006DBC 03E00008 */        jr $ra
  /* 0079C0 80006DC0 00601025 */        or $v0, $v1, $zero

glabel func_80006DC4
  /* 0079C4 80006DC4 27BDFFB8 */     addiu $sp, $sp, -0x48
  /* 0079C8 80006DC8 3C028004 */       lui $v0, %hi(D_80046688)
  /* 0079CC 80006DCC 24426688 */     addiu $v0, $v0, %lo(D_80046688)
  /* 0079D0 80006DD0 AFBF0014 */        sw $ra, 0x14($sp)
  /* 0079D4 80006DD4 240E0005 */     addiu $t6, $zero, 5
  /* 0079D8 80006DD8 240F0064 */     addiu $t7, $zero, 0x64
  /* 0079DC 80006DDC AC440000 */        sw $a0, ($v0) # D_80046688 + 0
  /* 0079E0 80006DE0 00801825 */        or $v1, $a0, $zero
  /* 0079E4 80006DE4 AFAE0018 */        sw $t6, 0x18($sp)
  /* 0079E8 80006DE8 AFAF001C */        sw $t7, 0x1c($sp)
  /* 0079EC 80006DEC AC450004 */        sw $a1, 4($v0) # D_80046688 + 4
  /* 0079F0 80006DF0 AC460008 */        sw $a2, 8($v0) # D_80046688 + 8
  /* 0079F4 80006DF4 AFA3003C */        sw $v1, 0x3c($sp)
  /* 0079F8 80006DF8 27A40018 */     addiu $a0, $sp, 0x18
  /* 0079FC 80006DFC AFA50040 */        sw $a1, 0x40($sp)
  /* 007A00 80006E00 0C00025C */       jal func_80000970
  /* 007A04 80006E04 AFA60044 */        sw $a2, 0x44($sp)
  /* 007A08 80006E08 8FBF0014 */        lw $ra, 0x14($sp)
  /* 007A0C 80006E0C 27BD0048 */     addiu $sp, $sp, 0x48
  /* 007A10 80006E10 03E00008 */        jr $ra
  /* 007A14 80006E14 00000000 */       nop 

glabel func_80006E18
  /* 007A18 80006E18 3C028004 */       lui $v0, %hi(D_80046680)
  /* 007A1C 80006E1C 24426680 */     addiu $v0, $v0, %lo(D_80046680)
  /* 007A20 80006E20 8C4E0000 */        lw $t6, ($v0) # D_80046680 + 0
  /* 007A24 80006E24 30980020 */      andi $t8, $a0, 0x20
  /* 007A28 80006E28 30880010 */      andi $t0, $a0, 0x10
  /* 007A2C 80006E2C 01C47825 */        or $t7, $t6, $a0
  /* 007A30 80006E30 13000004 */      beqz $t8, .L80006E44
  /* 007A34 80006E34 AC4F0000 */        sw $t7, ($v0) # D_80046680 + 0
  /* 007A38 80006E38 24190003 */     addiu $t9, $zero, 3
  /* 007A3C 80006E3C 3C018004 */       lui $at, %hi(D_80046674)
  /* 007A40 80006E40 AC396674 */        sw $t9, %lo(D_80046674)($at)
  .L80006E44:
  /* 007A44 80006E44 11000004 */      beqz $t0, .L80006E58
  /* 007A48 80006E48 240A0001 */     addiu $t2, $zero, 1
  /* 007A4C 80006E4C 24090002 */     addiu $t1, $zero, 2
  /* 007A50 80006E50 3C018004 */       lui $at, %hi(D_80046674)
  /* 007A54 80006E54 AC296674 */        sw $t1, %lo(D_80046674)($at)
  .L80006E58:
  /* 007A58 80006E58 3C018004 */       lui $at, %hi(D_80046684)
  /* 007A5C 80006E5C 03E00008 */        jr $ra
  /* 007A60 80006E60 AC2A6684 */        sw $t2, %lo(D_80046684)($at)

glabel func_80006E64
  /* 007A64 80006E64 3C018004 */       lui $at, %hi(D_80046678)
  /* 007A68 80006E68 AC246678 */        sw $a0, %lo(D_80046678)($at)
  /* 007A6C 80006E6C 3C018004 */       lui $at, %hi(D_80046684)
  /* 007A70 80006E70 240E0001 */     addiu $t6, $zero, 1
  /* 007A74 80006E74 03E00008 */        jr $ra
  /* 007A78 80006E78 AC2E6684 */        sw $t6, %lo(D_80046684)($at)

glabel func_80006E7C
  /* 007A7C 80006E7C 3C018004 */       lui $at, %hi(D_8004667C)
  /* 007A80 80006E80 AC24667C */        sw $a0, %lo(D_8004667C)($at)
  /* 007A84 80006E84 3C018004 */       lui $at, %hi(D_80046684)
  /* 007A88 80006E88 240E0001 */     addiu $t6, $zero, 1
  /* 007A8C 80006E8C 03E00008 */        jr $ra
  /* 007A90 80006E90 AC2E6684 */        sw $t6, %lo(D_80046684)($at)

glabel func_80006E94
  /* 007A94 80006E94 AFA40000 */        sw $a0, ($sp)
  /* 007A98 80006E98 00042400 */       sll $a0, $a0, 0x10
  /* 007A9C 80006E9C 00042403 */       sra $a0, $a0, 0x10
  /* 007AA0 80006EA0 AFA50004 */        sw $a1, 4($sp)
  /* 007AA4 80006EA4 3C018004 */       lui $at, %hi(D_80046694)
  /* 007AA8 80006EA8 00052C00 */       sll $a1, $a1, 0x10
  /* 007AAC 80006EAC A4246694 */        sh $a0, %lo(D_80046694)($at)
  /* 007AB0 80006EB0 00052C03 */       sra $a1, $a1, 0x10
  /* 007AB4 80006EB4 AFA60008 */        sw $a2, 8($sp)
  /* 007AB8 80006EB8 3C018004 */       lui $at, %hi(D_80046696)
  /* 007ABC 80006EBC 00063400 */       sll $a2, $a2, 0x10
  /* 007AC0 80006EC0 A4256696 */        sh $a1, %lo(D_80046696)($at)
  /* 007AC4 80006EC4 00063403 */       sra $a2, $a2, 0x10
  /* 007AC8 80006EC8 AFA7000C */        sw $a3, 0xc($sp)
  /* 007ACC 80006ECC 3C018004 */       lui $at, %hi(D_80046698)
  /* 007AD0 80006ED0 00073C00 */       sll $a3, $a3, 0x10
  /* 007AD4 80006ED4 A4266698 */        sh $a2, %lo(D_80046698)($at)
  /* 007AD8 80006ED8 00073C03 */       sra $a3, $a3, 0x10
  /* 007ADC 80006EDC 3C018004 */       lui $at, %hi(D_8004669A)
  /* 007AE0 80006EE0 A427669A */        sh $a3, %lo(D_8004669A)($at)
  /* 007AE4 80006EE4 3C018004 */       lui $at, %hi(D_80046684)
  /* 007AE8 80006EE8 240E0001 */     addiu $t6, $zero, 1
  /* 007AEC 80006EEC 03E00008 */        jr $ra
  /* 007AF0 80006EF0 AC2E6684 */        sw $t6, %lo(D_80046684)($at)

glabel func_80006EF4
  /* 007AF4 80006EF4 3C0E8004 */       lui $t6, %hi(D_80046678)
  /* 007AF8 80006EF8 8DCE6678 */        lw $t6, %lo(D_80046678)($t6)
  /* 007AFC 80006EFC 3C0F8004 */       lui $t7, %hi(D_8004667C)
  /* 007B00 80006F00 3C028004 */       lui $v0, %hi(D_80046680)
  /* 007B04 80006F04 AC8E0024 */        sw $t6, 0x24($a0)
  /* 007B08 80006F08 8DEF667C */        lw $t7, %lo(D_8004667C)($t7)
  /* 007B0C 80006F0C 24426680 */     addiu $v0, $v0, %lo(D_80046680)
  /* 007B10 80006F10 3C198004 */       lui $t9, %hi(D_80046694)
  /* 007B14 80006F14 AC8F0028 */        sw $t7, 0x28($a0)
  /* 007B18 80006F18 8C580000 */        lw $t8, ($v0) # D_80046680 + 0
  /* 007B1C 80006F1C 3C088004 */       lui $t0, %hi(D_80046696)
  /* 007B20 80006F20 3C098004 */       lui $t1, %hi(D_80046698)
  /* 007B24 80006F24 AC98002C */        sw $t8, 0x2c($a0)
  /* 007B28 80006F28 87396694 */        lh $t9, %lo(D_80046694)($t9)
  /* 007B2C 80006F2C 3C0A8004 */       lui $t2, %hi(D_8004669A)
  /* 007B30 80006F30 3C018004 */       lui $at, %hi(D_80046684)
  /* 007B34 80006F34 A4990030 */        sh $t9, 0x30($a0)
  /* 007B38 80006F38 85086696 */        lh $t0, %lo(D_80046696)($t0)
  /* 007B3C 80006F3C A4880032 */        sh $t0, 0x32($a0)
  /* 007B40 80006F40 85296698 */        lh $t1, %lo(D_80046698)($t1)
  /* 007B44 80006F44 A4890034 */        sh $t1, 0x34($a0)
  /* 007B48 80006F48 854A669A */        lh $t2, %lo(D_8004669A)($t2)
  /* 007B4C 80006F4C A48A0036 */        sh $t2, 0x36($a0)
  /* 007B50 80006F50 AC400000 */        sw $zero, ($v0) # D_80046680 + 0
  /* 007B54 80006F54 03E00008 */        jr $ra
  /* 007B58 80006F58 AC206684 */        sw $zero, %lo(D_80046684)($at)

glabel func_80006F5C
  /* 007B5C 80006F5C 3C0E8004 */       lui $t6, %hi(D_80046684)
  /* 007B60 80006F60 8DCE6684 */        lw $t6, %lo(D_80046684)($t6)
  /* 007B64 80006F64 27BDFFE8 */     addiu $sp, $sp, -0x18
  /* 007B68 80006F68 AFBF0014 */        sw $ra, 0x14($sp)
  /* 007B6C 80006F6C 11C0000E */      beqz $t6, .L80006FA8
  /* 007B70 80006F70 00802825 */        or $a1, $a0, $zero
  /* 007B74 80006F74 240F0004 */     addiu $t7, $zero, 4
  /* 007B78 80006F78 24180032 */     addiu $t8, $zero, 0x32
  /* 007B7C 80006F7C AC8F0000 */        sw $t7, ($a0)
  /* 007B80 80006F80 AC980004 */        sw $t8, 4($a0)
  /* 007B84 80006F84 AC800014 */        sw $zero, 0x14($a0)
  /* 007B88 80006F88 AC800020 */        sw $zero, 0x20($a0)
  /* 007B8C 80006F8C 0C001BBD */       jal func_80006EF4
  /* 007B90 80006F90 AFA50018 */        sw $a1, 0x18($sp)
  /* 007B94 80006F94 3C048004 */       lui $a0, %hi(gScheduleTaskQueue)
  /* 007B98 80006F98 8FA50018 */        lw $a1, 0x18($sp)
  /* 007B9C 80006F9C 24844FF8 */     addiu $a0, $a0, %lo(gScheduleTaskQueue)
  /* 007BA0 80006FA0 0C00C000 */       jal osSendMesg
  /* 007BA4 80006FA4 00003025 */        or $a2, $zero, $zero
  .L80006FA8:
  /* 007BA8 80006FA8 8FBF0014 */        lw $ra, 0x14($sp)
  /* 007BAC 80006FAC 27BD0018 */     addiu $sp, $sp, 0x18
  /* 007BB0 80006FB0 03E00008 */        jr $ra
  /* 007BB4 80006FB4 00000000 */       nop 

glabel func_80006FB8
  /* 007BB8 80006FB8 27BDFFB0 */     addiu $sp, $sp, -0x50
  /* 007BBC 80006FBC 3C018004 */       lui $at, %hi(D_80046680)
  /* 007BC0 80006FC0 AC206680 */        sw $zero, %lo(D_80046680)($at)
  /* 007BC4 80006FC4 AFBF0014 */        sw $ra, 0x14($sp)
  /* 007BC8 80006FC8 AFA40050 */        sw $a0, 0x50($sp)
  /* 007BCC 80006FCC 3C018004 */       lui $at, %hi(D_80046674)
  /* 007BD0 80006FD0 240E0002 */     addiu $t6, $zero, 2
  /* 007BD4 80006FD4 AFA50054 */        sw $a1, 0x54($sp)
  /* 007BD8 80006FD8 AC2E6674 */        sw $t6, %lo(D_80046674)($at)
  /* 007BDC 80006FDC 0C001B86 */       jal func_80006E18
  /* 007BE0 80006FE0 00C02025 */        or $a0, $a2, $zero
  /* 007BE4 80006FE4 0C001B99 */       jal func_80006E64
  /* 007BE8 80006FE8 8FA40050 */        lw $a0, 0x50($sp)
  /* 007BEC 80006FEC 0C001B9F */       jal func_80006E7C
  /* 007BF0 80006FF0 8FA40054 */        lw $a0, 0x54($sp)
  /* 007BF4 80006FF4 240F0004 */     addiu $t7, $zero, 4
  /* 007BF8 80006FF8 24180064 */     addiu $t8, $zero, 0x64
  /* 007BFC 80006FFC AFAF0018 */        sw $t7, 0x18($sp)
  /* 007C00 80007000 AFB8001C */        sw $t8, 0x1c($sp)
  /* 007C04 80007004 0C001BBD */       jal func_80006EF4
  /* 007C08 80007008 27A40018 */     addiu $a0, $sp, 0x18
  /* 007C0C 8000700C 0C00025C */       jal func_80000970
  /* 007C10 80007010 27A40018 */     addiu $a0, $sp, 0x18
  /* 007C14 80007014 8FBF0014 */        lw $ra, 0x14($sp)
  /* 007C18 80007018 27BD0050 */     addiu $sp, $sp, 0x50
  /* 007C1C 8000701C 03E00008 */        jr $ra
  /* 007C20 80007020 00000000 */       nop 

glabel func_80007024
  /* 007C24 80007024 27BDFFE8 */     addiu $sp, $sp, -0x18
  /* 007C28 80007028 AFBF0014 */        sw $ra, 0x14($sp)
  /* 007C2C 8000702C 00803825 */        or $a3, $a0, $zero
  /* 007C30 80007030 8CE50004 */        lw $a1, 4($a3)
  /* 007C34 80007034 8CE60008 */        lw $a2, 8($a3)
  /* 007C38 80007038 8C840000 */        lw $a0, ($a0)
  /* 007C3C 8000703C 0C001B71 */       jal func_80006DC4
  /* 007C40 80007040 AFA70018 */        sw $a3, 0x18($sp)
  /* 007C44 80007044 8FA70018 */        lw $a3, 0x18($sp)
  /* 007C48 80007048 3C018004 */       lui $at, %hi(D_80046670)
  /* 007C4C 8000704C 8CEE000C */        lw $t6, 0xc($a3)
  /* 007C50 80007050 AC2E6670 */        sw $t6, %lo(D_80046670)($at)
  /* 007C54 80007054 8CE60018 */        lw $a2, 0x18($a3)
  /* 007C58 80007058 8CE50014 */        lw $a1, 0x14($a3)
  /* 007C5C 8000705C 0C001BEE */       jal func_80006FB8
  /* 007C60 80007060 8CE40010 */        lw $a0, 0x10($a3)
  /* 007C64 80007064 8FBF0014 */        lw $ra, 0x14($sp)
  /* 007C68 80007068 27BD0018 */     addiu $sp, $sp, 0x18
  /* 007C6C 8000706C 03E00008 */        jr $ra
  /* 007C70 80007070 00000000 */       nop 

  /* 007C74 80007074 00000000 */       nop 
  /* 007C78 80007078 00000000 */       nop 
  /* 007C7C 8000707C 00000000 */       nop 
