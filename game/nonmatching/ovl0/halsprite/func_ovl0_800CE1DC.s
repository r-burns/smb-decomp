.section .text
glabel func_ovl0_800CE1DC
  /* 049BBC 800CE1DC 27BDFFE8 */     addiu $sp, $sp, -0x18
  /* 049BC0 800CE1E0 AFA40018 */        sw $a0, 0x18($sp)
  /* 049BC4 800CE1E4 8FAE0018 */        lw $t6, 0x18($sp)
  /* 049BC8 800CE1E8 AFBF0014 */        sw $ra, 0x14($sp)
  /* 049BCC 800CE1EC AFA5001C */        sw $a1, 0x1c($sp)
  /* 049BD0 800CE1F0 00A03025 */        or $a2, $a1, $zero
  /* 049BD4 800CE1F4 30C400FF */      andi $a0, $a2, 0xff
  /* 049BD8 800CE1F8 0C033836 */       jal func_ovl0_800CE0D8
  /* 049BDC 800CE1FC 95C50004 */       lhu $a1, 4($t6)
  /* 049BE0 800CE200 8FAF0018 */        lw $t7, 0x18($sp)
  /* 049BE4 800CE204 ADE2005C */        sw $v0, 0x5c($t7)
  /* 049BE8 800CE208 8FBF0014 */        lw $ra, 0x14($sp)
  /* 049BEC 800CE20C 27BD0018 */     addiu $sp, $sp, 0x18
  /* 049BF0 800CE210 03E00008 */        jr $ra
  /* 049BF4 800CE214 00000000 */       nop 

