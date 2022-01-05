.section .text
glabel func_8001ABA4
  /* 01B7A4 8001ABA4 27BDFF98 */     addiu $sp, $sp, -0x68
  /* 01B7A8 8001ABA8 AFA60070 */        sw $a2, 0x70($sp)
  /* 01B7AC 8001ABAC C7A60070 */      lwc1 $f6, 0x70($sp)
  /* 01B7B0 8001ABB0 C7A4007C */      lwc1 $f4, 0x7c($sp)
  /* 01B7B4 8001ABB4 AFA70074 */        sw $a3, 0x74($sp)
  /* 01B7B8 8001ABB8 C7AA0074 */      lwc1 $f10, 0x74($sp)
  /* 01B7BC 8001ABBC C7A80080 */      lwc1 $f8, 0x80($sp)
  /* 01B7C0 8001ABC0 46062401 */     sub.s $f16, $f4, $f6
  /* 01B7C4 8001ABC4 C7A60078 */      lwc1 $f6, 0x78($sp)
  /* 01B7C8 8001ABC8 C7A40084 */      lwc1 $f4, 0x84($sp)
  /* 01B7CC 8001ABCC 460A4481 */     sub.s $f18, $f8, $f10
  /* 01B7D0 8001ABD0 46108202 */     mul.s $f8, $f16, $f16
  /* 01B7D4 8001ABD4 AFBF0034 */        sw $ra, 0x34($sp)
  /* 01B7D8 8001ABD8 46062001 */     sub.s $f0, $f4, $f6
  /* 01B7DC 8001ABDC 46129282 */     mul.s $f10, $f18, $f18
  /* 01B7E0 8001ABE0 AFB00030 */        sw $s0, 0x30($sp)
  /* 01B7E4 8001ABE4 AFA5006C */        sw $a1, 0x6c($sp)
  /* 01B7E8 8001ABE8 46000182 */     mul.s $f6, $f0, $f0
  /* 01B7EC 8001ABEC 00808025 */        or $s0, $a0, $zero
  /* 01B7F0 8001ABF0 F7B80028 */      sdc1 $f24, 0x28($sp)
  /* 01B7F4 8001ABF4 F7B60020 */      sdc1 $f22, 0x20($sp)
  /* 01B7F8 8001ABF8 F7B40018 */      sdc1 $f20, 0x18($sp)
  /* 01B7FC 8001ABFC 460A4100 */     add.s $f4, $f8, $f10
  /* 01B800 8001AC00 AFA5006C */        sw $a1, 0x6c($sp)
  /* 01B804 8001AC04 E7A00060 */      swc1 $f0, 0x60($sp)
  /* 01B808 8001AC08 E7B2005C */      swc1 $f18, 0x5c($sp)
  /* 01B80C 8001AC0C 46062300 */     add.s $f12, $f4, $f6
  /* 01B810 8001AC10 0C00CD44 */       jal sqrtf
  /* 01B814 8001AC14 E7B00058 */      swc1 $f16, 0x58($sp)
  /* 01B818 8001AC18 3C01BF80 */       lui $at, (0xBF800000 >> 16) # -1.0
  /* 01B81C 8001AC1C 44814000 */      mtc1 $at, $f8 # -1.0 to cop1
  /* 01B820 8001AC20 C7B00058 */      lwc1 $f16, 0x58($sp)
  /* 01B824 8001AC24 C7B2005C */      lwc1 $f18, 0x5c($sp)
  /* 01B828 8001AC28 46004083 */     div.s $f2, $f8, $f0
  /* 01B82C 8001AC2C C7AA0060 */      lwc1 $f10, 0x60($sp)
  /* 01B830 8001AC30 C7B40090 */      lwc1 $f20, 0x90($sp)
  /* 01B834 8001AC34 C7B60094 */      lwc1 $f22, 0x94($sp)
  /* 01B838 8001AC38 C7B8008C */      lwc1 $f24, 0x8c($sp)
  /* 01B83C 8001AC3C 46028402 */     mul.s $f16, $f16, $f2
  /* 01B840 8001AC40 00000000 */       nop 
  /* 01B844 8001AC44 46029482 */     mul.s $f18, $f18, $f2
  /* 01B848 8001AC48 00000000 */       nop 
  /* 01B84C 8001AC4C 46025102 */     mul.s $f4, $f10, $f2
  /* 01B850 8001AC50 E7B00058 */      swc1 $f16, 0x58($sp)
  /* 01B854 8001AC54 E7B2005C */      swc1 $f18, 0x5c($sp)
  /* 01B858 8001AC58 4604A182 */     mul.s $f6, $f20, $f4
  /* 01B85C 8001AC5C E7A40060 */      swc1 $f4, 0x60($sp)
  /* 01B860 8001AC60 4612B202 */     mul.s $f8, $f22, $f18
  /* 01B864 8001AC64 46083381 */     sub.s $f14, $f6, $f8
  /* 01B868 8001AC68 4610B282 */     mul.s $f10, $f22, $f16
  /* 01B86C 8001AC6C 00000000 */       nop 
  /* 01B870 8001AC70 4604C182 */     mul.s $f6, $f24, $f4
  /* 01B874 8001AC74 E7AE004C */      swc1 $f14, 0x4c($sp)
  /* 01B878 8001AC78 4612C102 */     mul.s $f4, $f24, $f18
  /* 01B87C 8001AC7C 46065201 */     sub.s $f8, $f10, $f6
  /* 01B880 8001AC80 4610A282 */     mul.s $f10, $f20, $f16
  /* 01B884 8001AC84 E7A80050 */      swc1 $f8, 0x50($sp)
  /* 01B888 8001AC88 460A2181 */     sub.s $f6, $f4, $f10
  /* 01B88C 8001AC8C 46084102 */     mul.s $f4, $f8, $f8
  /* 01B890 8001AC90 00000000 */       nop 
  /* 01B894 8001AC94 460E7282 */     mul.s $f10, $f14, $f14
  /* 01B898 8001AC98 E7A60054 */      swc1 $f6, 0x54($sp)
  /* 01B89C 8001AC9C 46045200 */     add.s $f8, $f10, $f4
  /* 01B8A0 8001ACA0 46063282 */     mul.s $f10, $f6, $f6
  /* 01B8A4 8001ACA4 0C00CD44 */       jal sqrtf
  /* 01B8A8 8001ACA8 460A4300 */     add.s $f12, $f8, $f10
  /* 01B8AC 8001ACAC 3C013F80 */       lui $at, (0x3F800000 >> 16) # 1.0
  /* 01B8B0 8001ACB0 44812000 */      mtc1 $at, $f4 # 1.0 to cop1
  /* 01B8B4 8001ACB4 C7A6004C */      lwc1 $f6, 0x4c($sp)
  /* 01B8B8 8001ACB8 C7AA0050 */      lwc1 $f10, 0x50($sp)
  /* 01B8BC 8001ACBC 46002083 */     div.s $f2, $f4, $f0
  /* 01B8C0 8001ACC0 27A4004C */     addiu $a0, $sp, 0x4c
  /* 01B8C4 8001ACC4 27A50058 */     addiu $a1, $sp, 0x58
  /* 01B8C8 8001ACC8 8FA60088 */        lw $a2, 0x88($sp)
  /* 01B8CC 8001ACCC 46023202 */     mul.s $f8, $f6, $f2
  /* 01B8D0 8001ACD0 C7A60054 */      lwc1 $f6, 0x54($sp)
  /* 01B8D4 8001ACD4 46025102 */     mul.s $f4, $f10, $f2
  /* 01B8D8 8001ACD8 E7A8004C */      swc1 $f8, 0x4c($sp)
  /* 01B8DC 8001ACDC 46023202 */     mul.s $f8, $f6, $f2
  /* 01B8E0 8001ACE0 E7A40050 */      swc1 $f4, 0x50($sp)
  /* 01B8E4 8001ACE4 0C00650E */       jal func_80019438
  /* 01B8E8 8001ACE8 E7A80054 */      swc1 $f8, 0x54($sp)
  /* 01B8EC 8001ACEC C7AA0060 */      lwc1 $f10, 0x60($sp)
  /* 01B8F0 8001ACF0 C7A40050 */      lwc1 $f4, 0x50($sp)
  /* 01B8F4 8001ACF4 C7B2005C */      lwc1 $f18, 0x5c($sp)
  /* 01B8F8 8001ACF8 C7A80054 */      lwc1 $f8, 0x54($sp)
  /* 01B8FC 8001ACFC 46045182 */     mul.s $f6, $f10, $f4
  /* 01B900 8001AD00 E7AA0038 */      swc1 $f10, 0x38($sp)
  /* 01B904 8001AD04 C7B00058 */      lwc1 $f16, 0x58($sp)
  /* 01B908 8001AD08 46089282 */     mul.s $f10, $f18, $f8
  /* 01B90C 8001AD0C 46065001 */     sub.s $f0, $f10, $f6
  /* 01B910 8001AD10 C7A6004C */      lwc1 $f6, 0x4c($sp)
  /* 01B914 8001AD14 C7AA0038 */      lwc1 $f10, 0x38($sp)
  /* 01B918 8001AD18 46000606 */     mov.s $f24, $f0
  /* 01B91C 8001AD1C 46065282 */     mul.s $f10, $f10, $f6
  /* 01B920 8001AD20 00000000 */       nop 
  /* 01B924 8001AD24 46088202 */     mul.s $f8, $f16, $f8
  /* 01B928 8001AD28 46085501 */     sub.s $f20, $f10, $f8
  /* 01B92C 8001AD2C 46048282 */     mul.s $f10, $f16, $f4
  /* 01B930 8001AD30 00000000 */       nop 
  /* 01B934 8001AD34 46069202 */     mul.s $f8, $f18, $f6
  /* 01B938 8001AD38 46085581 */     sub.s $f22, $f10, $f8
  /* 01B93C 8001AD3C 46000102 */     mul.s $f4, $f0, $f0
  /* 01B940 8001AD40 00000000 */       nop 
  /* 01B944 8001AD44 4614A182 */     mul.s $f6, $f20, $f20
  /* 01B948 8001AD48 46062280 */     add.s $f10, $f4, $f6
  /* 01B94C 8001AD4C 4616B202 */     mul.s $f8, $f22, $f22
  /* 01B950 8001AD50 0C00CD44 */       jal sqrtf
  /* 01B954 8001AD54 46085300 */     add.s $f12, $f10, $f8
  /* 01B958 8001AD58 3C0142FE */       lui $at, (0x42FE0000 >> 16) # 127.0
  /* 01B95C 8001AD5C 44816000 */      mtc1 $at, $f12 # 127.0 to cop1
  /* 01B960 8001AD60 3C014300 */       lui $at, (0x43000000 >> 16) # 128.0
  /* 01B964 8001AD64 44818000 */      mtc1 $at, $f16 # 128.0 to cop1
  /* 01B968 8001AD68 3C013F80 */       lui $at, (0x3F800000 >> 16) # 1.0
  /* 01B96C 8001AD6C 44812000 */      mtc1 $at, $f4 # 1.0 to cop1
  /* 01B970 8001AD70 C7A6004C */      lwc1 $f6, 0x4c($sp)
  /* 01B974 8001AD74 8FA7006C */        lw $a3, 0x6c($sp)
  /* 01B978 8001AD78 46002083 */     div.s $f2, $f4, $f0
  /* 01B97C 8001AD7C 24020080 */     addiu $v0, $zero, 0x80
  /* 01B980 8001AD80 4602C602 */     mul.s $f24, $f24, $f2
  /* 01B984 8001AD84 00000000 */       nop 
  /* 01B988 8001AD88 4602A502 */     mul.s $f20, $f20, $f2
  /* 01B98C 8001AD8C 00000000 */       nop 
  /* 01B990 8001AD90 4602B582 */     mul.s $f22, $f22, $f2
  /* 01B994 8001AD94 00000000 */       nop 
  /* 01B998 8001AD98 46103382 */     mul.s $f14, $f6, $f16
  /* 01B99C 8001AD9C 460C703C */    c.lt.s $f14, $f12
  /* 01B9A0 8001ADA0 00000000 */       nop 
  /* 01B9A4 8001ADA4 45000003 */      bc1f .L8001ADB4
  /* 01B9A8 8001ADA8 00000000 */       nop 
  /* 01B9AC 8001ADAC 10000002 */         b .L8001ADB8
  /* 01B9B0 8001ADB0 46007006 */     mov.s $f0, $f14
  .L8001ADB4:
  /* 01B9B4 8001ADB4 46006006 */     mov.s $f0, $f12
  .L8001ADB8:
  /* 01B9B8 8001ADB8 4600028D */ trunc.w.s $f10, $f0
  /* 01B9BC 8001ADBC 440E5000 */      mfc1 $t6, $f10
  /* 01B9C0 8001ADC0 00000000 */       nop 
  /* 01B9C4 8001ADC4 A0EE0008 */        sb $t6, 8($a3)
  /* 01B9C8 8001ADC8 C7A80050 */      lwc1 $f8, 0x50($sp)
  /* 01B9CC 8001ADCC 46104082 */     mul.s $f2, $f8, $f16
  /* 01B9D0 8001ADD0 460C103C */    c.lt.s $f2, $f12
  /* 01B9D4 8001ADD4 00000000 */       nop 
  /* 01B9D8 8001ADD8 45020004 */     bc1fl .L8001ADEC
  /* 01B9DC 8001ADDC 46006006 */     mov.s $f0, $f12
  /* 01B9E0 8001ADE0 10000002 */         b .L8001ADEC
  /* 01B9E4 8001ADE4 46001006 */     mov.s $f0, $f2
  /* 01B9E8 8001ADE8 46006006 */     mov.s $f0, $f12
  .L8001ADEC:
  /* 01B9EC 8001ADEC 4600010D */ trunc.w.s $f4, $f0
  /* 01B9F0 8001ADF0 44192000 */      mfc1 $t9, $f4
  /* 01B9F4 8001ADF4 00000000 */       nop 
  /* 01B9F8 8001ADF8 A0F90009 */        sb $t9, 9($a3)
  /* 01B9FC 8001ADFC C7A60054 */      lwc1 $f6, 0x54($sp)
  /* 01BA00 8001AE00 46103082 */     mul.s $f2, $f6, $f16
  /* 01BA04 8001AE04 460C103C */    c.lt.s $f2, $f12
  /* 01BA08 8001AE08 00000000 */       nop 
  /* 01BA0C 8001AE0C 45020004 */     bc1fl .L8001AE20
  /* 01BA10 8001AE10 46006006 */     mov.s $f0, $f12
  /* 01BA14 8001AE14 10000002 */         b .L8001AE20
  /* 01BA18 8001AE18 46001006 */     mov.s $f0, $f2
  /* 01BA1C 8001AE1C 46006006 */     mov.s $f0, $f12
  .L8001AE20:
  /* 01BA20 8001AE20 4610C082 */     mul.s $f2, $f24, $f16
  /* 01BA24 8001AE24 4600028D */ trunc.w.s $f10, $f0
  /* 01BA28 8001AE28 460C103C */    c.lt.s $f2, $f12
  /* 01BA2C 8001AE2C 440A5000 */      mfc1 $t2, $f10
  /* 01BA30 8001AE30 45000003 */      bc1f .L8001AE40
  /* 01BA34 8001AE34 A0EA000A */        sb $t2, 0xa($a3)
  /* 01BA38 8001AE38 10000002 */         b .L8001AE44
  /* 01BA3C 8001AE3C 46001006 */     mov.s $f0, $f2
  .L8001AE40:
  /* 01BA40 8001AE40 46006006 */     mov.s $f0, $f12
  .L8001AE44:
  /* 01BA44 8001AE44 4610A082 */     mul.s $f2, $f20, $f16
  /* 01BA48 8001AE48 4600020D */ trunc.w.s $f8, $f0
  /* 01BA4C 8001AE4C 460C103C */    c.lt.s $f2, $f12
  /* 01BA50 8001AE50 440D4000 */      mfc1 $t5, $f8
  /* 01BA54 8001AE54 45000003 */      bc1f .L8001AE64
  /* 01BA58 8001AE58 A0ED0018 */        sb $t5, 0x18($a3)
  /* 01BA5C 8001AE5C 10000002 */         b .L8001AE68
  /* 01BA60 8001AE60 46001006 */     mov.s $f0, $f2
  .L8001AE64:
  /* 01BA64 8001AE64 46006006 */     mov.s $f0, $f12
  .L8001AE68:
  /* 01BA68 8001AE68 4610B082 */     mul.s $f2, $f22, $f16
  /* 01BA6C 8001AE6C 4600010D */ trunc.w.s $f4, $f0
  /* 01BA70 8001AE70 460C103C */    c.lt.s $f2, $f12
  /* 01BA74 8001AE74 44182000 */      mfc1 $t8, $f4
  /* 01BA78 8001AE78 45000003 */      bc1f .L8001AE88
  /* 01BA7C 8001AE7C A0F80019 */        sb $t8, 0x19($a3)
  /* 01BA80 8001AE80 10000002 */         b .L8001AE8C
  /* 01BA84 8001AE84 46001006 */     mov.s $f0, $f2
  .L8001AE88:
  /* 01BA88 8001AE88 46006006 */     mov.s $f0, $f12
  .L8001AE8C:
  /* 01BA8C 8001AE8C 4600018D */ trunc.w.s $f6, $f0
  /* 01BA90 8001AE90 A0E00000 */        sb $zero, ($a3)
  /* 01BA94 8001AE94 A0E00001 */        sb $zero, 1($a3)
  /* 01BA98 8001AE98 A0E00002 */        sb $zero, 2($a3)
  /* 01BA9C 8001AE9C 44093000 */      mfc1 $t1, $f6
  /* 01BAA0 8001AEA0 A0E00003 */        sb $zero, 3($a3)
  /* 01BAA4 8001AEA4 A0E00004 */        sb $zero, 4($a3)
  /* 01BAA8 8001AEA8 A0E00005 */        sb $zero, 5($a3)
  /* 01BAAC 8001AEAC A0E00006 */        sb $zero, 6($a3)
  /* 01BAB0 8001AEB0 A0E00007 */        sb $zero, 7($a3)
  /* 01BAB4 8001AEB4 A0E00010 */        sb $zero, 0x10($a3)
  /* 01BAB8 8001AEB8 A0E20011 */        sb $v0, 0x11($a3)
  /* 01BABC 8001AEBC A0E00012 */        sb $zero, 0x12($a3)
  /* 01BAC0 8001AEC0 A0E00013 */        sb $zero, 0x13($a3)
  /* 01BAC4 8001AEC4 A0E00014 */        sb $zero, 0x14($a3)
  /* 01BAC8 8001AEC8 A0E20015 */        sb $v0, 0x15($a3)
  /* 01BACC 8001AECC A0E00016 */        sb $zero, 0x16($a3)
  /* 01BAD0 8001AED0 A0E00017 */        sb $zero, 0x17($a3)
  /* 01BAD4 8001AED4 A0E9001A */        sb $t1, 0x1a($a3)
  /* 01BAD8 8001AED8 C7AA004C */      lwc1 $f10, 0x4c($sp)
  /* 01BADC 8001AEDC 44800000 */      mtc1 $zero, $f0
  /* 01BAE0 8001AEE0 3C013F80 */       lui $at, (0x3F800000 >> 16) # 1.0
  /* 01BAE4 8001AEE4 E60A0000 */      swc1 $f10, ($s0)
  /* 01BAE8 8001AEE8 C7A80050 */      lwc1 $f8, 0x50($sp)
  /* 01BAEC 8001AEEC C7AE0078 */      lwc1 $f14, 0x78($sp)
  /* 01BAF0 8001AEF0 C7AC0074 */      lwc1 $f12, 0x74($sp)
  /* 01BAF4 8001AEF4 C7A20070 */      lwc1 $f2, 0x70($sp)
  /* 01BAF8 8001AEF8 E6080010 */      swc1 $f8, 0x10($s0)
  /* 01BAFC 8001AEFC C7A40054 */      lwc1 $f4, 0x54($sp)
  /* 01BB00 8001AF00 E6040020 */      swc1 $f4, 0x20($s0)
  /* 01BB04 8001AF04 C7A6004C */      lwc1 $f6, 0x4c($sp)
  /* 01BB08 8001AF08 C7A80050 */      lwc1 $f8, 0x50($sp)
  /* 01BB0C 8001AF0C 46061282 */     mul.s $f10, $f2, $f6
  /* 01BB10 8001AF10 00000000 */       nop 
  /* 01BB14 8001AF14 46086102 */     mul.s $f4, $f12, $f8
  /* 01BB18 8001AF18 C7A80054 */      lwc1 $f8, 0x54($sp)
  /* 01BB1C 8001AF1C E6180004 */      swc1 $f24, 4($s0)
  /* 01BB20 8001AF20 E6140014 */      swc1 $f20, 0x14($s0)
  /* 01BB24 8001AF24 E6160024 */      swc1 $f22, 0x24($s0)
  /* 01BB28 8001AF28 46045180 */     add.s $f6, $f10, $f4
  /* 01BB2C 8001AF2C 46087282 */     mul.s $f10, $f14, $f8
  /* 01BB30 8001AF30 460A3100 */     add.s $f4, $f6, $f10
  /* 01BB34 8001AF34 46181182 */     mul.s $f6, $f2, $f24
  /* 01BB38 8001AF38 00000000 */       nop 
  /* 01BB3C 8001AF3C 46146282 */     mul.s $f10, $f12, $f20
  /* 01BB40 8001AF40 46002207 */     neg.s $f8, $f4
  /* 01BB44 8001AF44 E6080030 */      swc1 $f8, 0x30($s0)
  /* 01BB48 8001AF48 46167202 */     mul.s $f8, $f14, $f22
  /* 01BB4C 8001AF4C 460A3100 */     add.s $f4, $f6, $f10
  /* 01BB50 8001AF50 46082180 */     add.s $f6, $f4, $f8
  /* 01BB54 8001AF54 46003287 */     neg.s $f10, $f6
  /* 01BB58 8001AF58 E60A0034 */      swc1 $f10, 0x34($s0)
  /* 01BB5C 8001AF5C C7A40058 */      lwc1 $f4, 0x58($sp)
  /* 01BB60 8001AF60 E6040008 */      swc1 $f4, 8($s0)
  /* 01BB64 8001AF64 C7A8005C */      lwc1 $f8, 0x5c($sp)
  /* 01BB68 8001AF68 E6080018 */      swc1 $f8, 0x18($s0)
  /* 01BB6C 8001AF6C C7A60060 */      lwc1 $f6, 0x60($sp)
  /* 01BB70 8001AF70 E6060028 */      swc1 $f6, 0x28($s0)
  /* 01BB74 8001AF74 C7AA0058 */      lwc1 $f10, 0x58($sp)
  /* 01BB78 8001AF78 C7A8005C */      lwc1 $f8, 0x5c($sp)
  /* 01BB7C 8001AF7C 460A1102 */     mul.s $f4, $f2, $f10
  /* 01BB80 8001AF80 00000000 */       nop 
  /* 01BB84 8001AF84 46086182 */     mul.s $f6, $f12, $f8
  /* 01BB88 8001AF88 C7A80060 */      lwc1 $f8, 0x60($sp)
  /* 01BB8C 8001AF8C E600000C */      swc1 $f0, 0xc($s0)
  /* 01BB90 8001AF90 E600001C */      swc1 $f0, 0x1c($s0)
  /* 01BB94 8001AF94 E600002C */      swc1 $f0, 0x2c($s0)
  /* 01BB98 8001AF98 46062280 */     add.s $f10, $f4, $f6
  /* 01BB9C 8001AF9C 46087102 */     mul.s $f4, $f14, $f8
  /* 01BBA0 8001AFA0 46045180 */     add.s $f6, $f10, $f4
  /* 01BBA4 8001AFA4 44815000 */      mtc1 $at, $f10 # 1.0 to cop1
  /* 01BBA8 8001AFA8 46003207 */     neg.s $f8, $f6
  /* 01BBAC 8001AFAC E60A003C */      swc1 $f10, 0x3c($s0)
  /* 01BBB0 8001AFB0 E6080038 */      swc1 $f8, 0x38($s0)
  /* 01BBB4 8001AFB4 8FBF0034 */        lw $ra, 0x34($sp)
  /* 01BBB8 8001AFB8 8FB00030 */        lw $s0, 0x30($sp)
  /* 01BBBC 8001AFBC D7B80028 */      ldc1 $f24, 0x28($sp)
  /* 01BBC0 8001AFC0 D7B60020 */      ldc1 $f22, 0x20($sp)
  /* 01BBC4 8001AFC4 D7B40018 */      ldc1 $f20, 0x18($sp)
  /* 01BBC8 8001AFC8 03E00008 */        jr $ra
  /* 01BBCC 8001AFCC 27BD0068 */     addiu $sp, $sp, 0x68

