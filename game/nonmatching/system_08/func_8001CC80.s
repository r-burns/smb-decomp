.section .text
glabel func_8001CC80
  /* 01D880 8001CC80 27BDFFD0 */     addiu $sp, $sp, -0x30
  /* 01D884 8001CC84 AFBF001C */        sw $ra, 0x1c($sp)
  /* 01D888 8001CC88 AFB00018 */        sw $s0, 0x18($sp)
  /* 01D88C 8001CC8C AFA50034 */        sw $a1, 0x34($sp)
  /* 01D890 8001CC90 00808025 */        or $s0, $a0, $zero
  /* 01D894 8001CC94 AFA60038 */        sw $a2, 0x38($sp)
  /* 01D898 8001CC98 0C00C0FC */       jal __sinf
  /* 01D89C 8001CC9C C7AC0034 */      lwc1 $f12, 0x34($sp)
  /* 01D8A0 8001CCA0 E7A0002C */      swc1 $f0, 0x2c($sp)
  /* 01D8A4 8001CCA4 0C00D734 */       jal cosf
  /* 01D8A8 8001CCA8 C7AC0034 */      lwc1 $f12, 0x34($sp)
  /* 01D8AC 8001CCAC C7AC0038 */      lwc1 $f12, 0x38($sp)
  /* 01D8B0 8001CCB0 0C00C0FC */       jal __sinf
  /* 01D8B4 8001CCB4 E7A00024 */      swc1 $f0, 0x24($sp)
  /* 01D8B8 8001CCB8 C7AC0038 */      lwc1 $f12, 0x38($sp)
  /* 01D8BC 8001CCBC 0C00D734 */       jal cosf
  /* 01D8C0 8001CCC0 E7A00028 */      swc1 $f0, 0x28($sp)
  /* 01D8C4 8001CCC4 C7A20024 */      lwc1 $f2, 0x24($sp)
  /* 01D8C8 8001CCC8 C7AE0028 */      lwc1 $f14, 0x28($sp)
  /* 01D8CC 8001CCCC C7B0002C */      lwc1 $f16, 0x2c($sp)
  /* 01D8D0 8001CCD0 46001102 */     mul.s $f4, $f2, $f0
  /* 01D8D4 8001CCD4 44806000 */      mtc1 $zero, $f12
  /* 01D8D8 8001CCD8 E6000014 */      swc1 $f0, 0x14($s0)
  /* 01D8DC 8001CCDC 460E1182 */     mul.s $f6, $f2, $f14
  /* 01D8E0 8001CCE0 E60C0038 */      swc1 $f12, 0x38($s0)
  /* 01D8E4 8001CCE4 3C013F80 */       lui $at, (0x3F800000 >> 16) # 1.0
  /* 01D8E8 8001CCE8 46008482 */     mul.s $f18, $f16, $f0
  /* 01D8EC 8001CCEC E6040000 */      swc1 $f4, ($s0)
  /* 01D8F0 8001CCF0 C6000038 */      lwc1 $f0, 0x38($s0)
  /* 01D8F4 8001CCF4 460E8102 */     mul.s $f4, $f16, $f14
  /* 01D8F8 8001CCF8 E6060004 */      swc1 $f6, 4($s0)
  /* 01D8FC 8001CCFC 44813000 */      mtc1 $at, $f6 # 1.0 to cop1
  /* 01D900 8001CD00 46007287 */     neg.s $f10, $f14
  /* 01D904 8001CD04 46008207 */     neg.s $f8, $f16
  /* 01D908 8001CD08 E60A0010 */      swc1 $f10, 0x10($s0)
  /* 01D90C 8001CD0C E6080008 */      swc1 $f8, 8($s0)
  /* 01D910 8001CD10 E6120020 */      swc1 $f18, 0x20($s0)
  /* 01D914 8001CD14 E6040024 */      swc1 $f4, 0x24($s0)
  /* 01D918 8001CD18 E6020028 */      swc1 $f2, 0x28($s0)
  /* 01D91C 8001CD1C E60C0018 */      swc1 $f12, 0x18($s0)
  /* 01D920 8001CD20 E6000034 */      swc1 $f0, 0x34($s0)
  /* 01D924 8001CD24 E6000030 */      swc1 $f0, 0x30($s0)
  /* 01D928 8001CD28 E600002C */      swc1 $f0, 0x2c($s0)
  /* 01D92C 8001CD2C E600001C */      swc1 $f0, 0x1c($s0)
  /* 01D930 8001CD30 E600000C */      swc1 $f0, 0xc($s0)
  /* 01D934 8001CD34 E606003C */      swc1 $f6, 0x3c($s0)
  /* 01D938 8001CD38 8FBF001C */        lw $ra, 0x1c($sp)
  /* 01D93C 8001CD3C 8FB00018 */        lw $s0, 0x18($sp)
  /* 01D940 8001CD40 27BD0030 */     addiu $sp, $sp, 0x30
  /* 01D944 8001CD44 03E00008 */        jr $ra
  /* 01D948 8001CD48 00000000 */       nop 

  /* 01D94C 8001CD4C 44856000 */      mtc1 $a1, $f12
  /* 01D950 8001CD50 44867000 */      mtc1 $a2, $f14
  /* 01D954 8001CD54 27BDFFA8 */     addiu $sp, $sp, -0x58
  /* 01D958 8001CD58 AFBF0014 */        sw $ra, 0x14($sp)
  /* 01D95C 8001CD5C AFA40058 */        sw $a0, 0x58($sp)
  /* 01D960 8001CD60 44056000 */      mfc1 $a1, $f12
  /* 01D964 8001CD64 44067000 */      mfc1 $a2, $f14
  /* 01D968 8001CD68 0C007320 */       jal func_8001CC80
  /* 01D96C 8001CD6C 27A40018 */     addiu $a0, $sp, 0x18
  /* 01D970 8001CD70 27A40018 */     addiu $a0, $sp, 0x18
  /* 01D974 8001CD74 0C0067A8 */       jal mtx4f_to_Mtx_fixed_w
  /* 01D978 8001CD78 8FA50058 */        lw $a1, 0x58($sp)
  /* 01D97C 8001CD7C 8FBF0014 */        lw $ra, 0x14($sp)
  /* 01D980 8001CD80 27BD0058 */     addiu $sp, $sp, 0x58
  /* 01D984 8001CD84 03E00008 */        jr $ra
  /* 01D988 8001CD88 00000000 */       nop 

