	.file	"core_matrix.c"
	.ignore	ld_st_style
	.ignore	strict_delay
! -----------------------------------------------------------------------------
	.text
! coremark/core_matrix.c : 81
	.global	core_bench_matrix
	.type	core_bench_matrix, #function
	.align	8
core_bench_matrix:
	! <0000>
	{
	  setwd	wsz = 0xa, nfx = 0x1, dbl = 0x0
	  setbn	rsz = 0x3, rbs = 0x6, rcur = 0x0
	  getsp,0	_f16s,_lts1hi 0xffd0, %dr4
	}
	! <0001>
	{
	  ldd,0	0x18, %dr0, %dr6				! coremark/core_matrix.c : 83
	  ldd,2	%dr0, 0x8, %dr7				! coremark/core_matrix.c : 84
	  ldd,3	0x10, %dr0, %dr8				! coremark/core_matrix.c : 85
	  adds,1,sm	0x0, %r1, %r9				! coremark/core_matrix.c : 86
	}
	! <0002>
	{
	  nop 1
	  ldw,0	%dr0, 0x0, %r5				! coremark/core_matrix.c : 82
	  sxt,1,sm	0x1, %r9, %db[4]				! coremark/core_matrix.c : 88
	}
	! <0004>
	{
	  addd,0,sm	0x0, %dr6, %db[1]				! coremark/core_matrix.c : 88
	  addd,1,sm	0x0, %dr7, %db[2]				! coremark/core_matrix.c : 88
	  addd,2,sm	0x0, %dr8, %db[3]				! coremark/core_matrix.c : 88
	}
	! <0005>
	{
	  sxt,0,sm	0x6, %r5, %db[0]				! coremark/core_matrix.c : 88
	}
.LCS.1:							! coremark/core_matrix.c : 88
	! <0006>
	{
	  nop 4
	  disp	%ctpr1, matrix_test				! coremark/core_matrix.c : 88
	}
	! <0011>
	{
	  call	%ctpr1, wbs = 0x6			! coremark/core_matrix.c : 88
	}
.LCS.2:							! coremark/core_matrix.c : 88
	! <0012>
	{
	  adds,0,sm	0x0, %b[0], %r10				! coremark/core_matrix.c : 88
	  sxt,1,sm	0x5, %r2, %db[1]				! coremark/core_matrix.c : 88
	}
	! <0013>
	{
	  sxt,0,sm	0x1, %r10, %db[0]				! coremark/core_matrix.c : 88
	}
.LCS.3:							! coremark/core_matrix.c : 88
	! <0014>
	{
	  nop 4
	  disp	%ctpr1, crc16				! coremark/core_matrix.c : 88
	}
	! <0019>
	{
	  call	%ctpr1, wbs = 0x6			! coremark/core_matrix.c : 88
	}
.LCS.4:							! coremark/core_matrix.c : 88
	! <0020>
	{
	  adds,0,sm	0x0, %b[0], %r10				! coremark/core_matrix.c : 88
	  return	%ctpr3				! coremark/core_matrix.c : 90
	}
	! <0021>
	{
	  adds,0,sm	0x0, %r10, %r2				! coremark/core_matrix.c : 88
	}
	! <0022>
	{
	  nop 3
	  sxt,0,sm	0x5, %r2, %dr0				! coremark/core_matrix.c : 90
	}
	! <0026>
	{
	  ct	%ctpr3					! coremark/core_matrix.c : 90
	}
	.size	core_bench_matrix, .- core_bench_matrix
! -----------------------------------------------------------------------------
! coremark/core_matrix.c : 117
	.global	matrix_test
	.type	matrix_test, #function
	.align	8
matrix_test:
	! <0000>
	{
	  setwd	wsz = 0xa, nfx = 0x1, dbl = 0x0
	  setbn	rsz = 0x3, rbs = 0x6, rcur = 0x0
	  getsp,0	_f16s,_lts1hi 0xffe0, %dr6
	}
	! <0001>
	{
	  adds,0,sm	0x0, 0x0, %r7			! coremark/core_matrix.c : 118
	  getfs,1	%r4, _f16s,_lts0hi 0x3400, %r9		! coremark/core_matrix.c : 119
	  sxt,2,sm	0x6, %r0, %db[0]				! coremark/core_matrix.c : 121
	  addd,3,sm	0x0, %dr2, %db[1]				! coremark/core_matrix.c : 121
	  sxt,4,sm	0x1, %r4, %db[2]				! coremark/core_matrix.c : 121
	}
	! <0002>
	{
	  ors,0	%r9, _f32s,_lts0 0xf000, %r8		! coremark/core_matrix.c : 119
	}
.LCS.5:							! coremark/core_matrix.c : 121
	! <0003>
	{
	  nop 4
	  disp	%ctpr1, matrix_add_const				! coremark/core_matrix.c : 121
	}
	! <0008>
	{
	  call	%ctpr1, wbs = 0x6			! coremark/core_matrix.c : 121
	}
.LCS.6:							! coremark/core_matrix.c : 121
	! <0009>
	{
	  sxt,0,sm	0x6, %r0, %db[0]				! coremark/core_matrix.c : 125
	  addd,1,sm	0x0, %dr1, %db[1]				! coremark/core_matrix.c : 125
	  addd,2,sm	0x0, %dr2, %db[2]				! coremark/core_matrix.c : 125
	  sxt,3,sm	0x1, %r4, %db[3]				! coremark/core_matrix.c : 125
	}
.LCS.7:							! coremark/core_matrix.c : 125
	! <0010>
	{
	  nop 4
	  disp	%ctpr1, matrix_mul_const				! coremark/core_matrix.c : 125
	}
	! <0015>
	{
	  call	%ctpr1, wbs = 0x6			! coremark/core_matrix.c : 125
	}
.LCS.8:							! coremark/core_matrix.c : 125
	! <0016>
	{
	  sxt,0,sm	0x6, %r0, %db[0]				! coremark/core_matrix.c : 126
	  addd,1,sm	0x0, %dr1, %db[1]				! coremark/core_matrix.c : 126
	  sxt,2,sm	0x1, %r8, %db[2]				! coremark/core_matrix.c : 126
	}
.LCS.9:							! coremark/core_matrix.c : 126
	! <0017>
	{
	  nop 4
	  disp	%ctpr1, matrix_sum				! coremark/core_matrix.c : 126
	}
	! <0022>
	{
	  call	%ctpr1, wbs = 0x6			! coremark/core_matrix.c : 126
	}
.LCS.10:						! coremark/core_matrix.c : 126
	! <0023>
	{
	  adds,0,sm	0x0, %b[0], %r9				! coremark/core_matrix.c : 126
	  sxt,1,sm	0x5, %r7, %db[1]				! coremark/core_matrix.c : 126
	}
	! <0024>
	{
	  sxt,0,sm	0x1, %r9, %db[0]				! coremark/core_matrix.c : 126
	}
.LCS.11:						! coremark/core_matrix.c : 126
	! <0025>
	{
	  nop 4
	  disp	%ctpr1, crc16				! coremark/core_matrix.c : 126
	}
	! <0030>
	{
	  call	%ctpr1, wbs = 0x6			! coremark/core_matrix.c : 126
	}
.LCS.12:						! coremark/core_matrix.c : 126
	! <0031>
	{
	  adds,0,sm	0x0, %b[0], %r9				! coremark/core_matrix.c : 126
	  sxt,1,sm	0x6, %r0, %db[0]				! coremark/core_matrix.c : 130
	  addd,2,sm	0x0, %dr1, %db[1]				! coremark/core_matrix.c : 130
	  addd,3,sm	0x0, %dr2, %db[2]				! coremark/core_matrix.c : 130
	  addd,4,sm	0x0, %dr3, %db[3]				! coremark/core_matrix.c : 130
	}
	! <0032>
	{
	  adds,0,sm	0x0, %r9, %r7				! coremark/core_matrix.c : 126
	}
.LCS.13:						! coremark/core_matrix.c : 130
	! <0033>
	{
	  nop 4
	  disp	%ctpr1, matrix_mul_vect				! coremark/core_matrix.c : 130
	}
	! <0038>
	{
	  call	%ctpr1, wbs = 0x6			! coremark/core_matrix.c : 130
	}
.LCS.14:						! coremark/core_matrix.c : 130
	! <0039>
	{
	  sxt,0,sm	0x6, %r0, %db[0]				! coremark/core_matrix.c : 131
	  addd,1,sm	0x0, %dr1, %db[1]				! coremark/core_matrix.c : 131
	  sxt,2,sm	0x1, %r8, %db[2]				! coremark/core_matrix.c : 131
	}
.LCS.15:						! coremark/core_matrix.c : 131
	! <0040>
	{
	  nop 4
	  disp	%ctpr1, matrix_sum				! coremark/core_matrix.c : 131
	}
	! <0045>
	{
	  call	%ctpr1, wbs = 0x6			! coremark/core_matrix.c : 131
	}
.LCS.16:						! coremark/core_matrix.c : 131
	! <0046>
	{
	  adds,0,sm	0x0, %b[0], %r9				! coremark/core_matrix.c : 131
	  sxt,1,sm	0x5, %r7, %db[1]				! coremark/core_matrix.c : 131
	}
	! <0047>
	{
	  sxt,0,sm	0x1, %r9, %db[0]				! coremark/core_matrix.c : 131
	}
.LCS.17:						! coremark/core_matrix.c : 131
	! <0048>
	{
	  nop 4
	  disp	%ctpr1, crc16				! coremark/core_matrix.c : 131
	}
	! <0053>
	{
	  call	%ctpr1, wbs = 0x6			! coremark/core_matrix.c : 131
	}
.LCS.18:						! coremark/core_matrix.c : 131
	! <0054>
	{
	  adds,0,sm	0x0, %b[0], %r9				! coremark/core_matrix.c : 131
	  sxt,1,sm	0x6, %r0, %db[0]				! coremark/core_matrix.c : 135
	  addd,2,sm	0x0, %dr1, %db[1]				! coremark/core_matrix.c : 135
	  addd,3,sm	0x0, %dr2, %db[2]				! coremark/core_matrix.c : 135
	  addd,4,sm	0x0, %dr3, %db[3]				! coremark/core_matrix.c : 135
	}
	! <0055>
	{
	  adds,0,sm	0x0, %r9, %r7				! coremark/core_matrix.c : 131
	}
.LCS.19:						! coremark/core_matrix.c : 135
	! <0056>
	{
	  nop 4
	  disp	%ctpr1, matrix_mul_matrix				! coremark/core_matrix.c : 135
	}
	! <0061>
	{
	  call	%ctpr1, wbs = 0x6			! coremark/core_matrix.c : 135
	}
.LCS.20:						! coremark/core_matrix.c : 135
	! <0062>
	{
	  sxt,0,sm	0x6, %r0, %db[0]				! coremark/core_matrix.c : 136
	  addd,1,sm	0x0, %dr1, %db[1]				! coremark/core_matrix.c : 136
	  sxt,2,sm	0x1, %r8, %db[2]				! coremark/core_matrix.c : 136
	}
.LCS.21:						! coremark/core_matrix.c : 136
	! <0063>
	{
	  nop 4
	  disp	%ctpr1, matrix_sum				! coremark/core_matrix.c : 136
	}
	! <0068>
	{
	  call	%ctpr1, wbs = 0x6			! coremark/core_matrix.c : 136
	}
.LCS.22:						! coremark/core_matrix.c : 136
	! <0069>
	{
	  adds,0,sm	0x0, %b[0], %r9				! coremark/core_matrix.c : 136
	  sxt,1,sm	0x5, %r7, %db[1]				! coremark/core_matrix.c : 136
	}
	! <0070>
	{
	  sxt,0,sm	0x1, %r9, %db[0]				! coremark/core_matrix.c : 136
	}
.LCS.23:						! coremark/core_matrix.c : 136
	! <0071>
	{
	  nop 4
	  disp	%ctpr1, crc16				! coremark/core_matrix.c : 136
	}
	! <0076>
	{
	  call	%ctpr1, wbs = 0x6			! coremark/core_matrix.c : 136
	}
.LCS.24:						! coremark/core_matrix.c : 136
	! <0077>
	{
	  adds,0,sm	0x0, %b[0], %r9				! coremark/core_matrix.c : 136
	  sxt,1,sm	0x6, %r0, %db[0]				! coremark/core_matrix.c : 140
	  addd,2,sm	0x0, %dr1, %db[1]				! coremark/core_matrix.c : 140
	  addd,3,sm	0x0, %dr2, %db[2]				! coremark/core_matrix.c : 140
	  addd,4,sm	0x0, %dr3, %db[3]				! coremark/core_matrix.c : 140
	}
	! <0078>
	{
	  adds,0,sm	0x0, %r9, %r7				! coremark/core_matrix.c : 136
	}
.LCS.25:						! coremark/core_matrix.c : 140
	! <0079>
	{
	  nop 4
	  disp	%ctpr1, matrix_mul_matrix_bitextract				! coremark/core_matrix.c : 140
	}
	! <0084>
	{
	  call	%ctpr1, wbs = 0x6			! coremark/core_matrix.c : 140
	}
.LCS.26:						! coremark/core_matrix.c : 140
	! <0085>
	{
	  sxt,0,sm	0x6, %r0, %db[0]				! coremark/core_matrix.c : 141
	  addd,1,sm	0x0, %dr1, %db[1]				! coremark/core_matrix.c : 141
	  sxt,2,sm	0x1, %r8, %db[2]				! coremark/core_matrix.c : 141
	}
.LCS.27:						! coremark/core_matrix.c : 141
	! <0086>
	{
	  nop 4
	  disp	%ctpr1, matrix_sum				! coremark/core_matrix.c : 141
	}
	! <0091>
	{
	  call	%ctpr1, wbs = 0x6			! coremark/core_matrix.c : 141
	}
.LCS.28:						! coremark/core_matrix.c : 141
	! <0092>
	{
	  adds,0,sm	0x0, %b[0], %r9				! coremark/core_matrix.c : 141
	  sxt,1,sm	0x5, %r7, %db[1]				! coremark/core_matrix.c : 141
	}
	! <0093>
	{
	  sxt,0,sm	0x1, %r9, %db[0]				! coremark/core_matrix.c : 141
	}
.LCS.29:						! coremark/core_matrix.c : 141
	! <0094>
	{
	  nop 4
	  disp	%ctpr1, crc16				! coremark/core_matrix.c : 141
	}
	! <0099>
	{
	  call	%ctpr1, wbs = 0x6			! coremark/core_matrix.c : 141
	}
.LCS.30:						! coremark/core_matrix.c : 141
	! <0100>
	{
	  adds,0,sm	0x0, %b[0], %r9				! coremark/core_matrix.c : 141
	  getfs,1	%r4, _f16s,_lts0hi 0x3400, %r10		! coremark/core_matrix.c : 146
	  sxt,2,sm	0x6, %r0, %db[0]				! coremark/core_matrix.c : 146
	  addd,3,sm	0x0, %dr2, %db[1]				! coremark/core_matrix.c : 146
	}
	! <0101>
	{
	  adds,0,sm	0x0, %r9, %r7				! coremark/core_matrix.c : 141
	  subs,1	0x0, %r10, %r9				! coremark/core_matrix.c : 146
	}
	! <0102>
	{
	  sxt,0,sm	0x1, %r9, %db[2]				! coremark/core_matrix.c : 146
	}
.LCS.31:						! coremark/core_matrix.c : 146
	! <0103>
	{
	  nop 4
	  disp	%ctpr1, matrix_add_const				! coremark/core_matrix.c : 146
	}
	! <0108>
	{
	  call	%ctpr1, wbs = 0x6			! coremark/core_matrix.c : 146
	}
.LCS.32:						! coremark/core_matrix.c : 146
	! <0109>
	{
	  nop 5
	  sxt,0,sm	0x1, %r7, %dr0				! coremark/core_matrix.c : 147
	  return	%ctpr3				! coremark/core_matrix.c : 147
	}
	! <0115>
	{
	  ct	%ctpr3					! coremark/core_matrix.c : 147
	}
	.size	matrix_test, .- matrix_test
! -----------------------------------------------------------------------------
! coremark/core_matrix.c : 165
	.global	core_init_matrix
	.type	core_init_matrix, #function
	.align	8
core_init_matrix:
	! <0000>
	{
	  setwd	wsz = 0x9, nfx = 0x1, dbl = 0x0
	}
	! <0001>
	{
	  nop 4
	  adds,0,sm	0x0, 0x0, %r6			! coremark/core_matrix.c : 166
	  adds,1,sm	0x0, 0x1, %r9			! coremark/core_matrix.c : 169
	  adds,2,sm	0x0, 0x0, %r11			! coremark/core_matrix.c : 171
	  adds,3,sm	0x0, 0x0, %r12			! coremark/core_matrix.c : 171
	  cmpesb,4	%r2, 0x0, %pred0				! coremark/core_matrix.c : 172
	  disp	%ctpr1, .L14				! coremark/core_matrix.c : 172
	}
	! <0006>
	{
	  ct	%ctpr1 ? ~%pred0				! coremark/core_matrix.c : 172
	}
.L17:							! coremark/core_matrix.c : 172
	! <0007>
	{
	  adds,0,sm	0x0, 0x1, %r2			! coremark/core_matrix.c : 173
	}
.L14:							! coremark/core_matrix.c : 173
.L19:							! coremark/core_matrix.c : 174
	! <0008>
	{
	  nop 4
	  cmpbsb,0	%r12, %r0, %pred1				! coremark/core_matrix.c : 174
	  disp	%ctpr1, .L21				! coremark/core_matrix.c : 174
	}
	! <0013>
	{
	  ct	%ctpr1 ? ~%pred1				! coremark/core_matrix.c : 174
	}
.L24:							! coremark/core_matrix.c : 174
	! <0014>
	{
	  adds,0	%r11, 0x1, %r11				! coremark/core_matrix.c : 175
	  disp	%ctpr1, .L19				! coremark/core_matrix.c : 176
	}
	! <0015>
	{
	  nop 5
	  muls,0	%r11, %r11, %r13				! coremark/core_matrix.c : 176
	}
	! <0021>
	{
	  shls,0	%r13, 0x1, %r13				! coremark/core_matrix.c : 176
	}
	! <0022>
	{
	  shls,0	%r13, 0x2, %r12				! coremark/core_matrix.c : 176
	  ct	%ctpr1				! coremark/core_matrix.c : 176
	}
.L21:							! coremark/core_matrix.c : 176
	! <0023>
	{
	  subs,0	%r11, 0x1, %r6				! coremark/core_matrix.c : 178
	  subd,1	%dr1, 0x1, %dr13				! coremark/core_matrix.c : 179
	  adds,2,sm	0x0, 0x0, %r11			! coremark/core_matrix.c : 182
	}
	! <0024>
	{
	  andd,0	%dr13, _f16s,_lts0hi 0xfffc, %dr13		! coremark/core_matrix.c : 179
	  muls,1	%r6, %r6, %r14				! coremark/core_matrix.c : 180
	}
	! <0025>
	{
	  nop 4
	  addd,0	0x4, %dr13, %dr7				! coremark/core_matrix.c : 179
	}
	! <0030>
	{
	  sxt,0,sm	0x6, %r14, %dr13				! coremark/core_matrix.c : 180
	}
	! <0031>
	{
	  shld,0	%dr13, 0x1, %dr13				! coremark/core_matrix.c : 180
	}
	! <0032>
	{
	  addd,0	%dr7, %dr13, %dr8				! coremark/core_matrix.c : 180
	}
.L45:							! coremark/core_matrix.c : 182
	! <0033>
	{
	  nop 4
	  cmpbsb,0	%r11, %r6, %pred2				! coremark/core_matrix.c : 182
	  disp	%ctpr1, .L47				! coremark/core_matrix.c : 182
	}
	! <0038>
	{
	  ct	%ctpr1 ? ~%pred2				! coremark/core_matrix.c : 182
	}
.L50:							! coremark/core_matrix.c : 182
	! <0039>
	{
	  adds,0,sm	0x0, 0x0, %r12			! coremark/core_matrix.c : 183
	}
.L52:							! coremark/core_matrix.c : 183
	! <0040>
	{
	  nop 4
	  cmpbsb,0	%r12, %r6, %pred3				! coremark/core_matrix.c : 183
	  disp	%ctpr1, .L54				! coremark/core_matrix.c : 183
	}
	! <0045>
	{
	  ct	%ctpr1 ? ~%pred3				! coremark/core_matrix.c : 183
	}
.L57:							! coremark/core_matrix.c : 183
	! <0046>
	{
	  nop 5
	  muls,0	%r9, %r2, %r13				! coremark/core_matrix.c : 184
	  muls,1	%r11, %r6, %r14				! coremark/core_matrix.c : 187
	  muls,3	%r11, %r6, %r15				! coremark/core_matrix.c : 190
	  disp	%ctpr1, .L52				! coremark/core_matrix.c : 183
	}
	! <0052>
	{
	  sars,0	%r13, _f16s,_lts0hi 0x1f, %r16		! coremark/core_matrix.c : 184
	  adds,1	%r14, %r12, %r14				! coremark/core_matrix.c : 187
	  adds,2	%r15, %r12, %r15				! coremark/core_matrix.c : 190
	  adds,3	%r12, 0x1, %r12				! coremark/core_matrix.c : 183
	}
	! <0053>
	{
	  shrs,0	%r16, _f16s,_lts0hi 0x10, %r16		! coremark/core_matrix.c : 184
	  sxt,1,sm	0x6, %r14, %dr14				! coremark/core_matrix.c : 187
	  sxt,2,sm	0x6, %r15, %dr15				! coremark/core_matrix.c : 190
	}
	! <0054>
	{
	  adds,0	%r16, %r13, %r16				! coremark/core_matrix.c : 184
	  shld,1	%dr14, 0x1, %dr14				! coremark/core_matrix.c : 187
	  shld,2	%dr15, 0x1, %dr15				! coremark/core_matrix.c : 190
	}
	! <0055>
	{
	  ands,0	%r16, _f32s,_lts0 0xffff0000, %r16	! coremark/core_matrix.c : 184
	  addd,1	%dr8, %dr14, %dr14				! coremark/core_matrix.c : 187
	  addd,2	%dr7, %dr15, %dr15				! coremark/core_matrix.c : 190
	}
	! <0056>
	{
	  subs,0	%r13, %r16, %r2				! coremark/core_matrix.c : 184
	}
	! <0057>
	{
	  adds,0	%r2, %r9, %r10				! coremark/core_matrix.c : 185
	}
	! <0058>
	{
	  getfs,0	%r10, _f16s,_lts0hi 0x3400, %r13		! coremark/core_matrix.c : 186
	}
	! <0059>
	{
	  ands,0	%r13, _f32s,_lts0 0xffff, %r10		! coremark/core_matrix.c : 186
	}
	! <0060>
	{
	  sth,2,sm	%dr14, 0x0, %r10				! coremark/core_matrix.c : 187
	  getfs,0	%r10, _f16s,_lts0hi 0x3400, %r13		! coremark/core_matrix.c : 188
	}
	! <0061>
	{
	  adds,0	%r13, %r9, %r10				! coremark/core_matrix.c : 188
	  adds,1	%r9, 0x1, %r9				! coremark/core_matrix.c : 191
	}
	! <0062>
	{
	  getfs,0	%r10, _f16s,_lts0hi 0x3400, %r13		! coremark/core_matrix.c : 189
	}
	! <0063>
	{
	  ands,0	%r13, _f16s,_lts0hi 0xff, %r10		! coremark/core_matrix.c : 189
	}
	! <0064>
	{
	  sth,2,sm	%dr15, 0x0, %r10				! coremark/core_matrix.c : 190
	  ct	%ctpr1				! coremark/core_matrix.c : 183
	}
.L54:							! coremark/core_matrix.c : 183
	! <0065>
	{
	  nop 4
	  adds,0	%r11, 0x1, %r11				! coremark/core_matrix.c : 182
	  disp	%ctpr1, .L45				! coremark/core_matrix.c : 182
	}
	! <0070>
	{
	  ct	%ctpr1				! coremark/core_matrix.c : 182
	}
.L47:							! coremark/core_matrix.c : 182
	! <0071>
	{
	  nop 5
	  std,2,sm	%dr3, 0x8, %dr7				! coremark/core_matrix.c : 195
	  std,5,sm	0x10, %dr3, %dr8				! coremark/core_matrix.c : 196
	  muls,0	%r6, %r6, %r13				! coremark/core_matrix.c : 197
	  sxt,1,sm	0x6, %r6, %dr0				! coremark/core_matrix.c : 203
	  return	%ctpr3				! coremark/core_matrix.c : 203
	}
	! <0077>
	{
	  sxt,0,sm	0x6, %r13, %dr13				! coremark/core_matrix.c : 197
	}
	! <0078>
	{
	  shld,0	%dr13, 0x1, %dr13				! coremark/core_matrix.c : 197
	}
	! <0079>
	{
	  addd,0	%dr8, %dr13, %dr13				! coremark/core_matrix.c : 197
	}
	! <0080>
	{
	  subd,0	%dr13, 0x1, %dr13				! coremark/core_matrix.c : 197
	}
	! <0081>
	{
	  andd,0	%dr13, _f16s,_lts0hi 0xfffc, %dr13		! coremark/core_matrix.c : 197
	}
	! <0082>
	{
	  addd,0	0x4, %dr13, %dr13				! coremark/core_matrix.c : 197
	}
	! <0083>
	{
	  std,2,sm	0x18, %dr3, %dr13				! coremark/core_matrix.c : 197
	  stw,5,sm	%dr3, 0x0, %r6				! coremark/core_matrix.c : 198
	  ct	%ctpr3					! coremark/core_matrix.c : 203
	}
	.size	core_init_matrix, .- core_init_matrix
! -----------------------------------------------------------------------------
! coremark/core_matrix.c : 216
	.global	matrix_sum
	.type	matrix_sum, #function
	.align	8
matrix_sum:
	! <0000>
	{
	  setwd	wsz = 0x7, nfx = 0x1, dbl = 0x0
	}
	! <0001>
	{
	  adds,0,sm	0x0, 0x0, %r5			! coremark/core_matrix.c : 217
	  adds,1,sm	0x0, 0x0, %r6			! coremark/core_matrix.c : 217
	  adds,2,sm	0x0, 0x0, %r7			! coremark/core_matrix.c : 217
	  adds,3,sm	0x0, 0x0, %r8			! coremark/core_matrix.c : 218
	  adds,4,sm	0x0, 0x0, %r9			! coremark/core_matrix.c : 220
	}
.L71:							! coremark/core_matrix.c : 220
	! <0002>
	{
	  nop 4
	  cmpbsb,0	%r9, %r0, %pred0				! coremark/core_matrix.c : 220
	  disp	%ctpr1, .L73				! coremark/core_matrix.c : 220
	}
	! <0007>
	{
	  ct	%ctpr1 ? ~%pred0				! coremark/core_matrix.c : 220
	}
.L76:							! coremark/core_matrix.c : 220
	! <0008>
	{
	  adds,0,sm	0x0, 0x0, %r10			! coremark/core_matrix.c : 221
	}
.L78:							! coremark/core_matrix.c : 221
	! <0009>
	{
	  nop 4
	  cmpbsb,0	%r10, %r0, %pred1				! coremark/core_matrix.c : 221
	  disp	%ctpr1, .L80				! coremark/core_matrix.c : 221
	}
	! <0014>
	{
	  ct	%ctpr1 ? ~%pred1				! coremark/core_matrix.c : 221
	}
.L83:							! coremark/core_matrix.c : 221
	! <0015>
	{
	  nop 5
	  muls,0	%r9, %r0, %r12				! coremark/core_matrix.c : 222
	  getfs,1	%r2, _f16s,_lts0hi 0x3400, %r13		! coremark/core_matrix.c : 224
	  disp	%ctpr1, .L95				! coremark/core_matrix.c : 224
	}
	! <0021>
	{
	  adds,0	%r12, %r10, %r12				! coremark/core_matrix.c : 222
	}
	! <0022>
	{
	  sxt,0,sm	0x6, %r12, %dr12				! coremark/core_matrix.c : 222
	}
	! <0023>
	{
	  shld,0	%dr12, 0x2, %dr12				! coremark/core_matrix.c : 222
	}
	! <0024>
	{
	  nop 1
	  addd,0	%dr1, %dr12, %dr12				! coremark/core_matrix.c : 222
	}
	! <0026>
	{
	  nop 2
	  ldw,0	%dr12, 0x0, %r7				! coremark/core_matrix.c : 222
	}
	! <0029>
	{
	  adds,0	%r5, %r7, %r5				! coremark/core_matrix.c : 223
	}
	! <0030>
	{
	  nop 2
	  cmplesb,0	%r5, %r13, %pred2				! coremark/core_matrix.c : 224
	}
	! <0033>
	{
	  ct	%ctpr1 ? %pred2				! coremark/core_matrix.c : 224
	}
.L98:							! coremark/core_matrix.c : 224
	! <0034>
	{
	  getfs,0	%r8, _f16s,_lts0hi 0x3400, %r12		! coremark/core_matrix.c : 225
	  adds,1,sm	0x0, 0x0, %r5			! coremark/core_matrix.c : 226
	  disp	%ctpr1, .L103				! coremark/core_matrix.c : 226
	}
	! <0035>
	{
	  nop 3
	  adds,0	%r12, 0xa, %r8				! coremark/core_matrix.c : 225
	}
	! <0039>
	{
	  ct	%ctpr1				! coremark/core_matrix.c : 226
	}
.L95:							! coremark/core_matrix.c : 226
	! <0040>
	{
	  nop 4
	  cmplesb,0	%r7, %r6, %pred3				! coremark/core_matrix.c : 228
	  disp	%ctpr1, .L107				! coremark/core_matrix.c : 228
	}
	! <0045>
	{
	  ct	%ctpr1 ? %pred3				! coremark/core_matrix.c : 228
	}
.L110:							! coremark/core_matrix.c : 228
	! <0046>
	{
	  nop 4
	  adds,0,sm	0x0, 0x1, %r11			! coremark/core_matrix.c : 228
	  disp	%ctpr1, .L112				! coremark/core_matrix.c : 228
	}
	! <0051>
	{
	  ct	%ctpr1				! coremark/core_matrix.c : 228
	}
.L107:							! coremark/core_matrix.c : 228
	! <0052>
	{
	  adds,0,sm	0x0, 0x0, %r11			! coremark/core_matrix.c : 228
	}
.L112:							! coremark/core_matrix.c : 228
	! <0053>
	{
	  getfs,0	%r8, _f16s,_lts0hi 0x3400, %r12		! coremark/core_matrix.c : 228
	}
	! <0054>
	{
	  adds,0	%r12, %r11, %r8				! coremark/core_matrix.c : 228
	}
.L103:							! coremark/core_matrix.c : 228
	! <0055>
	{
	  nop 4
	  adds,0,sm	0x0, %r7, %r6				! coremark/core_matrix.c : 230
	  adds,1	%r10, 0x1, %r10				! coremark/core_matrix.c : 221
	  disp	%ctpr1, .L78				! coremark/core_matrix.c : 221
	}
	! <0060>
	{
	  ct	%ctpr1				! coremark/core_matrix.c : 221
	}
.L80:							! coremark/core_matrix.c : 221
	! <0061>
	{
	  nop 4
	  adds,0	%r9, 0x1, %r9				! coremark/core_matrix.c : 220
	  disp	%ctpr1, .L71				! coremark/core_matrix.c : 220
	}
	! <0066>
	{
	  ct	%ctpr1				! coremark/core_matrix.c : 220
	}
.L73:							! coremark/core_matrix.c : 220
	! <0067>
	{
	  nop 5
	  sxt,0,sm	0x1, %r8, %dr0				! coremark/core_matrix.c : 233
	  return	%ctpr3				! coremark/core_matrix.c : 233
	}
	! <0073>
	{
	  ct	%ctpr3					! coremark/core_matrix.c : 233
	}
	.size	matrix_sum, .- matrix_sum
! -----------------------------------------------------------------------------
! coremark/core_matrix.c : 240
	.global	matrix_mul_const
	.type	matrix_mul_const, #function
	.align	8
matrix_mul_const:
	! <0000>
	{
	  setwd	wsz = 0x6, nfx = 0x1, dbl = 0x0
	}
	! <0001>
	{
	  adds,0,sm	0x0, 0x0, %r6			! coremark/core_matrix.c : 242
	}
.L117:							! coremark/core_matrix.c : 242
	! <0002>
	{
	  nop 4
	  cmpbsb,0	%r6, %r0, %pred0				! coremark/core_matrix.c : 242
	  disp	%ctpr1, .L119				! coremark/core_matrix.c : 242
	}
	! <0007>
	{
	  ct	%ctpr1 ? ~%pred0				! coremark/core_matrix.c : 242
	}
.L122:							! coremark/core_matrix.c : 242
	! <0008>
	{
	  adds,0,sm	0x0, 0x0, %r7			! coremark/core_matrix.c : 243
	}
.L124:							! coremark/core_matrix.c : 243
	! <0009>
	{
	  nop 4
	  cmpbsb,0	%r7, %r0, %pred1				! coremark/core_matrix.c : 243
	  disp	%ctpr1, .L126				! coremark/core_matrix.c : 243
	}
	! <0014>
	{
	  ct	%ctpr1 ? ~%pred1				! coremark/core_matrix.c : 243
	}
.L129:							! coremark/core_matrix.c : 243
	! <0015>
	{
	  nop 5
	  muls,0	%r6, %r0, %r8				! coremark/core_matrix.c : 244
	  getfs,1	%r3, _f16s,_lts0hi 0x3400, %r9		! coremark/core_matrix.c : 244
	  muls,3	%r6, %r0, %r10				! coremark/core_matrix.c : 244
	  disp	%ctpr1, .L124				! coremark/core_matrix.c : 243
	}
	! <0021>
	{
	  adds,0	%r8, %r7, %r8				! coremark/core_matrix.c : 244
	  adds,1	%r10, %r7, %r10				! coremark/core_matrix.c : 244
	  adds,2	%r7, 0x1, %r7				! coremark/core_matrix.c : 243
	}
	! <0022>
	{
	  sxt,0,sm	0x6, %r8, %dr8				! coremark/core_matrix.c : 244
	  sxt,1,sm	0x6, %r10, %dr10				! coremark/core_matrix.c : 244
	}
	! <0023>
	{
	  shld,0	%dr8, 0x1, %dr8				! coremark/core_matrix.c : 244
	  shld,1	%dr10, 0x2, %dr10				! coremark/core_matrix.c : 244
	}
	! <0024>
	{
	  nop 1
	  addd,0	%dr2, %dr8, %dr8				! coremark/core_matrix.c : 244
	  addd,1	%dr1, %dr10, %dr10				! coremark/core_matrix.c : 244
	}
	! <0026>
	{
	  nop 2
	  ldh,0	%dr8, 0x0, %r8				! coremark/core_matrix.c : 244
	}
	! <0029>
	{
	  getfs,0	%r8, _f16s,_lts0hi 0x3400, %r8		! coremark/core_matrix.c : 244
	}
	! <0030>
	{
	  nop 5
	  muls,0	%r8, %r9, %r8				! coremark/core_matrix.c : 244
	}
	! <0036>
	{
	  stw,2,sm	%dr10, 0x0, %r8				! coremark/core_matrix.c : 244
	  ct	%ctpr1				! coremark/core_matrix.c : 243
	}
.L126:							! coremark/core_matrix.c : 243
	! <0037>
	{
	  nop 4
	  adds,0	%r6, 0x1, %r6				! coremark/core_matrix.c : 242
	  disp	%ctpr1, .L117				! coremark/core_matrix.c : 242
	}
	! <0042>
	{
	  ct	%ctpr1				! coremark/core_matrix.c : 242
	}
.L119:							! coremark/core_matrix.c : 242
	! <0043>
	{
	  nop 5
	  return	%ctpr3				! coremark/core_matrix.c : 242
	}
	! <0049>
	{
	  ct	%ctpr3					! coremark/core_matrix.c : 242
	}
	.size	matrix_mul_const, .- matrix_mul_const
! -----------------------------------------------------------------------------
! coremark/core_matrix.c : 252
	.global	matrix_add_const
	.type	matrix_add_const, #function
	.align	8
matrix_add_const:
	! <0000>
	{
	  setwd	wsz = 0x5, nfx = 0x1, dbl = 0x0
	}
	! <0001>
	{
	  adds,0,sm	0x0, 0x0, %r5			! coremark/core_matrix.c : 254
	}
.L134:							! coremark/core_matrix.c : 254
	! <0002>
	{
	  nop 4
	  cmpbsb,0	%r5, %r0, %pred0				! coremark/core_matrix.c : 254
	  disp	%ctpr1, .L136				! coremark/core_matrix.c : 254
	}
	! <0007>
	{
	  ct	%ctpr1 ? ~%pred0				! coremark/core_matrix.c : 254
	}
.L139:							! coremark/core_matrix.c : 254
	! <0008>
	{
	  adds,0,sm	0x0, 0x0, %r6			! coremark/core_matrix.c : 255
	}
.L141:							! coremark/core_matrix.c : 255
	! <0009>
	{
	  nop 4
	  cmpbsb,0	%r6, %r0, %pred1				! coremark/core_matrix.c : 255
	  disp	%ctpr1, .L143				! coremark/core_matrix.c : 255
	}
	! <0014>
	{
	  ct	%ctpr1 ? ~%pred1				! coremark/core_matrix.c : 255
	}
.L146:							! coremark/core_matrix.c : 255
	! <0015>
	{
	  nop 5
	  getfs,0	%r2, _f16s,_lts0hi 0x3400, %r7		! coremark/core_matrix.c : 256
	  muls,1	%r5, %r0, %r8				! coremark/core_matrix.c : 256
	  disp	%ctpr1, .L141				! coremark/core_matrix.c : 255
	}
	! <0021>
	{
	  adds,0	%r8, %r6, %r8				! coremark/core_matrix.c : 256
	  adds,1	%r6, 0x1, %r6				! coremark/core_matrix.c : 255
	}
	! <0022>
	{
	  sxt,0,sm	0x6, %r8, %dr8				! coremark/core_matrix.c : 256
	}
	! <0023>
	{
	  shld,0	%dr8, 0x1, %dr8				! coremark/core_matrix.c : 256
	}
	! <0024>
	{
	  nop 1
	  addd,0	%dr1, %dr8, %dr8				! coremark/core_matrix.c : 256
	}
	! <0026>
	{
	  nop 2
	  ldh,0	%dr8, 0x0, %r9				! coremark/core_matrix.c : 256
	}
	! <0029>
	{
	  getfs,0	%r9, _f16s,_lts0hi 0x3400, %r9		! coremark/core_matrix.c : 256
	}
	! <0030>
	{
	  adds,0	%r9, %r7, %r7				! coremark/core_matrix.c : 256
	}
	! <0031>
	{
	  sth,2,sm	%dr8, 0x0, %r7				! coremark/core_matrix.c : 256
	  ct	%ctpr1				! coremark/core_matrix.c : 255
	}
.L143:							! coremark/core_matrix.c : 255
	! <0032>
	{
	  nop 4
	  adds,0	%r5, 0x1, %r5				! coremark/core_matrix.c : 254
	  disp	%ctpr1, .L134				! coremark/core_matrix.c : 254
	}
	! <0037>
	{
	  ct	%ctpr1				! coremark/core_matrix.c : 254
	}
.L136:							! coremark/core_matrix.c : 254
	! <0038>
	{
	  nop 5
	  return	%ctpr3				! coremark/core_matrix.c : 254
	}
	! <0044>
	{
	  ct	%ctpr3					! coremark/core_matrix.c : 254
	}
	.size	matrix_add_const, .- matrix_add_const
! -----------------------------------------------------------------------------
! coremark/core_matrix.c : 265
	.global	matrix_mul_vect
	.type	matrix_mul_vect, #function
	.align	8
matrix_mul_vect:
	! <0000>
	{
	  setwd	wsz = 0x6, nfx = 0x1, dbl = 0x0
	}
	! <0001>
	{
	  adds,0,sm	0x0, 0x0, %r6			! coremark/core_matrix.c : 267
	}
.L151:							! coremark/core_matrix.c : 267
	! <0002>
	{
	  nop 4
	  cmpbsb,0	%r6, %r0, %pred0				! coremark/core_matrix.c : 267
	  disp	%ctpr1, .L153				! coremark/core_matrix.c : 267
	}
	! <0007>
	{
	  ct	%ctpr1 ? ~%pred0				! coremark/core_matrix.c : 267
	}
.L156:							! coremark/core_matrix.c : 267
	! <0008>
	{
	  sxt,0,sm	0x6, %r6, %dr8				! coremark/core_matrix.c : 268
	  adds,1,sm	0x0, 0x0, %r9			! coremark/core_matrix.c : 268
	  adds,2,sm	0x0, 0x0, %r7			! coremark/core_matrix.c : 269
	}
	! <0009>
	{
	  shld,0	%dr8, 0x2, %dr8				! coremark/core_matrix.c : 268
	}
	! <0010>
	{
	  addd,0	%dr1, %dr8, %dr8				! coremark/core_matrix.c : 268
	}
	! <0011>
	{
	  stw,2,sm	%dr8, 0x0, %r9				! coremark/core_matrix.c : 268
	}
.L163:							! coremark/core_matrix.c : 269
	! <0012>
	{
	  nop 4
	  cmpbsb,0	%r7, %r0, %pred1				! coremark/core_matrix.c : 269
	  disp	%ctpr1, .L165				! coremark/core_matrix.c : 269
	}
	! <0017>
	{
	  ct	%ctpr1 ? ~%pred1				! coremark/core_matrix.c : 269
	}
.L168:							! coremark/core_matrix.c : 269
	! <0018>
	{
	  muls,0	%r6, %r0, %r8				! coremark/core_matrix.c : 270
	  sxt,1,sm	0x6, %r7, %dr9				! coremark/core_matrix.c : 270
	  sxt,2,sm	0x6, %r6, %dr10				! coremark/core_matrix.c : 270
	  disp	%ctpr1, .L163				! coremark/core_matrix.c : 269
	}
	! <0019>
	{
	  shld,0	%dr9, 0x1, %dr9				! coremark/core_matrix.c : 270
	  shld,1	%dr10, 0x2, %dr10				! coremark/core_matrix.c : 270
	}
	! <0020>
	{
	  addd,0	%dr3, %dr9, %dr9				! coremark/core_matrix.c : 270
	  addd,1	%dr1, %dr10, %dr10				! coremark/core_matrix.c : 270
	}
	! <0021>
	{
	  nop 2
	  ldh,0	%dr9, 0x0, %r9				! coremark/core_matrix.c : 270
	  ldw,2	%dr10, 0x0, %r11				! coremark/core_matrix.c : 270
	}
	! <0024>
	{
	  adds,0	%r8, %r7, %r8				! coremark/core_matrix.c : 270
	  getfs,1	%r9, _f16s,_lts0hi 0x3400, %r9		! coremark/core_matrix.c : 270
	  adds,2	%r7, 0x1, %r7				! coremark/core_matrix.c : 269
	}
	! <0025>
	{
	  sxt,0,sm	0x6, %r8, %dr8				! coremark/core_matrix.c : 270
	}
	! <0026>
	{
	  shld,0	%dr8, 0x1, %dr8				! coremark/core_matrix.c : 270
	}
	! <0027>
	{
	  addd,0	%dr2, %dr8, %dr8				! coremark/core_matrix.c : 270
	}
	! <0028>
	{
	  nop 2
	  ldh,0	%dr8, 0x0, %r8				! coremark/core_matrix.c : 270
	}
	! <0031>
	{
	  getfs,0	%r8, _f16s,_lts0hi 0x3400, %r8		! coremark/core_matrix.c : 270
	}
	! <0032>
	{
	  nop 5
	  muls,0	%r8, %r9, %r8				! coremark/core_matrix.c : 270
	}
	! <0038>
	{
	  adds,0	%r11, %r8, %r8				! coremark/core_matrix.c : 270
	}
	! <0039>
	{
	  stw,2,sm	%dr10, 0x0, %r8				! coremark/core_matrix.c : 270
	  ct	%ctpr1				! coremark/core_matrix.c : 269
	}
.L165:							! coremark/core_matrix.c : 269
	! <0040>
	{
	  nop 4
	  adds,0	%r6, 0x1, %r6				! coremark/core_matrix.c : 267
	  disp	%ctpr1, .L151				! coremark/core_matrix.c : 267
	}
	! <0045>
	{
	  ct	%ctpr1				! coremark/core_matrix.c : 267
	}
.L153:							! coremark/core_matrix.c : 267
	! <0046>
	{
	  nop 5
	  return	%ctpr3				! coremark/core_matrix.c : 267
	}
	! <0052>
	{
	  ct	%ctpr3					! coremark/core_matrix.c : 267
	}
	.size	matrix_mul_vect, .- matrix_mul_vect
! -----------------------------------------------------------------------------
! coremark/core_matrix.c : 279
	.global	matrix_mul_matrix
	.type	matrix_mul_matrix, #function
	.align	8
matrix_mul_matrix:
	! <0000>
	{
	  setwd	wsz = 0x7, nfx = 0x1, dbl = 0x0
	}
	! <0001>
	{
	  adds,0,sm	0x0, 0x0, %r6			! coremark/core_matrix.c : 281
	}
.L174:							! coremark/core_matrix.c : 281
	! <0002>
	{
	  nop 4
	  cmpbsb,0	%r6, %r0, %pred0				! coremark/core_matrix.c : 281
	  disp	%ctpr1, .L176				! coremark/core_matrix.c : 281
	}
	! <0007>
	{
	  ct	%ctpr1 ? ~%pred0				! coremark/core_matrix.c : 281
	}
.L179:							! coremark/core_matrix.c : 281
	! <0008>
	{
	  adds,0,sm	0x0, 0x0, %r7			! coremark/core_matrix.c : 282
	}
.L181:							! coremark/core_matrix.c : 282
	! <0009>
	{
	  nop 4
	  cmpbsb,0	%r7, %r0, %pred1				! coremark/core_matrix.c : 282
	  disp	%ctpr1, .L183				! coremark/core_matrix.c : 282
	}
	! <0014>
	{
	  ct	%ctpr1 ? ~%pred1				! coremark/core_matrix.c : 282
	}
.L186:							! coremark/core_matrix.c : 282
	! <0015>
	{
	  nop 5
	  muls,0	%r6, %r0, %r9				! coremark/core_matrix.c : 283
	  adds,1,sm	0x0, 0x0, %r10			! coremark/core_matrix.c : 283
	  adds,2,sm	0x0, 0x0, %r8			! coremark/core_matrix.c : 284
	}
	! <0021>
	{
	  adds,0	%r9, %r7, %r9				! coremark/core_matrix.c : 283
	}
	! <0022>
	{
	  sxt,0,sm	0x6, %r9, %dr9				! coremark/core_matrix.c : 283
	}
	! <0023>
	{
	  shld,0	%dr9, 0x2, %dr9				! coremark/core_matrix.c : 283
	}
	! <0024>
	{
	  addd,0	%dr1, %dr9, %dr9				! coremark/core_matrix.c : 283
	}
	! <0025>
	{
	  stw,2,sm	%dr9, 0x0, %r10				! coremark/core_matrix.c : 283
	}
.L195:							! coremark/core_matrix.c : 284
	! <0026>
	{
	  nop 4
	  cmpbsb,0	%r8, %r0, %pred2				! coremark/core_matrix.c : 284
	  disp	%ctpr1, .L197				! coremark/core_matrix.c : 284
	}
	! <0031>
	{
	  ct	%ctpr1 ? ~%pred2				! coremark/core_matrix.c : 284
	}
.L200:							! coremark/core_matrix.c : 284
	! <0032>
	{
	  nop 5
	  muls,0	%r6, %r0, %r9				! coremark/core_matrix.c : 286
	  muls,1	%r8, %r0, %r10				! coremark/core_matrix.c : 286
	  muls,3	%r6, %r0, %r11				! coremark/core_matrix.c : 286
	  disp	%ctpr1, .L195				! coremark/core_matrix.c : 284
	}
	! <0038>
	{
	  adds,0	%r9, %r8, %r9				! coremark/core_matrix.c : 286
	  adds,1	%r10, %r7, %r10				! coremark/core_matrix.c : 286
	  adds,2	%r11, %r7, %r11				! coremark/core_matrix.c : 286
	  adds,3	%r8, 0x1, %r8				! coremark/core_matrix.c : 284
	}
	! <0039>
	{
	  sxt,0,sm	0x6, %r9, %dr9				! coremark/core_matrix.c : 286
	  sxt,1,sm	0x6, %r10, %dr10				! coremark/core_matrix.c : 286
	  sxt,2,sm	0x6, %r11, %dr11				! coremark/core_matrix.c : 286
	}
	! <0040>
	{
	  shld,0	%dr9, 0x1, %dr9				! coremark/core_matrix.c : 286
	  shld,1	%dr10, 0x1, %dr10				! coremark/core_matrix.c : 286
	  shld,2	%dr11, 0x2, %dr11				! coremark/core_matrix.c : 286
	}
	! <0041>
	{
	  addd,0	%dr2, %dr9, %dr9				! coremark/core_matrix.c : 286
	  addd,1	%dr3, %dr10, %dr10				! coremark/core_matrix.c : 286
	  addd,2	%dr1, %dr11, %dr11				! coremark/core_matrix.c : 286
	}
	! <0042>
	{
	  nop 2
	  ldh,0	%dr9, 0x0, %r9				! coremark/core_matrix.c : 286
	  ldh,2	%dr10, 0x0, %r10				! coremark/core_matrix.c : 286
	  ldw,3	%dr11, 0x0, %r12				! coremark/core_matrix.c : 286
	}
	! <0045>
	{
	  getfs,0	%r9, _f16s,_lts0hi 0x3400, %r9		! coremark/core_matrix.c : 286
	  getfs,1	%r10, _f16s,_lts0lo 0x3400, %r10		! coremark/core_matrix.c : 286
	}
	! <0046>
	{
	  nop 5
	  muls,0	%r9, %r10, %r9				! coremark/core_matrix.c : 286
	}
	! <0052>
	{
	  adds,0	%r12, %r9, %r9				! coremark/core_matrix.c : 286
	}
	! <0053>
	{
	  stw,2,sm	%dr11, 0x0, %r9				! coremark/core_matrix.c : 286
	  ct	%ctpr1				! coremark/core_matrix.c : 284
	}
.L197:							! coremark/core_matrix.c : 284
	! <0054>
	{
	  nop 4
	  adds,0	%r7, 0x1, %r7				! coremark/core_matrix.c : 282
	  disp	%ctpr1, .L181				! coremark/core_matrix.c : 282
	}
	! <0059>
	{
	  ct	%ctpr1				! coremark/core_matrix.c : 282
	}
.L183:							! coremark/core_matrix.c : 282
	! <0060>
	{
	  nop 4
	  adds,0	%r6, 0x1, %r6				! coremark/core_matrix.c : 281
	  disp	%ctpr1, .L174				! coremark/core_matrix.c : 281
	}
	! <0065>
	{
	  ct	%ctpr1				! coremark/core_matrix.c : 281
	}
.L176:							! coremark/core_matrix.c : 281
	! <0066>
	{
	  nop 5
	  return	%ctpr3				! coremark/core_matrix.c : 281
	}
	! <0072>
	{
	  ct	%ctpr3					! coremark/core_matrix.c : 281
	}
	.size	matrix_mul_matrix, .- matrix_mul_matrix
! -----------------------------------------------------------------------------
! coremark/core_matrix.c : 296
	.global	matrix_mul_matrix_bitextract
	.type	matrix_mul_matrix_bitextract, #function
	.align	8
matrix_mul_matrix_bitextract:
	! <0000>
	{
	  setwd	wsz = 0x7, nfx = 0x1, dbl = 0x0
	}
	! <0001>
	{
	  adds,0,sm	0x0, 0x0, %r6			! coremark/core_matrix.c : 298
	}
.L207:							! coremark/core_matrix.c : 298
	! <0002>
	{
	  nop 4
	  cmpbsb,0	%r6, %r0, %pred0				! coremark/core_matrix.c : 298
	  disp	%ctpr1, .L209				! coremark/core_matrix.c : 298
	}
	! <0007>
	{
	  ct	%ctpr1 ? ~%pred0				! coremark/core_matrix.c : 298
	}
.L212:							! coremark/core_matrix.c : 298
	! <0008>
	{
	  adds,0,sm	0x0, 0x0, %r7			! coremark/core_matrix.c : 299
	}
.L214:							! coremark/core_matrix.c : 299
	! <0009>
	{
	  nop 4
	  cmpbsb,0	%r7, %r0, %pred1				! coremark/core_matrix.c : 299
	  disp	%ctpr1, .L216				! coremark/core_matrix.c : 299
	}
	! <0014>
	{
	  ct	%ctpr1 ? ~%pred1				! coremark/core_matrix.c : 299
	}
.L219:							! coremark/core_matrix.c : 299
	! <0015>
	{
	  nop 5
	  muls,0	%r6, %r0, %r10				! coremark/core_matrix.c : 300
	  adds,1,sm	0x0, 0x0, %r11			! coremark/core_matrix.c : 300
	  adds,2,sm	0x0, 0x0, %r8			! coremark/core_matrix.c : 301
	}
	! <0021>
	{
	  adds,0	%r10, %r7, %r10				! coremark/core_matrix.c : 300
	}
	! <0022>
	{
	  sxt,0,sm	0x6, %r10, %dr10				! coremark/core_matrix.c : 300
	}
	! <0023>
	{
	  shld,0	%dr10, 0x2, %dr10				! coremark/core_matrix.c : 300
	}
	! <0024>
	{
	  addd,0	%dr1, %dr10, %dr10				! coremark/core_matrix.c : 300
	}
	! <0025>
	{
	  stw,2,sm	%dr10, 0x0, %r11				! coremark/core_matrix.c : 300
	}
.L228:							! coremark/core_matrix.c : 301
	! <0026>
	{
	  nop 4
	  cmpbsb,0	%r8, %r0, %pred2				! coremark/core_matrix.c : 301
	  disp	%ctpr1, .L230				! coremark/core_matrix.c : 301
	}
	! <0031>
	{
	  ct	%ctpr1 ? ~%pred2				! coremark/core_matrix.c : 301
	}
.L233:							! coremark/core_matrix.c : 301
	! <0032>
	{
	  nop 5
	  muls,0	%r6, %r0, %r10				! coremark/core_matrix.c : 303
	  muls,1	%r8, %r0, %r11				! coremark/core_matrix.c : 303
	  muls,3	%r6, %r0, %r12				! coremark/core_matrix.c : 304
	  disp	%ctpr1, .L228				! coremark/core_matrix.c : 301
	}
	! <0038>
	{
	  adds,0	%r10, %r8, %r10				! coremark/core_matrix.c : 303
	  adds,1	%r11, %r7, %r11				! coremark/core_matrix.c : 303
	  adds,2	%r12, %r7, %r12				! coremark/core_matrix.c : 304
	  adds,3	%r8, 0x1, %r8				! coremark/core_matrix.c : 301
	}
	! <0039>
	{
	  sxt,0,sm	0x6, %r10, %dr10				! coremark/core_matrix.c : 303
	  sxt,1,sm	0x6, %r11, %dr11				! coremark/core_matrix.c : 303
	  sxt,2,sm	0x6, %r12, %dr12				! coremark/core_matrix.c : 304
	}
	! <0040>
	{
	  shld,0	%dr10, 0x1, %dr10				! coremark/core_matrix.c : 303
	  shld,1	%dr11, 0x1, %dr11				! coremark/core_matrix.c : 303
	  shld,2	%dr12, 0x2, %dr12				! coremark/core_matrix.c : 304
	}
	! <0041>
	{
	  addd,0	%dr2, %dr10, %dr10				! coremark/core_matrix.c : 303
	  addd,1	%dr3, %dr11, %dr11				! coremark/core_matrix.c : 303
	  addd,2	%dr1, %dr12, %dr12				! coremark/core_matrix.c : 304
	}
	! <0042>
	{
	  nop 2
	  ldh,0	%dr10, 0x0, %r10				! coremark/core_matrix.c : 303
	  ldh,2	%dr11, 0x0, %r11				! coremark/core_matrix.c : 303
	  ldw,3	%dr12, 0x0, %r13				! coremark/core_matrix.c : 304
	}
	! <0045>
	{
	  getfs,0	%r10, _f16s,_lts0hi 0x3400, %r10		! coremark/core_matrix.c : 303
	  getfs,1	%r11, _f16s,_lts0lo 0x3400, %r11		! coremark/core_matrix.c : 303
	}
	! <0046>
	{
	  nop 5
	  muls,0	%r10, %r11, %r9				! coremark/core_matrix.c : 303
	}
	! <0052>
	{
	  sars,0	%r9, 0x2, %r10				! coremark/core_matrix.c : 304
	  sars,1	%r9, 0x5, %r11				! coremark/core_matrix.c : 304
	}
	! <0053>
	{
	  ands,0	%r10, 0xf, %r10				! coremark/core_matrix.c : 304
	  ands,1	%r11, _f16s,_lts0hi 0x7f, %r11		! coremark/core_matrix.c : 304
	}
	! <0054>
	{
	  nop 5
	  muls,0	%r10, %r11, %r10				! coremark/core_matrix.c : 304
	}
	! <0060>
	{
	  adds,0	%r13, %r10, %r10				! coremark/core_matrix.c : 304
	}
	! <0061>
	{
	  stw,2,sm	%dr12, 0x0, %r10				! coremark/core_matrix.c : 304
	  ct	%ctpr1				! coremark/core_matrix.c : 301
	}
.L230:							! coremark/core_matrix.c : 301
	! <0062>
	{
	  nop 4
	  adds,0	%r7, 0x1, %r7				! coremark/core_matrix.c : 299
	  disp	%ctpr1, .L214				! coremark/core_matrix.c : 299
	}
	! <0067>
	{
	  ct	%ctpr1				! coremark/core_matrix.c : 299
	}
.L216:							! coremark/core_matrix.c : 299
	! <0068>
	{
	  nop 4
	  adds,0	%r6, 0x1, %r6				! coremark/core_matrix.c : 298
	  disp	%ctpr1, .L207				! coremark/core_matrix.c : 298
	}
	! <0073>
	{
	  ct	%ctpr1				! coremark/core_matrix.c : 298
	}
.L209:							! coremark/core_matrix.c : 298
	! <0074>
	{
	  nop 5
	  return	%ctpr3				! coremark/core_matrix.c : 298
	}
	! <0080>
	{
	  ct	%ctpr3					! coremark/core_matrix.c : 298
	}
	.size	matrix_mul_matrix_bitextract, .- matrix_mul_matrix_bitextract
! -----------------------------------------------------------------------------
	.weak	elbrus_compiler_v1.24.10_Mar__8_2020
	elbrus_compiler_v1.24.10_Mar__8_2020 = 0x0
