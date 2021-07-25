.include "macros.inc"

.section .rodata
# early rodata
glabel D_ovl0_800D5EE0
  /* E6A0 0518C0 800D5EE0 */
  .asciz "Relocatable Data Manager: Status Buffer is full !!\n"
  .balign 4

glabel D_ovl0_800D5F14
  /* E6D4 0518F4 800D5F14 */
  .asciz "Relocatable Data Manager: Force Status Buffer is full !!\n"
  .balign 4

glabel D_ovl0_800D5F50
  /* E710 051930 800D5F50 */
  .asciz "Relocatable Data Manager: External Data is over %d!!\n"
  .balign 4

glabel D_ovl0_800D5F88
  /* E748 051968 800D5F88 */
  .asciz "Relocatable Data Manager: Buffer is full !!\n"
  .balign 4
  .incbin "ovl0.raw.bin", 0xE778, 0x8


.section .bss

glabel D_ovl0_800D62E0
    .space 8
glabel D_ovl0_800D62E8
    .space 8
glabel D_ovl0_800D62F0
    .space 8
glabel D_ovl0_800D62F8
    .space 8
glabel D_ovl0_800D6300
    .space 4
glabel D_ovl0_800D6304
    .space 8
glabel D_ovl0_800D630C
    .space 4
glabel D_ovl0_800D6310
    .space 36
glabel D_ovl0_800D6334
    .space 4
glabel D_ovl0_800D6338
    .space 4
glabel D_ovl0_800D633C
    .space 4
glabel D_ovl0_800D6340
    .space 4
glabel D_ovl0_800D6344
    .space 4
glabel D_ovl0_800D6348
    .space 8

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text

.align 4

# Likely start of new file
glabel func_ovl0_800CD620
  /* 049000 800CD620 3C02800D */       lui $v0, %hi(D_ovl0_800D62F8)
  /* 049004 800CD624 8C4262F8 */        lw $v0, %lo(D_ovl0_800D62F8)($v0)
  /* 049008 800CD628 14400003 */      bnez $v0, .L800CD638
  /* 04900C 800CD62C 00000000 */       nop 
  /* 049010 800CD630 03E00008 */        jr $ra
  /* 049014 800CD634 00001025 */        or $v0, $zero, $zero

  .L800CD638:
  /* 049018 800CD638 1840000C */      blez $v0, .L800CD66C
  /* 04901C 800CD63C 00001825 */        or $v1, $zero, $zero
  /* 049020 800CD640 3C05800D */       lui $a1, %hi(D_ovl0_800D6300)
  /* 049024 800CD644 8CA56300 */        lw $a1, %lo(D_ovl0_800D6300)($a1)
  .L800CD648:
  /* 049028 800CD648 8CAE0000 */        lw $t6, ($a1)
  /* 04902C 800CD64C 24630001 */     addiu $v1, $v1, 1
  /* 049030 800CD650 0062082A */       slt $at, $v1, $v0
  /* 049034 800CD654 148E0003 */       bne $a0, $t6, .L800CD664
  /* 049038 800CD658 00000000 */       nop 
  /* 04903C 800CD65C 03E00008 */        jr $ra
  /* 049040 800CD660 8CA20004 */        lw $v0, 4($a1)

  .L800CD664:
  /* 049044 800CD664 1420FFF8 */      bnez $at, .L800CD648
  /* 049048 800CD668 24A50008 */     addiu $a1, $a1, 8
  .L800CD66C:
  /* 04904C 800CD66C 00001025 */        or $v0, $zero, $zero
  /* 049050 800CD670 03E00008 */        jr $ra
  /* 049054 800CD674 00000000 */       nop 

glabel func_ovl0_800CD678
  /* 049058 800CD678 27BDFFE8 */     addiu $sp, $sp, -0x18
  /* 04905C 800CD67C AFBF0014 */        sw $ra, 0x14($sp)
  /* 049060 800CD680 0C033588 */       jal func_ovl0_800CD620
  /* 049064 800CD684 00000000 */       nop 
  /* 049068 800CD688 8FBF0014 */        lw $ra, 0x14($sp)
  /* 04906C 800CD68C 27BD0018 */     addiu $sp, $sp, 0x18
  /* 049070 800CD690 03E00008 */        jr $ra
  /* 049074 800CD694 00000000 */       nop 

glabel func_ovl0_800CD698
  /* 049078 800CD698 3C05800D */       lui $a1, %hi(D_ovl0_800D6304)
  /* 04907C 800CD69C 8CA56304 */        lw $a1, %lo(D_ovl0_800D6304)($a1)
  /* 049080 800CD6A0 27BDFFE8 */     addiu $sp, $sp, -0x18
  /* 049084 800CD6A4 AFBF0014 */        sw $ra, 0x14($sp)
  /* 049088 800CD6A8 10A0000E */      beqz $a1, .L800CD6E4
  /* 04908C 800CD6AC 00000000 */       nop 
  /* 049090 800CD6B0 18A0000C */      blez $a1, .L800CD6E4
  /* 049094 800CD6B4 00001025 */        or $v0, $zero, $zero
  /* 049098 800CD6B8 3C03800D */       lui $v1, %hi(D_ovl0_800D630C)
  /* 04909C 800CD6BC 8C63630C */        lw $v1, %lo(D_ovl0_800D630C)($v1)
  .L800CD6C0:
  /* 0490A0 800CD6C0 8C6E0000 */        lw $t6, ($v1)
  /* 0490A4 800CD6C4 24420001 */     addiu $v0, $v0, 1
  /* 0490A8 800CD6C8 0045082A */       slt $at, $v0, $a1
  /* 0490AC 800CD6CC 148E0003 */       bne $a0, $t6, .L800CD6DC
  /* 0490B0 800CD6D0 00000000 */       nop 
  /* 0490B4 800CD6D4 10000005 */         b .L800CD6EC
  /* 0490B8 800CD6D8 8C620004 */        lw $v0, 4($v1)
  .L800CD6DC:
  /* 0490BC 800CD6DC 1420FFF8 */      bnez $at, .L800CD6C0
  /* 0490C0 800CD6E0 24630008 */     addiu $v1, $v1, 8
  .L800CD6E4:
  /* 0490C4 800CD6E4 0C033588 */       jal func_ovl0_800CD620
  /* 0490C8 800CD6E8 00000000 */       nop 
  .L800CD6EC:
  /* 0490CC 800CD6EC 8FBF0014 */        lw $ra, 0x14($sp)
  /* 0490D0 800CD6F0 27BD0018 */     addiu $sp, $sp, 0x18
  /* 0490D4 800CD6F4 03E00008 */        jr $ra
  /* 0490D8 800CD6F8 00000000 */       nop 

glabel func_ovl0_800CD6FC
  /* 0490DC 800CD6FC 27BDFFE8 */     addiu $sp, $sp, -0x18
  /* 0490E0 800CD700 AFBF0014 */        sw $ra, 0x14($sp)
  /* 0490E4 800CD704 0C0335A6 */       jal func_ovl0_800CD698
  /* 0490E8 800CD708 00000000 */       nop 
  /* 0490EC 800CD70C 8FBF0014 */        lw $ra, 0x14($sp)
  /* 0490F0 800CD710 27BD0018 */     addiu $sp, $sp, 0x18
  /* 0490F4 800CD714 03E00008 */        jr $ra
  /* 0490F8 800CD718 00000000 */       nop 

glabel func_ovl0_800CD71C
  /* 0490FC 800CD71C 3C03800D */       lui $v1, %hi(D_ovl0_800D62E0)
  /* 049100 800CD720 246362E0 */     addiu $v1, $v1, %lo(D_ovl0_800D62E0)
  /* 049104 800CD724 8C660018 */        lw $a2, 0x18($v1) # D_ovl0_800D62E0 + 24
  /* 049108 800CD728 8C6E001C */        lw $t6, 0x1c($v1) # D_ovl0_800D62E0 + 28
  /* 04910C 800CD72C 27BDFFE0 */     addiu $sp, $sp, -0x20
  /* 049110 800CD730 AFBF001C */        sw $ra, 0x1c($sp)
  /* 049114 800CD734 00CE082B */      sltu $at, $a2, $t6
  /* 049118 800CD738 14200009 */      bnez $at, .L800CD760
  /* 04911C 800CD73C AFB00018 */        sw $s0, 0x18($sp)
  /* 049120 800CD740 3C10800D */       lui $s0, %hi(D_ovl0_800D5EE0)
  /* 049124 800CD744 26105EE0 */     addiu $s0, $s0, %lo(D_ovl0_800D5EE0)
  .L800CD748:
  /* 049128 800CD748 0C008D89 */       jal fatal_printf
  /* 04912C 800CD74C 02002025 */        or $a0, $s0, $zero
  /* 049130 800CD750 0C028C10 */       jal func_800A3040
  /* 049134 800CD754 00000000 */       nop 
  /* 049138 800CD758 1000FFFB */         b .L800CD748
  /* 04913C 800CD75C 00000000 */       nop 
  .L800CD760:
  /* 049140 800CD760 8C6F0020 */        lw $t7, 0x20($v1)
  /* 049144 800CD764 000610C0 */       sll $v0, $a2, 3
  /* 049148 800CD768 01E2C021 */      addu $t8, $t7, $v0
  /* 04914C 800CD76C AF040000 */        sw $a0, ($t8)
  /* 049150 800CD770 8C790020 */        lw $t9, 0x20($v1)
  /* 049154 800CD774 03224021 */      addu $t0, $t9, $v0
  /* 049158 800CD778 AD050004 */        sw $a1, 4($t0)
  /* 04915C 800CD77C 8C690018 */        lw $t1, 0x18($v1)
  /* 049160 800CD780 8FBF001C */        lw $ra, 0x1c($sp)
  /* 049164 800CD784 8FB00018 */        lw $s0, 0x18($sp)
  /* 049168 800CD788 252A0001 */     addiu $t2, $t1, 1
  /* 04916C 800CD78C AC6A0018 */        sw $t2, 0x18($v1)
  /* 049170 800CD790 03E00008 */        jr $ra
  /* 049174 800CD794 27BD0020 */     addiu $sp, $sp, 0x20

glabel func_ovl0_800CD798
  /* 049178 800CD798 3C03800D */       lui $v1, %hi(D_ovl0_800D62E0)
  /* 04917C 800CD79C 246362E0 */     addiu $v1, $v1, %lo(D_ovl0_800D62E0)
  /* 049180 800CD7A0 8C660024 */        lw $a2, 0x24($v1) # D_ovl0_800D62E0 + 36
  /* 049184 800CD7A4 8C6E0028 */        lw $t6, 0x28($v1) # D_ovl0_800D62E0 + 40
  /* 049188 800CD7A8 27BDFFE0 */     addiu $sp, $sp, -0x20
  /* 04918C 800CD7AC AFBF001C */        sw $ra, 0x1c($sp)
  /* 049190 800CD7B0 00CE082B */      sltu $at, $a2, $t6
  /* 049194 800CD7B4 14200009 */      bnez $at, .L800CD7DC
  /* 049198 800CD7B8 AFB00018 */        sw $s0, 0x18($sp)
  /* 04919C 800CD7BC 3C10800D */       lui $s0, %hi(D_ovl0_800D5F14)
  /* 0491A0 800CD7C0 26105F14 */     addiu $s0, $s0, %lo(D_ovl0_800D5F14)
  .L800CD7C4:
  /* 0491A4 800CD7C4 0C008D89 */       jal fatal_printf
  /* 0491A8 800CD7C8 02002025 */        or $a0, $s0, $zero
  /* 0491AC 800CD7CC 0C028C10 */       jal func_800A3040
  /* 0491B0 800CD7D0 00000000 */       nop 
  /* 0491B4 800CD7D4 1000FFFB */         b .L800CD7C4
  /* 0491B8 800CD7D8 00000000 */       nop 
  .L800CD7DC:
  /* 0491BC 800CD7DC 8C6F002C */        lw $t7, 0x2c($v1)
  /* 0491C0 800CD7E0 000610C0 */       sll $v0, $a2, 3
  /* 0491C4 800CD7E4 01E2C021 */      addu $t8, $t7, $v0
  /* 0491C8 800CD7E8 AF040000 */        sw $a0, ($t8)
  /* 0491CC 800CD7EC 8C79002C */        lw $t9, 0x2c($v1)
  /* 0491D0 800CD7F0 03224021 */      addu $t0, $t9, $v0
  /* 0491D4 800CD7F4 AD050004 */        sw $a1, 4($t0)
  /* 0491D8 800CD7F8 8C690024 */        lw $t1, 0x24($v1)
  /* 0491DC 800CD7FC 8FBF001C */        lw $ra, 0x1c($sp)
  /* 0491E0 800CD800 8FB00018 */        lw $s0, 0x18($sp)
  /* 0491E4 800CD804 252A0001 */     addiu $t2, $t1, 1
  /* 0491E8 800CD808 AC6A0024 */        sw $t2, 0x24($v1)
  /* 0491EC 800CD80C 03E00008 */        jr $ra
  /* 0491F0 800CD810 27BD0020 */     addiu $sp, $sp, 0x20

glabel func_ovl0_800CD814
  /* 0491F4 800CD814 3C0E800D */       lui $t6, %hi(D_ovl0_800D62E0)
  /* 0491F8 800CD818 00047880 */       sll $t7, $a0, 2
  /* 0491FC 800CD81C 8DCE62E0 */        lw $t6, %lo(D_ovl0_800D62E0)($t6)
  /* 049200 800CD820 27BDFFE8 */     addiu $sp, $sp, -0x18
  /* 049204 800CD824 01E47823 */      subu $t7, $t7, $a0
  /* 049208 800CD828 AFBF0014 */        sw $ra, 0x14($sp)
  /* 04920C 800CD82C 000F7880 */       sll $t7, $t7, 2
  /* 049210 800CD830 3C05800D */       lui $a1, %hi(D_ovl0_800D6334)
  /* 049214 800CD834 8CA56334 */        lw $a1, %lo(D_ovl0_800D6334)($a1)
  /* 049218 800CD838 24060018 */     addiu $a2, $zero, 0x18
  /* 04921C 800CD83C 0C000B28 */       jal dma_rom_read
  /* 049220 800CD840 01CF2021 */      addu $a0, $t6, $t7
  /* 049224 800CD844 8FBF0014 */        lw $ra, 0x14($sp)
  /* 049228 800CD848 27BD0018 */     addiu $sp, $sp, 0x18
  /* 04922C 800CD84C 03E00008 */        jr $ra
  /* 049230 800CD850 00000000 */       nop 

glabel func_ovl0_800CD854
  /* 049234 800CD854 27BDFF88 */     addiu $sp, $sp, -0x78
  /* 049238 800CD858 AFB1001C */        sw $s1, 0x1c($sp)
  /* 04923C 800CD85C 3C11800D */       lui $s1, %hi(D_ovl0_800D6334)
  /* 049240 800CD860 26316334 */     addiu $s1, $s1, %lo(D_ovl0_800D6334)
  /* 049244 800CD864 8E2E0000 */        lw $t6, ($s1) # D_ovl0_800D6334 + 0
  /* 049248 800CD868 AFBF003C */        sw $ra, 0x3c($sp)
  /* 04924C 800CD86C AFBE0038 */        sw $fp, 0x38($sp)
  /* 049250 800CD870 AFB70034 */        sw $s7, 0x34($sp)
  /* 049254 800CD874 AFB60030 */        sw $s6, 0x30($sp)
  /* 049258 800CD878 AFB5002C */        sw $s5, 0x2c($sp)
  /* 04925C 800CD87C AFB40028 */        sw $s4, 0x28($sp)
  /* 049260 800CD880 AFB30024 */        sw $s3, 0x24($sp)
  /* 049264 800CD884 AFB20020 */        sw $s2, 0x20($sp)
  /* 049268 800CD888 AFB00018 */        sw $s0, 0x18($sp)
  /* 04926C 800CD88C 8DC20000 */        lw $v0, ($t6)
  /* 049270 800CD890 3C0F800D */       lui $t7, %hi(D_ovl0_800D62E8)
  /* 049274 800CD894 3C017FFF */       lui $at, (0x7FFFFFFF >> 16) # 2147483647
  /* 049278 800CD898 8DEF62E8 */        lw $t7, %lo(D_ovl0_800D62E8)($t7)
  /* 04927C 800CD89C 3421FFFF */       ori $at, $at, (0x7FFFFFFF & 0xFFFF) # 2147483647
  /* 049280 800CD8A0 0041C024 */       and $t8, $v0, $at
  /* 049284 800CD8A4 0002CFC2 */       srl $t9, $v0, 0x1f
  /* 049288 800CD8A8 00808025 */        or $s0, $a0, $zero
  /* 04928C 800CD8AC 00E09025 */        or $s2, $a3, $zero
  /* 049290 800CD8B0 00A0A825 */        or $s5, $a1, $zero
  /* 049294 800CD8B4 13200005 */      beqz $t9, .L800CD8CC
  /* 049298 800CD8B8 01F8A021 */      addu $s4, $t7, $t8
  /* 04929C 800CD8BC 0C000DA4 */       jal func_80003690
  /* 0492A0 800CD8C0 02802025 */        or $a0, $s4, $zero
  /* 0492A4 800CD8C4 10000005 */         b .L800CD8DC
  /* 0492A8 800CD8C8 24170002 */     addiu $s7, $zero, 2
  .L800CD8CC:
  /* 0492AC 800CD8CC 02802025 */        or $a0, $s4, $zero
  /* 0492B0 800CD8D0 0C000B28 */       jal dma_rom_read
  /* 0492B4 800CD8D4 02A02825 */        or $a1, $s5, $zero
  /* 0492B8 800CD8D8 24170002 */     addiu $s7, $zero, 2
  .L800CD8DC:
  /* 0492BC 800CD8DC 16570006 */       bne $s2, $s7, .L800CD8F8
  /* 0492C0 800CD8E0 02002025 */        or $a0, $s0, $zero
  /* 0492C4 800CD8E4 02002025 */        or $a0, $s0, $zero
  /* 0492C8 800CD8E8 0C0335E6 */       jal func_ovl0_800CD798
  /* 0492CC 800CD8EC 02A02825 */        or $a1, $s5, $zero
  /* 0492D0 800CD8F0 10000004 */         b .L800CD904
  /* 0492D4 800CD8F4 8E220000 */        lw $v0, ($s1) # D_ovl0_800D6334 + 0
  .L800CD8F8:
  /* 0492D8 800CD8F8 0C0335C7 */       jal func_ovl0_800CD71C
  /* 0492DC 800CD8FC 02A02825 */        or $a1, $s5, $zero
  /* 0492E0 800CD900 8E220000 */        lw $v0, ($s1) # D_ovl0_800D6334 + 0
  .L800CD904:
  /* 0492E4 800CD904 03A08025 */        or $s0, $sp, $zero
  /* 0492E8 800CD908 3416FFFF */       ori $s6, $zero, 0xffff
  /* 0492EC 800CD90C 94440004 */       lhu $a0, 4($v0)
  /* 0492F0 800CD910 26100063 */     addiu $s0, $s0, 0x63
  /* 0492F4 800CD914 2401FFF0 */     addiu $at, $zero, -0x10
  /* 0492F8 800CD918 12C4000B */       beq $s6, $a0, .L800CD948
  /* 0492FC 800CD91C 02018024 */       and $s0, $s0, $at
  .L800CD920:
  /* 049300 800CD920 00044080 */       sll $t0, $a0, 2
  /* 049304 800CD924 02A81821 */      addu $v1, $s5, $t0
  /* 049308 800CD928 94690002 */       lhu $t1, 2($v1)
  /* 04930C 800CD92C 94640000 */       lhu $a0, ($v1)
  /* 049310 800CD930 00095080 */       sll $t2, $t1, 2
  /* 049314 800CD934 01555821 */      addu $t3, $t2, $s5
  /* 049318 800CD938 16C4FFF9 */       bne $s6, $a0, .L800CD920
  /* 04931C 800CD93C AC6B0000 */        sw $t3, ($v1)
  /* 049320 800CD940 3C02800D */       lui $v0, %hi(D_ovl0_800D6334)
  /* 049324 800CD944 8C426334 */        lw $v0, %lo(D_ovl0_800D6334)($v0)
  .L800CD948:
  /* 049328 800CD948 944C0006 */       lhu $t4, 6($v0)
  /* 04932C 800CD94C 94430008 */       lhu $v1, 8($v0)
  /* 049330 800CD950 241E0001 */     addiu $fp, $zero, 1
  /* 049334 800CD954 000C6880 */       sll $t5, $t4, 2
  /* 049338 800CD958 12C3002B */       beq $s6, $v1, .L800CDA08
  /* 04933C 800CD95C 028DA021 */      addu $s4, $s4, $t5
  .L800CD960:
  /* 049340 800CD960 00037080 */       sll $t6, $v1, 2
  /* 049344 800CD964 02AE8821 */      addu $s1, $s5, $t6
  /* 049348 800CD968 96330000 */       lhu $s3, ($s1) # D_ovl0_800D6334 + 0
  /* 04934C 800CD96C 02802025 */        or $a0, $s4, $zero
  /* 049350 800CD970 02002825 */        or $a1, $s0, $zero
  /* 049354 800CD974 0C000B28 */       jal dma_rom_read
  /* 049358 800CD978 24060002 */     addiu $a2, $zero, 2
  /* 04935C 800CD97C 16570005 */       bne $s2, $s7, .L800CD994
  /* 049360 800CD980 00000000 */       nop 
  /* 049364 800CD984 0C0335A6 */       jal func_ovl0_800CD698
  /* 049368 800CD988 96040000 */       lhu $a0, ($s0)
  /* 04936C 800CD98C 10000003 */         b .L800CD99C
  /* 049370 800CD990 00000000 */       nop 
  .L800CD994:
  /* 049374 800CD994 0C033588 */       jal func_ovl0_800CD620
  /* 049378 800CD998 96040000 */       lhu $a0, ($s0)
  .L800CD99C:
  /* 04937C 800CD99C 54400014 */      bnel $v0, $zero, .L800CD9F0
  /* 049380 800CD9A0 962F0002 */       lhu $t7, 2($s1) # D_ovl0_800D6334 + 2
  /* 049384 800CD9A4 12400007 */      beqz $s2, .L800CD9C4
  /* 049388 800CD9A8 00000000 */       nop 
  /* 04938C 800CD9AC 125E0009 */       beq $s2, $fp, .L800CD9D4
  /* 049390 800CD9B0 00000000 */       nop 
  /* 049394 800CD9B4 1257000B */       beq $s2, $s7, .L800CD9E4
  /* 049398 800CD9B8 00000000 */       nop 
  /* 04939C 800CD9BC 1000000C */         b .L800CD9F0
  /* 0493A0 800CD9C0 962F0002 */       lhu $t7, 2($s1) # D_ovl0_800D6334 + 2
  .L800CD9C4:
  /* 0493A4 800CD9C4 0C033703 */       jal func_ovl0_800CDC0C
  /* 0493A8 800CD9C8 96040000 */       lhu $a0, ($s0)
  /* 0493AC 800CD9CC 10000008 */         b .L800CD9F0
  /* 0493B0 800CD9D0 962F0002 */       lhu $t7, 2($s1) # D_ovl0_800D6334 + 2
  .L800CD9D4:
  /* 0493B4 800CD9D4 0C03372B */       jal func_ovl0_800CDCAC
  /* 0493B8 800CD9D8 96040000 */       lhu $a0, ($s0)
  /* 0493BC 800CD9DC 10000004 */         b .L800CD9F0
  /* 0493C0 800CD9E0 962F0002 */       lhu $t7, 2($s1) # D_ovl0_800D6334 + 2
  .L800CD9E4:
  /* 0493C4 800CD9E4 0C033757 */       jal func_ovl0_800CDD5C
  /* 0493C8 800CD9E8 96040000 */       lhu $a0, ($s0)
  /* 0493CC 800CD9EC 962F0002 */       lhu $t7, 2($s1) # D_ovl0_800D6334 + 2
  .L800CD9F0:
  /* 0493D0 800CD9F0 26940002 */     addiu $s4, $s4, 2
  /* 0493D4 800CD9F4 02601825 */        or $v1, $s3, $zero
  /* 0493D8 800CD9F8 000FC080 */       sll $t8, $t7, 2
  /* 0493DC 800CD9FC 0302C821 */      addu $t9, $t8, $v0
  /* 0493E0 800CDA00 16D3FFD7 */       bne $s6, $s3, .L800CD960
  /* 0493E4 800CDA04 AE390000 */        sw $t9, ($s1) # D_ovl0_800D6334 + 0
  .L800CDA08:
  /* 0493E8 800CDA08 8FBF003C */        lw $ra, 0x3c($sp)
  /* 0493EC 800CDA0C 8FB00018 */        lw $s0, 0x18($sp)
  /* 0493F0 800CDA10 8FB1001C */        lw $s1, 0x1c($sp)
  /* 0493F4 800CDA14 8FB20020 */        lw $s2, 0x20($sp)
  /* 0493F8 800CDA18 8FB30024 */        lw $s3, 0x24($sp)
  /* 0493FC 800CDA1C 8FB40028 */        lw $s4, 0x28($sp)
  /* 049400 800CDA20 8FB5002C */        lw $s5, 0x2c($sp)
  /* 049404 800CDA24 8FB60030 */        lw $s6, 0x30($sp)
  /* 049408 800CDA28 8FB70034 */        lw $s7, 0x34($sp)
  /* 04940C 800CDA2C 8FBE0038 */        lw $fp, 0x38($sp)
  /* 049410 800CDA30 03E00008 */        jr $ra
  /* 049414 800CDA34 27BD0078 */     addiu $sp, $sp, 0x78

glabel func_ovl0_800CDA38
  /* 049418 800CDA38 27BDFF98 */     addiu $sp, $sp, -0x68
  /* 04941C 800CDA3C AFBF0024 */        sw $ra, 0x24($sp)
  /* 049420 800CDA40 AFB10018 */        sw $s1, 0x18($sp)
  /* 049424 800CDA44 00808825 */        or $s1, $a0, $zero
  /* 049428 800CDA48 AFB30020 */        sw $s3, 0x20($sp)
  /* 04942C 800CDA4C AFB2001C */        sw $s2, 0x1c($sp)
  /* 049430 800CDA50 0C033588 */       jal func_ovl0_800CD620
  /* 049434 800CDA54 AFB00014 */        sw $s0, 0x14($sp)
  /* 049438 800CDA58 10400003 */      beqz $v0, .L800CDA68
  /* 04943C 800CDA5C 3C07800D */       lui $a3, %hi(D_ovl0_800D6340)
  /* 049440 800CDA60 10000054 */         b .L800CDBB4
  /* 049444 800CDA64 00001025 */        or $v0, $zero, $zero
  .L800CDA68:
  /* 049448 800CDA68 24E76340 */     addiu $a3, $a3, %lo(D_ovl0_800D6340)
  /* 04944C 800CDA6C 8CE40000 */        lw $a0, ($a3) # D_ovl0_800D6340 + 0
  /* 049450 800CDA70 00001025 */        or $v0, $zero, $zero
  /* 049454 800CDA74 3C03800D */       lui $v1, %hi(D_ovl0_800D633C)
  /* 049458 800CDA78 1880000B */      blez $a0, .L800CDAA8
  /* 04945C 800CDA7C 3C05800D */       lui $a1, %hi(D_ovl0_800D6344)
  /* 049460 800CDA80 8C63633C */        lw $v1, %lo(D_ovl0_800D633C)($v1)
  .L800CDA84:
  /* 049464 800CDA84 8C6E0000 */        lw $t6, ($v1)
  /* 049468 800CDA88 24420001 */     addiu $v0, $v0, 1
  /* 04946C 800CDA8C 0044082A */       slt $at, $v0, $a0
  /* 049470 800CDA90 162E0003 */       bne $s1, $t6, .L800CDAA0
  /* 049474 800CDA94 00000000 */       nop 
  /* 049478 800CDA98 10000046 */         b .L800CDBB4
  /* 04947C 800CDA9C 00001025 */        or $v0, $zero, $zero
  .L800CDAA0:
  /* 049480 800CDAA0 1420FFF8 */      bnez $at, .L800CDA84
  /* 049484 800CDAA4 24630004 */     addiu $v1, $v1, 4
  .L800CDAA8:
  /* 049488 800CDAA8 8CA56344 */        lw $a1, %lo(D_ovl0_800D6344)($a1)
  /* 04948C 800CDAAC 3C10800D */       lui $s0, %hi(D_ovl0_800D5F50)
  /* 049490 800CDAB0 26105F50 */     addiu $s0, $s0, %lo(D_ovl0_800D5F50)
  /* 049494 800CDAB4 0085082A */       slt $at, $a0, $a1
  /* 049498 800CDAB8 14200008 */      bnez $at, .L800CDADC
  /* 04949C 800CDABC 00000000 */       nop 
  .L800CDAC0:
  /* 0494A0 800CDAC0 0C008D89 */       jal fatal_printf
  /* 0494A4 800CDAC4 02002025 */        or $a0, $s0, $zero
  /* 0494A8 800CDAC8 0C028C10 */       jal func_800A3040
  /* 0494AC 800CDACC 00000000 */       nop 
  /* 0494B0 800CDAD0 3C05800D */       lui $a1, %hi(D_ovl0_800D6344)
  /* 0494B4 800CDAD4 1000FFFA */         b .L800CDAC0
  /* 0494B8 800CDAD8 8CA56344 */        lw $a1, %lo(D_ovl0_800D6344)($a1)
  .L800CDADC:
  /* 0494BC 800CDADC 0C033605 */       jal func_ovl0_800CD814
  /* 0494C0 800CDAE0 02202025 */        or $a0, $s1, $zero
  /* 0494C4 800CDAE4 3C07800D */       lui $a3, %hi(D_ovl0_800D6340)
  /* 0494C8 800CDAE8 3C08800D */       lui $t0, %hi(D_ovl0_800D6334)
  /* 0494CC 800CDAEC 25086334 */     addiu $t0, $t0, %lo(D_ovl0_800D6334)
  /* 0494D0 800CDAF0 24E76340 */     addiu $a3, $a3, %lo(D_ovl0_800D6340)
  /* 0494D4 800CDAF4 8D020000 */        lw $v0, ($t0) # D_ovl0_800D6334 + 0
  /* 0494D8 800CDAF8 8CF80000 */        lw $t8, ($a3) # D_ovl0_800D6340 + 0
  /* 0494DC 800CDAFC 3C0F800D */       lui $t7, %hi(D_ovl0_800D633C)
  /* 0494E0 800CDB00 8DEF633C */        lw $t7, %lo(D_ovl0_800D633C)($t7)
  /* 0494E4 800CDB04 0018C880 */       sll $t9, $t8, 2
  /* 0494E8 800CDB08 9452000A */       lhu $s2, 0xa($v0)
  /* 0494EC 800CDB0C 94450006 */       lhu $a1, 6($v0)
  /* 0494F0 800CDB10 01F94821 */      addu $t1, $t7, $t9
  /* 0494F4 800CDB14 AD310000 */        sw $s1, ($t1)
  /* 0494F8 800CDB18 8CEA0000 */        lw $t2, ($a3) # D_ovl0_800D6340 + 0
  /* 0494FC 800CDB1C 8D0C0000 */        lw $t4, ($t0) # D_ovl0_800D6334 + 0
  /* 049500 800CDB20 3C18800D */       lui $t8, %hi(D_ovl0_800D6338)
  /* 049504 800CDB24 254B0001 */     addiu $t3, $t2, 1
  /* 049508 800CDB28 ACEB0000 */        sw $t3, ($a3) # D_ovl0_800D6340 + 0
  /* 04950C 800CDB2C 8F186338 */        lw $t8, %lo(D_ovl0_800D6338)($t8)
  /* 049510 800CDB30 00129080 */       sll $s2, $s2, 2
  /* 049514 800CDB34 2652000F */     addiu $s2, $s2, 0xf
  /* 049518 800CDB38 2401FFF0 */     addiu $at, $zero, -0x10
  /* 04951C 800CDB3C 8D8D0000 */        lw $t5, ($t4)
  /* 049520 800CDB40 02419024 */       and $s2, $s2, $at
  /* 049524 800CDB44 3C03800D */       lui $v1, %hi(D_ovl0_800D62E8)
  /* 049528 800CDB48 8C6362E8 */        lw $v1, %lo(D_ovl0_800D62E8)($v1)
  /* 04952C 800CDB4C 8F0F0000 */        lw $t7, ($t8)
  /* 049530 800CDB50 3C017FFF */       lui $at, (0x7FFFFFFF >> 16) # 2147483647
  /* 049534 800CDB54 3421FFFF */       ori $at, $at, (0x7FFFFFFF & 0xFFFF) # 2147483647
  /* 049538 800CDB58 01A17024 */       and $t6, $t5, $at
  /* 04953C 800CDB5C 00052880 */       sll $a1, $a1, 2
  /* 049540 800CDB60 006E3021 */      addu $a2, $v1, $t6
  /* 049544 800CDB64 01E1C824 */       and $t9, $t7, $at
  /* 049548 800CDB68 00C58021 */      addu $s0, $a2, $a1
  /* 04954C 800CDB6C 00799821 */      addu $s3, $v1, $t9
  /* 049550 800CDB70 0213082B */      sltu $at, $s0, $s3
  /* 049554 800CDB74 1020000E */      beqz $at, .L800CDBB0
  /* 049558 800CDB78 03A08825 */        or $s1, $sp, $zero
  /* 04955C 800CDB7C 2631004B */     addiu $s1, $s1, 0x4b
  /* 049560 800CDB80 2401FFF0 */     addiu $at, $zero, -0x10
  /* 049564 800CDB84 02218824 */       and $s1, $s1, $at
  .L800CDB88:
  /* 049568 800CDB88 02002025 */        or $a0, $s0, $zero
  /* 04956C 800CDB8C 02202825 */        or $a1, $s1, $zero
  /* 049570 800CDB90 0C000B28 */       jal dma_rom_read
  /* 049574 800CDB94 24060002 */     addiu $a2, $zero, 2
  /* 049578 800CDB98 0C03368E */       jal func_ovl0_800CDA38
  /* 04957C 800CDB9C 96240000 */       lhu $a0, ($s1)
  /* 049580 800CDBA0 26100002 */     addiu $s0, $s0, 2
  /* 049584 800CDBA4 0213082B */      sltu $at, $s0, $s3
  /* 049588 800CDBA8 1420FFF7 */      bnez $at, .L800CDB88
  /* 04958C 800CDBAC 02429021 */      addu $s2, $s2, $v0
  .L800CDBB0:
  /* 049590 800CDBB0 02401025 */        or $v0, $s2, $zero
  .L800CDBB4:
  /* 049594 800CDBB4 8FBF0024 */        lw $ra, 0x24($sp)
  /* 049598 800CDBB8 8FB00014 */        lw $s0, 0x14($sp)
  /* 04959C 800CDBBC 8FB10018 */        lw $s1, 0x18($sp)
  /* 0495A0 800CDBC0 8FB2001C */        lw $s2, 0x1c($sp)
  /* 0495A4 800CDBC4 8FB30020 */        lw $s3, 0x20($sp)
  /* 0495A8 800CDBC8 03E00008 */        jr $ra
  /* 0495AC 800CDBCC 27BD0068 */     addiu $sp, $sp, 0x68

glabel func_ovl0_800CDBD0
  /* 0495B0 800CDBD0 27BDFF20 */     addiu $sp, $sp, -0xe0
  /* 0495B4 800CDBD4 27AE0018 */     addiu $t6, $sp, 0x18
  /* 0495B8 800CDBD8 3C01800D */       lui $at, %hi(D_ovl0_800D633C)
  /* 0495BC 800CDBDC AC2E633C */        sw $t6, %lo(D_ovl0_800D633C)($at)
  /* 0495C0 800CDBE0 3C01800D */       lui $at, %hi(D_ovl0_800D6340)
  /* 0495C4 800CDBE4 AC206340 */        sw $zero, %lo(D_ovl0_800D6340)($at)
  /* 0495C8 800CDBE8 AFBF0014 */        sw $ra, 0x14($sp)
  /* 0495CC 800CDBEC 3C01800D */       lui $at, %hi(D_ovl0_800D6344)
  /* 0495D0 800CDBF0 240F0032 */     addiu $t7, $zero, 0x32
  /* 0495D4 800CDBF4 0C03368E */       jal func_ovl0_800CDA38
  /* 0495D8 800CDBF8 AC2F6344 */        sw $t7, %lo(D_ovl0_800D6344)($at)
  /* 0495DC 800CDBFC 8FBF0014 */        lw $ra, 0x14($sp)
  /* 0495E0 800CDC00 27BD00E0 */     addiu $sp, $sp, 0xe0
  /* 0495E4 800CDC04 03E00008 */        jr $ra
  /* 0495E8 800CDC08 00000000 */       nop 

glabel func_ovl0_800CDC0C
  /* 0495EC 800CDC0C 27BDFFE0 */     addiu $sp, $sp, -0x20
  /* 0495F0 800CDC10 AFBF0014 */        sw $ra, 0x14($sp)
  /* 0495F4 800CDC14 0C033588 */       jal func_ovl0_800CD620
  /* 0495F8 800CDC18 AFA40020 */        sw $a0, 0x20($sp)
  /* 0495FC 800CDC1C 10400003 */      beqz $v0, .L800CDC2C
  /* 049600 800CDC20 3C0E800D */       lui $t6, %hi(D_ovl0_800D6348)
  /* 049604 800CDC24 10000015 */         b .L800CDC7C
  /* 049608 800CDC28 8FBF0014 */        lw $ra, 0x14($sp)
  .L800CDC2C:
  /* 04960C 800CDC2C 8DCE6348 */        lw $t6, %lo(D_ovl0_800D6348)($t6)
  /* 049610 800CDC30 2401FFF0 */     addiu $at, $zero, -0x10
  /* 049614 800CDC34 8FA40020 */        lw $a0, 0x20($sp)
  /* 049618 800CDC38 25CF000F */     addiu $t7, $t6, 0xf
  /* 04961C 800CDC3C 01E1C024 */       and $t8, $t7, $at
  /* 049620 800CDC40 0C033605 */       jal func_ovl0_800CD814
  /* 049624 800CDC44 AFB8001C */        sw $t8, 0x1c($sp)
  /* 049628 800CDC48 3C19800D */       lui $t9, %hi(D_ovl0_800D6334)
  /* 04962C 800CDC4C 8F396334 */        lw $t9, %lo(D_ovl0_800D6334)($t9)
  /* 049630 800CDC50 8FA5001C */        lw $a1, 0x1c($sp)
  /* 049634 800CDC54 3C01800D */       lui $at, %hi(D_ovl0_800D6348)
  /* 049638 800CDC58 9726000A */       lhu $a2, 0xa($t9)
  /* 04963C 800CDC5C 8FA40020 */        lw $a0, 0x20($sp)
  /* 049640 800CDC60 00003825 */        or $a3, $zero, $zero
  /* 049644 800CDC64 00063080 */       sll $a2, $a2, 2
  /* 049648 800CDC68 00A64021 */      addu $t0, $a1, $a2
  /* 04964C 800CDC6C 0C033615 */       jal func_ovl0_800CD854
  /* 049650 800CDC70 AC286348 */        sw $t0, %lo(D_ovl0_800D6348)($at)
  /* 049654 800CDC74 8FA2001C */        lw $v0, 0x1c($sp)
  /* 049658 800CDC78 8FBF0014 */        lw $ra, 0x14($sp)
  .L800CDC7C:
  /* 04965C 800CDC7C 27BD0020 */     addiu $sp, $sp, 0x20
  /* 049660 800CDC80 03E00008 */        jr $ra
  /* 049664 800CDC84 00000000 */       nop 

glabel func_ovl0_800CDC88
  /* 049668 800CDC88 27BDFFE8 */     addiu $sp, $sp, -0x18
  /* 04966C 800CDC8C AFBF0014 */        sw $ra, 0x14($sp)
  /* 049670 800CDC90 3C01800D */       lui $at, %hi(D_ovl0_800D6348)
  /* 049674 800CDC94 0C033703 */       jal func_ovl0_800CDC0C
  /* 049678 800CDC98 AC256348 */        sw $a1, %lo(D_ovl0_800D6348)($at)
  /* 04967C 800CDC9C 8FBF0014 */        lw $ra, 0x14($sp)
  /* 049680 800CDCA0 27BD0018 */     addiu $sp, $sp, 0x18
  /* 049684 800CDCA4 03E00008 */        jr $ra
  /* 049688 800CDCA8 00000000 */       nop 

glabel func_ovl0_800CDCAC
  /* 04968C 800CDCAC 27BDFFE0 */     addiu $sp, $sp, -0x20
  /* 049690 800CDCB0 AFBF001C */        sw $ra, 0x1c($sp)
  /* 049694 800CDCB4 AFB00018 */        sw $s0, 0x18($sp)
  /* 049698 800CDCB8 0C033588 */       jal func_ovl0_800CD620
  /* 04969C 800CDCBC AFA40020 */        sw $a0, 0x20($sp)
  /* 0496A0 800CDCC0 10400003 */      beqz $v0, .L800CDCD0
  /* 0496A4 800CDCC4 3C10800D */       lui $s0, %hi(D_ovl0_800D62F0)
  /* 0496A8 800CDCC8 10000020 */         b .L800CDD4C
  /* 0496AC 800CDCCC 8FBF001C */        lw $ra, 0x1c($sp)
  .L800CDCD0:
  /* 0496B0 800CDCD0 8E1062F0 */        lw $s0, %lo(D_ovl0_800D62F0)($s0)
  /* 0496B4 800CDCD4 2401FFF0 */     addiu $at, $zero, -0x10
  /* 0496B8 800CDCD8 8FA40020 */        lw $a0, 0x20($sp)
  /* 0496BC 800CDCDC 2610000F */     addiu $s0, $s0, 0xf
  /* 0496C0 800CDCE0 0C033605 */       jal func_ovl0_800CD814
  /* 0496C4 800CDCE4 02018024 */       and $s0, $s0, $at
  /* 0496C8 800CDCE8 3C0E800D */       lui $t6, %hi(D_ovl0_800D6334)
  /* 0496CC 800CDCEC 8DCE6334 */        lw $t6, %lo(D_ovl0_800D6334)($t6)
  /* 0496D0 800CDCF0 3C03800D */       lui $v1, %hi(D_ovl0_800D62E0)
  /* 0496D4 800CDCF4 246362E0 */     addiu $v1, $v1, %lo(D_ovl0_800D62E0)
  /* 0496D8 800CDCF8 95C6000A */       lhu $a2, 0xa($t6)
  /* 0496DC 800CDCFC 8C6F0014 */        lw $t7, 0x14($v1) # D_ovl0_800D62E0 + 20
  /* 0496E0 800CDD00 02002825 */        or $a1, $s0, $zero
  /* 0496E4 800CDD04 00063080 */       sll $a2, $a2, 2
  /* 0496E8 800CDD08 02061021 */      addu $v0, $s0, $a2
  /* 0496EC 800CDD0C 01E2082B */      sltu $at, $t7, $v0
  /* 0496F0 800CDD10 10200009 */      beqz $at, .L800CDD38
  /* 0496F4 800CDD14 24070001 */     addiu $a3, $zero, 1
  /* 0496F8 800CDD18 3C10800D */       lui $s0, %hi(D_ovl0_800D5F88)
  /* 0496FC 800CDD1C 26105F88 */     addiu $s0, $s0, %lo(D_ovl0_800D5F88)
  .L800CDD20:
  /* 049700 800CDD20 0C008D89 */       jal fatal_printf
  /* 049704 800CDD24 02002025 */        or $a0, $s0, $zero
  /* 049708 800CDD28 0C028C10 */       jal func_800A3040
  /* 04970C 800CDD2C 00000000 */       nop 
  /* 049710 800CDD30 1000FFFB */         b .L800CDD20
  /* 049714 800CDD34 00000000 */       nop 
  .L800CDD38:
  /* 049718 800CDD38 AC620010 */        sw $v0, 0x10($v1)
  /* 04971C 800CDD3C 0C033615 */       jal func_ovl0_800CD854
  /* 049720 800CDD40 8FA40020 */        lw $a0, 0x20($sp)
  /* 049724 800CDD44 02001025 */        or $v0, $s0, $zero
  /* 049728 800CDD48 8FBF001C */        lw $ra, 0x1c($sp)
  .L800CDD4C:
  /* 04972C 800CDD4C 8FB00018 */        lw $s0, 0x18($sp)
  /* 049730 800CDD50 27BD0020 */     addiu $sp, $sp, 0x20
  /* 049734 800CDD54 03E00008 */        jr $ra
  /* 049738 800CDD58 00000000 */       nop 

glabel func_ovl0_800CDD5C
  /* 04973C 800CDD5C 27BDFFE0 */     addiu $sp, $sp, -0x20
  /* 049740 800CDD60 AFBF0014 */        sw $ra, 0x14($sp)
  /* 049744 800CDD64 0C0335A6 */       jal func_ovl0_800CD698
  /* 049748 800CDD68 AFA40020 */        sw $a0, 0x20($sp)
  /* 04974C 800CDD6C 10400003 */      beqz $v0, .L800CDD7C
  /* 049750 800CDD70 3C0E800D */       lui $t6, %hi(D_ovl0_800D6348)
  /* 049754 800CDD74 10000015 */         b .L800CDDCC
  /* 049758 800CDD78 8FBF0014 */        lw $ra, 0x14($sp)
  .L800CDD7C:
  /* 04975C 800CDD7C 8DCE6348 */        lw $t6, %lo(D_ovl0_800D6348)($t6)
  /* 049760 800CDD80 2401FFF0 */     addiu $at, $zero, -0x10
  /* 049764 800CDD84 8FA40020 */        lw $a0, 0x20($sp)
  /* 049768 800CDD88 25CF000F */     addiu $t7, $t6, 0xf
  /* 04976C 800CDD8C 01E1C024 */       and $t8, $t7, $at
  /* 049770 800CDD90 0C033605 */       jal func_ovl0_800CD814
  /* 049774 800CDD94 AFB8001C */        sw $t8, 0x1c($sp)
  /* 049778 800CDD98 3C19800D */       lui $t9, %hi(D_ovl0_800D6334)
  /* 04977C 800CDD9C 8F396334 */        lw $t9, %lo(D_ovl0_800D6334)($t9)
  /* 049780 800CDDA0 8FA5001C */        lw $a1, 0x1c($sp)
  /* 049784 800CDDA4 3C01800D */       lui $at, %hi(D_ovl0_800D6348)
  /* 049788 800CDDA8 9726000A */       lhu $a2, 0xa($t9)
  /* 04978C 800CDDAC 8FA40020 */        lw $a0, 0x20($sp)
  /* 049790 800CDDB0 24070002 */     addiu $a3, $zero, 2
  /* 049794 800CDDB4 00063080 */       sll $a2, $a2, 2
  /* 049798 800CDDB8 00A64021 */      addu $t0, $a1, $a2
  /* 04979C 800CDDBC 0C033615 */       jal func_ovl0_800CD854
  /* 0497A0 800CDDC0 AC286348 */        sw $t0, %lo(D_ovl0_800D6348)($at)
  /* 0497A4 800CDDC4 8FA2001C */        lw $v0, 0x1c($sp)
  /* 0497A8 800CDDC8 8FBF0014 */        lw $ra, 0x14($sp)
  .L800CDDCC:
  /* 0497AC 800CDDCC 27BD0020 */     addiu $sp, $sp, 0x20
  /* 0497B0 800CDDD0 03E00008 */        jr $ra
  /* 0497B4 800CDDD4 00000000 */       nop 

glabel func_ovl0_800CDDD8
  /* 0497B8 800CDDD8 3C01800D */       lui $at, %hi(D_ovl0_800D6348)
  /* 0497BC 800CDDDC 27BDFFE8 */     addiu $sp, $sp, -0x18
  /* 0497C0 800CDDE0 AC256348 */        sw $a1, %lo(D_ovl0_800D6348)($at)
  /* 0497C4 800CDDE4 AFBF0014 */        sw $ra, 0x14($sp)
  /* 0497C8 800CDDE8 3C01800D */       lui $at, %hi(D_ovl0_800D6304)
  /* 0497CC 800CDDEC 0C033757 */       jal func_ovl0_800CDD5C
  /* 0497D0 800CDDF0 AC206304 */        sw $zero, %lo(D_ovl0_800D6304)($at)
  /* 0497D4 800CDDF4 8FBF0014 */        lw $ra, 0x14($sp)
  /* 0497D8 800CDDF8 27BD0018 */     addiu $sp, $sp, 0x18
  /* 0497DC 800CDDFC 03E00008 */        jr $ra
  /* 0497E0 800CDE00 00000000 */       nop 

glabel func_ovl0_800CDE04
  /* 0497E4 800CDE04 27BDFFD8 */     addiu $sp, $sp, -0x28
  /* 0497E8 800CDE08 AFB20020 */        sw $s2, 0x20($sp)
  /* 0497EC 800CDE0C AFB1001C */        sw $s1, 0x1c($sp)
  /* 0497F0 800CDE10 AFB00018 */        sw $s0, 0x18($sp)
  /* 0497F4 800CDE14 3C01800D */       lui $at, %hi(D_ovl0_800D6348)
  /* 0497F8 800CDE18 00A08025 */        or $s0, $a1, $zero
  /* 0497FC 800CDE1C 00808825 */        or $s1, $a0, $zero
  /* 049800 800CDE20 00C09025 */        or $s2, $a2, $zero
  /* 049804 800CDE24 AFBF0024 */        sw $ra, 0x24($sp)
  /* 049808 800CDE28 AFA70034 */        sw $a3, 0x34($sp)
  /* 04980C 800CDE2C 10A00008 */      beqz $a1, .L800CDE50
  /* 049810 800CDE30 AC276348 */        sw $a3, %lo(D_ovl0_800D6348)($at)
  .L800CDE34:
  /* 049814 800CDE34 0C033703 */       jal func_ovl0_800CDC0C
  /* 049818 800CDE38 8E240000 */        lw $a0, ($s1)
  /* 04981C 800CDE3C 2610FFFF */     addiu $s0, $s0, -1
  /* 049820 800CDE40 AE420000 */        sw $v0, ($s2)
  /* 049824 800CDE44 26310004 */     addiu $s1, $s1, 4
  /* 049828 800CDE48 1600FFFA */      bnez $s0, .L800CDE34
  /* 04982C 800CDE4C 26520004 */     addiu $s2, $s2, 4
  .L800CDE50:
  /* 049830 800CDE50 8FBF0024 */        lw $ra, 0x24($sp)
  /* 049834 800CDE54 3C0F800D */       lui $t7, %hi(D_ovl0_800D6348)
  /* 049838 800CDE58 8DEF6348 */        lw $t7, %lo(D_ovl0_800D6348)($t7)
  /* 04983C 800CDE5C 8FB80034 */        lw $t8, 0x34($sp)
  /* 049840 800CDE60 8FB00018 */        lw $s0, 0x18($sp)
  /* 049844 800CDE64 8FB1001C */        lw $s1, 0x1c($sp)
  /* 049848 800CDE68 8FB20020 */        lw $s2, 0x20($sp)
  /* 04984C 800CDE6C 27BD0028 */     addiu $sp, $sp, 0x28
  /* 049850 800CDE70 03E00008 */        jr $ra
  /* 049854 800CDE74 01F81023 */      subu $v0, $t7, $t8

  /* 049858 800CDE78 27BDFFD0 */     addiu $sp, $sp, -0x30
  /* 04985C 800CDE7C 3C03800D */       lui $v1, %hi(D_ovl0_800D62F0)
  /* 049860 800CDE80 8C6362F0 */        lw $v1, %lo(D_ovl0_800D62F0)($v1)
  /* 049864 800CDE84 AFB20020 */        sw $s2, 0x20($sp)
  /* 049868 800CDE88 AFB1001C */        sw $s1, 0x1c($sp)
  /* 04986C 800CDE8C AFB00018 */        sw $s0, 0x18($sp)
  /* 049870 800CDE90 00A08025 */        or $s0, $a1, $zero
  /* 049874 800CDE94 00808825 */        or $s1, $a0, $zero
  /* 049878 800CDE98 00C09025 */        or $s2, $a2, $zero
  /* 04987C 800CDE9C AFBF0024 */        sw $ra, 0x24($sp)
  /* 049880 800CDEA0 10A0000A */      beqz $a1, .L800CDECC
  /* 049884 800CDEA4 AFA30028 */        sw $v1, 0x28($sp)
  .L800CDEA8:
  /* 049888 800CDEA8 0C03372B */       jal func_ovl0_800CDCAC
  /* 04988C 800CDEAC 8E240000 */        lw $a0, ($s1)
  /* 049890 800CDEB0 2610FFFF */     addiu $s0, $s0, -1
  /* 049894 800CDEB4 AE420000 */        sw $v0, ($s2)
  /* 049898 800CDEB8 26310004 */     addiu $s1, $s1, 4
  /* 04989C 800CDEBC 1600FFFA */      bnez $s0, .L800CDEA8
  /* 0498A0 800CDEC0 26520004 */     addiu $s2, $s2, 4
  /* 0498A4 800CDEC4 3C03800D */       lui $v1, %hi(D_ovl0_800D62F0)
  /* 0498A8 800CDEC8 8C6362F0 */        lw $v1, %lo(D_ovl0_800D62F0)($v1)
  .L800CDECC:
  /* 0498AC 800CDECC 8FBF0024 */        lw $ra, 0x24($sp)
  /* 0498B0 800CDED0 8FAE0028 */        lw $t6, 0x28($sp)
  /* 0498B4 800CDED4 8FB00018 */        lw $s0, 0x18($sp)
  /* 0498B8 800CDED8 8FB1001C */        lw $s1, 0x1c($sp)
  /* 0498BC 800CDEDC 8FB20020 */        lw $s2, 0x20($sp)
  /* 0498C0 800CDEE0 27BD0030 */     addiu $sp, $sp, 0x30
  /* 0498C4 800CDEE4 03E00008 */        jr $ra
  /* 0498C8 800CDEE8 006E1023 */      subu $v0, $v1, $t6

glabel func_ovl0_800CDEEC
  /* 0498CC 800CDEEC 27BDFF00 */     addiu $sp, $sp, -0x100
  /* 0498D0 800CDEF0 27AE0038 */     addiu $t6, $sp, 0x38
  /* 0498D4 800CDEF4 3C01800D */       lui $at, %hi(D_ovl0_800D633C)
  /* 0498D8 800CDEF8 AC2E633C */        sw $t6, %lo(D_ovl0_800D633C)($at)
  /* 0498DC 800CDEFC 3C01800D */       lui $at, %hi(D_ovl0_800D6340)
  /* 0498E0 800CDF00 AC206340 */        sw $zero, %lo(D_ovl0_800D6340)($at)
  /* 0498E4 800CDF04 AFB2001C */        sw $s2, 0x1c($sp)
  /* 0498E8 800CDF08 AFB10018 */        sw $s1, 0x18($sp)
  /* 0498EC 800CDF0C AFB00014 */        sw $s0, 0x14($sp)
  /* 0498F0 800CDF10 3C01800D */       lui $at, %hi(D_ovl0_800D6344)
  /* 0498F4 800CDF14 240F0032 */     addiu $t7, $zero, 0x32
  /* 0498F8 800CDF18 00A08025 */        or $s0, $a1, $zero
  /* 0498FC 800CDF1C 00808825 */        or $s1, $a0, $zero
  /* 049900 800CDF20 AFBF0024 */        sw $ra, 0x24($sp)
  /* 049904 800CDF24 AFB30020 */        sw $s3, 0x20($sp)
  /* 049908 800CDF28 00009025 */        or $s2, $zero, $zero
  /* 04990C 800CDF2C 10A0000A */      beqz $a1, .L800CDF58
  /* 049910 800CDF30 AC2F6344 */        sw $t7, %lo(D_ovl0_800D6344)($at)
  /* 049914 800CDF34 2413FFF0 */     addiu $s3, $zero, -0x10
  .L800CDF38:
  /* 049918 800CDF38 2658000F */     addiu $t8, $s2, 0xf
  /* 04991C 800CDF3C 03139024 */       and $s2, $t8, $s3
  /* 049920 800CDF40 0C03368E */       jal func_ovl0_800CDA38
  /* 049924 800CDF44 8E240000 */        lw $a0, ($s1)
  /* 049928 800CDF48 2610FFFF */     addiu $s0, $s0, -1
  /* 04992C 800CDF4C 02429021 */      addu $s2, $s2, $v0
  /* 049930 800CDF50 1600FFF9 */      bnez $s0, .L800CDF38
  /* 049934 800CDF54 26310004 */     addiu $s1, $s1, 4
  .L800CDF58:
  /* 049938 800CDF58 8FBF0024 */        lw $ra, 0x24($sp)
  /* 04993C 800CDF5C 02401025 */        or $v0, $s2, $zero
  /* 049940 800CDF60 8FB2001C */        lw $s2, 0x1c($sp)
  /* 049944 800CDF64 8FB00014 */        lw $s0, 0x14($sp)
  /* 049948 800CDF68 8FB10018 */        lw $s1, 0x18($sp)
  /* 04994C 800CDF6C 8FB30020 */        lw $s3, 0x20($sp)
  /* 049950 800CDF70 03E00008 */        jr $ra
  /* 049954 800CDF74 27BD0100 */     addiu $sp, $sp, 0x100

glabel func_ovl0_800CDF78
  /* 049958 800CDF78 8C8E0000 */        lw $t6, ($a0)
  /* 04995C 800CDF7C 3C02800D */       lui $v0, %hi(D_ovl0_800D62E0)
  /* 049960 800CDF80 244262E0 */     addiu $v0, $v0, %lo(D_ovl0_800D62E0)
  /* 049964 800CDF84 AC4E0000 */        sw $t6, ($v0) # D_ovl0_800D62E0 + 0
  /* 049968 800CDF88 8C8F0004 */        lw $t7, 4($a0)
  /* 04996C 800CDF8C 2401FFF0 */     addiu $at, $zero, -0x10
  /* 049970 800CDF90 3C03800D */       lui $v1, %hi(D_ovl0_800D6334)
  /* 049974 800CDF94 AC4F0004 */        sw $t7, 4($v0) # D_ovl0_800D62E0 + 4
  /* 049978 800CDF98 8C990004 */        lw $t9, 4($a0)
  /* 04997C 800CDF9C 8C980000 */        lw $t8, ($a0)
  /* 049980 800CDFA0 24636334 */     addiu $v1, $v1, %lo(D_ovl0_800D6334)
  /* 049984 800CDFA4 00194080 */       sll $t0, $t9, 2
  /* 049988 800CDFA8 01194023 */      subu $t0, $t0, $t9
  /* 04998C 800CDFAC 00084080 */       sll $t0, $t0, 2
  /* 049990 800CDFB0 03084821 */      addu $t1, $t8, $t0
  /* 049994 800CDFB4 252A000C */     addiu $t2, $t1, 0xc
  /* 049998 800CDFB8 AC4A0008 */        sw $t2, 8($v0) # D_ovl0_800D62E0 + 8
  /* 04999C 800CDFBC 8C8B0008 */        lw $t3, 8($a0)
  /* 0499A0 800CDFC0 3C19800D */       lui $t9, %hi(D_ovl0_800D6310)
  /* 0499A4 800CDFC4 27396310 */     addiu $t9, $t9, %lo(D_ovl0_800D6310)
  /* 0499A8 800CDFC8 AC4B0010 */        sw $t3, 0x10($v0) # D_ovl0_800D62E0 + 16
  /* 0499AC 800CDFCC AC4B000C */        sw $t3, 0xc($v0) # D_ovl0_800D62E0 + 12
  /* 0499B0 800CDFD0 8C8E000C */        lw $t6, 0xc($a0)
  /* 0499B4 800CDFD4 8C8D0008 */        lw $t5, 8($a0)
  /* 0499B8 800CDFD8 2738000F */     addiu $t8, $t9, 0xf
  /* 0499BC 800CDFDC 03014024 */       and $t0, $t8, $at
  /* 0499C0 800CDFE0 01AE7821 */      addu $t7, $t5, $t6
  /* 0499C4 800CDFE4 AC4F0014 */        sw $t7, 0x14($v0) # D_ovl0_800D62E0 + 20
  /* 0499C8 800CDFE8 AC680000 */        sw $t0, ($v1) # D_ovl0_800D6334 + 0
  /* 0499CC 800CDFEC 250A000C */     addiu $t2, $t0, 0xc
  /* 0499D0 800CDFF0 3C01800D */       lui $at, %hi(D_ovl0_800D6338)
  /* 0499D4 800CDFF4 AC2A6338 */        sw $t2, %lo(D_ovl0_800D6338)($at)
  /* 0499D8 800CDFF8 AC400018 */        sw $zero, 0x18($v0) # D_ovl0_800D62E0 + 24
  /* 0499DC 800CDFFC 8C8B0014 */        lw $t3, 0x14($a0)
  /* 0499E0 800CE000 AC4B001C */        sw $t3, 0x1c($v0) # D_ovl0_800D62E0 + 28
  /* 0499E4 800CE004 8C8C0010 */        lw $t4, 0x10($a0)
  /* 0499E8 800CE008 AC4C0020 */        sw $t4, 0x20($v0) # D_ovl0_800D62E0 + 32
  /* 0499EC 800CE00C 8C8D001C */        lw $t5, 0x1c($a0)
  /* 0499F0 800CE010 AC4D0028 */        sw $t5, 0x28($v0) # D_ovl0_800D62E0 + 40
  /* 0499F4 800CE014 8C8E0018 */        lw $t6, 0x18($a0)
  /* 0499F8 800CE018 03E00008 */        jr $ra
  /* 0499FC 800CE01C AC4E002C */        sw $t6, 0x2c($v0) # D_ovl0_800D62E0 + 44
