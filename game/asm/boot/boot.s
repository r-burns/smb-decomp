.include "macros.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text

.align 4

# Text Sections
#  0xA4000040 -> 0xA4000B60

  /* A4000040 40806800 */      mtc0 $zero, $13
  /* A4000044 40804800 */      mtc0 $zero, $9
  /* A4000048 40805800 */      mtc0 $zero, $11
  /* A400004C 3C08A470 */       lui $t0, %hi(D_NF_A4700000)
  /* A4000050 25080000 */     addiu $t0, $t0, %lo(D_NF_A4700000)
  /* A4000054 8D09000C */        lw $t1, 0xc($t0) # D_NF_A4700000 + 12
  /* A4000058 152000ED */      bnez $t1, .LA4000410
  /* A400005C 00000000 */       nop 
  /* A4000060 27BDFFE8 */     addiu $sp, $sp, -0x18
  /* A4000064 AFB30000 */        sw $s3, ($sp)
  /* A4000068 AFB40004 */        sw $s4, 4($sp)
  /* A400006C AFB50008 */        sw $s5, 8($sp)
  /* A4000070 AFB6000C */        sw $s6, 0xc($sp)
  /* A4000074 AFB70010 */        sw $s7, 0x10($sp)
  /* A4000078 3C08A470 */       lui $t0, %hi(D_NF_A4700000)
  /* A400007C 25080000 */     addiu $t0, $t0, %lo(D_NF_A4700000)
  /* A4000080 3C0AA3F8 */       lui $t2, %hi(D_NF_A3F80004)
  /* A4000084 3C0BA3F0 */       lui $t3, 0xa3f0
  /* A4000088 3C0CA430 */       lui $t4, %hi(D_NF_A4300000)
  /* A400008C 258C0000 */     addiu $t4, $t4, %lo(D_NF_A4300000)
  /* A4000090 34090040 */       ori $t1, $zero, 0x40
  /* A4000094 AD090004 */        sw $t1, 4($t0) # D_NF_A4700000 + 4
  /* A4000098 24112260 */     addiu $s1, $zero, 0x2260
  .LA400009C:
  /* A400009C 00000000 */       nop 
  /* A40000A0 2231FFFF */      addi $s1, $s1, -1
  /* A40000A4 1620FFFD */      bnez $s1, .LA400009C
  /* A40000A8 00000000 */       nop 
  /* A40000AC AD000008 */        sw $zero, 8($t0) # D_NF_A4700000 + 8
  /* A40000B0 34090014 */       ori $t1, $zero, 0x14
  /* A40000B4 AD09000C */        sw $t1, 0xc($t0) # D_NF_A4700000 + 12
  /* A40000B8 AD000000 */        sw $zero, ($t0) # D_NF_A4700000 + 0
  /* A40000BC 24110004 */     addiu $s1, $zero, 4
  .LA40000C0:
  /* A40000C0 00000000 */       nop 
  /* A40000C4 2231FFFF */      addi $s1, $s1, -1
  /* A40000C8 1620FFFD */      bnez $s1, .LA40000C0
  /* A40000CC 00000000 */       nop 
  /* A40000D0 3409000E */       ori $t1, $zero, 0xe
  /* A40000D4 AD090000 */        sw $t1, ($t0) # D_NF_A4700000 + 0
  /* A40000D8 24110020 */     addiu $s1, $zero, 0x20
  .LA40000DC:
  /* A40000DC 2231FFFF */      addi $s1, $s1, -1
  /* A40000E0 1620FFFE */      bnez $s1, .LA40000DC
  /* A40000E4 3409010F */       ori $t1, $zero, 0x10f
  /* A40000E8 AD890000 */        sw $t1, ($t4) # D_NF_A4300000 + 0
  /* A40000EC 3C091808 */       lui $t1, (0x18082838 >> 16) # 403187768
  /* A40000F0 35292838 */       ori $t1, $t1, (0x18082838 & 0xFFFF) # 403187768
  /* A40000F4 AD490008 */        sw $t1, %lo(D_NF_A3F80008)($t2)
  /* A40000F8 AD400014 */        sw $zero, %lo(D_NF_A3F80014)($t2)
  /* A40000FC 3C098000 */       lui $t1, 0x8000
  /* A4000100 AD490004 */        sw $t1, %lo(D_NF_A3F80004)($t2)
  /* A4000104 00006825 */        or $t5, $zero, $zero
  /* A4000108 00007025 */        or $t6, $zero, $zero
  /* A400010C 3C0FA3F0 */       lui $t7, 0xa3f0
  /* A4000110 0000C025 */        or $t8, $zero, $zero
  /* A4000114 3C19A3F0 */       lui $t9, 0xa3f0
  /* A4000118 3C16A000 */       lui $s6, %hi(D_NF_A0000000)
  /* A400011C 0000B825 */        or $s7, $zero, $zero
  /* A4000120 3C06A3F0 */       lui $a2, 0xa3f0
  /* A4000124 3C07A000 */       lui $a3, 0xa000
  /* A4000128 00009025 */        or $s2, $zero, $zero
  /* A400012C 3C14A000 */       lui $s4, 0xa000
  /* A4000130 27BDFFB8 */     addiu $sp, $sp, -0x48
  /* A4000134 03A0F025 */        or $fp, $sp, $zero
  /* A4000138 3C10A430 */       lui $s0, %hi(D_NF_A4300004)
  /* A400013C 8E100004 */        lw $s0, %lo(D_NF_A4300004)($s0)
  /* A4000140 3C110101 */       lui $s1, %hi(D_NF_01010101)
  /* A4000144 26310101 */     addiu $s1, $s1, %lo(D_NF_01010101)
  /* A4000148 16110005 */       bne $s0, $s1, .LA4000160
  /* A400014C 00000000 */       nop 
  /* A4000150 24100200 */     addiu $s0, $zero, 0x200
  /* A4000154 35714000 */       ori $s1, $t3, 0x4000
  /* A4000158 10000003 */         b .LA4000168
  /* A400015C 00000000 */       nop 
  .LA4000160:
  /* A4000160 24100400 */     addiu $s0, $zero, 0x400
  /* A4000164 35718000 */       ori $s1, $t3, 0x8000
  .LA4000168:
  /* A4000168 AE2E0004 */        sw $t6, 4($s1) # D_NF_01010101 + 4
  /* A400016C 25F5000C */     addiu $s5, $t7, 0xc
  /* A4000170 0D0001DB */       jal func_boot_A400076C
  /* A4000174 00000000 */       nop 
  /* A4000178 10400038 */      beqz $v0, .LA400025C
  /* A400017C 00000000 */       nop 
  /* A4000180 AFA20000 */        sw $v0, ($sp)
  /* A4000184 24092000 */     addiu $t1, $zero, 0x2000
  /* A4000188 AD890000 */        sw $t1, ($t4)
  /* A400018C 8DEB0000 */        lw $t3, ($t7)
  /* A4000190 3C08F0FF */       lui $t0, 0xf0ff
  /* A4000194 01685824 */       and $t3, $t3, $t0
  /* A4000198 AFAB0004 */        sw $t3, 4($sp)
  /* A400019C 23BD0008 */      addi $sp, $sp, 8
  /* A40001A0 24091000 */     addiu $t1, $zero, 0x1000
  /* A40001A4 AD890000 */        sw $t1, ($t4)
  /* A40001A8 3C08B019 */       lui $t0, 0xb019
  /* A40001AC 1568000C */       bne $t3, $t0, .LA40001E0
  /* A40001B0 00000000 */       nop 
  /* A40001B4 3C080800 */       lui $t0, 0x800
  /* A40001B8 0308C020 */       add $t8, $t8, $t0
  /* A40001BC 0330C820 */       add $t9, $t9, $s0
  /* A40001C0 0330C820 */       add $t9, $t9, $s0
  /* A40001C4 3C080020 */       lui $t0, 0x20
  /* A40001C8 02C8B020 */       add $s6, $s6, $t0
  /* A40001CC 0288A020 */       add $s4, $s4, $t0
  /* A40001D0 00129040 */       sll $s2, $s2, 1
  /* A40001D4 22520001 */      addi $s2, $s2, 1
  /* A40001D8 10000003 */         b .LA40001E8
  /* A40001DC 00000000 */       nop 
  .LA40001E0:
  /* A40001E0 3C080010 */       lui $t0, 0x10
  /* A40001E4 0288A020 */       add $s4, $s4, $t0
  .LA40001E8:
  /* A40001E8 24082000 */     addiu $t0, $zero, 0x2000
  /* A40001EC AD880000 */        sw $t0, ($t4)
  /* A40001F0 8DE90024 */        lw $t1, 0x24($t7)
  /* A40001F4 8DFA0000 */        lw $k0, ($t7)
  /* A40001F8 24081000 */     addiu $t0, $zero, 0x1000
  /* A40001FC AD880000 */        sw $t0, ($t4)
  /* A4000200 3129FFFF */      andi $t1, $t1, 0xffff
  /* A4000204 24080500 */     addiu $t0, $zero, 0x500
  /* A4000208 15280009 */       bne $t1, $t0, .LA4000230
  /* A400020C 00000000 */       nop 
  /* A4000210 3C1B0100 */       lui $k1, 0x100
  /* A4000214 035BD024 */       and $k0, $k0, $k1
  /* A4000218 17400005 */      bnez $k0, .LA4000230
  /* A400021C 00000000 */       nop 
  /* A4000220 3C08101C */       lui $t0, (0x101C0A04 >> 16) # 270273028
  /* A4000224 35080A04 */       ori $t0, $t0, (0x101C0A04 & 0xFFFF) # 270273028
  /* A4000228 ADE80018 */        sw $t0, 0x18($t7)
  /* A400022C 10000003 */         b .LA400023C
  .LA4000230:
  /* A4000230 3C08080C */       lui $t0, (0x80C1204 >> 16) # 135008772
  /* A4000234 35081204 */       ori $t0, $t0, (0x80C1204 & 0xFFFF) # 135008772
  /* A4000238 ADE80018 */        sw $t0, 0x18($t7)
  .LA400023C:
  /* A400023C 3C080800 */       lui $t0, 0x800
  /* A4000240 01C87020 */       add $t6, $t6, $t0
  /* A4000244 01F07820 */       add $t7, $t7, $s0
  /* A4000248 01F07820 */       add $t7, $t7, $s0
  /* A400024C 25AD0001 */     addiu $t5, $t5, 1
  /* A4000250 2DA80008 */     sltiu $t0, $t5, 8
  /* A4000254 1500FFC4 */      bnez $t0, .LA4000168
  /* A4000258 00000000 */       nop 
  .LA400025C:
  /* A400025C 3C08C400 */       lui $t0, 0xc400
  /* A4000260 AD48000C */        sw $t0, 0xc($t2)
  /* A4000264 3C088000 */       lui $t0, 0x8000
  /* A4000268 AD480004 */        sw $t0, 4($t2)
  /* A400026C 03C0E825 */        or $sp, $fp, $zero
  /* A4000270 00001825 */        or $v1, $zero, $zero
  .LA4000274:
  /* A4000274 8FA90004 */        lw $t1, 4($sp)
  /* A4000278 3C08B009 */       lui $t0, 0xb009
  /* A400027C 15280016 */       bne $t1, $t0, .LA40002D8
  /* A4000280 00000000 */       nop 
  /* A4000284 AE380004 */        sw $t8, 4($s1) # D_NF_01010101 + 4
  /* A4000288 2735000C */     addiu $s5, $t9, 0xc
  /* A400028C 8FA40000 */        lw $a0, ($sp)
  /* A4000290 23BD0008 */      addi $sp, $sp, 8
  /* A4000294 24050001 */     addiu $a1, $zero, 1
  /* A4000298 0D00028D */       jal func_boot_A4000A34
  /* A400029C 00000000 */       nop 
  /* A40002A0 8EC80000 */        lw $t0, %lo(D_NF_A0000000)($s6)
  /* A40002A4 3C080008 */       lui $t0, %hi(D_NF_00080000)
  /* A40002A8 01164020 */       add $t0, $t0, $s6
  /* A40002AC 8D090000 */        lw $t1, %lo(D_NF_00080000)($t0)
  /* A40002B0 8EC80000 */        lw $t0, %lo(D_NF_A0000000)($s6)
  /* A40002B4 3C080008 */       lui $t0, %hi(D_NF_00080000)
  /* A40002B8 01164020 */       add $t0, $t0, $s6
  /* A40002BC 8D090000 */        lw $t1, %lo(D_NF_00080000)($t0)
  /* A40002C0 3C080400 */       lui $t0, 0x400
  /* A40002C4 01C87020 */       add $t6, $t6, $t0
  /* A40002C8 0330C820 */       add $t9, $t9, $s0
  /* A40002CC 3C080010 */       lui $t0, 0x10
  /* A40002D0 02C8B020 */       add $s6, $s6, $t0
  /* A40002D4 10000021 */         b .LA400035C
  .LA40002D8:
  /* A40002D8 AE370004 */        sw $s7, 4($s1) # D_NF_01010101 + 4
  /* A40002DC 24D5000C */     addiu $s5, $a2, 0xc
  /* A40002E0 8FA40000 */        lw $a0, ($sp)
  /* A40002E4 23BD0008 */      addi $sp, $sp, 8
  /* A40002E8 24050001 */     addiu $a1, $zero, 1
  /* A40002EC 0D00028D */       jal func_boot_A4000A34
  /* A40002F0 00000000 */       nop 
  /* A40002F4 8CE80000 */        lw $t0, ($a3)
  /* A40002F8 3C080008 */       lui $t0, %hi(D_NF_00080000)
  /* A40002FC 01074020 */       add $t0, $t0, $a3
  /* A4000300 8D090000 */        lw $t1, %lo(D_NF_00080000)($t0)
  /* A4000304 3C080010 */       lui $t0, %hi(D_NF_00100000)
  /* A4000308 01074020 */       add $t0, $t0, $a3
  /* A400030C 8D090000 */        lw $t1, %lo(D_NF_00100000)($t0)
  /* A4000310 3C080018 */       lui $t0, %hi(D_NF_00180000)
  /* A4000314 01074020 */       add $t0, $t0, $a3
  /* A4000318 8D090000 */        lw $t1, %lo(D_NF_00180000)($t0)
  /* A400031C 8CE80000 */        lw $t0, ($a3)
  /* A4000320 3C080008 */       lui $t0, %hi(D_NF_00080000)
  /* A4000324 01074020 */       add $t0, $t0, $a3
  /* A4000328 8D090000 */        lw $t1, %lo(D_NF_00080000)($t0)
  /* A400032C 3C080010 */       lui $t0, %hi(D_NF_00100000)
  /* A4000330 01074020 */       add $t0, $t0, $a3
  /* A4000334 8D090000 */        lw $t1, %lo(D_NF_00100000)($t0)
  /* A4000338 3C080018 */       lui $t0, %hi(D_NF_00180000)
  /* A400033C 01074020 */       add $t0, $t0, $a3
  /* A4000340 8D090000 */        lw $t1, %lo(D_NF_00180000)($t0)
  /* A4000344 3C080800 */       lui $t0, 0x800
  /* A4000348 02E8B820 */       add $s7, $s7, $t0
  /* A400034C 00D03020 */       add $a2, $a2, $s0
  /* A4000350 00D03020 */       add $a2, $a2, $s0
  /* A4000354 3C080020 */       lui $t0, 0x20
  /* A4000358 00E83820 */       add $a3, $a3, $t0
  .LA400035C:
  /* A400035C 24630001 */     addiu $v1, $v1, 1
  /* A4000360 006D402A */       slt $t0, $v1, $t5
  /* A4000364 1500FFC3 */      bnez $t0, .LA4000274
  /* A4000368 00000000 */       nop 
  /* A400036C 3C0AA470 */       lui $t2, %hi(D_NF_A4700010)
  /* A4000370 001294C0 */       sll $s2, $s2, 0x13
  /* A4000374 3C090006 */       lui $t1, (0x63634 >> 16) # 407092
  /* A4000378 35293634 */       ori $t1, $t1, (0x63634 & 0xFFFF) # 407092
  /* A400037C 01324825 */        or $t1, $t1, $s2
  /* A4000380 AD490010 */        sw $t1, %lo(D_NF_A4700010)($t2)
  /* A4000384 8D490010 */        lw $t1, %lo(D_NF_A4700010)($t2)
  /* A4000388 3C08A000 */       lui $t0, (0xA0000300 >> 16) # 2684355328
  /* A400038C 35080300 */       ori $t0, $t0, (0xA0000300 & 0xFFFF) # 2684355328
  /* A4000390 3C090FFF */       lui $t1, (0xFFFFFFF >> 16) # 268435455
  /* A4000394 3529FFFF */       ori $t1, $t1, (0xFFFFFFF & 0xFFFF) # 268435455
  /* A4000398 02C9B024 */       and $s6, $s6, $t1
  /* A400039C AD160018 */        sw $s6, 0x18($t0) # D_NF_A0000300 + 24
  /* A40003A0 03C0E825 */        or $sp, $fp, $zero
  /* A40003A4 27BD0048 */     addiu $sp, $sp, 0x48
  /* A40003A8 8FB30000 */        lw $s3, ($sp)
  /* A40003AC 8FB40004 */        lw $s4, 4($sp)
  /* A40003B0 8FB50008 */        lw $s5, 8($sp)
  /* A40003B4 8FB6000C */        lw $s6, 0xc($sp)
  /* A40003B8 8FB70010 */        lw $s7, 0x10($sp)
  /* A40003BC 27BD0018 */     addiu $sp, $sp, 0x18
  /* A40003C0 3C088000 */       lui $t0, %hi(D_NF_80000000)
  /* A40003C4 25080000 */     addiu $t0, $t0, %lo(D_NF_80000000)
  /* A40003C8 25094000 */     addiu $t1, $t0, 0x4000
  /* A40003CC 2529FFE0 */     addiu $t1, $t1, -0x20
  /* A40003D0 4080E000 */      mtc0 $zero, $28
  /* A40003D4 4080E800 */      mtc0 $zero, $29
  .LA40003D8:
  /* A40003D8 BD080000 */     cache 8, ($t0)
  /* A40003DC 0109082B */      sltu $at, $t0, $t1
  /* A40003E0 1420FFFD */      bnez $at, .LA40003D8
  /* A40003E4 25080020 */     addiu $t0, $t0, 0x20
  /* A40003E8 3C088000 */       lui $t0, %hi(D_NF_80000000)
  /* A40003EC 25080000 */     addiu $t0, $t0, %lo(D_NF_80000000)
  /* A40003F0 25092000 */     addiu $t1, $t0, 0x2000
  /* A40003F4 2529FFF0 */     addiu $t1, $t1, -0x10
  .LA40003F8:
  /* A40003F8 BD090000 */     cache 9, ($t0)
  /* A40003FC 0109082B */      sltu $at, $t0, $t1
  /* A4000400 1420FFFD */      bnez $at, .LA40003F8
  /* A4000404 25080010 */     addiu $t0, $t0, 0x10
  /* A4000408 10000013 */         b .LA4000458
  /* A400040C 00000000 */       nop 
  .LA4000410:
  /* A4000410 3C088000 */       lui $t0, %hi(D_NF_80000000)
  /* A4000414 25080000 */     addiu $t0, $t0, %lo(D_NF_80000000)
  /* A4000418 25094000 */     addiu $t1, $t0, 0x4000
  /* A400041C 2529FFE0 */     addiu $t1, $t1, -0x20
  /* A4000420 4080E000 */      mtc0 $zero, $28
  /* A4000424 4080E800 */      mtc0 $zero, $29
  .LA4000428:
  /* A4000428 BD080000 */     cache 8, ($t0)
  /* A400042C 0109082B */      sltu $at, $t0, $t1
  /* A4000430 1420FFFD */      bnez $at, .LA4000428
  /* A4000434 25080020 */     addiu $t0, $t0, 0x20
  /* A4000438 3C088000 */       lui $t0, %hi(D_NF_80000000)
  /* A400043C 25080000 */     addiu $t0, $t0, %lo(D_NF_80000000)
  /* A4000440 25092000 */     addiu $t1, $t0, 0x2000
  /* A4000444 2529FFF0 */     addiu $t1, $t1, -0x10
  .LA4000448:
  /* A4000448 BD010000 */     cache 1, ($t0)
  /* A400044C 0109082B */      sltu $at, $t0, $t1
  /* A4000450 1420FFFD */      bnez $at, .LA4000448
  /* A4000454 25080010 */     addiu $t0, $t0, 0x10
  .LA4000458:
  /* A4000458 3C0AA400 */       lui $t2, %hi(D_NF_A4000000)
  /* A400045C 254A0000 */     addiu $t2, $t2, %lo(D_NF_A4000000)
  /* A4000460 3C0BFFF0 */       lui $t3, 0xfff0
  /* A4000464 3C090010 */       lui $t1, %hi(D_NF_000FFFFF)
  /* A4000468 014B5024 */       and $t2, $t2, $t3
  /* A400046C 3C08A400 */       lui $t0, %hi(func_boot_A40004C0)
  /* A4000470 2529FFFF */     addiu $t1, $t1, %lo(D_NF_000FFFFF)
  /* A4000474 3C0BA400 */       lui $t3, %hi(func_boot_A4000768)
  /* A4000478 250804C0 */     addiu $t0, $t0, %lo(func_boot_A40004C0)
  /* A400047C 256B0768 */     addiu $t3, $t3, %lo(func_boot_A4000768)
  /* A4000480 01094024 */       and $t0, $t0, $t1
  /* A4000484 01695824 */       and $t3, $t3, $t1
  /* A4000488 3C09A000 */       lui $t1, %hi(D_NF_A0000000)
  /* A400048C 010A4025 */        or $t0, $t0, $t2
  /* A4000490 016A5825 */        or $t3, $t3, $t2
  /* A4000494 25290000 */     addiu $t1, $t1, %lo(D_NF_A0000000)
  .LA4000498:
  /* A4000498 8D0D0000 */        lw $t5, ($t0) # func_boot_A40004C0 + 0
  /* A400049C 25080004 */     addiu $t0, $t0, 4
  /* A40004A0 010B082B */      sltu $at, $t0, $t3
  /* A40004A4 25290004 */     addiu $t1, $t1, 4
  /* A40004A8 1420FFFB */      bnez $at, .LA4000498
  /* A40004AC AD2DFFFC */        sw $t5, -4($t1) # D_NF_A0000000 + -4
  /* A40004B0 3C0C8000 */       lui $t4, %hi(D_NF_80000000)
  /* A40004B4 258C0000 */     addiu $t4, $t4, %lo(D_NF_80000000)
  /* A40004B8 01800008 */        jr $t4
  /* A40004BC 00000000 */       nop 
glabel func_boot_A40004C0
  /* A40004C0 3C0BB000 */       lui $t3, %hi(D_NF_B0000008)
  /* A40004C4 8D690008 */        lw $t1, %lo(D_NF_B0000008)($t3)
  /* A40004C8 3C0A1FFF */       lui $t2, (0x1FFFFFFF >> 16) # 536870911
  /* A40004CC 354AFFFF */       ori $t2, $t2, (0x1FFFFFFF & 0xFFFF) # 536870911
  /* A40004D0 3C010010 */       lui $at, 0x10
  /* A40004D4 012A4824 */       and $t1, $t1, $t2
  /* A40004D8 01214823 */      subu $t1, $t1, $at
  /* A40004DC 3C01A460 */       lui $at, %hi(D_NF_A4600000)
  /* A40004E0 AC290000 */        sw $t1, %lo(D_NF_A4600000)($at)
  /* A40004E4 3C08A460 */       lui $t0, %hi(D_NF_A4600010)
  .LA40004E8:
  /* A40004E8 8D080010 */        lw $t0, %lo(D_NF_A4600010)($t0)
  /* A40004EC 31080002 */      andi $t0, $t0, 2
  /* A40004F0 5500FFFD */      bnel $t0, $zero, .LA40004E8
  /* A40004F4 3C08A460 */       lui $t0, %hi(D_NF_A4600004)
  /* A40004F8 24081000 */     addiu $t0, $zero, 0x1000
  /* A40004FC 010B4020 */       add $t0, $t0, $t3
  /* A4000500 010A4024 */       and $t0, $t0, $t2
  /* A4000504 3C01A460 */       lui $at, %hi(D_NF_A4600004)
  /* A4000508 AC280004 */        sw $t0, %lo(D_NF_A4600004)($at)
  /* A400050C 3C0A0010 */       lui $t2, %hi(D_NF_00100003)
  /* A4000510 254A0003 */     addiu $t2, $t2, %lo(D_NF_00100003)
  /* A4000514 3C01A460 */       lui $at, %hi(D_NF_A460000C)
  /* A4000518 AC2A000C */        sw $t2, %lo(D_NF_A460000C)($at)
  .LA400051C:
  /* A400051C 00000000 */       nop 
  /* A4000520 00000000 */       nop 
  /* A4000524 00000000 */       nop 
  /* A4000528 00000000 */       nop 
  /* A400052C 00000000 */       nop 
# Maybe start of new file
  /* A4000530 00000000 */       nop 
  /* A4000534 00000000 */       nop 
  /* A4000538 00000000 */       nop 
  /* A400053C 00000000 */       nop 
# Maybe start of new file
  /* A4000540 00000000 */       nop 
  /* A4000544 00000000 */       nop 
  /* A4000548 00000000 */       nop 
  /* A400054C 3C0BA460 */       lui $t3, %hi(D_NF_A4600010)
  /* A4000550 8D6B0010 */        lw $t3, %lo(D_NF_A4600010)($t3)
  /* A4000554 316B0001 */      andi $t3, $t3, 1
  /* A4000558 1560FFF0 */      bnez $t3, .LA400051C
  /* A400055C 00000000 */       nop 
  /* A4000560 3C0BB000 */       lui $t3, %hi(D_NF_B0000008)
  /* A4000564 8D640008 */        lw $a0, %lo(D_NF_B0000008)($t3)
  /* A4000568 3C010010 */       lui $at, 0x10
  /* A400056C 02C02825 */        or $a1, $s6, $zero
  /* A4000570 00812023 */      subu $a0, $a0, $at
  /* A4000574 3C016C07 */       lui $at, (0x6C078965 >> 16) # 1812433253
  /* A4000578 34218965 */       ori $at, $at, (0x6C078965 & 0xFFFF) # 1812433253
  /* A400057C 00A10019 */     multu $a1, $at
  /* A4000580 27BDFFE0 */     addiu $sp, $sp, -0x20
  /* A4000584 AFBF001C */        sw $ra, 0x1c($sp)
  /* A4000588 AFB00014 */        sw $s0, 0x14($sp)
  /* A400058C 3C1F0010 */       lui $ra, 0x10
  /* A4000590 00001825 */        or $v1, $zero, $zero
  /* A4000594 00004025 */        or $t0, $zero, $zero
  /* A4000598 00804825 */        or $t1, $a0, $zero
  /* A400059C 240D0020 */     addiu $t5, $zero, 0x20
  /* A40005A0 00001012 */      mflo $v0
  /* A40005A4 24420001 */     addiu $v0, $v0, 1
  /* A40005A8 00403825 */        or $a3, $v0, $zero
  /* A40005AC 00405025 */        or $t2, $v0, $zero
  /* A40005B0 00405825 */        or $t3, $v0, $zero
  /* A40005B4 00408025 */        or $s0, $v0, $zero
  /* A40005B8 00403025 */        or $a2, $v0, $zero
  /* A40005BC 00406025 */        or $t4, $v0, $zero
  .LA40005C0:
  /* A40005C0 8D220000 */        lw $v0, ($t1)
  /* A40005C4 00E21821 */      addu $v1, $a3, $v0
  /* A40005C8 0067082B */      sltu $at, $v1, $a3
  /* A40005CC 10200002 */      beqz $at, .LA40005D8
  /* A40005D0 00602825 */        or $a1, $v1, $zero
  /* A40005D4 254A0001 */     addiu $t2, $t2, 1
  .LA40005D8:
  /* A40005D8 3043001F */      andi $v1, $v0, 0x1f
  /* A40005DC 01A37823 */      subu $t7, $t5, $v1
  /* A40005E0 01E2C006 */      srlv $t8, $v0, $t7
  /* A40005E4 00627004 */      sllv $t6, $v0, $v1
  /* A40005E8 01D82025 */        or $a0, $t6, $t8
  /* A40005EC 00C2082B */      sltu $at, $a2, $v0
  /* A40005F0 00A03825 */        or $a3, $a1, $zero
  /* A40005F4 01625826 */       xor $t3, $t3, $v0
  /* A40005F8 10200004 */      beqz $at, .LA400060C
  /* A40005FC 02048021 */      addu $s0, $s0, $a0
  /* A4000600 00E2C826 */       xor $t9, $a3, $v0
  /* A4000604 10000002 */         b .LA4000610
  /* A4000608 03263026 */       xor $a2, $t9, $a2
  .LA400060C:
  /* A400060C 00C43026 */       xor $a2, $a2, $a0
  .LA4000610:
  /* A4000610 25080004 */     addiu $t0, $t0, %lo(D_NF_A4600004)
  /* A4000614 00507826 */       xor $t7, $v0, $s0
  /* A4000618 25290004 */     addiu $t1, $t1, 4
  /* A400061C 151FFFE8 */       bne $t0, $ra, .LA40005C0
  /* A4000620 01EC6021 */      addu $t4, $t7, $t4
  /* A4000624 00EA7026 */       xor $t6, $a3, $t2
  /* A4000628 01CB3821 */      addu $a3, $t6, $t3
  /* A400062C 0206C026 */       xor $t8, $s0, $a2
  /* A4000630 030C8021 */      addu $s0, $t8, $t4
  /* A4000634 3C0BB000 */       lui $t3, %hi(D_NF_B0000014)
  /* A4000638 8D680010 */        lw $t0, %lo(D_NF_B0000010)($t3)
  /* A400063C 14E80006 */       bne $a3, $t0, .LA4000658
  /* A4000640 00000000 */       nop 
  /* A4000644 8D680014 */        lw $t0, %lo(D_NF_B0000014)($t3)
  /* A4000648 16080003 */       bne $s0, $t0, .LA4000658
  /* A400064C 00000000 */       nop 
  /* A4000650 04110003 */       bal .LA4000660
  /* A4000654 00000000 */       nop 
  .LA4000658:
  /* A4000658 0411FFFF */       bal .LA4000658
  /* A400065C 00000000 */       nop 
  .LA4000660:
  /* A4000660 3C09A408 */       lui $t1, %hi(D_NF_A4080000)
  /* A4000664 8D290000 */        lw $t1, %lo(D_NF_A4080000)($t1)
  /* A4000668 8FB00014 */        lw $s0, 0x14($sp)
  /* A400066C 8FBF001C */        lw $ra, 0x1c($sp)
  /* A4000670 11200006 */      beqz $t1, .LA400068C
  /* A4000674 27BD0020 */     addiu $sp, $sp, 0x20
  /* A4000678 240A0041 */     addiu $t2, $zero, 0x41
  /* A400067C 3C01A404 */       lui $at, %hi(D_NF_A4040010)
  /* A4000680 AC2A0010 */        sw $t2, %lo(D_NF_A4040010)($at)
  /* A4000684 3C01A408 */       lui $at, %hi(D_NF_A4080000)
  /* A4000688 AC200000 */        sw $zero, %lo(D_NF_A4080000)($at)
  .LA400068C:
  /* A400068C 3C0B00AA */       lui $t3, (0xAAAAAE >> 16) # 11184814
  /* A4000690 356BAAAE */       ori $t3, $t3, (0xAAAAAE & 0xFFFF) # 11184814
  /* A4000694 3C01A404 */       lui $at, %hi(D_NF_A4040010)
  /* A4000698 AC2B0010 */        sw $t3, %lo(D_NF_A4040010)($at)
  /* A400069C 3C01A430 */       lui $at, %hi(D_NF_A430000C)
  /* A40006A0 24080555 */     addiu $t0, $zero, 0x555
  /* A40006A4 AC28000C */        sw $t0, %lo(D_NF_A430000C)($at)
  /* A40006A8 3C01A480 */       lui $at, %hi(D_NF_A4800018)
  /* A40006AC AC200018 */        sw $zero, %lo(D_NF_A4800018)($at)
  /* A40006B0 3C01A450 */       lui $at, %hi(D_NF_A450000C)
  /* A40006B4 AC20000C */        sw $zero, %lo(D_NF_A450000C)($at)
  /* A40006B8 3C01A430 */       lui $at, %hi(D_NF_A4300000)
  /* A40006BC 24090800 */     addiu $t1, $zero, 0x800
  /* A40006C0 AC290000 */        sw $t1, %lo(D_NF_A4300000)($at)
  /* A40006C4 24090002 */     addiu $t1, $zero, 2
  /* A40006C8 3C01A460 */       lui $at, %hi(D_NF_A4600010)
  /* A40006CC AC290010 */        sw $t1, %lo(D_NF_A4600010)($at)
  /* A40006D0 3C08A000 */       lui $t0, (0xA0000300 >> 16) # 2684355328
  /* A40006D4 35080300 */       ori $t0, $t0, (0xA0000300 & 0xFFFF) # 2684355328
  /* A40006D8 240917D7 */     addiu $t1, $zero, 0x17d7
  /* A40006DC AD090010 */        sw $t1, 0x10($t0) # D_NF_A0000300 + 16
  /* A40006E0 AD140000 */        sw $s4, ($t0) # D_NF_A0000300 + 0
  /* A40006E4 AD130004 */        sw $s3, 4($t0) # D_NF_A0000300 + 4
  /* A40006E8 AD15000C */        sw $s5, 0xc($t0) # D_NF_A0000300 + 12
  /* A40006EC 12600004 */      beqz $s3, .LA4000700
  /* A40006F0 AD170014 */        sw $s7, 0x14($t0) # D_NF_A0000300 + 20
  /* A40006F4 3C09A600 */       lui $t1, %hi(D_NF_A6000000)
  /* A40006F8 10000003 */         b .LA4000708
  /* A40006FC 25290000 */     addiu $t1, $t1, %lo(D_NF_A6000000)
  .LA4000700:
  /* A4000700 3C09B000 */       lui $t1, %hi(D_NF_B0000000)
  /* A4000704 25290000 */     addiu $t1, $t1, %lo(D_NF_B0000000)
  .LA4000708:
  /* A4000708 AD090008 */        sw $t1, 8($t0) # D_NF_A0000300 + 8
  /* A400070C 3C08A400 */       lui $t0, %hi(D_NF_A4000000)
  /* A4000710 25080000 */     addiu $t0, $t0, %lo(D_NF_A4000000)
  /* A4000714 21091000 */      addi $t1, $t0, 0x1000
  /* A4000718 240AFFFF */     addiu $t2, $zero, -1
  .LA400071C:
  /* A400071C 25080004 */     addiu $t0, $t0, 4
  /* A4000720 1509FFFE */       bne $t0, $t1, .LA400071C
  /* A4000724 AD0AFFFC */        sw $t2, -4($t0) # D_NF_A4000000 + -4
  /* A4000728 3C08A400 */       lui $t0, %hi(D_NF_A4001000)
  /* A400072C 25081000 */     addiu $t0, $t0, %lo(D_NF_A4001000)
  /* A4000730 21091000 */      addi $t1, $t0, 0x1000
  .LA4000734:
  /* A4000734 25080004 */     addiu $t0, $t0, 4
  /* A4000738 1509FFFE */       bne $t0, $t1, .LA4000734
  /* A400073C AD0AFFFC */        sw $t2, -4($t0) # D_NF_A4001000 + -4
  /* A4000740 3C0AA400 */       lui $t2, %hi(D_NF_A4001000)
  /* A4000744 240B17D7 */     addiu $t3, $zero, 0x17d7
  /* A4000748 AD4B1000 */        sw $t3, %lo(D_NF_A4001000)($t2)
  /* A400074C 3C0BB000 */       lui $t3, %hi(D_NF_B0000008)
  /* A4000750 254A1000 */     addiu $t2, $t2, %lo(D_NF_A4001000)
  /* A4000754 8D690008 */        lw $t1, %lo(D_NF_B0000008)($t3)
  /* A4000758 3C010010 */       lui $at, 0x10
  /* A400075C 01214823 */      subu $t1, $t1, $at
  /* A4000760 01200008 */        jr $t1
  /* A4000764 00000000 */       nop 
glabel func_boot_A4000768
  /* A4000768 00000000 */       nop 
glabel func_boot_A400076C
  /* A400076C 27BDFF60 */     addiu $sp, $sp, -0xa0
  /* A4000770 AFB00040 */        sw $s0, 0x40($sp)
  /* A4000774 AFB10044 */        sw $s1, 0x44($sp)
  /* A4000778 00008825 */        or $s1, $zero, $zero
  /* A400077C 00008025 */        or $s0, $zero, $zero
  /* A4000780 AFA20000 */        sw $v0, ($sp)
  /* A4000784 AFA30004 */        sw $v1, 4($sp)
  /* A4000788 AFA40008 */        sw $a0, 8($sp)
  /* A400078C AFA5000C */        sw $a1, 0xc($sp)
  /* A4000790 AFA60010 */        sw $a2, 0x10($sp)
  /* A4000794 AFA70014 */        sw $a3, 0x14($sp)
  /* A4000798 AFA80018 */        sw $t0, 0x18($sp)
  /* A400079C AFA9001C */        sw $t1, 0x1c($sp)
  /* A40007A0 AFAA0020 */        sw $t2, 0x20($sp)
  /* A40007A4 AFAB0024 */        sw $t3, 0x24($sp)
  /* A40007A8 AFAC0028 */        sw $t4, 0x28($sp)
  /* A40007AC AFAD002C */        sw $t5, 0x2c($sp)
  /* A40007B0 AFAE0030 */        sw $t6, 0x30($sp)
  /* A40007B4 AFAF0034 */        sw $t7, 0x34($sp)
  /* A40007B8 AFB80038 */        sw $t8, 0x38($sp)
  /* A40007BC AFB9003C */        sw $t9, 0x3c($sp)
  /* A40007C0 AFB20048 */        sw $s2, 0x48($sp)
  /* A40007C4 AFB3004C */        sw $s3, 0x4c($sp)
  /* A40007C8 AFB40050 */        sw $s4, 0x50($sp)
  /* A40007CC AFB50054 */        sw $s5, 0x54($sp)
  /* A40007D0 AFB60058 */        sw $s6, 0x58($sp)
  /* A40007D4 AFB7005C */        sw $s7, 0x5c($sp)
  /* A40007D8 AFBE0060 */        sw $fp, 0x60($sp)
  /* A40007DC AFBF0064 */        sw $ra, 0x64($sp)
  .LA40007E0:
  /* A40007E0 0D00021D */       jal func_boot_A4000874
  /* A40007E4 00000000 */       nop 
  /* A40007E8 26100001 */     addiu $s0, $s0, 1
  /* A40007EC 2A090004 */      slti $t1, $s0, 4
  /* A40007F0 1520FFFB */      bnez $t1, .LA40007E0
  /* A40007F4 02228821 */      addu $s1, $s1, $v0
  /* A40007F8 00112082 */       srl $a0, $s1, 2
  /* A40007FC 0D00028D */       jal func_boot_A4000A34
  /* A4000800 24050001 */     addiu $a1, $zero, 1
  /* A4000804 8FBF0064 */        lw $ra, 0x64($sp)
  /* A4000808 00111082 */       srl $v0, $s1, 2
  /* A400080C 8FB10044 */        lw $s1, 0x44($sp)
  /* A4000810 8FA30004 */        lw $v1, 4($sp)
  /* A4000814 8FA40008 */        lw $a0, 8($sp)
  /* A4000818 8FA5000C */        lw $a1, 0xc($sp)
  /* A400081C 8FA60010 */        lw $a2, 0x10($sp)
  /* A4000820 8FA70014 */        lw $a3, 0x14($sp)
  /* A4000824 8FA80018 */        lw $t0, 0x18($sp)
  /* A4000828 8FA9001C */        lw $t1, 0x1c($sp)
  /* A400082C 8FAA0020 */        lw $t2, 0x20($sp)
  /* A4000830 8FAB0024 */        lw $t3, 0x24($sp)
  /* A4000834 8FAC0028 */        lw $t4, 0x28($sp)
  /* A4000838 8FAD002C */        lw $t5, 0x2c($sp)
  /* A400083C 8FAE0030 */        lw $t6, 0x30($sp)
  /* A4000840 8FAF0034 */        lw $t7, 0x34($sp)
  /* A4000844 8FB80038 */        lw $t8, 0x38($sp)
  /* A4000848 8FB9003C */        lw $t9, 0x3c($sp)
  /* A400084C 8FB00040 */        lw $s0, 0x40($sp)
  /* A4000850 8FB20048 */        lw $s2, 0x48($sp)
  /* A4000854 8FB3004C */        lw $s3, 0x4c($sp)
  /* A4000858 8FB40050 */        lw $s4, 0x50($sp)
  /* A400085C 8FB50054 */        lw $s5, 0x54($sp)
  /* A4000860 8FB60058 */        lw $s6, 0x58($sp)
  /* A4000864 8FB7005C */        lw $s7, 0x5c($sp)
  /* A4000868 8FBE0060 */        lw $fp, 0x60($sp)
  /* A400086C 03E00008 */        jr $ra
  /* A4000870 27BD00A0 */     addiu $sp, $sp, 0xa0

glabel func_boot_A4000874
  /* A4000874 27BDFFE0 */     addiu $sp, $sp, -0x20
  /* A4000878 AFBF001C */        sw $ra, 0x1c($sp)
  /* A400087C 00004825 */        or $t1, $zero, $zero
  /* A4000880 00005825 */        or $t3, $zero, $zero
  /* A4000884 00006025 */        or $t4, $zero, $zero
  .LA4000888:
  /* A4000888 299A0040 */      slti $k0, $t4, 0x40
  /* A400088C 53400018 */      beql $k0, $zero, .LA40008F0
  /* A4000890 00001025 */        or $v0, $zero, $zero
  /* A4000894 0D000240 */       jal func_boot_A4000900
  /* A4000898 01802025 */        or $a0, $t4, $zero
  /* A400089C 58400008 */     blezl $v0, .LA40008C0
  /* A40008A0 293A0050 */      slti $k0, $t1, 0x50
  /* A40008A4 0049D023 */      subu $k0, $v0, $t1
  /* A40008A8 034C0019 */     multu $k0, $t4
  /* A40008AC 00404825 */        or $t1, $v0, $zero
  /* A40008B0 0000D012 */      mflo $k0
  /* A40008B4 017A5821 */      addu $t3, $t3, $k0
  /* A40008B8 00000000 */       nop 
  /* A40008BC 293A0050 */      slti $k0, $t1, 0x50
  .LA40008C0:
  /* A40008C0 1740FFF1 */      bnez $k0, .LA4000888
  /* A40008C4 258C0001 */     addiu $t4, $t4, 1
  /* A40008C8 000B2080 */       sll $a0, $t3, 2
  /* A40008CC 008B2023 */      subu $a0, $a0, $t3
  /* A40008D0 00042080 */       sll $a0, $a0, 2
  /* A40008D4 008B2023 */      subu $a0, $a0, $t3
  /* A40008D8 00042040 */       sll $a0, $a0, 1
  /* A40008DC 0D00025D */       jal func_boot_A4000974
  /* A40008E0 2484FC90 */     addiu $a0, $a0, -0x370
  /* A40008E4 10000003 */         b .LA40008F4
  /* A40008E8 8FBF001C */        lw $ra, 0x1c($sp)
  /* A40008EC 00001025 */        or $v0, $zero, $zero
  .LA40008F0:
  /* A40008F0 8FBF001C */        lw $ra, 0x1c($sp)
  .LA40008F4:
  /* A40008F4 27BD0020 */     addiu $sp, $sp, 0x20
  /* A40008F8 03E00008 */        jr $ra
  /* A40008FC 00000000 */       nop 

glabel func_boot_A4000900
  /* A4000900 27BDFFD8 */     addiu $sp, $sp, -0x28
  /* A4000904 AFBF001C */        sw $ra, 0x1c($sp)
  /* A4000908 00001025 */        or $v0, $zero, $zero
  /* A400090C 0D00028D */       jal func_boot_A4000A34
  /* A4000910 24050002 */     addiu $a1, $zero, 2
  /* A4000914 0000F025 */        or $fp, $zero, $zero
  /* A4000918 241AFFFF */     addiu $k0, $zero, -1
  .LA400091C:
  /* A400091C AE9A0004 */        sw $k0, 4($s4)
  /* A4000920 8E830004 */        lw $v1, 4($s4)
  /* A4000924 AE9A0000 */        sw $k0, ($s4)
  /* A4000928 AE9A0000 */        sw $k0, ($s4)
  /* A400092C 0000E025 */        or $gp, $zero, $zero
  /* A4000930 00031C02 */       srl $v1, $v1, 0x10
  .LA4000934:
  /* A4000934 307A0001 */      andi $k0, $v1, 1
  /* A4000938 53400003 */      beql $k0, $zero, .LA4000948
  /* A400093C 279C0001 */     addiu $gp, $gp, 1
  /* A4000940 24420001 */     addiu $v0, $v0, 1
  /* A4000944 279C0001 */     addiu $gp, $gp, 1
  .LA4000948:
  /* A4000948 2B9A0008 */      slti $k0, $gp, 8
  /* A400094C 1740FFF9 */      bnez $k0, .LA4000934
  /* A4000950 00031842 */       srl $v1, $v1, 1
  /* A4000954 27DE0001 */     addiu $fp, $fp, 1
  /* A4000958 2BDA000A */      slti $k0, $fp, 0xa
  /* A400095C 5740FFEF */      bnel $k0, $zero, .LA400091C
  /* A4000960 241AFFFF */     addiu $k0, $zero, -1
  /* A4000964 8FBF001C */        lw $ra, 0x1c($sp)
  /* A4000968 27BD0028 */     addiu $sp, $sp, 0x28
  /* A400096C 03E00008 */        jr $ra
  /* A4000970 00000000 */       nop 

glabel func_boot_A4000974
  /* A4000974 27BDFFD8 */     addiu $sp, $sp, -0x28
  /* A4000978 AFBF001C */        sw $ra, 0x1c($sp)
  /* A400097C AFA40020 */        sw $a0, 0x20($sp)
  /* A4000980 A3A00027 */        sb $zero, 0x27($sp)
  /* A4000984 00004025 */        or $t0, $zero, $zero
  /* A4000988 00005025 */        or $t2, $zero, $zero
  /* A400098C 340DC800 */       ori $t5, $zero, 0xc800
  /* A4000990 00007025 */        or $t6, $zero, $zero
  /* A4000994 29DA0040 */      slti $k0, $t6, 0x40
  .LA4000998:
  /* A4000998 57400004 */      bnel $k0, $zero, .LA40009AC
  /* A400099C 01C02025 */        or $a0, $t6, $zero
  /* A40009A0 10000020 */         b .LA4000A24
  /* A40009A4 00001025 */        or $v0, $zero, $zero
  /* A40009A8 01C02025 */        or $a0, $t6, $zero
  .LA40009AC:
  /* A40009AC 0D00028D */       jal func_boot_A4000A34
  /* A40009B0 24050001 */     addiu $a1, $zero, 1
  /* A40009B4 0D0002B1 */       jal func_boot_A4000AC4
  /* A40009B8 27A40027 */     addiu $a0, $sp, 0x27
  /* A40009BC 0D0002B1 */       jal func_boot_A4000AC4
  /* A40009C0 27A40027 */     addiu $a0, $sp, 0x27
  /* A40009C4 93BA0027 */       lbu $k0, 0x27($sp)
  /* A40009C8 241B0320 */     addiu $k1, $zero, 0x320
  /* A40009CC 8FA40020 */        lw $a0, 0x20($sp)
  /* A40009D0 035B0019 */     multu $k0, $k1
  /* A40009D4 00004012 */      mflo $t0
  /* A40009D8 0104D023 */      subu $k0, $t0, $a0
  /* A40009DC 07430003 */     bgezl $k0, .LA40009EC
  /* A40009E0 034DD82A */       slt $k1, $k0, $t5
  /* A40009E4 0088D023 */      subu $k0, $a0, $t0
  /* A40009E8 034DD82A */       slt $k1, $k0, $t5
  .LA40009EC:
  /* A40009EC 53600004 */      beql $k1, $zero, .LA4000A00
  /* A40009F0 8FA40020 */        lw $a0, 0x20($sp)
  /* A40009F4 03406825 */        or $t5, $k0, $zero
  /* A40009F8 01C05025 */        or $t2, $t6, $zero
  /* A40009FC 8FA40020 */        lw $a0, 0x20($sp)
  .LA4000A00:
  /* A4000A00 0104D82A */       slt $k1, $t0, $a0
  /* A4000A04 53600006 */      beql $k1, $zero, .LA4000A20
  /* A4000A08 014E1021 */      addu $v0, $t2, $t6
  /* A4000A0C 25CE0001 */     addiu $t6, $t6, 1
  /* A4000A10 29DB0041 */      slti $k1, $t6, 0x41
  /* A4000A14 5760FFE0 */      bnel $k1, $zero, .LA4000998
  /* A4000A18 29DA0040 */      slti $k0, $t6, 0x40
  /* A4000A1C 014E1021 */      addu $v0, $t2, $t6
  .LA4000A20:
  /* A4000A20 00021042 */       srl $v0, $v0, 1
  .LA4000A24:
  /* A4000A24 8FBF001C */        lw $ra, 0x1c($sp)
  /* A4000A28 27BD0028 */     addiu $sp, $sp, 0x28
  /* A4000A2C 03E00008 */        jr $ra
  /* A4000A30 00000000 */       nop 

glabel func_boot_A4000A34
  /* A4000A34 27BDFFD8 */     addiu $sp, $sp, -0x28
  /* A4000A38 308400FF */      andi $a0, $a0, 0xff
  /* A4000A3C 241B0001 */     addiu $k1, $zero, 1
  /* A4000A40 3884003F */      xori $a0, $a0, 0x3f
  /* A4000A44 AFBF001C */        sw $ra, 0x1c($sp)
  /* A4000A48 14BB0003 */       bne $a1, $k1, .LA4000A58
  /* A4000A4C 3C0F4600 */       lui $t7, 0x4600
  /* A4000A50 3C1A8000 */       lui $k0, 0x8000
  /* A4000A54 01FA7825 */        or $t7, $t7, $k0
  .LA4000A58:
  /* A4000A58 309A0001 */      andi $k0, $a0, 1
  /* A4000A5C 001AD180 */       sll $k0, $k0, 6
  /* A4000A60 01FA7825 */        or $t7, $t7, $k0
  /* A4000A64 309A0002 */      andi $k0, $a0, 2
  /* A4000A68 001AD340 */       sll $k0, $k0, 0xd
  /* A4000A6C 01FA7825 */        or $t7, $t7, $k0
  /* A4000A70 309A0004 */      andi $k0, $a0, 4
  /* A4000A74 001AD500 */       sll $k0, $k0, 0x14
  /* A4000A78 01FA7825 */        or $t7, $t7, $k0
  /* A4000A7C 309A0008 */      andi $k0, $a0, 8
  /* A4000A80 001AD100 */       sll $k0, $k0, 4
  /* A4000A84 01FA7825 */        or $t7, $t7, $k0
  /* A4000A88 309A0010 */      andi $k0, $a0, 0x10
  /* A4000A8C 001AD2C0 */       sll $k0, $k0, 0xb
  /* A4000A90 01FA7825 */        or $t7, $t7, $k0
  /* A4000A94 309A0020 */      andi $k0, $a0, 0x20
  /* A4000A98 001AD480 */       sll $k0, $k0, 0x12
  /* A4000A9C 01FA7825 */        or $t7, $t7, $k0
  /* A4000AA0 241B0001 */     addiu $k1, $zero, 1
  /* A4000AA4 14BB0003 */       bne $a1, $k1, .LA4000AB4
  /* A4000AA8 AEAF0000 */        sw $t7, ($s5)
  /* A4000AAC 3C1AA430 */       lui $k0, %hi(D_NF_A4300000)
  /* A4000AB0 AF400000 */        sw $zero, %lo(D_NF_A4300000)($k0)
  .LA4000AB4:
  /* A4000AB4 8FBF001C */        lw $ra, 0x1c($sp)
  /* A4000AB8 27BD0028 */     addiu $sp, $sp, 0x28
  /* A4000ABC 03E00008 */        jr $ra
  /* A4000AC0 00000000 */       nop 

glabel func_boot_A4000AC4
  /* A4000AC4 27BDFFD8 */     addiu $sp, $sp, -0x28
  /* A4000AC8 AFBF001C */        sw $ra, 0x1c($sp)
  /* A4000ACC 241A2000 */     addiu $k0, $zero, 0x2000
  /* A4000AD0 3C1BA430 */       lui $k1, %hi(D_NF_A4300000)
  /* A4000AD4 AF7A0000 */        sw $k0, %lo(D_NF_A4300000)($k1)
  /* A4000AD8 0000F025 */        or $fp, $zero, $zero
  /* A4000ADC 8EBE0000 */        lw $fp, ($s5)
  /* A4000AE0 241A1000 */     addiu $k0, $zero, 0x1000
  /* A4000AE4 AF7A0000 */        sw $k0, %lo(D_NF_A4300000)($k1)
  /* A4000AE8 241B0040 */     addiu $k1, $zero, 0x40
  /* A4000AEC 037ED824 */       and $k1, $k1, $fp
  /* A4000AF0 001BD982 */       srl $k1, $k1, 6
  /* A4000AF4 0000D025 */        or $k0, $zero, $zero
  /* A4000AF8 035BD025 */        or $k0, $k0, $k1
  /* A4000AFC 241B4000 */     addiu $k1, $zero, 0x4000
  /* A4000B00 037ED824 */       and $k1, $k1, $fp
  /* A4000B04 001BDB42 */       srl $k1, $k1, 0xd
  /* A4000B08 035BD025 */        or $k0, $k0, $k1
  /* A4000B0C 3C1B0040 */       lui $k1, 0x40
  /* A4000B10 037ED824 */       and $k1, $k1, $fp
  /* A4000B14 001BDD02 */       srl $k1, $k1, 0x14
  /* A4000B18 035BD025 */        or $k0, $k0, $k1
  /* A4000B1C 241B0080 */     addiu $k1, $zero, 0x80
  /* A4000B20 037ED824 */       and $k1, $k1, $fp
  /* A4000B24 001BD902 */       srl $k1, $k1, 4
  /* A4000B28 035BD025 */        or $k0, $k0, $k1
  /* A4000B2C 341B8000 */       ori $k1, $zero, 0x8000
  /* A4000B30 037ED824 */       and $k1, $k1, $fp
  /* A4000B34 001BDAC2 */       srl $k1, $k1, 0xb
  /* A4000B38 035BD025 */        or $k0, $k0, $k1
  /* A4000B3C 3C1B0080 */       lui $k1, 0x80
  /* A4000B40 037ED824 */       and $k1, $k1, $fp
  /* A4000B44 001BDC82 */       srl $k1, $k1, 0x12
  /* A4000B48 035BD025 */        or $k0, $k0, $k1
  /* A4000B4C A09A0000 */        sb $k0, ($a0)
  /* A4000B50 8FBF001C */        lw $ra, 0x1c($sp)
  /* A4000B54 27BD0028 */     addiu $sp, $sp, 0x28
  /* A4000B58 03E00008 */        jr $ra
  /* A4000B5C 00000000 */       nop 

###############################################################################
.section .data

# Data Sections
#  A4000B60 -> A4001000

.incbin "boot.raw.bin", 0x0B20, 0x4A0
