.section .text
glabel func_8000B198
  /* 00BD98 8000B198 27BDFFE8 */     addiu $sp, $sp, -0x18
  /* 00BD9C 8000B19C 00802825 */        or $a1, $a0, $zero
  /* 00BDA0 8000B1A0 AFBF0014 */        sw $ra, 0x14($sp)
  /* 00BDA4 8000B1A4 3C048001 */       lui $a0, %hi(func_8000B14C)
  /* 00BDA8 8000B1A8 2484B14C */     addiu $a0, $a0, %lo(func_8000B14C)
  /* 00BDAC 8000B1AC 0C002C23 */       jal func_8000B08C
  /* 00BDB0 8000B1B0 24060001 */     addiu $a2, $zero, 1
  /* 00BDB4 8000B1B4 8FBF0014 */        lw $ra, 0x14($sp)
  /* 00BDB8 8000B1B8 27BD0018 */     addiu $sp, $sp, 0x18
  /* 00BDBC 8000B1BC 03E00008 */        jr $ra
  /* 00BDC0 8000B1C0 00000000 */       nop 

