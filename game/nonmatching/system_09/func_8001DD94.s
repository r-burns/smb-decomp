.section .text
glabel func_8001DD94
  /* 01E994 8001DD94 44866000 */      mtc1 $a2, $f12
  /* 01E998 8001DD98 44802000 */      mtc1 $zero, $f4
  /* 01E99C 8001DD9C 27BDFFE0 */     addiu $sp, $sp, -0x20
  /* 01E9A0 8001DDA0 AFB00018 */        sw $s0, 0x18($sp)
  /* 01E9A4 8001DDA4 4604603C */    c.lt.s $f12, $f4
  /* 01E9A8 8001DDA8 00A08025 */        or $s0, $a1, $zero
  /* 01E9AC 8001DDAC AFBF001C */        sw $ra, 0x1c($sp)
  /* 01E9B0 8001DDB0 3C013F80 */       lui $at, (0x3F800000 >> 16) # 1.0
  /* 01E9B4 8001DDB4 45030096 */     bc1tl .L8001E010
  /* 01E9B8 8001DDB8 8FBF001C */        lw $ra, 0x1c($sp)
  /* 01E9BC 8001DDBC 44810000 */      mtc1 $at, $f0 # 1.0 to cop1
  /* 01E9C0 8001DDC0 00000000 */       nop 
  /* 01E9C4 8001DDC4 460C003C */    c.lt.s $f0, $f12
  /* 01E9C8 8001DDC8 00000000 */       nop 
  /* 01E9CC 8001DDCC 45030090 */     bc1tl .L8001E010
  /* 01E9D0 8001DDD0 8FBF001C */        lw $ra, 0x1c($sp)
  /* 01E9D4 8001DDD4 4600603C */    c.lt.s $f12, $f0
  /* 01E9D8 8001DDD8 00000000 */       nop 
  /* 01E9DC 8001DDDC 45020050 */     bc1fl .L8001DF20
  /* 01E9E0 8001DDE0 86080002 */        lh $t0, 2($s0)
  /* 01E9E4 8001DDE4 84AE0002 */        lh $t6, 2($a1)
  /* 01E9E8 8001DDE8 90A20000 */       lbu $v0, ($a1)
  /* 01E9EC 8001DDEC 24010001 */     addiu $at, $zero, 1
  /* 01E9F0 8001DDF0 25CFFFFF */     addiu $t7, $t6, -1
  /* 01E9F4 8001DDF4 448F3000 */      mtc1 $t7, $f6
  /* 01E9F8 8001DDF8 00000000 */       nop 
  /* 01E9FC 8001DDFC 46803220 */   cvt.s.w $f8, $f6
  /* 01EA00 8001DE00 46086302 */     mul.s $f12, $f12, $f8
  /* 01EA04 8001DE04 4600628D */ trunc.w.s $f10, $f12
  /* 01EA08 8001DE08 44035000 */      mfc1 $v1, $f10
  /* 01EA0C 8001DE0C 00000000 */       nop 
  /* 01EA10 8001DE10 0003CC00 */       sll $t9, $v1, 0x10
  /* 01EA14 8001DE14 00194C03 */       sra $t1, $t9, 0x10
  /* 01EA18 8001DE18 44898000 */      mtc1 $t1, $f16
  /* 01EA1C 8001DE1C 00034400 */       sll $t0, $v1, 0x10
  /* 01EA20 8001DE20 00084403 */       sra $t0, $t0, 0x10
  /* 01EA24 8001DE24 468084A0 */   cvt.s.w $f18, $f16
  /* 01EA28 8001DE28 00085880 */       sll $t3, $t0, 2
  /* 01EA2C 8001DE2C 1040000B */      beqz $v0, .L8001DE5C
  /* 01EA30 8001DE30 46126301 */     sub.s $f12, $f12, $f18
  /* 01EA34 8001DE34 10410020 */       beq $v0, $at, .L8001DEB8
  /* 01EA38 8001DE38 000868C0 */       sll $t5, $t0, 3
  /* 01EA3C 8001DE3C 24010002 */     addiu $at, $zero, 2
  /* 01EA40 8001DE40 10410025 */       beq $v0, $at, .L8001DED8
  /* 01EA44 8001DE44 00087880 */       sll $t7, $t0, 2
  /* 01EA48 8001DE48 24010003 */     addiu $at, $zero, 3
  /* 01EA4C 8001DE4C 1041002A */       beq $v0, $at, .L8001DEF8
  /* 01EA50 8001DE50 0008C880 */       sll $t9, $t0, 2
  /* 01EA54 8001DE54 1000006E */         b .L8001E010
  /* 01EA58 8001DE58 8FBF001C */        lw $ra, 0x1c($sp)
  .L8001DE5C:
  /* 01EA5C 8001DE5C 8E0A0008 */        lw $t2, 8($s0)
  /* 01EA60 8001DE60 01685823 */      subu $t3, $t3, $t0
  /* 01EA64 8001DE64 000B5880 */       sll $t3, $t3, 2
  /* 01EA68 8001DE68 014B1021 */      addu $v0, $t2, $t3
  /* 01EA6C 8001DE6C C4400000 */      lwc1 $f0, ($v0)
  /* 01EA70 8001DE70 C444000C */      lwc1 $f4, 0xc($v0)
  /* 01EA74 8001DE74 46002181 */     sub.s $f6, $f4, $f0
  /* 01EA78 8001DE78 460C3202 */     mul.s $f8, $f6, $f12
  /* 01EA7C 8001DE7C 46080280 */     add.s $f10, $f0, $f8
  /* 01EA80 8001DE80 E48A0000 */      swc1 $f10, ($a0)
  /* 01EA84 8001DE84 C4500010 */      lwc1 $f16, 0x10($v0)
  /* 01EA88 8001DE88 C4420004 */      lwc1 $f2, 4($v0)
  /* 01EA8C 8001DE8C 46028481 */     sub.s $f18, $f16, $f2
  /* 01EA90 8001DE90 460C9102 */     mul.s $f4, $f18, $f12
  /* 01EA94 8001DE94 46041180 */     add.s $f6, $f2, $f4
  /* 01EA98 8001DE98 E4860004 */      swc1 $f6, 4($a0)
  /* 01EA9C 8001DE9C C4480014 */      lwc1 $f8, 0x14($v0)
  /* 01EAA0 8001DEA0 C44E0008 */      lwc1 $f14, 8($v0)
  /* 01EAA4 8001DEA4 460E4281 */     sub.s $f10, $f8, $f14
  /* 01EAA8 8001DEA8 460C5402 */     mul.s $f16, $f10, $f12
  /* 01EAAC 8001DEAC 46107480 */     add.s $f18, $f14, $f16
  /* 01EAB0 8001DEB0 10000056 */         b .L8001E00C
  /* 01EAB4 8001DEB4 E4920008 */      swc1 $f18, 8($a0)
  .L8001DEB8:
  /* 01EAB8 8001DEB8 8E0C0008 */        lw $t4, 8($s0)
  /* 01EABC 8001DEBC 01A86821 */      addu $t5, $t5, $t0
  /* 01EAC0 8001DEC0 000D6880 */       sll $t5, $t5, 2
  /* 01EAC4 8001DEC4 44066000 */      mfc1 $a2, $f12
  /* 01EAC8 8001DEC8 0C0076DD */       jal func_8001DB74
  /* 01EACC 8001DECC 018D2821 */      addu $a1, $t4, $t5
  /* 01EAD0 8001DED0 1000004F */         b .L8001E010
  /* 01EAD4 8001DED4 8FBF001C */        lw $ra, 0x1c($sp)
  .L8001DED8:
  /* 01EAD8 8001DED8 8E0E0008 */        lw $t6, 8($s0)
  /* 01EADC 8001DEDC 01E87823 */      subu $t7, $t7, $t0
  /* 01EAE0 8001DEE0 000F7880 */       sll $t7, $t7, 2
  /* 01EAE4 8001DEE4 44066000 */      mfc1 $a2, $f12
  /* 01EAE8 8001DEE8 0C007638 */       jal func_8001D8E0
  /* 01EAEC 8001DEEC 01CF2821 */      addu $a1, $t6, $t7
  /* 01EAF0 8001DEF0 10000047 */         b .L8001E010
  /* 01EAF4 8001DEF4 8FBF001C */        lw $ra, 0x1c($sp)
  .L8001DEF8:
  /* 01EAF8 8001DEF8 8E180008 */        lw $t8, 8($s0)
  /* 01EAFC 8001DEFC 0328C823 */      subu $t9, $t9, $t0
  /* 01EB00 8001DF00 0019C880 */       sll $t9, $t9, 2
  /* 01EB04 8001DF04 44076000 */      mfc1 $a3, $f12
  /* 01EB08 8001DF08 8E060004 */        lw $a2, 4($s0)
  /* 01EB0C 8001DF0C 0C007584 */       jal func_8001D610
  /* 01EB10 8001DF10 03192821 */      addu $a1, $t8, $t9
  /* 01EB14 8001DF14 1000003E */         b .L8001E010
  /* 01EB18 8001DF18 8FBF001C */        lw $ra, 0x1c($sp)
  /* 01EB1C 8001DF1C 86080002 */        lh $t0, 2($s0)
  .L8001DF20:
  /* 01EB20 8001DF20 92020000 */       lbu $v0, ($s0)
  /* 01EB24 8001DF24 24010001 */     addiu $at, $zero, 1
  /* 01EB28 8001DF28 2508FFFF */     addiu $t0, $t0, -1
  /* 01EB2C 8001DF2C 00084400 */       sll $t0, $t0, 0x10
  /* 01EB30 8001DF30 1040000B */      beqz $v0, .L8001DF60
  /* 01EB34 8001DF34 00084403 */       sra $t0, $t0, 0x10
  /* 01EB38 8001DF38 10410015 */       beq $v0, $at, .L8001DF90
  /* 01EB3C 8001DF3C 000870C0 */       sll $t6, $t0, 3
  /* 01EB40 8001DF40 24010002 */     addiu $at, $zero, 2
  /* 01EB44 8001DF44 1041001D */       beq $v0, $at, .L8001DFBC
  /* 01EB48 8001DF48 00084880 */       sll $t1, $t0, 2
  /* 01EB4C 8001DF4C 24010003 */     addiu $at, $zero, 3
  /* 01EB50 8001DF50 10410023 */       beq $v0, $at, .L8001DFE0
  /* 01EB54 8001DF54 00085880 */       sll $t3, $t0, 2
  /* 01EB58 8001DF58 1000002D */         b .L8001E010
  /* 01EB5C 8001DF5C 8FBF001C */        lw $ra, 0x1c($sp)
  .L8001DF60:
  /* 01EB60 8001DF60 8E090008 */        lw $t1, 8($s0)
  /* 01EB64 8001DF64 00085080 */       sll $t2, $t0, 2
  /* 01EB68 8001DF68 01485023 */      subu $t2, $t2, $t0
  /* 01EB6C 8001DF6C 000A5080 */       sll $t2, $t2, 2
  /* 01EB70 8001DF70 012A1021 */      addu $v0, $t1, $t2
  /* 01EB74 8001DF74 8C4C0000 */        lw $t4, ($v0)
  /* 01EB78 8001DF78 AC8C0000 */        sw $t4, ($a0)
  /* 01EB7C 8001DF7C 8C4B0004 */        lw $t3, 4($v0)
  /* 01EB80 8001DF80 AC8B0004 */        sw $t3, 4($a0)
  /* 01EB84 8001DF84 8C4C0008 */        lw $t4, 8($v0)
  /* 01EB88 8001DF88 10000020 */         b .L8001E00C
  /* 01EB8C 8001DF8C AC8C0008 */        sw $t4, 8($a0)
  .L8001DF90:
  /* 01EB90 8001DF90 8E0D0008 */        lw $t5, 8($s0)
  /* 01EB94 8001DF94 01C87021 */      addu $t6, $t6, $t0
  /* 01EB98 8001DF98 000E7080 */       sll $t6, $t6, 2
  /* 01EB9C 8001DF9C 01AE1021 */      addu $v0, $t5, $t6
  /* 01EBA0 8001DFA0 8C580000 */        lw $t8, ($v0)
  /* 01EBA4 8001DFA4 AC980000 */        sw $t8, ($a0)
  /* 01EBA8 8001DFA8 8C4F0004 */        lw $t7, 4($v0)
  /* 01EBAC 8001DFAC AC8F0004 */        sw $t7, 4($a0)
  /* 01EBB0 8001DFB0 8C580008 */        lw $t8, 8($v0)
  /* 01EBB4 8001DFB4 10000015 */         b .L8001E00C
  /* 01EBB8 8001DFB8 AC980008 */        sw $t8, 8($a0)
  .L8001DFBC:
  /* 01EBBC 8001DFBC 8E190008 */        lw $t9, 8($s0)
  /* 01EBC0 8001DFC0 01284823 */      subu $t1, $t1, $t0
  /* 01EBC4 8001DFC4 00094880 */       sll $t1, $t1, 2
  /* 01EBC8 8001DFC8 44060000 */      mfc1 $a2, $f0
  /* 01EBCC 8001DFCC 03292821 */      addu $a1, $t9, $t1
  /* 01EBD0 8001DFD0 0C007638 */       jal func_8001D8E0
  /* 01EBD4 8001DFD4 24A5FFF4 */     addiu $a1, $a1, -0xc
  /* 01EBD8 8001DFD8 1000000D */         b .L8001E010
  /* 01EBDC 8001DFDC 8FBF001C */        lw $ra, 0x1c($sp)
  .L8001DFE0:
  /* 01EBE0 8001DFE0 8E0A0008 */        lw $t2, 8($s0)
  /* 01EBE4 8001DFE4 01685823 */      subu $t3, $t3, $t0
  /* 01EBE8 8001DFE8 000B5880 */       sll $t3, $t3, 2
  /* 01EBEC 8001DFEC 014B1021 */      addu $v0, $t2, $t3
  /* 01EBF0 8001DFF0 8C4D000C */        lw $t5, 0xc($v0)
  /* 01EBF4 8001DFF4 2442000C */     addiu $v0, $v0, 0xc
  /* 01EBF8 8001DFF8 AC8D0000 */        sw $t5, ($a0)
  /* 01EBFC 8001DFFC 8C4C0004 */        lw $t4, 4($v0)
  /* 01EC00 8001E000 AC8C0004 */        sw $t4, 4($a0)
  /* 01EC04 8001E004 8C4D0008 */        lw $t5, 8($v0)
  /* 01EC08 8001E008 AC8D0008 */        sw $t5, 8($a0)
  .L8001E00C:
  /* 01EC0C 8001E00C 8FBF001C */        lw $ra, 0x1c($sp)
  .L8001E010:
  /* 01EC10 8001E010 8FB00018 */        lw $s0, 0x18($sp)
  /* 01EC14 8001E014 27BD0020 */     addiu $sp, $sp, 0x20
  /* 01EC18 8001E018 03E00008 */        jr $ra
  /* 01EC1C 8001E01C 00000000 */       nop 

