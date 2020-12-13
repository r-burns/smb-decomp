.include "macros.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text

.align 4

# Likely start of new file
#glabel osPiRawReadIo
#  /* 0331B0 800325B0 3C0EA460 */       lui $t6, %hi(PI_STATUS_REG)
#  /* 0331B4 800325B4 8DC60010 */        lw $a2, %lo(PI_STATUS_REG)($t6)
#  /* 0331B8 800325B8 27BDFFF8 */     addiu $sp, $sp, -8
#  /* 0331BC 800325BC 30CF0003 */      andi $t7, $a2, 3
#  /* 0331C0 800325C0 11E00006 */      beqz $t7, .L800325DC
#  /* 0331C4 800325C4 00000000 */       nop 
#  .L800325C8:
#  /* 0331C8 800325C8 3C18A460 */       lui $t8, %hi(PI_STATUS_REG)
#  /* 0331CC 800325CC 8F060010 */        lw $a2, %lo(PI_STATUS_REG)($t8)
#  /* 0331D0 800325D0 30D90003 */      andi $t9, $a2, 3
#  /* 0331D4 800325D4 1720FFFC */      bnez $t9, .L800325C8
#  /* 0331D8 800325D8 00000000 */       nop 
#  .L800325DC:
#  /* 0331DC 800325DC 3C088000 */       lui $t0, %hi(D_NF_80000308)
#  /* 0331E0 800325E0 8D080308 */        lw $t0, %lo(D_NF_80000308)($t0)
#  /* 0331E4 800325E4 3C01A000 */       lui $at, 0xa000
#  /* 0331E8 800325E8 00001025 */        or $v0, $zero, $zero
#  /* 0331EC 800325EC 01044825 */        or $t1, $t0, $a0
#  /* 0331F0 800325F0 01215025 */        or $t2, $t1, $at
#  /* 0331F4 800325F4 8D4B0000 */        lw $t3, ($t2)
#  /* 0331F8 800325F8 27BD0008 */     addiu $sp, $sp, 8
#  /* 0331FC 800325FC 03E00008 */        jr $ra
#  /* 033200 80032600 ACAB0000 */        sw $t3, ($a1)
#
#  /* 033204 80032604 00000000 */       nop 
#  /* 033208 80032608 00000000 */       nop 
#  /* 03320C 8003260C 00000000 */       nop 

# Likely start of new file
#glabel __osSetSR
#  /* 033270 80032670 40846000 */      mtc0 $a0, $12
#  /* 033274 80032674 00000000 */       nop 
#  /* 033278 80032678 03E00008 */        jr $ra
#  /* 03327C 8003267C 00000000 */       nop 
#
#glabel __osGetSR
#  /* 033280 80032680 40026000 */      mfc0 $v0, $12
#  /* 033284 80032684 03E00008 */        jr $ra
#  /* 033288 80032688 00000000 */       nop 
#
#  /* 03328C 8003268C 00000000 */       nop 

# Likely start of new file
# originally "osViGetCurrentFramebuffer"; this seems to be the next based on pointer location
#glabel osViGetNextFramebuffer
#  /* 033290 80032690 27BDFFD8 */     addiu $sp, $sp, -0x28
#  /* 033294 80032694 AFBF001C */        sw $ra, 0x1c($sp)
#  /* 033298 80032698 0C00D608 */       jal __osDisableInt
#  /* 03329C 8003269C AFB00018 */        sw $s0, 0x18($sp)
#  /* 0332A0 800326A0 3C0E8004 */       lui $t6, %hi(__osViNext)
#  /* 0332A4 800326A4 8DCED5B4 */        lw $t6, %lo(__osViNext)($t6)
#  /* 0332A8 800326A8 00408025 */        or $s0, $v0, $zero
#  /* 0332AC 800326AC 02002025 */        or $a0, $s0, $zero
#  /* 0332B0 800326B0 8DCF0004 */        lw $t7, 4($t6)
#  /* 0332B4 800326B4 0C00D610 */       jal __osRestoreInt
#  /* 0332B8 800326B8 AFAF0020 */        sw $t7, 0x20($sp)
#  /* 0332BC 800326BC 8FBF001C */        lw $ra, 0x1c($sp)
#  /* 0332C0 800326C0 8FA20020 */        lw $v0, 0x20($sp)
#  /* 0332C4 800326C4 8FB00018 */        lw $s0, 0x18($sp)
#  /* 0332C8 800326C8 03E00008 */        jr $ra
#  /* 0332CC 800326CC 27BD0028 */     addiu $sp, $sp, 0x28

#glabel __osSpRawStartDma
#  /* 0332D0 800326D0 27BDFFE8 */     addiu $sp, $sp, -0x18
#  /* 0332D4 800326D4 AFBF0014 */        sw $ra, 0x14($sp)
#  /* 0332D8 800326D8 AFA40018 */        sw $a0, 0x18($sp)
#  /* 0332DC 800326DC AFA5001C */        sw $a1, 0x1c($sp)
#  /* 0332E0 800326E0 AFA60020 */        sw $a2, 0x20($sp)
#  /* 0332E4 800326E4 0C00D178 */       jal __osSpDeviceBusy
#  /* 0332E8 800326E8 AFA70024 */        sw $a3, 0x24($sp)
#  /* 0332EC 800326EC 10400003 */      beqz $v0, .L800326FC
#  /* 0332F0 800326F0 00000000 */       nop 
#  /* 0332F4 800326F4 10000015 */         b .L8003274C
#  /* 0332F8 800326F8 2402FFFF */     addiu $v0, $zero, -1
#  .L800326FC:
#  /* 0332FC 800326FC 8FAE001C */        lw $t6, 0x1c($sp)
#  /* 033300 80032700 3C0FA404 */       lui $t7, %hi(SP_MEM_ADDR_REG)
#  /* 033304 80032704 ADEE0000 */        sw $t6, %lo(SP_MEM_ADDR_REG)($t7)
#  /* 033308 80032708 0C00C854 */       jal osVirtualToPhysical
#  /* 03330C 8003270C 8FA40020 */        lw $a0, 0x20($sp)
#  /* 033310 80032710 3C18A404 */       lui $t8, %hi(SP_DRAM_ADDR_REG)
#  /* 033314 80032714 AF020004 */        sw $v0, %lo(SP_DRAM_ADDR_REG)($t8)
#  /* 033318 80032718 8FB90018 */        lw $t9, 0x18($sp)
#  /* 03331C 8003271C 17200006 */      bnez $t9, .L80032738
#  /* 033320 80032720 00000000 */       nop 
#  /* 033324 80032724 8FA80024 */        lw $t0, 0x24($sp)
#  /* 033328 80032728 3C0AA404 */       lui $t2, %hi(SP_WR_LEN_REG)
#  /* 03332C 8003272C 2509FFFF */     addiu $t1, $t0, -1
#  /* 033330 80032730 10000005 */         b .L80032748
#  /* 033334 80032734 AD49000C */        sw $t1, %lo(SP_WR_LEN_REG)($t2)
#  .L80032738:
#  /* 033338 80032738 8FAB0024 */        lw $t3, 0x24($sp)
#  /* 03333C 8003273C 3C0DA404 */       lui $t5, %hi(SP_RD_LEN_REG)
#  /* 033340 80032740 256CFFFF */     addiu $t4, $t3, -1
#  /* 033344 80032744 ADAC0008 */        sw $t4, %lo(SP_RD_LEN_REG)($t5)
#  .L80032748:
#  /* 033348 80032748 00001025 */        or $v0, $zero, $zero
#  .L8003274C:
#  /* 03334C 8003274C 8FBF0014 */        lw $ra, 0x14($sp)
#  /* 033350 80032750 27BD0018 */     addiu $sp, $sp, 0x18
#  /* 033354 80032754 03E00008 */        jr $ra
#  /* 033358 80032758 00000000 */       nop 
#
#  /* 03335C 8003275C 00000000 */       nop 

# Likely start of new file
#glabel __osSiRawStartDma
#  /* 033360 80032760 27BDFFE8 */     addiu $sp, $sp, -0x18
#  /* 033364 80032764 AFBF0014 */        sw $ra, 0x14($sp)
#  /* 033368 80032768 AFA5001C */        sw $a1, 0x1c($sp)
#  /* 03336C 8003276C 3C0EA480 */       lui $t6, %hi(SI_STATUS_REG)
#  /* 033370 80032770 8DCF0018 */        lw $t7, %lo(SI_STATUS_REG)($t6)
#  /* 033374 80032774 00803025 */        or $a2, $a0, $zero
#  /* 033378 80032778 24010001 */     addiu $at, $zero, 1
#  /* 03337C 8003277C 31F80003 */      andi $t8, $t7, 3
#  /* 033380 80032780 13000003 */      beqz $t8, .L80032790
#  /* 033384 80032784 00000000 */       nop 
#  /* 033388 80032788 1000001C */         b .L800327FC
#  /* 03338C 8003278C 2402FFFF */     addiu $v0, $zero, -1
#  .L80032790:
#  /* 033390 80032790 14C10005 */       bne $a2, $at, .L800327A8
#  /* 033394 80032794 8FA4001C */        lw $a0, 0x1c($sp)
#  /* 033398 80032798 24050040 */     addiu $a1, $zero, 0x40
#  /* 03339C 8003279C 0C00C874 */       jal osWritebackDCache
#  /* 0333A0 800327A0 AFA60018 */        sw $a2, 0x18($sp)
#  /* 0333A4 800327A4 8FA60018 */        lw $a2, 0x18($sp)
#  .L800327A8:
#  /* 0333A8 800327A8 8FA4001C */        lw $a0, 0x1c($sp)
#  /* 0333AC 800327AC 0C00C854 */       jal osVirtualToPhysical
#  /* 0333B0 800327B0 AFA60018 */        sw $a2, 0x18($sp)
#  /* 0333B4 800327B4 8FA60018 */        lw $a2, 0x18($sp)
#  /* 0333B8 800327B8 3C19A480 */       lui $t9, %hi(SI_DRAM_ADDR_REG)
#  /* 0333BC 800327BC AF220000 */        sw $v0, %lo(SI_DRAM_ADDR_REG)($t9)
#  /* 0333C0 800327C0 14C00006 */      bnez $a2, .L800327DC
#  /* 0333C4 800327C4 3C0A1FC0 */       lui $t2, (0x1FC007C0 >> 16) # 532678592
#  /* 0333C8 800327C8 3C081FC0 */       lui $t0, (0x1FC007C0 >> 16) # 532678592
#  /* 0333CC 800327CC 350807C0 */       ori $t0, $t0, (0x1FC007C0 & 0xFFFF) # 532678592
#  /* 0333D0 800327D0 3C09A480 */       lui $t1, %hi(SI_PIF_ADDR_RD64B_REG)
#  /* 0333D4 800327D4 10000004 */         b .L800327E8
#  /* 0333D8 800327D8 AD280004 */        sw $t0, %lo(SI_PIF_ADDR_RD64B_REG)($t1)
#  .L800327DC:
#  /* 0333DC 800327DC 354A07C0 */       ori $t2, $t2, (0x1FC007C0 & 0xFFFF) # 532678592
#  /* 0333E0 800327E0 3C0BA480 */       lui $t3, %hi(SI_PIF_ADDR_WR64B_REG)
#  /* 0333E4 800327E4 AD6A0010 */        sw $t2, %lo(SI_PIF_ADDR_WR64B_REG)($t3)
#  .L800327E8:
#  /* 0333E8 800327E8 14C00003 */      bnez $a2, .L800327F8
#  /* 0333EC 800327EC 8FA4001C */        lw $a0, 0x1c($sp)
#  /* 0333F0 800327F0 0C00D14C */       jal osInvalDCache
#  /* 0333F4 800327F4 24050040 */     addiu $a1, $zero, 0x40
#  .L800327F8:
#  /* 0333F8 800327F8 00001025 */        or $v0, $zero, $zero
#  .L800327FC:
#  /* 0333FC 800327FC 8FBF0014 */        lw $ra, 0x14($sp)
#  /* 033400 80032800 27BD0018 */     addiu $sp, $sp, 0x18
#  /* 033404 80032804 03E00008 */        jr $ra
#  /* 033408 80032808 00000000 */       nop 
#
#  /* 03340C 8003280C 00000000 */       nop 

# Likely start of new file
#glabel osEPiLinkHandle
#  /* 033410 80032810 27BDFFE0 */     addiu $sp, $sp, -0x20
#  /* 033414 80032814 AFBF0014 */        sw $ra, 0x14($sp)
#  /* 033418 80032818 0C00D608 */       jal __osDisableInt
#  /* 03341C 8003281C AFA40020 */        sw $a0, 0x20($sp)
#  /* 033420 80032820 3C0E8004 */       lui $t6, %hi(__osPiTable)
#  /* 033424 80032824 8DCED42C */        lw $t6, %lo(__osPiTable)($t6)
#  /* 033428 80032828 8FAF0020 */        lw $t7, 0x20($sp)
#  /* 03342C 8003282C AFA2001C */        sw $v0, 0x1c($sp)
#  /* 033430 80032830 3C018004 */       lui $at, %hi(__osPiTable)
#  /* 033434 80032834 ADEE0000 */        sw $t6, ($t7)
#  /* 033438 80032838 8FB80020 */        lw $t8, 0x20($sp)
#  /* 03343C 8003283C 8FA4001C */        lw $a0, 0x1c($sp)
#  /* 033440 80032840 0C00D610 */       jal __osRestoreInt
#  /* 033444 80032844 AC38D42C */        sw $t8, %lo(__osPiTable)($at)
#  /* 033448 80032848 8FBF0014 */        lw $ra, 0x14($sp)
#  /* 03344C 8003284C 27BD0020 */     addiu $sp, $sp, 0x20
#  /* 033450 80032850 00001025 */        or $v0, $zero, $zero
#  /* 033454 80032854 03E00008 */        jr $ra
#  /* 033458 80032858 00000000 */       nop 
#
#  /* 03345C 8003285C 00000000 */       nop 

# Likely start of new file
#glabel osViBlack
#  /* 033460 80032860 27BDFFD8 */     addiu $sp, $sp, -0x28
#  /* 033464 80032864 AFBF001C */        sw $ra, 0x1c($sp)
#  /* 033468 80032868 AFA40028 */        sw $a0, 0x28($sp)
#  /* 03346C 8003286C 0C00D608 */       jal __osDisableInt
#  /* 033470 80032870 AFB00018 */        sw $s0, 0x18($sp)
#  /* 033474 80032874 93AE002B */       lbu $t6, 0x2b($sp)
#  /* 033478 80032878 00408025 */        or $s0, $v0, $zero
#  /* 03347C 8003287C 11C00007 */      beqz $t6, .L8003289C
#  /* 033480 80032880 00000000 */       nop 
#  /* 033484 80032884 3C0F8004 */       lui $t7, %hi(__osViNext)
#  /* 033488 80032888 8DEFD5B4 */        lw $t7, %lo(__osViNext)($t7)
#  /* 03348C 8003288C 95F80000 */       lhu $t8, ($t7)
#  /* 033490 80032890 37190020 */       ori $t9, $t8, 0x20
#  /* 033494 80032894 10000007 */         b .L800328B4
#  /* 033498 80032898 A5F90000 */        sh $t9, ($t7)
#  .L8003289C:
#  /* 03349C 8003289C 3C088004 */       lui $t0, %hi(__osViNext)
#  /* 0334A0 800328A0 8D08D5B4 */        lw $t0, %lo(__osViNext)($t0)
#  /* 0334A4 800328A4 2401FFDF */     addiu $at, $zero, -0x21
#  /* 0334A8 800328A8 95090000 */       lhu $t1, ($t0)
#  /* 0334AC 800328AC 01215024 */       and $t2, $t1, $at
#  /* 0334B0 800328B0 A50A0000 */        sh $t2, ($t0)
#  .L800328B4:
#  /* 0334B4 800328B4 0C00D610 */       jal __osRestoreInt
#  /* 0334B8 800328B8 02002025 */        or $a0, $s0, $zero
#  /* 0334BC 800328BC 8FBF001C */        lw $ra, 0x1c($sp)
#  /* 0334C0 800328C0 8FB00018 */        lw $s0, 0x18($sp)
#  /* 0334C4 800328C4 27BD0028 */     addiu $sp, $sp, 0x28
#  /* 0334C8 800328C8 03E00008 */        jr $ra
#  /* 0334CC 800328CC 00000000 */       nop 

#glabel __osSpRawReadIo
#  /* 0334D0 800328D0 27BDFFE8 */     addiu $sp, $sp, -0x18
#  /* 0334D4 800328D4 AFBF0014 */        sw $ra, 0x14($sp)
#  /* 0334D8 800328D8 AFA40018 */        sw $a0, 0x18($sp)
#  /* 0334DC 800328DC 0C00D184 */       jal __osSiDeviceBusy
#  /* 0334E0 800328E0 AFA5001C */        sw $a1, 0x1c($sp)
#  /* 0334E4 800328E4 10400003 */      beqz $v0, .L800328F4
#  /* 0334E8 800328E8 00000000 */       nop 
#  /* 0334EC 800328EC 10000008 */         b .L80032910
#  /* 0334F0 800328F0 2402FFFF */     addiu $v0, $zero, -1
#  .L800328F4:
#  /* 0334F4 800328F4 8FAE0018 */        lw $t6, 0x18($sp)
#  /* 0334F8 800328F8 3C01A000 */       lui $at, 0xa000
#  /* 0334FC 800328FC 8FB9001C */        lw $t9, 0x1c($sp)
#  /* 033500 80032900 01C17825 */        or $t7, $t6, $at
#  /* 033504 80032904 8DF80000 */        lw $t8, ($t7)
#  /* 033508 80032908 00001025 */        or $v0, $zero, $zero
#  /* 03350C 8003290C AF380000 */        sw $t8, ($t9)
#  .L80032910:
#  /* 033510 80032910 8FBF0014 */        lw $ra, 0x14($sp)
#  /* 033514 80032914 27BD0018 */     addiu $sp, $sp, 0x18
#  /* 033518 80032918 03E00008 */        jr $ra
#  /* 03351C 8003291C 00000000 */       nop 
