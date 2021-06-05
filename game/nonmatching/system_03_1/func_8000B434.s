.section .text
glabel func_8000B434
  /* 00C034 8000B434 27BDFFE8 */     addiu $sp, $sp, -0x18
  /* 00C038 8000B438 AFBF0014 */        sw $ra, 0x14($sp)
  /* 00C03C 8000B43C AFA40018 */        sw $a0, 0x18($sp)
  /* 00C040 8000B440 24050012 */     addiu $a1, $zero, 0x12
  /* 00C044 8000B444 0C002330 */       jal func_80008CC0
  /* 00C048 8000B448 00003025 */        or $a2, $zero, $zero
  /* 00C04C 8000B44C 8FA40018 */        lw $a0, 0x18($sp)
  /* 00C050 8000B450 2405001A */     addiu $a1, $zero, 0x1a
  /* 00C054 8000B454 0C002330 */       jal func_80008CC0
  /* 00C058 8000B458 00003025 */        or $a2, $zero, $zero
  /* 00C05C 8000B45C 8FA40018 */        lw $a0, 0x18($sp)
  /* 00C060 8000B460 24050020 */     addiu $a1, $zero, 0x20
  /* 00C064 8000B464 0C002330 */       jal func_80008CC0
  /* 00C068 8000B468 00003025 */        or $a2, $zero, $zero
  /* 00C06C 8000B46C 8FBF0014 */        lw $ra, 0x14($sp)
  /* 00C070 8000B470 27BD0018 */     addiu $sp, $sp, 0x18
  /* 00C074 8000B474 03E00008 */        jr $ra
  /* 00C078 8000B478 00000000 */       nop 

