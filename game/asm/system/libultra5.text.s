.include "macros.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text

.align 4

# Maybe start of new file
#glabel alCopy
#  /* 036340 80035740 00801025 */        or $v0, $a0, $zero
#  /* 036344 80035744 00A01825 */        or $v1, $a1, $zero
#  /* 036348 80035748 18C00018 */      blez $a2, .L800357AC
#  /* 03634C 8003574C 00003825 */        or $a3, $zero, $zero
#  /* 036350 80035750 30C50003 */      andi $a1, $a2, 3
#  /* 036354 80035754 10A00009 */      beqz $a1, .L8003577C
#  /* 036358 80035758 00A02025 */        or $a0, $a1, $zero
#  .L8003575C:
#  /* 03635C 8003575C 904E0000 */       lbu $t6, ($v0)
#  /* 036360 80035760 24E70001 */     addiu $a3, $a3, 1
#  /* 036364 80035764 24630001 */     addiu $v1, $v1, 1
#  /* 036368 80035768 24420001 */     addiu $v0, $v0, 1
#  /* 03636C 8003576C 1487FFFB */       bne $a0, $a3, .L8003575C
#  /* 036370 80035770 A06EFFFF */        sb $t6, -1($v1)
#  /* 036374 80035774 10E6000D */       beq $a3, $a2, .L800357AC
#  /* 036378 80035778 00000000 */       nop 
#  .L8003577C:
#  /* 03637C 8003577C 904F0000 */       lbu $t7, ($v0)
#  /* 036380 80035780 24E70004 */     addiu $a3, $a3, 4
#  /* 036384 80035784 24630004 */     addiu $v1, $v1, 4
#  /* 036388 80035788 A06FFFFC */        sb $t7, -4($v1)
#  /* 03638C 8003578C 90580001 */       lbu $t8, 1($v0)
#  /* 036390 80035790 24420004 */     addiu $v0, $v0, 4
#  /* 036394 80035794 A078FFFD */        sb $t8, -3($v1)
#  /* 036398 80035798 9059FFFE */       lbu $t9, -2($v0)
#  /* 03639C 8003579C A079FFFE */        sb $t9, -2($v1)
#  /* 0363A0 800357A0 9048FFFF */       lbu $t0, -1($v0)
#  /* 0363A4 800357A4 14E6FFF5 */       bne $a3, $a2, .L8003577C
#  /* 0363A8 800357A8 A068FFFF */        sb $t0, -1($v1)
#  .L800357AC:
#  /* 0363AC 800357AC 03E00008 */        jr $ra
#  /* 0363B0 800357B0 00000000 */       nop 
#
#  /* 0363B4 800357B4 00000000 */       nop 
#  /* 0363B8 800357B8 00000000 */       nop 
#  /* 0363BC 800357BC 00000000 */       nop 

# Likely start of new file
#glabel __osResetGlobalIntMask
#  /* 0363C0 800357C0 27BDFFD8 */     addiu $sp, $sp, -0x28
#  /* 0363C4 800357C4 AFBF001C */        sw $ra, 0x1c($sp)
#  /* 0363C8 800357C8 AFA40028 */        sw $a0, 0x28($sp)
#  /* 0363CC 800357CC 0C00D608 */       jal __osDisableInt
#  /* 0363D0 800357D0 AFB00018 */        sw $s0, 0x18($sp)
#  /* 0363D4 800357D4 8FAF0028 */        lw $t7, 0x28($sp)
#  /* 0363D8 800357D8 3C0E8004 */       lui $t6, %hi(__OSGlobalIntMask)
#  /* 0363DC 800357DC 8DCED400 */        lw $t6, %lo(__OSGlobalIntMask)($t6)
#  /* 0363E0 800357E0 2401FBFE */     addiu $at, $zero, -0x402
#  /* 0363E4 800357E4 01E1C024 */       and $t8, $t7, $at
#  /* 0363E8 800357E8 0300C827 */       not $t9, $t8
#  /* 0363EC 800357EC 00408025 */        or $s0, $v0, $zero
#  /* 0363F0 800357F0 3C018004 */       lui $at, %hi(__OSGlobalIntMask)
#  /* 0363F4 800357F4 01D94024 */       and $t0, $t6, $t9
#  /* 0363F8 800357F8 AC28D400 */        sw $t0, %lo(__OSGlobalIntMask)($at)
#  /* 0363FC 800357FC 0C00D610 */       jal __osRestoreInt
#  /* 036400 80035800 02002025 */        or $a0, $s0, $zero
#  /* 036404 80035804 8FBF001C */        lw $ra, 0x1c($sp)
#  /* 036408 80035808 8FB00018 */        lw $s0, 0x18($sp)
#  /* 03640C 8003580C 27BD0028 */     addiu $sp, $sp, 0x28
#  /* 036410 80035810 03E00008 */        jr $ra
#  /* 036414 80035814 00000000 */       nop 
#
#  /* 036418 80035818 00000000 */       nop 
#  /* 03641C 8003581C 00000000 */       nop 

# Likely start of new file
#glabel __osDisableInt
#  /* 036420 80035820 40086000 */      mfc0 $t0, $12
#  /* 036424 80035824 2401FFFE */     addiu $at, $zero, -2
#  /* 036428 80035828 01014824 */       and $t1, $t0, $at
#  /* 03642C 8003582C 40896000 */      mtc0 $t1, $12
#  /* 036430 80035830 31020001 */      andi $v0, $t0, 1
#  /* 036434 80035834 00000000 */       nop 
#  /* 036438 80035838 03E00008 */        jr $ra
#  /* 03643C 8003583C 00000000 */       nop 
#
#glabel __osRestoreInt
#  /* 036440 80035840 40086000 */      mfc0 $t0, $12
#  /* 036444 80035844 01044025 */        or $t0, $t0, $a0
#  /* 036448 80035848 40886000 */      mtc0 $t0, $12
#  /* 03644C 8003584C 00000000 */       nop 
#  /* 036450 80035850 00000000 */       nop 
#  /* 036454 80035854 03E00008 */        jr $ra
#  /* 036458 80035858 00000000 */       nop 
#
#  /* 03645C 8003585C 00000000 */       nop 

# Likely start of new file
#glabel __osViInit
#  /* 036460 80035860 27BDFFE8 */     addiu $sp, $sp, -0x18
#  /* 036464 80035864 AFBF0014 */        sw $ra, 0x14($sp)
#  /* 036468 80035868 3C048004 */       lui $a0, %hi(D_8003D550)
#  /* 03646C 8003586C 2484D550 */     addiu $a0, $a0, %lo(D_8003D550)
#  /* 036470 80035870 0C00C56C */       jal _bzero
#  /* 036474 80035874 24050060 */     addiu $a1, $zero, 0x60
#  /* 036478 80035878 3C0E8004 */       lui $t6, %hi(D_8003D550)
#  /* 03647C 8003587C 25CED550 */     addiu $t6, $t6, %lo(D_8003D550)
#  /* 036480 80035880 3C018004 */       lui $at, %hi(__osViCurr)
#  /* 036484 80035884 AC2ED5B0 */        sw $t6, %lo(__osViCurr)($at)
#  /* 036488 80035888 3C018004 */       lui $at, %hi(__osViNext)
#  /* 03648C 8003588C 25CF0030 */     addiu $t7, $t6, 0x30
#  /* 036490 80035890 AC2FD5B4 */        sw $t7, %lo(__osViNext)($at)
#  /* 036494 80035894 24180001 */     addiu $t8, $zero, 1
#  /* 036498 80035898 A5D80032 */        sh $t8, 0x32($t6) # D_8003D550 + 50
#  /* 03649C 8003589C 3C088004 */       lui $t0, %hi(__osViCurr)
#  /* 0364A0 800358A0 8D08D5B0 */        lw $t0, %lo(__osViCurr)($t0)
#  /* 0364A4 800358A4 24190001 */     addiu $t9, $zero, 1
#  /* 0364A8 800358A8 3C0A8004 */       lui $t2, %hi(__osViNext)
#  /* 0364AC 800358AC A5190002 */        sh $t9, 2($t0)
#  /* 0364B0 800358B0 8D4AD5B4 */        lw $t2, %lo(__osViNext)($t2)
#  /* 0364B4 800358B4 3C098000 */       lui $t1, 0x8000
#  /* 0364B8 800358B8 3C0C8004 */       lui $t4, %hi(__osViCurr)
#  /* 0364BC 800358BC AD490004 */        sw $t1, 4($t2)
#  /* 0364C0 800358C0 8D8CD5B0 */        lw $t4, %lo(__osViCurr)($t4)
#  /* 0364C4 800358C4 3C0B8000 */       lui $t3, 0x8000
#  /* 0364C8 800358C8 3C0D8000 */       lui $t5, %hi(osTvType)
#  /* 0364CC 800358CC AD8B0004 */        sw $t3, 4($t4)
#  /* 0364D0 800358D0 8DAD0300 */        lw $t5, %lo(osTvType)($t5)
#  /* 0364D4 800358D4 15A00007 */      bnez $t5, .L800358F4
#  /* 0364D8 800358D8 00000000 */       nop 
#  /* 0364DC 800358DC 3C188004 */       lui $t8, %hi(__osViNext)
#  /* 0364E0 800358E0 8F18D5B4 */        lw $t8, %lo(__osViNext)($t8)
#  /* 0364E4 800358E4 3C0F8004 */       lui $t7, %hi(osViModePalLan1)
#  /* 0364E8 800358E8 25EFD330 */     addiu $t7, $t7, %lo(osViModePalLan1)
#  /* 0364EC 800358EC 10000011 */         b .L80035934
#  /* 0364F0 800358F0 AF0F0008 */        sw $t7, 8($t8)
#  .L800358F4:
#  /* 0364F4 800358F4 3C0E8000 */       lui $t6, %hi(osTvType)
#  /* 0364F8 800358F8 8DCE0300 */        lw $t6, %lo(osTvType)($t6)
#  /* 0364FC 800358FC 24010002 */     addiu $at, $zero, 2
#  /* 036500 80035900 15C10007 */       bne $t6, $at, .L80035920
#  /* 036504 80035904 00000000 */       nop 
#  /* 036508 80035908 3C088004 */       lui $t0, %hi(__osViNext)
#  /* 03650C 8003590C 8D08D5B4 */        lw $t0, %lo(__osViNext)($t0)
#  /* 036510 80035910 3C198004 */       lui $t9, %hi(osViModeMpalLan1)
#  /* 036514 80035914 2739D500 */     addiu $t9, $t9, %lo(osViModeMpalLan1)
#  /* 036518 80035918 10000006 */         b .L80035934
#  /* 03651C 8003591C AD190008 */        sw $t9, 8($t0)
#  .L80035920:
#  /* 036520 80035920 3C0A8004 */       lui $t2, %hi(__osViNext)
#  /* 036524 80035924 8D4AD5B4 */        lw $t2, %lo(__osViNext)($t2)
#  /* 036528 80035928 3C098004 */       lui $t1, %hi(osViModeNtscLan1)
#  /* 03652C 8003592C 2529D4B0 */     addiu $t1, $t1, %lo(osViModeNtscLan1)
#  /* 036530 80035930 AD490008 */        sw $t1, 8($t2)
#  .L80035934:
#  /* 036534 80035934 3C0C8004 */       lui $t4, %hi(__osViNext)
#  /* 036538 80035938 8D8CD5B4 */        lw $t4, %lo(__osViNext)($t4)
#  /* 03653C 8003593C 240B0020 */     addiu $t3, $zero, 0x20
#  /* 036540 80035940 3C0D8004 */       lui $t5, %hi(__osViNext)
#  /* 036544 80035944 A58B0000 */        sh $t3, ($t4)
#  /* 036548 80035948 8DADD5B4 */        lw $t5, %lo(__osViNext)($t5)
#  /* 03654C 8003594C 3C0EA440 */       lui $t6, %hi(VI_CURRENT_REG__VI_V_CURRENT_LINE_REG)
#  /* 036550 80035950 8DAF0008 */        lw $t7, 8($t5)
#  /* 036554 80035954 8DF80004 */        lw $t8, 4($t7)
#  /* 036558 80035958 ADB8000C */        sw $t8, 0xc($t5)
#  /* 03655C 8003595C 8DD90010 */        lw $t9, %lo(VI_CURRENT_REG__VI_V_CURRENT_LINE_REG)($t6)
#  /* 036560 80035960 2F21000B */     sltiu $at, $t9, 0xb
#  /* 036564 80035964 14200006 */      bnez $at, .L80035980
#  /* 036568 80035968 00000000 */       nop 
#  .L8003596C:
#  /* 03656C 8003596C 3C08A440 */       lui $t0, %hi(VI_CURRENT_REG__VI_V_CURRENT_LINE_REG)
#  /* 036570 80035970 8D090010 */        lw $t1, %lo(VI_CURRENT_REG__VI_V_CURRENT_LINE_REG)($t0)
#  /* 036574 80035974 2D21000B */     sltiu $at, $t1, 0xb
#  /* 036578 80035978 1020FFFC */      beqz $at, .L8003596C
#  /* 03657C 8003597C 00000000 */       nop 
#  .L80035980:
#  /* 036580 80035980 3C0AA440 */       lui $t2, %hi(VI_STATUS_REG__VI_CONTROL_REG)
#  /* 036584 80035984 0C00D668 */       jal __osViSwapContext
#  /* 036588 80035988 AD400000 */        sw $zero, %lo(VI_STATUS_REG__VI_CONTROL_REG)($t2)
#  /* 03658C 8003598C 8FBF0014 */        lw $ra, 0x14($sp)
#  /* 036590 80035990 27BD0018 */     addiu $sp, $sp, 0x18
#  /* 036594 80035994 03E00008 */        jr $ra
#  /* 036598 80035998 00000000 */       nop 
#
#  /* 03659C 8003599C 00000000 */       nop 
