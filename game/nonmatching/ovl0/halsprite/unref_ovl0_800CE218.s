.section .text
glabel unref_ovl0_800CE218
  /* 049BF8 800CE218 27BDFFE8 */     addiu $sp, $sp, -0x18
  /* 049BFC 800CE21C AFA40018 */        sw $a0, 0x18($sp)
  /* 049C00 800CE220 8FAE0018 */        lw $t6, 0x18($sp)
  /* 049C04 800CE224 AFBF0014 */        sw $ra, 0x14($sp)
  /* 049C08 800CE228 AFA5001C */        sw $a1, 0x1c($sp)
  /* 049C0C 800CE22C 00A03025 */        or $a2, $a1, $zero
  /* 049C10 800CE230 30C400FF */      andi $a0, $a2, 0xff
  /* 049C14 800CE234 0C033836 */       jal func_ovl0_800CE0D8
  /* 049C18 800CE238 95C50004 */       lhu $a1, 4($t6)
  /* 049C1C 800CE23C 8FAF0018 */        lw $t7, 0x18($sp)
  /* 049C20 800CE240 ADE2004C */        sw $v0, 0x4c($t7)
  /* 049C24 800CE244 8FBF0014 */        lw $ra, 0x14($sp)
  /* 049C28 800CE248 27BD0018 */     addiu $sp, $sp, 0x18
  /* 049C2C 800CE24C 03E00008 */        jr $ra
  /* 049C30 800CE250 00000000 */       nop 

