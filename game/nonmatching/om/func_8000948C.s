.section .text
glabel func_8000948C
  /* 00A08C 8000948C 27BDFFD8 */     addiu $sp, $sp, -0x28
  /* 00A090 80009490 AFBF0024 */        sw $ra, 0x24($sp)
  /* 00A094 80009494 AFB30020 */        sw $s3, 0x20($sp)
  /* 00A098 80009498 AFB2001C */        sw $s2, 0x1c($sp)
  /* 00A09C 8000949C AFB10018 */        sw $s1, 0x18($sp)
  /* 00A0A0 800094A0 AFB00014 */        sw $s0, 0x14($sp)
  /* 00A0A4 800094A4 8C900010 */        lw $s0, 0x10($a0)
  /* 00A0A8 800094A8 00809825 */        or $s3, $a0, $zero
  /* 00A0AC 800094AC 52000007 */      beql $s0, $zero, .L800094CC
  /* 00A0B0 800094B0 8E620014 */        lw $v0, 0x14($s3)
  .L800094B4:
  /* 00A0B4 800094B4 0C002523 */       jal func_8000948C
  /* 00A0B8 800094B8 02002025 */        or $a0, $s0, $zero
  /* 00A0BC 800094BC 8E700010 */        lw $s0, 0x10($s3)
  /* 00A0C0 800094C0 1600FFFC */      bnez $s0, .L800094B4
  /* 00A0C4 800094C4 00000000 */       nop 
  /* 00A0C8 800094C8 8E620014 */        lw $v0, 0x14($s3)
  .L800094CC:
  /* 00A0CC 800094CC 24010001 */     addiu $at, $zero, 1
  /* 00A0D0 800094D0 00008025 */        or $s0, $zero, $zero
  /* 00A0D4 800094D4 1441000D */       bne $v0, $at, .L8000950C
  /* 00A0D8 800094D8 02608825 */        or $s1, $s3, $zero
  /* 00A0DC 800094DC 8E620004 */        lw $v0, 4($s3)
  /* 00A0E0 800094E0 8C4E0074 */        lw $t6, 0x74($v0)
  /* 00A0E4 800094E4 566E000F */      bnel $s3, $t6, .L80009524
  /* 00A0E8 800094E8 8E62000C */        lw $v0, 0xc($s3)
  /* 00A0EC 800094EC 8E6F0008 */        lw $t7, 8($s3)
  /* 00A0F0 800094F0 AC4F0074 */        sw $t7, 0x74($v0)
  /* 00A0F4 800094F4 8E620004 */        lw $v0, 4($s3)
  /* 00A0F8 800094F8 8C580074 */        lw $t8, 0x74($v0)
  /* 00A0FC 800094FC 57000009 */      bnel $t8, $zero, .L80009524
  /* 00A100 80009500 8E62000C */        lw $v0, 0xc($s3)
  /* 00A104 80009504 10000006 */         b .L80009520
  /* 00A108 80009508 A040000F */        sb $zero, 0xf($v0)
  .L8000950C:
  /* 00A10C 8000950C 8C590010 */        lw $t9, 0x10($v0)
  /* 00A110 80009510 56790004 */      bnel $s3, $t9, .L80009524
  /* 00A114 80009514 8E62000C */        lw $v0, 0xc($s3)
  /* 00A118 80009518 8E680008 */        lw $t0, 8($s3)
  /* 00A11C 8000951C AC480010 */        sw $t0, 0x10($v0)
  .L80009520:
  /* 00A120 80009520 8E62000C */        lw $v0, 0xc($s3)
  .L80009524:
  /* 00A124 80009524 24120014 */     addiu $s2, $zero, 0x14
  /* 00A128 80009528 50400004 */      beql $v0, $zero, .L8000953C
  /* 00A12C 8000952C 8E620008 */        lw $v0, 8($s3)
  /* 00A130 80009530 8E690008 */        lw $t1, 8($s3)
  /* 00A134 80009534 AC490008 */        sw $t1, 8($v0)
  /* 00A138 80009538 8E620008 */        lw $v0, 8($s3)
  .L8000953C:
  /* 00A13C 8000953C 10400003 */      beqz $v0, .L8000954C
  /* 00A140 80009540 00000000 */       nop 
  /* 00A144 80009544 8E6A000C */        lw $t2, 0xc($s3)
  /* 00A148 80009548 AC4A000C */        sw $t2, 0xc($v0)
  .L8000954C:
  /* 00A14C 8000954C 8E240058 */        lw $a0, 0x58($s1)
  /* 00A150 80009550 50800004 */      beql $a0, $zero, .L80009564
  /* 00A154 80009554 26100004 */     addiu $s0, $s0, 4
  /* 00A158 80009558 0C001F76 */       jal func_80007DD8
  /* 00A15C 8000955C 00000000 */       nop 
  /* 00A160 80009560 26100004 */     addiu $s0, $s0, 4
  .L80009564:
  /* 00A164 80009564 1612FFF9 */       bne $s0, $s2, .L8000954C
  /* 00A168 80009568 26310004 */     addiu $s1, $s1, 4
  /* 00A16C 8000956C 8E64004C */        lw $a0, 0x4c($s3)
  /* 00A170 80009570 3C028004 */       lui $v0, %hi(D_80046A1C)
  /* 00A174 80009574 50800007 */      beql $a0, $zero, .L80009594
  /* 00A178 80009578 8E71006C */        lw $s1, 0x6c($s3)
  /* 00A17C 8000957C 8C426A1C */        lw $v0, %lo(D_80046A1C)($v0)
  /* 00A180 80009580 50400004 */      beql $v0, $zero, .L80009594
  /* 00A184 80009584 8E71006C */        lw $s1, 0x6c($s3)
  /* 00A188 80009588 0040F809 */      jalr $v0
  /* 00A18C 8000958C 00000000 */       nop 
  /* 00A190 80009590 8E71006C */        lw $s1, 0x6c($s3)
  .L80009594:
  /* 00A194 80009594 52200007 */      beql $s1, $zero, .L800095B4
  /* 00A198 80009598 8E720080 */        lw $s2, 0x80($s3)
  .L8000959C:
  /* 00A19C 8000959C 8E300000 */        lw $s0, ($s1)
  /* 00A1A0 800095A0 0C001FAC */       jal func_80007EB0
  /* 00A1A4 800095A4 02202025 */        or $a0, $s1, $zero
  /* 00A1A8 800095A8 1600FFFC */      bnez $s0, .L8000959C
  /* 00A1AC 800095AC 02008825 */        or $s1, $s0, $zero
  /* 00A1B0 800095B0 8E720080 */        lw $s2, 0x80($s3)
  .L800095B4:
  /* 00A1B4 800095B4 1240000E */      beqz $s2, .L800095F0
  /* 00A1B8 800095B8 00000000 */       nop 
  .L800095BC:
  /* 00A1BC 800095BC 8E510090 */        lw $s1, 0x90($s2)
  /* 00A1C0 800095C0 52200007 */      beql $s1, $zero, .L800095E0
  /* 00A1C4 800095C4 8E500000 */        lw $s0, ($s2)
  .L800095C8:
  /* 00A1C8 800095C8 8E300000 */        lw $s0, ($s1)
  /* 00A1CC 800095CC 0C001FAC */       jal func_80007EB0
  /* 00A1D0 800095D0 02202025 */        or $a0, $s1, $zero
  /* 00A1D4 800095D4 1600FFFC */      bnez $s0, .L800095C8
  /* 00A1D8 800095D8 02008825 */        or $s1, $s0, $zero
  /* 00A1DC 800095DC 8E500000 */        lw $s0, ($s2)
  .L800095E0:
  /* 00A1E0 800095E0 0C001FD6 */       jal func_80007F58
  /* 00A1E4 800095E4 02402025 */        or $a0, $s2, $zero
  /* 00A1E8 800095E8 1600FFF4 */      bnez $s0, .L800095BC
  /* 00A1EC 800095EC 02009025 */        or $s2, $s0, $zero
  .L800095F0:
  /* 00A1F0 800095F0 0C002001 */       jal func_80008004
  /* 00A1F4 800095F4 02602025 */        or $a0, $s3, $zero
  /* 00A1F8 800095F8 8FBF0024 */        lw $ra, 0x24($sp)
  /* 00A1FC 800095FC 8FB00014 */        lw $s0, 0x14($sp)
  /* 00A200 80009600 8FB10018 */        lw $s1, 0x18($sp)
  /* 00A204 80009604 8FB2001C */        lw $s2, 0x1c($sp)
  /* 00A208 80009608 8FB30020 */        lw $s3, 0x20($sp)
  /* 00A20C 8000960C 03E00008 */        jr $ra
  /* 00A210 80009610 27BD0028 */     addiu $sp, $sp, 0x28
