.section .text
glabel func_80007EB0
  /* 008AB0 80007EB0 3C028004 */       lui $v0, %hi(D_80046A20)
  /* 008AB4 80007EB4 24426A20 */     addiu $v0, $v0, %lo(D_80046A20)
  /* 008AB8 80007EB8 8C4E0000 */        lw $t6, ($v0) # D_80046A20 + 0
  /* 008ABC 80007EBC 3C038004 */       lui $v1, %hi(D_80046A24)
  /* 008AC0 80007EC0 24636A24 */     addiu $v1, $v1, %lo(D_80046A24)
  /* 008AC4 80007EC4 AC8E0000 */        sw $t6, ($a0)
  /* 008AC8 80007EC8 8C6F0000 */        lw $t7, ($v1) # D_80046A24 + 0
  /* 008ACC 80007ECC AC440000 */        sw $a0, ($v0) # D_80046A20 + 0
  /* 008AD0 80007ED0 25F8FFFF */     addiu $t8, $t7, -1
  /* 008AD4 80007ED4 03E00008 */        jr $ra
  /* 008AD8 80007ED8 AC780000 */        sw $t8, ($v1) # D_80046A24 + 0

