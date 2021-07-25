.section .text
glabel func_ovl0_800CD678
  /* 049058 800CD678 27BDFFE8 */     addiu $sp, $sp, -0x18
  /* 04905C 800CD67C AFBF0014 */        sw $ra, 0x14($sp)
  /* 049060 800CD680 0C033588 */       jal func_ovl0_800CD620
  /* 049064 800CD684 00000000 */       nop 
  /* 049068 800CD688 8FBF0014 */        lw $ra, 0x14($sp)
  /* 04906C 800CD68C 27BD0018 */     addiu $sp, $sp, 0x18
  /* 049070 800CD690 03E00008 */        jr $ra
  /* 049074 800CD694 00000000 */       nop 

