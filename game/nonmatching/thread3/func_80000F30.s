glabel func_80000F30
  /* 001B30 80000F30 27BDFFC8 */     addiu $sp, $sp, -0x38
  /* 001B34 80000F34 2C810141 */     sltiu $at, $a0, 0x141
  /* 001B38 80000F38 AFA40038 */        sw $a0, 0x38($sp)
  /* 001B3C 80000F3C AFA5003C */        sw $a1, 0x3c($sp)
  /* 001B40 80000F40 10200004 */      beqz $at, .L80000F54
  /* 001B44 80000F44 AFA70044 */        sw $a3, 0x44($sp)
  /* 001B48 80000F48 2CA100F1 */     sltiu $at, $a1, 0xf1
  /* 001B4C 80000F4C 14200003 */      bnez $at, .L80000F5C
  /* 001B50 80000F50 240A0001 */     addiu $t2, $zero, 1
  .L80000F54:
  /* 001B54 80000F54 10000001 */         b .L80000F5C
  /* 001B58 80000F58 00005025 */        or $t2, $zero, $zero
  
  .L80000F5C:

  /* 001B5C 80000F5C 30D80004 */      andi $t8, $a2, 4
  /* 001B60 80000F60 1300000A */      beqz $t8, .L80000F8C
  /* 001B64 80000F64 3C028004 */       lui $v0, %hi(D_80044F38)
  /* 001B68 80000F68 3C048004 */       lui $a0, %hi(D_80044FBC)
  /* 001B6C 80000F6C 24844FBC */     addiu $a0, $a0, %lo(D_80044FBC)
  /* 001B70 80000F70 24424F38 */     addiu $v0, $v0, %lo(D_80044F38)
  /* 001B74 80000F74 908E0000 */       lbu $t6, ($a0) # D_80044FBC + 0
  /* 001B78 80000F78 8C580004 */        lw $t8, 4($v0) # D_80044F38 + 4
  /* 001B7C 80000F7C 35CF0040 */       ori $t7, $t6, 0x40
  /* 001B80 80000F80 37190040 */       ori $t9, $t8, 0x40
  /* 001B84 80000F84 A08F0000 */        sb $t7, ($a0) # D_80044FBC + 0
  /* 001B88 80000F88 AC590004 */        sw $t9, 4($v0) # D_80044F38 + 4
  .L80000F8C:
  /* 001B8C 80000F8C 3C028004 */       lui $v0, %hi(D_80044F38)
  /* 001B90 80000F90 3C048004 */       lui $a0, %hi(D_80044FBC)
  /* 001B94 80000F94 30CE0008 */      andi $t6, $a2, 8
  /* 001B98 80000F98 24844FBC */     addiu $a0, $a0, %lo(D_80044FBC)
  /* 001B9C 80000F9C 11C00008 */      beqz $t6, .L80000FC0
  /* 001BA0 80000FA0 24424F38 */     addiu $v0, $v0, %lo(D_80044F38)
  /* 001BA4 80000FA4 908F0000 */       lbu $t7, ($a0) # D_80044FBC + 0
  /* 001BA8 80000FA8 8C590004 */        lw $t9, 4($v0) # D_80044F38 + 4
  /* 001BAC 80000FAC 2401FFBF */     addiu $at, $zero, -0x41
  /* 001BB0 80000FB0 31F8FFBF */      andi $t8, $t7, 0xffbf
  /* 001BB4 80000FB4 03217024 */       and $t6, $t9, $at
  /* 001BB8 80000FB8 A0980000 */        sb $t8, ($a0) # D_80044FBC + 0
  /* 001BBC 80000FBC AC4E0004 */        sw $t6, 4($v0) # D_80044F38 + 4
  .L80000FC0:
  /* 001BC0 80000FC0 30CF0010 */      andi $t7, $a2, 0x10
  /* 001BC4 80000FC4 51E0000B */      beql $t7, $zero, .L80000FF4
  /* 001BC8 80000FC8 30CE0020 */      andi $t6, $a2, 0x20
  /* 001BCC 80000FCC 90980000 */       lbu $t8, ($a0) # D_80044FBC + 0
  /* 001BD0 80000FD0 8C4E0004 */        lw $t6, 4($v0) # D_80044F38 + 4
  /* 001BD4 80000FD4 2401FFFC */     addiu $at, $zero, -4
  /* 001BD8 80000FD8 3319FFDF */      andi $t9, $t8, 0xffdf
  /* 001BDC 80000FDC 01C17824 */       and $t7, $t6, $at
  /* 001BE0 80000FE0 A0990000 */        sb $t9, ($a0) # D_80044FBC + 0
  /* 001BE4 80000FE4 AC4F0004 */        sw $t7, 4($v0) # D_80044F38 + 4
  /* 001BE8 80000FE8 35F90002 */       ori $t9, $t7, 2
  /* 001BEC 80000FEC AC590004 */        sw $t9, 4($v0) # D_80044F38 + 4
  /* 001BF0 80000FF0 30CE0020 */      andi $t6, $a2, 0x20
  .L80000FF4:
  /* 001BF4 80000FF4 51C0000B */      beql $t6, $zero, .L80001024
  /* 001BF8 80000FF8 30CE0040 */      andi $t6, $a2, 0x40
  /* 001BFC 80000FFC 90980000 */       lbu $t8, ($a0) # D_80044FBC + 0
  /* 001C00 80001000 8C4E0004 */        lw $t6, 4($v0) # D_80044F38 + 4
  /* 001C04 80001004 2401FFFC */     addiu $at, $zero, -4
  /* 001C08 80001008 37190020 */       ori $t9, $t8, 0x20
  /* 001C0C 8000100C 01C17824 */       and $t7, $t6, $at
  /* 001C10 80001010 A0990000 */        sb $t9, ($a0) # D_80044FBC + 0
  /* 001C14 80001014 AC4F0004 */        sw $t7, 4($v0) # D_80044F38 + 4
  /* 001C18 80001018 35F90003 */       ori $t9, $t7, 3
  /* 001C1C 8000101C AC590004 */        sw $t9, 4($v0) # D_80044F38 + 4
  /* 001C20 80001020 30CE0040 */      andi $t6, $a2, 0x40
  .L80001024:
  /* 001C24 80001024 51C00008 */      beql $t6, $zero, .L80001048
  /* 001C28 80001028 30D80080 */      andi $t8, $a2, 0x80
  /* 001C2C 8000102C 90980000 */       lbu $t8, ($a0) # D_80044FBC + 0
  /* 001C30 80001030 8C4E0004 */        lw $t6, 4($v0) # D_80044F38 + 4
  /* 001C34 80001034 37190010 */       ori $t9, $t8, 0x10
  /* 001C38 80001038 35CF0008 */       ori $t7, $t6, 8
  /* 001C3C 8000103C A0990000 */        sb $t9, ($a0) # D_80044FBC + 0
  /* 001C40 80001040 AC4F0004 */        sw $t7, 4($v0) # D_80044F38 + 4
  /* 001C44 80001044 30D80080 */      andi $t8, $a2, 0x80
  .L80001048:
  /* 001C48 80001048 53000009 */      beql $t8, $zero, .L80001070
  /* 001C4C 8000104C 30D91000 */      andi $t9, $a2, 0x1000
  /* 001C50 80001050 90990000 */       lbu $t9, ($a0) # D_80044FBC + 0
  /* 001C54 80001054 8C4F0004 */        lw $t7, 4($v0) # D_80044F38 + 4
  /* 001C58 80001058 2401FFF7 */     addiu $at, $zero, -9
  /* 001C5C 8000105C 332EFFEF */      andi $t6, $t9, 0xffef
  /* 001C60 80001060 01E1C024 */       and $t8, $t7, $at
  /* 001C64 80001064 A08E0000 */        sb $t6, ($a0) # D_80044FBC + 0
  /* 001C68 80001068 AC580004 */        sw $t8, 4($v0) # D_80044F38 + 4
  /* 001C6C 8000106C 30D91000 */      andi $t9, $a2, 0x1000
  .L80001070:
  /* 001C70 80001070 53200008 */      beql $t9, $zero, .L80001094
  /* 001C74 80001074 30CF2000 */      andi $t7, $a2, 0x2000
  /* 001C78 80001078 908F0000 */       lbu $t7, ($a0) # D_80044FBC + 0
  /* 001C7C 8000107C 8C590004 */        lw $t9, 4($v0) # D_80044F38 + 4
  /* 001C80 80001080 35F80002 */       ori $t8, $t7, 2
  /* 001C84 80001084 372E0004 */       ori $t6, $t9, 4
  /* 001C88 80001088 A0980000 */        sb $t8, ($a0) # D_80044FBC + 0
  /* 001C8C 8000108C AC4E0004 */        sw $t6, 4($v0) # D_80044F38 + 4
  /* 001C90 80001090 30CF2000 */      andi $t7, $a2, 0x2000
  .L80001094:
  /* 001C94 80001094 51E00009 */      beql $t7, $zero, .L800010BC
  /* 001C98 80001098 30D84000 */      andi $t8, $a2, 0x4000
  /* 001C9C 8000109C 90980000 */       lbu $t8, ($a0) # D_80044FBC + 0
  /* 001CA0 800010A0 8C4E0004 */        lw $t6, 4($v0) # D_80044F38 + 4
  /* 001CA4 800010A4 2401FFFB */     addiu $at, $zero, -5
  /* 001CA8 800010A8 3319FFFD */      andi $t9, $t8, 0xfffd
  /* 001CAC 800010AC 01C17824 */       and $t7, $t6, $at
  /* 001CB0 800010B0 A0990000 */        sb $t9, ($a0) # D_80044FBC + 0
  /* 001CB4 800010B4 AC4F0004 */        sw $t7, 4($v0) # D_80044F38 + 4
  /* 001CB8 800010B8 30D84000 */      andi $t8, $a2, 0x4000
  .L800010BC:
  /* 001CBC 800010BC 53000009 */      beql $t8, $zero, .L800010E4
  /* 001CC0 800010C0 30CE8000 */      andi $t6, $a2, 0x8000
  /* 001CC4 800010C4 908E0000 */       lbu $t6, ($a0) # D_80044FBC + 0
  /* 001CC8 800010C8 8C580004 */        lw $t8, 4($v0) # D_80044F38 + 4
  /* 001CCC 800010CC 3C010001 */       lui $at, 1
  /* 001CD0 800010D0 35CF0001 */       ori $t7, $t6, 1
  /* 001CD4 800010D4 0301C825 */        or $t9, $t8, $at
  /* 001CD8 800010D8 A08F0000 */        sb $t7, ($a0) # D_80044FBC + 0
  /* 001CDC 800010DC AC590004 */        sw $t9, 4($v0) # D_80044F38 + 4
  /* 001CE0 800010E0 30CE8000 */      andi $t6, $a2, 0x8000
  .L800010E4:
  /* 001CE4 800010E4 51C0000A */      beql $t6, $zero, .L80001110
  /* 001CE8 800010E8 00067BC0 */       sll $t7, $a2, 0xf
  /* 001CEC 800010EC 908F0000 */       lbu $t7, ($a0) # D_80044FBC + 0
  /* 001CF0 800010F0 8C590004 */        lw $t9, 4($v0) # D_80044F38 + 4
  /* 001CF4 800010F4 3C01FFFE */       lui $at, (0xFFFEFFFF >> 16) # 4294901759
  /* 001CF8 800010F8 3421FFFF */       ori $at, $at, (0xFFFEFFFF & 0xFFFF) # 4294901759
  /* 001CFC 800010FC 31F8FFFE */      andi $t8, $t7, 0xfffe
  /* 001D00 80001100 03217024 */       and $t6, $t9, $at
  /* 001D04 80001104 A0980000 */        sb $t8, ($a0) # D_80044FBC + 0
  /* 001D08 80001108 AC4E0004 */        sw $t6, 4($v0) # D_80044F38 + 4
  /* 001D0C 8000110C 00067BC0 */       sll $t7, $a2, 0xf
  .L80001110:
  /* 001D10 80001110 05E30008 */     bgezl $t7, .L80001134
  /* 001D14 80001114 0006CB80 */       sll $t9, $a2, 0xe
  /* 001D18 80001118 90990001 */       lbu $t9, 1($a0) # D_80044FBC + 1
  /* 001D1C 8000111C 8C4F0004 */        lw $t7, 4($v0) # D_80044F38 + 4
  /* 001D20 80001120 372E0080 */       ori $t6, $t9, 0x80
  /* 001D24 80001124 35F80010 */       ori $t8, $t7, 0x10
  /* 001D28 80001128 A08E0001 */        sb $t6, 1($a0) # D_80044FBC + 1
  /* 001D2C 8000112C AC580004 */        sw $t8, 4($v0) # D_80044F38 + 4
  /* 001D30 80001130 0006CB80 */       sll $t9, $a2, 0xe
  .L80001134:
  /* 001D34 80001134 07230009 */     bgezl $t9, .L8000115C
  /* 001D38 80001138 30CE0100 */      andi $t6, $a2, 0x100
  /* 001D3C 8000113C 908E0001 */       lbu $t6, 1($a0) # D_80044FBC + 1
  /* 001D40 80001140 8C580004 */        lw $t8, 4($v0) # D_80044F38 + 4
  /* 001D44 80001144 2401FFEF */     addiu $at, $zero, -0x11
  /* 001D48 80001148 31CFFF7F */      andi $t7, $t6, 0xff7f
  /* 001D4C 8000114C 0301C824 */       and $t9, $t8, $at
  /* 001D50 80001150 A08F0001 */        sb $t7, 1($a0) # D_80044FBC + 1
  /* 001D54 80001154 AC590004 */        sw $t9, 4($v0) # D_80044F38 + 4
  /* 001D58 80001158 30CE0100 */      andi $t6, $a2, 0x100
  .L8000115C:
  /* 001D5C 8000115C 51C00005 */      beql $t6, $zero, .L80001174
  /* 001D60 80001160 30CE0200 */      andi $t6, $a2, 0x200
  /* 001D64 80001164 90980000 */       lbu $t8, ($a0) # D_80044FBC + 0
  /* 001D68 80001168 37190008 */       ori $t9, $t8, 8
  /* 001D6C 8000116C A0990000 */        sb $t9, ($a0) # D_80044FBC + 0
  /* 001D70 80001170 30CE0200 */      andi $t6, $a2, 0x200
  .L80001174:
  /* 001D74 80001174 11C00004 */      beqz $t6, .L80001188
  /* 001D78 80001178 30D90400 */      andi $t9, $a2, 0x400
  /* 001D7C 8000117C 908F0000 */       lbu $t7, ($a0) # D_80044FBC + 0
  /* 001D80 80001180 31F8FFF7 */      andi $t8, $t7, 0xfff7
  /* 001D84 80001184 A0980000 */        sb $t8, ($a0) # D_80044FBC + 0
  .L80001188:
  /* 001D88 80001188 53200005 */      beql $t9, $zero, .L800011A0
  /* 001D8C 8000118C 30D90800 */      andi $t9, $a2, 0x800
  /* 001D90 80001190 908E0000 */       lbu $t6, ($a0) # D_80044FBC + 0
  /* 001D94 80001194 35D80004 */       ori $t8, $t6, 4
  /* 001D98 80001198 A0980000 */        sb $t8, ($a0) # D_80044FBC + 0
  /* 001D9C 8000119C 30D90800 */      andi $t9, $a2, 0x800
  .L800011A0:
  /* 001DA0 800011A0 13200004 */      beqz $t9, .L800011B4
  /* 001DA4 800011A4 30D80001 */      andi $t8, $a2, 1
  /* 001DA8 800011A8 908E0000 */       lbu $t6, ($a0) # D_80044FBC + 0
  /* 001DAC 800011AC 31CFFFFB */      andi $t7, $t6, 0xfffb
  /* 001DB0 800011B0 A08F0000 */        sb $t7, ($a0) # D_80044FBC + 0
  .L800011B4:
  /* 001DB4 800011B4 53000006 */      beql $t8, $zero, .L800011D0
  /* 001DB8 800011B8 30D80002 */      andi $t8, $a2, 2
  /* 001DBC 800011BC 90990000 */       lbu $t9, ($a0) # D_80044FBC + 0
  /* 001DC0 800011C0 332EFF7F */      andi $t6, $t9, 0xff7f
  /* 001DC4 800011C4 35CF0080 */       ori $t7, $t6, 0x80
  /* 001DC8 800011C8 A08F0000 */        sb $t7, ($a0) # D_80044FBC + 0
  /* 001DCC 800011CC 30D80002 */      andi $t8, $a2, 2
  .L800011D0:
  /* 001DD0 800011D0 53000005 */      beql $t8, $zero, .L800011E8
  /* 001DD4 800011D4 8C4F0004 */        lw $t7, 4($v0) # D_80044F38 + 4
  /* 001DD8 800011D8 90990000 */       lbu $t9, ($a0) # D_80044FBC + 0
  /* 001DDC 800011DC 332EFF7F */      andi $t6, $t9, 0xff7f
  /* 001DE0 800011E0 A08E0000 */        sb $t6, ($a0) # D_80044FBC + 0
  /* 001DE4 800011E4 8C4F0004 */        lw $t7, 4($v0) # D_80044F38 + 4
  .L800011E8:
  /* 001DE8 800011E8 8C830000 */        lw $v1, ($a0) # D_80044FBC + 0
  /* 001DEC 800011EC 2401FCFF */     addiu $at, $zero, -0x301
  /* 001DF0 800011F0 01E1C024 */       and $t8, $t7, $at
  /* 001DF4 800011F4 0003CFC2 */       srl $t9, $v1, 0x1f
  /* 001DF8 800011F8 1320000F */      beqz $t9, .L80001238
  /* 001DFC 800011FC AC580004 */        sw $t8, 4($v0) # D_80044F38 + 4
  /* 001E00 80001200 908E0000 */       lbu $t6, ($a0) # D_80044FBC + 0
  /* 001E04 80001204 00034940 */       sll $t1, $v1, 5
  /* 001E08 80001208 00094FC2 */       srl $t1, $t1, 0x1f
  /* 001E0C 8000120C 31CF0001 */      andi $t7, $t6, 1
  /* 001E10 80001210 11E00003 */      beqz $t7, .L80001220
  /* 001E14 80001214 24040100 */     addiu $a0, $zero, 0x100
  /* 001E18 80001218 10000001 */         b .L80001220
  /* 001E1C 8000121C 00002025 */        or $a0, $zero, $zero
  .L80001220:
  /* 001E20 80001220 8C580004 */        lw $t8, 4($v0) # D_80044F38 + 4
  /* 001E24 80001224 00034080 */       sll $t0, $v1, 2
  /* 001E28 80001228 000847C2 */       srl $t0, $t0, 0x1f
  /* 001E2C 8000122C 0304C825 */        or $t9, $t8, $a0
  /* 001E30 80001230 10000012 */         b .L8000127C
  /* 001E34 80001234 AC590004 */        sw $t9, 4($v0) # D_80044F38 + 4
  .L80001238:
  /* 001E38 80001238 00034940 */       sll $t1, $v1, 5
  /* 001E3C 8000123C 00094FC2 */       srl $t1, $t1, 0x1f
  /* 001E40 80001240 15200009 */      bnez $t1, .L80001268
  /* 001E44 80001244 00034080 */       sll $t0, $v1, 2
  /* 001E48 80001248 000847C2 */       srl $t0, $t0, 0x1f
  /* 001E4C 8000124C 24010001 */     addiu $at, $zero, 1
  /* 001E50 80001250 55010006 */      bnel $t0, $at, .L8000126C
  /* 001E54 80001254 8C580004 */        lw $t8, 4($v0) # D_80044F38 + 4
  /* 001E58 80001258 8C4E0004 */        lw $t6, 4($v0) # D_80044F38 + 4
  /* 001E5C 8000125C 35CF0300 */       ori $t7, $t6, 0x300
  /* 001E60 80001260 10000006 */         b .L8000127C
  /* 001E64 80001264 AC4F0004 */        sw $t7, 4($v0) # D_80044F38 + 4
  .L80001268:
  /* 001E68 80001268 8C580004 */        lw $t8, 4($v0) # D_80044F38 + 4
  .L8000126C:
  /* 001E6C 8000126C 00034080 */       sll $t0, $v1, 2
  /* 001E70 80001270 000847C2 */       srl $t0, $t0, 0x1f
  /* 001E74 80001274 37190200 */       ori $t9, $t8, 0x200
  /* 001E78 80001278 AC590004 */        sw $t9, 4($v0) # D_80044F38 + 4
  .L8000127C:
  /* 001E7C 8000127C 11400008 */      beqz $t2, .L800012A0
  /* 001E80 80001280 87A5004E */        lh $a1, 0x4e($sp)
  /* 001E84 80001284 00037040 */       sll $t6, $v1, 1
  /* 001E88 80001288 05C10003 */      bgez $t6, .L80001298
  /* 001E8C 8000128C 00000000 */       nop 
  /* 001E90 80001290 10000007 */         b .L800012B0
  /* 001E94 80001294 00001825 */        or $v1, $zero, $zero
  .L80001298:
  /* 001E98 80001298 10000005 */         b .L800012B0
  /* 001E9C 8000129C 24030001 */     addiu $v1, $zero, 1
  .L800012A0:
  /* 001EA0 800012A0 11200003 */      beqz $t1, .L800012B0
  /* 001EA4 800012A4 24030001 */     addiu $v1, $zero, 1
  /* 001EA8 800012A8 10000001 */         b .L800012B0
  /* 001EAC 800012AC 00001825 */        or $v1, $zero, $zero
  .L800012B0:
  /* 001EB0 800012B0 87A60052 */        lh $a2, 0x52($sp)
  /* 001EB4 800012B4 30A5FFFE */      andi $a1, $a1, 0xfffe
  /* 001EB8 800012B8 00052C00 */       sll $a1, $a1, 0x10
  /* 001EBC 800012BC 30C6FFFE */      andi $a2, $a2, 0xfffe
  /* 001EC0 800012C0 00063400 */       sll $a2, $a2, 0x10
  /* 001EC4 800012C4 2D470001 */     sltiu $a3, $t2, 1
  /* 001EC8 800012C8 00052C03 */       sra $a1, $a1, 0x10
  /* 001ECC 800012CC 10E00007 */      beqz $a3, .L800012EC
  /* 001ED0 800012D0 00063403 */       sra $a2, $a2, 0x10
  /* 001ED4 800012D4 2C780001 */     sltiu $t8, $v1, 1
  /* 001ED8 800012D8 53000005 */      beql $t8, $zero, .L800012F0
  /* 001EDC 800012DC 240E0001 */     addiu $t6, $zero, 1
  /* 001EE0 800012E0 24190002 */     addiu $t9, $zero, 2
  /* 001EE4 800012E4 10000003 */         b .L800012F4
  /* 001EE8 800012E8 AFB90014 */        sw $t9, 0x14($sp)
  .L800012EC:
  /* 001EEC 800012EC 240E0001 */     addiu $t6, $zero, 1
  .L800012F0:
  /* 001EF0 800012F0 AFAE0014 */        sw $t6, 0x14($sp)
  .L800012F4:
  /* 001EF4 800012F4 11400003 */      beqz $t2, .L80001304
  /* 001EF8 800012F8 8FAC003C */        lw $t4, 0x3c($sp)
  /* 001EFC 800012FC 10000002 */         b .L80001308
  /* 001F00 80001300 24040001 */     addiu $a0, $zero, 1
  .L80001304:
  /* 001F04 80001304 24040002 */     addiu $a0, $zero, 2
  .L80001308:
  /* 001F08 80001308 00C57823 */      subu $t7, $a2, $a1
  /* 001F0C 8000130C 25F801E0 */     addiu $t8, $t7, 0x1e0
  /* 001F10 80001310 000C62C0 */       sll $t4, $t4, 0xb
  /* 001F14 80001314 0198001B */      divu $zero, $t4, $t8
  /* 001F18 80001318 0000C812 */      mflo $t9
  /* 001F1C 8000131C 8FAF0014 */        lw $t7, 0x14($sp)
  /* 001F20 80001320 8FAD0038 */        lw $t5, 0x38($sp)
  /* 001F24 80001324 0324001B */      divu $zero, $t9, $a0
  /* 001F28 80001328 00007012 */      mflo $t6
  /* 001F2C 8000132C 17000002 */      bnez $t8, .L80001338
  /* 001F30 80001330 00000000 */       nop 
  /* 001F34 80001334 0007000D */     break 7
  .L80001338:
  /* 001F38 80001338 01CF0019 */     multu $t6, $t7
  /* 001F3C 8000133C 14800002 */      bnez $a0, .L80001348
  /* 001F40 80001340 00000000 */       nop 
  /* 001F44 80001344 0007000D */     break 7
  .L80001348:
  /* 001F48 80001348 00005812 */      mflo $t3
  /* 001F4C 8000134C 50E00006 */      beql $a3, $zero, .L80001368
  /* 001F50 80001350 24040001 */     addiu $a0, $zero, 1
  /* 001F54 80001354 50600004 */      beql $v1, $zero, .L80001368
  /* 001F58 80001358 24040001 */     addiu $a0, $zero, 1
  /* 001F5C 8000135C 10000002 */         b .L80001368
  /* 001F60 80001360 24040002 */     addiu $a0, $zero, 2
  /* 001F64 80001364 24040001 */     addiu $a0, $zero, 1
  .L80001368:
  /* 001F68 80001368 008D0019 */     multu $a0, $t5
  /* 001F6C 8000136C 3C048000 */       lui $a0, %hi(osTvType)
  /* 001F70 80001370 24010001 */     addiu $at, $zero, 1
  /* 001F74 80001374 24070002 */     addiu $a3, $zero, 2
  /* 001F78 80001378 0000C012 */      mflo $t8
  /* 001F7C 8000137C AC580008 */        sw $t8, 8($v0) # D_80044F38 + 8
  /* 001F80 80001380 8C840300 */        lw $a0, %lo(osTvType)($a0)
  /* 001F84 80001384 14810013 */       bne $a0, $at, .L800013D4
  /* 001F88 80001388 3C1903E5 */       lui $t9, (0x3E52239 >> 16) # 65348153
  /* 001F8C 8000138C 37392239 */       ori $t9, $t9, (0x3E52239 & 0xFFFF) # 65348153
  /* 001F90 80001390 240E020C */     addiu $t6, $zero, 0x20c
  /* 001F94 80001394 240F0C15 */     addiu $t7, $zero, 0xc15
  /* 001F98 80001398 AC59000C */        sw $t9, 0xc($v0) # D_80044F38 + 12
  /* 001F9C 8000139C AC4E0010 */        sw $t6, 0x10($v0) # D_80044F38 + 16
  /* 001FA0 800013A0 AC4F0014 */        sw $t7, 0x14($v0) # D_80044F38 + 20
  /* 001FA4 800013A4 3C180C15 */       lui $t8, (0xC150C15 >> 16) # 202705941
  /* 001FA8 800013A8 3C19006C */       lui $t9, (0x6C02EC >> 16) # 7078636
  /* 001FAC 800013AC 3C0E0025 */       lui $t6, (0x2501FF >> 16) # 2425343
  /* 001FB0 800013B0 3C0F000E */       lui $t7, (0xE0204 >> 16) # 918020
  /* 001FB4 800013B4 37180C15 */       ori $t8, $t8, (0xC150C15 & 0xFFFF) # 202705941
  /* 001FB8 800013B8 373902EC */       ori $t9, $t9, (0x6C02EC & 0xFFFF) # 7078636
  /* 001FBC 800013BC 35CE01FF */       ori $t6, $t6, (0x2501FF & 0xFFFF) # 2425343
  /* 001FC0 800013C0 35EF0204 */       ori $t7, $t7, (0xE0204 & 0xFFFF) # 918020
  /* 001FC4 800013C4 AC580018 */        sw $t8, 0x18($v0) # D_80044F38 + 24
  /* 001FC8 800013C8 AC59001C */        sw $t9, 0x1c($v0) # D_80044F38 + 28
  /* 001FCC 800013CC AC4E0030 */        sw $t6, 0x30($v0) # D_80044F38 + 48
  /* 001FD0 800013D0 AC4F0034 */        sw $t7, 0x34($v0) # D_80044F38 + 52
  .L800013D4:
  /* 001FD4 800013D4 14E40013 */       bne $a3, $a0, .L80001424
  /* 001FD8 800013D8 3C180465 */       lui $t8, (0x4651E39 >> 16) # 73735737
  /* 001FDC 800013DC 37181E39 */       ori $t8, $t8, (0x4651E39 & 0xFFFF) # 73735737
  /* 001FE0 800013E0 2419020C */     addiu $t9, $zero, 0x20c
  /* 001FE4 800013E4 240E0C10 */     addiu $t6, $zero, 0xc10
  /* 001FE8 800013E8 AC58000C */        sw $t8, 0xc($v0) # D_80044F38 + 12
  /* 001FEC 800013EC AC590010 */        sw $t9, 0x10($v0) # D_80044F38 + 16
  /* 001FF0 800013F0 AC4E0014 */        sw $t6, 0x14($v0) # D_80044F38 + 20
  /* 001FF4 800013F4 3C0F0C1C */       lui $t7, (0xC1C0C1C >> 16) # 203164700
  /* 001FF8 800013F8 3C18006C */       lui $t8, (0x6C02EC >> 16) # 7078636
  /* 001FFC 800013FC 3C190025 */       lui $t9, (0x2501FF >> 16) # 2425343
  /* 002000 80001400 3C0E000E */       lui $t6, (0xE0204 >> 16) # 918020
  /* 002004 80001404 35EF0C1C */       ori $t7, $t7, (0xC1C0C1C & 0xFFFF) # 203164700
  /* 002008 80001408 371802EC */       ori $t8, $t8, (0x6C02EC & 0xFFFF) # 7078636
  /* 00200C 8000140C 373901FF */       ori $t9, $t9, (0x2501FF & 0xFFFF) # 2425343
  /* 002010 80001410 35CE0204 */       ori $t6, $t6, (0xE0204 & 0xFFFF) # 918020
  /* 002014 80001414 AC4F0018 */        sw $t7, 0x18($v0) # D_80044F38 + 24
  /* 002018 80001418 AC58001C */        sw $t8, 0x1c($v0) # D_80044F38 + 28
  /* 00201C 8000141C AC590030 */        sw $t9, 0x30($v0) # D_80044F38 + 48
  /* 002020 80001420 AC4E0034 */        sw $t6, 0x34($v0) # D_80044F38 + 52
  .L80001424:
  /* 002024 80001424 8C58001C */        lw $t8, 0x1c($v0) # D_80044F38 + 28
  /* 002028 80001428 8C4F0030 */        lw $t7, 0x30($v0) # D_80044F38 + 48
  /* 00202C 8000142C AFB80000 */        sw $t8, ($sp)
  /* 002030 80001430 AC4F0044 */        sw $t7, 0x44($v0) # D_80044F38 + 68
  /* 002034 80001434 00187402 */       srl $t6, $t8, 0x10
  /* 002038 80001438 330FFFFF */      andi $t7, $t8, 0xffff
  /* 00203C 8000143C 87B80046 */        lh $t8, 0x46($sp)
  /* 002040 80001440 AFAE0020 */        sw $t6, 0x20($sp)
  /* 002044 80001444 AFAF001C */        sw $t7, 0x1c($sp)
  /* 002048 80001448 01D8C821 */      addu $t9, $t6, $t8
  /* 00204C 8000144C 07210002 */      bgez $t9, .L80001458
  /* 002050 80001450 AFB90020 */        sw $t9, 0x20($sp)
  /* 002054 80001454 AFA00020 */        sw $zero, 0x20($sp)
  .L80001458:
  /* 002058 80001458 8FAF001C */        lw $t7, 0x1c($sp)
  /* 00205C 8000145C 87AE004A */        lh $t6, 0x4a($sp)
  /* 002060 80001460 01EEC021 */      addu $t8, $t7, $t6
  /* 002064 80001464 07010002 */      bgez $t8, .L80001470
  /* 002068 80001468 AFB8001C */        sw $t8, 0x1c($sp)
  /* 00206C 8000146C AFA0001C */        sw $zero, 0x1c($sp)
  .L80001470:
  /* 002070 80001470 8FB90020 */        lw $t9, 0x20($sp)
  /* 002074 80001474 8FAE001C */        lw $t6, 0x1c($sp)
  /* 002078 80001478 00197C00 */       sll $t7, $t9, 0x10
  /* 00207C 8000147C 8C590030 */        lw $t9, 0x30($v0) # D_80044F38 + 48
  /* 002080 80001480 01EEC025 */        or $t8, $t7, $t6
  /* 002084 80001484 AC58001C */        sw $t8, 0x1c($v0) # D_80044F38 + 28
  /* 002088 80001488 00197402 */       srl $t6, $t9, 0x10
  /* 00208C 8000148C AFB90000 */        sw $t9, ($sp)
  /* 002090 80001490 3338FFFF */      andi $t8, $t9, 0xffff
  /* 002094 80001494 AFAE0020 */        sw $t6, 0x20($sp)
  /* 002098 80001498 01C5C821 */      addu $t9, $t6, $a1
  /* 00209C 8000149C AFB8001C */        sw $t8, 0x1c($sp)
  /* 0020A0 800014A0 07210002 */      bgez $t9, .L800014AC
  /* 0020A4 800014A4 AFB90020 */        sw $t9, 0x20($sp)
  /* 0020A8 800014A8 AFA00020 */        sw $zero, 0x20($sp)
  .L800014AC:
  /* 0020AC 800014AC 8FAF001C */        lw $t7, 0x1c($sp)
  /* 0020B0 800014B0 01E6C021 */      addu $t8, $t7, $a2
  /* 0020B4 800014B4 07010002 */      bgez $t8, .L800014C0
  /* 0020B8 800014B8 AFB8001C */        sw $t8, 0x1c($sp)
  /* 0020BC 800014BC AFA0001C */        sw $zero, 0x1c($sp)
  .L800014C0:
  /* 0020C0 800014C0 8FAE0020 */        lw $t6, 0x20($sp)
  /* 0020C4 800014C4 8FAF001C */        lw $t7, 0x1c($sp)
  /* 0020C8 800014C8 000ECC00 */       sll $t9, $t6, 0x10
  /* 0020CC 800014CC 8C4E0044 */        lw $t6, 0x44($v0) # D_80044F38 + 68
  /* 0020D0 800014D0 032FC025 */        or $t8, $t9, $t7
  /* 0020D4 800014D4 AC580030 */        sw $t8, 0x30($v0) # D_80044F38 + 48
  /* 0020D8 800014D8 000E7C02 */       srl $t7, $t6, 0x10
  /* 0020DC 800014DC AFAE0000 */        sw $t6, ($sp)
  /* 0020E0 800014E0 31D8FFFF */      andi $t8, $t6, 0xffff
  /* 0020E4 800014E4 AFAF0020 */        sw $t7, 0x20($sp)
  /* 0020E8 800014E8 01E57021 */      addu $t6, $t7, $a1
  /* 0020EC 800014EC AFB8001C */        sw $t8, 0x1c($sp)
  /* 0020F0 800014F0 05C10002 */      bgez $t6, .L800014FC
  /* 0020F4 800014F4 AFAE0020 */        sw $t6, 0x20($sp)
  /* 0020F8 800014F8 AFA00020 */        sw $zero, 0x20($sp)
  .L800014FC:
  /* 0020FC 800014FC 8FB9001C */        lw $t9, 0x1c($sp)
  /* 002100 80001500 0326C021 */      addu $t8, $t9, $a2
  /* 002104 80001504 07010002 */      bgez $t8, .L80001510
  /* 002108 80001508 AFB8001C */        sw $t8, 0x1c($sp)
  /* 00210C 8000150C AFA0001C */        sw $zero, 0x1c($sp)
  .L80001510:
  /* 002110 80001510 8FAF0020 */        lw $t7, 0x20($sp)
  /* 002114 80001514 8FB9001C */        lw $t9, 0x1c($sp)
  /* 002118 80001518 000F7400 */       sll $t6, $t7, 0x10
  /* 00211C 8000151C 8C4F0034 */        lw $t7, 0x34($v0) # D_80044F38 + 52
  /* 002120 80001520 01D9C025 */        or $t8, $t6, $t9
  /* 002124 80001524 AC580044 */        sw $t8, 0x44($v0) # D_80044F38 + 68
  /* 002128 80001528 11400014 */      beqz $t2, .L8000157C
  /* 00212C 8000152C AC4F0048 */        sw $t7, 0x48($v0) # D_80044F38 + 72
  /* 002130 80001530 50600013 */      beql $v1, $zero, .L80001580
  /* 002134 80001534 8C580030 */        lw $t8, 0x30($v0) # D_80044F38 + 48
  /* 002138 80001538 8C4E0010 */        lw $t6, 0x10($v0) # D_80044F38 + 16
  /* 00213C 8000153C 25D90001 */     addiu $t9, $t6, 1
  /* 002140 80001540 14E40006 */       bne $a3, $a0, .L8000155C
  /* 002144 80001544 AC590010 */        sw $t9, 0x10($v0) # D_80044F38 + 16
  /* 002148 80001548 8C580014 */        lw $t8, 0x14($v0) # D_80044F38 + 20
  /* 00214C 8000154C 3C010004 */       lui $at, (0x40001 >> 16) # 262145
  /* 002150 80001550 34210001 */       ori $at, $at, (0x40001 & 0xFFFF) # 262145
  /* 002154 80001554 03017821 */      addu $t7, $t8, $at
  /* 002158 80001558 AC4F0014 */        sw $t7, 0x14($v0) # D_80044F38 + 20
  .L8000155C:
  /* 00215C 8000155C 54E4001A */      bnel $a3, $a0, .L800015C8
  /* 002160 80001560 87AE004A */        lh $t6, 0x4a($sp)
  /* 002164 80001564 8C4E0018 */        lw $t6, 0x18($v0) # D_80044F38 + 24
  /* 002168 80001568 3C01FFFC */       lui $at, (0xFFFCFFFE >> 16) # 4294770686
  /* 00216C 8000156C 3421FFFE */       ori $at, $at, (0xFFFCFFFE & 0xFFFF) # 4294770686
  /* 002170 80001570 01C1C821 */      addu $t9, $t6, $at
  /* 002174 80001574 10000013 */         b .L800015C4
  /* 002178 80001578 AC590018 */        sw $t9, 0x18($v0) # D_80044F38 + 24
  .L8000157C:
  /* 00217C 8000157C 8C580030 */        lw $t8, 0x30($v0) # D_80044F38 + 48
  .L80001580:
  /* 002180 80001580 3C01FFFD */       lui $at, (0xFFFDFFFE >> 16) # 4294836222
  /* 002184 80001584 3421FFFE */       ori $at, $at, (0xFFFDFFFE & 0xFFFF) # 4294836222
  /* 002188 80001588 03017821 */      addu $t7, $t8, $at
  /* 00218C 8000158C 14E40006 */       bne $a3, $a0, .L800015A8
  /* 002190 80001590 AC4F0030 */        sw $t7, 0x30($v0) # D_80044F38 + 48
  /* 002194 80001594 8C4E0034 */        lw $t6, 0x34($v0) # D_80044F38 + 52
  /* 002198 80001598 3C01FFFC */       lui $at, (0xFFFCFFFE >> 16) # 4294770686
  /* 00219C 8000159C 3421FFFE */       ori $at, $at, (0xFFFCFFFE & 0xFFFF) # 4294770686
  /* 0021A0 800015A0 01C1C821 */      addu $t9, $t6, $at
  /* 0021A4 800015A4 AC590034 */        sw $t9, 0x34($v0) # D_80044F38 + 52
  .L800015A8:
  /* 0021A8 800015A8 54800007 */      bnel $a0, $zero, .L800015C8
  /* 0021AC 800015AC 87AE004A */        lh $t6, 0x4a($sp)
  /* 0021B0 800015B0 8C580048 */        lw $t8, 0x48($v0) # D_80044F38 + 72
  /* 0021B4 800015B4 3C010002 */       lui $at, (0x2FFFE >> 16) # 196606
  /* 0021B8 800015B8 3421FFFE */       ori $at, $at, (0x2FFFE & 0xFFFF) # 196606
  /* 0021BC 800015BC 03017821 */      addu $t7, $t8, $at
  /* 0021C0 800015C0 AC4F0048 */        sw $t7, 0x48($v0) # D_80044F38 + 72
  .L800015C4:
  /* 0021C4 800015C4 87AE004A */        lh $t6, 0x4a($sp)
  .L800015C8:
  /* 0021C8 800015C8 87B90046 */        lh $t9, 0x46($sp)
  /* 0021CC 800015CC AC400024 */        sw $zero, 0x24($v0) # D_80044F38 + 36
  /* 0021D0 800015D0 24040002 */     addiu $a0, $zero, 2
  /* 0021D4 800015D4 01D9C023 */      subu $t8, $t6, $t9
  /* 0021D8 800015D8 270F0280 */     addiu $t7, $t8, 0x280
  /* 0021DC 800015DC 000D7280 */       sll $t6, $t5, 0xa
  /* 0021E0 800015E0 01CF001B */      divu $zero, $t6, $t7
  /* 0021E4 800015E4 0000C812 */      mflo $t9
  /* 0021E8 800015E8 AC590020 */        sw $t9, 0x20($v0) # D_80044F38 + 32
  /* 0021EC 800015EC 15E00002 */      bnez $t7, .L800015F8
  /* 0021F0 800015F0 00000000 */       nop 
  /* 0021F4 800015F4 0007000D */     break 7
  .L800015F8:
  /* 0021F8 800015F8 240F0001 */     addiu $t7, $zero, 1
  /* 0021FC 800015FC 15000003 */      bnez $t0, .L8000160C
  /* 002200 80001600 24190002 */     addiu $t9, $zero, 2
  /* 002204 80001604 10000001 */         b .L8000160C
  /* 002208 80001608 24040001 */     addiu $a0, $zero, 1
  .L8000160C:
  /* 00220C 8000160C 008D0019 */     multu $a0, $t5
  /* 002210 80001610 3C01000B */       lui $at, (0xB4000 >> 16) # 737280
  /* 002214 80001614 34214000 */       ori $at, $at, (0xB4000 & 0xFFFF) # 737280
  /* 002218 80001618 24040002 */     addiu $a0, $zero, 2
  /* 00221C 8000161C 0181082B */      sltu $at, $t4, $at
  /* 002220 80001620 0000C012 */      mflo $t8
  /* 002224 80001624 00187040 */       sll $t6, $t8, 1
  /* 002228 80001628 15000003 */      bnez $t0, .L80001638
  /* 00222C 8000162C AC4E0028 */        sw $t6, 0x28($v0) # D_80044F38 + 40
  /* 002230 80001630 10000002 */         b .L8000163C
  /* 002234 80001634 AFAF0014 */        sw $t7, 0x14($sp)
  .L80001638:
  /* 002238 80001638 AFB90014 */        sw $t9, 0x14($sp)
  .L8000163C:
  /* 00223C 8000163C 11400003 */      beqz $t2, .L8000164C
  /* 002240 80001640 00000000 */       nop 
  /* 002244 80001644 10000001 */         b .L8000164C
  /* 002248 80001648 24040001 */     addiu $a0, $zero, 1
  .L8000164C:
  /* 00224C 8000164C 008D0019 */     multu $a0, $t5
  /* 002250 80001650 8FAF0014 */        lw $t7, 0x14($sp)
  /* 002254 80001654 AC4B002C */        sw $t3, 0x2c($v0) # D_80044F38 + 44
  /* 002258 80001658 AC4B0040 */        sw $t3, 0x40($v0) # D_80044F38 + 64
  /* 00225C 8000165C 0000C012 */      mflo $t8
  /* 002260 80001660 00187040 */       sll $t6, $t8, 1
  /* 002264 80001664 00000000 */       nop 
  /* 002268 80001668 01CF0019 */     multu $t6, $t7
  /* 00226C 8000166C 0000C812 */      mflo $t9
  /* 002270 80001670 AC59003C */        sw $t9, 0x3c($v0) # D_80044F38 + 60
  /* 002274 80001674 51200011 */      beql $t1, $zero, .L800016BC
  /* 002278 80001678 24030002 */     addiu $v1, $zero, 2
  /* 00227C 8000167C 10200007 */      beqz $at, .L8000169C
  /* 002280 80001680 3C010300 */       lui $at, 0x300
  /* 002284 80001684 01617021 */      addu $t6, $t3, $at
  /* 002288 80001688 3C010100 */       lui $at, 0x100
  /* 00228C 8000168C 0161C821 */      addu $t9, $t3, $at
  /* 002290 80001690 AC4E002C */        sw $t6, 0x2c($v0) # D_80044F38 + 44
  /* 002294 80001694 10000008 */         b .L800016B8
  /* 002298 80001698 AC590040 */        sw $t9, 0x40($v0) # D_80044F38 + 64
  .L8000169C:
  /* 00229C 8000169C 8C58002C */        lw $t8, 0x2c($v0) # D_80044F38 + 44
  /* 0022A0 800016A0 8C4F0040 */        lw $t7, 0x40($v0) # D_80044F38 + 64
  /* 0022A4 800016A4 3C030200 */       lui $v1, 0x200
  /* 0022A8 800016A8 03037021 */      addu $t6, $t8, $v1
  /* 0022AC 800016AC 01E3C821 */      addu $t9, $t7, $v1
  /* 0022B0 800016B0 AC4E002C */        sw $t6, 0x2c($v0) # D_80044F38 + 44
  /* 0022B4 800016B4 AC590040 */        sw $t9, 0x40($v0) # D_80044F38 + 64
  .L800016B8:
  /* 0022B8 800016B8 24030002 */     addiu $v1, $zero, 2
  .L800016BC:
  /* 0022BC 800016BC AC430038 */        sw $v1, 0x38($v0) # D_80044F38 + 56
  /* 0022C0 800016C0 AC43004C */        sw $v1, 0x4c($v0) # D_80044F38 + 76
  /* 0022C4 800016C4 24180001 */     addiu $t8, $zero, 1
  /* 0022C8 800016C8 3C018004 */       lui $at, %hi(D_80044F88)
  /* 0022CC 800016CC AC384F88 */        sw $t8, %lo(D_80044F88)($at)
  /* 0022D0 800016D0 03E00008 */        jr $ra
  /* 0022D4 800016D4 27BD0038 */     addiu $sp, $sp, 0x38

