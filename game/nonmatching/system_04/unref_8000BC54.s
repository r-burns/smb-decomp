.section .text
glabel unref_8000BC54
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

