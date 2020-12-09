.include "macros.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text

.align 4

#glabel _bzero
#  /* 0321B0 800315B0 28A1000C */      slti $at, $a1, 0xc
#  /* 0321B4 800315B4 1420001D */      bnez $at, .L8003162C
#  /* 0321B8 800315B8 00041823 */      negu $v1, $a0
#  /* 0321BC 800315BC 30630003 */      andi $v1, $v1, 3
#  /* 0321C0 800315C0 10600003 */      beqz $v1, .L800315D0
#  /* 0321C4 800315C4 00A32823 */      subu $a1, $a1, $v1
#  /* 0321C8 800315C8 A8800000 */       swl $zero, ($a0)
#  /* 0321CC 800315CC 00832021 */      addu $a0, $a0, $v1
#  .L800315D0:
#  /* 0321D0 800315D0 2401FFE0 */     addiu $at, $zero, -0x20
#  /* 0321D4 800315D4 00A13824 */       and $a3, $a1, $at
#  /* 0321D8 800315D8 10E0000C */      beqz $a3, .L8003160C
#  /* 0321DC 800315DC 00A72823 */      subu $a1, $a1, $a3
#  /* 0321E0 800315E0 00E43821 */      addu $a3, $a3, $a0
#  .L800315E4:
#  /* 0321E4 800315E4 24840020 */     addiu $a0, $a0, 0x20
#  /* 0321E8 800315E8 AC80FFE0 */        sw $zero, -0x20($a0)
#  /* 0321EC 800315EC AC80FFE4 */        sw $zero, -0x1c($a0)
#  /* 0321F0 800315F0 AC80FFE8 */        sw $zero, -0x18($a0)
#  /* 0321F4 800315F4 AC80FFEC */        sw $zero, -0x14($a0)
#  /* 0321F8 800315F8 AC80FFF0 */        sw $zero, -0x10($a0)
#  /* 0321FC 800315FC AC80FFF4 */        sw $zero, -0xc($a0)
#  /* 032200 80031600 AC80FFF8 */        sw $zero, -8($a0)
#  /* 032204 80031604 1487FFF7 */       bne $a0, $a3, .L800315E4
#  /* 032208 80031608 AC80FFFC */        sw $zero, -4($a0)
#  .L8003160C:
#  /* 03220C 8003160C 2401FFFC */     addiu $at, $zero, -4
#  /* 032210 80031610 00A13824 */       and $a3, $a1, $at
#  /* 032214 80031614 10E00005 */      beqz $a3, .L8003162C
#  /* 032218 80031618 00A72823 */      subu $a1, $a1, $a3
#  /* 03221C 8003161C 00E43821 */      addu $a3, $a3, $a0
#  .L80031620:
#  /* 032220 80031620 24840004 */     addiu $a0, $a0, 4
#  /* 032224 80031624 1487FFFE */       bne $a0, $a3, .L80031620
#  /* 032228 80031628 AC80FFFC */        sw $zero, -4($a0)
#  .L8003162C:
#  /* 03222C 8003162C 18A00005 */      blez $a1, .L80031644
#  /* 032230 80031630 00000000 */       nop 
#  /* 032234 80031634 00A42821 */      addu $a1, $a1, $a0
#  .L80031638:
#  /* 032238 80031638 24840001 */     addiu $a0, $a0, 1
#  /* 03223C 8003163C 1485FFFE */       bne $a0, $a1, .L80031638
#  /* 032240 80031640 A080FFFF */        sb $zero, -1($a0)
#  .L80031644:
#  /* 032244 80031644 03E00008 */        jr $ra
#  /* 032248 80031648 00000000 */       nop 
#
#  /* 03224C 8003164C 00000000 */       nop 

# motor.o


# controller.o
#glabel osContInit
#  /* 0326E0 80031AE0 27BDFF90 */     addiu $sp, $sp, -0x70
#  /* 0326E4 80031AE4 3C0E8004 */       lui $t6, %hi(D_8003D3E0)
#  /* 0326E8 80031AE8 8DCED3E0 */        lw $t6, %lo(D_8003D3E0)($t6)
#  /* 0326EC 80031AEC AFBF0024 */        sw $ra, 0x24($sp)
#  /* 0326F0 80031AF0 AFA40070 */        sw $a0, 0x70($sp)
#  /* 0326F4 80031AF4 AFA50074 */        sw $a1, 0x74($sp)
#  /* 0326F8 80031AF8 AFA60078 */        sw $a2, 0x78($sp)
#  /* 0326FC 80031AFC 11C00003 */      beqz $t6, .L80031B0C
#  /* 032700 80031B00 AFA00068 */        sw $zero, 0x68($sp)
#  /* 032704 80031B04 1000004E */         b .L80031C40
#  /* 032708 80031B08 00001025 */        or $v0, $zero, $zero
#  .L80031B0C:
#  /* 03270C 80031B0C 240F0001 */     addiu $t7, $zero, 1
#  /* 032710 80031B10 3C018004 */       lui $at, %hi(D_8003D3E0)
#  /* 032714 80031B14 0C00D354 */       jal osGetTime
#  /* 032718 80031B18 AC2FD3E0 */        sw $t7, %lo(D_8003D3E0)($at)
#  /* 03271C 80031B1C AFA20060 */        sw $v0, 0x60($sp)
#  /* 032720 80031B20 8FB80060 */        lw $t8, 0x60($sp)
#  /* 032724 80031B24 AFA30064 */        sw $v1, 0x64($sp)
#  /* 032728 80031B28 8FB90064 */        lw $t9, 0x64($sp)
#  /* 03272C 80031B2C 17000020 */      bnez $t8, .L80031BB0
#  /* 032730 80031B30 3C010165 */       lui $at, (0x165A0BC >> 16) # 23437500
#  /* 032734 80031B34 3421A0BC */       ori $at, $at, (0x165A0BC & 0xFFFF) # 23437500
#  /* 032738 80031B38 0321082B */      sltu $at, $t9, $at
#  /* 03273C 80031B3C 1020001C */      beqz $at, .L80031BB0
#  /* 032740 80031B40 00000000 */       nop 
#  /* 032744 80031B44 27A40028 */     addiu $a0, $sp, 0x28
#  /* 032748 80031B48 27A5006C */     addiu $a1, $sp, 0x6c
#  /* 03274C 80031B4C 0C00D120 */       jal osCreateMesgQueue
#  /* 032750 80031B50 24060001 */     addiu $a2, $zero, 1
#  /* 032754 80031B54 8FA80060 */        lw $t0, 0x60($sp)
#  /* 032758 80031B58 8FA90064 */        lw $t1, 0x64($sp)
#  /* 03275C 80031B5C 3C0B0165 */       lui $t3, (0x165A0BC >> 16) # 23437500
#  /* 032760 80031B60 356BA0BC */       ori $t3, $t3, (0x165A0BC & 0xFFFF) # 23437500
#  /* 032764 80031B64 240A0000 */     addiu $t2, $zero, 0
#  /* 032768 80031B68 240C0000 */     addiu $t4, $zero, 0
#  /* 03276C 80031B6C 240D0000 */     addiu $t5, $zero, 0
#  /* 032770 80031B70 27AE0028 */     addiu $t6, $sp, 0x28
#  /* 032774 80031B74 27AF006C */     addiu $t7, $sp, 0x6c
#  /* 032778 80031B78 01483023 */      subu $a2, $t2, $t0
#  /* 03277C 80031B7C 0169082B */      sltu $at, $t3, $t1
#  /* 032780 80031B80 00C13023 */      subu $a2, $a2, $at
#  /* 032784 80031B84 AFAF001C */        sw $t7, 0x1c($sp)
#  /* 032788 80031B88 AFAE0018 */        sw $t6, 0x18($sp)
#  /* 03278C 80031B8C AFAD0014 */        sw $t5, 0x14($sp)
#  /* 032790 80031B90 AFAC0010 */        sw $t4, 0x10($sp)
#  /* 032794 80031B94 27A40040 */     addiu $a0, $sp, 0x40
#  /* 032798 80031B98 0C00DF44 */       jal osSetTimer
#  /* 03279C 80031B9C 01693823 */      subu $a3, $t3, $t1
#  /* 0327A0 80031BA0 27A40028 */     addiu $a0, $sp, 0x28
#  /* 0327A4 80031BA4 27A5006C */     addiu $a1, $sp, 0x6c
#  /* 0327A8 80031BA8 0C00C084 */       jal osRecvMesg
#  /* 0327AC 80031BAC 24060001 */     addiu $a2, $zero, 1
#  .L80031BB0:
#  /* 0327B0 80031BB0 24180004 */     addiu $t8, $zero, 4
#  /* 0327B4 80031BB4 3C01800A */       lui $at, %hi(__osMaxControllers)
#  /* 0327B8 80031BB8 A038EFE1 */        sb $t8, %lo(__osMaxControllers)($at)
#  /* 0327BC 80031BBC 0C00C748 */       jal __osPackRequestData
#  /* 0327C0 80031BC0 00002025 */        or $a0, $zero, $zero
#  /* 0327C4 80031BC4 3C05800A */       lui $a1, %hi(__osContPifRam)
#  /* 0327C8 80031BC8 24A5EFA0 */     addiu $a1, $a1, %lo(__osContPifRam)
#  /* 0327CC 80031BCC 0C00C9D8 */       jal __osSiRawStartDma
#  /* 0327D0 80031BD0 24040001 */     addiu $a0, $zero, 1
#  /* 0327D4 80031BD4 AFA20068 */        sw $v0, 0x68($sp)
#  /* 0327D8 80031BD8 8FA40070 */        lw $a0, 0x70($sp)
#  /* 0327DC 80031BDC 27A5006C */     addiu $a1, $sp, 0x6c
#  /* 0327E0 80031BE0 0C00C084 */       jal osRecvMesg
#  /* 0327E4 80031BE4 24060001 */     addiu $a2, $zero, 1
#  /* 0327E8 80031BE8 3C05800A */       lui $a1, %hi(__osContPifRam)
#  /* 0327EC 80031BEC 24A5EFA0 */     addiu $a1, $a1, %lo(__osContPifRam)
#  /* 0327F0 80031BF0 0C00C9D8 */       jal __osSiRawStartDma
#  /* 0327F4 80031BF4 00002025 */        or $a0, $zero, $zero
#  /* 0327F8 80031BF8 AFA20068 */        sw $v0, 0x68($sp)
#  /* 0327FC 80031BFC 8FA40070 */        lw $a0, 0x70($sp)
#  /* 032800 80031C00 27A5006C */     addiu $a1, $sp, 0x6c
#  /* 032804 80031C04 0C00C084 */       jal osRecvMesg
#  /* 032808 80031C08 24060001 */     addiu $a2, $zero, 1
#  /* 03280C 80031C0C 8FA40074 */        lw $a0, 0x74($sp)
#  /* 032810 80031C10 0C00C714 */       jal __osContGetInitData
#  /* 032814 80031C14 8FA50078 */        lw $a1, 0x78($sp)
#  /* 032818 80031C18 3C01800A */       lui $at, %hi(__osContLastCmd)
#  /* 03281C 80031C1C 0C00C688 */       jal __osSiCreateAccessQueue
#  /* 032820 80031C20 A020EFE0 */        sb $zero, %lo(__osContLastCmd)($at)
#  /* 032824 80031C24 3C04800A */       lui $a0, %hi(D_8009F008)
#  /* 032828 80031C28 3C05800A */       lui $a1, %hi(D_8009F020)
#  /* 03282C 80031C2C 24A5F020 */     addiu $a1, $a1, %lo(D_8009F020)
#  /* 032830 80031C30 2484F008 */     addiu $a0, $a0, %lo(D_8009F008)
#  /* 032834 80031C34 0C00D120 */       jal osCreateMesgQueue
#  /* 032838 80031C38 24060001 */     addiu $a2, $zero, 1
#  /* 03283C 80031C3C 8FA20068 */        lw $v0, 0x68($sp)
#  .L80031C40:
#  /* 032840 80031C40 8FBF0024 */        lw $ra, 0x24($sp)
#  /* 032844 80031C44 27BD0070 */     addiu $sp, $sp, 0x70
#  /* 032848 80031C48 03E00008 */        jr $ra
#  /* 03284C 80031C4C 00000000 */       nop 

# func_80031C50
#glabel __osContGetInitData
#  /* 032850 80031C50 3C0F800A */       lui $t7, %hi(__osMaxControllers)
#  /* 032854 80031C54 91EFEFE1 */       lbu $t7, %lo(__osMaxControllers)($t7)
#  /* 032858 80031C58 27BDFFE8 */     addiu $sp, $sp, -0x18
#  /* 03285C 80031C5C 3C0E800A */       lui $t6, %hi(__osContPifRam)
#  /* 032860 80031C60 25CEEFA0 */     addiu $t6, $t6, %lo(__osContPifRam)
#  /* 032864 80031C64 A3A00007 */        sb $zero, 7($sp)
#  /* 032868 80031C68 AFAE0014 */        sw $t6, 0x14($sp)
#  /* 03286C 80031C6C 19E00028 */      blez $t7, .L80031D10
#  /* 032870 80031C70 AFA00008 */        sw $zero, 8($sp)
#  .L80031C74:
#  /* 032874 80031C74 8FB90014 */        lw $t9, 0x14($sp)
#  /* 032878 80031C78 27B8000C */     addiu $t8, $sp, 0xc
#  /* 03287C 80031C7C 8B210000 */       lwl $at, ($t9)
#  /* 032880 80031C80 9B210003 */       lwr $at, 3($t9)
#  /* 032884 80031C84 AF010000 */        sw $at, ($t8)
#  /* 032888 80031C88 8B290004 */       lwl $t1, 4($t9)
#  /* 03288C 80031C8C 9B290007 */       lwr $t1, 7($t9)
#  /* 032890 80031C90 AF090004 */        sw $t1, 4($t8)
#  /* 032894 80031C94 93AA000E */       lbu $t2, 0xe($sp)
#  /* 032898 80031C98 314B00C0 */      andi $t3, $t2, 0xc0
#  /* 03289C 80031C9C 000B6103 */       sra $t4, $t3, 4
#  /* 0328A0 80031CA0 A0AC0003 */        sb $t4, 3($a1)
#  /* 0328A4 80031CA4 90AD0003 */       lbu $t5, 3($a1)
#  /* 0328A8 80031CA8 15A0000E */      bnez $t5, .L80031CE4
#  /* 0328AC 80031CAC 00000000 */       nop 
#  /* 0328B0 80031CB0 93AE0011 */       lbu $t6, 0x11($sp)
#  /* 0328B4 80031CB4 93A80010 */       lbu $t0, 0x10($sp)
#  /* 0328B8 80031CB8 240B0001 */     addiu $t3, $zero, 1
#  /* 0328BC 80031CBC 000E7A00 */       sll $t7, $t6, 8
#  /* 0328C0 80031CC0 01E8C025 */        or $t8, $t7, $t0
#  /* 0328C4 80031CC4 A4B80000 */        sh $t8, ($a1)
#  /* 0328C8 80031CC8 93B90012 */       lbu $t9, 0x12($sp)
#  /* 0328CC 80031CCC A0B90002 */        sb $t9, 2($a1)
#  /* 0328D0 80031CD0 8FAA0008 */        lw $t2, 8($sp)
#  /* 0328D4 80031CD4 93A90007 */       lbu $t1, 7($sp)
#  /* 0328D8 80031CD8 014B6004 */      sllv $t4, $t3, $t2
#  /* 0328DC 80031CDC 012C6825 */        or $t5, $t1, $t4
#  /* 0328E0 80031CE0 A3AD0007 */        sb $t5, 7($sp)
#  .L80031CE4:
#  /* 0328E4 80031CE4 8FAE0008 */        lw $t6, 8($sp)
#  /* 0328E8 80031CE8 3C19800A */       lui $t9, %hi(__osMaxControllers)
#  /* 0328EC 80031CEC 9339EFE1 */       lbu $t9, %lo(__osMaxControllers)($t9)
#  /* 0328F0 80031CF0 8FA80014 */        lw $t0, 0x14($sp)
#  /* 0328F4 80031CF4 25CF0001 */     addiu $t7, $t6, 1
#  /* 0328F8 80031CF8 01F9082A */       slt $at, $t7, $t9
#  /* 0328FC 80031CFC 25180008 */     addiu $t8, $t0, 8
#  /* 032900 80031D00 AFB80014 */        sw $t8, 0x14($sp)
#  /* 032904 80031D04 AFAF0008 */        sw $t7, 8($sp)
#  /* 032908 80031D08 1420FFDA */      bnez $at, .L80031C74
#  /* 03290C 80031D0C 24A50004 */     addiu $a1, $a1, 4
#  .L80031D10:
#  /* 032910 80031D10 93AB0007 */       lbu $t3, 7($sp)
#  /* 032914 80031D14 27BD0018 */     addiu $sp, $sp, 0x18
#  /* 032918 80031D18 03E00008 */        jr $ra
#  /* 03291C 80031D1C A08B0000 */        sb $t3, ($a0)
#
# func_80031D20
#glabel __osPackRequestData
#  /* 032920 80031D20 27BDFFF0 */     addiu $sp, $sp, -0x10
#  /* 032924 80031D24 308400FF */      andi $a0, $a0, 0xff
#  /* 032928 80031D28 AFA00000 */        sw $zero, ($sp)
#  .L80031D2C:
#  /* 03292C 80031D2C 8FAE0000 */        lw $t6, ($sp)
#  /* 032930 80031D30 8FB80000 */        lw $t8, ($sp)
#  /* 032934 80031D34 3C01800A */       lui $at, %hi(__osContPifRam)
#  /* 032938 80031D38 000E7880 */       sll $t7, $t6, 2
#  /* 03293C 80031D3C 002F0821 */      addu $at, $at, $t7
#  /* 032940 80031D40 AC20EFA0 */        sw $zero, %lo(__osContPifRam)($at)
#  /* 032944 80031D44 27190001 */     addiu $t9, $t8, 1
#  /* 032948 80031D48 2B21000F */      slti $at, $t9, 0xf
#  /* 03294C 80031D4C 1420FFF7 */      bnez $at, .L80031D2C
#  /* 032950 80031D50 AFB90000 */        sw $t9, ($sp)
#  /* 032954 80031D54 3C19800A */       lui $t9, %hi(__osMaxControllers)
#  /* 032958 80031D58 9339EFE1 */       lbu $t9, %lo(__osMaxControllers)($t9)
#  /* 03295C 80031D5C 3C09800A */       lui $t1, %hi(__osContPifRam)
#  /* 032960 80031D60 24080001 */     addiu $t0, $zero, 1
#  /* 032964 80031D64 3C01800A */       lui $at, %hi(D_8009EFDC)
#  /* 032968 80031D68 2529EFA0 */     addiu $t1, $t1, %lo(__osContPifRam)
#  /* 03296C 80031D6C 240A00FF */     addiu $t2, $zero, 0xff
#  /* 032970 80031D70 240B0001 */     addiu $t3, $zero, 1
#  /* 032974 80031D74 240C0003 */     addiu $t4, $zero, 3
#  /* 032978 80031D78 240D00FF */     addiu $t5, $zero, 0xff
#  /* 03297C 80031D7C 240E00FF */     addiu $t6, $zero, 0xff
#  /* 032980 80031D80 240F00FF */     addiu $t7, $zero, 0xff
#  /* 032984 80031D84 241800FF */     addiu $t8, $zero, 0xff
#  /* 032988 80031D88 AC28EFDC */        sw $t0, %lo(D_8009EFDC)($at)
#  /* 03298C 80031D8C AFA9000C */        sw $t1, 0xc($sp)
#  /* 032990 80031D90 A3AA0004 */        sb $t2, 4($sp)
#  /* 032994 80031D94 A3AB0005 */        sb $t3, 5($sp)
#  /* 032998 80031D98 A3AC0006 */        sb $t4, 6($sp)
#  /* 03299C 80031D9C A3A40007 */        sb $a0, 7($sp)
#  /* 0329A0 80031DA0 A3AD0008 */        sb $t5, 8($sp)
#  /* 0329A4 80031DA4 A3AE0009 */        sb $t6, 9($sp)
#  /* 0329A8 80031DA8 A3AF000A */        sb $t7, 0xa($sp)
#  /* 0329AC 80031DAC A3B8000B */        sb $t8, 0xb($sp)
#  /* 0329B0 80031DB0 1B200013 */      blez $t9, .L80031E00
#  /* 0329B4 80031DB4 AFA00000 */        sw $zero, ($sp)
#  .L80031DB8:
#  /* 0329B8 80031DB8 27A90004 */     addiu $t1, $sp, 4
#  /* 0329BC 80031DBC 8D210000 */        lw $at, ($t1) # __osContPifRam + 0
#  /* 0329C0 80031DC0 8FA8000C */        lw $t0, 0xc($sp)
#  /* 0329C4 80031DC4 3C18800A */       lui $t8, %hi(__osMaxControllers)
#  /* 0329C8 80031DC8 A9010000 */       swl $at, ($t0)
#  /* 0329CC 80031DCC B9010003 */       swr $at, 3($t0)
#  /* 0329D0 80031DD0 8D2B0004 */        lw $t3, 4($t1) # __osContPifRam + 4
#  /* 0329D4 80031DD4 A90B0004 */       swl $t3, 4($t0)
#  /* 0329D8 80031DD8 B90B0007 */       swr $t3, 7($t0)
#  /* 0329DC 80031DDC 8FAE0000 */        lw $t6, ($sp)
#  /* 0329E0 80031DE0 9318EFE1 */       lbu $t8, %lo(__osMaxControllers)($t8)
#  /* 0329E4 80031DE4 8FAC000C */        lw $t4, 0xc($sp)
#  /* 0329E8 80031DE8 25CF0001 */     addiu $t7, $t6, 1
#  /* 0329EC 80031DEC 01F8082A */       slt $at, $t7, $t8
#  /* 0329F0 80031DF0 258D0008 */     addiu $t5, $t4, 8
#  /* 0329F4 80031DF4 AFAF0000 */        sw $t7, ($sp)
#  /* 0329F8 80031DF8 1420FFEF */      bnez $at, .L80031DB8
#  /* 0329FC 80031DFC AFAD000C */        sw $t5, 0xc($sp)
#  .L80031E00:
#  /* 032A00 80031E00 8FAA000C */        lw $t2, 0xc($sp)
#  /* 032A04 80031E04 241900FE */     addiu $t9, $zero, 0xfe
#  /* 032A08 80031E08 27BD0010 */     addiu $sp, $sp, 0x10
#  /* 032A0C 80031E0C 03E00008 */        jr $ra
#  /* 032A10 80031E10 A1590000 */        sb $t9, ($t2)
#
#  /* 032A14 80031E14 00000000 */       nop 
#  /* 032A18 80031E18 00000000 */       nop 
#  /* 032A1C 80031E1C 00000000 */       nop 

# Likely start of new file
#glabel osCreateThread
#  /* 032A20 80031E20 27BDFFD8 */     addiu $sp, $sp, -0x28
#  /* 032A24 80031E24 AFA40028 */        sw $a0, 0x28($sp)
#  /* 032A28 80031E28 AFA5002C */        sw $a1, 0x2c($sp)
#  /* 032A2C 80031E2C 8FAE002C */        lw $t6, 0x2c($sp)
#  /* 032A30 80031E30 8FAF0028 */        lw $t7, 0x28($sp)
#  /* 032A34 80031E34 AFBF001C */        sw $ra, 0x1c($sp)
#  /* 032A38 80031E38 AFA60030 */        sw $a2, 0x30($sp)
#  /* 032A3C 80031E3C AFA70034 */        sw $a3, 0x34($sp)
#  /* 032A40 80031E40 AFB00018 */        sw $s0, 0x18($sp)
#  /* 032A44 80031E44 ADEE0014 */        sw $t6, 0x14($t7)
#  /* 032A48 80031E48 8FB90028 */        lw $t9, 0x28($sp)
#  /* 032A4C 80031E4C 8FB8003C */        lw $t8, 0x3c($sp)
#  /* 032A50 80031E50 AF380004 */        sw $t8, 4($t9)
#  /* 032A54 80031E54 8FA80028 */        lw $t0, 0x28($sp)
#  /* 032A58 80031E58 AD000000 */        sw $zero, ($t0)
#  /* 032A5C 80031E5C 8FA90028 */        lw $t1, 0x28($sp)
#  /* 032A60 80031E60 AD200008 */        sw $zero, 8($t1)
#  /* 032A64 80031E64 8FAB0028 */        lw $t3, 0x28($sp)
#  /* 032A68 80031E68 8FAA0030 */        lw $t2, 0x30($sp)
#  /* 032A6C 80031E6C AD6A011C */        sw $t2, 0x11c($t3)
#  /* 032A70 80031E70 8FAC0034 */        lw $t4, 0x34($sp)
#  /* 032A74 80031E74 8FAD0028 */        lw $t5, 0x28($sp)
#  /* 032A78 80031E78 01807825 */        or $t7, $t4, $zero
#  /* 032A7C 80031E7C 000C77C3 */       sra $t6, $t4, 0x1f
#  /* 032A80 80031E80 ADAE0038 */        sw $t6, 0x38($t5)
#  /* 032A84 80031E84 ADAF003C */        sw $t7, 0x3c($t5)
#  /* 032A88 80031E88 8FB80038 */        lw $t8, 0x38($sp)
#  /* 032A8C 80031E8C 8FB90028 */        lw $t9, 0x28($sp)
#  /* 032A90 80031E90 3C0C8003 */       lui $t4, %hi(__osCleanupThread)
#  /* 032A94 80031E94 03004825 */        or $t1, $t8, $zero
#  /* 032A98 80031E98 2D210010 */     sltiu $at, $t1, 0x10
#  /* 032A9C 80031E9C 001847C3 */       sra $t0, $t8, 0x1f
#  /* 032AA0 80031EA0 01015023 */      subu $t2, $t0, $at
#  /* 032AA4 80031EA4 252BFFF0 */     addiu $t3, $t1, -0x10
#  /* 032AA8 80031EA8 AF2B00F4 */        sw $t3, 0xf4($t9)
#  /* 032AAC 80031EAC AF2A00F0 */        sw $t2, 0xf0($t9)
#  /* 032AB0 80031EB0 8FAD0028 */        lw $t5, 0x28($sp)
#  /* 032AB4 80031EB4 258C1560 */     addiu $t4, $t4, %lo(__osCleanupThread)
#  /* 032AB8 80031EB8 01807825 */        or $t7, $t4, $zero
#  /* 032ABC 80031EBC 000C77C3 */       sra $t6, $t4, 0x1f
#  /* 032AC0 80031EC0 ADAE0100 */        sw $t6, 0x100($t5)
#  /* 032AC4 80031EC4 ADAF0104 */        sw $t7, 0x104($t5)
#  /* 032AC8 80031EC8 8FA90028 */        lw $t1, 0x28($sp)
#  /* 032ACC 80031ECC 3C18003F */       lui $t8, (0x3FFF01 >> 16) # 4194049
#  /* 032AD0 80031ED0 3718FF01 */       ori $t8, $t8, (0x3FFF01 & 0xFFFF) # 4194049
#  /* 032AD4 80031ED4 AFB80020 */        sw $t8, 0x20($sp)
#  /* 032AD8 80031ED8 3408FF03 */       ori $t0, $zero, 0xff03
#  /* 032ADC 80031EDC AD280118 */        sw $t0, 0x118($t1)
#  /* 032AE0 80031EE0 8FAA0020 */        lw $t2, 0x20($sp)
#  /* 032AE4 80031EE4 8FAC0028 */        lw $t4, 0x28($sp)
#  /* 032AE8 80031EE8 3C01003F */       lui $at, 0x3f
#  /* 032AEC 80031EEC 01415824 */       and $t3, $t2, $at
#  /* 032AF0 80031EF0 000BCC02 */       srl $t9, $t3, 0x10
#  /* 032AF4 80031EF4 AD990128 */        sw $t9, 0x128($t4)
#  /* 032AF8 80031EF8 8FAF0028 */        lw $t7, 0x28($sp)
#  /* 032AFC 80031EFC 3C0E0100 */       lui $t6, (0x1000800 >> 16) # 16779264
#  /* 032B00 80031F00 35CE0800 */       ori $t6, $t6, (0x1000800 & 0xFFFF) # 16779264
#  /* 032B04 80031F04 ADEE012C */        sw $t6, 0x12c($t7)
#  /* 032B08 80031F08 8FAD0028 */        lw $t5, 0x28($sp)
#  /* 032B0C 80031F0C 24180001 */     addiu $t8, $zero, 1
#  /* 032B10 80031F10 ADA00018 */        sw $zero, 0x18($t5)
#  /* 032B14 80031F14 8FA80028 */        lw $t0, 0x28($sp)
#  /* 032B18 80031F18 A5180010 */        sh $t8, 0x10($t0)
#  /* 032B1C 80031F1C 8FA90028 */        lw $t1, 0x28($sp)
#  /* 032B20 80031F20 0C00D608 */       jal __osDisableInt
#  /* 032B24 80031F24 A5200012 */        sh $zero, 0x12($t1)
#  /* 032B28 80031F28 3C0A8004 */       lui $t2, %hi(__osActiveQueue)
#  /* 032B2C 80031F2C 8D4AD3BC */        lw $t2, %lo(__osActiveQueue)($t2)
#  /* 032B30 80031F30 8FAB0028 */        lw $t3, 0x28($sp)
#  /* 032B34 80031F34 00408025 */        or $s0, $v0, $zero
#  /* 032B38 80031F38 3C018004 */       lui $at, %hi(__osActiveQueue)
#  /* 032B3C 80031F3C AD6A000C */        sw $t2, 0xc($t3)
#  /* 032B40 80031F40 8FB90028 */        lw $t9, 0x28($sp)
#  /* 032B44 80031F44 02002025 */        or $a0, $s0, $zero
#  /* 032B48 80031F48 0C00D610 */       jal __osRestoreInt
#  /* 032B4C 80031F4C AC39D3BC */        sw $t9, %lo(__osActiveQueue)($at)
#  /* 032B50 80031F50 8FBF001C */        lw $ra, 0x1c($sp)
#  /* 032B54 80031F54 8FB00018 */        lw $s0, 0x18($sp)
#  /* 032B58 80031F58 27BD0028 */     addiu $sp, $sp, 0x28
#  /* 032B5C 80031F5C 03E00008 */        jr $ra
#  /* 032B60 80031F60 00000000 */       nop 
#
#  /* 032B64 80031F64 00000000 */       nop 
#  /* 032B68 80031F68 00000000 */       nop 
#  /* 032B6C 80031F6C 00000000 */       nop 



# Likely start of new file
#glabel osVirtualToPhysical
#  /* 032D50 80032150 27BDFFE8 */     addiu $sp, $sp, -0x18
#  /* 032D54 80032154 AFA40018 */        sw $a0, 0x18($sp)
#  /* 032D58 80032158 8FAE0018 */        lw $t6, 0x18($sp)
#  /* 032D5C 8003215C 3C018000 */       lui $at, 0x8000
#  /* 032D60 80032160 AFBF0014 */        sw $ra, 0x14($sp)
#  /* 032D64 80032164 01C1082B */      sltu $at, $t6, $at
#  /* 032D68 80032168 14200007 */      bnez $at, .L80032188
#  /* 032D6C 8003216C 3C01A000 */       lui $at, 0xa000
#  /* 032D70 80032170 01C1082B */      sltu $at, $t6, $at
#  /* 032D74 80032174 10200004 */      beqz $at, .L80032188
#  /* 032D78 80032178 3C011FFF */       lui $at, (0x1FFFFFFF >> 16) # 536870911
#  /* 032D7C 8003217C 3421FFFF */       ori $at, $at, (0x1FFFFFFF & 0xFFFF) # 536870911
#  /* 032D80 80032180 1000000E */         b .L800321BC
#  /* 032D84 80032184 01C11024 */       and $v0, $t6, $at
#  .L80032188:
#  /* 032D88 80032188 8FAF0018 */        lw $t7, 0x18($sp)
#  /* 032D8C 8003218C 3C01A000 */       lui $at, 0xa000
#  /* 032D90 80032190 01E1082B */      sltu $at, $t7, $at
#  /* 032D94 80032194 14200007 */      bnez $at, .L800321B4
#  /* 032D98 80032198 3C01C000 */       lui $at, 0xc000
#  /* 032D9C 8003219C 01E1082B */      sltu $at, $t7, $at
#  /* 032DA0 800321A0 10200004 */      beqz $at, .L800321B4
#  /* 032DA4 800321A4 3C011FFF */       lui $at, (0x1FFFFFFF >> 16) # 536870911
#  /* 032DA8 800321A8 3421FFFF */       ori $at, $at, (0x1FFFFFFF & 0xFFFF) # 536870911
#  /* 032DAC 800321AC 10000003 */         b .L800321BC
#  /* 032DB0 800321B0 01E11024 */       and $v0, $t7, $at
#  .L800321B4:
#  /* 032DB4 800321B4 0C00CB08 */       jal __osProbeTLB
#  /* 032DB8 800321B8 8FA40018 */        lw $a0, 0x18($sp)
#  .L800321BC:
#  /* 032DBC 800321BC 8FBF0014 */        lw $ra, 0x14($sp)
#  /* 032DC0 800321C0 27BD0018 */     addiu $sp, $sp, 0x18
#  /* 032DC4 800321C4 03E00008 */        jr $ra
#  /* 032DC8 800321C8 00000000 */       nop 
#
#  /* 032DCC 800321CC 00000000 */       nop 

# Likely start of new file
#glabel osWritebackDCache
#  /* 032DD0 800321D0 18A00011 */      blez $a1, .L80032218
#  /* 032DD4 800321D4 00000000 */       nop 
#  /* 032DD8 800321D8 240B2000 */     addiu $t3, $zero, 0x2000
#  /* 032DDC 800321DC 00AB082B */      sltu $at, $a1, $t3
#  /* 032DE0 800321E0 1020000F */      beqz $at, .L80032220
#  /* 032DE4 800321E4 00000000 */       nop 
#  /* 032DE8 800321E8 00804025 */        or $t0, $a0, $zero
#  /* 032DEC 800321EC 00854821 */      addu $t1, $a0, $a1
#  /* 032DF0 800321F0 0109082B */      sltu $at, $t0, $t1
#  /* 032DF4 800321F4 10200008 */      beqz $at, .L80032218
#  /* 032DF8 800321F8 00000000 */       nop 
#  /* 032DFC 800321FC 310A000F */      andi $t2, $t0, 0xf
#  /* 032E00 80032200 2529FFF0 */     addiu $t1, $t1, -0x10
#  /* 032E04 80032204 010A4023 */      subu $t0, $t0, $t2
#  .L80032208:
#  /* 032E08 80032208 BD190000 */     cache 0x19, ($t0)
#  /* 032E0C 8003220C 0109082B */      sltu $at, $t0, $t1
#  /* 032E10 80032210 1420FFFD */      bnez $at, .L80032208
#  /* 032E14 80032214 25080010 */     addiu $t0, $t0, 0x10
#  .L80032218:
#  /* 032E18 80032218 03E00008 */        jr $ra
#  /* 032E1C 8003221C 00000000 */       nop 
#
#  .L80032220:
#  /* 032E20 80032220 3C088000 */       lui $t0, %hi(D_NF_80000010)
#  /* 032E24 80032224 010B4821 */      addu $t1, $t0, $t3
#  /* 032E28 80032228 2529FFF0 */     addiu $t1, $t1, -0x10
#  .L8003222C:
#  /* 032E2C 8003222C BD010000 */     cache 1, ($t0)
#  /* 032E30 80032230 0109082B */      sltu $at, $t0, $t1
#  /* 032E34 80032234 1420FFFD */      bnez $at, .L8003222C
#  /* 032E38 80032238 25080010 */     addiu $t0, $t0, %lo(D_NF_80000010)
#  /* 032E3C 8003223C 03E00008 */        jr $ra
#  /* 032E40 80032240 00000000 */       nop 
#
#  /* 032E44 80032244 00000000 */       nop 
#  /* 032E48 80032248 00000000 */       nop 
#  /* 032E4C 8003224C 00000000 */       nop 

# Likely start of new file
#glabel osInitialize
#  /* 032E50 80032250 27BDFFC8 */     addiu $sp, $sp, -0x38
#  /* 032E54 80032254 AFBF001C */        sw $ra, 0x1c($sp)
#  /* 032E58 80032258 240E0001 */     addiu $t6, $zero, 1
#  /* 032E5C 8003225C 3C01800A */       lui $at, %hi(D_8009F030)
#  /* 032E60 80032260 AFB00018 */        sw $s0, 0x18($sp)
#  /* 032E64 80032264 AFA00030 */        sw $zero, 0x30($sp)
#  /* 032E68 80032268 0C00C9A0 */       jal __osGetSR
#  /* 032E6C 8003226C AC2EF030 */        sw $t6, %lo(D_8009F030)($at)
#  /* 032E70 80032270 00408025 */        or $s0, $v0, $zero
#  /* 032E74 80032274 3C012000 */       lui $at, 0x2000
#  /* 032E78 80032278 0C00C99C */       jal __osSetSR
#  /* 032E7C 8003227C 02012025 */        or $a0, $s0, $at
#  /* 032E80 80032280 3C040100 */       lui $a0, (0x1000800 >> 16) # 16779264
#  /* 032E84 80032284 0C00D850 */       jal __osSetFpcCsr
#  /* 032E88 80032288 34840800 */       ori $a0, $a0, (0x1000800 & 0xFFFF) # 16779264
#  /* 032E8C 8003228C 3C041FC0 */       lui $a0, (0x1FC007FC >> 16) # 532678652
#  /* 032E90 80032290 348407FC */       ori $a0, $a0, (0x1FC007FC & 0xFFFF) # 532678652
#  /* 032E94 80032294 0C00CA34 */       jal __osSpRawReadIo
#  /* 032E98 80032298 27A50034 */     addiu $a1, $sp, 0x34
#  /* 032E9C 8003229C 10400007 */      beqz $v0, .L800322BC
#  /* 032EA0 800322A0 00000000 */       nop 
#  .L800322A4:
#  /* 032EA4 800322A4 3C041FC0 */       lui $a0, (0x1FC007FC >> 16) # 532678652
#  /* 032EA8 800322A8 348407FC */       ori $a0, $a0, (0x1FC007FC & 0xFFFF) # 532678652
#  /* 032EAC 800322AC 0C00CA34 */       jal __osSpRawReadIo
#  /* 032EB0 800322B0 27A50034 */     addiu $a1, $sp, 0x34
#  /* 032EB4 800322B4 1440FFFB */      bnez $v0, .L800322A4
#  /* 032EB8 800322B8 00000000 */       nop 
#  .L800322BC:
#  /* 032EBC 800322BC 8FA50034 */        lw $a1, 0x34($sp)
#  /* 032EC0 800322C0 3C041FC0 */       lui $a0, (0x1FC007FC >> 16) # 532678652
#  /* 032EC4 800322C4 348407FC */       ori $a0, $a0, (0x1FC007FC & 0xFFFF) # 532678652
#  /* 032EC8 800322C8 34AF0008 */       ori $t7, $a1, 8
#  /* 032ECC 800322CC 0C00E338 */       jal __osSpRawWriteIo
#  /* 032ED0 800322D0 01E02825 */        or $a1, $t7, $zero
#  /* 032ED4 800322D4 10400009 */      beqz $v0, .L800322FC
#  /* 032ED8 800322D8 00000000 */       nop 
#  .L800322DC:
#  /* 032EDC 800322DC 8FA50034 */        lw $a1, 0x34($sp)
#  /* 032EE0 800322E0 3C041FC0 */       lui $a0, (0x1FC007FC >> 16) # 532678652
#  /* 032EE4 800322E4 348407FC */       ori $a0, $a0, (0x1FC007FC & 0xFFFF) # 532678652
#  /* 032EE8 800322E8 34B80008 */       ori $t8, $a1, 8
#  /* 032EEC 800322EC 0C00E338 */       jal __osSpRawWriteIo
#  /* 032EF0 800322F0 03002825 */        or $a1, $t8, $zero
#  /* 032EF4 800322F4 1440FFF9 */      bnez $v0, .L800322DC
#  /* 032EF8 800322F8 00000000 */       nop 
#  .L800322FC:
#  /* 032EFC 800322FC 3C088003 */       lui $t0, %hi(__osExceptionPreamble)
#  /* 032F00 80032300 25080C70 */     addiu $t0, $t0, %lo(__osExceptionPreamble)
#  /* 032F04 80032304 8D010000 */        lw $at, ($t0) # __osExceptionPreamble + 0
#  /* 032F08 80032308 3C198000 */       lui $t9, %hi(D_NF_8000000C)
#  /* 032F0C 8003230C 3C0D8003 */       lui $t5, %hi(__osExceptionPreamble)
#  /* 032F10 80032310 AF210000 */        sw $at, %lo(D_NF_80000000)($t9)
#  /* 032F14 80032314 8D0B0004 */        lw $t3, 4($t0) # __osExceptionPreamble + 4
#  /* 032F18 80032318 25AD0C70 */     addiu $t5, $t5, %lo(__osExceptionPreamble)
#  /* 032F1C 8003231C 3C0C8000 */       lui $t4, (0x80000080 >> 16) # 2147483776
#  /* 032F20 80032320 AF2B0004 */        sw $t3, %lo(D_NF_80000004)($t9)
#  /* 032F24 80032324 8D010008 */        lw $at, 8($t0) # __osExceptionPreamble + 8
#  /* 032F28 80032328 358C0080 */       ori $t4, $t4, (0x80000080 & 0xFFFF) # 2147483776
#  /* 032F2C 8003232C 3C098003 */       lui $t1, %hi(__osExceptionPreamble)
#  /* 032F30 80032330 AF210008 */        sw $at, %lo(D_NF_80000008)($t9)
#  /* 032F34 80032334 8D0B000C */        lw $t3, 0xc($t0) # __osExceptionPreamble + 12
#  /* 032F38 80032338 25290C70 */     addiu $t1, $t1, %lo(__osExceptionPreamble)
#  /* 032F3C 8003233C 3C0A8000 */       lui $t2, (0x80000100 >> 16) # 2147483904
#  /* 032F40 80032340 AF2B000C */        sw $t3, %lo(D_NF_8000000C)($t9)
#  /* 032F44 80032344 8DA10000 */        lw $at, ($t5) # __osExceptionPreamble + 0
#  /* 032F48 80032348 354A0100 */       ori $t2, $t2, (0x80000100 & 0xFFFF) # 2147483904
#  /* 032F4C 8003234C 3C0E8003 */       lui $t6, %hi(__osExceptionPreamble)
#  /* 032F50 80032350 AD810000 */        sw $at, ($t4) # D_NF_80000080 + 0
#  /* 032F54 80032354 8DB80004 */        lw $t8, 4($t5) # __osExceptionPreamble + 4
#  /* 032F58 80032358 25CE0C70 */     addiu $t6, $t6, %lo(__osExceptionPreamble)
#  /* 032F5C 8003235C 3C0F8000 */       lui $t7, (0x80000180 >> 16) # 2147484032
#  /* 032F60 80032360 AD980004 */        sw $t8, 4($t4) # D_NF_80000080 + 4
#  /* 032F64 80032364 8DA10008 */        lw $at, 8($t5) # __osExceptionPreamble + 8
#  /* 032F68 80032368 35EF0180 */       ori $t7, $t7, (0x80000180 & 0xFFFF) # 2147484032
#  /* 032F6C 8003236C 3C048000 */       lui $a0, 0x8000
#  /* 032F70 80032370 AD810008 */        sw $at, 8($t4) # D_NF_80000080 + 8
#  /* 032F74 80032374 8DB8000C */        lw $t8, 0xc($t5) # __osExceptionPreamble + 12
#  /* 032F78 80032378 24050190 */     addiu $a1, $zero, 0x190
#  /* 032F7C 8003237C AD98000C */        sw $t8, 0xc($t4) # D_NF_80000080 + 12
#  /* 032F80 80032380 8D210000 */        lw $at, ($t1) # __osExceptionPreamble + 0
#  /* 032F84 80032384 AD410000 */        sw $at, ($t2) # D_NF_80000100 + 0
#  /* 032F88 80032388 8D2B0004 */        lw $t3, 4($t1) # __osExceptionPreamble + 4
#  /* 032F8C 8003238C AD4B0004 */        sw $t3, 4($t2) # D_NF_80000100 + 4
#  /* 032F90 80032390 8D210008 */        lw $at, 8($t1) # __osExceptionPreamble + 8
#  /* 032F94 80032394 AD410008 */        sw $at, 8($t2) # D_NF_80000100 + 8
#  /* 032F98 80032398 8D2B000C */        lw $t3, 0xc($t1) # __osExceptionPreamble + 12
#  /* 032F9C 8003239C AD4B000C */        sw $t3, 0xc($t2) # D_NF_80000100 + 12
#  /* 032FA0 800323A0 8DC10000 */        lw $at, ($t6) # __osExceptionPreamble + 0
#  /* 032FA4 800323A4 ADE10000 */        sw $at, ($t7) # D_NF_80000180 + 0
#  /* 032FA8 800323A8 8DD80004 */        lw $t8, 4($t6) # __osExceptionPreamble + 4
#  /* 032FAC 800323AC ADF80004 */        sw $t8, 4($t7) # D_NF_80000180 + 4
#  /* 032FB0 800323B0 8DC10008 */        lw $at, 8($t6) # __osExceptionPreamble + 8
#  /* 032FB4 800323B4 ADE10008 */        sw $at, 8($t7) # D_NF_80000180 + 8
#  /* 032FB8 800323B8 8DD8000C */        lw $t8, 0xc($t6) # __osExceptionPreamble + 12
#  /* 032FBC 800323BC 0C00C874 */       jal osWritebackDCache
#  /* 032FC0 800323C0 ADF8000C */        sw $t8, 0xc($t7) # D_NF_80000180 + 12
#  /* 032FC4 800323C4 3C048000 */       lui $a0, 0x8000
#  /* 032FC8 800323C8 0C00D12C */       jal osInvalICache
#  /* 032FCC 800323CC 24050190 */     addiu $a1, $zero, 0x190
#  /* 032FD0 800323D0 0C00C944 */       jal __createSpeedParam
#  /* 032FD4 800323D4 00000000 */       nop 
#  /* 032FD8 800323D8 0C00D0AC */       jal osUnmapTLBAll
#  /* 032FDC 800323DC 00000000 */       nop 
#  /* 032FE0 800323E0 0C00D8AC */       jal osMapTLBRdb
#  /* 032FE4 800323E4 00000000 */       nop 
#  /* 032FE8 800323E8 24040004 */     addiu $a0, $zero, 4
#  /* 032FEC 800323EC 0C00C96C */       jal osPiRawReadIo
#  /* 032FF0 800323F0 27A50030 */     addiu $a1, $sp, 0x30
#  /* 032FF4 800323F4 8FA80030 */        lw $t0, 0x30($sp)
#  /* 032FF8 800323F8 2401FFF0 */     addiu $at, $zero, -0x10
#  /* 032FFC 800323FC 0101C824 */       and $t9, $t0, $at
#  /* 033000 80032400 13200006 */      beqz $t9, .L8003241C
#  /* 033004 80032404 AFB90030 */        sw $t9, 0x30($sp)
#  /* 033008 80032408 3C018004 */       lui $at, %hi(D_8003D3F4)
#  /* 03300C 8003240C 03205825 */        or $t3, $t9, $zero
#  /* 033010 80032410 240A0000 */     addiu $t2, $zero, 0
#  /* 033014 80032414 AC2AD3F0 */        sw $t2, %lo(osClockRate)($at)
#  /* 033018 80032418 AC2BD3F4 */        sw $t3, %lo(D_8003D3F4)($at)
#  .L8003241C:
#  /* 03301C 8003241C 3C048004 */       lui $a0, %hi(osClockRate)
#  /* 033020 80032420 3C058004 */       lui $a1, %hi(D_8003D3F4)
#  /* 033024 80032424 8CA5D3F4 */        lw $a1, %lo(D_8003D3F4)($a1)
#  /* 033028 80032428 8C84D3F0 */        lw $a0, %lo(osClockRate)($a0)
#  /* 03302C 8003242C 24060000 */     addiu $a2, $zero, 0
#  /* 033030 80032430 0C00C2C6 */       jal __ll_mul
#  /* 033034 80032434 24070003 */     addiu $a3, $zero, 3
#  /* 033038 80032438 AFA20020 */        sw $v0, 0x20($sp)
#  /* 03303C 8003243C AFA30024 */        sw $v1, 0x24($sp)
#  /* 033040 80032440 8FA50024 */        lw $a1, 0x24($sp)
#  /* 033044 80032444 8FA40020 */        lw $a0, 0x20($sp)
#  /* 033048 80032448 24060000 */     addiu $a2, $zero, 0
#  /* 03304C 8003244C 0C00C286 */       jal __ull_div
#  /* 033050 80032450 24070004 */     addiu $a3, $zero, 4
#  /* 033054 80032454 3C098000 */       lui $t1, %hi(D_NF_8000030C)
#  /* 033058 80032458 8D29030C */        lw $t1, %lo(D_NF_8000030C)($t1)
#  /* 03305C 8003245C 3C018004 */       lui $at, %hi(D_8003D3F4)
#  /* 033060 80032460 AC22D3F0 */        sw $v0, %lo(osClockRate)($at)
#  /* 033064 80032464 15200005 */      bnez $t1, .L8003247C
#  /* 033068 80032468 AC23D3F4 */        sw $v1, %lo(D_8003D3F4)($at)
#  /* 03306C 8003246C 3C048000 */       lui $a0, %hi(D_NF_8000031C)
#  /* 033070 80032470 2484031C */     addiu $a0, $a0, %lo(D_NF_8000031C)
#  /* 033074 80032474 0C00C56C */       jal _bzero
#  /* 033078 80032478 24050040 */     addiu $a1, $zero, 0x40
#  .L8003247C:
#  /* 03307C 8003247C 3C0D8000 */       lui $t5, %hi(osTvType)
#  /* 033080 80032480 8DAD0300 */        lw $t5, %lo(osTvType)($t5)
#  /* 033084 80032484 15A00006 */      bnez $t5, .L800324A0
#  /* 033088 80032488 00000000 */       nop 
#  /* 03308C 8003248C 3C0C02F5 */       lui $t4, (0x2F5B2D2 >> 16) # 49656530
#  /* 033090 80032490 358CB2D2 */       ori $t4, $t4, (0x2F5B2D2 & 0xFFFF) # 49656530
#  /* 033094 80032494 3C018004 */       lui $at, %hi(osViClock)
#  /* 033098 80032498 1000000F */         b .L800324D8
#  /* 03309C 8003249C AC2CD3F8 */        sw $t4, %lo(osViClock)($at)
#  .L800324A0:
#  /* 0330A0 800324A0 3C0F8000 */       lui $t7, %hi(osTvType)
#  /* 0330A4 800324A4 8DEF0300 */        lw $t7, %lo(osTvType)($t7)
#  /* 0330A8 800324A8 24010002 */     addiu $at, $zero, 2
#  /* 0330AC 800324AC 15E10006 */       bne $t7, $at, .L800324C8
#  /* 0330B0 800324B0 00000000 */       nop 
#  /* 0330B4 800324B4 3C0E02E6 */       lui $t6, (0x2E6025C >> 16) # 48628316
#  /* 0330B8 800324B8 35CE025C */       ori $t6, $t6, (0x2E6025C & 0xFFFF) # 48628316
#  /* 0330BC 800324BC 3C018004 */       lui $at, %hi(osViClock)
#  /* 0330C0 800324C0 10000005 */         b .L800324D8
#  /* 0330C4 800324C4 AC2ED3F8 */        sw $t6, %lo(osViClock)($at)
#  .L800324C8:
#  /* 0330C8 800324C8 3C1802E6 */       lui $t8, (0x2E6D354 >> 16) # 48681812
#  /* 0330CC 800324CC 3718D354 */       ori $t8, $t8, (0x2E6D354 & 0xFFFF) # 48681812
#  /* 0330D0 800324D0 3C018004 */       lui $at, %hi(osViClock)
#  /* 0330D4 800324D4 AC38D3F8 */        sw $t8, %lo(osViClock)($at)
#  .L800324D8:
#  /* 0330D8 800324D8 24080001 */     addiu $t0, $zero, 1
#  /* 0330DC 800324DC 3C19A450 */       lui $t9, %hi(AI_CONTROL_REG)
#  /* 0330E0 800324E0 AF280008 */        sw $t0, %lo(AI_CONTROL_REG)($t9)
#  /* 0330E4 800324E4 240A3FFF */     addiu $t2, $zero, 0x3fff
#  /* 0330E8 800324E8 3C0BA450 */       lui $t3, %hi(AI_DACRATE_REG)
#  /* 0330EC 800324EC AD6A0010 */        sw $t2, %lo(AI_DACRATE_REG)($t3)
#  /* 0330F0 800324F0 2409000F */     addiu $t1, $zero, 0xf
#  /* 0330F4 800324F4 3C0DA450 */       lui $t5, %hi(AI_BITRATE_REG)
#  /* 0330F8 800324F8 ADA90014 */        sw $t1, %lo(AI_BITRATE_REG)($t5)
#  /* 0330FC 800324FC 8FBF001C */        lw $ra, 0x1c($sp)
#  /* 033100 80032500 8FB00018 */        lw $s0, 0x18($sp)
#  /* 033104 80032504 27BD0038 */     addiu $sp, $sp, 0x38
#  /* 033108 80032508 03E00008 */        jr $ra
#  /* 03310C 8003250C 00000000 */       nop 
