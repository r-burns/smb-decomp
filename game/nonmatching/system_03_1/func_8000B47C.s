.section .text
glabel func_8000B47C
  /* 00C07C 8000B47C 27BDFFE8 */     addiu $sp, $sp, -0x18
  /* 00C080 8000B480 AFBF0014 */        sw $ra, 0x14($sp)
  /* 00C084 8000B484 AFA40018 */        sw $a0, 0x18($sp)
  /* 00C088 8000B488 24050003 */     addiu $a1, $zero, 3
  /* 00C08C 8000B48C 0C00233C */       jal func_80008CF0
  /* 00C090 8000B490 00003025 */        or $a2, $zero, $zero
  /* 00C094 8000B494 8FA40018 */        lw $a0, 0x18($sp)
  /* 00C098 8000B498 24050006 */     addiu $a1, $zero, 6
  /* 00C09C 8000B49C 0C00233C */       jal func_80008CF0
  /* 00C0A0 8000B4A0 00003025 */        or $a2, $zero, $zero
  /* 00C0A4 8000B4A4 8FBF0014 */        lw $ra, 0x14($sp)
  /* 00C0A8 8000B4A8 27BD0018 */     addiu $sp, $sp, 0x18
  /* 00C0AC 8000B4AC 03E00008 */        jr $ra
  /* 00C0B0 8000B4B0 00000000 */       nop 

  /* 00C0B4 8000B4B4 27BDFFE0 */     addiu $sp, $sp, -0x20
  /* 00C0B8 8000B4B8 AFBF001C */        sw $ra, 0x1c($sp)
  /* 00C0BC 8000B4BC AFB00018 */        sw $s0, 0x18($sp)
  /* 00C0C0 8000B4C0 8C900074 */        lw $s0, 0x74($a0)
  /* 00C0C4 8000B4C4 52000008 */      beql $s0, $zero, .L8000B4E8
  /* 00C0C8 8000B4C8 8FBF001C */        lw $ra, 0x1c($sp)
  .L8000B4CC:
  /* 00C0CC 8000B4CC 0C00247D */       jal func_800091F4
  /* 00C0D0 8000B4D0 02002025 */        or $a0, $s0, $zero
  /* 00C0D4 8000B4D4 0C002EA8 */       jal func_8000BAA0
  /* 00C0D8 8000B4D8 02002025 */        or $a0, $s0, $zero
  /* 00C0DC 8000B4DC 1440FFFB */      bnez $v0, .L8000B4CC
  /* 00C0E0 8000B4E0 00408025 */        or $s0, $v0, $zero
  /* 00C0E4 8000B4E4 8FBF001C */        lw $ra, 0x1c($sp)
  .L8000B4E8:
  /* 00C0E8 8000B4E8 8FB00018 */        lw $s0, 0x18($sp)
  /* 00C0EC 8000B4EC 27BD0020 */     addiu $sp, $sp, 0x20
  /* 00C0F0 8000B4F0 03E00008 */        jr $ra
  /* 00C0F4 8000B4F4 00000000 */       nop 

