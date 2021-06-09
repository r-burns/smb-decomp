.section .late_rodata

glabel D_8003DDDC
  /* 3D9DC 03E9DC 8003DDDC */
  .word 0xff7fffff # .float -3.4028235e38


.section .text
glabel func_8000BED8
  /* 00CAD8 8000BED8 27BDFFC0 */     addiu $sp, $sp, -0x40
  /* 00CADC 8000BEDC AFBF003C */        sw $ra, 0x3c($sp)
  /* 00CAE0 8000BEE0 AFB50038 */        sw $s5, 0x38($sp)
  /* 00CAE4 8000BEE4 AFB40034 */        sw $s4, 0x34($sp)
  /* 00CAE8 8000BEE8 AFB30030 */        sw $s3, 0x30($sp)
  /* 00CAEC 8000BEEC AFB2002C */        sw $s2, 0x2c($sp)
  /* 00CAF0 8000BEF0 AFB10028 */        sw $s1, 0x28($sp)
  /* 00CAF4 8000BEF4 AFB00024 */        sw $s0, 0x24($sp)
  /* 00CAF8 8000BEF8 F7B60018 */      sdc1 $f22, 0x18($sp)
  /* 00CAFC 8000BEFC F7B40010 */      sdc1 $f20, 0x10($sp)
  /* 00CB00 8000BF00 8C920074 */        lw $s2, 0x74($a0)
  /* 00CB04 8000BF04 4487A000 */      mtc1 $a3, $f20
  /* 00CB08 8000BF08 00A09825 */        or $s3, $a1, $zero
  /* 00CB0C 8000BF0C 00C0A025 */        or $s4, $a2, $zero
  /* 00CB10 8000BF10 24150001 */     addiu $s5, $zero, 1
  /* 00CB14 8000BF14 12400029 */      beqz $s2, .L8000BFBC
  /* 00CB18 8000BF18 E4940078 */      swc1 $f20, 0x78($a0)
  /* 00CB1C 8000BF1C 3C018004 */       lui $at, %hi(D_8003DDDC)
  /* 00CB20 8000BF20 C436DDDC */      lwc1 $f22, %lo(D_8003DDDC)($at)
  .L8000BF24:
  /* 00CB24 8000BF24 1260000D */      beqz $s3, .L8000BF5C
  /* 00CB28 8000BF28 00000000 */       nop 
  /* 00CB2C 8000BF2C 8E650000 */        lw $a1, ($s3)
  /* 00CB30 8000BF30 50A00008 */      beql $a1, $zero, .L8000BF54
  /* 00CB34 8000BF34 E6560074 */      swc1 $f22, 0x74($s2)
  /* 00CB38 8000BF38 4406A000 */      mfc1 $a2, $f20
  /* 00CB3C 8000BF3C 0C002F47 */       jal func_8000BD1C
  /* 00CB40 8000BF40 02402025 */        or $a0, $s2, $zero
  /* 00CB44 8000BF44 A2550055 */        sb $s5, 0x55($s2)
  /* 00CB48 8000BF48 10000003 */         b .L8000BF58
  /* 00CB4C 8000BF4C 0000A825 */        or $s5, $zero, $zero
  /* 00CB50 8000BF50 E6560074 */      swc1 $f22, 0x74($s2)
  .L8000BF54:
  /* 00CB54 8000BF54 A2400055 */        sb $zero, 0x55($s2)
  .L8000BF58:
  /* 00CB58 8000BF58 26730004 */     addiu $s3, $s3, 4
  .L8000BF5C:
  /* 00CB5C 8000BF5C 12800013 */      beqz $s4, .L8000BFAC
  /* 00CB60 8000BF60 00000000 */       nop 
  /* 00CB64 8000BF64 8E820000 */        lw $v0, ($s4)
  /* 00CB68 8000BF68 50400010 */      beql $v0, $zero, .L8000BFAC
  /* 00CB6C 8000BF6C 26940004 */     addiu $s4, $s4, 4
  /* 00CB70 8000BF70 8E500080 */        lw $s0, 0x80($s2)
  /* 00CB74 8000BF74 00408825 */        or $s1, $v0, $zero
  /* 00CB78 8000BF78 5200000C */      beql $s0, $zero, .L8000BFAC
  /* 00CB7C 8000BF7C 26940004 */     addiu $s4, $s4, 4
  /* 00CB80 8000BF80 8E250000 */        lw $a1, ($s1)
  .L8000BF84:
  /* 00CB84 8000BF84 50A00005 */      beql $a1, $zero, .L8000BF9C
  /* 00CB88 8000BF88 8E100000 */        lw $s0, ($s0)
  /* 00CB8C 8000BF8C 4406A000 */      mfc1 $a2, $f20
  /* 00CB90 8000BF90 0C002F55 */       jal func_8000BD54
  /* 00CB94 8000BF94 02002025 */        or $a0, $s0, $zero
  /* 00CB98 8000BF98 8E100000 */        lw $s0, ($s0)
  .L8000BF9C:
  /* 00CB9C 8000BF9C 26310004 */     addiu $s1, $s1, 4
  /* 00CBA0 8000BFA0 5600FFF8 */      bnel $s0, $zero, .L8000BF84
  /* 00CBA4 8000BFA4 8E250000 */        lw $a1, ($s1)
  /* 00CBA8 8000BFA8 26940004 */     addiu $s4, $s4, 4
  .L8000BFAC:
  /* 00CBAC 8000BFAC 0C002EA8 */       jal func_8000BAA0
  /* 00CBB0 8000BFB0 02402025 */        or $a0, $s2, $zero
  /* 00CBB4 8000BFB4 1440FFDB */      bnez $v0, .L8000BF24
  /* 00CBB8 8000BFB8 00409025 */        or $s2, $v0, $zero
  .L8000BFBC:
  /* 00CBBC 8000BFBC 8FBF003C */        lw $ra, 0x3c($sp)
  /* 00CBC0 8000BFC0 D7B40010 */      ldc1 $f20, 0x10($sp)
  /* 00CBC4 8000BFC4 D7B60018 */      ldc1 $f22, 0x18($sp)
  /* 00CBC8 8000BFC8 8FB00024 */        lw $s0, 0x24($sp)
  /* 00CBCC 8000BFCC 8FB10028 */        lw $s1, 0x28($sp)
  /* 00CBD0 8000BFD0 8FB2002C */        lw $s2, 0x2c($sp)
  /* 00CBD4 8000BFD4 8FB30030 */        lw $s3, 0x30($sp)
  /* 00CBD8 8000BFD8 8FB40034 */        lw $s4, 0x34($sp)
  /* 00CBDC 8000BFDC 8FB50038 */        lw $s5, 0x38($sp)
  /* 00CBE0 8000BFE0 03E00008 */        jr $ra
  /* 00CBE4 8000BFE4 27BD0040 */     addiu $sp, $sp, 0x40

