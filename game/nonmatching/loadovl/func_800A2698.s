.section .text
glabel func_800A2698
  /* 0413E8 800A2698 27BDFFE8 */     addiu $sp, $sp, -0x18
  /* 0413EC 800A269C AFBF0014 */        sw $ra, 0x14($sp)
  /* 0413F0 800A26A0 0C001A0F */       jal func_8000683C
  /* 0413F4 800A26A4 00000000 */       nop 
  /* 0413F8 800A26A8 8FBF0014 */        lw $ra, 0x14($sp)
  /* 0413FC 800A26AC 27BD0018 */     addiu $sp, $sp, 0x18
  /* 041400 800A26B0 03E00008 */        jr $ra
  /* 041404 800A26B4 00000000 */       nop 

