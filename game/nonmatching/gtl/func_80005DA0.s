.section .text
glabel func_80005DA0
  /* 0069A0 80005DA0 27BDFFC0 */     addiu $sp, $sp, -0x40
  /* 0069A4 80005DA4 AFB60030 */        sw $s6, 0x30($sp)
  /* 0069A8 80005DA8 0080B025 */        or $s6, $a0, $zero
  /* 0069AC 80005DAC AFBF003C */        sw $ra, 0x3c($sp)
  /* 0069B0 80005DB0 3C018004 */       lui $at, %hi(D_800454BC)
  /* 0069B4 80005DB4 3C048004 */       lui $a0, %hi(D_80045500)
  /* 0069B8 80005DB8 AFBE0038 */        sw $fp, 0x38($sp)
  /* 0069BC 80005DBC AFB70034 */        sw $s7, 0x34($sp)
  /* 0069C0 80005DC0 AFB5002C */        sw $s5, 0x2c($sp)
  /* 0069C4 80005DC4 AFB40028 */        sw $s4, 0x28($sp)
  /* 0069C8 80005DC8 AFB30024 */        sw $s3, 0x24($sp)
  /* 0069CC 80005DCC AFB20020 */        sw $s2, 0x20($sp)
  /* 0069D0 80005DD0 AFB1001C */        sw $s1, 0x1c($sp)
  /* 0069D4 80005DD4 AFB00018 */        sw $s0, 0x18($sp)
  /* 0069D8 80005DD8 AC2054BC */        sw $zero, %lo(D_800454BC)($at)
  /* 0069DC 80005DDC 24845500 */     addiu $a0, $a0, %lo(D_80045500)
  /* 0069E0 80005DE0 00002825 */        or $a1, $zero, $zero
  /* 0069E4 80005DE4 0C00C084 */       jal osRecvMesg
  /* 0069E8 80005DE8 00003025 */        or $a2, $zero, $zero
  /* 0069EC 80005DEC 2413FFFF */     addiu $s3, $zero, -1
  /* 0069F0 80005DF0 10530007 */       beq $v0, $s3, .L80005E10
  .L80005DF4:
  /* 0069F4 80005DF4 3C048004 */       lui $a0, %hi(D_80045500)
  /* 0069F8 80005DF8 24845500 */     addiu $a0, $a0, %lo(D_80045500)
  /* 0069FC 80005DFC 00002825 */        or $a1, $zero, $zero
  /* 006A00 80005E00 0C00C084 */       jal osRecvMesg
  /* 006A04 80005E04 00003025 */        or $a2, $zero, $zero
  /* 006A08 80005E08 1453FFFA */       bne $v0, $s3, .L80005DF4
  /* 006A0C 80005E0C 00000000 */       nop 
  .L80005E10:
  /* 006A10 80005E10 3C048004 */       lui $a0, %hi(D_80045520)
  /* 006A14 80005E14 24845520 */     addiu $a0, $a0, %lo(D_80045520)
  /* 006A18 80005E18 00002825 */        or $a1, $zero, $zero
  /* 006A1C 80005E1C 0C00C084 */       jal osRecvMesg
  /* 006A20 80005E20 00003025 */        or $a2, $zero, $zero
  /* 006A24 80005E24 10530007 */       beq $v0, $s3, .L80005E44
  .L80005E28:
  /* 006A28 80005E28 3C048004 */       lui $a0, %hi(D_80045520)
  /* 006A2C 80005E2C 24845520 */     addiu $a0, $a0, %lo(D_80045520)
  /* 006A30 80005E30 00002825 */        or $a1, $zero, $zero
  /* 006A34 80005E34 0C00C084 */       jal osRecvMesg
  /* 006A38 80005E38 00003025 */        or $a2, $zero, $zero
  /* 006A3C 80005E3C 1453FFFA */       bne $v0, $s3, .L80005E28
  /* 006A40 80005E40 00000000 */       nop 
  .L80005E44:
  /* 006A44 80005E44 3C118004 */       lui $s1, %hi(D_800454A0)
  /* 006A48 80005E48 263154A0 */     addiu $s1, $s1, %lo(D_800454A0)
  /* 006A4C 80005E4C 02202025 */        or $a0, $s1, $zero
  /* 006A50 80005E50 00002825 */        or $a1, $zero, $zero
  /* 006A54 80005E54 0C00C084 */       jal osRecvMesg
  /* 006A58 80005E58 00003025 */        or $a2, $zero, $zero
  /* 006A5C 80005E5C 10530006 */       beq $v0, $s3, .L80005E78
  /* 006A60 80005E60 02202025 */        or $a0, $s1, $zero
  .L80005E64:
  /* 006A64 80005E64 00002825 */        or $a1, $zero, $zero
  /* 006A68 80005E68 0C00C084 */       jal osRecvMesg
  /* 006A6C 80005E6C 00003025 */        or $a2, $zero, $zero
  /* 006A70 80005E70 5453FFFC */      bnel $v0, $s3, .L80005E64
  /* 006A74 80005E74 02202025 */        or $a0, $s1, $zero
  .L80005E78:
  /* 006A78 80005E78 3C018004 */       lui $at, %hi(D_800465D0)
  /* 006A7C 80005E7C AC2065D0 */        sw $zero, %lo(D_800465D0)($at)
  /* 006A80 80005E80 3C018004 */       lui $at, %hi(D_800465D4)
  /* 006A84 80005E84 AC3365D4 */        sw $s3, %lo(D_800465D4)($at)
  /* 006A88 80005E88 3C018004 */       lui $at, %hi(D_80046630)
  /* 006A8C 80005E8C 240E0001 */     addiu $t6, $zero, 1
  /* 006A90 80005E90 AC2E6630 */        sw $t6, %lo(D_80046630)($at)
  /* 006A94 80005E94 3C018004 */       lui $at, %hi(D_80044FA4)
  /* 006A98 80005E98 3C028004 */       lui $v0, %hi(D_80046638)
  /* 006A9C 80005E9C 3C038004 */       lui $v1, %hi(D_80046640)
  /* 006AA0 80005EA0 AC204FA4 */        sw $zero, %lo(D_80044FA4)($at)
  /* 006AA4 80005EA4 24636640 */     addiu $v1, $v1, %lo(D_80046640)
  /* 006AA8 80005EA8 24426638 */     addiu $v0, $v0, %lo(D_80046638)
  .L80005EAC:
  /* 006AAC 80005EAC 24420004 */     addiu $v0, $v0, 4
  /* 006AB0 80005EB0 1443FFFE */       bne $v0, $v1, .L80005EAC
  /* 006AB4 80005EB4 AC40FFFC */        sw $zero, -4($v0) # D_80046638 + -4
  /* 006AB8 80005EB8 96CF0000 */       lhu $t7, ($s6)
  /* 006ABC 80005EBC 3C1E8004 */       lui $fp, %hi(D_8003B6E8)
  /* 006AC0 80005EC0 27DEB6E8 */     addiu $fp, $fp, %lo(D_8003B6E8)
  /* 006AC4 80005EC4 31F80001 */      andi $t8, $t7, 1
  /* 006AC8 80005EC8 13000062 */      beqz $t8, .L80006054
  /* 006ACC 80005ECC 00008025 */        or $s0, $zero, $zero
  /* 006AD0 80005ED0 3C1E8004 */       lui $fp, %hi(D_8003B6E8)
  /* 006AD4 80005ED4 3C158004 */       lui $s5, %hi(D_8003B6E4)
  /* 006AD8 80005ED8 3C148004 */       lui $s4, %hi(D_8004660C)
  /* 006ADC 80005EDC 3C128004 */       lui $s2, %hi(D_800454B8)
  /* 006AE0 80005EE0 265254B8 */     addiu $s2, $s2, %lo(D_800454B8)
  /* 006AE4 80005EE4 2694660C */     addiu $s4, $s4, %lo(D_8004660C)
  /* 006AE8 80005EE8 26B5B6E4 */     addiu $s5, $s5, %lo(D_8003B6E4)
  /* 006AEC 80005EEC 27DEB6E8 */     addiu $fp, $fp, %lo(D_8003B6E8)
  /* 006AF0 80005EF0 00008025 */        or $s0, $zero, $zero
  /* 006AF4 80005EF4 24170B9B */     addiu $s7, $zero, 0xb9b
  .L80005EF8:
  /* 006AF8 80005EF8 0C001744 */       jal func_80005D10
  /* 006AFC 80005EFC 00000000 */       nop 
  /* 006B00 80005F00 0C000144 */       jal check_stack_probes
  /* 006B04 80005F04 00000000 */       nop 
  /* 006B08 80005F08 96590000 */       lhu $t9, ($s2) # D_800454B8 + 0
  /* 006B0C 80005F0C 1B200009 */      blez $t9, .L80005F34
  /* 006B10 80005F10 02202025 */        or $a0, $s1, $zero
  .L80005F14:
  /* 006B14 80005F14 00002825 */        or $a1, $zero, $zero
  /* 006B18 80005F18 0C00C084 */       jal osRecvMesg
  /* 006B1C 80005F1C 24060001 */     addiu $a2, $zero, 1
  /* 006B20 80005F20 96480000 */       lhu $t0, ($s2) # D_800454B8 + 0
  /* 006B24 80005F24 26100001 */     addiu $s0, $s0, 1
  /* 006B28 80005F28 0208082A */       slt $at, $s0, $t0
  /* 006B2C 80005F2C 5420FFF9 */      bnel $at, $zero, .L80005F14
  /* 006B30 80005F30 02202025 */        or $a0, $s1, $zero
  .L80005F34:
  /* 006B34 80005F34 02202025 */        or $a0, $s1, $zero
  /* 006B38 80005F38 00002825 */        or $a1, $zero, $zero
  /* 006B3C 80005F3C 0C00C084 */       jal osRecvMesg
  /* 006B40 80005F40 00003025 */        or $a2, $zero, $zero
  /* 006B44 80005F44 10530006 */       beq $v0, $s3, .L80005F60
  /* 006B48 80005F48 02202025 */        or $a0, $s1, $zero
  .L80005F4C:
  /* 006B4C 80005F4C 00002825 */        or $a1, $zero, $zero
  /* 006B50 80005F50 0C00C084 */       jal osRecvMesg
  /* 006B54 80005F54 00003025 */        or $a2, $zero, $zero
  /* 006B58 80005F58 5453FFFC */      bnel $v0, $s3, .L80005F4C
  /* 006B5C 80005F5C 02202025 */        or $a0, $s1, $zero
  .L80005F60:
  /* 006B60 80005F60 0C00CD24 */       jal osGetCount
  /* 006B64 80005F64 00000000 */       nop 
  /* 006B68 80005F68 AE820000 */        sw $v0, ($s4) # D_8004660C + 0
  /* 006B6C 80005F6C 8ED90008 */        lw $t9, 8($s6)
  /* 006B70 80005F70 02C02025 */        or $a0, $s6, $zero
  /* 006B74 80005F74 0320F809 */      jalr $t9
  /* 006B78 80005F78 00000000 */       nop 
  /* 006B7C 80005F7C 8EA90000 */        lw $t1, ($s5) # D_8003B6E4 + 0
  /* 006B80 80005F80 252A0001 */     addiu $t2, $t1, 1
  /* 006B84 80005F84 0C00CD24 */       jal osGetCount
  /* 006B88 80005F88 AEAA0000 */        sw $t2, ($s5) # D_8003B6E4 + 0
  /* 006B8C 80005F8C 8E8B0000 */        lw $t3, ($s4) # D_8004660C + 0
  /* 006B90 80005F90 3C018004 */       lui $at, %hi(D_80046610)
  /* 006B94 80005F94 004B6023 */      subu $t4, $v0, $t3
  /* 006B98 80005F98 0197001B */      divu $zero, $t4, $s7
  /* 006B9C 80005F9C 00006812 */      mflo $t5
  /* 006BA0 80005FA0 AC2D6610 */        sw $t5, %lo(D_80046610)($at)
  /* 006BA4 80005FA4 16E00002 */      bnez $s7, .L80005FB0
  /* 006BA8 80005FA8 00000000 */       nop 
  /* 006BAC 80005FAC 0007000D */     break 7
  .L80005FB0:
  /* 006BB0 80005FB0 0C001727 */       jal func_80005C9C
  /* 006BB4 80005FB4 00000000 */       nop 
  /* 006BB8 80005FB8 14400086 */      bnez $v0, .L800061D4
  /* 006BBC 80005FBC 3C0F8004 */       lui $t7, %hi(D_800454BA)
  /* 006BC0 80005FC0 8EAE0000 */        lw $t6, ($s5) # D_8003B6E4 + 0
  /* 006BC4 80005FC4 95EF54BA */       lhu $t7, %lo(D_800454BA)($t7)
  /* 006BC8 80005FC8 01CF001B */      divu $zero, $t6, $t7
  /* 006BCC 80005FCC 0000C010 */      mfhi $t8
  /* 006BD0 80005FD0 15E00002 */      bnez $t7, .L80005FDC
  /* 006BD4 80005FD4 00000000 */       nop 
  /* 006BD8 80005FD8 0007000D */     break 7
  .L80005FDC:
  /* 006BDC 80005FDC 1700001B */      bnez $t8, .L8000604C
  /* 006BE0 80005FE0 00000000 */       nop 
  /* 006BE4 80005FE4 0C0016B9 */       jal func_80005AE4
  /* 006BE8 80005FE8 00002025 */        or $a0, $zero, $zero
  /* 006BEC 80005FEC 0C00CD24 */       jal osGetCount
  /* 006BF0 80005FF0 00000000 */       nop 
  /* 006BF4 80005FF4 AE820000 */        sw $v0, ($s4) # D_8004660C + 0
  /* 006BF8 80005FF8 8ED90010 */        lw $t9, 0x10($s6)
  /* 006BFC 80005FFC 02C02025 */        or $a0, $s6, $zero
  /* 006C00 80006000 0320F809 */      jalr $t9
  /* 006C04 80006004 00000000 */       nop 
  /* 006C08 80006008 8FC80000 */        lw $t0, ($fp) # D_8003B6E8 + 0
  /* 006C0C 8000600C 25090001 */     addiu $t1, $t0, 1
  /* 006C10 80006010 0C00CD24 */       jal osGetCount
  /* 006C14 80006014 AFC90000 */        sw $t1, ($fp) # D_8003B6E8 + 0
  /* 006C18 80006018 8E8A0000 */        lw $t2, ($s4) # D_8004660C + 0
  /* 006C1C 8000601C 3C018004 */       lui $at, %hi(D_80046614)
  /* 006C20 80006020 004A5823 */      subu $t3, $v0, $t2
  /* 006C24 80006024 0177001B */      divu $zero, $t3, $s7
  /* 006C28 80006028 00006012 */      mflo $t4
  /* 006C2C 8000602C AC2C6614 */        sw $t4, %lo(D_80046614)($at)
  /* 006C30 80006030 16E00002 */      bnez $s7, .L8000603C
  /* 006C34 80006034 00000000 */       nop 
  /* 006C38 80006038 0007000D */     break 7
  .L8000603C:
  /* 006C3C 8000603C 0C001727 */       jal func_80005C9C
  /* 006C40 80006040 00000000 */       nop 
  /* 006C44 80006044 14400063 */      bnez $v0, .L800061D4
  /* 006C48 80006048 00000000 */       nop 
  .L8000604C:
  /* 006C4C 8000604C 1000FFAA */         b .L80005EF8
  /* 006C50 80006050 00008025 */        or $s0, $zero, $zero
  .L80006054:
  /* 006C54 80006054 3C158004 */       lui $s5, %hi(D_8003B6E4)
  /* 006C58 80006058 3C148004 */       lui $s4, %hi(D_8004660C)
  /* 006C5C 8000605C 3C128004 */       lui $s2, %hi(D_800454B8)
  /* 006C60 80006060 265254B8 */     addiu $s2, $s2, %lo(D_800454B8)
  /* 006C64 80006064 2694660C */     addiu $s4, $s4, %lo(D_8004660C)
  /* 006C68 80006068 26B5B6E4 */     addiu $s5, $s5, %lo(D_8003B6E4)
  /* 006C6C 8000606C 24170B9B */     addiu $s7, $zero, 0xb9b
  .L80006070:
  /* 006C70 80006070 0C001744 */       jal func_80005D10
  /* 006C74 80006074 00000000 */       nop 
  /* 006C78 80006078 0C000144 */       jal check_stack_probes
  /* 006C7C 8000607C 00000000 */       nop 
  /* 006C80 80006080 964D0000 */       lhu $t5, ($s2) # D_800454B8 + 0
  /* 006C84 80006084 19A00009 */      blez $t5, .L800060AC
  /* 006C88 80006088 02202025 */        or $a0, $s1, $zero
  .L8000608C:
  /* 006C8C 8000608C 00002825 */        or $a1, $zero, $zero
  /* 006C90 80006090 0C00C084 */       jal osRecvMesg
  /* 006C94 80006094 24060001 */     addiu $a2, $zero, 1
  /* 006C98 80006098 964E0000 */       lhu $t6, ($s2) # D_800454B8 + 0
  /* 006C9C 8000609C 26100001 */     addiu $s0, $s0, 1
  /* 006CA0 800060A0 020E082A */       slt $at, $s0, $t6
  /* 006CA4 800060A4 5420FFF9 */      bnel $at, $zero, .L8000608C
  /* 006CA8 800060A8 02202025 */        or $a0, $s1, $zero
  .L800060AC:
  /* 006CAC 800060AC 02202025 */        or $a0, $s1, $zero
  /* 006CB0 800060B0 00002825 */        or $a1, $zero, $zero
  /* 006CB4 800060B4 0C00C084 */       jal osRecvMesg
  /* 006CB8 800060B8 00003025 */        or $a2, $zero, $zero
  /* 006CBC 800060BC 10530006 */       beq $v0, $s3, .L800060D8
  /* 006CC0 800060C0 02202025 */        or $a0, $s1, $zero
  .L800060C4:
  /* 006CC4 800060C4 00002825 */        or $a1, $zero, $zero
  /* 006CC8 800060C8 0C00C084 */       jal osRecvMesg
  /* 006CCC 800060CC 00003025 */        or $a2, $zero, $zero
  /* 006CD0 800060D0 5453FFFC */      bnel $v0, $s3, .L800060C4
  /* 006CD4 800060D4 02202025 */        or $a0, $s1, $zero
  .L800060D8:
  /* 006CD8 800060D8 0C00CD24 */       jal osGetCount
  /* 006CDC 800060DC 00000000 */       nop 
  /* 006CE0 800060E0 AE820000 */        sw $v0, ($s4) # D_8004660C + 0
  /* 006CE4 800060E4 8ED90008 */        lw $t9, 8($s6)
  /* 006CE8 800060E8 02C02025 */        or $a0, $s6, $zero
  /* 006CEC 800060EC 0320F809 */      jalr $t9
  /* 006CF0 800060F0 00000000 */       nop 
  /* 006CF4 800060F4 8EAF0000 */        lw $t7, ($s5) # D_8003B6E4 + 0
  /* 006CF8 800060F8 25F80001 */     addiu $t8, $t7, 1
  /* 006CFC 800060FC 0C00CD24 */       jal osGetCount
  /* 006D00 80006100 AEB80000 */        sw $t8, ($s5) # D_8003B6E4 + 0
  /* 006D04 80006104 8E880000 */        lw $t0, ($s4) # D_8004660C + 0
  /* 006D08 80006108 3C018004 */       lui $at, %hi(D_80046610)
  /* 006D0C 8000610C 00484823 */      subu $t1, $v0, $t0
  /* 006D10 80006110 0137001B */      divu $zero, $t1, $s7
  /* 006D14 80006114 00005012 */      mflo $t2
  /* 006D18 80006118 AC2A6610 */        sw $t2, %lo(D_80046610)($at)
  /* 006D1C 8000611C 16E00002 */      bnez $s7, .L80006128
  /* 006D20 80006120 00000000 */       nop 
  /* 006D24 80006124 0007000D */     break 7
  .L80006128:
  /* 006D28 80006128 0C001727 */       jal func_80005C9C
  /* 006D2C 8000612C 00000000 */       nop 
  /* 006D30 80006130 14400028 */      bnez $v0, .L800061D4
  /* 006D34 80006134 3C0C8004 */       lui $t4, %hi(D_800454BA)
  /* 006D38 80006138 8EAB0000 */        lw $t3, ($s5) # D_8003B6E4 + 0
  /* 006D3C 8000613C 958C54BA */       lhu $t4, %lo(D_800454BA)($t4)
  /* 006D40 80006140 016C001B */      divu $zero, $t3, $t4
  /* 006D44 80006144 00006810 */      mfhi $t5
  /* 006D48 80006148 15800002 */      bnez $t4, .L80006154
  /* 006D4C 8000614C 00000000 */       nop 
  /* 006D50 80006150 0007000D */     break 7
  .L80006154:
  /* 006D54 80006154 15A0001D */      bnez $t5, .L800061CC
  /* 006D58 80006158 00000000 */       nop 
  /* 006D5C 8000615C 0C0016B9 */       jal func_80005AE4
  /* 006D60 80006160 24040001 */     addiu $a0, $zero, 1
  /* 006D64 80006164 10400019 */      beqz $v0, .L800061CC
  /* 006D68 80006168 00000000 */       nop 
  /* 006D6C 8000616C 0C00CD24 */       jal osGetCount
  /* 006D70 80006170 00000000 */       nop 
  /* 006D74 80006174 AE820000 */        sw $v0, ($s4) # D_8004660C + 0
  /* 006D78 80006178 8ED90010 */        lw $t9, 0x10($s6)
  /* 006D7C 8000617C 02C02025 */        or $a0, $s6, $zero
  /* 006D80 80006180 0320F809 */      jalr $t9
  /* 006D84 80006184 00000000 */       nop 
  /* 006D88 80006188 8FCE0000 */        lw $t6, ($fp) # D_8003B6E8 + 0
  /* 006D8C 8000618C 25CF0001 */     addiu $t7, $t6, 1
  /* 006D90 80006190 0C00CD24 */       jal osGetCount
  /* 006D94 80006194 AFCF0000 */        sw $t7, ($fp) # D_8003B6E8 + 0
  /* 006D98 80006198 8E980000 */        lw $t8, ($s4) # D_8004660C + 0
  /* 006D9C 8000619C 3C018004 */       lui $at, %hi(D_80046614)
  /* 006DA0 800061A0 00584023 */      subu $t0, $v0, $t8
  /* 006DA4 800061A4 0117001B */      divu $zero, $t0, $s7
  /* 006DA8 800061A8 00004812 */      mflo $t1
  /* 006DAC 800061AC AC296614 */        sw $t1, %lo(D_80046614)($at)
  /* 006DB0 800061B0 16E00002 */      bnez $s7, .L800061BC
  /* 006DB4 800061B4 00000000 */       nop 
  /* 006DB8 800061B8 0007000D */     break 7
  .L800061BC:
  /* 006DBC 800061BC 0C001727 */       jal func_80005C9C
  /* 006DC0 800061C0 00000000 */       nop 
  /* 006DC4 800061C4 14400003 */      bnez $v0, .L800061D4
  /* 006DC8 800061C8 00000000 */       nop 
  .L800061CC:
  /* 006DCC 800061CC 1000FFA8 */         b .L80006070
  /* 006DD0 800061D0 00008025 */        or $s0, $zero, $zero
  .L800061D4:
  /* 006DD4 800061D4 0C0016FF */       jal func_80005BFC
  /* 006DD8 800061D8 00000000 */       nop 
  /* 006DDC 800061DC 3C048004 */       lui $a0, %hi(D_80045500)
  /* 006DE0 800061E0 24845500 */     addiu $a0, $a0, %lo(D_80045500)
  /* 006DE4 800061E4 00002825 */        or $a1, $zero, $zero
  /* 006DE8 800061E8 0C00C084 */       jal osRecvMesg
  /* 006DEC 800061EC 00003025 */        or $a2, $zero, $zero
  /* 006DF0 800061F0 10530007 */       beq $v0, $s3, .L80006210
  .L800061F4:
  /* 006DF4 800061F4 3C048004 */       lui $a0, %hi(D_80045500)
  /* 006DF8 800061F8 24845500 */     addiu $a0, $a0, %lo(D_80045500)
  /* 006DFC 800061FC 00002825 */        or $a1, $zero, $zero
  /* 006E00 80006200 0C00C084 */       jal osRecvMesg
  /* 006E04 80006204 00003025 */        or $a2, $zero, $zero
  /* 006E08 80006208 1453FFFA */       bne $v0, $s3, .L800061F4
  /* 006E0C 8000620C 00000000 */       nop 
  .L80006210:
  /* 006E10 80006210 3C048004 */       lui $a0, %hi(D_80045520)
  /* 006E14 80006214 24845520 */     addiu $a0, $a0, %lo(D_80045520)
  /* 006E18 80006218 00002825 */        or $a1, $zero, $zero
  /* 006E1C 8000621C 0C00C084 */       jal osRecvMesg
  /* 006E20 80006220 00003025 */        or $a2, $zero, $zero
  /* 006E24 80006224 10530007 */       beq $v0, $s3, .L80006244
  .L80006228:
  /* 006E28 80006228 3C048004 */       lui $a0, %hi(D_80045520)
  /* 006E2C 8000622C 24845520 */     addiu $a0, $a0, %lo(D_80045520)
  /* 006E30 80006230 00002825 */        or $a1, $zero, $zero
  /* 006E34 80006234 0C00C084 */       jal osRecvMesg
  /* 006E38 80006238 00003025 */        or $a2, $zero, $zero
  /* 006E3C 8000623C 1453FFFA */       bne $v0, $s3, .L80006228
  /* 006E40 80006240 00000000 */       nop 
  .L80006244:
  /* 006E44 80006244 02202025 */        or $a0, $s1, $zero
  /* 006E48 80006248 00002825 */        or $a1, $zero, $zero
  /* 006E4C 8000624C 0C00C084 */       jal osRecvMesg
  /* 006E50 80006250 00003025 */        or $a2, $zero, $zero
  /* 006E54 80006254 10530006 */       beq $v0, $s3, .L80006270
  /* 006E58 80006258 02202025 */        or $a0, $s1, $zero
  .L8000625C:
  /* 006E5C 8000625C 00002825 */        or $a1, $zero, $zero
  /* 006E60 80006260 0C00C084 */       jal osRecvMesg
  /* 006E64 80006264 00003025 */        or $a2, $zero, $zero
  /* 006E68 80006268 5453FFFC */      bnel $v0, $s3, .L8000625C
  /* 006E6C 8000626C 02202025 */        or $a0, $s1, $zero
  .L80006270:
  /* 006E70 80006270 0C001C5A */       jal func_80007168
  /* 006E74 80006274 00002025 */        or $a0, $zero, $zero
  /* 006E78 80006278 8FBF003C */        lw $ra, 0x3c($sp)
  /* 006E7C 8000627C 240A0002 */     addiu $t2, $zero, 2
  /* 006E80 80006280 3C018004 */       lui $at, %hi(D_800454BC)
  /* 006E84 80006284 8FB00018 */        lw $s0, 0x18($sp)
  /* 006E88 80006288 8FB1001C */        lw $s1, 0x1c($sp)
  /* 006E8C 8000628C 8FB20020 */        lw $s2, 0x20($sp)
  /* 006E90 80006290 8FB30024 */        lw $s3, 0x24($sp)
  /* 006E94 80006294 8FB40028 */        lw $s4, 0x28($sp)
  /* 006E98 80006298 8FB5002C */        lw $s5, 0x2c($sp)
  /* 006E9C 8000629C 8FB60030 */        lw $s6, 0x30($sp)
  /* 006EA0 800062A0 8FB70034 */        lw $s7, 0x34($sp)
  /* 006EA4 800062A4 8FBE0038 */        lw $fp, 0x38($sp)
  /* 006EA8 800062A8 AC2A54BC */        sw $t2, %lo(D_800454BC)($at)
  /* 006EAC 800062AC 03E00008 */        jr $ra
  /* 006EB0 800062B0 27BD0040 */     addiu $sp, $sp, 0x40
