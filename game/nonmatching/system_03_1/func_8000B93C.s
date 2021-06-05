.section .text
glabel func_8000B93C
  /* 00C53C 8000B93C 27BDFFC8 */     addiu $sp, $sp, -0x38
  /* 00C540 8000B940 AFBF002C */        sw $ra, 0x2c($sp)
  /* 00C544 8000B944 AFB00028 */        sw $s0, 0x28($sp)
  /* 00C548 8000B948 0C00265A */       jal func_80009968
  /* 00C54C 8000B94C 30C600FF */      andi $a2, $a2, 0xff
  /* 00C550 8000B950 14400003 */      bnez $v0, .L8000B960
  /* 00C554 8000B954 00408025 */        or $s0, $v0, $zero
  /* 00C558 8000B958 10000023 */         b .L8000B9E8
  /* 00C55C 8000B95C 00001025 */        or $v0, $zero, $zero
  .L8000B960:
  /* 00C560 8000B960 8FAE0050 */        lw $t6, 0x50($sp)
  /* 00C564 8000B964 8FAF0054 */        lw $t7, 0x54($sp)
  /* 00C568 8000B968 8FB80058 */        lw $t8, 0x58($sp)
  /* 00C56C 8000B96C 02002025 */        or $a0, $s0, $zero
  /* 00C570 8000B970 8FA50048 */        lw $a1, 0x48($sp)
  /* 00C574 8000B974 8FA6004C */        lw $a2, 0x4c($sp)
  /* 00C578 8000B978 AFAE0010 */        sw $t6, 0x10($sp)
  /* 00C57C 8000B97C AFAF0014 */        sw $t7, 0x14($sp)
  /* 00C580 8000B980 0C0027DD */       jal func_80009F74
  /* 00C584 8000B984 AFB80018 */        sw $t8, 0x18($sp)
  /* 00C588 8000B988 0C0025D8 */       jal func_80009760
  /* 00C58C 8000B98C 02002025 */        or $a0, $s0, $zero
  /* 00C590 8000B990 8FB9005C */        lw $t9, 0x5c($sp)
  /* 00C594 8000B994 AFA20030 */        sw $v0, 0x30($sp)
  /* 00C598 8000B998 53200004 */      beql $t9, $zero, .L8000B9AC
  /* 00C59C 8000B99C 8FA50064 */        lw $a1, 0x64($sp)
  /* 00C5A0 8000B9A0 0C002D1F */       jal func_8000B47C
  /* 00C5A4 8000B9A4 00402025 */        or $a0, $v0, $zero
  /* 00C5A8 8000B9A8 8FA50064 */        lw $a1, 0x64($sp)
  .L8000B9AC:
  /* 00C5AC 8000B9AC 02002025 */        or $a0, $s0, $zero
  /* 00C5B0 8000B9B0 93A60063 */       lbu $a2, 0x63($sp)
  /* 00C5B4 8000B9B4 50A00004 */      beql $a1, $zero, .L8000B9C8
  /* 00C5B8 8000B9B8 8FA8006C */        lw $t0, 0x6c($sp)
  /* 00C5BC 8000B9BC 0C002062 */       jal func_80008188
  /* 00C5C0 8000B9C0 8FA70068 */        lw $a3, 0x68($sp)
  /* 00C5C4 8000B9C4 8FA8006C */        lw $t0, 0x6c($sp)
  .L8000B9C8:
  /* 00C5C8 8000B9C8 8FAA0030 */        lw $t2, 0x30($sp)
  /* 00C5CC 8000B9CC 02001025 */        or $v0, $s0, $zero
  /* 00C5D0 8000B9D0 11000005 */      beqz $t0, .L8000B9E8
  /* 00C5D4 8000B9D4 24090007 */     addiu $t1, $zero, 7
  /* 00C5D8 8000B9D8 AD490080 */        sw $t1, 0x80($t2)
  /* 00C5DC 8000B9DC 8FAC0030 */        lw $t4, 0x30($sp)
  /* 00C5E0 8000B9E0 240B00FF */     addiu $t3, $zero, 0xff
  /* 00C5E4 8000B9E4 AD8B0084 */        sw $t3, 0x84($t4)
  .L8000B9E8:
  /* 00C5E8 8000B9E8 8FBF002C */        lw $ra, 0x2c($sp)
  /* 00C5EC 8000B9EC 8FB00028 */        lw $s0, 0x28($sp)
  /* 00C5F0 8000B9F0 27BD0038 */     addiu $sp, $sp, 0x38
  /* 00C5F4 8000B9F4 03E00008 */        jr $ra
  /* 00C5F8 8000B9F8 00000000 */       nop 

