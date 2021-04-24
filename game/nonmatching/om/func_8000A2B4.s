.section .text
glabel func_8000A2B4
  /* 00AEB4 8000A2B4 27BDFFE8 */     addiu $sp, $sp, -0x18
  /* 00AEB8 8000A2B8 AFBF0014 */        sw $ra, 0x14($sp)
  /* 00AEBC 8000A2BC AFA5001C */        sw $a1, 0x1c($sp)
  /* 00AEC0 8000A2C0 0C001F3D */       jal func_80007CF4
  /* 00AEC4 8000A2C4 AFA40018 */        sw $a0, 0x18($sp)
  /* 00AEC8 8000A2C8 8FA5001C */        lw $a1, 0x1c($sp)
  /* 00AECC 8000A2CC 8FA40018 */        lw $a0, 0x18($sp)
  /* 00AED0 8000A2D0 8CAE0028 */        lw $t6, 0x28($a1)
  /* 00AED4 8000A2D4 0C001EE6 */       jal func_80007B98
  /* 00AED8 8000A2D8 AC8E0028 */        sw $t6, 0x28($a0)
  /* 00AEDC 8000A2DC 8FBF0014 */        lw $ra, 0x14($sp)
  /* 00AEE0 8000A2E0 27BD0018 */     addiu $sp, $sp, 0x18
  /* 00AEE4 8000A2E4 03E00008 */        jr $ra
  /* 00AEE8 8000A2E8 00000000 */       nop 

  /* 00AEEC 8000A2EC 27BDFFE8 */     addiu $sp, $sp, -0x18
  /* 00AEF0 8000A2F0 AFBF0014 */        sw $ra, 0x14($sp)
  /* 00AEF4 8000A2F4 AFA5001C */        sw $a1, 0x1c($sp)
  /* 00AEF8 8000A2F8 0C001F3D */       jal func_80007CF4
  /* 00AEFC 8000A2FC AFA40018 */        sw $a0, 0x18($sp)
  /* 00AF00 8000A300 8FA2001C */        lw $v0, 0x1c($sp)
  /* 00AF04 8000A304 8FA40018 */        lw $a0, 0x18($sp)
  /* 00AF08 8000A308 8C4E0028 */        lw $t6, 0x28($v0)
  /* 00AF0C 8000A30C AC8E0028 */        sw $t6, 0x28($a0)
  /* 00AF10 8000A310 0C001EE6 */       jal func_80007B98
  /* 00AF14 8000A314 8C450008 */        lw $a1, 8($v0)
  /* 00AF18 8000A318 8FBF0014 */        lw $ra, 0x14($sp)
  /* 00AF1C 8000A31C 27BD0018 */     addiu $sp, $sp, 0x18
  /* 00AF20 8000A320 03E00008 */        jr $ra
  /* 00AF24 8000A324 00000000 */       nop 

