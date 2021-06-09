.section .text
glabel unref_8000BCBC
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

