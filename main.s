	.verstamp	7 10
	.option	pic2
	.data	
	.align	2
	.align	0
ovlOvlManager:
	.word	_loadovlSegRomStart
	.word	_loadovlSegRomEnd
	.word	_loadovlTextStart
	.word	_loadovlTextStart
	.word	_loadovlDataStart
	.word	_loadovlDataStart
	.word	_loadovlSegNoloadStart
	.word	_loadovlSegNoloadStart
	.word	_loadovlSegNoloadEnd
	.globl	sNoThread5
	.data	
	.align	2
	.align	0
sNoThread5:
	.word	0 : 1
	.rdata	
	.align	2
	.align	0
$$54:
	.ascii	"thread stack overflow  id = %d\X0A\X00"
	.extern	_loadovlSegRomStart 4
	.extern	_loadovlSegRomEnd 4
	.extern	_loadovlTextStart 4
	.extern	_loadovlDataStart 4
	.extern	_loadovlSegNoloadStart 4
	.extern	_loadovlSegNoloadEnd 4
	.globl	sUnref8003FAD0
	.lcomm	sUnref8003FAD0 56
	.globl	gThread0Stack
	.lcomm	gThread0Stack 456
	.globl	sThread1
	.lcomm	sThread1 432
	.globl	sUnref8003FE80
	.lcomm	sUnref8003FE80 56
	.globl	sThread1Stack
	.lcomm	sThread1Stack 200
	.globl	sThread3
	.lcomm	sThread3 432
	.globl	sUnref80040130
	.lcomm	sUnref80040130 56
	.globl	sThread3Stack
	.lcomm	sThread3Stack 968
	.globl	sThread4
	.lcomm	sThread4 432
	.globl	sUnref800406E0
	.lcomm	sUnref800406E0 56
	.globl	sThread4Stack
	.lcomm	sThread4Stack 1480
	.globl	sThread5
	.lcomm	sThread5 432
	.globl	sUkn80040E90
	.lcomm	sUkn80040E90 56
	.globl	sThread5Stack
	.lcomm	sThread5Stack 13256
	.globl	sThread6
	.lcomm	sThread6 432
	.globl	sUnref8004440
	.lcomm	sUnref8004440 56
	.globl	sThread6Stack
	.lcomm	sThread6Stack 1992
	.globl	D_80044C40
	.lcomm	D_80044C40 256
	.globl	gSPImemOkay
	.lcomm	gSPImemOkay 1
	.globl	gSPDmemOkay
	.lcomm	gSPDmemOkay 1
	.globl	sBlockMsg
	.lcomm	sBlockMsg 4
	.globl	gThreadingQueue
	.lcomm	gThreadingQueue 24
	.globl	sPIcmdBuf
	.lcomm	sPIcmdBuf 200
	.globl	sPIcmdQ
	.lcomm	sPIcmdQ 24
	.globl	sThreadArgBuf
	.lcomm	sThreadArgBuf 128
	.extern	gPiHandle 4
	.text	
	.align	2
	.file	2 "game/src/sys/main.c"
	.globl	get_thread4_stack_start
	.loc	2 79
 #  79	u64 *get_thread4_stack_start(void) {
	.ent	get_thread4_stack_start 2
get_thread4_stack_start:
	.option	O2
	.set	 noreorder
	.cpload	$25
	.set	 reorder
	.frame	$sp, 0, $31
	.loc	2 79
	.loc	2 80
 #  80	    return sThread4Stack + THREAD4_STACK_SIZE;
	la	$2, sThread4Stack+1480
	.livereg	0x2000FF0E,0x00000FFF
	j	$31
	.end	get_thread4_stack_start
	.text	
	.align	2
	.file	2 "game/src/sys/main.c"
	.globl	unref_8000046C
	.loc	2 83
 #  81	}
 #  82	
 #  83	u8 *unref_8000046C(void) {
	.ent	unref_8000046C 2
unref_8000046C:
	.option	O2
	.set	 noreorder
	.cpload	$25
	.set	 reorder
	.frame	$sp, 0, $31
	.loc	2 83
	.loc	2 84
 #  84	    return sUkn80040E90;
	la	$2, sUkn80040E90
	.livereg	0x2000FF0E,0x00000FFF
	j	$31
	.end	unref_8000046C
	.text	
	.align	2
	.file	2 "game/src/sys/main.c"
	.globl	unref_80000478
	.loc	2 87
 #  85	}
 #  86	
 #  87	void *unref_80000478(void) {
	.ent	unref_80000478 2
unref_80000478:
	.option	O2
	.frame	$sp, 0, $31
	.loc	2 87
	.loc	2 88
 #  88	    return (void *)(0x00003400);
	li	$2, 13312
	.livereg	0x2000FF0E,0x00000FFF
	j	$31
	.end	unref_80000478
	.text	
	.align	2
	.file	2 "game/src/sys/main.c"
	.globl	check_sp_imem
	.loc	2 91
 #  89	}
 #  90	
 #  91	void check_sp_imem(void) {
	.ent	check_sp_imem 2
check_sp_imem:
	.option	O2
	.set	 noreorder
	.cpload	$25
	.set	 reorder
	.frame	$sp, 0, $31
	.loc	2 91
	.loc	2 92
 #  92	    if (IO_READ(SP_IMEM_START) == 6103) {
	li	$14, -1543503872
	.set	 volatile
	lw	$15, 4096($14)
	.set	 novolatile
	bne	$15, 6103, $32
	.loc	2 92
	.loc	2 93
 #  93	        gSPImemOkay = TRUE;
	li	$24, 1
	sb	$24, gSPImemOkay
	.livereg	0x0000FF0E,0x00000FFF
	j	$31
$32:
	.loc	2 94
 #  94	    } else {
	.loc	2 95
 #  95	        gSPImemOkay = FALSE;
	sb	$0, gSPImemOkay
	.loc	2 97
 #  96	    }
 #  97	}
$33:
	.livereg	0x0000FF0E,0x00000FFF
	j	$31
	.end	check_sp_imem
	.text	
	.align	2
	.file	2 "game/src/sys/main.c"
	.globl	check_sp_dmem
	.loc	2 99
 #  98	
 #  99	void check_sp_dmem(void) {
	.ent	check_sp_dmem 2
check_sp_dmem:
	.option	O2
	.set	 noreorder
	.cpload	$25
	.set	 reorder
	.frame	$sp, 0, $31
	.loc	2 99
	.loc	2 100
 # 100	    if (IO_READ(SP_DMEM_START) == (u32)-1) {
	li	$14, -1543503872
	.set	 volatile
	lw	$15, 0($14)
	.set	 novolatile
	bne	$15, -1, $34
	.loc	2 100
	.loc	2 101
 # 101	        gSPDmemOkay = TRUE;
	li	$24, 1
	sb	$24, gSPDmemOkay
	.livereg	0x0000FF0E,0x00000FFF
	j	$31
$34:
	.loc	2 102
 # 102	    } else {
	.loc	2 103
 # 103	        gSPDmemOkay = FALSE;
	sb	$0, gSPDmemOkay
	.loc	2 105
 # 104	    }
 # 105	}
$35:
	.livereg	0x0000FF0E,0x00000FFF
	j	$31
	.end	check_sp_dmem
	.text	
	.align	2
	.file	2 "game/src/sys/main.c"
	.globl	fatal_thread_stack_overflow
	.loc	2 107
 # 106	
 # 107	void fatal_thread_stack_overflow(s32 tid) {
	.ent	fatal_thread_stack_overflow 2
fatal_thread_stack_overflow:
	.option	O2
	.set	 noreorder
	.cpload	$25
	.set	 reorder
	subu	$sp, 32
	sw	$31, 28($sp)
	.cprestore	24
	.mask	0x90000000, -4
	.frame	$sp, 32, $31
	move	$5, $4
	.loc	2 107
	.loc	2 108
 # 108	    fatal_printf("thread stack overflow  id = %d\n", tid);
	la	$4, $$54
	.livereg	0x0C00000E,0x00000000
	jal	fatal_printf
	.loc	2 110
 # 109	
 # 110	    while (TRUE) ;
$36:
	.loc	2 110
	.loc	2 110
	b	$36
	.align	5
	.livereg	0x0000FF0E,0x00000FFF
	lw	$31, 28($sp)
	addu	$sp, 32
	j	$31
	.end	fatal_thread_stack_overflow
	.text	
	.align	2
	.file	2 "game/src/sys/main.c"
	.globl	check_stack_probes
	.loc	2 113
 # 111	}
 # 112	
 # 113	void check_stack_probes(void) {
	.ent	check_stack_probes 2
check_stack_probes:
	.option	O2
	.set	 noreorder
	.cpload	$25
	.set	 reorder
	subu	$sp, 32
	sw	$31, 28($sp)
	.cprestore	24
	.mask	0x90000000, -4
	.frame	$sp, 32, $31
	.loc	2 113
	.loc	2 114
 # 114	    if (gThread0Stack[0] != STACK_PROBE_MAGIC) {
	lw	$14, gThread0Stack
	lw	$15, gThread0Stack+4
	bne	$14, 0, $41
	beq	$15, -19088744, $37
$41:
	.loc	2 114
	.loc	2 115
 # 115	        fatal_thread_stack_overflow(0);
	move	$4, $0
	.livereg	0x0800000E,0x00000000
	jal	fatal_thread_stack_overflow
$37:
	.loc	2 118
 # 116	    }
 # 117	
 # 118	    if (sThread1Stack[0] != STACK_PROBE_MAGIC) {
	lw	$24, sThread1Stack
	lw	$25, sThread1Stack+4
	bne	$24, 0, $42
	beq	$25, -19088744, $38
$42:
	.loc	2 118
	.loc	2 119
 # 119	        fatal_thread_stack_overflow(1);
	li	$4, 1
	.livereg	0x0800000E,0x00000000
	jal	fatal_thread_stack_overflow
$38:
	.loc	2 122
 # 120	    }
 # 121	
 # 122	    if (sThread3Stack[0] != STACK_PROBE_MAGIC) {
	lw	$8, sThread3Stack
	lw	$9, sThread3Stack+4
	bne	$8, 0, $43
	beq	$9, -19088744, $39
$43:
	.loc	2 122
	.loc	2 123
 # 123	        fatal_thread_stack_overflow(3);
	li	$4, 3
	.livereg	0x0800000E,0x00000000
	jal	fatal_thread_stack_overflow
$39:
	.loc	2 126
 # 124	    }
 # 125	
 # 126	    if (sThread5Stack[0] != STACK_PROBE_MAGIC) {
	lw	$10, sThread5Stack
	lw	$11, sThread5Stack+4
	bne	$10, 0, $44
	beq	$11, -19088744, $40
$44:
	.loc	2 126
	.loc	2 127
 # 127	        fatal_thread_stack_overflow(5);
	li	$4, 5
	.livereg	0x0800000E,0x00000000
	jal	fatal_thread_stack_overflow
	.loc	2 129
 # 128	    }
 # 129	}
$40:
	.livereg	0x0000FF0E,0x00000FFF
	lw	$31, 28($sp)
	addu	$sp, 32
	j	$31
	.end	check_stack_probes
	.text	
	.align	2
	.file	2 "game/src/sys/main.c"
	.globl	thread5_main
	.loc	2 131
 # 130	
 # 131	void thread5_main(UNUSED void *arg) {
	.ent	thread5_main 2
thread5_main:
	.option	O2
	.set	 noreorder
	.cpload	$25
	.set	 reorder
	subu	$sp, 40
	sw	$31, 36($sp)
	.cprestore	32
	.mask	0x90000000, -4
	.frame	$sp, 40, $31
	sw	$4, 40($sp)
	.loc	2 131
	.loc	2 132
 # 132	    osCreateViManager(OS_PRIORITY_VIMGR);
	li	$4, 254
	.livereg	0x0800000E,0x00000000
	jal	osCreateViManager
	.loc	2 133
 # 133	    gPiHandle = osCartRomInit();
	.livereg	0x0000000E,0x00000000
	jal	osCartRomInit
	sw	$2, gPiHandle
	.loc	2 134
 # 134	    maybe_setup_pi_handle();
	.livereg	0x0000000E,0x00000000
	jal	maybe_setup_pi_handle
	.loc	2 135
 # 135	    osCreatePiManager(OS_PRIORITY_PIMGR, &sPIcmdQ, sPIcmdBuf, ARRAY_COUNT(sPIcmdBuf));
	li	$4, 150
	la	$5, sPIcmdQ
	la	$6, sPIcmdBuf
	li	$7, 50
	.livereg	0x0F00000E,0x00000000
	jal	osCreatePiManager
	.loc	2 136
 # 136	    ssb_create_dma_mq();
	.livereg	0x0000000E,0x00000000
	jal	ssb_create_dma_mq
	.loc	2 138
 # 137	    // load IP3 font?
 # 138	    ssb_rom_copy_no_writeback(PHYSICAL_TO_ROM(0xB70), D_80044C40, sizeof(D_80044C40));
	li	$4, -1342174352
	la	$5, D_80044C40
	li	$6, 256
	.livereg	0x0E00000E,0x00000000
	jal	ssb_rom_copy_no_writeback
	.loc	2 139
 # 139	    check_sp_imem();
	.livereg	0x0000000E,0x00000000
	jal	check_sp_imem
	.loc	2 140
 # 140	    check_sp_dmem();
	.livereg	0x0000000E,0x00000000
	jal	check_sp_dmem
	.loc	2 141
 # 141	    osCreateMesgQueue(&gThreadingQueue, sBlockMsg, ARRAY_COUNT(sBlockMsg));
	la	$4, gThreadingQueue
	la	$5, sBlockMsg
	li	$6, 1
	.livereg	0x0E00000E,0x00000000
	jal	osCreateMesgQueue
	.loc	2 143
 # 142	
 # 143	    osCreateThread(&sThread3, 3, &thread3_scheduler, NULL, 
	la	$4, sThread3
	li	$5, 3
	la	$6, thread3_scheduler
	move	$7, $0
	la	$14, sThread3Stack+968
	sw	$14, 16($sp)
	li	$15, 120
	sw	$15, 20($sp)
	.livereg	0x0F00000E,0x00000000
	jal	osCreateThread
	.loc	2 148
 # 144	        sThread3Stack + THREAD3_STACK_SIZE, 
 # 145	        THREAD3_PRI
 # 146	    );
 # 147	    // statements required to be on same line to match (macro?)
 # 148	    sThread3Stack[0] = STACK_PROBE_MAGIC; osStartThread(&sThread3);
	li	$24, 0
	li	$25, -19088744
	sw	$24, sThread3Stack
	sw	$25, sThread3Stack+4
	.loc	2 148
	la	$4, sThread3
	.livereg	0x0800000E,0x00000000
	jal	osStartThread
	.loc	2 149
 # 149	    osRecvMesg(&gThreadingQueue, NULL, OS_MESG_BLOCK);
	la	$4, gThreadingQueue
	move	$5, $0
	li	$6, 1
	.livereg	0x0E00000E,0x00000000
	jal	osRecvMesg
	.loc	2 151
 # 150	
 # 151	    osCreateThread(&sThread4, 4, thread4, NULL, 
	la	$4, sThread4
	li	$5, 4
	la	$6, thread4
	move	$7, $0
	la	$8, sThread4Stack+1480
	sw	$8, 16($sp)
	li	$9, 110
	sw	$9, 20($sp)
	.livereg	0x0F00000E,0x00000000
	jal	osCreateThread
	.loc	2 156
 # 152	        sThread4Stack + THREAD4_STACK_SIZE, 
 # 153	        THREAD4_PRI
 # 154	    );
 # 155	    // statements required to be on same line to match (macro?)
 # 156	    sThread4Stack[0] = STACK_PROBE_MAGIC; osStartThread(&sThread4);
	li	$10, 0
	li	$11, -19088744
	sw	$10, sThread4Stack
	sw	$11, sThread4Stack+4
	.loc	2 156
	la	$4, sThread4
	.livereg	0x0800000E,0x00000000
	jal	osStartThread
	.loc	2 157
 # 157	    osRecvMesg(&gThreadingQueue, NULL, OS_MESG_BLOCK);
	la	$4, gThreadingQueue
	move	$5, $0
	li	$6, 1
	.livereg	0x0E00000E,0x00000000
	jal	osRecvMesg
	.loc	2 159
 # 158	
 # 159	    osCreateThread(&sThread6, 6, thread6, NULL, 
	la	$4, sThread6
	li	$5, 6
	la	$6, thread6
	move	$7, $0
	la	$12, sThread6Stack+1992
	sw	$12, 16($sp)
	li	$13, 115
	sw	$13, 20($sp)
	.livereg	0x0F00000E,0x00000000
	jal	osCreateThread
	.loc	2 164
 # 160	        sThread6Stack + THREAD6_STACK_SIZE, 
 # 161	        THREAD6_PRI
 # 162	    );
 # 163	    // statements required to be on same line to match (macro?)
 # 164	    sThread6Stack[0] = STACK_PROBE_MAGIC; osStartThread(&sThread6);
	li	$14, 0
	li	$15, -19088744
	sw	$14, sThread6Stack
	sw	$15, sThread6Stack+4
	.loc	2 164
	la	$4, sThread6
	.livereg	0x0800000E,0x00000000
	jal	osStartThread
	.loc	2 165
 # 165	    osRecvMesg(&gThreadingQueue, NULL, OS_MESG_BLOCK);
	la	$4, gThreadingQueue
	move	$5, $0
	li	$6, 1
	.livereg	0x0E00000E,0x00000000
	jal	osRecvMesg
	.loc	2 167
 # 166	
 # 167	    func_80006B80();
	.livereg	0x0000000E,0x00000000
	jal	func_80006B80
	.loc	2 168
 # 168	    load_overlay(&ovlOvlManager);
	la	$4, ovlOvlManager
	.livereg	0x0800000E,0x00000000
	jal	load_overlay
	.loc	2 169
 # 169	    load_overlay_set(0);
	move	$4, $0
	.livereg	0x0800000E,0x00000000
	jal	load_overlay_set
	.loc	2 170
 # 170	}
	.livereg	0x0000FF0E,0x00000FFF
	lw	$31, 36($sp)
	addu	$sp, 40
	j	$31
	.end	thread5_main
	.text	
	.align	2
	.file	2 "game/src/sys/main.c"
	.globl	thread1_idle
	.loc	2 172
 # 171	
 # 172	void thread1_idle(void *arg) {
	.ent	thread1_idle 2
thread1_idle:
	.option	O2
	.set	 noreorder
	.cpload	$25
	.set	 reorder
	subu	$sp, 40
	sw	$31, 36($sp)
	.cprestore	32
	.mask	0x90000000, -4
	.frame	$sp, 40, $31
	sw	$4, 40($sp)
	.loc	2 172
	.loc	2 173
 # 173	    start_thread8();
	.livereg	0x0000000E,0x00000000
	jal	start_thread8
	.loc	2 174
 # 174	    osCreateThread(&sThread5, 5, thread5_main, arg, 
	la	$4, sThread5
	li	$5, 5
	la	$6, thread5_main
	lw	$7, 40($sp)
	la	$14, sThread5Stack+13256
	sw	$14, 16($sp)
	li	$15, 50
	sw	$15, 20($sp)
	.livereg	0x0F00000E,0x00000000
	jal	osCreateThread
	.loc	2 178
 # 175	        sThread5Stack + THREAD5_STACK_SIZE, 
 # 176	        THREAD5_PRI
 # 177	    );
 # 178	    sThread5Stack[0] = STACK_PROBE_MAGIC;
	li	$24, 0
	li	$25, -19088744
	sw	$24, sThread5Stack
	sw	$25, sThread5Stack+4
	.loc	2 179
 # 179	    if (!sNoThread5) {
	lw	$8, sNoThread5
	bne	$8, 0, $45
	.loc	2 179
	.loc	2 180
 # 180	        osStartThread(&sThread5);
	la	$4, sThread5
	.livereg	0x0800000E,0x00000000
	jal	osStartThread
$45:
	.loc	2 182
 # 181	    }
 # 182	    osSetThreadPri(NULL, OS_PRIORITY_IDLE);
	move	$4, $0
	move	$5, $0
	.livereg	0x0C00000E,0x00000000
	jal	osSetThreadPri
	.loc	2 184
 # 183	
 # 184	    while (TRUE) {}
$46:
	.loc	2 184
	.loc	2 184
	b	$46
	.align	5
	.livereg	0x0000FF0E,0x00000FFF
	lw	$31, 36($sp)
	addu	$sp, 40
	j	$31
	.end	thread1_idle
	.text	
	.align	2
	.file	2 "game/src/sys/main.c"
	.globl	ssb_main
	.loc	2 187
 # 185	}
 # 186	
 # 187	void ssb_main(void) {
	.ent	ssb_main 2
ssb_main:
	.option	O2
	.set	 noreorder
	.cpload	$25
	.set	 reorder
	subu	$sp, 40
	sw	$31, 36($sp)
	.cprestore	32
	.mask	0x90000000, -4
	.frame	$sp, 40, $31
	.loc	2 187
	.loc	2 188
 # 188	    gThread0Stack[0] = STACK_PROBE_MAGIC;
	li	$14, 0
	li	$15, -19088744
	sw	$14, gThread0Stack
	sw	$15, gThread0Stack+4
	.loc	2 189
 # 189	    __osSetWatchLo(0x4900000);
	li	$4, 76546048
	.livereg	0x0800000E,0x00000000
	jal	__osSetWatchLo
	.loc	2 190
 # 190	    osInitialize();
	.livereg	0x0000000E,0x00000000
	jal	osInitialize
	.loc	2 191
 # 191	    osCreateThread(&sThread1, 1, thread1_idle, &sThreadArgBuf, 
	la	$4, sThread1
	li	$5, 1
	la	$6, thread1_idle
	la	$7, sThreadArgBuf
	la	$24, sThread1Stack+200
	sw	$24, 16($sp)
	li	$25, 127
	sw	$25, 20($sp)
	.livereg	0x0F00000E,0x00000000
	jal	osCreateThread
	.loc	2 196
 # 192	        sThread1Stack + THREAD1_STACK_SIZE, 
 # 193	        OS_PRIORITY_APPMAX
 # 194	    );
 # 195	    // statements required to be on same line to match (macro?)
 # 196	    sThread1Stack[0] = STACK_PROBE_MAGIC; osStartThread(&sThread1);
	li	$8, 0
	li	$9, -19088744
	sw	$8, sThread1Stack
	sw	$9, sThread1Stack+4
	.loc	2 196
	la	$4, sThread1
	.livereg	0x0800000E,0x00000000
	jal	osStartThread
	.loc	2 197
 # 197	}
	.livereg	0x0000FF0E,0x00000FFF
	lw	$31, 36($sp)
	addu	$sp, 40
	j	$31
	.end	ssb_main
