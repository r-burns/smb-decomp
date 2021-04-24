.section .text
glabel func_80009DF4
  /* 00A9F4 80009DF4 27BDFFE0 */     addiu $sp, $sp, -0x20
  /* 00A9F8 80009DF8 AFA60028 */        sw $a2, 0x28($sp)
  /* 00A9FC 80009DFC 30C600FF */      andi $a2, $a2, 0xff
  /* 00AA00 80009E00 14800003 */      bnez $a0, .L80009E10
  /* 00AA04 80009E04 AFBF001C */        sw $ra, 0x1c($sp)
  /* 00AA08 80009E08 3C048004 */       lui $a0, %hi(D_80046A54)
  /* 00AA0C 80009E0C 8C846A54 */        lw $a0, %lo(D_80046A54)($a0)
  .L80009E10:
  /* 00AA10 80009E10 8FAE0030 */        lw $t6, 0x30($sp)
  /* 00AA14 80009E14 AFA40020 */        sw $a0, 0x20($sp)
  /* 00AA18 80009E18 0C00275E */       jal func_80009D78
  /* 00AA1C 80009E1C AFAE0010 */        sw $t6, 0x10($sp)
  /* 00AA20 80009E20 0C001F00 */       jal func_80007C00
  /* 00AA24 80009E24 8FA40020 */        lw $a0, 0x20($sp)
  /* 00AA28 80009E28 8FBF001C */        lw $ra, 0x1c($sp)
  /* 00AA2C 80009E2C 27BD0020 */     addiu $sp, $sp, 0x20
  /* 00AA30 80009E30 03E00008 */        jr $ra
  /* 00AA34 80009E34 00000000 */       nop 

  /* 00AA38 80009E38 27BDFFE0 */     addiu $sp, $sp, -0x20
  /* 00AA3C 80009E3C AFA60028 */        sw $a2, 0x28($sp)
  /* 00AA40 80009E40 30C600FF */      andi $a2, $a2, 0xff
  /* 00AA44 80009E44 14800003 */      bnez $a0, .L80009E54
  /* 00AA48 80009E48 AFBF001C */        sw $ra, 0x1c($sp)
  /* 00AA4C 80009E4C 3C048004 */       lui $a0, %hi(D_80046A54)
  /* 00AA50 80009E50 8C846A54 */        lw $a0, %lo(D_80046A54)($a0)
  .L80009E54:
  /* 00AA54 80009E54 8FAE0030 */        lw $t6, 0x30($sp)
  /* 00AA58 80009E58 AFA40020 */        sw $a0, 0x20($sp)
  /* 00AA5C 80009E5C 0C00275E */       jal func_80009D78
  /* 00AA60 80009E60 AFAE0010 */        sw $t6, 0x10($sp)
  /* 00AA64 80009E64 0C001F1B */       jal func_80007C6C
  /* 00AA68 80009E68 8FA40020 */        lw $a0, 0x20($sp)
  /* 00AA6C 80009E6C 8FBF001C */        lw $ra, 0x1c($sp)
  /* 00AA70 80009E70 27BD0020 */     addiu $sp, $sp, 0x20
  /* 00AA74 80009E74 03E00008 */        jr $ra
  /* 00AA78 80009E78 00000000 */       nop 

  /* 00AA7C 80009E7C 27BDFFE0 */     addiu $sp, $sp, -0x20
  /* 00AA80 80009E80 AFBF001C */        sw $ra, 0x1c($sp)
  /* 00AA84 80009E84 AFA60028 */        sw $a2, 0x28($sp)
  /* 00AA88 80009E88 14800003 */      bnez $a0, .L80009E98
  /* 00AA8C 80009E8C AFA7002C */        sw $a3, 0x2c($sp)
  /* 00AA90 80009E90 3C048004 */       lui $a0, %hi(D_80046A54)
  /* 00AA94 80009E94 8C846A54 */        lw $a0, %lo(D_80046A54)($a0)
  .L80009E98:
  /* 00AA98 80009E98 8FAE002C */        lw $t6, 0x2c($sp)
  /* 00AA9C 80009E9C 8FAF0028 */        lw $t7, 0x28($sp)
  /* 00AAA0 80009EA0 91C6000D */       lbu $a2, 0xd($t6)
  /* 00AAA4 80009EA4 8DC70028 */        lw $a3, 0x28($t6)
  /* 00AAA8 80009EA8 AFA40020 */        sw $a0, 0x20($sp)
  /* 00AAAC 80009EAC 0C00275E */       jal func_80009D78
  /* 00AAB0 80009EB0 AFAF0010 */        sw $t7, 0x10($sp)
  /* 00AAB4 80009EB4 8FA40020 */        lw $a0, 0x20($sp)
  /* 00AAB8 80009EB8 0C001EE6 */       jal func_80007B98
  /* 00AABC 80009EBC 8FA5002C */        lw $a1, 0x2c($sp)
  /* 00AAC0 80009EC0 8FBF001C */        lw $ra, 0x1c($sp)
  /* 00AAC4 80009EC4 27BD0020 */     addiu $sp, $sp, 0x20
  /* 00AAC8 80009EC8 03E00008 */        jr $ra
  /* 00AACC 80009ECC 00000000 */       nop 

  /* 00AAD0 80009ED0 27BDFFE0 */     addiu $sp, $sp, -0x20
  /* 00AAD4 80009ED4 AFBF001C */        sw $ra, 0x1c($sp)
  /* 00AAD8 80009ED8 AFA60028 */        sw $a2, 0x28($sp)
  /* 00AADC 80009EDC 14800003 */      bnez $a0, .L80009EEC
  /* 00AAE0 80009EE0 AFA7002C */        sw $a3, 0x2c($sp)
  /* 00AAE4 80009EE4 3C048004 */       lui $a0, %hi(D_80046A54)
  /* 00AAE8 80009EE8 8C846A54 */        lw $a0, %lo(D_80046A54)($a0)
  .L80009EEC:
  /* 00AAEC 80009EEC 8FAE002C */        lw $t6, 0x2c($sp)
  /* 00AAF0 80009EF0 8FAF0028 */        lw $t7, 0x28($sp)
  /* 00AAF4 80009EF4 91C6000D */       lbu $a2, 0xd($t6)
  /* 00AAF8 80009EF8 8DC70028 */        lw $a3, 0x28($t6)
  /* 00AAFC 80009EFC AFA40020 */        sw $a0, 0x20($sp)
  /* 00AB00 80009F00 0C00275E */       jal func_80009D78
  /* 00AB04 80009F04 AFAF0010 */        sw $t7, 0x10($sp)
  /* 00AB08 80009F08 8FB8002C */        lw $t8, 0x2c($sp)
  /* 00AB0C 80009F0C 8FA40020 */        lw $a0, 0x20($sp)
  /* 00AB10 80009F10 0C001EE6 */       jal func_80007B98
  /* 00AB14 80009F14 8F050008 */        lw $a1, 8($t8)
  /* 00AB18 80009F18 8FBF001C */        lw $ra, 0x1c($sp)
  /* 00AB1C 80009F1C 27BD0020 */     addiu $sp, $sp, 0x20
  /* 00AB20 80009F20 03E00008 */        jr $ra
  /* 00AB24 80009F24 00000000 */       nop 

