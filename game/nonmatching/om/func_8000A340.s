.section .text
glabel func_8000A340
  /* 00AF40 8000A340 27BDFFD8 */     addiu $sp, $sp, -0x28
  /* 00AF44 8000A344 AFB30020 */        sw $s3, 0x20($sp)
  /* 00AF48 8000A348 3C138004 */       lui $s3, %hi(D_80046A58)
  /* 00AF4C 8000A34C 26736A58 */     addiu $s3, $s3, %lo(D_80046A58)
  /* 00AF50 8000A350 AE600000 */        sw $zero, ($s3) # D_80046A58 + 0
  /* 00AF54 8000A354 3C038004 */       lui $v1, %hi(D_8003B6E8)
  /* 00AF58 8000A358 8C63B6E8 */        lw $v1, %lo(D_8003B6E8)($v1)
  /* 00AF5C 8000A35C 3C018004 */       lui $at, %hi(D_80046A5C)
  /* 00AF60 8000A360 3C028004 */       lui $v0, %hi(D_80046A88)
  /* 00AF64 8000A364 3C048004 */       lui $a0, %hi(D_80046F88)
  /* 00AF68 8000A368 AFBF0024 */        sw $ra, 0x24($sp)
  /* 00AF6C 8000A36C AFB2001C */        sw $s2, 0x1c($sp)
  /* 00AF70 8000A370 AFB10018 */        sw $s1, 0x18($sp)
  /* 00AF74 8000A374 AFB00014 */        sw $s0, 0x14($sp)
  /* 00AF78 8000A378 AC206A5C */        sw $zero, %lo(D_80046A5C)($at)
  /* 00AF7C 8000A37C 24846F88 */     addiu $a0, $a0, %lo(D_80046F88)
  /* 00AF80 8000A380 24426A88 */     addiu $v0, $v0, %lo(D_80046A88)
  /* 00AF84 8000A384 2463FFFF */     addiu $v1, $v1, -1
  .L8000A388:
  /* 00AF88 8000A388 24420050 */     addiu $v0, $v0, 0x50
  /* 00AF8C 8000A38C A043FFC4 */        sb $v1, -0x3c($v0) # D_80046A88 + -60
  /* 00AF90 8000A390 A043FFD8 */        sb $v1, -0x28($v0) # D_80046A88 + -40
  /* 00AF94 8000A394 A043FFEC */        sb $v1, -0x14($v0) # D_80046A88 + -20
  /* 00AF98 8000A398 1444FFFB */       bne $v0, $a0, .L8000A388
  /* 00AF9C 8000A39C A043FFB0 */        sb $v1, -0x50($v0) # D_80046A88 + -80
  /* 00AFA0 8000A3A0 3C108004 */       lui $s0, %hi(D_80046900)
  /* 00AFA4 8000A3A4 8E106900 */        lw $s0, %lo(D_80046900)($s0)
  /* 00AFA8 8000A3A8 3C118004 */       lui $s1, %hi(D_8003B874)
  /* 00AFAC 8000A3AC 2631B874 */     addiu $s1, $s1, %lo(D_8003B874)
  /* 00AFB0 8000A3B0 1200000F */      beqz $s0, .L8000A3F0
  /* 00AFB4 8000A3B4 24120003 */     addiu $s2, $zero, 3
  /* 00AFB8 8000A3B8 8E0E007C */        lw $t6, 0x7c($s0)
  .L8000A3BC:
  /* 00AFBC 8000A3BC 31CF0001 */      andi $t7, $t6, 1
  /* 00AFC0 8000A3C0 55E00009 */      bnel $t7, $zero, .L8000A3E8
  /* 00AFC4 8000A3C4 8E100020 */        lw $s0, 0x20($s0)
  /* 00AFC8 8000A3C8 AE320000 */        sw $s2, ($s1) # D_8003B874 + 0
  /* 00AFCC 8000A3CC AE700000 */        sw $s0, ($s3) # D_80046A58 + 0
  /* 00AFD0 8000A3D0 8E19002C */        lw $t9, 0x2c($s0)
  /* 00AFD4 8000A3D4 02002025 */        or $a0, $s0, $zero
  /* 00AFD8 8000A3D8 0320F809 */      jalr $t9
  /* 00AFDC 8000A3DC 00000000 */       nop 
  /* 00AFE0 8000A3E0 AE200000 */        sw $zero, ($s1) # D_8003B874 + 0
  /* 00AFE4 8000A3E4 8E100020 */        lw $s0, 0x20($s0)
  .L8000A3E8:
  /* 00AFE8 8000A3E8 5600FFF4 */      bnel $s0, $zero, .L8000A3BC
  /* 00AFEC 8000A3EC 8E0E007C */        lw $t6, 0x7c($s0)
  .L8000A3F0:
  /* 00AFF0 8000A3F0 8FBF0024 */        lw $ra, 0x24($sp)
  /* 00AFF4 8000A3F4 8FB00014 */        lw $s0, 0x14($sp)
  /* 00AFF8 8000A3F8 8FB10018 */        lw $s1, 0x18($sp)
  /* 00AFFC 8000A3FC 8FB2001C */        lw $s2, 0x1c($sp)
  /* 00B000 8000A400 8FB30020 */        lw $s3, 0x20($sp)
  /* 00B004 8000A404 03E00008 */        jr $ra
  /* 00B008 8000A408 27BD0028 */     addiu $sp, $sp, 0x28

