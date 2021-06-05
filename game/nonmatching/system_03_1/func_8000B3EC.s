.section .text
glabel func_8000B3EC
  /* 00BFEC 8000B3EC 27BDFFE8 */     addiu $sp, $sp, -0x18
  /* 00BFF0 8000B3F0 AFBF0014 */        sw $ra, 0x14($sp)
  /* 00BFF4 8000B3F4 AFA40018 */        sw $a0, 0x18($sp)
  /* 00BFF8 8000B3F8 24050012 */     addiu $a1, $zero, 0x12
  /* 00BFFC 8000B3FC 0C002330 */       jal func_80008CC0
  /* 00C000 8000B400 00003025 */        or $a2, $zero, $zero
  /* 00C004 8000B404 8FA40018 */        lw $a0, 0x18($sp)
  /* 00C008 8000B408 24050015 */     addiu $a1, $zero, 0x15
  /* 00C00C 8000B40C 0C002330 */       jal func_80008CC0
  /* 00C010 8000B410 00003025 */        or $a2, $zero, $zero
  /* 00C014 8000B414 8FA40018 */        lw $a0, 0x18($sp)
  /* 00C018 8000B418 24050020 */     addiu $a1, $zero, 0x20
  /* 00C01C 8000B41C 0C002330 */       jal func_80008CC0
  /* 00C020 8000B420 00003025 */        or $a2, $zero, $zero
  /* 00C024 8000B424 8FBF0014 */        lw $ra, 0x14($sp)
  /* 00C028 8000B428 27BD0018 */     addiu $sp, $sp, 0x18
  /* 00C02C 8000B42C 03E00008 */        jr $ra
  /* 00C030 8000B430 00000000 */       nop 

