.section .text
glabel func_80018F7C
  /* 019B7C 80018F7C 27BDFFE8 */     addiu $sp, $sp, -0x18
  /* 019B80 80018F80 AFBF0014 */        sw $ra, 0x14($sp)
  /* 019B84 80018F84 C4800000 */      lwc1 $f0, ($a0)
  /* 019B88 80018F88 C4820004 */      lwc1 $f2, 4($a0)
  /* 019B8C 80018F8C C48E0008 */      lwc1 $f14, 8($a0)
  /* 019B90 80018F90 46000102 */     mul.s $f4, $f0, $f0
  /* 019B94 80018F94 00000000 */       nop 
  /* 019B98 80018F98 46021182 */     mul.s $f6, $f2, $f2
  /* 019B9C 80018F9C 46062200 */     add.s $f8, $f4, $f6
  /* 019BA0 80018FA0 460E7282 */     mul.s $f10, $f14, $f14
  /* 019BA4 80018FA4 0C00CD44 */       jal sqrtf
  /* 019BA8 80018FA8 460A4300 */     add.s $f12, $f8, $f10
  /* 019BAC 80018FAC 8FBF0014 */        lw $ra, 0x14($sp)
  /* 019BB0 80018FB0 27BD0018 */     addiu $sp, $sp, 0x18
  /* 019BB4 80018FB4 03E00008 */        jr $ra
  /* 019BB8 80018FB8 00000000 */       nop 

