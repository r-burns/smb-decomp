.include "macros.inc"

.section .text

.global func_800341BC
func_800341BC:
/* 800341BC 000300DC  7C 08 02 A6 */	mflr r0
/* 800341C0 000300E0  3C C0 80 11 */	lis r6, lbl_80114F68@ha
/* 800341C4 000300E4  90 01 00 04 */	stw r0, 4(r1)
/* 800341C8 000300E8  54 A5 13 BA */	rlwinm r5, r5, 2, 0xe, 0x1d
/* 800341CC 000300EC  38 06 4F 68 */	addi r0, r6, lbl_80114F68@l
/* 800341D0 000300F0  94 21 FF A8 */	stwu r1, -0x58(r1)
/* 800341D4 000300F4  DB E1 00 50 */	stfd f31, 0x50(r1)
/* 800341D8 000300F8  BF 01 00 30 */	stmw r24, 0x30(r1)
/* 800341DC 000300FC  3B 03 00 00 */	addi r24, r3, 0
/* 800341E0 00030100  7F 1F C3 78 */	mr r31, r24
/* 800341E4 00030104  83 A4 00 0C */	lwz r29, 0xc(r4)
/* 800341E8 00030108  83 84 00 10 */	lwz r28, 0x10(r4)
/* 800341EC 0003010C  83 64 00 04 */	lwz r27, 4(r4)
/* 800341F0 00030110  83 44 00 08 */	lwz r26, 8(r4)
/* 800341F4 00030114  7C 80 2A 14 */	add r4, r0, r5
/* 800341F8 00030118  83 C4 00 00 */	lwz r30, 0(r4)
/* 800341FC 0003011C  4B FD 33 69 */	bl mathutil_mtxA_from_identity
/* 80034200 00030120  38 00 FF FF */	li r0, -1
/* 80034204 00030124  90 18 01 A0 */	stw r0, 0x1a0(r24)
/* 80034208 00030128  3B 20 00 00 */	li r25, 0
/* 8003420C 0003012C  C3 E2 8B 08 */	lfs f31, lbl_802F3308-_SDA2_BASE_(r2)
lbl_80034210:
/* 80034210 00030130  80 1E 00 00 */	lwz r0, 0(r30)
/* 80034214 00030134  38 78 01 D8 */	addi r3, r24, 0x1d8
/* 80034218 00030138  90 18 00 00 */	stw r0, 0(r24)
/* 8003421C 0003013C  4B FD 36 5D */	bl mathutil_mtxA_to_mtx
/* 80034220 00030140  38 78 02 08 */	addi r3, r24, 0x208
/* 80034224 00030144  4B FD 36 55 */	bl mathutil_mtxA_to_mtx
/* 80034228 00030148  80 18 00 00 */	lwz r0, 0(r24)
/* 8003422C 0003014C  54 00 06 73 */	rlwinm. r0, r0, 0, 0x19, 0x19
/* 80034230 00030150  41 82 00 6C */	beq lbl_8003429C
/* 80034234 00030154  4B FD 35 BD */	bl mathutil_mtxA_push
/* 80034238 00030158  C0 1A 00 08 */	lfs f0, 8(r26)
/* 8003423C 0003015C  EC 1F 00 32 */	fmuls f0, f31, f0
/* 80034240 00030160  FC 00 00 1E */	fctiwz f0, f0
/* 80034244 00030164  D8 01 00 28 */	stfd f0, 0x28(r1)
/* 80034248 00030168  80 01 00 2C */	lwz r0, 0x2c(r1)
/* 8003424C 0003016C  7C 03 07 34 */	extsh r3, r0
/* 80034250 00030170  4B FD 3E 39 */	bl mathutil_mtxA_rotate_z
/* 80034254 00030174  C0 1A 00 04 */	lfs f0, 4(r26)
/* 80034258 00030178  EC 1F 00 32 */	fmuls f0, f31, f0
/* 8003425C 0003017C  FC 00 00 1E */	fctiwz f0, f0
/* 80034260 00030180  D8 01 00 20 */	stfd f0, 0x20(r1)
/* 80034264 00030184  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80034268 00030188  7C 03 07 34 */	extsh r3, r0
/* 8003426C 0003018C  4B FD 3D 91 */	bl mathutil_mtxA_rotate_y
/* 80034270 00030190  C0 1A 00 00 */	lfs f0, 0(r26)
/* 80034274 00030194  EC 1F 00 32 */	fmuls f0, f31, f0
/* 80034278 00030198  FC 00 00 1E */	fctiwz f0, f0
/* 8003427C 0003019C  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 80034280 000301A0  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 80034284 000301A4  7C 03 07 34 */	extsh r3, r0
/* 80034288 000301A8  4B FD 3D 01 */	bl mathutil_mtxA_rotate_x
/* 8003428C 000301AC  38 78 00 1C */	addi r3, r24, 0x1c
/* 80034290 000301B0  4B FD 35 E9 */	bl mathutil_mtxA_to_mtx
/* 80034294 000301B4  3B 5A 00 0C */	addi r26, r26, 0xc
/* 80034298 000301B8  4B FD 35 9D */	bl mathutil_mtxA_pop
lbl_8003429C:
/* 8003429C 000301BC  80 1B 00 00 */	lwz r0, 0(r27)
/* 800342A0 000301C0  57 24 06 3E */	clrlwi r4, r25, 0x18
/* 800342A4 000301C4  38 A0 00 00 */	li r5, 0
/* 800342A8 000301C8  90 18 00 4C */	stw r0, 0x4c(r24)
/* 800342AC 000301CC  80 1B 00 04 */	lwz r0, 4(r27)
/* 800342B0 000301D0  90 18 00 50 */	stw r0, 0x50(r24)
/* 800342B4 000301D4  48 00 00 20 */	b lbl_800342D4
lbl_800342B8:
/* 800342B8 000301D8  80 78 00 50 */	lwz r3, 0x50(r24)
/* 800342BC 000301DC  54 A0 06 3E */	clrlwi r0, r5, 0x18
/* 800342C0 000301E0  38 A5 00 01 */	addi r5, r5, 1
/* 800342C4 000301E4  7C 03 00 AE */	lbzx r0, r3, r0
/* 800342C8 000301E8  1C 60 02 38 */	mulli r3, r0, 0x238
/* 800342CC 000301EC  38 03 01 A0 */	addi r0, r3, 0x1a0
/* 800342D0 000301F0  7C 9F 01 2E */	stwx r4, r31, r0
lbl_800342D4:
/* 800342D4 000301F4  80 18 00 4C */	lwz r0, 0x4c(r24)
/* 800342D8 000301F8  54 A3 06 3E */	clrlwi r3, r5, 0x18
/* 800342DC 000301FC  7C 03 00 40 */	cmplw r3, r0
/* 800342E0 00030200  41 80 FF D8 */	blt lbl_800342B8
/* 800342E4 00030204  80 18 00 00 */	lwz r0, 0(r24)
/* 800342E8 00030208  54 00 07 BD */	rlwinm. r0, r0, 0, 0x1e, 0x1e
/* 800342EC 0003020C  41 82 00 3C */	beq lbl_80034328
/* 800342F0 00030210  80 7D 00 00 */	lwz r3, 0(r29)
/* 800342F4 00030214  80 1D 00 04 */	lwz r0, 4(r29)
/* 800342F8 00030218  90 78 00 04 */	stw r3, 4(r24)
/* 800342FC 0003021C  90 18 00 08 */	stw r0, 8(r24)
/* 80034300 00030220  80 1D 00 08 */	lwz r0, 8(r29)
/* 80034304 00030224  3B BD 00 0C */	addi r29, r29, 0xc
/* 80034308 00030228  90 18 00 0C */	stw r0, 0xc(r24)
/* 8003430C 0003022C  80 7C 00 00 */	lwz r3, 0(r28)
/* 80034310 00030230  80 1C 00 04 */	lwz r0, 4(r28)
/* 80034314 00030234  90 78 00 10 */	stw r3, 0x10(r24)
/* 80034318 00030238  90 18 00 14 */	stw r0, 0x14(r24)
/* 8003431C 0003023C  80 1C 00 08 */	lwz r0, 8(r28)
/* 80034320 00030240  3B 9C 00 0C */	addi r28, r28, 0xc
/* 80034324 00030244  90 18 00 18 */	stw r0, 0x18(r24)
lbl_80034328:
/* 80034328 00030248  84 1E 00 04 */	lwzu r0, 4(r30)
/* 8003432C 0003024C  28 00 00 00 */	cmplwi r0, 0
/* 80034330 00030250  41 82 00 14 */	beq lbl_80034344
/* 80034334 00030254  3B 18 02 38 */	addi r24, r24, 0x238
/* 80034338 00030258  3B 7B 00 08 */	addi r27, r27, 8
/* 8003433C 0003025C  3B 39 00 01 */	addi r25, r25, 1
/* 80034340 00030260  4B FF FE D0 */	b lbl_80034210
lbl_80034344:
/* 80034344 00030264  90 18 02 38 */	stw r0, 0x238(r24)
/* 80034348 00030268  BB 01 00 30 */	lmw r24, 0x30(r1)
/* 8003434C 0003026C  80 01 00 5C */	lwz r0, 0x5c(r1)
/* 80034350 00030270  CB E1 00 50 */	lfd f31, 0x50(r1)
/* 80034354 00030274  38 21 00 58 */	addi r1, r1, 0x58
/* 80034358 00030278  7C 08 03 A6 */	mtlr r0
/* 8003435C 0003027C  4E 80 00 20 */	blr

.global func_80034360
func_80034360:
/* 80034360 00030280  7C 08 02 A6 */	mflr r0
/* 80034364 00030284  90 01 00 04 */	stw r0, 4(r1)
/* 80034368 00030288  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8003436C 0003028C  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 80034370 00030290  3B E4 00 00 */	addi r31, r4, 0
/* 80034374 00030294  93 C1 00 28 */	stw r30, 0x28(r1)
/* 80034378 00030298  3B C3 00 00 */	addi r30, r3, 0
/* 8003437C 0003029C  48 00 00 69 */	bl func_800343E4
/* 80034380 000302A0  57 E0 04 3E */	clrlwi r0, r31, 0x10
/* 80034384 000302A4  80 6D 9D 20 */	lwz r3, lbl_802F1F00@sda21(r13)
/* 80034388 000302A8  1C 00 00 18 */	mulli r0, r0, 0x18
/* 8003438C 000302AC  7C C3 02 14 */	add r6, r3, r0
/* 80034390 000302B0  80 A6 FF E8 */	lwz r5, -0x18(r6)
/* 80034394 000302B4  7F C4 F3 78 */	mr r4, r30
/* 80034398 000302B8  80 06 FF EC */	lwz r0, -0x14(r6)
/* 8003439C 000302BC  38 61 00 10 */	addi r3, r1, 0x10
/* 800343A0 000302C0  90 A1 00 10 */	stw r5, 0x10(r1)
/* 800343A4 000302C4  90 01 00 14 */	stw r0, 0x14(r1)
/* 800343A8 000302C8  80 A6 FF F0 */	lwz r5, -0x10(r6)
/* 800343AC 000302CC  80 06 FF F4 */	lwz r0, -0xc(r6)
/* 800343B0 000302D0  90 A1 00 18 */	stw r5, 0x18(r1)
/* 800343B4 000302D4  90 01 00 1C */	stw r0, 0x1c(r1)
/* 800343B8 000302D8  80 A6 FF F8 */	lwz r5, -8(r6)
/* 800343BC 000302DC  80 06 FF FC */	lwz r0, -4(r6)
/* 800343C0 000302E0  90 A1 00 20 */	stw r5, 0x20(r1)
/* 800343C4 000302E4  90 01 00 24 */	stw r0, 0x24(r1)
/* 800343C8 000302E8  48 00 00 5D */	bl func_80034424
/* 800343CC 000302EC  80 01 00 34 */	lwz r0, 0x34(r1)
/* 800343D0 000302F0  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 800343D4 000302F4  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 800343D8 000302F8  7C 08 03 A6 */	mtlr r0
/* 800343DC 000302FC  38 21 00 30 */	addi r1, r1, 0x30
/* 800343E0 00030300  4E 80 00 20 */	blr

.global func_800343E4
func_800343E4:
/* 800343E4 00030304  38 80 00 00 */	li r4, 0
/* 800343E8 00030308  48 00 00 2C */	b lbl_80034414
lbl_800343EC:
/* 800343EC 0003030C  38 A3 00 54 */	addi r5, r3, 0x54
/* 800343F0 00030310  38 C0 00 06 */	li r6, 6
/* 800343F4 00030314  48 00 00 14 */	b lbl_80034408
lbl_800343F8:
/* 800343F8 00030318  98 85 00 01 */	stb r4, 1(r5)
/* 800343FC 0003031C  38 C6 FF FF */	addi r6, r6, -1
/* 80034400 00030320  98 85 00 00 */	stb r4, 0(r5)
/* 80034404 00030324  38 A5 00 10 */	addi r5, r5, 0x10
lbl_80034408:
/* 80034408 00030328  54 C0 06 3F */	clrlwi. r0, r6, 0x18
/* 8003440C 0003032C  40 82 FF EC */	bne lbl_800343F8
/* 80034410 00030330  38 63 02 38 */	addi r3, r3, 0x238
lbl_80034414:
/* 80034414 00030334  80 03 00 00 */	lwz r0, 0(r3)
/* 80034418 00030338  28 00 00 00 */	cmplwi r0, 0
/* 8003441C 0003033C  40 82 FF D0 */	bne lbl_800343EC
/* 80034420 00030340  4E 80 00 20 */	blr

.global func_80034424
func_80034424:
/* 80034424 00030344  7C 08 02 A6 */	mflr r0
/* 80034428 00030348  90 01 00 04 */	stw r0, 4(r1)
/* 8003442C 0003034C  94 21 FF D8 */	stwu r1, -0x28(r1)
/* 80034430 00030350  BF 61 00 14 */	stmw r27, 0x14(r1)
/* 80034434 00030354  7C 7B 1B 78 */	mr r27, r3
/* 80034438 00030358  3B 84 00 00 */	addi r28, r4, 0
/* 8003443C 0003035C  3B A0 00 00 */	li r29, 0
/* 80034440 00030360  83 C3 00 04 */	lwz r30, 4(r3)
/* 80034444 00030364  48 00 00 D8 */	b lbl_8003451C
lbl_80034448:
/* 80034448 00030368  88 7E 00 00 */	lbz r3, 0(r30)
/* 8003444C 0003036C  57 A0 06 3E */	clrlwi r0, r29, 0x18
/* 80034450 00030370  7C 03 00 40 */	cmplw r3, r0
/* 80034454 00030374  40 82 00 C0 */	bne lbl_80034514
/* 80034458 00030378  A3 FE 00 02 */	lhz r31, 2(r30)
/* 8003445C 0003037C  57 E0 05 EF */	rlwinm. r0, r31, 0, 0x17, 0x17
/* 80034460 00030380  41 82 00 10 */	beq lbl_80034470
/* 80034464 00030384  38 7B 00 00 */	addi r3, r27, 0
/* 80034468 00030388  38 9C 00 54 */	addi r4, r28, 0x54
/* 8003446C 0003038C  48 00 00 D1 */	bl func_8003453C
lbl_80034470:
/* 80034470 00030390  57 E0 06 31 */	rlwinm. r0, r31, 0, 0x18, 0x18
/* 80034474 00030394  41 82 00 10 */	beq lbl_80034484
/* 80034478 00030398  38 7B 00 00 */	addi r3, r27, 0
/* 8003447C 0003039C  38 9C 00 64 */	addi r4, r28, 0x64
/* 80034480 000303A0  48 00 00 BD */	bl func_8003453C
lbl_80034484:
/* 80034484 000303A4  57 E0 06 73 */	rlwinm. r0, r31, 0, 0x19, 0x19
/* 80034488 000303A8  41 82 00 10 */	beq lbl_80034498
/* 8003448C 000303AC  38 7B 00 00 */	addi r3, r27, 0
/* 80034490 000303B0  38 9C 00 74 */	addi r4, r28, 0x74
/* 80034494 000303B4  48 00 00 A9 */	bl func_8003453C
lbl_80034498:
/* 80034498 000303B8  57 E0 06 B5 */	rlwinm. r0, r31, 0, 0x1a, 0x1a
/* 8003449C 000303BC  41 82 00 10 */	beq lbl_800344AC
/* 800344A0 000303C0  38 7B 00 00 */	addi r3, r27, 0
/* 800344A4 000303C4  38 9C 00 84 */	addi r4, r28, 0x84
/* 800344A8 000303C8  48 00 00 95 */	bl func_8003453C
lbl_800344AC:
/* 800344AC 000303CC  57 E0 06 F7 */	rlwinm. r0, r31, 0, 0x1b, 0x1b
/* 800344B0 000303D0  41 82 00 10 */	beq lbl_800344C0
/* 800344B4 000303D4  38 7B 00 00 */	addi r3, r27, 0
/* 800344B8 000303D8  38 9C 00 94 */	addi r4, r28, 0x94
/* 800344BC 000303DC  48 00 00 81 */	bl func_8003453C
lbl_800344C0:
/* 800344C0 000303E0  57 E0 07 39 */	rlwinm. r0, r31, 0, 0x1c, 0x1c
/* 800344C4 000303E4  41 82 00 10 */	beq lbl_800344D4
/* 800344C8 000303E8  38 7B 00 00 */	addi r3, r27, 0
/* 800344CC 000303EC  38 9C 00 A4 */	addi r4, r28, 0xa4
/* 800344D0 000303F0  48 00 00 6D */	bl func_8003453C
lbl_800344D4:
/* 800344D4 000303F4  57 E0 07 7B */	rlwinm. r0, r31, 0, 0x1d, 0x1d
/* 800344D8 000303F8  41 82 00 10 */	beq lbl_800344E8
/* 800344DC 000303FC  38 7B 00 00 */	addi r3, r27, 0
/* 800344E0 00030400  38 80 00 00 */	li r4, 0
/* 800344E4 00030404  48 00 00 59 */	bl func_8003453C
lbl_800344E8:
/* 800344E8 00030408  57 E0 07 BD */	rlwinm. r0, r31, 0, 0x1e, 0x1e
/* 800344EC 0003040C  41 82 00 10 */	beq lbl_800344FC
/* 800344F0 00030410  38 7B 00 00 */	addi r3, r27, 0
/* 800344F4 00030414  38 80 00 00 */	li r4, 0
/* 800344F8 00030418  48 00 00 45 */	bl func_8003453C
lbl_800344FC:
/* 800344FC 0003041C  57 E0 07 FF */	clrlwi. r0, r31, 0x1f
/* 80034500 00030420  41 82 00 10 */	beq lbl_80034510
/* 80034504 00030424  38 7B 00 00 */	addi r3, r27, 0
/* 80034508 00030428  38 80 00 00 */	li r4, 0
/* 8003450C 0003042C  48 00 00 31 */	bl func_8003453C
lbl_80034510:
/* 80034510 00030430  3B DE 00 04 */	addi r30, r30, 4
lbl_80034514:
/* 80034514 00030434  3B BD 00 01 */	addi r29, r29, 1
/* 80034518 00030438  3B 9C 02 38 */	addi r28, r28, 0x238
lbl_8003451C:
/* 8003451C 0003043C  80 1C 00 00 */	lwz r0, 0(r28)
/* 80034520 00030440  28 00 00 00 */	cmplwi r0, 0
/* 80034524 00030444  40 82 FF 24 */	bne lbl_80034448
/* 80034528 00030448  BB 61 00 14 */	lmw r27, 0x14(r1)
/* 8003452C 0003044C  80 01 00 2C */	lwz r0, 0x2c(r1)
/* 80034530 00030450  38 21 00 28 */	addi r1, r1, 0x28
/* 80034534 00030454  7C 08 03 A6 */	mtlr r0
/* 80034538 00030458  4E 80 00 20 */	blr

.global func_8003453C
func_8003453C:
/* 8003453C 0003045C  80 A3 00 08 */	lwz r5, 8(r3)
/* 80034540 00030460  28 04 00 00 */	cmplwi r4, 0
/* 80034544 00030464  88 A5 00 00 */	lbz r5, 0(r5)
/* 80034548 00030468  41 82 00 20 */	beq lbl_80034568
/* 8003454C 0003046C  98 A4 00 00 */	stb r5, 0(r4)
/* 80034550 00030470  80 03 00 0C */	lwz r0, 0xc(r3)
/* 80034554 00030474  90 04 00 04 */	stw r0, 4(r4)
/* 80034558 00030478  80 03 00 10 */	lwz r0, 0x10(r3)
/* 8003455C 0003047C  90 04 00 08 */	stw r0, 8(r4)
/* 80034560 00030480  80 03 00 14 */	lwz r0, 0x14(r3)
/* 80034564 00030484  90 04 00 0C */	stw r0, 0xc(r4)
lbl_80034568:
/* 80034568 00030488  80 83 00 08 */	lwz r4, 8(r3)
/* 8003456C 0003048C  54 A0 08 3C */	slwi r0, r5, 1
/* 80034570 00030490  38 C0 00 00 */	li r6, 0
/* 80034574 00030494  38 84 00 01 */	addi r4, r4, 1
/* 80034578 00030498  90 83 00 08 */	stw r4, 8(r3)
/* 8003457C 0003049C  80 83 00 0C */	lwz r4, 0xc(r3)
/* 80034580 000304A0  7C 04 02 14 */	add r0, r4, r0
/* 80034584 000304A4  90 03 00 0C */	stw r0, 0xc(r3)
/* 80034588 000304A8  80 83 00 10 */	lwz r4, 0x10(r3)
/* 8003458C 000304AC  7C 04 2A 14 */	add r0, r4, r5
/* 80034590 000304B0  90 03 00 10 */	stw r0, 0x10(r3)
/* 80034594 000304B4  48 00 00 14 */	b lbl_800345A8
lbl_80034598:
/* 80034598 000304B8  88 04 00 00 */	lbz r0, 0(r4)
/* 8003459C 000304BC  38 A5 FF FF */	addi r5, r5, -1
/* 800345A0 000304C0  38 84 00 01 */	addi r4, r4, 1
/* 800345A4 000304C4  7C C6 02 14 */	add r6, r6, r0
lbl_800345A8:
/* 800345A8 000304C8  54 A0 06 3F */	clrlwi. r0, r5, 0x18
/* 800345AC 000304CC  40 82 FF EC */	bne lbl_80034598
/* 800345B0 000304D0  80 83 00 14 */	lwz r4, 0x14(r3)
/* 800345B4 000304D4  54 C0 13 BA */	rlwinm r0, r6, 2, 0xe, 0x1d
/* 800345B8 000304D8  7C 04 02 14 */	add r0, r4, r0
/* 800345BC 000304DC  90 03 00 14 */	stw r0, 0x14(r3)
/* 800345C0 000304E0  4E 80 00 20 */	blr

.section .sdata
    .balign 0x10

.section .bss

.balign 0x10

.section .sdata2

.global lbl_802F3308
lbl_802F3308:
	# ROM: 0x1ECD28
	.byte 0x46, 0x22, 0xF9, 0x83
	.4byte 0

.section .sbss

.global lbl_802F1F00
lbl_802F1F00:
	.skip 0x8
.global lbl_802F1F08
lbl_802F1F08:
	.skip 0x4
.global lbl_802F1F0C
lbl_802F1F0C:
	.skip 0x4
.global lbl_802F1F10
lbl_802F1F10:
	.skip 0x4
.global minigameRelBallCallback
minigameRelBallCallback:
	.skip 0x4
.global currentBallStructPtr
currentBallStructPtr:
	.skip 0x8
.global currentWorldStructPtr
currentWorldStructPtr:
	.skip 0x8
.global previewLoaded
previewLoaded:
	.skip 0x4
.global lbl_802F1F2C
lbl_802F1F2C:
	.skip 0x4
.global decodedStageLzPtr
decodedStageLzPtr:
	.skip 0x4
.global lbl_802F1F34
lbl_802F1F34:
	.skip 0x4
.global decodedStageGmaPtr
decodedStageGmaPtr:
	.skip 0x4
.global decodedStageTplPtr
decodedStageTplPtr:
	.skip 0x4
.global lbl_802F1F40
lbl_802F1F40:
	.skip 0x4
.global lbl_802F1F44
lbl_802F1F44:
	.skip 0x4
.global lbl_802F1F48
lbl_802F1F48:
	.skip 0x4
.global lbl_802F1F4C
lbl_802F1F4C:
	.skip 0x4
.global lbl_802F1F50
lbl_802F1F50:
	.skip 0x4
.global loadingStageIdRequest
loadingStageIdRequest:
	.skip 0x2
.global loadingStageId
loadingStageId:
	.skip 0x2
.global currStageId
currStageId:
	.skip 0x8
.global lbl_802F1F60
lbl_802F1F60:
	.skip 0x8
.global lbl_802F1F68
lbl_802F1F68:
	.skip 0x4
.global lbl_802F1F6C
lbl_802F1F6C:
	.skip 0x4
.global lbl_802F1F70
lbl_802F1F70:
	.skip 0x4
.global lbl_802F1F74
lbl_802F1F74:
	.skip 0x4
.global lbl_802F1F78
lbl_802F1F78:
	.skip 0x8
.global lbl_802F1F80
lbl_802F1F80:
	.skip 0x8
.global lbl_802F1F88
lbl_802F1F88:
	.skip 0x8
.global lbl_802F1F90
lbl_802F1F90:
	.skip 0x8
.global lbl_802F1F98
lbl_802F1F98:
	.skip 0x4
.global lbl_802F1F9C
lbl_802F1F9C:
	.skip 0x4
.global lbl_802F1FA0
lbl_802F1FA0:
	.skip 0x4
.global lbl_802F1FA4
lbl_802F1FA4:
	.skip 0x4
.global lbl_802F1FA8
lbl_802F1FA8:
    .skip 0x4
.global lbl_802F1FAC
lbl_802F1FAC:
    .skip 0x4
.global lbl_802F1FB0
lbl_802F1FB0:
	.skip 0x4
.global lbl_802F1FB4
lbl_802F1FB4:
    .skip 0x4
.global lbl_802F1FB8
lbl_802F1FB8:
	.skip 0x4
.global lbl_802F1FBC
lbl_802F1FBC:
	.skip 0x4
.global lbl_802F1FC0
lbl_802F1FC0:
	.skip 0x4
.global lbl_802F1FC4
lbl_802F1FC4:
	.skip 0x4
.global lbl_802F1FC8
lbl_802F1FC8:
	.skip 0x8
.global lbl_802F1FD0
lbl_802F1FD0:
	.skip 0x4
.global lbl_802F1FD4
lbl_802F1FD4:
	.skip 0x4
.global lbl_802F1FD8
lbl_802F1FD8:
	.skip 0x4
.global lbl_802F1FDC
lbl_802F1FDC:
	.skip 0x4
.global lbl_802F1FE0
lbl_802F1FE0:
	.skip 0x4
.global lbl_802F1FE4
lbl_802F1FE4:
	.skip 0x8
glabel lbl_802F1FEC
    .skip 0x4
.global lbl_802F1FF0
lbl_802F1FF0:
	.skip 0x4
.global lbl_802F1FF4
lbl_802F1FF4:
	.skip 0x2
.global lbl_802F1FF6
lbl_802F1FF6:
	.skip 0x2
.global lbl_802F1FF8
lbl_802F1FF8:
	.skip 0x4
.global lbl_802F1FFC
lbl_802F1FFC:
	.skip 0x4
.global lbl_802F2000
lbl_802F2000:
	.skip 0x8
.global lbl_802F2008
lbl_802F2008:
	.skip 0x4
.global lbl_802F200C
lbl_802F200C:
	.skip 0x4
.global lbl_802F2010
lbl_802F2010:
	.skip 0x4
.global lbl_802F2014
lbl_802F2014:
	.skip 0x4
.global lbl_802F2018
lbl_802F2018:
	.skip 0x4
.global lbl_802F201C
lbl_802F201C:
	.skip 0x4
.global lbl_802F2020
lbl_802F2020:
	.skip 0x1
.global lbl_802F2021
lbl_802F2021:
	.skip 0x1
.global lbl_802F2022
lbl_802F2022:
	.skip 0x1
.global lbl_802F2023
lbl_802F2023:
	.skip 0x1
.global lbl_802F2024
lbl_802F2024:
	.skip 0x1
.global lbl_802F2025
lbl_802F2025:
	.skip 0x3
.global lbl_802F2028
lbl_802F2028:
	.skip 0x4
.global lbl_802F202C
lbl_802F202C:
	.skip 0x4
.global lbl_802F2030
lbl_802F2030:
	.skip 0x4
.global lbl_802F2034
lbl_802F2034:
	.skip 0x4
.global lbl_802F2038
lbl_802F2038:
	.skip 0x4
.global lbl_802F203C
lbl_802F203C:
	.skip 0x4
.global lbl_802F2040
lbl_802F2040:
	.skip 0x4
.global lbl_802F2044
lbl_802F2044:
	.skip 0x4
.global lbl_802F2048
lbl_802F2048:
	.skip 0x4
.global lbl_802F204C
lbl_802F204C:
	.skip 0x4
.global lbl_802F2050
lbl_802F2050:
	.skip 0x4
.global lbl_802F2054
lbl_802F2054:
	.skip 0x4
.global lbl_802F2058
lbl_802F2058:
	.skip 0x8
.global lbl_802F2060
lbl_802F2060:
	.skip 0x8
.global lbl_802F2068
lbl_802F2068:
	.skip 0x4
.global lbl_802F206C
lbl_802F206C:
	.skip 0x4
.global lbl_802F2070
lbl_802F2070:
	.skip 0x4
.global lbl_802F2074
lbl_802F2074:
	.skip 0x4
.global lbl_802F2078
lbl_802F2078:
	.skip 0x4
.global lbl_802F207C
lbl_802F207C:
	.skip 0x4
.global lbl_802F2080
lbl_802F2080:
	.skip 0x4
.global lbl_802F2084
lbl_802F2084:
	.skip 0x4
.global lbl_802F2088
lbl_802F2088:
	.skip 0x4
.global lbl_802F208C
lbl_802F208C:
	.skip 0x4
.global lbl_802F2090
lbl_802F2090:
	.skip 0x4
.global lbl_802F2094
lbl_802F2094:
	.skip 0x8
.global lbl_802F209C
lbl_802F209C:
	.skip 0x8
.global lbl_802F20A4
lbl_802F20A4:
	.skip 0x4
.global lbl_802F20A8
lbl_802F20A8:
	.skip 0x4
.global lbl_802F20AC
lbl_802F20AC:
	.skip 0x4
.global lbl_802F20B0
lbl_802F20B0:
	.skip 0x8
.global lbl_802F20B8
lbl_802F20B8:
	.skip 0x4
.global lbl_802F20BC
lbl_802F20BC:
	.skip 0x4
.global lbl_802F20C0
lbl_802F20C0:
	.skip 0x4
.global lbl_802F20C4
lbl_802F20C4:
	.skip 0x4