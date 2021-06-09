.section .text
glabel func_8000BE28
  /* 00CA28 8000BE28 27BDFFD0 */     addiu $sp, $sp, -0x30
  /* 00CA2C 8000BE2C AFBF002C */        sw $ra, 0x2c($sp)
  /* 00CA30 8000BE30 AFB30028 */        sw $s3, 0x28($sp)
  /* 00CA34 8000BE34 AFB20024 */        sw $s2, 0x24($sp)
  /* 00CA38 8000BE38 AFB10020 */        sw $s1, 0x20($sp)
  /* 00CA3C 8000BE3C AFB0001C */        sw $s0, 0x1c($sp)
  /* 00CA40 8000BE40 F7B40010 */      sdc1 $f20, 0x10($sp)
  /* 00CA44 8000BE44 8C930074 */        lw $s3, 0x74($a0)
  /* 00CA48 8000BE48 4486A000 */      mtc1 $a2, $f20
  /* 00CA4C 8000BE4C 00A09025 */        or $s2, $a1, $zero
  /* 00CA50 8000BE50 12600019 */      beqz $s3, .L8000BEB8
  /* 00CA54 8000BE54 E4940078 */      swc1 $f20, 0x78($a0)
  .L8000BE58:
  /* 00CA58 8000BE58 12400013 */      beqz $s2, .L8000BEA8
  /* 00CA5C 8000BE5C 00000000 */       nop 
  /* 00CA60 8000BE60 8E420000 */        lw $v0, ($s2)
  /* 00CA64 8000BE64 50400010 */      beql $v0, $zero, .L8000BEA8
  /* 00CA68 8000BE68 26520004 */     addiu $s2, $s2, 4
  /* 00CA6C 8000BE6C 8E700080 */        lw $s0, 0x80($s3)
  /* 00CA70 8000BE70 00408825 */        or $s1, $v0, $zero
  /* 00CA74 8000BE74 5200000C */      beql $s0, $zero, .L8000BEA8
  /* 00CA78 8000BE78 26520004 */     addiu $s2, $s2, 4
  /* 00CA7C 8000BE7C 8E250000 */        lw $a1, ($s1)
  .L8000BE80:
  /* 00CA80 8000BE80 50A00005 */      beql $a1, $zero, .L8000BE98
  /* 00CA84 8000BE84 8E100000 */        lw $s0, ($s0)
  /* 00CA88 8000BE88 4406A000 */      mfc1 $a2, $f20
  /* 00CA8C 8000BE8C 0C002F55 */       jal func_8000BD54
  /* 00CA90 8000BE90 02002025 */        or $a0, $s0, $zero
  /* 00CA94 8000BE94 8E100000 */        lw $s0, ($s0)
  .L8000BE98:
  /* 00CA98 8000BE98 26310004 */     addiu $s1, $s1, 4
  /* 00CA9C 8000BE9C 5600FFF8 */      bnel $s0, $zero, .L8000BE80
  /* 00CAA0 8000BEA0 8E250000 */        lw $a1, ($s1)
  /* 00CAA4 8000BEA4 26520004 */     addiu $s2, $s2, 4
  .L8000BEA8:
  /* 00CAA8 8000BEA8 0C002EA8 */       jal func_8000BAA0
  /* 00CAAC 8000BEAC 02602025 */        or $a0, $s3, $zero
  /* 00CAB0 8000BEB0 1440FFE9 */      bnez $v0, .L8000BE58
  /* 00CAB4 8000BEB4 00409825 */        or $s3, $v0, $zero
  .L8000BEB8:
  /* 00CAB8 8000BEB8 8FBF002C */        lw $ra, 0x2c($sp)
  /* 00CABC 8000BEBC D7B40010 */      ldc1 $f20, 0x10($sp)
  /* 00CAC0 8000BEC0 8FB0001C */        lw $s0, 0x1c($sp)
  /* 00CAC4 8000BEC4 8FB10020 */        lw $s1, 0x20($sp)
  /* 00CAC8 8000BEC8 8FB20024 */        lw $s2, 0x24($sp)
  /* 00CACC 8000BECC 8FB30028 */        lw $s3, 0x28($sp)
  /* 00CAD0 8000BED0 03E00008 */        jr $ra
  /* 00CAD4 8000BED4 27BD0030 */     addiu $sp, $sp, 0x30

