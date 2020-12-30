.section .text
glabel func_80004E90
  /* 005A90 80004E90 27BDFFE8 */     addiu $sp, $sp, -0x18
  /* 005A94 80004E94 AFBF0014 */        sw $ra, 0x14($sp)
  /* 005A98 80004E98 AFA40018 */        sw $a0, 0x18($sp)
  /* 005A9C 80004E9C AFA5001C */        sw $a1, 0x1c($sp)
  /* 005AA0 80004EA0 AFA60020 */        sw $a2, 0x20($sp)
  /* 005AA4 80004EA4 240E0006 */     addiu $t6, $zero, 6
  /* 005AA8 80004EA8 240F0064 */     addiu $t7, $zero, 0x64
  /* 005AAC 80004EAC AC8E0000 */        sw $t6, ($a0)
  /* 005AB0 80004EB0 AC8F0004 */        sw $t7, 4($a0)
  /* 005AB4 80004EB4 AC800014 */        sw $zero, 0x14($a0)
  /* 005AB8 80004EB8 AC870020 */        sw $a3, 0x20($a0)
  /* 005ABC 80004EBC 8FB80020 */        lw $t8, 0x20($sp)
  /* 005AC0 80004EC0 3C088004 */       lui $t0, %hi(D_80046630)
  /* 005AC4 80004EC4 00802825 */        or $a1, $a0, $zero
  /* 005AC8 80004EC8 AC98001C */        sw $t8, 0x1c($a0)
  /* 005ACC 80004ECC 8FB9001C */        lw $t9, 0x1c($sp)
  /* 005AD0 80004ED0 00003025 */        or $a2, $zero, $zero
  /* 005AD4 80004ED4 AC990024 */        sw $t9, 0x24($a0)
  /* 005AD8 80004ED8 8D086630 */        lw $t0, %lo(D_80046630)($t0)
  /* 005ADC 80004EDC AC880028 */        sw $t0, 0x28($a0)
  /* 005AE0 80004EE0 3C048004 */       lui $a0, %hi(gScheduleTaskQueue)
  /* 005AE4 80004EE4 0C00C000 */       jal osSendMesg
  /* 005AE8 80004EE8 24844FF8 */     addiu $a0, $a0, %lo(gScheduleTaskQueue)
  /* 005AEC 80004EEC 8FBF0014 */        lw $ra, 0x14($sp)
  /* 005AF0 80004EF0 27BD0018 */     addiu $sp, $sp, 0x18
  /* 005AF4 80004EF4 03E00008 */        jr $ra
  /* 005AF8 80004EF8 00000000 */       nop 

