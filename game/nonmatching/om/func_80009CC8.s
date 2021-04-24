.section .text
glabel func_80009CC8
  /* 00A8C8 80009CC8 27BDFFE0 */     addiu $sp, $sp, -0x20
  /* 00A8CC 80009CCC AFA50024 */        sw $a1, 0x24($sp)
  /* 00A8D0 80009CD0 00802825 */        or $a1, $a0, $zero
  /* 00A8D4 80009CD4 AFBF001C */        sw $ra, 0x1c($sp)
  /* 00A8D8 80009CD8 AFA40020 */        sw $a0, 0x20($sp)
  /* 00A8DC 80009CDC 00C03825 */        or $a3, $a2, $zero
  /* 00A8E0 80009CE0 93A60027 */       lbu $a2, 0x27($sp)
  /* 00A8E4 80009CE4 24040001 */     addiu $a0, $zero, 1
  /* 00A8E8 80009CE8 0C0026D2 */       jal func_80009B48
  /* 00A8EC 80009CEC AFA00010 */        sw $zero, 0x10($sp)
  /* 00A8F0 80009CF0 8FBF001C */        lw $ra, 0x1c($sp)
  /* 00A8F4 80009CF4 27BD0020 */     addiu $sp, $sp, 0x20
  /* 00A8F8 80009CF8 03E00008 */        jr $ra
  /* 00A8FC 80009CFC 00000000 */       nop 

  /* 00A900 80009D00 27BDFFE0 */     addiu $sp, $sp, -0x20
  /* 00A904 80009D04 AFA50024 */        sw $a1, 0x24($sp)
  /* 00A908 80009D08 8FAE0024 */        lw $t6, 0x24($sp)
  /* 00A90C 80009D0C AFBF001C */        sw $ra, 0x1c($sp)
  /* 00A910 80009D10 AFA40020 */        sw $a0, 0x20($sp)
  /* 00A914 80009D14 00802825 */        or $a1, $a0, $zero
  /* 00A918 80009D18 8DC70010 */        lw $a3, 0x10($t6)
  /* 00A91C 80009D1C 91C6000C */       lbu $a2, 0xc($t6)
  /* 00A920 80009D20 24040002 */     addiu $a0, $zero, 2
  /* 00A924 80009D24 0C0026D2 */       jal func_80009B48
  /* 00A928 80009D28 AFAE0010 */        sw $t6, 0x10($sp)
  /* 00A92C 80009D2C 8FBF001C */        lw $ra, 0x1c($sp)
  /* 00A930 80009D30 27BD0020 */     addiu $sp, $sp, 0x20
  /* 00A934 80009D34 03E00008 */        jr $ra
  /* 00A938 80009D38 00000000 */       nop 

  /* 00A93C 80009D3C 27BDFFE0 */     addiu $sp, $sp, -0x20
  /* 00A940 80009D40 AFA50024 */        sw $a1, 0x24($sp)
  /* 00A944 80009D44 8FAE0024 */        lw $t6, 0x24($sp)
  /* 00A948 80009D48 AFBF001C */        sw $ra, 0x1c($sp)
  /* 00A94C 80009D4C AFA40020 */        sw $a0, 0x20($sp)
  /* 00A950 80009D50 00802825 */        or $a1, $a0, $zero
  /* 00A954 80009D54 8DC70010 */        lw $a3, 0x10($t6)
  /* 00A958 80009D58 91C6000C */       lbu $a2, 0xc($t6)
  /* 00A95C 80009D5C 24040003 */     addiu $a0, $zero, 3
  /* 00A960 80009D60 0C0026D2 */       jal func_80009B48
  /* 00A964 80009D64 AFAE0010 */        sw $t6, 0x10($sp)
  /* 00A968 80009D68 8FBF001C */        lw $ra, 0x1c($sp)
  /* 00A96C 80009D6C 27BD0020 */     addiu $sp, $sp, 0x20
  /* 00A970 80009D70 03E00008 */        jr $ra
  /* 00A974 80009D74 00000000 */       nop 

