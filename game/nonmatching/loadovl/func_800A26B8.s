.section .text
glabel func_800A26B8
  /* 041408 800A26B8 27BDFFE8 */     addiu $sp, $sp, -0x18
  /* 04140C 800A26BC AFBF0014 */        sw $ra, 0x14($sp)
  /* 041410 800A26C0 0C0028D0 */       jal func_8000A340
  /* 041414 800A26C4 00000000 */       nop 
  /* 041418 800A26C8 8FBF0014 */        lw $ra, 0x14($sp)
  /* 04141C 800A26CC 27BD0018 */     addiu $sp, $sp, 0x18
  /* 041420 800A26D0 03E00008 */        jr $ra
  /* 041424 800A26D4 00000000 */       nop 

