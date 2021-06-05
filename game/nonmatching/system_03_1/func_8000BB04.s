.section .text
glabel func_8000BB04
  /* 00C704 8000BB04 27BDFFD8 */     addiu $sp, $sp, -0x28
  /* 00C708 8000BB08 AFBF0024 */        sw $ra, 0x24($sp)
  /* 00C70C 8000BB0C AFB00020 */        sw $s0, 0x20($sp)
  /* 00C710 8000BB10 F7B40018 */      sdc1 $f20, 0x18($sp)
  /* 00C714 8000BB14 8C900074 */        lw $s0, 0x74($a0)
  /* 00C718 8000BB18 4485A000 */      mtc1 $a1, $f20
  /* 00C71C 8000BB1C 52000007 */      beql $s0, $zero, .L8000BB3C
  /* 00C720 8000BB20 8FBF0024 */        lw $ra, 0x24($sp)
  .L8000BB24:
  /* 00C724 8000BB24 E6140078 */      swc1 $f20, 0x78($s0)
  /* 00C728 8000BB28 0C002EA8 */       jal func_8000BAA0
  /* 00C72C 8000BB2C 02002025 */        or $a0, $s0, $zero
  /* 00C730 8000BB30 1440FFFC */      bnez $v0, .L8000BB24
  /* 00C734 8000BB34 00408025 */        or $s0, $v0, $zero
  /* 00C738 8000BB38 8FBF0024 */        lw $ra, 0x24($sp)
  .L8000BB3C:
  /* 00C73C 8000BB3C D7B40018 */      ldc1 $f20, 0x18($sp)
  /* 00C740 8000BB40 8FB00020 */        lw $s0, 0x20($sp)
  /* 00C744 8000BB44 03E00008 */        jr $ra
  /* 00C748 8000BB48 27BD0028 */     addiu $sp, $sp, 0x28

