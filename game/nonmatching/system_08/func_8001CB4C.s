.section .text
glabel func_8001CB4C
  /* 01D74C 8001CB4C 27BDFF98 */     addiu $sp, $sp, -0x68
  /* 01D750 8001CB50 44856000 */      mtc1 $a1, $f12
  /* 01D754 8001CB54 44867000 */      mtc1 $a2, $f14
  /* 01D758 8001CB58 C7A40078 */      lwc1 $f4, 0x78($sp)
  /* 01D75C 8001CB5C C7A6007C */      lwc1 $f6, 0x7c($sp)
  /* 01D760 8001CB60 C7A80080 */      lwc1 $f8, 0x80($sp)
  /* 01D764 8001CB64 AFBF0024 */        sw $ra, 0x24($sp)
  /* 01D768 8001CB68 AFA40068 */        sw $a0, 0x68($sp)
  /* 01D76C 8001CB6C 44056000 */      mfc1 $a1, $f12
  /* 01D770 8001CB70 44067000 */      mfc1 $a2, $f14
  /* 01D774 8001CB74 AFA70074 */        sw $a3, 0x74($sp)
  /* 01D778 8001CB78 27A40028 */     addiu $a0, $sp, 0x28
  /* 01D77C 8001CB7C E7A40010 */      swc1 $f4, 0x10($sp)
  /* 01D780 8001CB80 E7A60014 */      swc1 $f6, 0x14($sp)
  /* 01D784 8001CB84 0C0072BE */       jal func_8001CAF8
  /* 01D788 8001CB88 E7A80018 */      swc1 $f8, 0x18($sp)
  /* 01D78C 8001CB8C 27A40028 */     addiu $a0, $sp, 0x28
  /* 01D790 8001CB90 0C0067A8 */       jal func_80019EA0
  /* 01D794 8001CB94 8FA50068 */        lw $a1, 0x68($sp)
  /* 01D798 8001CB98 8FBF0024 */        lw $ra, 0x24($sp)
  /* 01D79C 8001CB9C 27BD0068 */     addiu $sp, $sp, 0x68
  /* 01D7A0 8001CBA0 03E00008 */        jr $ra
  /* 01D7A4 8001CBA4 00000000 */       nop 

