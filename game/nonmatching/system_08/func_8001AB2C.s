.section .text
glabel func_8001AB2C
  /* 01B72C 8001AB2C 27BDFF88 */     addiu $sp, $sp, -0x78
  /* 01B730 8001AB30 C7A40088 */      lwc1 $f4, 0x88($sp)
  /* 01B734 8001AB34 44866000 */      mtc1 $a2, $f12
  /* 01B738 8001AB38 44877000 */      mtc1 $a3, $f14
  /* 01B73C 8001AB3C E7A40010 */      swc1 $f4, 0x10($sp)
  /* 01B740 8001AB40 C7A400A0 */      lwc1 $f4, 0xa0($sp)
  /* 01B744 8001AB44 C7A6008C */      lwc1 $f6, 0x8c($sp)
  /* 01B748 8001AB48 C7A80090 */      lwc1 $f8, 0x90($sp)
  /* 01B74C 8001AB4C C7AA0094 */      lwc1 $f10, 0x94($sp)
  /* 01B750 8001AB50 C7B00098 */      lwc1 $f16, 0x98($sp)
  /* 01B754 8001AB54 C7B2009C */      lwc1 $f18, 0x9c($sp)
  /* 01B758 8001AB58 AFBF0034 */        sw $ra, 0x34($sp)
  /* 01B75C 8001AB5C AFA40078 */        sw $a0, 0x78($sp)
  /* 01B760 8001AB60 44066000 */      mfc1 $a2, $f12
  /* 01B764 8001AB64 44077000 */      mfc1 $a3, $f14
  /* 01B768 8001AB68 27A40038 */     addiu $a0, $sp, 0x38
  /* 01B76C 8001AB6C E7A40028 */      swc1 $f4, 0x28($sp)
  /* 01B770 8001AB70 E7A60014 */      swc1 $f6, 0x14($sp)
  /* 01B774 8001AB74 E7A80018 */      swc1 $f8, 0x18($sp)
  /* 01B778 8001AB78 E7AA001C */      swc1 $f10, 0x1c($sp)
  /* 01B77C 8001AB7C E7B00020 */      swc1 $f16, 0x20($sp)
  /* 01B780 8001AB80 0C0069D1 */       jal func_8001A744
  /* 01B784 8001AB84 E7B20024 */      swc1 $f18, 0x24($sp)
  /* 01B788 8001AB88 27A40038 */     addiu $a0, $sp, 0x38
  /* 01B78C 8001AB8C 0C00671C */       jal func_80019C70
  /* 01B790 8001AB90 8FA50078 */        lw $a1, 0x78($sp)
  /* 01B794 8001AB94 8FBF0034 */        lw $ra, 0x34($sp)
  /* 01B798 8001AB98 27BD0078 */     addiu $sp, $sp, 0x78
  /* 01B79C 8001AB9C 03E00008 */        jr $ra
  /* 01B7A0 8001ABA0 00000000 */       nop 

