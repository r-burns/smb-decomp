.section .text
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

