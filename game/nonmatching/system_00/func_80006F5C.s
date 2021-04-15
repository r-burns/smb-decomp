.section .text
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

