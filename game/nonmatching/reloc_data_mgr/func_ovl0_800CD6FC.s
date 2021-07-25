.section .text
glabel func_ovl0_800CD6FC
  /* 0490DC 800CD6FC 27BDFFE8 */     addiu $sp, $sp, -0x18
  /* 0490E0 800CD700 AFBF0014 */        sw $ra, 0x14($sp)
  /* 0490E4 800CD704 0C0335A6 */       jal func_ovl0_800CD698
  /* 0490E8 800CD708 00000000 */       nop 
  /* 0490EC 800CD70C 8FBF0014 */        lw $ra, 0x14($sp)
  /* 0490F0 800CD710 27BD0018 */     addiu $sp, $sp, 0x18
  /* 0490F4 800CD714 03E00008 */        jr $ra
  /* 0490F8 800CD718 00000000 */       nop 

