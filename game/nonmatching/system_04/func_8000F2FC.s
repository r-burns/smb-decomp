.section .text
glabel func_8000F2FC
  /* 00FEFC 8000F2FC 27BDFFE8 */     addiu $sp, $sp, -0x18
  /* 00FF00 8000F300 AFA5001C */        sw $a1, 0x1c($sp)
  /* 00FF04 8000F304 30A500FF */      andi $a1, $a1, 0xff
  /* 00FF08 8000F308 AFBF0014 */        sw $ra, 0x14($sp)
  /* 00FF0C 8000F30C AFA40018 */        sw $a0, 0x18($sp)
  /* 00FF10 8000F310 AFA60020 */        sw $a2, 0x20($sp)
  /* 00FF14 8000F314 10A00003 */      beqz $a1, .L8000F324
  /* 00FF18 8000F318 AFA70024 */        sw $a3, 0x24($sp)
  /* 00FF1C 8000F31C 0C002330 */       jal func_80008CC0
  /* 00FF20 8000F320 00003025 */        or $a2, $zero, $zero
  .L8000F324:
  /* 00FF24 8000F324 93AE0023 */       lbu $t6, 0x23($sp)
  /* 00FF28 8000F328 8FA40018 */        lw $a0, 0x18($sp)
  /* 00FF2C 8000F32C 11C00003 */      beqz $t6, .L8000F33C
  /* 00FF30 8000F330 01C02825 */        or $a1, $t6, $zero
  /* 00FF34 8000F334 0C002330 */       jal func_80008CC0
  /* 00FF38 8000F338 00003025 */        or $a2, $zero, $zero
  .L8000F33C:
  /* 00FF3C 8000F33C 93AF0027 */       lbu $t7, 0x27($sp)
  /* 00FF40 8000F340 8FA40018 */        lw $a0, 0x18($sp)
  /* 00FF44 8000F344 11E00003 */      beqz $t7, .L8000F354
  /* 00FF48 8000F348 01E02825 */        or $a1, $t7, $zero
  /* 00FF4C 8000F34C 0C002330 */       jal func_80008CC0
  /* 00FF50 8000F350 00003025 */        or $a2, $zero, $zero
  .L8000F354:
  /* 00FF54 8000F354 8FBF0014 */        lw $ra, 0x14($sp)
  /* 00FF58 8000F358 27BD0018 */     addiu $sp, $sp, 0x18
  /* 00FF5C 8000F35C 03E00008 */        jr $ra
  /* 00FF60 8000F360 00000000 */       nop 

