.section .text
glabel func_ovl0_800CC118
  /* 047AF8 800CC118 3C08800D */       lui $t0, %hi(D_ovl0_800D62B0)
  /* 047AFC 800CC11C 250862B0 */     addiu $t0, $t0, %lo(D_ovl0_800D62B0)
  /* 047B00 800CC120 95060000 */       lhu $a2, ($t0) # D_ovl0_800D62B0 + 0
  /* 047B04 800CC124 AFA40000 */        sw $a0, ($sp)
  /* 047B08 800CC128 8C820000 */        lw $v0, ($a0)
  /* 047B0C 800CC12C 30CF0800 */      andi $t7, $a2, 0x800
  /* 047B10 800CC130 11E00052 */      beqz $t7, .L800CC27C
  /* 047B14 800CC134 24A30010 */     addiu $v1, $a1, 0x10
  /* 047B18 800CC138 00402025 */        or $a0, $v0, $zero
  /* 047B1C 800CC13C 3C08E700 */       lui $t0, %hi(D_NF_E7000000)
  /* 047B20 800CC140 AC880000 */        sw $t0, ($a0)
  /* 047B24 800CC144 AC800004 */        sw $zero, 4($a0)
  /* 047B28 800CC148 24A30010 */     addiu $v1, $a1, 0x10
  /* 047B2C 800CC14C 94780014 */       lhu $t8, 0x14($v1)
  /* 047B30 800CC150 24420008 */     addiu $v0, $v0, 8
  /* 047B34 800CC154 00402025 */        or $a0, $v0, $zero
  /* 047B38 800CC158 33190020 */      andi $t9, $t8, 0x20
  /* 047B3C 800CC15C 13200009 */      beqz $t9, .L800CC184
  /* 047B40 800CC160 3C0FE300 */       lui $t7, (0xE3000A01 >> 16) # 3808430593
  /* 047B44 800CC164 00402025 */        or $a0, $v0, $zero
  /* 047B48 800CC168 3C0DE300 */       lui $t5, (0xE3000A01 >> 16) # 3808430593
  /* 047B4C 800CC16C 35AD0A01 */       ori $t5, $t5, (0xE3000A01 & 0xFFFF) # 3808430593
  /* 047B50 800CC170 3C0E0020 */       lui $t6, 0x20
  /* 047B54 800CC174 AC8E0004 */        sw $t6, 4($a0)
  /* 047B58 800CC178 AC8D0000 */        sw $t5, ($a0)
  /* 047B5C 800CC17C 10000005 */         b .L800CC194
  /* 047B60 800CC180 24420008 */     addiu $v0, $v0, 8
  .L800CC184:
  /* 047B64 800CC184 35EF0A01 */       ori $t7, $t7, (0xE3000A01 & 0xFFFF) # 3808430593
  /* 047B68 800CC188 AC8F0000 */        sw $t7, ($a0)
  /* 047B6C 800CC18C 24420008 */     addiu $v0, $v0, 8
  /* 047B70 800CC190 AC800004 */        sw $zero, 4($a0)
  .L800CC194:
  /* 047B74 800CC194 94640014 */       lhu $a0, 0x14($v1)
  /* 047B78 800CC198 3C18E200 */       lui $t8, (0xE200001C >> 16) # 3791650844
  /* 047B7C 800CC19C 3718001C */       ori $t8, $t8, (0xE200001C & 0xFFFF) # 3791650844
  /* 047B80 800CC1A0 30840001 */      andi $a0, $a0, 1
  /* 047B84 800CC1A4 10800007 */      beqz $a0, .L800CC1C4
  /* 047B88 800CC1A8 3C190050 */       lui $t9, (0x504240 >> 16) # 5259840
  /* 047B8C 800CC1AC 00402025 */        or $a0, $v0, $zero
  /* 047B90 800CC1B0 37394240 */       ori $t9, $t9, (0x504240 & 0xFFFF) # 5259840
  /* 047B94 800CC1B4 AC990004 */        sw $t9, 4($a0)
  /* 047B98 800CC1B8 AC980000 */        sw $t8, ($a0)
  /* 047B9C 800CC1BC 10000013 */         b .L800CC20C
  /* 047BA0 800CC1C0 24420008 */     addiu $v0, $v0, 8
  .L800CC1C4:
  /* 047BA4 800CC1C4 1080000A */      beqz $a0, .L800CC1F0
  /* 047BA8 800CC1C8 3C0FE200 */       lui $t7, (0xE200001C >> 16) # 3791650844
  /* 047BAC 800CC1CC 00402025 */        or $a0, $v0, $zero
  /* 047BB0 800CC1D0 3C0DE200 */       lui $t5, (0xE200001C >> 16) # 3791650844
  /* 047BB4 800CC1D4 3C0E0050 */       lui $t6, (0x504340 >> 16) # 5260096
  /* 047BB8 800CC1D8 35CE4340 */       ori $t6, $t6, (0x504340 & 0xFFFF) # 5260096
  /* 047BBC 800CC1DC 35AD001C */       ori $t5, $t5, (0xE200001C & 0xFFFF) # 3791650844
  /* 047BC0 800CC1E0 AC8D0000 */        sw $t5, ($a0)
  /* 047BC4 800CC1E4 AC8E0004 */        sw $t6, 4($a0)
  /* 047BC8 800CC1E8 10000008 */         b .L800CC20C
  /* 047BCC 800CC1EC 24420008 */     addiu $v0, $v0, 8
  .L800CC1F0:
  /* 047BD0 800CC1F0 00402025 */        or $a0, $v0, $zero
  /* 047BD4 800CC1F4 3C180F0A */       lui $t8, (0xF0A4000 >> 16) # 252329984
  /* 047BD8 800CC1F8 37184000 */       ori $t8, $t8, (0xF0A4000 & 0xFFFF) # 252329984
  /* 047BDC 800CC1FC 35EF001C */       ori $t7, $t7, (0xE200001C & 0xFFFF) # 3791650844
  /* 047BE0 800CC200 AC8F0000 */        sw $t7, ($a0)
  /* 047BE4 800CC204 AC980004 */        sw $t8, 4($a0)
  /* 047BE8 800CC208 24420008 */     addiu $v0, $v0, 8
  .L800CC20C:
  /* 047BEC 800CC20C 94790014 */       lhu $t9, 0x14($v1)
  /* 047BF0 800CC210 3C18E300 */       lui $t8, (0xE3001201 >> 16) # 3808432641
  /* 047BF4 800CC214 37181201 */       ori $t8, $t8, (0xE3001201 & 0xFFFF) # 3808432641
  /* 047BF8 800CC218 332D0080 */      andi $t5, $t9, 0x80
  /* 047BFC 800CC21C 11A00009 */      beqz $t5, .L800CC244
  /* 047C00 800CC220 00402025 */        or $a0, $v0, $zero
  /* 047C04 800CC224 00402025 */        or $a0, $v0, $zero
  /* 047C08 800CC228 3C0EE300 */       lui $t6, (0xE3001201 >> 16) # 3808432641
  /* 047C0C 800CC22C 35CE1201 */       ori $t6, $t6, (0xE3001201 & 0xFFFF) # 3808432641
  /* 047C10 800CC230 240F3000 */     addiu $t7, $zero, 0x3000
  /* 047C14 800CC234 AC8F0004 */        sw $t7, 4($a0)
  /* 047C18 800CC238 AC8E0000 */        sw $t6, ($a0)
  /* 047C1C 800CC23C 10000005 */         b .L800CC254
  /* 047C20 800CC240 24420008 */     addiu $v0, $v0, 8
  .L800CC244:
  /* 047C24 800CC244 24192000 */     addiu $t9, $zero, 0x2000
  /* 047C28 800CC248 AC990004 */        sw $t9, 4($a0)
  /* 047C2C 800CC24C 24420008 */     addiu $v0, $v0, 8
  /* 047C30 800CC250 AC980000 */        sw $t8, ($a0)
  .L800CC254:
  /* 047C34 800CC254 906D0030 */       lbu $t5, 0x30($v1)
  /* 047C38 800CC258 24060002 */     addiu $a2, $zero, 2
  /* 047C3C 800CC25C 00402025 */        or $a0, $v0, $zero
  /* 047C40 800CC260 10CD0073 */       beq $a2, $t5, .L800CC430
  /* 047C44 800CC264 3C0EE300 */       lui $t6, (0xE3001001 >> 16) # 3808432129
  /* 047C48 800CC268 35CE1001 */       ori $t6, $t6, (0xE3001001 & 0xFFFF) # 3808432129
  /* 047C4C 800CC26C AC8E0000 */        sw $t6, ($a0)
  /* 047C50 800CC270 24420008 */     addiu $v0, $v0, 8
  /* 047C54 800CC274 1000006E */         b .L800CC430
  /* 047C58 800CC278 AC800004 */        sw $zero, 4($a0)
  .L800CC27C:
  /* 047C5C 800CC27C 30CF0400 */      andi $t7, $a2, 0x400
  /* 047C60 800CC280 51E00006 */      beql $t7, $zero, .L800CC29C
  /* 047C64 800CC284 94640014 */       lhu $a0, 0x14($v1)
  /* 047C68 800CC288 94B80024 */       lhu $t8, 0x24($a1)
  /* 047C6C 800CC28C 3C01800D */       lui $at, %hi(D_ovl0_800D62B0)
  /* 047C70 800CC290 0300C827 */       not $t9, $t8
  /* 047C74 800CC294 A43962B0 */        sh $t9, %lo(D_ovl0_800D62B0)($at)
  /* 047C78 800CC298 94640014 */       lhu $a0, 0x14($v1)
  .L800CC29C:
  /* 047C7C 800CC29C 3C01800D */       lui $at, %hi(D_ovl0_800D62B0)
  /* 047C80 800CC2A0 308D0400 */      andi $t5, $a0, 0x400
  /* 047C84 800CC2A4 11A00003 */      beqz $t5, .L800CC2B4
  /* 047C88 800CC2A8 00803825 */        or $a3, $a0, $zero
  /* 047C8C 800CC2AC A42462B0 */        sh $a0, %lo(D_ovl0_800D62B0)($at)
  /* 047C90 800CC2B0 94670014 */       lhu $a3, 0x14($v1)
  .L800CC2B4:
  /* 047C94 800CC2B4 95060000 */       lhu $a2, %lo(D_NF_E7000000)($t0)
  /* 047C98 800CC2B8 30EE0020 */      andi $t6, $a3, 0x20
  /* 047C9C 800CC2BC 10C7005C */       beq $a2, $a3, .L800CC430
  /* 047CA0 800CC2C0 00000000 */       nop 
  /* 047CA4 800CC2C4 11C0000E */      beqz $t6, .L800CC300
  /* 047CA8 800CC2C8 30CD0020 */      andi $t5, $a2, 0x20
  /* 047CAC 800CC2CC 30CF0020 */      andi $t7, $a2, 0x20
  /* 047CB0 800CC2D0 15E00015 */      bnez $t7, .L800CC328
  /* 047CB4 800CC2D4 00402025 */        or $a0, $v0, $zero
  /* 047CB8 800CC2D8 3C18E300 */       lui $t8, (0xE3000A01 >> 16) # 3808430593
  /* 047CBC 800CC2DC 37180A01 */       ori $t8, $t8, (0xE3000A01 & 0xFFFF) # 3808430593
  /* 047CC0 800CC2E0 3C190020 */       lui $t9, 0x20
  /* 047CC4 800CC2E4 AC990004 */        sw $t9, 4($a0)
  /* 047CC8 800CC2E8 AC980000 */        sw $t8, ($a0)
  /* 047CCC 800CC2EC 3C06800D */       lui $a2, %hi(D_ovl0_800D62B0)
  /* 047CD0 800CC2F0 94C662B0 */       lhu $a2, %lo(D_ovl0_800D62B0)($a2)
  /* 047CD4 800CC2F4 94670014 */       lhu $a3, 0x14($v1)
  /* 047CD8 800CC2F8 1000000B */         b .L800CC328
  /* 047CDC 800CC2FC 24420008 */     addiu $v0, $v0, 8
  .L800CC300:
  /* 047CE0 800CC300 11A00009 */      beqz $t5, .L800CC328
  /* 047CE4 800CC304 00402025 */        or $a0, $v0, $zero
  /* 047CE8 800CC308 3C0EE300 */       lui $t6, (0xE3000A01 >> 16) # 3808430593
  /* 047CEC 800CC30C 35CE0A01 */       ori $t6, $t6, (0xE3000A01 & 0xFFFF) # 3808430593
  /* 047CF0 800CC310 AC8E0000 */        sw $t6, ($a0)
  /* 047CF4 800CC314 AC800004 */        sw $zero, 4($a0)
  /* 047CF8 800CC318 3C06800D */       lui $a2, %hi(D_ovl0_800D62B0)
  /* 047CFC 800CC31C 94C662B0 */       lhu $a2, %lo(D_ovl0_800D62B0)($a2)
  /* 047D00 800CC320 94670014 */       lhu $a3, 0x14($v1)
  /* 047D04 800CC324 24420008 */     addiu $v0, $v0, 8
  .L800CC328:
  /* 047D08 800CC328 30EF0001 */      andi $t7, $a3, 1
  /* 047D0C 800CC32C 11E0000F */      beqz $t7, .L800CC36C
  /* 047D10 800CC330 30EE1000 */      andi $t6, $a3, 0x1000
  /* 047D14 800CC334 30D80001 */      andi $t8, $a2, 1
  /* 047D18 800CC338 17000028 */      bnez $t8, .L800CC3DC
  /* 047D1C 800CC33C 00402025 */        or $a0, $v0, $zero
  /* 047D20 800CC340 3C19E200 */       lui $t9, (0xE200001C >> 16) # 3791650844
  /* 047D24 800CC344 3C0D0050 */       lui $t5, (0x504240 >> 16) # 5259840
  /* 047D28 800CC348 35AD4240 */       ori $t5, $t5, (0x504240 & 0xFFFF) # 5259840
  /* 047D2C 800CC34C 3739001C */       ori $t9, $t9, (0xE200001C & 0xFFFF) # 3791650844
  /* 047D30 800CC350 AC990000 */        sw $t9, ($a0)
  /* 047D34 800CC354 AC8D0004 */        sw $t5, 4($a0)
  /* 047D38 800CC358 3C06800D */       lui $a2, %hi(D_ovl0_800D62B0)
  /* 047D3C 800CC35C 94C662B0 */       lhu $a2, %lo(D_ovl0_800D62B0)($a2)
  /* 047D40 800CC360 94670014 */       lhu $a3, 0x14($v1)
  /* 047D44 800CC364 1000001D */         b .L800CC3DC
  /* 047D48 800CC368 24420008 */     addiu $v0, $v0, 8
  .L800CC36C:
  /* 047D4C 800CC36C 11C0000F */      beqz $t6, .L800CC3AC
  /* 047D50 800CC370 30CD1001 */      andi $t5, $a2, 0x1001
  /* 047D54 800CC374 30CF1000 */      andi $t7, $a2, 0x1000
  /* 047D58 800CC378 15E00018 */      bnez $t7, .L800CC3DC
  /* 047D5C 800CC37C 00402025 */        or $a0, $v0, $zero
  /* 047D60 800CC380 3C18E200 */       lui $t8, (0xE200001C >> 16) # 3791650844
  /* 047D64 800CC384 3C190050 */       lui $t9, (0x504340 >> 16) # 5260096
  /* 047D68 800CC388 37394340 */       ori $t9, $t9, (0x504340 & 0xFFFF) # 5260096
  /* 047D6C 800CC38C 3718001C */       ori $t8, $t8, (0xE200001C & 0xFFFF) # 3791650844
  /* 047D70 800CC390 AC980000 */        sw $t8, ($a0)
  /* 047D74 800CC394 AC990004 */        sw $t9, 4($a0)
  /* 047D78 800CC398 3C06800D */       lui $a2, %hi(D_ovl0_800D62B0)
  /* 047D7C 800CC39C 94C662B0 */       lhu $a2, %lo(D_ovl0_800D62B0)($a2)
  /* 047D80 800CC3A0 94670014 */       lhu $a3, 0x14($v1)
  /* 047D84 800CC3A4 1000000D */         b .L800CC3DC
  /* 047D88 800CC3A8 24420008 */     addiu $v0, $v0, 8
  .L800CC3AC:
  /* 047D8C 800CC3AC 11A0000B */      beqz $t5, .L800CC3DC
  /* 047D90 800CC3B0 00402025 */        or $a0, $v0, $zero
  /* 047D94 800CC3B4 3C0EE200 */       lui $t6, (0xE200001C >> 16) # 3791650844
  /* 047D98 800CC3B8 3C0F0F0A */       lui $t7, (0xF0A4000 >> 16) # 252329984
  /* 047D9C 800CC3BC 35EF4000 */       ori $t7, $t7, (0xF0A4000 & 0xFFFF) # 252329984
  /* 047DA0 800CC3C0 35CE001C */       ori $t6, $t6, (0xE200001C & 0xFFFF) # 3791650844
  /* 047DA4 800CC3C4 AC8E0000 */        sw $t6, ($a0)
  /* 047DA8 800CC3C8 AC8F0004 */        sw $t7, 4($a0)
  /* 047DAC 800CC3CC 3C06800D */       lui $a2, %hi(D_ovl0_800D62B0)
  /* 047DB0 800CC3D0 94C662B0 */       lhu $a2, %lo(D_ovl0_800D62B0)($a2)
  /* 047DB4 800CC3D4 94670014 */       lhu $a3, 0x14($v1)
  /* 047DB8 800CC3D8 24420008 */     addiu $v0, $v0, 8
  .L800CC3DC:
  /* 047DBC 800CC3DC 30F80080 */      andi $t8, $a3, 0x80
  /* 047DC0 800CC3E0 1300000B */      beqz $t8, .L800CC410
  /* 047DC4 800CC3E4 30CF0080 */      andi $t7, $a2, 0x80
  /* 047DC8 800CC3E8 30D90080 */      andi $t9, $a2, 0x80
  /* 047DCC 800CC3EC 17200010 */      bnez $t9, .L800CC430
  /* 047DD0 800CC3F0 00402025 */        or $a0, $v0, $zero
  /* 047DD4 800CC3F4 3C0DE300 */       lui $t5, (0xE3001201 >> 16) # 3808432641
  /* 047DD8 800CC3F8 35AD1201 */       ori $t5, $t5, (0xE3001201 & 0xFFFF) # 3808432641
  /* 047DDC 800CC3FC 240E3000 */     addiu $t6, $zero, 0x3000
  /* 047DE0 800CC400 AC8E0004 */        sw $t6, 4($a0)
  /* 047DE4 800CC404 AC8D0000 */        sw $t5, ($a0)
  /* 047DE8 800CC408 10000009 */         b .L800CC430
  /* 047DEC 800CC40C 24420008 */     addiu $v0, $v0, 8
  .L800CC410:
  /* 047DF0 800CC410 11E00007 */      beqz $t7, .L800CC430
  /* 047DF4 800CC414 00402025 */        or $a0, $v0, $zero
  /* 047DF8 800CC418 3C18E300 */       lui $t8, (0xE3001201 >> 16) # 3808432641
  /* 047DFC 800CC41C 37181201 */       ori $t8, $t8, (0xE3001201 & 0xFFFF) # 3808432641
  /* 047E00 800CC420 24192000 */     addiu $t9, $zero, 0x2000
  /* 047E04 800CC424 AC990004 */        sw $t9, 4($a0)
  /* 047E08 800CC428 AC980000 */        sw $t8, ($a0)
  /* 047E0C 800CC42C 24420008 */     addiu $v0, $v0, 8
  .L800CC430:
  /* 047E10 800CC430 3C07800D */       lui $a3, %hi(D_ovl0_800D62B2)
  /* 047E14 800CC434 24E762B2 */     addiu $a3, $a3, %lo(D_ovl0_800D62B2)
  /* 047E18 800CC438 94ED0000 */       lhu $t5, ($a3) # D_ovl0_800D62B2 + 0
  /* 047E1C 800CC43C 90690030 */       lbu $t1, 0x30($v1)
  /* 047E20 800CC440 24060002 */     addiu $a2, $zero, 2
  /* 047E24 800CC444 3C08E700 */       lui $t0, %hi(D_NF_E7000004)
  /* 047E28 800CC448 11A9008C */       beq $t5, $t1, .L800CC67C
  /* 047E2C 800CC44C 00000000 */       nop 
  /* 047E30 800CC450 11260044 */       beq $t1, $a2, .L800CC564
  /* 047E34 800CC454 3C040700 */       lui $a0, %hi(D_NF_07000004)
  /* 047E38 800CC458 24010003 */     addiu $at, $zero, 3
  /* 047E3C 800CC45C 1121001B */       beq $t1, $at, .L800CC4CC
  /* 047E40 800CC460 00402025 */        or $a0, $v0, $zero
  /* 047E44 800CC464 24010004 */     addiu $at, $zero, 4
  /* 047E48 800CC468 15210070 */       bne $t1, $at, .L800CC62C
  /* 047E4C 800CC46C 00402025 */        or $a0, $v0, $zero
  /* 047E50 800CC470 3C0EFA00 */       lui $t6, 0xfa00
  /* 047E54 800CC474 AC8E0000 */        sw $t6, %lo(D_NF_07000000)($a0)
  /* 047E58 800CC478 906E0019 */       lbu $t6, 0x19($v1)
  /* 047E5C 800CC47C 90780018 */       lbu $t8, 0x18($v1)
  /* 047E60 800CC480 24420008 */     addiu $v0, $v0, 8
  /* 047E64 800CC484 000E7C00 */       sll $t7, $t6, 0x10
  /* 047E68 800CC488 906E001A */       lbu $t6, 0x1a($v1)
  /* 047E6C 800CC48C 0018CE00 */       sll $t9, $t8, 0x18
  /* 047E70 800CC490 032FC025 */        or $t8, $t9, $t7
  /* 047E74 800CC494 000ECA00 */       sll $t9, $t6, 8
  /* 047E78 800CC498 906E001B */       lbu $t6, 0x1b($v1)
  /* 047E7C 800CC49C 03197825 */        or $t7, $t8, $t9
  /* 047E80 800CC4A0 3C19FCFF */       lui $t9, (0xFCFFFFFF >> 16) # 4244635647
  /* 047E84 800CC4A4 00402825 */        or $a1, $v0, $zero
  /* 047E88 800CC4A8 3C0DFFFD */       lui $t5, (0xFFFDF2F9 >> 16) # 4294832889
  /* 047E8C 800CC4AC 01EEC025 */        or $t8, $t7, $t6
  /* 047E90 800CC4B0 AC980004 */        sw $t8, %lo(D_NF_07000004)($a0)
  /* 047E94 800CC4B4 35ADF2F9 */       ori $t5, $t5, (0xFFFDF2F9 & 0xFFFF) # 4294832889
  /* 047E98 800CC4B8 3739FFFF */       ori $t9, $t9, (0xFCFFFFFF & 0xFFFF) # 4244635647
  /* 047E9C 800CC4BC ACB90000 */        sw $t9, ($a1)
  /* 047EA0 800CC4C0 ACAD0004 */        sw $t5, 4($a1)
  /* 047EA4 800CC4C4 10000061 */         b .L800CC64C
  /* 047EA8 800CC4C8 24420008 */     addiu $v0, $v0, 8
  .L800CC4CC:
  /* 047EAC 800CC4CC 3C0FFA00 */       lui $t7, 0xfa00
  /* 047EB0 800CC4D0 AC8F0000 */        sw $t7, %lo(D_NF_07000000)($a0)
  /* 047EB4 800CC4D4 906F0019 */       lbu $t7, 0x19($v1)
  /* 047EB8 800CC4D8 90780018 */       lbu $t8, 0x18($v1)
  /* 047EBC 800CC4DC 24420008 */     addiu $v0, $v0, 8
  /* 047EC0 800CC4E0 000F7400 */       sll $t6, $t7, 0x10
  /* 047EC4 800CC4E4 906F001A */       lbu $t7, 0x1a($v1)
  /* 047EC8 800CC4E8 0018CE00 */       sll $t9, $t8, 0x18
  /* 047ECC 800CC4EC 032EC025 */        or $t8, $t9, $t6
  /* 047ED0 800CC4F0 000FCA00 */       sll $t9, $t7, 8
  /* 047ED4 800CC4F4 906F001B */       lbu $t7, 0x1b($v1)
  /* 047ED8 800CC4F8 03197025 */        or $t6, $t8, $t9
  /* 047EDC 800CC4FC 3C19FB00 */       lui $t9, 0xfb00
  /* 047EE0 800CC500 01CFC025 */        or $t8, $t6, $t7
  /* 047EE4 800CC504 AC980004 */        sw $t8, %lo(D_NF_07000004)($a0)
  /* 047EE8 800CC508 00404025 */        or $t0, $v0, $zero
  /* 047EEC 800CC50C AD190000 */        sw $t9, %lo(D_NF_E7000000)($t0)
  /* 047EF0 800CC510 90B90061 */       lbu $t9, 0x61($a1)
  /* 047EF4 800CC514 90AE0060 */       lbu $t6, 0x60($a1)
  /* 047EF8 800CC518 24420008 */     addiu $v0, $v0, 8
  /* 047EFC 800CC51C 00196C00 */       sll $t5, $t9, 0x10
  /* 047F00 800CC520 90B90062 */       lbu $t9, 0x62($a1)
  /* 047F04 800CC524 000E7E00 */       sll $t7, $t6, 0x18
  /* 047F08 800CC528 01ED7025 */        or $t6, $t7, $t5
  /* 047F0C 800CC52C 00197A00 */       sll $t7, $t9, 8
  /* 047F10 800CC530 90B90063 */       lbu $t9, 0x63($a1)
  /* 047F14 800CC534 01CF6825 */        or $t5, $t6, $t7
  /* 047F18 800CC538 3C0FFC30 */       lui $t7, (0xFC309661 >> 16) # 4231042657
  /* 047F1C 800CC53C 00404825 */        or $t1, $v0, $zero
  /* 047F20 800CC540 3C18552E */       lui $t8, (0x552EFF7F >> 16) # 1429143423
  /* 047F24 800CC544 01B97025 */        or $t6, $t5, $t9
  /* 047F28 800CC548 AD0E0004 */        sw $t6, %lo(D_NF_E7000004)($t0)
  /* 047F2C 800CC54C 3718FF7F */       ori $t8, $t8, (0x552EFF7F & 0xFFFF) # 1429143423
  /* 047F30 800CC550 35EF9661 */       ori $t7, $t7, (0xFC309661 & 0xFFFF) # 4231042657
  /* 047F34 800CC554 AD2F0000 */        sw $t7, ($t1)
  /* 047F38 800CC558 AD380004 */        sw $t8, 4($t1)
  /* 047F3C 800CC55C 1000003B */         b .L800CC64C
  /* 047F40 800CC560 24420008 */     addiu $v0, $v0, 8
  .L800CC564:
  /* 047F44 800CC564 00402825 */        or $a1, $v0, $zero
  /* 047F48 800CC568 3C0DE300 */       lui $t5, (0xE3001001 >> 16) # 3808432129
  /* 047F4C 800CC56C 35AD1001 */       ori $t5, $t5, (0xE3001001 & 0xFFFF) # 3808432129
  /* 047F50 800CC570 24420008 */     addiu $v0, $v0, 8
  /* 047F54 800CC574 34198000 */       ori $t9, $zero, 0x8000
  /* 047F58 800CC578 ACB90004 */        sw $t9, 4($a1)
  /* 047F5C 800CC57C ACAD0000 */        sw $t5, ($a1)
  /* 047F60 800CC580 00404825 */        or $t1, $v0, $zero
  /* 047F64 800CC584 3C0EFD10 */       lui $t6, 0xfd10
  /* 047F68 800CC588 AD2E0000 */        sw $t6, ($t1)
  /* 047F6C 800CC58C 8C6F0020 */        lw $t7, 0x20($v1)
  /* 047F70 800CC590 24420008 */     addiu $v0, $v0, 8
  /* 047F74 800CC594 00405025 */        or $t2, $v0, $zero
  /* 047F78 800CC598 AD2F0004 */        sw $t7, 4($t1)
  /* 047F7C 800CC59C 3C18E800 */       lui $t8, 0xe800
  /* 047F80 800CC5A0 AD580000 */        sw $t8, ($t2)
  /* 047F84 800CC5A4 AD400004 */        sw $zero, 4($t2)
  /* 047F88 800CC5A8 846D001C */        lh $t5, 0x1c($v1)
  /* 047F8C 800CC5AC 24420008 */     addiu $v0, $v0, 8
  /* 047F90 800CC5B0 00405825 */        or $t3, $v0, $zero
  /* 047F94 800CC5B4 25B90100 */     addiu $t9, $t5, 0x100
  /* 047F98 800CC5B8 332E01FF */      andi $t6, $t9, 0x1ff
  /* 047F9C 800CC5BC 24420008 */     addiu $v0, $v0, 8
  /* 047FA0 800CC5C0 3C01F500 */       lui $at, 0xf500
  /* 047FA4 800CC5C4 01C17825 */        or $t7, $t6, $at
  /* 047FA8 800CC5C8 00406025 */        or $t4, $v0, $zero
  /* 047FAC 800CC5CC AD6F0000 */        sw $t7, ($t3)
  /* 047FB0 800CC5D0 AD640004 */        sw $a0, 4($t3)
  /* 047FB4 800CC5D4 24420008 */     addiu $v0, $v0, 8
  /* 047FB8 800CC5D8 3C05E600 */       lui $a1, %hi(D_NF_E6000063)
  /* 047FBC 800CC5DC AD850000 */        sw $a1, ($t4)
  /* 047FC0 800CC5E0 00404825 */        or $t1, $v0, $zero
  /* 047FC4 800CC5E4 AD800004 */        sw $zero, 4($t4)
  /* 047FC8 800CC5E8 3C18F000 */       lui $t8, 0xf000
  /* 047FCC 800CC5EC AD380000 */        sw $t8, ($t1)
  /* 047FD0 800CC5F0 846D001E */        lh $t5, 0x1e($v1)
  /* 047FD4 800CC5F4 24420008 */     addiu $v0, $v0, 8
  /* 047FD8 800CC5F8 00405025 */        or $t2, $v0, $zero
  /* 047FDC 800CC5FC 25B9FFFF */     addiu $t9, $t5, -1
  /* 047FE0 800CC600 332E03FF */      andi $t6, $t9, 0x3ff
  /* 047FE4 800CC604 000E7B80 */       sll $t7, $t6, 0xe
  /* 047FE8 800CC608 01E4C025 */        or $t8, $t7, $a0
  /* 047FEC 800CC60C AD380004 */        sw $t8, 4($t1)
  /* 047FF0 800CC610 24420008 */     addiu $v0, $v0, 8
  /* 047FF4 800CC614 00405825 */        or $t3, $v0, $zero
  /* 047FF8 800CC618 AD400004 */        sw $zero, 4($t2)
  /* 047FFC 800CC61C AD480000 */        sw $t0, ($t2)
  /* 048000 800CC620 AD600004 */        sw $zero, 4($t3)
  /* 048004 800CC624 AD650000 */        sw $a1, ($t3)
  /* 048008 800CC628 24420008 */     addiu $v0, $v0, 8
  .L800CC62C:
  /* 04800C 800CC62C 00402025 */        or $a0, $v0, $zero
  /* 048010 800CC630 3C0DFCFF */       lui $t5, (0xFCFFFFFF >> 16) # 4244635647
  /* 048014 800CC634 3C19FFFC */       lui $t9, (0xFFFCF279 >> 16) # 4294767225
  /* 048018 800CC638 3739F279 */       ori $t9, $t9, (0xFFFCF279 & 0xFFFF) # 4294767225
  /* 04801C 800CC63C 35ADFFFF */       ori $t5, $t5, (0xFCFFFFFF & 0xFFFF) # 4244635647
  /* 048020 800CC640 AC8D0000 */        sw $t5, %lo(D_NF_07000000)($a0)
  /* 048024 800CC644 AC990004 */        sw $t9, %lo(D_NF_07000004)($a0)
  /* 048028 800CC648 24420008 */     addiu $v0, $v0, 8
  .L800CC64C:
  /* 04802C 800CC64C 906E0030 */       lbu $t6, 0x30($v1)
  /* 048030 800CC650 50CE006F */      beql $a2, $t6, .L800CC810
  /* 048034 800CC654 8FAF0000 */        lw $t7, ($sp)
  /* 048038 800CC658 94EF0000 */       lhu $t7, ($a3) # D_ovl0_800D62B2 + 0
  /* 04803C 800CC65C 3C18E300 */       lui $t8, (0xE3001001 >> 16) # 3808432129
  /* 048040 800CC660 37181001 */       ori $t8, $t8, (0xE3001001 & 0xFFFF) # 3808432129
  /* 048044 800CC664 14CF0069 */       bne $a2, $t7, .L800CC80C
  /* 048048 800CC668 00401825 */        or $v1, $v0, $zero
  /* 04804C 800CC66C 24420008 */     addiu $v0, $v0, 8
  /* 048050 800CC670 AC780000 */        sw $t8, ($v1)
  /* 048054 800CC674 10000065 */         b .L800CC80C
  /* 048058 800CC678 AC600004 */        sw $zero, 4($v1)
  .L800CC67C:
  /* 04805C 800CC67C 11260034 */       beq $t1, $a2, .L800CC750
  /* 048060 800CC680 3C0F800D */       lui $t7, 0x800d
  /* 048064 800CC684 24010003 */     addiu $at, $zero, 3
  /* 048068 800CC688 11210013 */       beq $t1, $at, .L800CC6D8
  /* 04806C 800CC68C 00402025 */        or $a0, $v0, $zero
  /* 048070 800CC690 24010004 */     addiu $at, $zero, 4
  /* 048074 800CC694 1521005D */       bne $t1, $at, .L800CC80C
  /* 048078 800CC698 00402025 */        or $a0, $v0, $zero
  /* 04807C 800CC69C 3C0DFA00 */       lui $t5, 0xfa00
  /* 048080 800CC6A0 AC8D0000 */        sw $t5, %lo(D_NF_07000000)($a0)
  /* 048084 800CC6A4 906D0019 */       lbu $t5, 0x19($v1)
  /* 048088 800CC6A8 906E0018 */       lbu $t6, 0x18($v1)
  /* 04808C 800CC6AC 24420008 */     addiu $v0, $v0, 8
  /* 048090 800CC6B0 000DCC00 */       sll $t9, $t5, 0x10
  /* 048094 800CC6B4 906D001A */       lbu $t5, 0x1a($v1)
  /* 048098 800CC6B8 000E7E00 */       sll $t7, $t6, 0x18
  /* 04809C 800CC6BC 01F97025 */        or $t6, $t7, $t9
  /* 0480A0 800CC6C0 000D7A00 */       sll $t7, $t5, 8
  /* 0480A4 800CC6C4 906D001B */       lbu $t5, 0x1b($v1)
  /* 0480A8 800CC6C8 01CFC825 */        or $t9, $t6, $t7
  /* 0480AC 800CC6CC 032D7025 */        or $t6, $t9, $t5
  /* 0480B0 800CC6D0 1000004E */         b .L800CC80C
  /* 0480B4 800CC6D4 AC8E0004 */        sw $t6, %lo(D_NF_07000004)($a0)
  .L800CC6D8:
  /* 0480B8 800CC6D8 3C0FFA00 */       lui $t7, 0xfa00
  /* 0480BC 800CC6DC AC8F0000 */        sw $t7, %lo(D_NF_07000000)($a0)
  /* 0480C0 800CC6E0 906F0019 */       lbu $t7, 0x19($v1)
  /* 0480C4 800CC6E4 90790018 */       lbu $t9, 0x18($v1)
  /* 0480C8 800CC6E8 24420008 */     addiu $v0, $v0, 8
  /* 0480CC 800CC6EC 000FC400 */       sll $t8, $t7, 0x10
  /* 0480D0 800CC6F0 906F001A */       lbu $t7, 0x1a($v1)
  /* 0480D4 800CC6F4 00196E00 */       sll $t5, $t9, 0x18
  /* 0480D8 800CC6F8 01B8C825 */        or $t9, $t5, $t8
  /* 0480DC 800CC6FC 000F6A00 */       sll $t5, $t7, 8
  /* 0480E0 800CC700 906F001B */       lbu $t7, 0x1b($v1)
  /* 0480E4 800CC704 032DC025 */        or $t8, $t9, $t5
  /* 0480E8 800CC708 3C0DFB00 */       lui $t5, 0xfb00
  /* 0480EC 800CC70C 030FC825 */        or $t9, $t8, $t7
  /* 0480F0 800CC710 AC990004 */        sw $t9, %lo(D_NF_07000004)($a0)
  /* 0480F4 800CC714 00403025 */        or $a2, $v0, $zero
  /* 0480F8 800CC718 ACCD0000 */        sw $t5, ($a2)
  /* 0480FC 800CC71C 90AD0061 */       lbu $t5, %lo(D_NF_E6000061)($a1)
  /* 048100 800CC720 90B80060 */       lbu $t8, %lo(D_NF_E6000060)($a1)
  /* 048104 800CC724 24420008 */     addiu $v0, $v0, 8
  /* 048108 800CC728 000D7400 */       sll $t6, $t5, 0x10
  /* 04810C 800CC72C 90AD0062 */       lbu $t5, %lo(D_NF_E6000062)($a1)
  /* 048110 800CC730 00187E00 */       sll $t7, $t8, 0x18
  /* 048114 800CC734 01EEC025 */        or $t8, $t7, $t6
  /* 048118 800CC738 000D7A00 */       sll $t7, $t5, 8
  /* 04811C 800CC73C 90AD0063 */       lbu $t5, %lo(D_NF_E6000063)($a1)
  /* 048120 800CC740 030F7025 */        or $t6, $t8, $t7
  /* 048124 800CC744 01CDC025 */        or $t8, $t6, $t5
  /* 048128 800CC748 10000030 */         b .L800CC80C
  /* 04812C 800CC74C ACD80004 */        sw $t8, 4($a2)
  .L800CC750:
  /* 048130 800CC750 8DEF62B8 */        lw $t7, 0x62b8($t7)
  /* 048134 800CC754 8C790020 */        lw $t9, 0x20($v1)
  /* 048138 800CC758 3C040700 */       lui $a0, 0x700
  /* 04813C 800CC75C 3C05E600 */       lui $a1, 0xe600
  /* 048140 800CC760 11F9002A */       beq $t7, $t9, .L800CC80C
  /* 048144 800CC764 00403025 */        or $a2, $v0, $zero
  /* 048148 800CC768 3C0EFD10 */       lui $t6, 0xfd10
  /* 04814C 800CC76C ACCE0000 */        sw $t6, ($a2)
  /* 048150 800CC770 8C6D0020 */        lw $t5, 0x20($v1)
  /* 048154 800CC774 24420008 */     addiu $v0, $v0, 8
  /* 048158 800CC778 00403825 */        or $a3, $v0, $zero
  /* 04815C 800CC77C ACCD0004 */        sw $t5, 4($a2)
  /* 048160 800CC780 3C18E800 */       lui $t8, 0xe800
  /* 048164 800CC784 ACF80000 */        sw $t8, ($a3) # D_ovl0_800D62B2 + 0
  /* 048168 800CC788 ACE00004 */        sw $zero, 4($a3) # D_ovl0_800D62B2 + 4
  /* 04816C 800CC78C 846F001C */        lh $t7, 0x1c($v1)
  /* 048170 800CC790 24420008 */     addiu $v0, $v0, 8
  /* 048174 800CC794 00404825 */        or $t1, $v0, $zero
  /* 048178 800CC798 25F90100 */     addiu $t9, $t7, 0x100
  /* 04817C 800CC79C 332E01FF */      andi $t6, $t9, 0x1ff
  /* 048180 800CC7A0 24420008 */     addiu $v0, $v0, 8
  /* 048184 800CC7A4 3C01F500 */       lui $at, 0xf500
  /* 048188 800CC7A8 01C16825 */        or $t5, $t6, $at
  /* 04818C 800CC7AC 00405025 */        or $t2, $v0, $zero
  /* 048190 800CC7B0 AD2D0000 */        sw $t5, ($t1)
  /* 048194 800CC7B4 AD240004 */        sw $a0, 4($t1)
  /* 048198 800CC7B8 24420008 */     addiu $v0, $v0, 8
  /* 04819C 800CC7BC 00405825 */        or $t3, $v0, $zero
  /* 0481A0 800CC7C0 AD400004 */        sw $zero, 4($t2)
  /* 0481A4 800CC7C4 AD450000 */        sw $a1, ($t2)
  /* 0481A8 800CC7C8 3C18F000 */       lui $t8, 0xf000
  /* 0481AC 800CC7CC AD780000 */        sw $t8, ($t3)
  /* 0481B0 800CC7D0 846F001E */        lh $t7, 0x1e($v1)
  /* 0481B4 800CC7D4 24420008 */     addiu $v0, $v0, 8
  /* 0481B8 800CC7D8 00403025 */        or $a2, $v0, $zero
  /* 0481BC 800CC7DC 25F9FFFF */     addiu $t9, $t7, -1
  /* 0481C0 800CC7E0 332E03FF */      andi $t6, $t9, 0x3ff
  /* 0481C4 800CC7E4 000E6B80 */       sll $t5, $t6, 0xe
  /* 0481C8 800CC7E8 01A4C025 */        or $t8, $t5, $a0
  /* 0481CC 800CC7EC AD780004 */        sw $t8, 4($t3)
  /* 0481D0 800CC7F0 24420008 */     addiu $v0, $v0, 8
  /* 0481D4 800CC7F4 00403825 */        or $a3, $v0, $zero
  /* 0481D8 800CC7F8 ACC00004 */        sw $zero, 4($a2)
  /* 0481DC 800CC7FC ACC80000 */        sw $t0, ($a2)
  /* 0481E0 800CC800 ACE00004 */        sw $zero, 4($a3) # D_ovl0_800D62B2 + 4
  /* 0481E4 800CC804 ACE50000 */        sw $a1, ($a3) # D_ovl0_800D62B2 + 0
  /* 0481E8 800CC808 24420008 */     addiu $v0, $v0, 8
  .L800CC80C:
  /* 0481EC 800CC80C 8FAF0000 */        lw $t7, ($sp)
  .L800CC810:
  /* 0481F0 800CC810 03E00008 */        jr $ra
  /* 0481F4 800CC814 ADE20000 */        sw $v0, ($t7)
