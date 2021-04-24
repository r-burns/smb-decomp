.section .text
glabel func_8000A24C
  /* 00AE4C 8000A24C 27BDFFE8 */     addiu $sp, $sp, -0x18
  /* 00AE50 8000A250 AFBF0014 */        sw $ra, 0x14($sp)
  /* 00AE54 8000A254 AFA5001C */        sw $a1, 0x1c($sp)
  /* 00AE58 8000A258 0C001F3D */       jal func_80007CF4
  /* 00AE5C 8000A25C AFA40018 */        sw $a0, 0x18($sp)
  /* 00AE60 8000A260 8FA40018 */        lw $a0, 0x18($sp)
  /* 00AE64 8000A264 8FAE001C */        lw $t6, 0x1c($sp)
  /* 00AE68 8000A268 0C001F00 */       jal func_80007C00
  /* 00AE6C 8000A26C AC8E0028 */        sw $t6, 0x28($a0)
  /* 00AE70 8000A270 8FBF0014 */        lw $ra, 0x14($sp)
  /* 00AE74 8000A274 27BD0018 */     addiu $sp, $sp, 0x18
  /* 00AE78 8000A278 03E00008 */        jr $ra
  /* 00AE7C 8000A27C 00000000 */       nop 

  /* 00AE80 8000A280 27BDFFE8 */     addiu $sp, $sp, -0x18
  /* 00AE84 8000A284 AFBF0014 */        sw $ra, 0x14($sp)
  /* 00AE88 8000A288 AFA5001C */        sw $a1, 0x1c($sp)
  /* 00AE8C 8000A28C 0C001F3D */       jal func_80007CF4
  /* 00AE90 8000A290 AFA40018 */        sw $a0, 0x18($sp)
  /* 00AE94 8000A294 8FA40018 */        lw $a0, 0x18($sp)
  /* 00AE98 8000A298 8FAE001C */        lw $t6, 0x1c($sp)
  /* 00AE9C 8000A29C 0C001F1B */       jal func_80007C6C
  /* 00AEA0 8000A2A0 AC8E0028 */        sw $t6, 0x28($a0)
  /* 00AEA4 8000A2A4 8FBF0014 */        lw $ra, 0x14($sp)
  /* 00AEA8 8000A2A8 27BD0018 */     addiu $sp, $sp, 0x18
  /* 00AEAC 8000A2AC 03E00008 */        jr $ra
  /* 00AEB0 8000A2B0 00000000 */       nop 

