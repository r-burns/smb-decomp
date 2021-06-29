.include "macros.inc"

.section .text, "ax"  # 0x800065A0 - 0x8010F860

.global __va_arg
__va_arg:
/* 801033C0 000FF2E0  54 80 06 3E */	clrlwi r0, r4, 0x18
/* 801033C4 000FF2E4  88 C3 00 00 */	lbz r6, 0(r3)
/* 801033C8 000FF2E8  28 00 00 04 */	cmplwi r0, 4
/* 801033CC 000FF2EC  38 E3 00 00 */	addi r7, r3, 0
/* 801033D0 000FF2F0  7C C6 07 74 */	extsb r6, r6
/* 801033D4 000FF2F4  38 A0 00 08 */	li r5, 8
/* 801033D8 000FF2F8  39 00 00 04 */	li r8, 4
/* 801033DC 000FF2FC  39 20 00 01 */	li r9, 1
/* 801033E0 000FF300  39 40 00 00 */	li r10, 0
/* 801033E4 000FF304  39 60 00 00 */	li r11, 0
/* 801033E8 000FF308  39 80 00 04 */	li r12, 4
/* 801033EC 000FF30C  40 82 00 20 */	bne lbl_8010340C
/* 801033F0 000FF310  80 83 00 04 */	lwz r4, 4(r3)
/* 801033F4 000FF314  38 04 00 0F */	addi r0, r4, 0xf
/* 801033F8 000FF318  54 04 00 36 */	rlwinm r4, r0, 0, 0, 0x1b
/* 801033FC 000FF31C  38 04 00 10 */	addi r0, r4, 0x10
/* 80103400 000FF320  90 03 00 04 */	stw r0, 4(r3)
/* 80103404 000FF324  7C 83 23 78 */	mr r3, r4
/* 80103408 000FF328  4E 80 00 20 */	blr 
lbl_8010340C:
/* 8010340C 000FF32C  28 00 00 03 */	cmplwi r0, 3
/* 80103410 000FF330  40 82 00 1C */	bne lbl_8010342C
/* 80103414 000FF334  88 C3 00 01 */	lbz r6, 1(r3)
/* 80103418 000FF338  38 E3 00 01 */	addi r7, r3, 1
/* 8010341C 000FF33C  39 00 00 08 */	li r8, 8
/* 80103420 000FF340  7C C6 07 74 */	extsb r6, r6
/* 80103424 000FF344  39 60 00 20 */	li r11, 0x20
/* 80103428 000FF348  39 80 00 08 */	li r12, 8
lbl_8010342C:
/* 8010342C 000FF34C  54 80 06 3E */	clrlwi r0, r4, 0x18
/* 80103430 000FF350  28 00 00 02 */	cmplwi r0, 2
/* 80103434 000FF354  40 82 00 1C */	bne lbl_80103450
/* 80103438 000FF358  54 C0 07 FF */	clrlwi. r0, r6, 0x1f
/* 8010343C 000FF35C  39 00 00 08 */	li r8, 8
/* 80103440 000FF360  38 A0 00 07 */	li r5, 7
/* 80103444 000FF364  41 82 00 08 */	beq lbl_8010344C
/* 80103448 000FF368  39 40 00 01 */	li r10, 1
lbl_8010344C:
/* 8010344C 000FF36C  39 20 00 02 */	li r9, 2
lbl_80103450:
/* 80103450 000FF370  7C 06 28 00 */	cmpw r6, r5
/* 80103454 000FF374  40 80 00 24 */	bge lbl_80103478
/* 80103458 000FF378  7C C6 52 14 */	add r6, r6, r10
/* 8010345C 000FF37C  80 A3 00 08 */	lwz r5, 8(r3)
/* 80103460 000FF380  7C 66 61 D6 */	mullw r3, r6, r12
/* 80103464 000FF384  7C 06 4A 14 */	add r0, r6, r9
/* 80103468 000FF388  7C CB 1A 14 */	add r6, r11, r3
/* 8010346C 000FF38C  98 07 00 00 */	stb r0, 0(r7)
/* 80103470 000FF390  7C C5 32 14 */	add r6, r5, r6
/* 80103474 000FF394  48 00 00 2C */	b lbl_801034A0
lbl_80103478:
/* 80103478 000FF398  38 00 00 08 */	li r0, 8
/* 8010347C 000FF39C  98 07 00 00 */	stb r0, 0(r7)
/* 80103480 000FF3A0  38 08 FF FF */	addi r0, r8, -1
/* 80103484 000FF3A4  7C 06 00 F8 */	nor r6, r0, r0
/* 80103488 000FF3A8  80 03 00 04 */	lwz r0, 4(r3)
/* 8010348C 000FF3AC  7C A8 02 14 */	add r5, r8, r0
/* 80103490 000FF3B0  38 05 FF FF */	addi r0, r5, -1
/* 80103494 000FF3B4  7C C6 00 38 */	and r6, r6, r0
/* 80103498 000FF3B8  7C 06 42 14 */	add r0, r6, r8
/* 8010349C 000FF3BC  90 03 00 04 */	stw r0, 4(r3)
lbl_801034A0:
/* 801034A0 000FF3C0  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 801034A4 000FF3C4  40 82 00 08 */	bne lbl_801034AC
/* 801034A8 000FF3C8  80 C6 00 00 */	lwz r6, 0(r6)
lbl_801034AC:
/* 801034AC 000FF3CC  7C C3 33 78 */	mr r3, r6
/* 801034B0 000FF3D0  4E 80 00 20 */	blr 