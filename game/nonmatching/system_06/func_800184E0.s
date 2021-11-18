.section .text
glabel func_800184E0
  /* 0190E0 800184E0 27BDFFE0 */     addiu $sp, $sp, -0x20
  /* 0190E4 800184E4 AFBF0014 */        sw $ra, 0x14($sp)
  /* 0190E8 800184E8 E7AC0020 */      swc1 $f12, 0x20($sp)
  /* 0190EC 800184EC 0C00C0FC */       jal __sinf
  /* 0190F0 800184F0 C7AC0020 */      lwc1 $f12, 0x20($sp)
  /* 0190F4 800184F4 E7A0001C */      swc1 $f0, 0x1c($sp)
  /* 0190F8 800184F8 0C00D734 */       jal cosf
  /* 0190FC 800184FC C7AC0020 */      lwc1 $f12, 0x20($sp)
  /* 019100 80018500 8FBF0014 */        lw $ra, 0x14($sp)
  /* 019104 80018504 C7A4001C */      lwc1 $f4, 0x1c($sp)
  /* 019108 80018508 27BD0020 */     addiu $sp, $sp, 0x20
  /* 01910C 8001850C 03E00008 */        jr $ra
  /* 019110 80018510 46002003 */     div.s $f0, $f4, $f0

