.section .text
glabel func_80004AB0
  /* 0056B0 80004AB0 3C0E8004 */       lui $t6, %hi(D_80046630)
  /* 0056B4 80004AB4 8DCE6630 */        lw $t6, %lo(D_80046630)($t6)
  /* 0056B8 80004AB8 3C188004 */       lui $t8, %hi(D_80046570)
  /* 0056BC 80004ABC 27186570 */     addiu $t8, $t8, %lo(D_80046570)
  /* 0056C0 80004AC0 000E7940 */       sll $t7, $t6, 5
  /* 0056C4 80004AC4 27BDFFC8 */     addiu $sp, $sp, -0x38
  /* 0056C8 80004AC8 01F83821 */      addu $a3, $t7, $t8
  /* 0056CC 80004ACC 3C058004 */       lui $a1, %hi(D_800465C0)
  /* 0056D0 80004AD0 3C048004 */       lui $a0, %hi(D_800465B0)
  /* 0056D4 80004AD4 3C068004 */       lui $a2, %hi(D_800465C0)
  /* 0056D8 80004AD8 AFBF0014 */        sw $ra, 0x14($sp)
  /* 0056DC 80004ADC 24C665C0 */     addiu $a2, $a2, %lo(D_800465C0)
  /* 0056E0 80004AE0 248465B0 */     addiu $a0, $a0, %lo(D_800465B0)
  /* 0056E4 80004AE4 24A565C0 */     addiu $a1, $a1, %lo(D_800465C0)
  /* 0056E8 80004AE8 00E01025 */        or $v0, $a3, $zero
  .L80004AEC:
  /* 0056EC 80004AEC 8C430000 */        lw $v1, ($v0)
  /* 0056F0 80004AF0 24840004 */     addiu $a0, $a0, 4
  /* 0056F4 80004AF4 0086082B */      sltu $at, $a0, $a2
  /* 0056F8 80004AF8 24420008 */     addiu $v0, $v0, 8
  /* 0056FC 80004AFC 24A50004 */     addiu $a1, $a1, 4
  /* 005700 80004B00 ACA3FFFC */        sw $v1, -4($a1) # D_800465C0 + -4
  /* 005704 80004B04 1420FFF9 */      bnez $at, .L80004AEC
  /* 005708 80004B08 AC83FFFC */        sw $v1, -4($a0) # D_800465B0 + -4
  /* 00570C 80004B0C 00001825 */        or $v1, $zero, $zero
  /* 005710 80004B10 00E01025 */        or $v0, $a3, $zero
  /* 005714 80004B14 24040004 */     addiu $a0, $zero, 4
  .L80004B18:
  /* 005718 80004B18 8C590004 */        lw $t9, 4($v0)
  /* 00571C 80004B1C 13200017 */      beqz $t9, .L80004B7C
  /* 005720 80004B20 3C088004 */       lui $t0, %hi(D_800465B0)
  /* 005724 80004B24 250865B0 */     addiu $t0, $t0, %lo(D_800465B0)
  /* 005728 80004B28 00032880 */       sll $a1, $v1, 2
  /* 00572C 80004B2C 00A82021 */      addu $a0, $a1, $t0
  /* 005730 80004B30 8C890000 */        lw $t1, ($a0) # D_800465B0 + 0
  /* 005734 80004B34 3C018004 */       lui $at, %hi(D_8004662C)
  /* 005738 80004B38 AFA4001C */        sw $a0, 0x1c($sp)
  /* 00573C 80004B3C AFA50028 */        sw $a1, 0x28($sp)
  /* 005740 80004B40 0C001C5D */       jal func_80007174
  /* 005744 80004B44 AC29662C */        sw $t1, %lo(D_8004662C)($at)
  /* 005748 80004B48 8FA4001C */        lw $a0, 0x1c($sp)
  /* 00574C 80004B4C 8FA50028 */        lw $a1, 0x28($sp)
  /* 005750 80004B50 3C0BDF00 */       lui $t3, 0xdf00
  /* 005754 80004B54 8C820000 */        lw $v0, ($a0)
  /* 005758 80004B58 3C018004 */       lui $at, %hi(D_800465C0)
  /* 00575C 80004B5C 00250821 */      addu $at, $at, $a1
  /* 005760 80004B60 244A0008 */     addiu $t2, $v0, 8
  /* 005764 80004B64 AC8A0000 */        sw $t2, ($a0)
  /* 005768 80004B68 AC400004 */        sw $zero, 4($v0)
  /* 00576C 80004B6C AC4B0000 */        sw $t3, ($v0)
  /* 005770 80004B70 8C8C0000 */        lw $t4, ($a0)
  /* 005774 80004B74 10000004 */         b .L80004B88
  /* 005778 80004B78 AC2C65C0 */        sw $t4, %lo(D_800465C0)($at)
  .L80004B7C:
  /* 00577C 80004B7C 24630001 */     addiu $v1, $v1, 1
  /* 005780 80004B80 1464FFE5 */       bne $v1, $a0, .L80004B18
  /* 005784 80004B84 24420008 */     addiu $v0, $v0, 8
  .L80004B88:
  /* 005788 80004B88 8FBF0014 */        lw $ra, 0x14($sp)
  /* 00578C 80004B8C 3C018004 */       lui $at, %hi(D_80046628)
  /* 005790 80004B90 A4206628 */        sh $zero, %lo(D_80046628)($at)
  /* 005794 80004B94 03E00008 */        jr $ra
  /* 005798 80004B98 27BD0038 */     addiu $sp, $sp, 0x38

