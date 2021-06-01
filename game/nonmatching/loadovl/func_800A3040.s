.section .text
glabel func_800A3040
  /* 041D90 800A3040 27BDFFE8 */     addiu $sp, $sp, -0x18
  /* 041D94 800A3044 AFBF0014 */        sw $ra, 0x14($sp)
  /* 041D98 800A3048 3C04800A */       lui $a0, %hi(maybe_print_info_debug)
  /* 041D9C 800A304C 0C008DDE */       jal func_80023778
  /* 041DA0 800A3050 24842E84 */     addiu $a0, $a0, %lo(maybe_print_info_debug)
  /* 041DA4 800A3054 8FBF0014 */        lw $ra, 0x14($sp)
  /* 041DA8 800A3058 27BD0018 */     addiu $sp, $sp, 0x18
  /* 041DAC 800A305C 03E00008 */        jr $ra
  /* 041DB0 800A3060 00000000 */       nop 

  /* 041DB4 800A3064 00000000 */       nop 
  /* 041DB8 800A3068 00000000 */       nop 
  /* 041DBC 800A306C 00000000 */       nop 

