.section .text
glabel func_ovl0_800CEA40
  /* 04A420 800CEA40 27BDFFE0 */     addiu $sp, $sp, -0x20
  /* 04A424 800CEA44 AFBF0014 */        sw $ra, 0x14($sp)
  /* 04A428 800CEA48 90850008 */       lbu $a1, 8($a0)
  /* 04A42C 800CEA4C 3C0F800D */       lui $t7, %hi(D_ovl0_800D6358)
  /* 04A430 800CEA50 25EF6358 */     addiu $t7, $t7, %lo(D_ovl0_800D6358)
  /* 04A434 800CEA54 000528C3 */       sra $a1, $a1, 3
  /* 04A438 800CEA58 00057080 */       sll $t6, $a1, 2
  /* 04A43C 800CEA5C 01CF3021 */      addu $a2, $t6, $t7
  /* 04A440 800CEA60 8CC20000 */        lw $v0, ($a2)
  /* 04A444 800CEA64 00001825 */        or $v1, $zero, $zero
  /* 04A448 800CEA68 50400036 */      beql $v0, $zero, .L800CEB44
  /* 04A44C 800CEA6C 8FBF0014 */        lw $ra, 0x14($sp)
  .L800CEA70:
  /* 04A450 800CEA70 54440030 */      bnel $v0, $a0, .L800CEB34
  /* 04A454 800CEA74 00401825 */        or $v1, $v0, $zero
  /* 04A458 800CEA78 54600005 */      bnel $v1, $zero, .L800CEA90
  /* 04A45C 800CEA7C 8C590000 */        lw $t9, ($v0)
  /* 04A460 800CEA80 8C580000 */        lw $t8, ($v0)
  /* 04A464 800CEA84 10000003 */         b .L800CEA94
  /* 04A468 800CEA88 ACD80000 */        sw $t8, ($a2)
  /* 04A46C 800CEA8C 8C590000 */        lw $t9, ($v0)
  .L800CEA90:
  /* 04A470 800CEA90 AC790000 */        sw $t9, ($v1)
  .L800CEA94:
  /* 04A474 800CEA94 8C830058 */        lw $v1, 0x58($a0)
  /* 04A478 800CEA98 5060000D */      beql $v1, $zero, .L800CEAD0
  /* 04A47C 800CEA9C 8C85005C */        lw $a1, 0x5c($a0)
  /* 04A480 800CEAA0 94880006 */       lhu $t0, 6($a0)
  /* 04A484 800CEAA4 31090004 */      andi $t1, $t0, 4
  /* 04A488 800CEAA8 51200009 */      beql $t1, $zero, .L800CEAD0
  /* 04A48C 800CEAAC 8C85005C */        lw $a1, 0x5c($a0)
  /* 04A490 800CEAB0 906A0008 */       lbu $t2, 8($v1)
  /* 04A494 800CEAB4 24010002 */     addiu $at, $zero, 2
  /* 04A498 800CEAB8 55410005 */      bnel $t2, $at, .L800CEAD0
  /* 04A49C 800CEABC 8C85005C */        lw $a1, 0x5c($a0)
  /* 04A4A0 800CEAC0 946B0054 */       lhu $t3, 0x54($v1)
  /* 04A4A4 800CEAC4 256CFFFF */     addiu $t4, $t3, -1
  /* 04A4A8 800CEAC8 A46C0054 */        sh $t4, 0x54($v1)
  /* 04A4AC 800CEACC 8C85005C */        lw $a1, 0x5c($a0)
  .L800CEAD0:
  /* 04A4B0 800CEAD0 10A0000C */      beqz $a1, .L800CEB04
  /* 04A4B4 800CEAD4 00000000 */       nop 
  /* 04A4B8 800CEAD8 94AD002A */       lhu $t5, 0x2a($a1)
  /* 04A4BC 800CEADC 25AEFFFF */     addiu $t6, $t5, -1
  /* 04A4C0 800CEAE0 A4AE002A */        sh $t6, 0x2a($a1)
  /* 04A4C4 800CEAE4 8C85005C */        lw $a1, 0x5c($a0)
  /* 04A4C8 800CEAE8 94AF002A */       lhu $t7, 0x2a($a1)
  /* 04A4CC 800CEAEC 00A02025 */        or $a0, $a1, $zero
  /* 04A4D0 800CEAF0 15E00004 */      bnez $t7, .L800CEB04
  /* 04A4D4 800CEAF4 00000000 */       nop 
  /* 04A4D8 800CEAF8 0C033862 */       jal func_ovl0_800CE188
  /* 04A4DC 800CEAFC AFA20018 */        sw $v0, 0x18($sp)
  /* 04A4E0 800CEB00 8FA20018 */        lw $v0, 0x18($sp)
  .L800CEB04:
  /* 04A4E4 800CEB04 3C03800D */       lui $v1, %hi(D_ovl0_800D6350)
  /* 04A4E8 800CEB08 24636350 */     addiu $v1, $v1, %lo(D_ovl0_800D6350)
  /* 04A4EC 800CEB0C 8C780000 */        lw $t8, ($v1) # D_ovl0_800D6350 + 0
  /* 04A4F0 800CEB10 3C04800D */       lui $a0, %hi(D_ovl0_800D6448)
  /* 04A4F4 800CEB14 24846448 */     addiu $a0, $a0, %lo(D_ovl0_800D6448)
  /* 04A4F8 800CEB18 AC580000 */        sw $t8, ($v0)
  /* 04A4FC 800CEB1C 94990000 */       lhu $t9, ($a0) # D_ovl0_800D6448 + 0
  /* 04A500 800CEB20 AC620000 */        sw $v0, ($v1) # D_ovl0_800D6350 + 0
  /* 04A504 800CEB24 2728FFFF */     addiu $t0, $t9, -1
  /* 04A508 800CEB28 10000005 */         b .L800CEB40
  /* 04A50C 800CEB2C A4880000 */        sh $t0, ($a0) # D_ovl0_800D6448 + 0
  /* 04A510 800CEB30 00401825 */        or $v1, $v0, $zero
  .L800CEB34:
  /* 04A514 800CEB34 8C420000 */        lw $v0, ($v0)
  /* 04A518 800CEB38 1440FFCD */      bnez $v0, .L800CEA70
  /* 04A51C 800CEB3C 00000000 */       nop 
  .L800CEB40:
  /* 04A520 800CEB40 8FBF0014 */        lw $ra, 0x14($sp)
  .L800CEB44:
  /* 04A524 800CEB44 27BD0020 */     addiu $sp, $sp, 0x20
  /* 04A528 800CEB48 03E00008 */        jr $ra
  /* 04A52C 800CEB4C 00000000 */       nop 

