.section .text
glabel func_8000B8BC
  /* 00C4BC 8000B8BC 27BDFFD8 */     addiu $sp, $sp, -0x28
  /* 00C4C0 8000B8C0 AFBF0024 */        sw $ra, 0x24($sp)
  /* 00C4C4 8000B8C4 AFB00020 */        sw $s0, 0x20($sp)
  /* 00C4C8 8000B8C8 0C00265A */       jal func_80009968
  /* 00C4CC 8000B8CC 30C600FF */      andi $a2, $a2, 0xff
  /* 00C4D0 8000B8D0 14400003 */      bnez $v0, .L8000B8E0
  /* 00C4D4 8000B8D4 00408025 */        or $s0, $v0, $zero
  /* 00C4D8 8000B8D8 10000013 */         b .L8000B928
  /* 00C4DC 8000B8DC 00001025 */        or $v0, $zero, $zero
  .L8000B8E0:
  /* 00C4E0 8000B8E0 8FAE0044 */        lw $t6, 0x44($sp)
  /* 00C4E4 8000B8E4 02002025 */        or $a0, $s0, $zero
  /* 00C4E8 8000B8E8 8FA50038 */        lw $a1, 0x38($sp)
  /* 00C4EC 8000B8EC 93A6003F */       lbu $a2, 0x3f($sp)
  /* 00C4F0 8000B8F0 8FA70040 */        lw $a3, 0x40($sp)
  /* 00C4F4 8000B8F4 0C00277D */       jal func_80009DF4
  /* 00C4F8 8000B8F8 AFAE0010 */        sw $t6, 0x10($sp)
  /* 00C4FC 8000B8FC 02002025 */        or $a0, $s0, $zero
  /* 00C500 8000B900 0C002585 */       jal func_80009614
  /* 00C504 8000B904 8FA50048 */        lw $a1, 0x48($sp)
  /* 00C508 8000B908 8FA50050 */        lw $a1, 0x50($sp)
  /* 00C50C 8000B90C 02002025 */        or $a0, $s0, $zero
  /* 00C510 8000B910 93A6004F */       lbu $a2, 0x4f($sp)
  /* 00C514 8000B914 50A00004 */      beql $a1, $zero, .L8000B928
  /* 00C518 8000B918 02001025 */        or $v0, $s0, $zero
  /* 00C51C 8000B91C 0C002062 */       jal func_80008188
  /* 00C520 8000B920 8FA70054 */        lw $a3, 0x54($sp)
  /* 00C524 8000B924 02001025 */        or $v0, $s0, $zero
  .L8000B928:
  /* 00C528 8000B928 8FBF0024 */        lw $ra, 0x24($sp)
  /* 00C52C 8000B92C 8FB00020 */        lw $s0, 0x20($sp)
  /* 00C530 8000B930 27BD0028 */     addiu $sp, $sp, 0x28
  /* 00C534 8000B934 03E00008 */        jr $ra
  /* 00C538 8000B938 00000000 */       nop 

# struct GObjCommon *func_8000B93C(s32 id, void (*arg1)(void), s32 link, u32 arg3, void (*arg4)(struct UnkA26D8 *), s32 arg5, s64 arg7, s32 arg8, s32 arg9, s32 arg10, s32 arg11, s32 arg12, s32 arg13)
