.section .text
glabel func_8000AFE4
  /* 00BBE4 8000AFE4 27BDFFC8 */     addiu $sp, $sp, -0x38
  /* 00BBE8 8000AFE8 AFB00018 */        sw $s0, 0x18($sp)
  /* 00BBEC 8000AFEC 3C108004 */       lui $s0, %hi(gOMObjCommonLinks)
  /* 00BBF0 8000AFF0 00047080 */       sll $t6, $a0, 2
  /* 00BBF4 8000AFF4 020E8021 */      addu $s0, $s0, $t6
  /* 00BBF8 8000AFF8 8E1066F0 */        lw $s0, %lo(gOMObjCommonLinks)($s0)
  /* 00BBFC 8000AFFC AFB60030 */        sw $s6, 0x30($sp)
  /* 00BC00 8000B000 AFB5002C */        sw $s5, 0x2c($sp)
  /* 00BC04 8000B004 AFB40028 */        sw $s4, 0x28($sp)
  /* 00BC08 8000B008 AFB30024 */        sw $s3, 0x24($sp)
  /* 00BC0C 8000B00C 00C0A025 */        or $s4, $a2, $zero
  /* 00BC10 8000B010 00A0A825 */        or $s5, $a1, $zero
  /* 00BC14 8000B014 00E0B025 */        or $s6, $a3, $zero
  /* 00BC18 8000B018 AFBF0034 */        sw $ra, 0x34($sp)
  /* 00BC1C 8000B01C AFB20020 */        sw $s2, 0x20($sp)
  /* 00BC20 8000B020 AFB1001C */        sw $s1, 0x1c($sp)
  /* 00BC24 8000B024 1200000E */      beqz $s0, .L8000B060
  /* 00BC28 8000B028 00009825 */        or $s3, $zero, $zero
  /* 00BC2C 8000B02C 24120001 */     addiu $s2, $zero, 1
  .L8000B030:
  /* 00BC30 8000B030 8E110004 */        lw $s1, 4($s0)
  /* 00BC34 8000B034 02002025 */        or $a0, $s0, $zero
  /* 00BC38 8000B038 02A0F809 */      jalr $s5
  /* 00BC3C 8000B03C 02802825 */        or $a1, $s4, $zero
  /* 00BC40 8000B040 10400005 */      beqz $v0, .L8000B058
  /* 00BC44 8000B044 00000000 */       nop 
  /* 00BC48 8000B048 16D20003 */       bne $s6, $s2, .L8000B058
  /* 00BC4C 8000B04C 00409825 */        or $s3, $v0, $zero
  /* 00BC50 8000B050 10000005 */         b .L8000B068
  /* 00BC54 8000B054 8FBF0034 */        lw $ra, 0x34($sp)
  .L8000B058:
  /* 00BC58 8000B058 1620FFF5 */      bnez $s1, .L8000B030
  /* 00BC5C 8000B05C 02208025 */        or $s0, $s1, $zero
  .L8000B060:
  /* 00BC60 8000B060 02601025 */        or $v0, $s3, $zero
  /* 00BC64 8000B064 8FBF0034 */        lw $ra, 0x34($sp)
  .L8000B068:
  /* 00BC68 8000B068 8FB00018 */        lw $s0, 0x18($sp)
  /* 00BC6C 8000B06C 8FB1001C */        lw $s1, 0x1c($sp)
  /* 00BC70 8000B070 8FB20020 */        lw $s2, 0x20($sp)
  /* 00BC74 8000B074 8FB30024 */        lw $s3, 0x24($sp)
  /* 00BC78 8000B078 8FB40028 */        lw $s4, 0x28($sp)
  /* 00BC7C 8000B07C 8FB5002C */        lw $s5, 0x2c($sp)
  /* 00BC80 8000B080 8FB60030 */        lw $s6, 0x30($sp)
  /* 00BC84 8000B084 03E00008 */        jr $ra
  /* 00BC88 8000B088 27BD0038 */     addiu $sp, $sp, 0x38

# ?? func_8000B08C(struct GObjCommon *(*arg0)(struct GObjCommon *, s32), s32 id, s32 unk)
