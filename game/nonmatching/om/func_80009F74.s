.section .text
glabel func_80009F74
  /* 00AB74 80009F74 27BDFFD8 */     addiu $sp, $sp, -0x28
  /* 00AB78 80009F78 14800003 */      bnez $a0, .L80009F88
  /* 00AB7C 80009F7C AFBF0024 */        sw $ra, 0x24($sp)
  /* 00AB80 80009F80 3C048004 */       lui $a0, %hi(D_80046A54)
  /* 00AB84 80009F84 8C846A54 */        lw $a0, %lo(D_80046A54)($a0)
  .L80009F88:
  /* 00AB88 80009F88 8FAE0038 */        lw $t6, 0x38($sp)
  /* 00AB8C 80009F8C 8FAF003C */        lw $t7, 0x3c($sp)
  /* 00AB90 80009F90 8FB80040 */        lw $t8, 0x40($sp)
  /* 00AB94 80009F94 AFA40028 */        sw $a0, 0x28($sp)
  /* 00AB98 80009F98 AFAE0010 */        sw $t6, 0x10($sp)
  /* 00AB9C 80009F9C AFAF0014 */        sw $t7, 0x14($sp)
  /* 00ABA0 80009FA0 0C0027CA */       jal func_80009F28
  /* 00ABA4 80009FA4 AFB80018 */        sw $t8, 0x18($sp)
  /* 00ABA8 80009FA8 0C001F00 */       jal func_80007C00
  /* 00ABAC 80009FAC 8FA40028 */        lw $a0, 0x28($sp)
  /* 00ABB0 80009FB0 8FBF0024 */        lw $ra, 0x24($sp)
  /* 00ABB4 80009FB4 27BD0028 */     addiu $sp, $sp, 0x28
  /* 00ABB8 80009FB8 03E00008 */        jr $ra
  /* 00ABBC 80009FBC 00000000 */       nop 

  /* 00ABC0 80009FC0 27BDFFD8 */     addiu $sp, $sp, -0x28
  /* 00ABC4 80009FC4 14800003 */      bnez $a0, .L80009FD4
  /* 00ABC8 80009FC8 AFBF0024 */        sw $ra, 0x24($sp)
  /* 00ABCC 80009FCC 3C048004 */       lui $a0, %hi(D_80046A54)
  /* 00ABD0 80009FD0 8C846A54 */        lw $a0, %lo(D_80046A54)($a0)
  .L80009FD4:
  /* 00ABD4 80009FD4 8FAE0038 */        lw $t6, 0x38($sp)
  /* 00ABD8 80009FD8 8FAF003C */        lw $t7, 0x3c($sp)
  /* 00ABDC 80009FDC 8FB80040 */        lw $t8, 0x40($sp)
  /* 00ABE0 80009FE0 AFA40028 */        sw $a0, 0x28($sp)
  /* 00ABE4 80009FE4 AFAE0010 */        sw $t6, 0x10($sp)
  /* 00ABE8 80009FE8 AFAF0014 */        sw $t7, 0x14($sp)
  /* 00ABEC 80009FEC 0C0027CA */       jal func_80009F28
  /* 00ABF0 80009FF0 AFB80018 */        sw $t8, 0x18($sp)
  /* 00ABF4 80009FF4 0C001F1B */       jal func_80007C6C
  /* 00ABF8 80009FF8 8FA40028 */        lw $a0, 0x28($sp)
  /* 00ABFC 80009FFC 8FBF0024 */        lw $ra, 0x24($sp)
  /* 00AC00 8000A000 27BD0028 */     addiu $sp, $sp, 0x28
  /* 00AC04 8000A004 03E00008 */        jr $ra
  /* 00AC08 8000A008 00000000 */       nop 

  /* 00AC0C 8000A00C 27BDFFD8 */     addiu $sp, $sp, -0x28
  /* 00AC10 8000A010 AFBF0024 */        sw $ra, 0x24($sp)
  /* 00AC14 8000A014 AFA60030 */        sw $a2, 0x30($sp)
  /* 00AC18 8000A018 14800003 */      bnez $a0, .L8000A028
  /* 00AC1C 8000A01C AFA70034 */        sw $a3, 0x34($sp)
  /* 00AC20 8000A020 3C048004 */       lui $a0, %hi(D_80046A54)
  /* 00AC24 8000A024 8C846A54 */        lw $a0, %lo(D_80046A54)($a0)
  .L8000A028:
  /* 00AC28 8000A028 8FAE003C */        lw $t6, 0x3c($sp)
  /* 00AC2C 8000A02C 8FB80030 */        lw $t8, 0x30($sp)
  /* 00AC30 8000A030 8FB90034 */        lw $t9, 0x34($sp)
  /* 00AC34 8000A034 8DC60028 */        lw $a2, 0x28($t6)
  /* 00AC38 8000A038 8FAF0038 */        lw $t7, 0x38($sp)
  /* 00AC3C 8000A03C AFA40028 */        sw $a0, 0x28($sp)
  /* 00AC40 8000A040 AFB80010 */        sw $t8, 0x10($sp)
  /* 00AC44 8000A044 AFB90014 */        sw $t9, 0x14($sp)
  /* 00AC48 8000A048 0C0027CA */       jal func_80009F28
  /* 00AC4C 8000A04C AFAF0018 */        sw $t7, 0x18($sp)
  /* 00AC50 8000A050 8FA40028 */        lw $a0, 0x28($sp)
  /* 00AC54 8000A054 0C001EE6 */       jal func_80007B98
  /* 00AC58 8000A058 8FA5003C */        lw $a1, 0x3c($sp)
  /* 00AC5C 8000A05C 8FBF0024 */        lw $ra, 0x24($sp)
  /* 00AC60 8000A060 27BD0028 */     addiu $sp, $sp, 0x28
  /* 00AC64 8000A064 03E00008 */        jr $ra
  /* 00AC68 8000A068 00000000 */       nop 

  /* 00AC6C 8000A06C 27BDFFD8 */     addiu $sp, $sp, -0x28
  /* 00AC70 8000A070 AFBF0024 */        sw $ra, 0x24($sp)
  /* 00AC74 8000A074 AFA60030 */        sw $a2, 0x30($sp)
  /* 00AC78 8000A078 14800003 */      bnez $a0, .L8000A088
  /* 00AC7C 8000A07C AFA70034 */        sw $a3, 0x34($sp)
  /* 00AC80 8000A080 3C048004 */       lui $a0, %hi(D_80046A54)
  /* 00AC84 8000A084 8C846A54 */        lw $a0, %lo(D_80046A54)($a0)
  .L8000A088:
  /* 00AC88 8000A088 8FAE003C */        lw $t6, 0x3c($sp)
  /* 00AC8C 8000A08C 8FB80030 */        lw $t8, 0x30($sp)
  /* 00AC90 8000A090 8FB90034 */        lw $t9, 0x34($sp)
  /* 00AC94 8000A094 8DC60028 */        lw $a2, 0x28($t6)
  /* 00AC98 8000A098 8FAF0038 */        lw $t7, 0x38($sp)
  /* 00AC9C 8000A09C AFA40028 */        sw $a0, 0x28($sp)
  /* 00ACA0 8000A0A0 AFB80010 */        sw $t8, 0x10($sp)
  /* 00ACA4 8000A0A4 AFB90014 */        sw $t9, 0x14($sp)
  /* 00ACA8 8000A0A8 0C0027CA */       jal func_80009F28
  /* 00ACAC 8000A0AC AFAF0018 */        sw $t7, 0x18($sp)
  /* 00ACB0 8000A0B0 8FA8003C */        lw $t0, 0x3c($sp)
  /* 00ACB4 8000A0B4 8FA40028 */        lw $a0, 0x28($sp)
  /* 00ACB8 8000A0B8 0C001EE6 */       jal func_80007B98
  /* 00ACBC 8000A0BC 8D050008 */        lw $a1, 8($t0)
  /* 00ACC0 8000A0C0 8FBF0024 */        lw $ra, 0x24($sp)
  /* 00ACC4 8000A0C4 27BD0028 */     addiu $sp, $sp, 0x28
  /* 00ACC8 8000A0C8 03E00008 */        jr $ra
  /* 00ACCC 8000A0CC 00000000 */       nop 

