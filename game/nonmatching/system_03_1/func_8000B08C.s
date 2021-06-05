.section .text
glabel func_8000B08C
  /* 00BC8C 8000B08C 27BDFFC8 */     addiu $sp, $sp, -0x38
  /* 00BC90 8000B090 AFB70030 */        sw $s7, 0x30($sp)
  /* 00BC94 8000B094 AFB6002C */        sw $s6, 0x2c($sp)
  /* 00BC98 8000B098 AFB50028 */        sw $s5, 0x28($sp)
  /* 00BC9C 8000B09C AFB40024 */        sw $s4, 0x24($sp)
  /* 00BCA0 8000B0A0 AFB30020 */        sw $s3, 0x20($sp)
  /* 00BCA4 8000B0A4 AFB2001C */        sw $s2, 0x1c($sp)
  /* 00BCA8 8000B0A8 AFB10018 */        sw $s1, 0x18($sp)
  /* 00BCAC 8000B0AC 3C168004 */       lui $s6, %hi(gOMObjCommonLinks)
  /* 00BCB0 8000B0B0 3C178004 */       lui $s7, %hi(gOMObjCommonLinks + (0x21 * 4))
  /* 00BCB4 8000B0B4 00A08825 */        or $s1, $a1, $zero
  /* 00BCB8 8000B0B8 00809025 */        or $s2, $a0, $zero
  /* 00BCBC 8000B0BC 00C09825 */        or $s3, $a2, $zero
  /* 00BCC0 8000B0C0 AFBF0034 */        sw $ra, 0x34($sp)
  /* 00BCC4 8000B0C4 AFB00014 */        sw $s0, 0x14($sp)
  /* 00BCC8 8000B0C8 0000A825 */        or $s5, $zero, $zero
  /* 00BCCC 8000B0CC 26F76774 */     addiu $s7, $s7, %lo(gOMObjCommonLinks + (0x21 * 4))
  /* 00BCD0 8000B0D0 26D666F0 */     addiu $s6, $s6, %lo(gOMObjCommonLinks)
  /* 00BCD4 8000B0D4 24140001 */     addiu $s4, $zero, 1
  /* 00BCD8 8000B0D8 8EC40000 */        lw $a0, ($s6) # gOMObjCommonLinks + 0
  .L8000B0DC:
  /* 00BCDC 8000B0DC 5080000D */      beql $a0, $zero, .L8000B114
  /* 00BCE0 8000B0E0 26D60004 */     addiu $s6, $s6, 4
  .L8000B0E4:
  /* 00BCE4 8000B0E4 8C900004 */        lw $s0, 4($a0)
  /* 00BCE8 8000B0E8 0240F809 */      jalr $s2
  /* 00BCEC 8000B0EC 02202825 */        or $a1, $s1, $zero
  /* 00BCF0 8000B0F0 10400005 */      beqz $v0, .L8000B108
  /* 00BCF4 8000B0F4 00000000 */       nop 
  /* 00BCF8 8000B0F8 16740003 */       bne $s3, $s4, .L8000B108
  /* 00BCFC 8000B0FC 0040A825 */        or $s5, $v0, $zero
  /* 00BD00 8000B100 10000008 */         b .L8000B124
  /* 00BD04 8000B104 8FBF0034 */        lw $ra, 0x34($sp)
  .L8000B108:
  /* 00BD08 8000B108 1600FFF6 */      bnez $s0, .L8000B0E4
  /* 00BD0C 8000B10C 02002025 */        or $a0, $s0, $zero
  /* 00BD10 8000B110 26D60004 */     addiu $s6, $s6, 4
  .L8000B114:
  /* 00BD14 8000B114 56D7FFF1 */      bnel $s6, $s7, .L8000B0DC
  /* 00BD18 8000B118 8EC40000 */        lw $a0, ($s6) # gOMObjCommonLinks + 0
  /* 00BD1C 8000B11C 02A01025 */        or $v0, $s5, $zero
  /* 00BD20 8000B120 8FBF0034 */        lw $ra, 0x34($sp)
  .L8000B124:
  /* 00BD24 8000B124 8FB00014 */        lw $s0, 0x14($sp)
  /* 00BD28 8000B128 8FB10018 */        lw $s1, 0x18($sp)
  /* 00BD2C 8000B12C 8FB2001C */        lw $s2, 0x1c($sp)
  /* 00BD30 8000B130 8FB30020 */        lw $s3, 0x20($sp)
  /* 00BD34 8000B134 8FB40024 */        lw $s4, 0x24($sp)
  /* 00BD38 8000B138 8FB50028 */        lw $s5, 0x28($sp)
  /* 00BD3C 8000B13C 8FB6002C */        lw $s6, 0x2c($sp)
  /* 00BD40 8000B140 8FB70030 */        lw $s7, 0x30($sp)
  /* 00BD44 8000B144 03E00008 */        jr $ra
  /* 00BD48 8000B148 27BD0038 */     addiu $sp, $sp, 0x38

# struct GObjCommon *func_8000B14C(struct GObjCommon *, s32 id)
