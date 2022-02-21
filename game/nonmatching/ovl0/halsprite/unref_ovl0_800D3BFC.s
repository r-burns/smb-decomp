.section .text
glabel unref_ovl0_800D3BFC
  /* 04F5DC 800D3BFC 27BDFFE8 */     addiu $sp, $sp, -0x18
  /* 04F5E0 800D3C00 AFBF0014 */        sw $ra, 0x14($sp)
  /* 04F5E4 800D3C04 00803025 */        or $a2, $a0, $zero
  /* 04F5E8 800D3C08 90C50008 */       lbu $a1, 8($a2)
  /* 04F5EC 800D3C0C 94840004 */       lhu $a0, 4($a0)
  /* 04F5F0 800D3C10 0C034E75 */       jal func_ovl0_800D39D4
  /* 04F5F4 800D3C14 000528C3 */       sra $a1, $a1, 3
  /* 04F5F8 800D3C18 8FBF0014 */        lw $ra, 0x14($sp)
  /* 04F5FC 800D3C1C 27BD0018 */     addiu $sp, $sp, 0x18
  /* 04F600 800D3C20 03E00008 */        jr $ra
  /* 04F604 800D3C24 00000000 */       nop 

