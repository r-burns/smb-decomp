.section .text
glabel unref_8000BC10
  /* 00C810 8000BC10 27BDFFE0 */     addiu $sp, $sp, -0x20
  /* 00C814 8000BC14 AFBF001C */        sw $ra, 0x1c($sp)
  /* 00C818 8000BC18 AFB00018 */        sw $s0, 0x18($sp)
  /* 00C81C 8000BC1C 8C900074 */        lw $s0, 0x74($a0)
  /* 00C820 8000BC20 52000008 */      beql $s0, $zero, .L8000BC44
  /* 00C824 8000BC24 8FBF001C */        lw $ra, 0x1c($sp)
  .L8000BC28:
  /* 00C828 8000BC28 0C0023B9 */       jal func_80008EE4
  /* 00C82C 8000BC2C 02002025 */        or $a0, $s0, $zero
  /* 00C830 8000BC30 0C002EA8 */       jal func_8000BAA0
  /* 00C834 8000BC34 02002025 */        or $a0, $s0, $zero
  /* 00C838 8000BC38 1440FFFB */      bnez $v0, .L8000BC28
  /* 00C83C 8000BC3C 00408025 */        or $s0, $v0, $zero
  /* 00C840 8000BC40 8FBF001C */        lw $ra, 0x1c($sp)
  .L8000BC44:
  /* 00C844 8000BC44 8FB00018 */        lw $s0, 0x18($sp)
  /* 00C848 8000BC48 27BD0020 */     addiu $sp, $sp, 0x20
  /* 00C84C 8000BC4C 03E00008 */        jr $ra
  /* 00C850 8000BC50 00000000 */       nop 

