.section .rodata
glabel D_8003E3A0
  /* 3DFA0 03EFA0 8003E3A0 */
  .word 0x4422f983 # .float 651.8986

glabel D_8003E3A4
  /* 3DFA4 03EFA4 8003E3A4 */
  .word 0x3fc90fdb # .float 1.5707964

glabel D_8003E3A8
  /* 3DFA8 03EFA8 8003E3A8 */
  .word 0x4422f983 # .float 651.8986

.section .text
glabel func_80019EA0
  /* 01AAA0 80019EA0 3C014780 */       lui $at, (0x47800000 >> 16) # 65536.0
  /* 01AAA4 80019EA4 44810000 */      mtc1 $at, $f0 # 65536.0 to cop1
  /* 01AAA8 80019EA8 C4840000 */      lwc1 $f4, ($a0)
  /* 01AAAC 80019EAC C48A0004 */      lwc1 $f10, 4($a0)
  /* 01AAB0 80019EB0 3C06FFFF */       lui $a2, 0xffff
  /* 01AAB4 80019EB4 46002182 */     mul.s $f6, $f4, $f0
  /* 01AAB8 80019EB8 00000000 */       nop 
  /* 01AABC 80019EBC 46005402 */     mul.s $f16, $f10, $f0
  /* 01AAC0 80019EC0 4600320D */ trunc.w.s $f8, $f6
  /* 01AAC4 80019EC4 4600848D */ trunc.w.s $f18, $f16
  /* 01AAC8 80019EC8 44024000 */      mfc1 $v0, $f8
  /* 01AACC 80019ECC 44039000 */      mfc1 $v1, $f18
  /* 01AAD0 80019ED0 0046C024 */       and $t8, $v0, $a2
  /* 01AAD4 80019ED4 00024C00 */       sll $t1, $v0, 0x10
  /* 01AAD8 80019ED8 0003CC02 */       srl $t9, $v1, 0x10
  /* 01AADC 80019EDC 306AFFFF */      andi $t2, $v1, 0xffff
  /* 01AAE0 80019EE0 03194025 */        or $t0, $t8, $t9
  /* 01AAE4 80019EE4 012A5825 */        or $t3, $t1, $t2
  /* 01AAE8 80019EE8 ACA80000 */        sw $t0, ($a1)
  /* 01AAEC 80019EEC ACAB0020 */        sw $t3, 0x20($a1)
  /* 01AAF0 80019EF0 C4840008 */      lwc1 $f4, 8($a0)
  /* 01AAF4 80019EF4 46002182 */     mul.s $f6, $f4, $f0
  /* 01AAF8 80019EF8 4600320D */ trunc.w.s $f8, $f6
  /* 01AAFC 80019EFC 44024000 */      mfc1 $v0, $f8
  /* 01AB00 80019F00 00000000 */       nop 
  /* 01AB04 80019F04 00466824 */       and $t5, $v0, $a2
  /* 01AB08 80019F08 00027400 */       sll $t6, $v0, 0x10
  /* 01AB0C 80019F0C ACAD0004 */        sw $t5, 4($a1)
  /* 01AB10 80019F10 ACAE0024 */        sw $t6, 0x24($a1)
  /* 01AB14 80019F14 C48A0010 */      lwc1 $f10, 0x10($a0)
  /* 01AB18 80019F18 C4840014 */      lwc1 $f4, 0x14($a0)
  /* 01AB1C 80019F1C 46005402 */     mul.s $f16, $f10, $f0
  /* 01AB20 80019F20 00000000 */       nop 
  /* 01AB24 80019F24 46002182 */     mul.s $f6, $f4, $f0
  /* 01AB28 80019F28 4600848D */ trunc.w.s $f18, $f16
  /* 01AB2C 80019F2C 4600320D */ trunc.w.s $f8, $f6
  /* 01AB30 80019F30 44029000 */      mfc1 $v0, $f18
  /* 01AB34 80019F34 44034000 */      mfc1 $v1, $f8
  /* 01AB38 80019F38 0046C824 */       and $t9, $v0, $a2
  /* 01AB3C 80019F3C 00025400 */       sll $t2, $v0, 0x10
  /* 01AB40 80019F40 00034402 */       srl $t0, $v1, 0x10
  /* 01AB44 80019F44 306BFFFF */      andi $t3, $v1, 0xffff
  /* 01AB48 80019F48 03284825 */        or $t1, $t9, $t0
  /* 01AB4C 80019F4C 014B6025 */        or $t4, $t2, $t3
  /* 01AB50 80019F50 ACA90008 */        sw $t1, 8($a1)
  /* 01AB54 80019F54 ACAC0028 */        sw $t4, 0x28($a1)
  /* 01AB58 80019F58 C48A0018 */      lwc1 $f10, 0x18($a0)
  /* 01AB5C 80019F5C 46005402 */     mul.s $f16, $f10, $f0
  /* 01AB60 80019F60 4600848D */ trunc.w.s $f18, $f16
  /* 01AB64 80019F64 44029000 */      mfc1 $v0, $f18
  /* 01AB68 80019F68 00000000 */       nop 
  /* 01AB6C 80019F6C 00467024 */       and $t6, $v0, $a2
  /* 01AB70 80019F70 00027C00 */       sll $t7, $v0, 0x10
  /* 01AB74 80019F74 ACAE000C */        sw $t6, 0xc($a1)
  /* 01AB78 80019F78 ACAF002C */        sw $t7, 0x2c($a1)
  /* 01AB7C 80019F7C C4840020 */      lwc1 $f4, 0x20($a0)
  /* 01AB80 80019F80 C48A0024 */      lwc1 $f10, 0x24($a0)
  /* 01AB84 80019F84 46002182 */     mul.s $f6, $f4, $f0
  /* 01AB88 80019F88 00000000 */       nop 
  /* 01AB8C 80019F8C 46005402 */     mul.s $f16, $f10, $f0
  /* 01AB90 80019F90 4600320D */ trunc.w.s $f8, $f6
  /* 01AB94 80019F94 4600848D */ trunc.w.s $f18, $f16
  /* 01AB98 80019F98 44024000 */      mfc1 $v0, $f8
  /* 01AB9C 80019F9C 44039000 */      mfc1 $v1, $f18
  /* 01ABA0 80019FA0 00464024 */       and $t0, $v0, $a2
  /* 01ABA4 80019FA4 00025C00 */       sll $t3, $v0, 0x10
  /* 01ABA8 80019FA8 00034C02 */       srl $t1, $v1, 0x10
  /* 01ABAC 80019FAC 306CFFFF */      andi $t4, $v1, 0xffff
  /* 01ABB0 80019FB0 01095025 */        or $t2, $t0, $t1
  /* 01ABB4 80019FB4 016C6825 */        or $t5, $t3, $t4
  /* 01ABB8 80019FB8 ACAA0010 */        sw $t2, 0x10($a1)
  /* 01ABBC 80019FBC ACAD0030 */        sw $t5, 0x30($a1)
  /* 01ABC0 80019FC0 C4840028 */      lwc1 $f4, 0x28($a0)
  /* 01ABC4 80019FC4 46002182 */     mul.s $f6, $f4, $f0
  /* 01ABC8 80019FC8 4600320D */ trunc.w.s $f8, $f6
  /* 01ABCC 80019FCC 44024000 */      mfc1 $v0, $f8
  /* 01ABD0 80019FD0 00000000 */       nop 
  /* 01ABD4 80019FD4 00467824 */       and $t7, $v0, $a2
  /* 01ABD8 80019FD8 0002C400 */       sll $t8, $v0, 0x10
  /* 01ABDC 80019FDC ACAF0014 */        sw $t7, 0x14($a1)
  /* 01ABE0 80019FE0 ACB80034 */        sw $t8, 0x34($a1)
  /* 01ABE4 80019FE4 C48A0030 */      lwc1 $f10, 0x30($a0)
  /* 01ABE8 80019FE8 C4840034 */      lwc1 $f4, 0x34($a0)
  /* 01ABEC 80019FEC 46005402 */     mul.s $f16, $f10, $f0
  /* 01ABF0 80019FF0 00000000 */       nop 
  /* 01ABF4 80019FF4 46002182 */     mul.s $f6, $f4, $f0
  /* 01ABF8 80019FF8 4600848D */ trunc.w.s $f18, $f16
  /* 01ABFC 80019FFC 4600320D */ trunc.w.s $f8, $f6
  /* 01AC00 8001A000 44029000 */      mfc1 $v0, $f18
  /* 01AC04 8001A004 44034000 */      mfc1 $v1, $f8
  /* 01AC08 8001A008 00464824 */       and $t1, $v0, $a2
  /* 01AC0C 8001A00C 00026400 */       sll $t4, $v0, 0x10
  /* 01AC10 8001A010 00035402 */       srl $t2, $v1, 0x10
  /* 01AC14 8001A014 306DFFFF */      andi $t5, $v1, 0xffff
  /* 01AC18 8001A018 012A5825 */        or $t3, $t1, $t2
  /* 01AC1C 8001A01C 018D7025 */        or $t6, $t4, $t5
  /* 01AC20 8001A020 ACAB0018 */        sw $t3, 0x18($a1)
  /* 01AC24 8001A024 ACAE0038 */        sw $t6, 0x38($a1)
  /* 01AC28 8001A028 C48A0038 */      lwc1 $f10, 0x38($a0)
  /* 01AC2C 8001A02C 46005402 */     mul.s $f16, $f10, $f0
  /* 01AC30 8001A030 4600848D */ trunc.w.s $f18, $f16
  /* 01AC34 8001A034 44029000 */      mfc1 $v0, $f18
  /* 01AC38 8001A038 00000000 */       nop 
  /* 01AC3C 8001A03C 0046C024 */       and $t8, $v0, $a2
  /* 01AC40 8001A040 37190001 */       ori $t9, $t8, 1
  /* 01AC44 8001A044 00024400 */       sll $t0, $v0, 0x10
  /* 01AC48 8001A048 ACB9001C */        sw $t9, 0x1c($a1)
  /* 01AC4C 8001A04C 03E00008 */        jr $ra
  /* 01AC50 8001A050 ACA8003C */        sw $t0, 0x3c($a1)

  /* 01AC54 8001A054 3C018004 */       lui $at, %hi(D_8003E3A0)
  /* 01AC58 8001A058 C424E3A0 */      lwc1 $f4, %lo(D_8003E3A0)($at)
  /* 01AC5C 8001A05C 3C038004 */       lui $v1, %hi(D_8003B950)
  /* 01AC60 8001A060 46046182 */     mul.s $f6, $f12, $f4
  /* 01AC64 8001A064 4600320D */ trunc.w.s $f8, $f6
  /* 01AC68 8001A068 44024000 */      mfc1 $v0, $f8
  /* 01AC6C 8001A06C 00000000 */       nop 
  /* 01AC70 8001A070 304F07FF */      andi $t7, $v0, 0x7ff
  /* 01AC74 8001A074 000FC040 */       sll $t8, $t7, 1
  /* 01AC78 8001A078 00781821 */      addu $v1, $v1, $t8
  /* 01AC7C 8001A07C 30590800 */      andi $t9, $v0, 0x800
  /* 01AC80 8001A080 13200003 */      beqz $t9, .L8001A090
  /* 01AC84 8001A084 9463B950 */       lhu $v1, %lo(D_8003B950)($v1)
  /* 01AC88 8001A088 03E00008 */        jr $ra
  /* 01AC8C 8001A08C 00031023 */      negu $v0, $v1

  .L8001A090:
  /* 01AC90 8001A090 00601025 */        or $v0, $v1, $zero
  /* 01AC94 8001A094 03E00008 */        jr $ra
  /* 01AC98 8001A098 00000000 */       nop 

  /* 01AC9C 8001A09C 3C018004 */       lui $at, %hi(D_8003E3A4)
  /* 01ACA0 8001A0A0 C424E3A4 */      lwc1 $f4, %lo(D_8003E3A4)($at)
  /* 01ACA4 8001A0A4 3C018004 */       lui $at, %hi(D_8003E3A8)
  /* 01ACA8 8001A0A8 C428E3A8 */      lwc1 $f8, %lo(D_8003E3A8)($at)
  /* 01ACAC 8001A0AC 46046180 */     add.s $f6, $f12, $f4
  /* 01ACB0 8001A0B0 3C038004 */       lui $v1, %hi(D_8003B950)
  /* 01ACB4 8001A0B4 46083282 */     mul.s $f10, $f6, $f8
  /* 01ACB8 8001A0B8 4600540D */ trunc.w.s $f16, $f10
  /* 01ACBC 8001A0BC 44028000 */      mfc1 $v0, $f16
  /* 01ACC0 8001A0C0 00000000 */       nop 
  /* 01ACC4 8001A0C4 304F07FF */      andi $t7, $v0, 0x7ff
  /* 01ACC8 8001A0C8 000FC040 */       sll $t8, $t7, 1
  /* 01ACCC 8001A0CC 00781821 */      addu $v1, $v1, $t8
  /* 01ACD0 8001A0D0 30590800 */      andi $t9, $v0, 0x800
  /* 01ACD4 8001A0D4 13200003 */      beqz $t9, .L8001A0E4
  /* 01ACD8 8001A0D8 9463B950 */       lhu $v1, %lo(D_8003B950)($v1)
  /* 01ACDC 8001A0DC 03E00008 */        jr $ra
  /* 01ACE0 8001A0E0 00031023 */      negu $v0, $v1

  .L8001A0E4:
  /* 01ACE4 8001A0E4 00601025 */        or $v0, $v1, $zero
  /* 01ACE8 8001A0E8 03E00008 */        jr $ra
  /* 01ACEC 8001A0EC 00000000 */       nop 

