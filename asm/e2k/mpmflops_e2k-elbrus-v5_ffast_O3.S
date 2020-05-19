	.file	"mpmflops.c"
	.ignore	ld_st_style
	.ignore	strict_delay
	.text
	.local	_mm_malloc
	.type	_mm_malloc, #function
	.align	8
_mm_malloc:
	.cfi_startproc
	{
	  setwd	wsz = 0x8, nfx = 0x1, dbl = 0x0
	  setbn	rsz = 0x3, rbs = 0x4, rcur = 0x0
	  setbp	psz = 0x0
	  getsp,0	_f32s,_lts1 0xffffffd0, %r3
	}
	{
	  addd,0	%r3, _f32s,_lts0 0x30, %r2
	}
	{
	  nop 1
	  addd,3,sm	0x0, %r0, %r3
	}
	{
	  cmpedb,0	%r1, 0x1, %pred0
	}
	{
	  nop 4
	  disp	%ctpr1, .L6
	}
	{
	  ct	%ctpr1 ? %pred0
	}
	{
	  cmpedb,0	%r1, 0x2, %pred0
	}
	{
	  nop 4
	  disp	%ctpr1, .L29
	}
	{
	  ct	%ctpr1 ? %pred0
	}
	{
	  cmpedb,0	%r1, 0x4, %pred0
	}
	{
	  nop 4
	  disp	%ctpr1, .L41
	}
	{
	  ct	%ctpr1 ? ~%pred0
	}
.L29:
	{
	  addd,0	0x8, 0x0, %r1
	}
.L41:
	{
	  addd,0	%r2, _f16s,_lts0lo 0xfff8, %b[0]
	}
	{
	  addd,0,sm	0x0, %r1, %b[1]
	}
	{
	  addd,0,sm	0x0, %r3, %b[2]
	}
	{
	  nop 6
	  disp	%ctpr1, posix_memalign
	}
	{
	  call	%ctpr1, wbs = 0x4
	}
	{
	  nop 5
	}
	{
	  cmpesb,3	%b[0], 0x0, %pred0
	}
	{
	  nop 4
	  disp	%ctpr1, .L58
	}
	{
	  ct	%ctpr1 ? %pred0
	}
	{
	  addd,3	0x0, 0x0, %r0
	}
	{
	  nop 6
	  return	%ctpr3
	}
	{
	  ct	%ctpr3
	}
	{
	  nop 6
	}
.L58:
	{
	  ldd,3	%r2, _f16s,_lts0lo 0xfff8, %r0
	}
	{
	  nop 6
	  return	%ctpr3
	}
	{
	  ct	%ctpr3
	}
	{
	  nop 6
	}
.L6:
	{
	  addd,0,sm	0x0, %r3, %b[0]
	}
	{
	  nop 6
	  disp	%ctpr1, malloc
	}
	{
	  call	%ctpr1, wbs = 0x4
	}
	{
	  nop 5
	}
	{
	  addd,3,sm	0x0, %b[0], %r0
	}
	{
	  nop 6
	  return	%ctpr3
	}
	{
	  ct	%ctpr3
	}
	{
	  nop 6
	}
	.cfi_endproc
	.size	_mm_malloc, .- _mm_malloc
	.local	_mm_free
	.type	_mm_free, #function
	.align	8
_mm_free:
	.cfi_startproc
	{
	  setwd	wsz = 0x8, nfx = 0x1, dbl = 0x0
	  setbn	rsz = 0x3, rbs = 0x4, rcur = 0x0
	  setbp	psz = 0x0
	  getsp,0	_f32s,_lts1 0xfffffff0, %r2
	}
	{
	  addd,3,sm	0x0, %r0, %b[0]
	}
	{
	  nop 6
	  disp	%ctpr1, free
	}
	{
	  call	%ctpr1, wbs = 0x4
	}
	{
	  nop 5
	}
	{
	  nop 6
	  return	%ctpr3
	}
	{
	  ct	%ctpr3
	}
	{
	  nop 6
	}
	.cfi_endproc
	.size	_mm_free, .- _mm_free
	.global	triadplus2
	.type	triadplus2, #function
	.align	8
triadplus2:
	.cfi_startproc
	{
	  setwd	wsz = 0x7, nfx = 0x1, dbl = 0x0
	  setbp	psz = 0x0
	  getsp,0	_f32s,_lts1 0x0, %r9
	}
	{
	  addd,0	%r9, _f32s,_lts0 0x0, %r8
	}
	nop
	{
	  adds,3	0x0, 0x0, %r9
	}
.L64:
	{
	  cmplsb,3	%r9, %r0, %pred0
	}
	{
	  nop 4
	  disp	%ctpr1, .L202
	}
	{
	  ct	%ctpr1 ? ~%pred0
	}
	{
	  ldd,0	%r8, _f16s,_lts0lo 0xb8, %r10
	}
	{
	  sxt,0	0x2, %r9, %r11
	}
	{
	  shld,0	%r11, 0x2, %r11
	}
	{
	  addd,0	%r10, %r11, %r10
	}
	{
	  nop 2
	  ldw,0	%r10, 0x0, %r10
	}
	{
	  nop 3
	  fadds,0	%r10, %r1, %r10
	}
	{
	  fmuls,0	%r10, %r2, %r10
	}
	{
	  ldd,0	%r8, _f16s,_lts0lo 0xb8, %r11
	}
	{
	  sxt,1	0x2, %r9, %r12
	}
	{
	  shld,0	%r12, 0x2, %r12
	}
	{
	  addd,0	%r11, %r12, %r11
	}
	{
	  nop 2
	  ldw,0	%r11, 0x0, %r11
	}
	{
	  nop 3
	  fadds,0	%r11, %r3, %r11
	}
	{
	  nop 3
	  fmuls,0	%r11, %r4, %r11
	}
	{
	  fsubs,0	%r10, %r11, %r10
	}
	{
	  ldd,0	%r8, _f16s,_lts0lo 0xb8, %r11
	}
	{
	  sxt,1	0x2, %r9, %r12
	}
	{
	  shld,0	%r12, 0x2, %r12
	}
	{
	  addd,0	%r11, %r12, %r11
	}
	{
	  nop 2
	  ldw,0	%r11, 0x0, %r11
	}
	{
	  nop 3
	  fadds,0	%r11, %r5, %r11
	}
	{
	  nop 3
	  fmuls,0	%r11, %r6, %r11
	}
	{
	  fadds,0	%r10, %r11, %r10
	}
	{
	  ldd,0	%r8, _f16s,_lts0lo 0xb8, %r11
	}
	{
	  sxt,1	0x2, %r9, %r12
	}
	{
	  shld,0	%r12, 0x2, %r12
	}
	{
	  addd,0	%r11, %r12, %r11
	}
	{
	  nop 2
	  ldw,0	%r11, 0x0, %r11
	}
	{
	  fadds,0	%r11, %r7, %r11
	}
	{
	  nop 2
	  ldw,0	%r8, _f16s,_lts0lo 0x40, %r12
	}
	{
	  nop 3
	  fmuls,0	%r11, %r12, %r11
	}
	{
	  fsubs,0	%r10, %r11, %r10
	}
	{
	  ldd,0	%r8, _f16s,_lts0lo 0xb8, %r11
	}
	{
	  sxt,1	0x2, %r9, %r12
	}
	{
	  shld,0	%r12, 0x2, %r12
	}
	{
	  addd,0	%r11, %r12, %r11
	}
	{
	  ldw,0	%r11, 0x0, %r11
	}
	{
	  nop 2
	  ldw,0	%r8, _f16s,_lts0lo 0x48, %r12
	}
	{
	  fadds,0	%r11, %r12, %r11
	}
	{
	  nop 2
	  ldw,0	%r8, _f16s,_lts0lo 0x50, %r12
	}
	{
	  nop 3
	  fmuls,0	%r11, %r12, %r11
	}
	{
	  fadds,0	%r10, %r11, %r10
	}
	{
	  ldd,0	%r8, _f16s,_lts0lo 0xb8, %r11
	}
	{
	  sxt,1	0x2, %r9, %r12
	}
	{
	  shld,0	%r12, 0x2, %r12
	}
	{
	  addd,0	%r11, %r12, %r11
	}
	{
	  ldw,0	%r11, 0x0, %r11
	}
	{
	  nop 2
	  ldw,0	%r8, _f16s,_lts0lo 0x58, %r12
	}
	{
	  fadds,0	%r11, %r12, %r11
	}
	{
	  nop 2
	  ldw,0	%r8, _f16s,_lts0lo 0x60, %r12
	}
	{
	  nop 3
	  fmuls,0	%r11, %r12, %r11
	}
	{
	  fsubs,0	%r10, %r11, %r10
	}
	{
	  ldd,0	%r8, _f16s,_lts0lo 0xb8, %r11
	}
	{
	  sxt,1	0x2, %r9, %r12
	}
	{
	  shld,0	%r12, 0x2, %r12
	}
	{
	  addd,0	%r11, %r12, %r11
	}
	{
	  ldw,0	%r11, 0x0, %r11
	}
	{
	  nop 2
	  ldw,0	%r8, _f16s,_lts0lo 0x68, %r12
	}
	{
	  fadds,0	%r11, %r12, %r11
	}
	{
	  nop 2
	  ldw,0	%r8, _f16s,_lts0lo 0x70, %r12
	}
	{
	  nop 3
	  fmuls,0	%r11, %r12, %r11
	}
	{
	  fadds,0	%r10, %r11, %r10
	}
	{
	  ldd,0	%r8, _f16s,_lts0lo 0xb8, %r11
	}
	{
	  sxt,1	0x2, %r9, %r12
	}
	{
	  shld,0	%r12, 0x2, %r12
	}
	{
	  addd,0	%r11, %r12, %r11
	}
	{
	  ldw,0	%r11, 0x0, %r11
	}
	{
	  nop 2
	  ldw,0	%r8, _f16s,_lts0lo 0x78, %r12
	}
	{
	  fadds,0	%r11, %r12, %r11
	}
	{
	  nop 2
	  ldw,0	%r8, _f16s,_lts0lo 0x80, %r12
	}
	{
	  nop 3
	  fmuls,0	%r11, %r12, %r11
	}
	{
	  fsubs,0	%r10, %r11, %r10
	}
	{
	  ldd,0	%r8, _f16s,_lts0lo 0xb8, %r11
	}
	{
	  sxt,1	0x2, %r9, %r12
	}
	{
	  shld,0	%r12, 0x2, %r12
	}
	{
	  addd,0	%r11, %r12, %r11
	}
	{
	  ldw,0	%r11, 0x0, %r11
	}
	{
	  nop 2
	  ldw,0	%r8, _f16s,_lts0lo 0x88, %r12
	}
	{
	  fadds,0	%r11, %r12, %r11
	}
	{
	  nop 2
	  ldw,0	%r8, _f16s,_lts0lo 0x90, %r12
	}
	{
	  nop 3
	  fmuls,0	%r11, %r12, %r11
	}
	{
	  fadds,0	%r10, %r11, %r10
	}
	{
	  ldd,0	%r8, _f16s,_lts0lo 0xb8, %r11
	}
	{
	  sxt,1	0x2, %r9, %r12
	}
	{
	  shld,0	%r12, 0x2, %r12
	}
	{
	  addd,0	%r11, %r12, %r11
	}
	{
	  ldw,0	%r11, 0x0, %r11
	}
	{
	  nop 2
	  ldw,0	%r8, _f16s,_lts0lo 0x98, %r12
	}
	{
	  fadds,0	%r11, %r12, %r11
	}
	{
	  nop 2
	  ldw,0	%r8, _f16s,_lts0lo 0xa0, %r12
	}
	{
	  nop 3
	  fmuls,0	%r11, %r12, %r11
	}
	{
	  fsubs,0	%r10, %r11, %r10
	}
	{
	  ldd,0	%r8, _f16s,_lts0lo 0xb8, %r11
	}
	{
	  sxt,1	0x2, %r9, %r12
	}
	{
	  shld,0	%r12, 0x2, %r12
	}
	{
	  addd,0	%r11, %r12, %r11
	}
	{
	  ldw,0	%r11, 0x0, %r11
	}
	{
	  nop 2
	  ldw,0	%r8, _f16s,_lts0lo 0xa8, %r12
	}
	{
	  fadds,0	%r11, %r12, %r11
	}
	{
	  nop 2
	  ldw,0	%r8, _f16s,_lts0lo 0xb0, %r12
	}
	{
	  nop 3
	  fmuls,0	%r11, %r12, %r11
	}
	{
	  fadds,0	%r10, %r11, %r10
	}
	{
	  ldd,0	%r8, _f16s,_lts0lo 0xb8, %r11
	}
	{
	  sxt,1	0x2, %r9, %r12
	}
	{
	  shld,0	%r12, 0x2, %r12
	}
	{
	  addd,0	%r11, %r12, %r11
	}
	{
	  stw,2	%r11, 0x0, %r10
	}
	{
	  adds,0	%r9, 0x1, %r9
	}
	{
	  nop 4
	  disp	%ctpr1, .L64
	}
	{
	  ct	%ctpr1
	}
.L202:
	{
	  nop 6
	  return	%ctpr3
	}
	{
	  ct	%ctpr3
	}
	{
	  nop 6
	}
	.cfi_endproc
	.size	triadplus2, .- triadplus2
	.global	triadplus
	.type	triadplus, #function
	.align	8
triadplus:
	.cfi_startproc
	{
	  setwd	wsz = 0x6, nfx = 0x1, dbl = 0x0
	  setbp	psz = 0x0
	}
	nop
	{
	  adds,3	0x0, 0x0, %r9
	}
.L208:
	{
	  cmplsb,3	%r9, %r0, %pred0
	}
	{
	  nop 4
	  disp	%ctpr1, .L258
	}
	{
	  ct	%ctpr1 ? ~%pred0
	}
	{
	  sxt,0	0x2, %r9, %r10
	}
	{
	  shld,0	%r10, 0x2, %r10
	}
	{
	  addd,0	%r7, %r10, %r10
	}
	{
	  nop 2
	  ldw,0	%r10, 0x0, %r10
	}
	{
	  nop 3
	  fadds,0	%r10, %r1, %r10
	}
	{
	  fmuls,0	%r10, %r2, %r10
	}
	{
	  sxt,0	0x2, %r9, %r11
	}
	{
	  shld,1	%r11, 0x2, %r11
	}
	{
	  addd,0	%r7, %r11, %r11
	}
	{
	  nop 2
	  ldw,0	%r11, 0x0, %r11
	}
	{
	  nop 3
	  fadds,0	%r11, %r3, %r11
	}
	{
	  nop 3
	  fmuls,0	%r11, %r4, %r11
	}
	{
	  fsubs,0	%r10, %r11, %r10
	}
	{
	  sxt,0	0x2, %r9, %r11
	}
	{
	  shld,1	%r11, 0x2, %r11
	}
	{
	  addd,0	%r7, %r11, %r11
	}
	{
	  nop 2
	  ldw,0	%r11, 0x0, %r11
	}
	{
	  nop 3
	  fadds,0	%r11, %r5, %r11
	}
	{
	  nop 3
	  fmuls,0	%r11, %r6, %r11
	}
	{
	  fadds,0	%r10, %r11, %r10
	}
	{
	  sxt,0	0x2, %r9, %r11
	}
	{
	  shld,1	%r11, 0x2, %r11
	}
	{
	  addd,0	%r7, %r11, %r11
	}
	{
	  stw,2	%r11, 0x0, %r10
	}
	{
	  adds,0	%r9, 0x1, %r9
	}
	{
	  nop 4
	  disp	%ctpr1, .L208
	}
	{
	  ct	%ctpr1
	}
.L258:
	{
	  nop 6
	  return	%ctpr3
	}
	{
	  ct	%ctpr3
	}
	{
	  nop 6
	}
	.cfi_endproc
	.size	triadplus, .- triadplus
	.global	triad
	.type	triad, #function
	.align	8
triad:
	.cfi_startproc
	{
	  setwd	wsz = 0x4, nfx = 0x1, dbl = 0x0
	  setbp	psz = 0x0
	}
	nop
	{
	  adds,1	0x0, 0x0, %r5
	}
.L264:
	{
	  cmplsb,0	%r5, %r0, %pred0
	}
	{
	  nop 4
	  disp	%ctpr1, .L292
	}
	{
	  ct	%ctpr1 ? ~%pred0
	}
	{
	  sxt,0	0x2, %r5, %r6
	}
	{
	  shld,0	%r6, 0x2, %r6
	}
	{
	  addd,0	%r3, %r6, %r6
	}
	{
	  nop 2
	  ldw,0	%r6, 0x0, %r6
	}
	{
	  nop 3
	  fadds,0	%r6, %r1, %r6
	}
	{
	  fmuls,0	%r6, %r2, %r6
	}
	{
	  sxt,0	0x2, %r5, %r7
	}
	{
	  shld,1	%r7, 0x2, %r7
	}
	{
	  addd,0	%r3, %r7, %r7
	}
	{
	  stw,2	%r7, 0x0, %r6
	}
	{
	  adds,0	%r5, 0x1, %r5
	}
	{
	  nop 4
	  disp	%ctpr1, .L264
	}
	{
	  ct	%ctpr1
	}
.L292:
	{
	  nop 6
	  return	%ctpr3
	}
	{
	  ct	%ctpr3
	}
	{
	  nop 6
	}
	.cfi_endproc
	.size	triad, .- triad
	.global	runTests
	.type	runTests, #function
	.align	8
runTests:
	.cfi_startproc
	{
	  setwd	wsz = 0xf, nfx = 0x1, dbl = 0x0
	  setbn	rsz = 0x3, rbs = 0xb, rcur = 0x0
	  setbp	psz = 0x0
	  getsp,0	_f32s,_lts1 0xffffff40, %r2
	}
	{
	  ldw,0	0x0, [ _f64,_lts0 xcalcs +8 ], %r5
	}
	{
	  nop 1
	  ldd,0	0x0, [ _f64,_lts0 xcalcs ], %r6
	}
	{
	  sxt,0	0x2, %r5, %r7
	}
	{
	  nop 5
	  muld,0	%r0, %r7, %r7
	}
	{
	  shld,0	%r7, 0x2, %r7
	}
	{
	  addd,0	%r6, %r7, %r4
	}
	{
	  adds,0	0x0, 0x0, %r3
	}
.L310:
	{
	  nop 2
	  ldw,0	0x0, [ _f64,_lts0 repeats ], %r6
	}
	{
	  cmplsb,0	%r3, %r6, %pred0
	}
	{
	  nop 4
	  disp	%ctpr1, .L445
	}
	{
	  ct	%ctpr1 ? ~%pred0
	}
	{
	  nop 2
	  ldw,0	0x0, [ _f64,_lts0 part ], %r6
	}
	{
	  cmpesb,0	%r6, 0x0, %pred0
	}
	{
	  nop 4
	  disp	%ctpr1, .L342
	}
	{
	  ct	%ctpr1 ? ~%pred0
	}
	{
	  ldw,0	0x0, [ _f64,_lts0 aval ], %b[1]
	}
	{
	  ldw,0	0x0, [ _f64,_lts0 xval ], %b[2]
	}
	{
	  sxt,0	0x2, %r5, %b[0]
	}
	{
	  addd,0	0x0, %r4, %b[3]
	}
	{
	  nop 6
	  disp	%ctpr1, triad
	}
.LCS.1:
	{
	  call	%ctpr1, wbs = 0xb
	}
	{
	  nop 5
	}
	{
	  adds,0	0x2, 0x0, %r6
	}
	{
	  stw,2	0x0, [ _f64,_lts0 opwd ], %r6
	}
.L342:
	{
	  nop 2
	  ldw,0	0x0, [ _f64,_lts0 part ], %r6
	}
	{
	  cmpesb,0	%r6, 0x1, %pred0
	}
	{
	  nop 4
	  disp	%ctpr1, .L375
	}
	{
	  ct	%ctpr1 ? ~%pred0
	}
	{
	  ldw,0	0x0, [ _f64,_lts0 aval ], %b[1]
	}
	{
	  ldw,0	0x0, [ _f64,_lts0 bval ], %b[2]
	}
	{
	  ldw,0	0x0, [ _f64,_lts0 cval ], %b[3]
	}
	{
	  ldw,0	0x0, [ _f64,_lts0 dval ], %b[4]
	}
	{
	  ldw,0	0x0, [ _f64,_lts0 eval ], %b[5]
	}
	{
	  ldw,0	0x0, [ _f64,_lts0 fval ], %b[6]
	}
	{
	  sxt,0	0x2, %r5, %b[0]
	}
	{
	  addd,0	0x0, %r4, %b[7]
	}
	{
	  nop 6
	  disp	%ctpr1, triadplus
	}
	{
	  call	%ctpr1, wbs = 0xb
	}
	{
	  nop 5
	}
	{
	  adds,0	0x8, 0x0, %r6
	}
	{
	  stw,2	0x0, [ _f64,_lts0 opwd ], %r6
	}
.L375:
	{
	  nop 2
	  ldw,0	0x0, [ _f64,_lts0 part ], %r6
	}
	{
	  cmpesb,0	%r6, 0x2, %pred0
	}
	{
	  nop 4
	  disp	%ctpr1, .L440
	}
	{
	  ct	%ctpr1 ? ~%pred0
	}
	{
	  ldw,0	0x0, [ _f64,_lts0 aval ], %b[1]
	}
	{
	  ldw,0	0x0, [ _f64,_lts0 bval ], %b[2]
	}
	{
	  ldw,0	0x0, [ _f64,_lts0 cval ], %b[3]
	}
	{
	  ldw,0	0x0, [ _f64,_lts0 dval ], %b[4]
	}
	{
	  ldw,0	0x0, [ _f64,_lts0 eval ], %b[5]
	}
	{
	  ldw,0	0x0, [ _f64,_lts0 fval ], %b[6]
	}
	{
	  ldw,0	0x0, [ _f64,_lts0 gval ], %b[7]
	}
	{
	  ldw,0	0x0, [ _f64,_lts0 hval ], %r6
	}
	{
	  ldw,0	0x0, [ _f64,_lts0 jval ], %r7
	}
	{
	  ldw,0	0x0, [ _f64,_lts0 kval ], %r8
	}
	{
	  ldw,0	0x0, [ _f64,_lts0 lval ], %r9
	}
	{
	  ldw,0	0x0, [ _f64,_lts0 mval ], %r10
	}
	{
	  ldw,0	0x0, [ _f64,_lts0 oval ], %r11
	}
	{
	  ldw,0	0x0, [ _f64,_lts0 pval ], %r12
	}
	{
	  ldw,0	0x0, [ _f64,_lts0 qval ], %r13
	}
	{
	  ldw,0	0x0, [ _f64,_lts0 rval ], %r14
	}
	{
	  ldw,0	0x0, [ _f64,_lts0 sval ], %r15
	}
	{
	  ldw,0	0x0, [ _f64,_lts0 tval ], %r16
	}
	{
	  ldw,0	0x0, [ _f64,_lts0 uval ], %r17
	}
	{
	  ldw,0	0x0, [ _f64,_lts0 vval ], %r18
	}
	{
	  ldw,0	0x0, [ _f64,_lts0 wval ], %r19
	}
	{
	  ldw,0	0x0, [ _f64,_lts0 yval ], %r20
	}
	{
	  sxt,0	0x2, %r5, %b[0]
	}
	{
	  stw,2	%r2, _f16s,_lts0lo 0x40, %r6
	}
	{
	  stw,2	%r2, _f16s,_lts0lo 0x48, %r7
	}
	{
	  stw,2	%r2, _f16s,_lts0lo 0x50, %r8
	}
	{
	  stw,2	%r2, _f16s,_lts0lo 0x58, %r9
	}
	{
	  stw,2	%r2, _f16s,_lts0lo 0x60, %r10
	}
	{
	  stw,2	%r2, _f16s,_lts0lo 0x68, %r11
	}
	{
	  stw,2	%r2, _f16s,_lts0lo 0x70, %r12
	}
	{
	  stw,2	%r2, _f16s,_lts0lo 0x78, %r13
	}
	{
	  stw,2	%r2, _f16s,_lts0lo 0x80, %r14
	}
	{
	  stw,2	%r2, _f16s,_lts0lo 0x88, %r15
	}
	{
	  stw,2	%r2, _f16s,_lts0lo 0x90, %r16
	}
	{
	  stw,2	%r2, _f16s,_lts0lo 0x98, %r17
	}
	{
	  stw,2	%r2, _f16s,_lts0lo 0xa0, %r18
	}
	{
	  stw,2	%r2, _f16s,_lts0lo 0xa8, %r19
	}
	{
	  stw,2	%r2, _f16s,_lts0lo 0xb0, %r20
	}
	{
	  std,2	%r2, _f16s,_lts0lo 0xb8, %r4
	}
	{
	  nop 6
	  disp	%ctpr1, triadplus2
	}
	{
	  call	%ctpr1, wbs = 0xb
	}
	{
	  nop 5
	}
	{
	  adds,0	0x1f, 0x1, %r6
	}
	{
	  stw,2	0x0, [ _f64,_lts0 opwd ], %r6
	}
.L440:
	{
	  adds,0	%r3, 0x1, %r3
	}
	{
	  nop 4
	  disp	%ctpr1, .L310
	}
	{
	  ct	%ctpr1
	}
.L445:
	{
	  nop 6
	  return	%ctpr3
	}
	{
	  ct	%ctpr3
	}
	{
	  nop 6
	}
.LCS.2:
	.cfi_endproc
	.size	runTests, .- runTests
	.global	main
	.type	main, #function
	.align	8
main:
	.cfi_startproc
	{
	  setwd	wsz = 0xe, nfx = 0x1, dbl = 0x0
	  setbn	rsz = 0x3, rbs = 0xa, rcur = 0x0
	  setbp	psz = 0x0
	  getsp,0	_f32s,_lts1 0xfffffe50, %r3
	}
	{
	  addd,0	%r3, _f32s,_lts0 0x1b0, %r2
	}
	nop
	{
	  adds,0	0x0, 0x0, %r4
	}
	{
	  stw,2	%r2, _f16s,_lts0lo 0xfffc, %r4
	}
	{
	  adds,0	0x0, 0x0, %r4
	}
	{
	  stw,2	%r2, _f16s,_lts0lo 0xfff8, %r4
	}
	{
	  adds,0	0x0, 0x0, %r4
	}
	{
	  stw,2	%r2, _f16s,_lts0lo 0xfff4, %r4
	}
	{
	  adds,0	0x0, 0x0, %r8
	}
	{
	  adds,0	0x0, 0x0, %r14
	}
	{
	  adds,0	0x0, 0x0, %r16
	}
	{
	  adds,0	0x0, 0x0, %r7
	}
	{
	  adds,0	0x3, 0x0, %r6
	}
	{
	  adds,0	0x0, 0x0, %r11
	}
	{
	  addd,0	0x0, 0x0, %r5
	}
	{
	  addd,0	%r2, _f16s,_lts0lo 0xffc0, %b[0]
	}
	{
	  addd,0	0x0, [ _f64,_lts0 .LC.1 ], %b[1]
	}
	{
	  addd,0	0x0, [ _f64,_lts0 .LC.1 ], %r4
	}
	{
	  std,2	%r3, 0x8, %r4
	}
	{
	  nop 6
	  disp	%ctpr1, sprintf
	}
	{
	  call	%ctpr1, wbs = 0xa
	}
	{
	  nop 5
	}
	{
	  adds,0	0x1, 0x0, %r9
	}
.L477:
	{
	  cmplsb,0	%r9, 0x9, %pred0
	}
	{
	  nop 4
	  disp	%ctpr1, .L671
	}
	{
	  ct	%ctpr1 ? ~%pred0
	}
	{
	  cmplesb,0	%r0, %r9, %pred0
	}
	{
	  nop 4
	  disp	%ctpr1, .L666
	}
	{
	  ct	%ctpr1 ? %pred0
	}
	{
	  sxt,0	0x2, %r9, %r10
	}
	{
	  shld,0	%r10, 0x3, %r10
	}
	{
	  addd,0	%r1, %r10, %r10
	}
	{
	  nop 2
	  ldd,0	%r10, 0x0, %r10
	}
	{
	  nop 2
	  ldb,0	%r10, 0x0, %r10
	}
	{
	  getfs,0	%r10, _f16s,_lts0lo 0x1200, %r10
	}
	{
	  sxt,0	0x2, %r10, %b[0]
	}
	{
	  std,2	%r3, 0x0, %b[0]
	}
	{
	  nop 6
	  disp	%ctpr1, toupper
	}
.LCS.3:
	{
	  call	%ctpr1, wbs = 0xa
	}
	{
	  nop 5
	}
	{
	  adds,3,sm	0x0, %b[0], %r4
	}
	{
	  cmpesb,3	%r4, _f16s,_lts0lo 0x4d, %pred0
	}
	{
	  nop 4
	  disp	%ctpr1, .L512
	}
	{
	  ct	%ctpr1 ? %pred0
	}
	{
	  cmpesb,0	%r4, _f16s,_lts0lo 0x52, %pred0
	}
	{
	  nop 4
	  disp	%ctpr1, .L559
	}
	{
	  ct	%ctpr1 ? %pred0
	}
	{
	  cmpesb,0	%r4, _f16s,_lts0lo 0x54, %pred0
	}
	{
	  nop 4
	  disp	%ctpr1, .L613
	}
	{
	  ct	%ctpr1 ? %pred0
	}
	{
	  nop 4
	  disp	%ctpr1, .L666
	}
	{
	  ct	%ctpr1
	}
.L613:
	{
	  adds,0	%r9, 0x1, %r4
	}
	{
	  cmplesb,0	%r0, %r4, %pred0
	}
	{
	  nop 4
	  disp	%ctpr1, .L666
	}
	{
	  ct	%ctpr1 ? %pred0
	}
	{
	  adds,0	%r9, 0x1, %r4
	}
	{
	  sxt,0	0x2, %r4, %r4
	}
	{
	  shld,0	%r4, 0x3, %r4
	}
	{
	  addd,0	%r1, %r4, %r4
	}
	{
	  ldd,0	%r4, 0x0, %b[0]
	}
	{
	  addd,0	%r2, _f16s,_lts0lo 0xfff8, %b[2]
	}
	{
	  addd,0	0x0, [ _f64,_lts0 .LC.2 ], %b[1]
	}
	{
	  addd,0	0x0, [ _f64,_lts0 .LC.2 ], %r4
	}
	{
	  std,2	%r3, 0x8, %r4
	}
	{
	  std,2	0x10, %r3, %b[2]
	}
	{
	  nop 6
	  disp	%ctpr1, __isoc99_sscanf
	}
	{
	  call	%ctpr1, wbs = 0xa
	}
	{
	  nop 5
	}
	{
	  nop 2
	  ldw,0	%r2, _f16s,_lts0lo 0xfff8, %r4
	}
	{
	  cmplesb,0	%r4, 0x0, %pred0
	}
	{
	  nop 4
	  disp	%ctpr1, .L654
	}
	{
	  ct	%ctpr1 ? %pred0
	}
	{
	  nop 3
	  ldw,0	%r2, _f16s,_lts0lo 0xfff8, %r4
	}
	{
	  stw,2	0x0, [ _f64,_lts0 threads ], %r4
	}
.L654:
	{
	  nop 2
	  ldw,0	0x0, [ _f64,_lts0 threads ], %r4
	}
	{
	  cmplesb,0	%r4, _f16s,_lts0lo 0x40, %pred0
	}
	{
	  nop 4
	  disp	%ctpr1, .L666
	}
	{
	  ct	%ctpr1 ? %pred0
	}
	{
	  scls,0	0x1, 0x6, %r4
	}
	{
	  stw,2	0x0, [ _f64,_lts0 threads ], %r4
	}
	{
	  nop 4
	  disp	%ctpr1, .L666
	}
	{
	  ct	%ctpr1
	}
.L559:
	{
	  adds,0	%r9, 0x1, %r4
	}
	{
	  cmplesb,0	%r0, %r4, %pred0
	}
	{
	  nop 4
	  disp	%ctpr1, .L666
	}
	{
	  ct	%ctpr1 ? %pred0
	}
	{
	  adds,0	%r9, 0x1, %r4
	}
	{
	  sxt,0	0x2, %r4, %r4
	}
	{
	  shld,0	%r4, 0x3, %r4
	}
	{
	  addd,0	%r1, %r4, %r4
	}
	{
	  ldd,0	%r4, 0x0, %b[0]
	}
	{
	  addd,0	%r2, _f16s,_lts0lo 0xfffc, %b[2]
	}
	{
	  addd,0	0x0, [ _f64,_lts0 .LC.2 ], %b[1]
	}
	{
	  addd,0	0x0, [ _f64,_lts0 .LC.2 ], %r4
	}
	{
	  std,2	%r3, 0x8, %r4
	}
	{
	  std,2	0x10, %r3, %b[2]
	}
	{
	  nop 6
	  disp	%ctpr1, __isoc99_sscanf
	}
	{
	  call	%ctpr1, wbs = 0xa
	}
	{
	  nop 5
	}
	{
	  nop 2
	  ldw,0	%r2, _f16s,_lts0lo 0xfffc, %r4
	}
	{
	  cmplesb,0	%r4, 0x0, %pred0
	}
	{
	  nop 4
	  disp	%ctpr1, .L600
	}
	{
	  ct	%ctpr1 ? %pred0
	}
	{
	  nop 3
	  ldw,0	%r2, _f16s,_lts0lo 0xfffc, %r4
	}
	{
	  stw,2	0x0, [ _f64,_lts0 repeats ], %r4
	}
.L600:
	{
	  nop 2
	  ldw,0	0x0, [ _f64,_lts0 repeats ], %r4
	}
	{
	  cmplsb,0	%r4, _f16s,_lts0lo 0x64, %pred0
	}
	{
	  nop 4
	  disp	%ctpr1, .L666
	}
	{
	  ct	%ctpr1 ? ~%pred0
	}
	{
	  scls,0	0x19, 0x2, %r4
	}
	{
	  stw,2	0x0, [ _f64,_lts0 repeats ], %r4
	}
	{
	  nop 4
	  disp	%ctpr1, .L666
	}
	{
	  ct	%ctpr1
	}
.L512:
	{
	  adds,0	%r9, 0x1, %r4
	}
	{
	  cmplesb,0	%r0, %r4, %pred0
	}
	{
	  nop 4
	  disp	%ctpr1, .L666
	}
	{
	  ct	%ctpr1 ? %pred0
	}
	{
	  adds,0	%r9, 0x1, %r4
	}
	{
	  sxt,0	0x2, %r4, %r4
	}
	{
	  shld,0	%r4, 0x3, %r4
	}
	{
	  addd,0	%r1, %r4, %r4
	}
	{
	  ldd,0	%r4, 0x0, %b[0]
	}
	{
	  addd,0	%r2, _f16s,_lts0lo 0xfff4, %b[2]
	}
	{
	  addd,0	0x0, [ _f64,_lts0 .LC.2 ], %b[1]
	}
	{
	  addd,0	0x0, [ _f64,_lts0 .LC.2 ], %r4
	}
	{
	  std,2	%r3, 0x8, %r4
	}
	{
	  std,2	0x10, %r3, %b[2]
	}
	{
	  nop 6
	  disp	%ctpr1, __isoc99_sscanf
	}
	{
	  call	%ctpr1, wbs = 0xa
	}
	{
	  nop 5
	}
	{
	  nop 2
	  ldw,0	%r2, _f16s,_lts0lo 0xfff4, %r4
	}
	{
	  cmplesb,0	%r4, 0x0, %pred0
	}
	{
	  nop 4
	  disp	%ctpr1, .L666
	}
	{
	  ct	%ctpr1 ? %pred0
	}
	{
	  ldw,0	%r2, _f16s,_lts0lo 0xfff4, %r16
	}
	{
	  adds,0	0x2, 0x0, %r7
	}
	{
	  adds,0	0x1, 0x0, %r6
	}
	{
	  adds,0	0x1, 0x0, %r11
	}
.L666:
	{
	  adds,0	%r9, 0x2, %r9
	}
	{
	  nop 4
	  disp	%ctpr1, .L477
	}
	{
	  ct	%ctpr1
	}
.L671:
	{
	  nop 6
	  disp	%ctpr1, getDetails
	}
	{
	  call	%ctpr1, wbs = 0xa
	}
	{
	  nop 5
	}
	{
	  nop 2
	  ldw,0	%r2, _f16s,_lts0lo 0xfff8, %r0
	}
	{
	  cmpesb,0	%r0, 0x0, %pred0
	}
	{
	  nop 4
	  disp	%ctpr1, .L687
	}
	{
	  ct	%ctpr1 ? ~%pred0
	}
	{
	  nop 3
	  ldw,0	0x0, [ _f64,_lts0 CPUavail ], %r0
	}
	{
	  stw,2	0x0, [ _f64,_lts0 threads ], %r0
	}
.L687:
	{
	  nop 2
	  ldw,0	%r2, _f16s,_lts0lo 0xfffc, %r0
	}
	{
	  cmpesb,0	%r0, 0x0, %pred0
	}
	{
	  nop 4
	  disp	%ctpr1, .L699
	}
	{
	  ct	%ctpr1 ? ~%pred0
	}
	{
	  ldw,0	0x0, [ _f64,_lts0 repeats ], %r0
	}
	{
	  nop 2
	  ldw,0	0x0, [ _f64,_lts0 CPUavail ], %r1
	}
	{
	  nop 3
	  muls,0	%r0, %r1, %r0
	}
	{
	  stw,2	0x0, [ _f64,_lts0 repeats ], %r0
	}
.L699:
	{
	  ldw,0	0x0, [ _f64,_lts0 words ], %r1
	}
	{
	  ldw,0	0x0, [ _f64,_lts0 repeats ], %r4
	}
	{
	  addd,0	0x0, [ _f64,_lts0 .LC.3 ], %b[0]
	}
	{
	  addd,0	0x0, [ _f64,_lts0 .LC.3 ], %r0
	}
	{
	  std,2	%r3, 0x0, %r0
	}
	{
	  nop 6
	  disp	%ctpr1, printf
	}
	{
	  call	%ctpr1, wbs = 0xa
	}
	{
	  nop 5
	}
	{
	  nop 6
	  disp	%ctpr1, local_time
	}
	{
	  call	%ctpr1, wbs = 0xa
	}
	{
	  nop 5
	}
	{
	  addd,0	0x0, [ _f64,_lts0 .LC.4 ], %b[0]
	}
	{
	  addd,0	0x0, [ _f64,_lts0 .LC.5 ], %b[1]
	}
	{
	  nop 6
	  disp	%ctpr1, fopen
	}
	{
	  call	%ctpr1, wbs = 0xa
	}
	{
	  nop 5
	}
	{
	  std,5,sm	0x0, [ _f64,_lts0 outfile ], %b[0]
	}
	{
	  nop 2
	  ldd,0	0x0, [ _f64,_lts0 outfile ], %r0
	}
	{
	  cmpedb,0	%r0, 0x0, %pred0
	}
	{
	  nop 4
	  disp	%ctpr1, .L767
	}
	{
	  ct	%ctpr1 ? ~%pred0
	}
	{
	  addd,0	0x0, [ _f64,_lts0 .LC.6 ], %b[0]
	}
	{
	  addd,0	0x0, [ _f64,_lts0 .LC.6 ], %r0
	}
	{
	  std,2	%r3, 0x0, %r0
	}
	{
	  nop 6
	  disp	%ctpr1, printf
	}
	{
	  call	%ctpr1, wbs = 0xa
	}
	{
	  nop 5
	}
	{
	  addd,0	0x0, [ _f64,_lts0 .LC.7 ], %b[0]
	}
	{
	  addd,0	0x0, [ _f64,_lts0 .LC.7 ], %r0
	}
	{
	  std,2	%r3, 0x0, %r0
	}
	{
	  nop 6
	  disp	%ctpr1, printf
	}
	{
	  call	%ctpr1, wbs = 0xa
	}
	{
	  nop 5
	}
	{
	  nop 6
	  disp	%ctpr1, getchar
	}
	{
	  call	%ctpr1, wbs = 0xa
	}
	{
	  nop 5
	}
	{
	  addd,0	0x0, 0x0, %b[0]
	}
	{
	  nop 6
	  disp	%ctpr1, exit
	}
	{
	  call	%ctpr1, wbs = 0xa
	}
	{
	  nop 6
	}
.L767:
	{
	  adds,0	0x0, 0x0, %r0
	}
.L770:
	{
	  cmplsb,0	%r0, 0xa, %pred0
	}
	{
	  nop 4
	  disp	%ctpr1, .L796
	}
	{
	  ct	%ctpr1 ? ~%pred0
	}
	{
	  sxt,0	0x2, %r0, %r9
	}
	{
	  nop 5
	  muld,0	%r9, _f16s,_lts0lo 0xc8, %r9
	}
	{
	  addd,0	%r9, [ _f64,_lts0 configdata ], %b[1]
	}
	{
	  addd,0	0x0, [ _f64,_lts0 .LC.8 ], %b[0]
	}
	{
	  addd,0	0x0, [ _f64,_lts0 .LC.8 ], %r9
	}
	{
	  std,2	%r3, 0x0, %r9
	}
	{
	  std,2	%r3, 0x8, %b[1]
	}
	{
	  nop 6
	  disp	%ctpr1, printf
	}
	{
	  call	%ctpr1, wbs = 0xa
	}
	{
	  nop 5
	}
	{
	  adds,0	%r0, 0x1, %r0
	}
	{
	  nop 4
	  disp	%ctpr1, .L770
	}
	{
	  ct	%ctpr1
	}
.L796:
	{
	  addd,0	0x0, [ _f64,_lts0 .LC.9 ], %b[0]
	}
	{
	  addd,0	0x0, [ _f64,_lts0 .LC.9 ], %r9
	}
	{
	  std,2	%r3, 0x0, %r9
	}
	{
	  nop 6
	  disp	%ctpr1, printf
	}
	{
	  call	%ctpr1, wbs = 0xa
	}
	{
	  nop 5
	}
	{
	  ldd,0	0x0, [ _f64,_lts0 outfile ], %b[0]
	}
	{
	  addd,0	0x0, [ _f64,_lts0 .LC.9 ], %b[1]
	}
	{
	  addd,0	0x0, [ _f64,_lts0 .LC.9 ], %r9
	}
	{
	  std,2	%r3, 0x8, %r9
	}
	{
	  nop 6
	  disp	%ctpr1, fprintf
	}
	{
	  call	%ctpr1, wbs = 0xa
	}
	{
	  nop 5
	}
	{
	  ldd,0	0x0, [ _f64,_lts0 outfile ], %b[0]
	}
	{
	  addd,0	0x0, [ _f64,_lts0 .LC.10 ], %b[1]
	}
	{
	  addd,0	0x0, [ _f64,_lts0 .LC.10 ], %r9
	}
	{
	  std,2	%r3, 0x8, %r9
	}
	{
	  nop 6
	  disp	%ctpr1, fprintf
	}
	{
	  call	%ctpr1, wbs = 0xa
	}
	{
	  nop 5
	}
	{
	  adds,0	0x1, 0x0, %r0
	}
.L830:
	{
	  cmplsb,0	%r0, 0xa, %pred0
	}
	{
	  nop 4
	  disp	%ctpr1, .L858
	}
	{
	  ct	%ctpr1 ? ~%pred0
	}
	{
	  ldd,0	0x0, [ _f64,_lts0 outfile ], %b[0]
	}
	{
	  sxt,0	0x2, %r0, %r9
	}
	{
	  nop 5
	  muld,0	%r9, _f16s,_lts0lo 0xc8, %r9
	}
	{
	  addd,0	%r9, [ _f64,_lts0 configdata ], %b[2]
	}
	{
	  addd,0	0x0, [ _f64,_lts0 .LC.11 ], %b[1]
	}
	{
	  addd,0	0x0, [ _f64,_lts0 .LC.11 ], %r9
	}
	{
	  std,2	%r3, 0x8, %r9
	}
	{
	  std,2	0x10, %r3, %b[2]
	}
	{
	  nop 6
	  disp	%ctpr1, fprintf
	}
	{
	  call	%ctpr1, wbs = 0xa
	}
	{
	  nop 5
	}
	{
	  adds,0	%r0, 0x1, %r0
	}
	{
	  nop 4
	  disp	%ctpr1, .L830
	}
	{
	  ct	%ctpr1
	}
.L858:
	{
	  cmplesb,0	%r16, 0x0, %pred0
	}
	{
	  nop 4
	  disp	%ctpr1, .L892
	}
	{
	  ct	%ctpr1 ? %pred0
	}
	{
	  addd,0	0x0, [ _f64,_lts0 .LC.12 ], %b[0]
	}
	{
	  addd,0	0x0, [ _f64,_lts0 .LC.12 ], %r0
	}
	{
	  std,2	%r3, 0x0, %r0
	}
	{
	  sxt,0	0x2, %r16, %b[1]
	}
	{
	  std,2	%r3, 0x8, %b[1]
	}
	{
	  nop 6
	  disp	%ctpr1, printf
	}
	{
	  call	%ctpr1, wbs = 0xa
	}
	{
	  nop 5
	}
	{
	  ldd,0	0x0, [ _f64,_lts0 outfile ], %b[0]
	}
	{
	  addd,0	0x0, [ _f64,_lts0 .LC.12 ], %b[1]
	}
	{
	  addd,0	0x0, [ _f64,_lts0 .LC.12 ], %r0
	}
	{
	  std,2	%r3, 0x8, %r0
	}
	{
	  sxt,0	0x2, %r16, %b[2]
	}
	{
	  std,2	0x10, %r3, %b[2]
	}
	{
	  nop 6
	  disp	%ctpr1, fprintf
	}
	{
	  call	%ctpr1, wbs = 0xa
	}
	{
	  nop 6
	}
.L892:
	{
	  ldd,0	0x0, [ _f64,_lts0 outfile ], %b[0]
	}
	{
	  ldw,0	0x0, [ _f64,_lts0 CPUavail ], %r0
	}
	{
	  addd,0	0x0, [ _f64,_lts0 .LC.13 ], %b[1]
	}
	{
	  addd,0	0x0, [ _f64,_lts0 .LC.13 ], %r9
	}
	{
	  std,2	%r3, 0x8, %r9
	}
	{
	  sxt,0	0x2, %r0, %b[2]
	}
	{
	  std,2	0x10, %r3, %b[2]
	}
	{
	  nop 6
	  disp	%ctpr1, fprintf
	}
	{
	  call	%ctpr1, wbs = 0xa
	}
	{
	  nop 5
	}
	{
	  ldd,0	0x0, [ _f64,_lts0 outfile ], %b[0]
	}
	{
	  addd,0	0x0, [ _f64,_lts0 .LC.10 ], %b[1]
	}
	{
	  addd,0	0x0, [ _f64,_lts0 .LC.10 ], %r0
	}
	{
	  std,2	%r3, 0x8, %r0
	}
	{
	  nop 6
	  disp	%ctpr1, fprintf
	}
	{
	  call	%ctpr1, wbs = 0xa
	}
	{
	  nop 5
	}
	{
	  ldd,0	0x0, [ _f64,_lts0 outfile ], %b[0]
	}
	{
	  ldw,0	0x0, [ _f64,_lts0 threads ], %r0
	}
	{
	  addd,0	0x0, [ _f64,_lts0 .LC.14 ], %b[1]
	}
	{
	  addd,0	0x0, [ _f64,_lts0 .LC.14 ], %r9
	}
	{
	  std,2	%r3, 0x8, %r9
	}
	{
	  addd,0	0x0, [ _f64,_lts0 heading ], %b[2]
	}
	{
	  addd,0	0x0, [ _f64,_lts0 heading ], %r9
	}
	{
	  std,2	0x10, %r3, %r9
	}
	{
	  sxt,0	0x2, %r0, %b[3]
	}
	{
	  std,2	0x18, %r3, %b[3]
	}
	{
	  addd,0	0x0, [ _f64,_lts0 timeday ], %b[4]
	}
	{
	  addd,0	0x0, [ _f64,_lts0 timeday ], %r0
	}
	{
	  std,2	%r3, _f16s,_lts0lo 0x20, %r0
	}
	{
	  nop 6
	  disp	%ctpr1, fprintf
	}
	{
	  call	%ctpr1, wbs = 0xa
	}
	{
	  nop 5
	}
	{
	  addd,0	0x0, [ _f64,_lts0 .LC.9 ], %b[0]
	}
	{
	  addd,0	0x0, [ _f64,_lts0 .LC.9 ], %r0
	}
	{
	  std,2	%r3, 0x0, %r0
	}
	{
	  nop 6
	  disp	%ctpr1, printf
	}
	{
	  call	%ctpr1, wbs = 0xa
	}
	{
	  nop 5
	}
	{
	  ldd,0	0x0, [ _f64,_lts0 outfile ], %b[0]
	}
	{
	  addd,0	0x0, [ _f64,_lts0 .LC.15 ], %b[1]
	}
	{
	  addd,0	0x0, [ _f64,_lts0 .LC.15 ], %r0
	}
	{
	  std,2	%r3, 0x8, %r0
	}
	{
	  nop 6
	  disp	%ctpr1, fprintf
	}
	{
	  call	%ctpr1, wbs = 0xa
	}
	{
	  nop 5
	}
	{
	  ldd,0	0x0, [ _f64,_lts0 outfile ], %b[0]
	}
	{
	  addd,0	0x0, [ _f64,_lts0 .LC.16 ], %b[1]
	}
	{
	  addd,0	0x0, [ _f64,_lts0 .LC.16 ], %r0
	}
	{
	  std,2	%r3, 0x8, %r0
	}
	{
	  nop 6
	  disp	%ctpr1, fprintf
	}
	{
	  call	%ctpr1, wbs = 0xa
	}
	{
	  nop 5
	}
	{
	  addd,0	0x0, [ _f64,_lts0 .LC.10 ], %b[0]
	}
	{
	  addd,0	0x0, [ _f64,_lts0 .LC.10 ], %r0
	}
	{
	  std,2	%r3, 0x0, %r0
	}
	{
	  nop 6
	  disp	%ctpr1, printf
	}
	{
	  call	%ctpr1, wbs = 0xa
	}
	{
	  nop 5
	}
	{
	  ldw,0	0x0, [ _f64,_lts0 threads ], %r0
	}
	{
	  addd,0	0x0, [ _f64,_lts0 .LC.14 ], %b[0]
	}
	{
	  addd,0	0x0, [ _f64,_lts0 .LC.14 ], %r9
	}
	{
	  std,2	%r3, 0x0, %r9
	}
	{
	  addd,0	0x0, [ _f64,_lts0 heading ], %b[1]
	}
	{
	  addd,0	0x0, [ _f64,_lts0 heading ], %r9
	}
	{
	  std,2	%r3, 0x8, %r9
	}
	{
	  sxt,0	0x2, %r0, %b[2]
	}
	{
	  std,2	0x10, %r3, %b[2]
	}
	{
	  addd,0	0x0, [ _f64,_lts0 timeday ], %b[3]
	}
	{
	  addd,0	0x0, [ _f64,_lts0 timeday ], %r0
	}
	{
	  std,2	0x18, %r3, %r0
	}
	{
	  nop 6
	  disp	%ctpr1, printf
	}
	{
	  call	%ctpr1, wbs = 0xa
	}
	{
	  nop 5
	}
	{
	  addd,0	0x0, [ _f64,_lts0 .LC.15 ], %b[0]
	}
	{
	  addd,0	0x0, [ _f64,_lts0 .LC.15 ], %r0
	}
	{
	  std,2	%r3, 0x0, %r0
	}
	{
	  nop 6
	  disp	%ctpr1, printf
	}
	{
	  call	%ctpr1, wbs = 0xa
	}
	{
	  nop 5
	}
	{
	  addd,0	0x0, [ _f64,_lts0 .LC.16 ], %b[0]
	}
	{
	  addd,0	0x0, [ _f64,_lts0 .LC.16 ], %r0
	}
	{
	  std,2	%r3, 0x0, %r0
	}
	{
	  nop 6
	  disp	%ctpr1, printf
	}
	{
	  call	%ctpr1, wbs = 0xa
	}
	{
	  nop 5
	}
	{
	  ldd,0	0x0, [ _f64,_lts0 outfile ], %b[0]
	}
	{
	  nop 6
	  disp	%ctpr1, fflush
	}
	{
	  call	%ctpr1, wbs = 0xa
	}
	{
	  nop 5
	}
	{
	  adds,0	0x0, 0x0, %r12
	}
.L1027:
	{
	  nop 5
	  muls,0	%r16, _f16s,_lts0lo 0x2710, %r0
	}
	{
	  adds,0	%r0, 0x1, %r0
	}
	{
	  cmplsb,0	%r12, %r0, %pred0
	}
	{
	  nop 4
	  disp	%ctpr1, .L1659
	}
	{
	  ct	%ctpr1 ? ~%pred0
	}
	{
	  stw,2	0x0, [ _f64,_lts0 part ], %r7
	}
.L1040:
	{
	  nop 2
	  ldw,0	0x0, [ _f64,_lts0 part ], %r0
	}
	{
	  cmplsb,0	%r0, 0x3, %pred0
	}
	{
	  nop 4
	  disp	%ctpr1, .L1654
	}
	{
	  ct	%ctpr1 ? ~%pred0
	}
	{
	  stw,2	0x0, [ _f64,_lts0 words ], %r1
	}
	{
	  stw,2	0x0, [ _f64,_lts0 repeats ], %r4
	}
	{
	  adds,0	0x0, 0x0, %r10
	}
.L1054:
	{
	  cmplsb,0	%r10, %r6, %pred0
	}
	{
	  nop 4
	  disp	%ctpr1, .L1623
	}
	{
	  ct	%ctpr1 ? ~%pred0
	}
	{
	  nop 2
	  ldw,0	0x0, [ _f64,_lts0 words ], %r0
	}
	{
	  sxt,0	0x2, %r0, %r0
	}
	{
	  shld,0	%r0, 0x2, %b[0]
	}
	{
	  addd,0	0x10, 0x0, %b[1]
	}
	{
	  nop 6
	  disp	%ctpr1, _mm_malloc
	}
	{
	  call	%ctpr1, wbs = 0xa
	}
	{
	  nop 5
	}
	{
	  addd,3,sm	0x0, %b[0], %r15
	}
	{
	  cmpedb,3	%r15, 0x0, %pred0
	}
	{
	  nop 4
	  disp	%ctpr1, .L1117
	}
	{
	  ct	%ctpr1 ? ~%pred0
	}
	{
	  addd,0	0x0, [ _f64,_lts0 .LC.17 ], %b[0]
	}
	{
	  addd,0	0x0, [ _f64,_lts0 .LC.17 ], %r0
	}
	{
	  std,2	%r3, 0x0, %r0
	}
	{
	  nop 6
	  disp	%ctpr1, printf
	}
	{
	  call	%ctpr1, wbs = 0xa
	}
	{
	  nop 5
	}
	{
	  addd,0	0x0, [ _f64,_lts0 .LC.7 ], %b[0]
	}
	{
	  addd,0	0x0, [ _f64,_lts0 .LC.7 ], %r0
	}
	{
	  std,2	%r3, 0x0, %r0
	}
	{
	  nop 6
	  disp	%ctpr1, printf
	}
	{
	  call	%ctpr1, wbs = 0xa
	}
	{
	  nop 5
	}
	{
	  nop 6
	  disp	%ctpr1, getchar
	}
	{
	  call	%ctpr1, wbs = 0xa
	}
	{
	  nop 5
	}
	{
	  addd,0	0x1, 0x0, %b[0]
	}
	{
	  nop 6
	  disp	%ctpr1, exit
	}
	{
	  call	%ctpr1, wbs = 0xa
	}
	{
	  nop 6
	}
.L1117:
	{
	  std,2,sm	0x0, [ _f64,_lts0 xcalcs ], %r15
	}
	{
	  ldw,0	0x0, [ _f64,_lts0 words ], %r0
	}
	{
	  nop 3
	  ldw,0	0x0, [ _f64,_lts0 threads ], %r9
	}
	{
	  nop 7
	  sdivs,5	%r0, %r9, %r0
	}
	{
	  nop 2
	}
	{
	  stw,5	0x0, [ _f64,_lts0 xcalcs +8 ], %r0
	}
	{
	  cmpesb,0	%r11, 0x1, %pred0
	}
	{
	  nop 4
	  disp	%ctpr1, .L1234
	}
	{
	  ct	%ctpr1 ? ~%pred0
	}
	{
	  adds,0	0x0, 0x0, %r0
	}
.L1132:
	{
	  nop 2
	  ldw,0	0x0, [ _f64,_lts0 words ], %r4
	}
	{
	  cmplsb,0	%r0, %r4, %pred0
	}
	{
	  nop 4
	  disp	%ctpr1, .L1151
	}
	{
	  ct	%ctpr1 ? ~%pred0
	}
	{
	  adds,0	0x0, _f32s,_lts0 0x3f7fffef, %r4
	}
	{
	  sxt,0	0x2, %r0, %r9
	}
	{
	  shld,0	%r9, 0x2, %r9
	}
	{
	  addd,0	%r15, %r9, %r9
	}
	{
	  stw,2	%r9, 0x0, %r4
	}
	{
	  adds,0	%r0, 0x1, %r0
	}
	{
	  nop 4
	  disp	%ctpr1, .L1132
	}
	{
	  ct	%ctpr1
	}
.L1151:
	{
	  nop 6
	  disp	%ctpr1, start_time
	}
	{
	  call	%ctpr1, wbs = 0xa
	}
	{
	  nop 5
	}
	{
	  addd,0	0x0, 0x0, %r0
	}
.L1160:
	{
	  nop 2
	  ldw,0	0x0, [ _f64,_lts0 threads ], %r4
	}
	{
	  sxt,0	0x2, %r4, %r4
	}
	{
	  cmpldb,0	%r0, %r4, %pred0
	}
	{
	  nop 4
	  disp	%ctpr1, .L1188
	}
	{
	  ct	%ctpr1 ? ~%pred0
	}
	{
	  shld,0	%r0, 0x3, %r4
	}
	{
	  addd,0	%r4, [ _f64,_lts0 tid ], %b[0]
	}
	{
	  ldd,0	0x0, [ _f64,_lts0 attrt ], %b[1]
	}
	{
	  addd,0	0x0, [ _f64,_lts0 runTests ], %b[2]
	}
	{
	  addd,0	0x0, %r0, %b[3]
	}
	{
	  nop 6
	  disp	%ctpr1, pthread_create
	}
	{
	  call	%ctpr1, wbs = 0xa
	}
	{
	  nop 5
	}
	{
	  addd,0	%r0, 0x1, %r0
	}
	{
	  nop 4
	  disp	%ctpr1, .L1160
	}
	{
	  ct	%ctpr1
	}
.L1188:
	{
	  addd,0	0x0, 0x0, %r0
	}
.L1191:
	{
	  nop 2
	  ldw,0	0x0, [ _f64,_lts0 threads ], %r4
	}
	{
	  sxt,0	0x2, %r4, %r4
	}
	{
	  cmpldb,0	%r0, %r4, %pred0
	}
	{
	  nop 4
	  disp	%ctpr1, .L1216
	}
	{
	  ct	%ctpr1 ? ~%pred0
	}
	{
	  shld,0	%r0, 0x3, %r4
	}
	{
	  addd,0	%r4, [ _f64,_lts0 tid ], %r4
	}
	{
	  ldd,0	%r4, 0x0, %b[0]
	}
	{
	  addd,0	0x0, 0x0, %b[1]
	}
	{
	  nop 6
	  disp	%ctpr1, pthread_join
	}
	{
	  call	%ctpr1, wbs = 0xa
	}
	{
	  nop 5
	}
	{
	  addd,0	%r0, 0x1, %r0
	}
	{
	  nop 4
	  disp	%ctpr1, .L1191
	}
	{
	  ct	%ctpr1
	}
.L1216:
	{
	  nop 6
	  disp	%ctpr1, end_time
	}
	{
	  call	%ctpr1, wbs = 0xa
	}
	{
	  nop 5
	}
	{
	  nop 2
	  ldw,0	0x0, [ _f64,_lts0 repeats ], %r0
	}
	{
	  nop 3
	  istofd,0	%r0, %r0
	}
	{
	  fmuld,0	%r0, _f64,_lts0 0x402e000000000000, %r0
	}
	{
	  nop 4
	  ldd,0	0x0, [ _f64,_lts0 secs ], %r9
	}
	{
	  nop 7
	  fdivd,5	%r0, %r9, %r0
	}
	{
	  nop 5
	}
	{
	  nop 3
	  fdtoistr,3	%r0, %r0
	}
	{
	  stw,5	0x0, [ _f64,_lts0 repeats ], %r0
	}
	{
	  ldw,0	0x0, [ _f64,_lts0 repeats ], %r4
	}
	{
	  adds,0	0x0, 0x0, %r11
	}
.L1234:
	{
	  adds,0	0x0, 0x0, %r0
	}
.L1237:
	{
	  nop 2
	  ldw,0	0x0, [ _f64,_lts0 words ], %r9
	}
	{
	  cmplsb,0	%r0, %r9, %pred0
	}
	{
	  nop 4
	  disp	%ctpr1, .L1256
	}
	{
	  ct	%ctpr1 ? ~%pred0
	}
	{
	  adds,0	0x0, _f32s,_lts0 0x3f7fffef, %r9
	}
	{
	  sxt,0	0x2, %r0, %r13
	}
	{
	  shld,0	%r13, 0x2, %r13
	}
	{
	  addd,0	%r15, %r13, %r13
	}
	{
	  stw,2	%r13, 0x0, %r9
	}
	{
	  adds,0	%r0, 0x1, %r0
	}
	{
	  nop 4
	  disp	%ctpr1, .L1237
	}
	{
	  ct	%ctpr1
	}
.L1256:
	{
	  nop 6
	  disp	%ctpr1, start_time
	}
	{
	  call	%ctpr1, wbs = 0xa
	}
	{
	  nop 5
	}
	{
	  addd,0	0x0, 0x0, %r0
	}
.L1265:
	{
	  nop 2
	  ldw,0	0x0, [ _f64,_lts0 threads ], %r9
	}
	{
	  sxt,0	0x2, %r9, %r9
	}
	{
	  cmpldb,0	%r0, %r9, %pred0
	}
	{
	  nop 4
	  disp	%ctpr1, .L1293
	}
	{
	  ct	%ctpr1 ? ~%pred0
	}
	{
	  shld,0	%r0, 0x3, %r9
	}
	{
	  addd,0	%r9, [ _f64,_lts0 tid ], %b[0]
	}
	{
	  ldd,0	0x0, [ _f64,_lts0 attrt ], %b[1]
	}
	{
	  addd,0	0x0, [ _f64,_lts0 runTests ], %b[2]
	}
	{
	  addd,0	0x0, %r0, %b[3]
	}
	{
	  nop 6
	  disp	%ctpr1, pthread_create
	}
	{
	  call	%ctpr1, wbs = 0xa
	}
	{
	  nop 5
	}
	{
	  addd,0	%r0, 0x1, %r0
	}
	{
	  nop 4
	  disp	%ctpr1, .L1265
	}
	{
	  ct	%ctpr1
	}
.L1293:
	{
	  addd,0	0x0, 0x0, %r0
	}
.L1296:
	{
	  nop 2
	  ldw,0	0x0, [ _f64,_lts0 threads ], %r9
	}
	{
	  sxt,0	0x2, %r9, %r9
	}
	{
	  cmpldb,0	%r0, %r9, %pred0
	}
	{
	  nop 4
	  disp	%ctpr1, .L1321
	}
	{
	  ct	%ctpr1 ? ~%pred0
	}
	{
	  shld,0	%r0, 0x3, %r9
	}
	{
	  addd,0	%r9, [ _f64,_lts0 tid ], %r9
	}
	{
	  ldd,0	%r9, 0x0, %b[0]
	}
	{
	  addd,0	0x0, 0x0, %b[1]
	}
	{
	  nop 6
	  disp	%ctpr1, pthread_join
	}
	{
	  call	%ctpr1, wbs = 0xa
	}
	{
	  nop 5
	}
	{
	  addd,0	%r0, 0x1, %r0
	}
	{
	  nop 4
	  disp	%ctpr1, .L1296
	}
	{
	  ct	%ctpr1
	}
.L1321:
	{
	  nop 6
	  disp	%ctpr1, end_time
	}
	{
	  call	%ctpr1, wbs = 0xa
	}
	{
	  nop 5
	}
	{
	  nop 2
	  ldw,0	0x0, [ _f64,_lts0 words ], %r9
	}
	{
	  istofs,0	%r9, %r9
	}
	{
	  nop 2
	  ldw,0	0x0, [ _f64,_lts0 opwd ], %r13
	}
	{
	  nop 3
	  istofs,0	%r13, %r13
	}
	{
	  fmuls,0	%r9, %r13, %r9
	}
	{
	  nop 2
	  ldw,0	0x0, [ _f64,_lts0 repeats ], %r13
	}
	{
	  nop 3
	  istofs,0	%r13, %r13
	}
	{
	  nop 5
	  fmuls,0	%r13, %r9, %r9
	}
	{
	  fdivs,5	%r9, _f32s,_lts0 0x49742400, %r9
	}
	{
	  nop 2
	  ldd,0	0x0, [ _f64,_lts0 secs ], %r13
	}
	{
	  nop 6
	  fdtofs,0	%r13, %r13
	}
	{
	  fdivs,5	%r9, %r13, %r0
	}
	{
	  nop 2
	  ldd,0	0x0, [ _f64,_lts0 secs ], %r9
	}
	{
	  faddd,0	%r5, %r9, %r5
	}
	{
	  nop 3
	  muls,0	%r16, _f16s,_lts0lo 0x3c, %r9
	}
	{
	  nop 3
	  istofd,0	%r9, %r9
	}
	{
	  fcmpltdb,0	%r9, %r5, %pred0
	}
	{
	  nop 4
	  disp	%ctpr1, .L1361
	}
	{
	  ct	%ctpr1 ? ~%pred0
	}
	{
	  nop 5
	  muls,0	%r16, _f16s,_lts0lo 0x2710, %r9
	}
	{
	  adds,0	%r9, 0xa, %r12
	}
.L1361:
	{
	  ldd,0	0x0, [ _f64,_lts0 outfile ], %b[0]
	}
	{
	  addd,0	%r2, _f16s,_lts0lo 0xffc0, %b[2]
	}
	{
	  ldw,0	0x0, [ _f64,_lts0 words ], %r13
	}
	{
	  ldw,0	0x0, [ _f64,_lts0 opwd ], %r17
	}
	{
	  ldw,0	0x0, [ _f64,_lts0 repeats ], %r18
	}
	{
	  ldd,0	0x0, [ _f64,_lts0 secs ], %b[6]
	}
	{
	  fstofd,0	%r0, %b[7]
	}
	{
	  addd,0	0x0, [ _f64,_lts0 .LC.18 ], %b[1]
	}
	{
	  addd,1	0x0, [ _f64,_lts0 .LC.18 ], %r19
	}
	{
	  std,2	%r3, 0x8, %r19
	}
	{
	  std,2	0x10, %r3, %b[2]
	}
	{
	  sxt,0	0x2, %r13, %b[3]
	}
	{
	  std,2	0x18, %r3, %b[3]
	}
	{
	  sxt,0	0x2, %r17, %b[4]
	}
	{
	  std,2	%r3, _f16s,_lts0lo 0x20, %b[4]
	}
	{
	  sxt,0	0x2, %r18, %b[5]
	}
	{
	  std,2	%r3, _f16s,_lts0lo 0x28, %b[5]
	}
	{
	  std,2	%r3, _f16s,_lts0lo 0x30, %b[6]
	}
	{
	  std,2	%r3, _f16s,_lts0lo 0x38, %b[7]
	}
	{
	  nop 6
	  disp	%ctpr1, fprintf
	}
	{
	  call	%ctpr1, wbs = 0xa
	}
	{
	  nop 5
	}
	{
	  addd,0	%r2, _f16s,_lts0lo 0xffc0, %b[1]
	}
	{
	  ldw,0	0x0, [ _f64,_lts0 words ], %r13
	}
	{
	  ldw,0	0x0, [ _f64,_lts0 opwd ], %r17
	}
	{
	  ldw,0	0x0, [ _f64,_lts0 repeats ], %r18
	}
	{
	  ldd,0	0x0, [ _f64,_lts0 secs ], %b[5]
	}
	{
	  fstofd,0	%r0, %b[6]
	}
	{
	  addd,0	0x0, [ _f64,_lts0 .LC.18 ], %b[0]
	}
	{
	  addd,1	0x0, [ _f64,_lts0 .LC.18 ], %r19
	}
	{
	  std,2	%r3, 0x0, %r19
	}
	{
	  std,2	%r3, 0x8, %b[1]
	}
	{
	  sxt,0	0x2, %r13, %b[2]
	}
	{
	  std,2	0x10, %r3, %b[2]
	}
	{
	  sxt,0	0x2, %r17, %b[3]
	}
	{
	  std,2	0x18, %r3, %b[3]
	}
	{
	  sxt,0	0x2, %r18, %b[4]
	}
	{
	  std,2	%r3, _f16s,_lts0lo 0x20, %b[4]
	}
	{
	  std,2	%r3, _f16s,_lts0lo 0x28, %b[5]
	}
	{
	  std,2	%r3, _f16s,_lts0lo 0x30, %b[6]
	}
	{
	  nop 6
	  disp	%ctpr1, printf
	}
	{
	  call	%ctpr1, wbs = 0xa
	}
	{
	  nop 5
	}
	{
	  ldd,0	0x0, [ _f64,_lts0 outfile ], %b[0]
	}
	{
	  nop 6
	  disp	%ctpr1, fflush
	}
	{
	  call	%ctpr1, wbs = 0xa
	}
	{
	  nop 5
	}
	{
	  adds,0	0x0, 0x0, %r9
	}
	{
	  nop 2
	  ldw,0	%r15, 0x0, %r0
	}
	{
	  fcmpeqsb,0	%r0, _f32s,_lts0 0x3f7fffef, %pred0
	}
	{
	  nop 4
	  disp	%ctpr1, .L1448
	}
	{
	  ct	%ctpr1 ? ~%pred0
	}
	{
	  adds,0	0x1, 0x0, %r8
	}
	{
	  adds,0	0x1, 0x0, %r9
	}
.L1448:
	{
	  adds,0	0x1, 0x0, %r13
	}
.L1451:
	{
	  nop 2
	  ldw,0	0x0, [ _f64,_lts0 words ], %r17
	}
	{
	  cmplsb,0	%r13, %r17, %pred0
	}
	{
	  nop 4
	  disp	%ctpr1, .L1538
	}
	{
	  ct	%ctpr1 ? ~%pred0
	}
	{
	  sxt,0	0x2, %r13, %r17
	}
	{
	  shld,0	%r17, 0x2, %r17
	}
	{
	  addd,0	%r15, %r17, %r17
	}
	{
	  nop 2
	  ldw,0	%r17, 0x0, %r17
	}
	{
	  fcmpneqsb,0	%r0, %r17, %pred0
	}
	{
	  nop 4
	  disp	%ctpr1, .L1533
	}
	{
	  ct	%ctpr1 ? ~%pred0
	}
	{
	  adds,0	0x1, 0x0, %r9
	}
	{
	  cmplsb,0	%r14, 0xa, %pred0
	}
	{
	  nop 4
	  disp	%ctpr1, .L1533
	}
	{
	  ct	%ctpr1 ? ~%pred0
	}
	{
	  sxt,0	0x2, %r13, %r17
	}
	{
	  shld,0	%r17, 0x2, %r17
	}
	{
	  addd,0	%r15, %r17, %r17
	}
	{
	  ldw,0	%r17, 0x0, %r17
	}
	{
	  addd,0	%r2, _f16s,_lts0lo 0xff70, %r18
	}
	{
	  sxt,0	0x2, %r14, %r19
	}
	{
	  shld,0	%r19, 0x2, %r19
	}
	{
	  addd,0	%r18, %r19, %r18
	}
	{
	  stw,2	%r18, 0x0, %r17
	}
	{
	  addd,0	%r2, _f16s,_lts0lo 0xff70, %r17
	}
	{
	  addd,0	%r17, _f16s,_lts0lo 0x28, %r17
	}
	{
	  sxt,0	0x2, %r14, %r18
	}
	{
	  shld,0	%r18, 0x2, %r18
	}
	{
	  addd,0	%r17, %r18, %r17
	}
	{
	  stw,2	%r17, 0x0, %r0
	}
	{
	  addd,0	%r2, _f16s,_lts0lo 0xfea0, %r17
	}
	{
	  sxt,0	0x2, %r14, %r18
	}
	{
	  shld,0	%r18, 0x2, %r18
	}
	{
	  addd,0	%r17, %r18, %r17
	}
	{
	  stw,2	%r17, 0x0, %r13
	}
	{
	  ldw,0	0x0, [ _f64,_lts0 words ], %r17
	}
	{
	  addd,0	%r2, _f16s,_lts0lo 0xfea0, %r18
	}
	{
	  addd,0	%r18, _f16s,_lts0lo 0x28, %r18
	}
	{
	  sxt,0	0x2, %r14, %r19
	}
	{
	  shld,0	%r19, 0x2, %r19
	}
	{
	  addd,0	%r18, %r19, %r18
	}
	{
	  stw,2	%r18, 0x0, %r17
	}
	{
	  ldw,0	0x0, [ _f64,_lts0 opwd ], %r17
	}
	{
	  addd,0	%r2, _f16s,_lts0lo 0xfea0, %r18
	}
	{
	  addd,0	%r18, _f16s,_lts0lo 0x50, %r18
	}
	{
	  sxt,0	0x2, %r14, %r19
	}
	{
	  shld,0	%r19, 0x2, %r19
	}
	{
	  addd,0	%r18, %r19, %r18
	}
	{
	  stw,2	%r18, 0x0, %r17
	}
	{
	  ldw,0	0x0, [ _f64,_lts0 repeats ], %r17
	}
	{
	  addd,0	%r2, _f16s,_lts0lo 0xfea0, %r18
	}
	{
	  addd,0	%r18, _f16s,_lts0lo 0x78, %r18
	}
	{
	  sxt,0	0x2, %r14, %r19
	}
	{
	  shld,0	%r19, 0x2, %r19
	}
	{
	  addd,0	%r18, %r19, %r18
	}
	{
	  stw,2	%r18, 0x0, %r17
	}
	{
	  adds,0	%r14, 0x1, %r14
	}
.L1533:
	{
	  adds,0	%r13, 0x1, %r13
	}
	{
	  nop 4
	  disp	%ctpr1, .L1451
	}
	{
	  ct	%ctpr1
	}
.L1538:
	{
	  cmpesb,0	%r9, 0x0, %pred0
	}
	{
	  nop 4
	  disp	%ctpr1, .L1541
	}
	{
	  ct	%ctpr1 ? %pred0
	}
	{
	  ldd,0	0x0, [ _f64,_lts0 outfile ], %b[0]
	}
	{
	  addd,0	0x0, [ _f64,_lts0 .LC.20 ], %b[1]
	}
	{
	  addd,0	0x0, [ _f64,_lts0 .LC.20 ], %r0
	}
	{
	  std,2	%r3, 0x8, %r0
	}
	{
	  nop 6
	  disp	%ctpr1, fprintf
	}
	{
	  call	%ctpr1, wbs = 0xa
	}
	{
	  nop 5
	}
	{
	  addd,0	0x0, [ _f64,_lts0 .LC.21 ], %b[0]
	}
	{
	  addd,0	0x0, [ _f64,_lts0 .LC.21 ], %r0
	}
	{
	  std,2	%r3, 0x0, %r0
	}
	{
	  nop 6
	  disp	%ctpr1, printf
	}
	{
	  call	%ctpr1, wbs = 0xa
	}
	{
	  nop 5
	}
	{
	  nop 4
	  disp	%ctpr1, .L1594
	}
	{
	  ct	%ctpr1
	}
.L1541:
	{
	  ldd,0	0x0, [ _f64,_lts0 outfile ], %b[0]
	}
	{
	  nop 2
	  ldw,0	%r15, 0x0, %r0
	}
	{
	  fstofd,0	%r0, %b[2]
	}
	{
	  addd,0	0x0, [ _f64,_lts0 .LC.19 ], %b[1]
	}
	{
	  addd,1	0x0, [ _f64,_lts0 .LC.19 ], %r0
	}
	{
	  std,2	%r3, 0x8, %r0
	}
	{
	  std,2	0x10, %r3, %b[2]
	}
	{
	  nop 6
	  disp	%ctpr1, fprintf
	}
	{
	  call	%ctpr1, wbs = 0xa
	}
	{
	  nop 5
	}
	{
	  nop 2
	  ldw,0	%r15, 0x0, %r0
	}
	{
	  fstofd,0	%r0, %b[1]
	}
	{
	  addd,0	0x0, [ _f64,_lts0 .LC.19 ], %b[0]
	}
	{
	  addd,1	0x0, [ _f64,_lts0 .LC.19 ], %r0
	}
	{
	  std,2	%r3, 0x0, %r0
	}
	{
	  std,2	%r3, 0x8, %b[1]
	}
	{
	  nop 6
	  disp	%ctpr1, printf
	}
	{
	  call	%ctpr1, wbs = 0xa
	}
	{
	  nop 6
	}
.L1594:
	{
	  addd,0,sm	0x0, %r15, %b[0]
	}
	{
	  nop 6
	  disp	%ctpr1, _mm_free
	}
	{
	  call	%ctpr1, wbs = 0xa
	}
	{
	  nop 5
	}
	{
	  nop 2
	  ldw,0	0x0, [ _f64,_lts0 words ], %r0
	}
	{
	  nop 3
	  muls,0	%r0, 0xa, %r0
	}
	{
	  stw,2	0x0, [ _f64,_lts0 words ], %r0
	}
	{
	  nop 3
	  ldw,0	0x0, [ _f64,_lts0 repeats ], %r0
	}
	{
	  nop 7
	  sdivs,5	%r0, 0xa, %r0
	}
	{
	  nop 2
	}
	{
	  stw,5	0x0, [ _f64,_lts0 repeats ], %r0
	}
	{
	  nop 2
	  ldw,0	0x0, [ _f64,_lts0 repeats ], %r0
	}
	{
	  cmplsb,0	%r0, 0x1, %pred0
	}
	{
	  nop 4
	  disp	%ctpr1, .L1618
	}
	{
	  ct	%ctpr1 ? ~%pred0
	}
	{
	  adds,0	0x1, 0x0, %r0
	}
	{
	  stw,2	0x0, [ _f64,_lts0 repeats ], %r0
	}
.L1618:
	{
	  adds,0	%r10, 0x1, %r10
	}
	{
	  nop 4
	  disp	%ctpr1, .L1054
	}
	{
	  ct	%ctpr1
	}
.L1623:
	{
	  cmpesb,0	%r16, 0x0, %pred0
	}
	{
	  nop 4
	  disp	%ctpr1, .L1649
	}
	{
	  ct	%ctpr1 ? ~%pred0
	}
	{
	  ldd,0	0x0, [ _f64,_lts0 outfile ], %b[0]
	}
	{
	  addd,0	0x0, [ _f64,_lts0 .LC.9 ], %b[1]
	}
	{
	  addd,0	0x0, [ _f64,_lts0 .LC.9 ], %r0
	}
	{
	  std,2	%r3, 0x8, %r0
	}
	{
	  nop 6
	  disp	%ctpr1, fprintf
	}
	{
	  call	%ctpr1, wbs = 0xa
	}
	{
	  nop 5
	}
	{
	  addd,0	0x0, [ _f64,_lts0 .LC.9 ], %b[0]
	}
	{
	  addd,0	0x0, [ _f64,_lts0 .LC.9 ], %r0
	}
	{
	  std,2	%r3, 0x0, %r0
	}
	{
	  nop 6
	  disp	%ctpr1, printf
	}
	{
	  call	%ctpr1, wbs = 0xa
	}
	{
	  nop 6
	}
.L1649:
	{
	  nop 2
	  ldw,0	0x0, [ _f64,_lts0 part ], %r0
	}
	{
	  adds,0	%r0, 0x1, %r0
	}
	{
	  stw,2	0x0, [ _f64,_lts0 part ], %r0
	}
	{
	  nop 4
	  disp	%ctpr1, .L1040
	}
	{
	  ct	%ctpr1
	}
.L1654:
	{
	  adds,0	%r12, 0x1, %r12
	}
	{
	  nop 4
	  disp	%ctpr1, .L1027
	}
	{
	  ct	%ctpr1
	}
.L1659:
	{
	  cmplesb,0	%r16, 0x0, %pred0
	}
	{
	  nop 4
	  disp	%ctpr1, .L1685
	}
	{
	  ct	%ctpr1 ? %pred0
	}
	{
	  ldd,0	0x0, [ _f64,_lts0 outfile ], %b[0]
	}
	{
	  addd,0	0x0, [ _f64,_lts0 .LC.9 ], %b[1]
	}
	{
	  addd,0	0x0, [ _f64,_lts0 .LC.9 ], %r0
	}
	{
	  std,2	%r3, 0x8, %r0
	}
	{
	  nop 6
	  disp	%ctpr1, fprintf
	}
	{
	  call	%ctpr1, wbs = 0xa
	}
	{
	  nop 5
	}
	{
	  addd,0	0x0, [ _f64,_lts0 .LC.9 ], %b[0]
	}
	{
	  addd,0	0x0, [ _f64,_lts0 .LC.9 ], %r0
	}
	{
	  std,2	%r3, 0x0, %r0
	}
	{
	  nop 6
	  disp	%ctpr1, printf
	}
	{
	  call	%ctpr1, wbs = 0xa
	}
	{
	  nop 6
	}
.L1685:
	{
	  cmplesb,0	%r8, 0x0, %pred0
	}
	{
	  nop 4
	  disp	%ctpr1, .L1711
	}
	{
	  ct	%ctpr1 ? %pred0
	}
	{
	  ldd,0	0x0, [ _f64,_lts0 outfile ], %b[0]
	}
	{
	  addd,0	0x0, [ _f64,_lts0 .LC.22 ], %b[1]
	}
	{
	  addd,0	0x0, [ _f64,_lts0 .LC.22 ], %r0
	}
	{
	  std,2	%r3, 0x8, %r0
	}
	{
	  nop 6
	  disp	%ctpr1, fprintf
	}
	{
	  call	%ctpr1, wbs = 0xa
	}
	{
	  nop 5
	}
	{
	  addd,0	0x0, [ _f64,_lts0 .LC.22 ], %b[0]
	}
	{
	  addd,0	0x0, [ _f64,_lts0 .LC.22 ], %r0
	}
	{
	  std,2	%r3, 0x0, %r0
	}
	{
	  nop 6
	  disp	%ctpr1, printf
	}
	{
	  call	%ctpr1, wbs = 0xa
	}
	{
	  nop 6
	}
.L1711:
	{
	  cmplesb,0	%r14, 0x0, %pred0
	}
	{
	  nop 4
	  disp	%ctpr1, .L1825
	}
	{
	  ct	%ctpr1 ? %pred0
	}
	{
	  ldd,0	0x0, [ _f64,_lts0 outfile ], %b[0]
	}
	{
	  addd,0	0x0, [ _f64,_lts0 .LC.23 ], %b[1]
	}
	{
	  addd,0	0x0, [ _f64,_lts0 .LC.23 ], %r1
	}
	{
	  std,2	%r3, 0x8, %r1
	}
	{
	  nop 6
	  disp	%ctpr1, fprintf
	}
	{
	  call	%ctpr1, wbs = 0xa
	}
	{
	  nop 5
	}
	{
	  adds,0	0x0, 0x0, %r0
	}
.L1731:
	{
	  cmplsb,0	%r0, %r14, %pred0
	}
	{
	  nop 4
	  disp	%ctpr1, .L1814
	}
	{
	  ct	%ctpr1 ? ~%pred0
	}
	{
	  ldd,0	0x0, [ _f64,_lts0 outfile ], %b[0]
	}
	{
	  addd,0	%r2, _f16s,_lts0lo 0xffc0, %b[2]
	}
	{
	  addd,0	%r2, _f16s,_lts0lo 0xfea0, %r1
	}
	{
	  addd,0	%r1, _f16s,_lts0lo 0x28, %r1
	}
	{
	  sxt,0	0x2, %r0, %r4
	}
	{
	  shld,0	%r4, 0x2, %r4
	}
	{
	  addd,0	%r1, %r4, %r1
	}
	{
	  ldw,0	%r1, 0x0, %r1
	}
	{
	  addd,0	%r2, _f16s,_lts0lo 0xfea0, %r4
	}
	{
	  addd,0	%r4, _f16s,_lts0lo 0x50, %r4
	}
	{
	  sxt,0	0x2, %r0, %r5
	}
	{
	  shld,0	%r5, 0x2, %r5
	}
	{
	  addd,0	%r4, %r5, %r4
	}
	{
	  ldw,0	%r4, 0x0, %r4
	}
	{
	  addd,0	%r2, _f16s,_lts0lo 0xfea0, %r5
	}
	{
	  addd,0	%r5, _f16s,_lts0lo 0x78, %r5
	}
	{
	  sxt,0	0x2, %r0, %r6
	}
	{
	  shld,0	%r6, 0x2, %r6
	}
	{
	  addd,0	%r5, %r6, %r5
	}
	{
	  ldw,0	%r5, 0x0, %r5
	}
	{
	  addd,0	%r2, _f16s,_lts0lo 0xfea0, %r6
	}
	{
	  sxt,0	0x2, %r0, %r7
	}
	{
	  shld,0	%r7, 0x2, %r7
	}
	{
	  addd,0	%r6, %r7, %r6
	}
	{
	  ldw,0	%r6, 0x0, %r6
	}
	{
	  addd,0	%r2, _f16s,_lts0lo 0xff70, %r7
	}
	{
	  sxt,0	0x2, %r0, %r8
	}
	{
	  shld,0	%r8, 0x2, %r8
	}
	{
	  addd,0	%r7, %r8, %r7
	}
	{
	  nop 2
	  ldw,0	%r7, 0x0, %r7
	}
	{
	  fstofd,0	%r7, %b[7]
	}
	{
	  addd,0	%r2, _f16s,_lts0lo 0xff70, %r7
	}
	{
	  addd,1	%r7, _f16s,_lts0lo 0x28, %r7
	}
	{
	  sxt,0	0x2, %r0, %r8
	}
	{
	  shld,0	%r8, 0x2, %r8
	}
	{
	  addd,0	%r7, %r8, %r7
	}
	{
	  nop 2
	  ldw,0	%r7, 0x0, %r7
	}
	{
	  fstofd,0	%r7, %r7
	}
	{
	  addd,0	0x0, [ _f64,_lts0 .LC.24 ], %b[1]
	}
	{
	  addd,1	0x0, [ _f64,_lts0 .LC.24 ], %r8
	}
	{
	  std,2	%r3, 0x8, %r8
	}
	{
	  std,2	0x10, %r3, %b[2]
	}
	{
	  sxt,0	0x2, %r1, %b[3]
	}
	{
	  std,2	0x18, %r3, %b[3]
	}
	{
	  sxt,0	0x2, %r4, %b[4]
	}
	{
	  std,2	%r3, _f16s,_lts0lo 0x20, %b[4]
	}
	{
	  sxt,0	0x2, %r5, %b[5]
	}
	{
	  std,2	%r3, _f16s,_lts0lo 0x28, %b[5]
	}
	{
	  sxt,0	0x2, %r6, %b[6]
	}
	{
	  std,2	%r3, _f16s,_lts0lo 0x30, %b[6]
	}
	{
	  std,2	%r3, _f16s,_lts0lo 0x38, %b[7]
	}
	{
	  std,2	%r3, _f16s,_lts0lo 0x40, %r7
	}
	{
	  nop 6
	  disp	%ctpr1, fprintf
	}
	{
	  call	%ctpr1, wbs = 0xa
	}
	{
	  nop 5
	}
	{
	  adds,0	%r0, 0x1, %r0
	}
	{
	  nop 4
	  disp	%ctpr1, .L1731
	}
	{
	  ct	%ctpr1
	}
.L1814:
	{
	  ldd,0	0x0, [ _f64,_lts0 outfile ], %b[0]
	}
	{
	  addd,0	0x0, [ _f64,_lts0 .LC.9 ], %b[1]
	}
	{
	  addd,0	0x0, [ _f64,_lts0 .LC.9 ], %r0
	}
	{
	  std,2	%r3, 0x8, %r0
	}
	{
	  nop 6
	  disp	%ctpr1, fprintf
	}
	{
	  call	%ctpr1, wbs = 0xa
	}
	{
	  nop 6
	}
.L1825:
	{
	  nop 6
	  disp	%ctpr1, local_time
	}
	{
	  call	%ctpr1, wbs = 0xa
	}
	{
	  nop 5
	}
	{
	  addd,0	0x0, [ _f64,_lts0 .LC.25 ], %b[0]
	}
	{
	  addd,0	0x0, [ _f64,_lts0 .LC.25 ], %r1
	}
	{
	  std,2	%r3, 0x0, %r1
	}
	{
	  addd,0	0x0, [ _f64,_lts0 timeday ], %b[1]
	}
	{
	  addd,0	0x0, [ _f64,_lts0 timeday ], %r1
	}
	{
	  std,2	%r3, 0x8, %r1
	}
	{
	  nop 6
	  disp	%ctpr1, printf
	}
	{
	  call	%ctpr1, wbs = 0xa
	}
	{
	  nop 5
	}
	{
	  ldd,0	0x0, [ _f64,_lts0 outfile ], %b[0]
	}
	{
	  addd,0	0x0, [ _f64,_lts0 .LC.26 ], %b[1]
	}
	{
	  addd,0	0x0, [ _f64,_lts0 .LC.26 ], %r1
	}
	{
	  std,2	%r3, 0x8, %r1
	}
	{
	  addd,0	0x0, [ _f64,_lts0 timeday ], %b[2]
	}
	{
	  addd,0	0x0, [ _f64,_lts0 timeday ], %r1
	}
	{
	  std,2	0x10, %r3, %r1
	}
	{
	  nop 6
	  disp	%ctpr1, fprintf
	}
	{
	  call	%ctpr1, wbs = 0xa
	}
	{
	  nop 5
	}
	{
	  ldd,0	0x0, [ _f64,_lts0 outfile ], %b[0]
	}
	{
	  nop 6
	  disp	%ctpr1, fclose
	}
	{
	  call	%ctpr1, wbs = 0xa
	}
	{
	  nop 5
	}
	{
	  addd,0	0x0, [ _f64,_lts0 .LC.27 ], %b[0]
	}
	{
	  addd,0	0x0, [ _f64,_lts0 .LC.27 ], %r1
	}
	{
	  std,2	%r3, 0x0, %r1
	}
	{
	  nop 6
	  disp	%ctpr1, printf
	}
	{
	  call	%ctpr1, wbs = 0xa
	}
	{
	  nop 5
	}
	{
	  addd,3	0x0, 0x0, %r0
	}
	{
	  nop 6
	  return	%ctpr3
	}
	{
	  ct	%ctpr3
	}
	{
	  nop 6
	}
.LCS.4:
	.cfi_endproc
	.size	main, .- main
	.data
	.global	heading
	.type	heading, #object
	.size	heading, 0x28
	.align	16
heading:
	.uadword	0x4d20746942203436
	.uadword	0x464d204553532050
	.uadword	0x6e65422053504f4c
	.uadword	0x31206b72616d6863
	.uadword	0x0
	.comm	xcalcs, 0x10, 16
	.comm	tid, 0x320, 16
	.global	attrt
	.type	attrt, #object
	.size	attrt, 0x8
	.align	8
attrt:
	.uadword	0x0
	.global	mutext
	.type	mutext, #object
	.size	mutext, 0x28
	.align	16
mutext:
	.uadword	0x0
	.skip	0x20
	.comm	outfile, 0x8, 8
	.comm	endit, 0x4, 4
	.comm	part, 0x4, 4
	.comm	opwd, 0x4, 4
	.global	threads
	.type	threads, #object
	.size	threads, 0x4
	.align	4
threads:
	.uaword	0x1
	.global	words
	.type	words, #object
	.size	words, 0x4
	.align	4
words:
	.uaword	0x19000
	.global	repeats
	.type	repeats, #object
	.size	repeats, 0x4
	.align	4
repeats:
	.uaword	0x9c4
	.global	xval
	.type	xval, #object
	.size	xval, 0x4
	.align	4
xval:
	.uaword	0x3f7ffcb9
	.global	aval
	.type	aval, #object
	.size	aval, 0x4
	.align	4
aval:
	.uaword	0x37a7c5ac
	.global	bval
	.type	bval, #object
	.size	bval, 0x4
	.align	4
bval:
	.uaword	0x3f7ffeb0
	.global	cval
	.type	cval, #object
	.size	cval, 0x4
	.align	4
cval:
	.uaword	0x37388ca4
	.global	dval
	.type	dval, #object
	.size	dval, 0x4
	.align	4
dval:
	.uaword	0x3f80005c
	.global	eval
	.type	eval, #object
	.size	eval, 0x4
	.align	4
eval:
	.uaword	0x3749539c
	.global	fval
	.type	fval, #object
	.size	fval, 0x4
	.align	4
fval:
	.uaword	0x3f7fff7a
	.global	gval
	.type	gval, #object
	.size	gval, 0x4
	.align	4
gval:
	.uaword	0x375a1a93
	.global	hval
	.type	hval, #object
	.size	hval, 0x4
	.align	4
hval:
	.uaword	0x3f80006d
	.global	jval
	.type	jval, #object
	.size	jval, 0x4
	.align	4
jval:
	.uaword	0x376ae18b
	.global	kval
	.type	kval, #object
	.size	kval, 0x4
	.align	4
kval:
	.uaword	0x3f7fff9b
	.global	lval
	.type	lval, #object
	.size	lval, 0x4
	.align	4
lval:
	.uaword	0x377ba882
	.global	mval
	.type	mval, #object
	.size	mval, 0x4
	.align	4
mval:
	.uaword	0x3f80007e
	.global	oval
	.type	oval, #object
	.size	oval, 0x4
	.align	4
oval:
	.uaword	0x378637bd
	.global	pval
	.type	pval, #object
	.size	pval, 0x4
	.align	4
pval:
	.uaword	0x3f7fffbd
	.global	qval
	.type	qval, #object
	.size	qval, 0x4
	.align	4
qval:
	.uaword	0x378e9b39
	.global	rval
	.type	rval, #object
	.size	rval, 0x4
	.align	4
rval:
	.uaword	0x3f80008f
	.global	sval
	.type	sval, #object
	.size	sval, 0x4
	.align	4
sval:
	.uaword	0x3796feb5
	.global	tval
	.type	tval, #object
	.size	tval, 0x4
	.align	4
tval:
	.uaword	0x3f800097
	.global	uval
	.type	uval, #object
	.size	uval, 0x4
	.align	4
uval:
	.uaword	0x379f6230
	.global	vval
	.type	vval, #object
	.size	vval, 0x4
	.align	4
vval:
	.uaword	0x3f80009f
	.global	wval
	.type	wval, #object
	.size	wval, 0x4
	.align	4
wval:
	.uaword	0x37b02928
	.global	yval
	.type	yval, #object
	.size	yval, 0x4
	.align	4
yval:
	.uaword	0x3f8000b0
	.section .rodata
	.align	16
.LC.1:
	.ascii	"Data in & out \000"
	.align	4
.LC.2:
	.ascii	"%d\000"
	.align	4
.LC.3:
	.ascii	"\n\n\000"
	.align	16
.LC.4:
	.ascii	"MPMflopsLog.txt\000"
	.align	4
.LC.5:
	.ascii	"a+\000"
	.align	16
.LC.6:
	.ascii	" Cannot open results file \n\n\000"
	.align	16
.LC.7:
	.ascii	" Press Enter\n\000"
	.align	4
.LC.8:
	.ascii	"%s\n\000"
	.align	2
.LC.9:
	.ascii	"\n\000"
	.align	16
.LC.10:
	.ascii	"################################"
	.ascii	"##############\n\n\000"
	.align	8
.LC.11:
	.ascii	"%s \n\000"
	.align	16
.LC.12:
	.ascii	"\n Reliability Test around %d Min"
	.ascii	"utes\n\000"
	.align	16
.LC.13:
	.ascii	"\n %d CPUs Available\n\000"
	.align	16
.LC.14:
	.ascii	"  %s, %d Threads, %s\n\000"
	.align	16
.LC.15:
	.ascii	"  Test             4 Byte  Ops/ "
	.ascii	"  Repeat    Seconds   MFLOPS    "
	.ascii	"   First   All\n\000"
	.align	16
.LC.16:
	.ascii	"                    Words  Word "
	.ascii	"  Passes                        "
	.ascii	" Results  Same\n\n\000"
	.align	16
.LC.17:
	.ascii	" ERROR WILL EXIT\n\000"
	.align	16
.LC.18:
	.ascii	"%15s %9d %5d %8d %10.6f %8.0f \000"
	.align	16
.LC.19:
	.ascii	" %10.6f   Yes\n\000"
	.align	16
.LC.20:
	.ascii	"   See later   No\n\000"
	.align	16
.LC.21:
	.ascii	"   See log     No\n\000"
	.align	16
.LC.22:
	.ascii	" ERROR - At least one first resu"
	.ascii	"lt of 0.999999 - no calculations"
	.ascii	"?\n\n\000"
	.align	16
.LC.23:
	.ascii	" First Unexpected Results\n\000"
	.align	16
.LC.24:
	.ascii	"%15s %9d %5d %8d word %9d was %1"
	.ascii	"0.6f not %10.6f\n\000"
	.align	16
.LC.25:
	.ascii	"               End of test %s\000"
	.align	16
.LC.26:
	.ascii	"               End of test %s\n\000"
	.align	16
.LC.27:
	.ascii	"\n Press Enter\n\000"
	.section .pack_pure_eir, "", @progbits
	.align	4
	.uaword	0x3a984
	.uaword	0x0
	.uaword	0x432b
	.uaword	0x8
	.uaword	0x0
	.uaword	0x0
	.uaword	0x0
	.uaword	0x3a984
	.uaword	0x8
	.uaword	0x1c4
	.uaword	0x1
	.uaword	0x8
	.uaword	0x0
	.uaword	0x0
	.uaword	0x0
	.uaword	0x0

	.uaword	0x0
	.uaword	0x0
	.uaword	0x0
	.uaword	0x8
	.uaword	0x30
	.uaword	0x0
	.uaword	0x1fab
	.uaword	0x42
	.uaword	0x35
	.uaword	0x0
	.uaword	0x1fed
	.uaword	0xe8
	.uaword	0x36
	.uaword	0x0
	.uaword	0x20d5
	.uaword	0x53

	.uaword	0x39
	.uaword	0x0
	.uaword	0x2128
	.uaword	0x457
	.uaword	0x3a
	.uaword	0x0
	.uaword	0x257f
	.uaword	0x193
	.uaword	0x3b
	.uaword	0x0
	.uaword	0x2712
	.uaword	0xf3
	.uaword	0x3c
	.uaword	0x0
	.uaword	0x2805
	.uaword	0x22a

	.uaword	0x3d
	.uaword	0x0
	.uaword	0x2a2f
	.uaword	0x18fc
	.uaword	0x30
	.uaword	0x27
	.uaword	0x0
	.uaword	0x0
	.uaword	0x35
	.uaword	0x95
	.uaword	0x0
	.uaword	0x0
	.uaword	0x36
	.uaword	0x37
	.uaword	0x0
	.uaword	0x0

	.uaword	0x39
	.uaword	0x2f9
	.uaword	0x0
	.uaword	0x0
	.uaword	0x3a
	.uaword	0x125
	.uaword	0x0
	.uaword	0x0
	.uaword	0x3b
	.uaword	0xad
	.uaword	0x0
	.uaword	0x0
	.uaword	0x3c
	.uaword	0x15b
	.uaword	0x0
	.uaword	0x0

	.uaword	0x3d
	.uaword	0xdf1
	.uaword	0x0
	.uaword	0x0
	.uaword	0x30
	.uaword	0x3d
	.uaword	0x0
	.uaword	0x0
	.uaword	0x35
	.uaword	0xde
	.uaword	0x0
	.uaword	0x0
	.uaword	0x36
	.uaword	0x4d
	.uaword	0x0
	.uaword	0x0

	.uaword	0x39
	.uaword	0x431
	.uaword	0x0
	.uaword	0x0
	.uaword	0x3a
	.uaword	0x182
	.uaword	0x0
	.uaword	0x0
	.uaword	0x3b
	.uaword	0xe8
	.uaword	0x0
	.uaword	0x0
	.uaword	0x3c
	.uaword	0x20e
	.uaword	0x0
	.uaword	0x0

	.uaword	0x3d
	.uaword	0x17f8
	.uaword	0x0
	.uaword	0x0
	.uaword	0x36601800
	.uaword	0xd95985f7
	.uaword	0x26cb9d65
	.uaword	0x134d7736
	.uaword	0xd9982ccd
	.uaword	0xc6739ddf
	.uaword	0x79a66bfb
	.uaword	0xd7d67d61
	.uaword	0x344f3455
	.uaword	0x1b0862b2
	.uaword	0x582e062c
	.uaword	0xf5d9dcd1

	.uaword	0x566bd23e
	.uaword	0x2e124ef6
	.uaword	0xce1ca3ef
	.uaword	0xab3579c6
	.uaword	0x6caa3599
	.uaword	0x3b1ab324
	.uaword	0xa2757ab3
	.uaword	0x6fdea88a
	.uaword	0xb9fe9239
	.uaword	0x9279fe92
	.uaword	0xfd9239fe
	.uaword	0xb9fd92f9
	.uaword	0x9279fd92
	.uaword	0xfc9239fd
	.uaword	0xb9fc92f9
	.uaword	0x9239fc92

	.uaword	0xfb92f9fb
	.uaword	0x79fb92b9
	.uaword	0x92f9fa92
	.uaword	0xfa92b9fa
	.uaword	0x39fa9279
	.uaword	0x92f9f992
	.uaword	0xf992b9f9
	.uaword	0x39f99279
	.uaword	0x92f9fe92
	.uaword	0x7ceab3fc
	.uaword	0xa87dd7e4
	.uaword	0xfdab609b
	.uaword	0xf5d15386
	.uaword	0x9b754df9
	.uaword	0x6d567065
	.uaword	0x66efc095

	.uaword	0xd3dfd1f7
	.uaword	0x67dfc767
	.uaword	0x9e7dbfbe
	.uaword	0x92adeffa
	.uaword	0xd1594e4f
	.uaword	0x3e6b598f
	.uaword	0x9b3d63d4
	.uaword	0xeffabec9
	.uaword	0x8fd9f3b6
	.uaword	0xf999cae5
	.uaword	0x2a973f71
	.uaword	0x7ec4e567
	.uaword	0x979fa95c
	.uaword	0xa672f90f
	.uaword	0xe5375c7e
	.uaword	0x70f999ca

	.uaword	0x672a97bf
	.uaword	0x5c7ec2e5
	.uaword	0x7979fa9
	.uaword	0x7ea672f9
	.uaword	0xcae5175c
	.uaword	0x2170f999
	.uaword	0xe49bfaad
	.uaword	0xaea66fab
	.uaword	0xedfb314b
	.uaword	0xbe8ff6ac
	.uaword	0xfbc549ce
	.uaword	0x7fef68ec
	.uaword	0x395acfbe
	.uaword	0xdbecebfb
	.uaword	0xccbabe7f
	.uaword	0xf2ebfb67

	.uaword	0xdabeef9a
	.uaword	0xe9fb68cf
	.uaword	0xdc4cdee4
	.uaword	0xa3774dde
	.uaword	0x4adee459
	.uaword	0x762dd735
	.uaword	0xdc312e9b
	.uaword	0x2cbf291c
	.uaword	0x323ca7f6
	.uaword	0xf6ac6dcf
	.uaword	0x9acabb8f
	.uaword	0xbe7fa376
	.uaword	0xc268cfda
	.uaword	0x6dcaef4b
	.uaword	0x694c9ab6
	.uaword	0xde315bcf

	.uaword	0x8dbf699a
	.uaword	0xf26ba6ab
	.uaword	0xde388cda
	.uaword	0x69eef78e
	.uaword	0xcb6f9b2f
	.uaword	0xe0f23395
	.uaword	0x53b9fc87
	.uaword	0x6f082e3f
	.uaword	0xf23395cb
	.uaword	0xb9fc85e0
	.uaword	0x82e3f53
	.uaword	0x3395cb4f
	.uaword	0xfc83e0f2
	.uaword	0x2e3f53b9
	.uaword	0x95cb2f08
	.uaword	0x81e0f233

	.uaword	0x3f53b9fc
	.uaword	0xcb0f082e
	.uaword	0xe0f23395
	.uaword	0x53b9fc49
	.uaword	0x8f042e3f
	.uaword	0xf23395cb
	.uaword	0xb9fc47e0
	.uaword	0x42e3f53
	.uaword	0x3395cb6f
	.uaword	0xfc45e0f2
	.uaword	0x2e3f53b9
	.uaword	0x95cb4f04
	.uaword	0x43e0f233
	.uaword	0x3f53b9fc
	.uaword	0xcb2f042e
	.uaword	0xe0f23395

	.uaword	0x53b9fc41
	.uaword	0x42e3f
	.uaword	0xf24dfdeb
	.uaword	0x535fb055
	.uaword	0x9763f465
	.uaword	0xd44e53d9
	.uaword	0x67dbf76f
	.uaword	0xf67d3b66
	.uaword	0xbf46635d
	.uaword	0x635c367d
	.uaword	0x7d49dfbf
	.uaword	0xd2f76395
	.uaword	0xeb58655f
	.uaword	0x36512ec6
	.uaword	0xf2d4d1d8
	.uaword	0x6316266f

	.uaword	0x9c6df4c6
	.uaword	0x180c99a
	.uaword	0x60b22667
	.uaword	0xacc93900
	.uaword	0xf9060098
	.uaword	0x6b749e71
	.uaword	0x5ccd1b55
	.uaword	0xb69eed9a
	.uaword	0xe734bd63
	.uaword	0x4eef98ad
	.uaword	0x9b4467b4
	.uaword	0xd17abded
	.uaword	0xc665fb24
	.uaword	0x157dd9f4
	.uaword	0x63f624d1
	.uaword	0x4461f656

	.uaword	0x9f2078f2
	.uaword	0xa85b93b0
	.uaword	0xc7b86fd7
	.uaword	0x2f9ca88d
	.uaword	0x267acaa6
	.uaword	0xc7be7fe7
	.uaword	0x6fd7a88d
	.uaword	0xd2e36392
	.uaword	0xc578ed54
	.uaword	0x6fdf36da
	.uaword	0x75eac3b0
	.uaword	0x7a1983a2
	.uaword	0xfab2644e
	.uaword	0xeced9f31
	.uaword	0xfd2181c2
	.uaword	0xbc6b79b5

	.uaword	0x973453bc
	.uaword	0x6fb22ed9
	.uaword	0x24d9fa46
	.uaword	0xc2c6dff9
	.uaword	0x27abfb89
	.uaword	0xdee4e9a3
	.uaword	0xec63924f
	.uaword	0x35ead624
	.uaword	0xde3579db
	.uaword	0x6a9fb50c
	.uaword	0x37dadca8
	.uaword	0xdff6cb92
	.uaword	0x3b9f245b
	.uaword	0xb02fd8f8
	.uaword	0xbe24ecc3
	.uaword	0x2c9ba6fc

	.uaword	0xe4a9b269
	.uaword	0x93b74dde
	.uaword	0xccdefe5d
	.uaword	0xa429bf28
	.uaword	0xc2ecedbf
	.uaword	0x937c6381
	.uaword	0x3fc54b1f
	.uaword	0x4dff8c51
	.uaword	0x954dbfc6
	.uaword	0xd98f61fc
	.uaword	0x53d93f5f
	.uaword	0xf26fd44e
	.uaword	0x53367d4c
	.uaword	0xe13b37d1
	.uaword	0x67f3e59f
	.uaword	0xf9d793c5

	.uaword	0x257d7f75
	.uaword	0x148e55f6
	.uaword	0xfec1b863
	.uaword	0xe2a58f49
	.uaword	0x6a93a59f
	.uaword	0xb58f493e
	.uaword	0xa3fe49a2
	.uaword	0x8f49fe19
	.uaword	0xfe49a2b5
	.uaword	0x497e7dcf
	.uaword	0x9a93b68f
	.uaword	0xfe19a33e
	.uaword	0xd6285aa7
	.uaword	0x8a97be8d
	.uaword	0x774dde76
	.uaword	0x93e88c6e

	.uaword	0xbddeb37d
	.uaword	0xad7f9268
	.uaword	0x9146ccca
	.uaword	0xd67d4cf2
	.uaword	0xd4476fb6
	.uaword	0x31c93f63
	.uaword	0xbdd95af7
	.uaword	0xbfbe671f
	.uaword	0xd1dac724
	.uaword	0x264bff24
	.uaword	0x1f937cd4
	.uaword	0x7d34276d
	.uaword	0xf5519b2c
	.uaword	0xb446d13a
	.uaword	0x6df6f56d
	.uaword	0xf731c9bf

	.uaword	0xd3474f56
	.uaword	0x6798bcc9
	.uaword	0xe1197ef9
	.uaword	0xb767f94d
	.uaword	0x9f61d3e5
	.uaword	0x8567f8e5
	.uaword	0xdf9ee537
	.uaword	0x5f384c97
	.uaword	0xb5ee6392
	.uaword	0x963e7ab3
	.uaword	0x9dfba84d
	.uaword	0x3efa96e4
	.uaword	0xa3769aca
	.uaword	0x5aaff77c
	.uaword	0x37e99f24
	.uaword	0xcfb75fdf

	.uaword	0x49a2f57a
	.uaword	0x245a9bfe
	.uaword	0xdaf28cde
	.uaword	0x8cc2fece
	.uaword	0xb1cabe24
	.uaword	0x31c90f1e
	.uaword	0x774db2f4
	.uaword	0x9b2cfd19
	.uaword	0xbe1f4050
	.uaword	0xde2f8b97
	.uaword	0x5bcf7ecc
	.uaword	0x2092de31
	.uaword	0xd77bf6fd
	.uaword	0xf64f12ad
	.uaword	0x7f476f1c
	.uaword	0xcb1f4c6c

	.uaword	0xcb5fdbf8
	.uaword	0xf86bc6ec
	.uaword	0xf7cb8f9e
	.uaword	0x2e3f0ab3
	.uaword	0x975fa0ac
	.uaword	0x97bfb6f1
	.uaword	0xf1d78cd9
	.uaword	0xed971f3d
	.uaword	0xf965f6bc
	.uaword	0xf1977f75
	.uaword	0xd997bfb6
	.uaword	0x3df1d78c
	.uaword	0x35ed971f
	.uaword	0x75f94f74
	.uaword	0xbffc4465
	.uaword	0xbefcb58d

	.uaword	0x89bf66cc
	.uaword	0x6dbffce8
	.uaword	0x7fc9bee7
	.uaword	0xfef2af2e
	.uaword	0xfbf2d736
	.uaword	0x27fe9a31
	.uaword	0x31faf2a3
	.uaword	0xfc31c99e
	.uaword	0xf8cbbfba
	.uaword	0xeccb5fdb
	.uaword	0x9ef86bc6
	.uaword	0x92f0cb8f
	.uaword	0xf29bf2fb
	.uaword	0xe32fffea
	.uaword	0xb32f7f6d
	.uaword	0x7ae2af19

	.uaword	0xfb922f3f
	.uaword	0xcb4f9af2
	.uaword	0xe50f2cab
	.uaword	0xe5af6dfc
	.uaword	0xfc3563f6
	.uaword	0xf9e5474f
	.uaword	0x49b45eef
	.uaword	0x97d5e53f
	.uaword	0xdeb3ef0b
	.uaword	0x7f9268bd
	.uaword	0x357ac7ac
	.uaword	0xbefe4bc6
	.uaword	0xbffcb7cd
	.uaword	0xbefcb58d
	.uaword	0x89bf66cc
	.uaword	0x9abefce8

	.uaword	0x688ddf24
	.uaword	0xcceaf2db
	.uaword	0x1b7ff909
	.uaword	0x987df96b
	.uaword	0xd1137fcd
	.uaword	0x6dde7ef9
	.uaword	0xd1d37cf9
	.uaword	0x5797df4e
	.uaword	0x6b1b7ff9
	.uaword	0xcd987df9
	.uaword	0xf9d1137f
	.uaword	0xf9f1587d
	.uaword	0x2ef1db7e
	.uaword	0xf95797df
	.uaword	0xf96b1b7f
	.uaword	0x7fcd987d

	.uaword	0x7ef9d113
	.uaword	0x7ef96dde
	.uaword	0xdf4667fe
	.uaword	0x7ff95797
	.uaword	0x7df96b1b
	.uaword	0x137fcd98
	.uaword	0xb67cf9d1
	.uaword	0xfbe5b76f
	.uaword	0x971f85d9
	.uaword	0xcb4f6456
	.uaword	0xcb5fdbf8
	.uaword	0xf86bc6ec
	.uaword	0xe5cb8f9e
	.uaword	0x2fbf7db3
	.uaword	0xdbe8ccdf
	.uaword	0x2fffeaf2

	.uaword	0x2f7f6de3
	.uaword	0xe2af19b3
	.uaword	0x962f3f7a
	.uaword	0xbffcf6cd
	.uaword	0x2fb3e76d
	.uaword	0xbffcabcb
	.uaword	0xbefcb58d
	.uaword	0x89bf66cc
	.uaword	0x6fbffce8
	.uaword	0x6abffc36
	.uaword	0xff6da22f
	.uaword	0xfef2af2e
	.uaword	0xfbf2d736
	.uaword	0x27fe9a31
	.uaword	0x6cf9f2a3
	.uaword	0xf6cb6fdf

	.uaword	0xfc27ba9a
	.uaword	0x7e43b3ba
	.uaword	0xfedac65f
	.uaword	0x5f33665f
	.uaword	0x5f7ef4c4
	.uaword	0xf9cdf3b6
	.uaword	0x3dd17a6e
	.uaword	0x5f5dfe14
	.uaword	0xaf6dfce5
	.uaword	0x3563f6e5
	.uaword	0xe5474ffc
	.uaword	0xdfbed9f2
	.uaword	0x527ed397
	.uaword	0xd5e58f6f
	.uaword	0xdac65ffe
	.uaword	0x33665ffe

	.uaword	0x7ef4c45f
	.uaword	0xed9b2d5f
	.uaword	0x61f67ef9
	.uaword	0x5d7ec240
	.uaword	0x6dfce55f
	.uaword	0x63f6e5af
	.uaword	0x474ffc35
	.uaword	0xbed9f2e5
	.uaword	0x45ed97df
	.uaword	0xe5bf4df4
	.uaword	0xc65ffed5
	.uaword	0x665ffeda
	.uaword	0xf4c45f33
	.uaword	0x9b2d5f7e
	.uaword	0x187df9ed
	.uaword	0xfe9864cf

	.uaword	0xfce55f5d
	.uaword	0xf6e5af6d
	.uaword	0x4ffc3563
	.uaword	0xd9f2e547
	.uaword	0xed97dfbe
	.uaword	0x9fe1f646
	.uaword	0x79bd5e5
	.uaword	0xd736fef2
	.uaword	0x9a31fbf2
	.uaword	0xf2a327fe
	.uaword	0x6fdf6cf9
	.uaword	0x8fcfe6cb
	.uaword	0x7fa376cb
	.uaword	0x4738abcb
	.uaword	0xaf6dfce5
	.uaword	0x3563f6e5

	.uaword	0xe5474ffc
	.uaword	0xdfbed9f2
	.uaword	0xb396f597
	.uaword	0x7eb467ed
	.uaword	0xfce55f5d
	.uaword	0xf6e5af6d
	.uaword	0x4ffc3563
	.uaword	0xd9f2e547
	.uaword	0xf597dfbe
	.uaword	0x67edb396
	.uaword	0x5f5d7eb4
	.uaword	0xaf6dfce5
	.uaword	0x3563f6e5
	.uaword	0xe5474ffc
	.uaword	0xdfbed9f2
	.uaword	0x1466ef97

	.uaword	0x7eb4676d
	.uaword	0xfce55f5d
	.uaword	0xf6e5af6d
	.uaword	0x4ffc3563
	.uaword	0xd9f2e547
	.uaword	0xf597dfbe
	.uaword	0x67edb396
	.uaword	0x5f5d7eb4
	.uaword	0xaf6dfce5
	.uaword	0x3563f6e5
	.uaword	0xe5474ffc
	.uaword	0xdfbed9f2
	.uaword	0xf4e6cb97
	.uaword	0xfe99d46d
	.uaword	0xfce55f5d
	.uaword	0xf6e5af6d

	.uaword	0x4ffc3563
	.uaword	0xd9f2e547
	.uaword	0xf597dfbe
	.uaword	0x67edb396
	.uaword	0x5f5d7eb4
	.uaword	0xaf6dfce5
	.uaword	0x3563f6e5
	.uaword	0xe5474ffc
	.uaword	0xdfbed9f2
	.uaword	0xb396f597
	.uaword	0x7eb467ed
	.uaword	0xfce55f5d
	.uaword	0xf6e5af6d
	.uaword	0x4ffc3563
	.uaword	0xd9f2e547
	.uaword	0xf597dfbe

	.uaword	0x67edb396
	.uaword	0x595d7eb4
	.uaword	0xe32fffd0
	.uaword	0xb32f7f6d
	.uaword	0x7ae2af19
	.uaword	0xcd962f3f
	.uaword	0x7fbffcf6
	.uaword	0x3d6ba333
	.uaword	0xabcb6fa3
	.uaword	0xb58dbffc
	.uaword	0x66ccbefc
	.uaword	0xfce889bf
	.uaword	0xdb375bbe
	.uaword	0xb3a4fef2
	.uaword	0xad926f7a
	.uaword	0xf2af2ebf

	.uaword	0xf2d736fe
	.uaword	0xfe9a31fb
	.uaword	0xf9f2a327
	.uaword	0xcb6fdf6c
	.uaword	0x327bdef6
	.uaword	0xfc30fbfa
	.uaword	0x7ec1b3ba
	.uaword	0xfedac65f
	.uaword	0x5f33665f
	.uaword	0x5f7ef4c4
	.uaword	0xf9ed9b2d
	.uaword	0xbe59527f
	.uaword	0x1bbfc9db
	.uaword	0xe55f5d7e
	.uaword	0xe5af6dfc
	.uaword	0xfc3563f6

	.uaword	0xf2e5474f
	.uaword	0x97dfbed9
	.uaword	0x6d74e6ef
	.uaword	0x2ae979f9
	.uaword	0x9fd5e577
	.uaword	0x36fef213
	.uaword	0x31fbf2d7
	.uaword	0xa327fe9a
	.uaword	0xdf6cf9f2
	.uaword	0xcbefcb6f
	.uaword	0x9f2dbf1a
	.uaword	0x8fbe252e
	.uaword	0xbffcabcb
	.uaword	0xbefcb58d
	.uaword	0x89bf66cc
	.uaword	0x5bbefce8

	.uaword	0xfdf2db37
	.uaword	0x35eadbbc
	.uaword	0xdf36fbd6
	.uaword	0x2fffeaf2
	.uaword	0x2f7f6de3
	.uaword	0xe2af19b3
	.uaword	0x962f3f7a
	.uaword	0xbffcf6cd
	.uaword	0x1db3e76d
	.uaword	0x1db32dff
	.uaword	0xbfbafcf1
	.uaword	0x5fdbf8cb
	.uaword	0x6bc6eccb
	.uaword	0xcb8f9ef8
	.uaword	0xbf7db3e5
	.uaword	0x6a2cbf2f

	.uaword	0xb87cb6fc
	.uaword	0x2e3ffa96
	.uaword	0x979f00ad
	.uaword	0x97bfb6f1
	.uaword	0xf1d78cd9
	.uaword	0xcb971f3d
	.uaword	0x5f7efb66
	.uaword	0xb7d199bf
	.uaword	0x7a7cffe5
	.uaword	0x75f99d4a
	.uaword	0xb6f1977f
	.uaword	0x8cd997bf
	.uaword	0x1f3df1d7
	.uaword	0xfb66cb97
	.uaword	0x99bf5f7e
	.uaword	0xfbe5b7d1

	.uaword	0x6f1f85d9
	.uaword	0x977f75f9
	.uaword	0x97bfb6f1
	.uaword	0xf1d78cd9
	.uaword	0xcb971f3d
	.uaword	0x5f7efb66
	.uaword	0x64dff3b6
	.uaword	0x7ed396bf
	.uaword	0x75f96f52
	.uaword	0xb6f1977f
	.uaword	0x8cd997bf
	.uaword	0x1f3df1d7
	.uaword	0xfb66cb97
	.uaword	0xf59e5f7e
	.uaword	0xef9344eb
	.uaword	0xf96d74e6

	.uaword	0xfc436875
	.uaword	0xfcb58dbf
	.uaword	0xbf66ccbe
	.uaword	0xbefce889
	.uaword	0xf2db375b
	.uaword	0x8dcefcfd
	.uaword	0xccde2fbf
	.uaword	0xffedd728
	.uaword	0xfef2af2e
	.uaword	0xfbf2d736
	.uaword	0x27fe9a31
	.uaword	0x6cf9f2a3
	.uaword	0xf7cb6fdf
	.uaword	0xfc363af3
	.uaword	0x9af26bbe
	.uaword	0xbafcb7ef

	.uaword	0xdbf8cbbf
	.uaword	0xc6eccb5f
	.uaword	0x8f9ef86b
	.uaword	0x7db3e5cb
	.uaword	0xfca62fbf
	.uaword	0xcb1fdfa4
	.uaword	0x320ccb66
	.uaword	0xd1eaf2c7
	.uaword	0x1b7ff90b
	.uaword	0x987df96b
	.uaword	0xd1137fcd
	.uaword	0x6fb67cf9
	.uaword	0xf9fbe5b7
	.uaword	0x5f7e1b9d
	.uaword	0x96e7d4f7
	.uaword	0x75f96fdf

	.uaword	0xb6f1977f
	.uaword	0x8cd997bf
	.uaword	0x1f3df1d7
	.uaword	0xfb66cb97
	.uaword	0x99bf5f7e
	.uaword	0xfbe5b7d1
	.uaword	0x6fd45659
	.uaword	0x5797fff6
	.uaword	0x6b1b7ff9
	.uaword	0xcd987df9
	.uaword	0xf9d1137f
	.uaword	0xb76fb67c
	.uaword	0x8e59fce5
	.uaword	0x645bfef8
	.uaword	0x9bbd63f4
	.uaword	0x7f75f9f9

	.uaword	0xbfb6f197
	.uaword	0xd78cd997
	.uaword	0x971f3df1
	.uaword	0x7efb66cb
	.uaword	0xdff3b65f
	.uaword	0xcb96bf64
	.uaword	0x356b12b5
	.uaword	0xf957977f
	.uaword	0xf96b1b7f
	.uaword	0x7fcd987d
	.uaword	0x7cf9d113
	.uaword	0xe5b76fb6
	.uaword	0x1b9df9fb
	.uaword	0x537e5f7e
	.uaword	0x6f1f7d49
	.uaword	0xc26875f9

	.uaword	0xb58dbffc
	.uaword	0x66ccbefc
	.uaword	0xfce889bf
	.uaword	0xdb375bbe
	.uaword	0xcefcfdf2
	.uaword	0x9a2fbf8d
	.uaword	0xc9baa6fc
	.uaword	0xeaf2dffe
	.uaword	0x6de32fff
	.uaword	0x19b32f7f
	.uaword	0x3f7ae2af
	.uaword	0xf6cd962f
	.uaword	0x337fbffc
	.uaword	0xf6cb6fa3
	.uaword	0xdf265edf
	.uaword	0xbafcf0ed

	.uaword	0x5ffe81b4
	.uaword	0x5ffedac6
	.uaword	0xc45f3366
	.uaword	0x2d5f7ef4
	.uaword	0x7ef9ed9b
	.uaword	0xdf4667fe
	.uaword	0x39f5fd97
	.uaword	0x7dc2b0e5
	.uaword	0xfed5e5bf
	.uaword	0xfedac65f
	.uaword	0x5f33665f
	.uaword	0x5f7ef4c4
	.uaword	0xf9ed9b2d
	.uaword	0x4667fe7e
	.uaword	0xf6fd97df
	.uaword	0x1bb555d6

	.uaword	0xd5e5bffd
	.uaword	0xdac65ffe
	.uaword	0x33665ffe
	.uaword	0x7ef4c45f
	.uaword	0xed9b2d5f
	.uaword	0x67fe7ef9
	.uaword	0xfd97df46
	.uaword	0x254df9f5
	.uaword	0xe5bf7df4
	.uaword	0xf217a5d5
	.uaword	0xf2d736fe
	.uaword	0xfe9a31fb
	.uaword	0xf9f2a327
	.uaword	0xcb6fdf6c
	.uaword	0xbf59b2ef
	.uaword	0x2789ae2d

	.uaword	0x76cb5fa3
	.uaword	0xfc774dde
	.uaword	0xf8cbbfba
	.uaword	0xeccb5fdb
	.uaword	0x9ef86bc6
	.uaword	0xb3e5cb8f
	.uaword	0xbe2fbf7d
	.uaword	0xb6fc66c9
	.uaword	0x8d9e24ba
	.uaword	0x79db2d7f
	.uaword	0xeaf2df35
	.uaword	0x6de32fff
	.uaword	0x19b32f7f
	.uaword	0x3f7ae2af
	.uaword	0xf6cd962f
	.uaword	0x337fbffc

	.uaword	0xf6cb6fa3
	.uaword	0xdf265edf
	.uaword	0xef54d2e3
	.uaword	0xbffcabcb
	.uaword	0xbefcb58d
	.uaword	0x89bf66cc
	.uaword	0x5bbefce8
	.uaword	0xfdf2db37
	.uaword	0xbf8dcefc
	.uaword	0x25ecfb2f
	.uaword	0xa33779db
	.uaword	0xaf2effed
	.uaword	0xd736fef2
	.uaword	0x9a31fbf2
	.uaword	0xf2a327fe
	.uaword	0x6fdf6cf9

	.uaword	0xbddef3cb
	.uaword	0xfc7d9268
	.uaword	0x2dbf8dce
	.uaword	0xfcab5993
	.uaword	0xfee0b4ba
	.uaword	0xfedac65f
	.uaword	0x5f33665f
	.uaword	0x5f7ef4c4
	.uaword	0xf9ed9b2d
	.uaword	0x44ebf57e
	.uaword	0xb55bfe93
	.uaword	0xff446b72
	.uaword	0x74e6ef96
	.uaword	0x6a75f96d
	.uaword	0x8dbffc01
	.uaword	0xccbefcb5

	.uaword	0xe889bf66
	.uaword	0x375bbefc
	.uaword	0xfcfdf2db
	.uaword	0x2fbf8dce
	.uaword	0x9b787ddb
	.uaword	0xab3b77f
	.uaword	0xcbff9239
	.uaword	0xe50f52ab
	.uaword	0xe5af6dfc
	.uaword	0xfc3563f6
	.uaword	0xf2e5474f
	.uaword	0x97dfbed9
	.uaword	0x6d74e6ef
	.uaword	0xebdb7ef9
	.uaword	0xbdfddbc4
	.uaword	0x74b65198

	.uaword	0x6a75f94d
	.uaword	0x8dbffcc1
	.uaword	0xccbefcb5
	.uaword	0xe889bf66
	.uaword	0x375bbefc
	.uaword	0xfcfdf2db
	.uaword	0x2fbf8dce
	.uaword	0x9b787ddb
	.uaword	0xccdeac7f
	.uaword	0xe86cd728
	.uaword	0xd6eaf29b
	.uaword	0x1b7ff903
	.uaword	0x987df96b
	.uaword	0xd1137fcd
	.uaword	0x6fb67cf9
	.uaword	0xf9fbe5b7

	.uaword	0x5f7e1b9d
	.uaword	0x36f1fab6
	.uaword	0x74356dff
	.uaword	0x6b72f64f
	.uaword	0x56971f26
	.uaword	0xf2cb8fe0
	.uaword	0xf0cb7fcf
	.uaword	0x2fff6d9b
	.uaword	0x2dbf69be
	.uaword	0xfc282caf
	.uaword	0x82cb1fbc
	.uaword	0x9e0f213
	.uaword	0xae80befc
	.uaword	0x7f91b7fc
	.uaword	0x78ccbe2d
	.uaword	0x31fbf2ef

	.uaword	0xa327fe9a
	.uaword	0x9eb7fdf2
	.uaword	0xbafc6a4d
	.uaword	0xcff2cbbf
	.uaword	0x9bf0cb7f
	.uaword	0xbe2fff6d
	.uaword	0xaf2dbf69
	.uaword	0xbcfc282c
	.uaword	0x1382cb1f
	.uaword	0xfc09e0f2
	.uaword	0xfcae80be
	.uaword	0x2d7f91b7
	.uaword	0xef78ccbe
	.uaword	0x9a31fbf2
	.uaword	0xf2a327fe
	.uaword	0x7a9eb7fd

	.uaword	0xbfbafc29
	.uaword	0x7fcff2cb
	.uaword	0x6d9bf0cb
	.uaword	0x69be2fff
	.uaword	0x2caf2dbf
	.uaword	0x1fbcfc28
	.uaword	0xf21382cb
	.uaword	0xbefc09e0
	.uaword	0xb7fcae80
	.uaword	0xbe2d7f91
	.uaword	0xf2ef78cc
	.uaword	0xfe9a31fb
	.uaword	0xfdf2a327
	.uaword	0x297a9eb7
	.uaword	0xcbbfbafc
	.uaword	0xcb7fcff2

	.uaword	0xff6d9bf0
	.uaword	0xbf69be2f
	.uaword	0x282caf2d
	.uaword	0xcb1fbcfc
	.uaword	0xe0f21382
	.uaword	0x80befc09
	.uaword	0x91b7fcae
	.uaword	0xccbe2d7f
	.uaword	0xfbf2ef78
	.uaword	0x27fe9a31
	.uaword	0xb7fdf2a3
	.uaword	0xfc297a9e
	.uaword	0xf2cbbfba
	.uaword	0xf0cb7fcf
	.uaword	0x2fff6d9b
	.uaword	0x2dbf69be

	.uaword	0xfc282caf
	.uaword	0x82cb1fbc
	.uaword	0x9e0f213
	.uaword	0xae80befc
	.uaword	0x7f91b7fc
	.uaword	0x78ccbe2d
	.uaword	0x31fbf2ef
	.uaword	0xa327fe9a
	.uaword	0x9eb7fdf2
	.uaword	0xbafc297a
	.uaword	0xcff2cbbf
	.uaword	0x9bf0cb7f
	.uaword	0xbe2fff6d
	.uaword	0xaf2dbf69
	.uaword	0xbcfc282c
	.uaword	0x1382cb1f

	.uaword	0xfc09e0f2
	.uaword	0xfcae80be
	.uaword	0x2d7f91b7
	.uaword	0xef78ccbe
	.uaword	0x9a31fbf2
	.uaword	0xf2a327fe
	.uaword	0x7a9eb7fd
	.uaword	0xbfbafc29
	.uaword	0x7fcff2cb
	.uaword	0x6d9bf0cb
	.uaword	0x69be2fff
	.uaword	0x2caf2dbf
	.uaword	0x1fbcfc28
	.uaword	0xf21382cb
	.uaword	0xbefc09e0
	.uaword	0xb7fcae80

	.uaword	0xbe2d7f91
	.uaword	0xf2ef78cc
	.uaword	0xfe9a31fb
	.uaword	0xfdf2a327
	.uaword	0x297a9eb7
	.uaword	0xcbbfbafc
	.uaword	0xcb7fcff2
	.uaword	0xff6d9bf0
	.uaword	0xbf69be2f
	.uaword	0x282caf2d
	.uaword	0xcb1fbcfc
	.uaword	0xe0f21382
	.uaword	0x80befc09
	.uaword	0x91b7fcae
	.uaword	0xccbe2d7f
	.uaword	0xfbf2ef78

	.uaword	0x27fe9a31
	.uaword	0xb7fdf2a3
	.uaword	0xfc297a9e
	.uaword	0xfe60b7ba
	.uaword	0xfe7b965f
	.uaword	0x6fdb845f
	.uaword	0x4df37df9
	.uaword	0x61796df9
	.uaword	0xfee0e547
	.uaword	0x979f105c
	.uaword	0xf4e54f00
	.uaword	0xbce57705
	.uaword	0xf66df98b
	.uaword	0x977fc763
	.uaword	0xf1d78cd9
	.uaword	0xe1971f3d

	.uaword	0x7d49d887
	.uaword	0x75f94df9
	.uaword	0x3c9cc97f
	.uaword	0x16211bf0
	.uaword	0x10f0
	.uaword	0xf08b3c00
	.uaword	0x4000f0d0
	.uaword	0xf010000
	.uaword	0xc006916b
	.uaword	0x1
	.uaword	0xc49cd807
	.uaword	0x40021
	.uaword	0xaa270000
	.uaword	0x10b0023b
	.uaword	0x10
	.uaword	0x2f10a99d

	.uaword	0x4040e0
	.uaword	0x227e0300
	.uaword	0x1813310
	.uaword	0xc000000
	.uaword	0xf1c08413
	.uaword	0x404
	.uaword	0x15722700
	.uaword	0x10406c01
	.uaword	0x45000000
	.uaword	0xb11d083b
	.uaword	0x4000
	.uaword	0xe0671401
	.uaword	0x14628
	.uaword	0xe2050000
	.uaword	0x1c2201ac
	.uaword	0x4

	.uaword	0x21fa67
	.uaword	0x10006c
	.uaword	0xc89f0100
	.uaword	0xe003dc
	.uaword	0x7000040
	.uaword	0x410a27e
	.uaword	0x1c0
	.uaword	0x94091800
	.uaword	0x400e780
	.uaword	0x67000000
	.uaword	0xec0023ba
	.uaword	0x1010
	.uaword	0x98984200
	.uaword	0x4000420d
	.uaword	0x10090000
	.uaword	0x400160e1

	.uaword	0x1
	.uaword	0xc0833704
	.uaword	0x420fc
	.uaword	0x6e100000
	.uaword	0x90340006
	.uaword	0x10
	.uaword	0x1201841
	.uaword	0x404052
	.uaword	0x67100100
	.uaword	0x1c907b0
	.uaword	0x4000000
	.uaword	0xf580890d
	.uaword	0x424
	.uaword	0x1f561000
	.uaword	0x10c0f002
	.uaword	0x5e000000

	.uaword	0xf302084b
	.uaword	0x4040
	.uaword	0x4422f300
	.uaword	0x14e43
	.uaword	0x3f360000
	.uaword	0x194091
	.uaword	0x4
	.uaword	0x5c256d9
	.uaword	0x100094
	.uaword	0xb8600300
	.uaword	0x80000398
	.uaword	0xd000040
	.uaword	0x16a0e383
	.uaword	0x102
	.uaword	0xb6ec3700
	.uaword	0x408a2c1

	.uaword	0x10000
	.uaword	0xf4055c9e
	.uaword	0x1000
	.uaword	0x4c982104
	.uaword	0x40008001
	.uaword	0xf70d0000
	.uaword	0x45b491aa
	.uaword	0x1
	.uaword	0x822546
	.uaword	0x4007e
	.uaword	0xce180100
	.uaword	0x240208
	.uaword	0x4000010
	.uaword	0x920d861
	.uaword	0x400030
	.uaword	0xe0881100

	.uaword	0x1402780
	.uaword	0x46000000
	.uaword	0xb481b057
	.uaword	0x400
	.uaword	0x1c5e1801
	.uaword	0x10200802
	.uaword	0x7c040000
	.uaword	0x501c24e8
	.uaword	0x4080
	.uaword	0x60a07c15
	.uaword	0x10009
	.uaword	0x1540000
	.uaword	0x43c09b
	.uaword	0x1000004
	.uaword	0x231b650
	.uaword	0x1000d0

	.uaword	0x6b7e0400
	.uaword	0xc0200d4c
	.uaword	0x17000040
	.uaword	0x740227c
	.uaword	0x180
	.uaword	0x842b5c00
	.uaword	0x4004680
	.uaword	0x80010000
	.uaword	0x100009e6
	.uaword	0x1000
	.uaword	0x3098c405
	.uaword	0x4000d005
	.uaword	0x12170000
	.uaword	0x1be0e0
	.uaword	0x1
	.uaword	0x81b32146

	.uaword	0x410d6
	.uaword	0x1ea10100
	.uaword	0x5c0449
	.uaword	0x6000010
	.uaword	0x40c5aa4
	.uaword	0x4000d0
	.uaword	0xe2001b00
	.uaword	0x1000610
	.uaword	0x37000000
	.uaword	0x2781bad2
	.uaword	0x434
	.uaword	0xc26ec101
	.uaword	0x10006004
	.uaword	0x62030000
	.uaword	0x5401a8f8
	.uaword	0x4000

	.uaword	0xc0e1870d
	.uaword	0x1103f
	.uaword	0x94030000
	.uaword	0x7c338006
	.uaword	0x4
	.uaword	0x966420f
	.uaword	0x10f03d
	.uaword	0x9ba50700
	.uaword	0x701108
	.uaword	0x40
	.uaword	0x2d306298
	.uaword	0x1e1
	.uaword	0xbdd40300
	.uaword	0x484dc0b
	.uaword	0x7020000
	.uaword	0x5c0c3f2a

	.uaword	0x1000
	.uaword	0x8fb2508
	.uaword	0x4000d011
	.uaword	0xfa200000
	.uaword	0x813bd027
	.uaword	0x1
	.uaword	0xc0864f86
	.uaword	0x4004a
	.uaword	0xda0f0200
	.uaword	0x20b4017b
	.uaword	0x8000010
	.uaword	0x35e86a1c
	.uaword	0x40c080
	.uaword	0x6c172300
	.uaword	0x1404720
	.uaword	0x8d000000

	.uaword	0xe48094e0
	.uaword	0x404
	.uaword	0x1bd63002
	.uaword	0x1020f400
	.uaword	0xc4080000
	.uaword	0x200634d8
	.uaword	0x4080
	.uaword	0x50640c23
	.uaword	0x1021f
	.uaword	0x3b960000
	.uaword	0x16c08a
	.uaword	0x2000004
	.uaword	0x42d207
	.uaword	0x107058
	.uaword	0x78a00900
	.uaword	0xb00184

	.uaword	0x20000040
	.uaword	0x16106201
	.uaword	0x187
	.uaword	0x24b40700
	.uaword	0x5024400a
	.uaword	0xa01017
	.uaword	0x33538c
	.uaword	0x94110414
	.uaword	0x80a37b68
	.uaword	0x8d2e02
	.uaword	0x10280a4
	.uaword	0x806d6c04
	.uaword	0x6c5901
	.uaword	0x12d40104
	.uaword	0xc9d202
	.uaword	0x24a60308

	.uaword	0x7ce505
	.uaword	0x48480710
	.uaword	0xb0d54a0c
	.uaword	0x90f84600
	.uaword	0x40589719
	.uaword	0x30138a00
	.uaword	0x400bf35
	.uaword	0x1ff87b03
	.uaword	0xfee600c1
	.uaword	0x3b40f007
	.uaword	0x8002ae1f
	.uaword	0x81800ff9
	.uaword	0x5708f001
	.uaword	0x9ea5af0
	.uaword	0x22a8037f
	.uaword	0x9e1190d5

	.uaword	0x806c91a0
	.uaword	0xa8056c09
	.uaword	0x13d812f4
	.uaword	0xf0f35061
	.uaword	0xee31604b
	.uaword	0x5b82ba
	.uaword	0x8d005b02
	.uaword	0x46802d01
	.uaword	0x23c09680
	.uaword	0x50604540
	.uaword	0x28902229
	.uaword	0x2205b2a
	.uaword	0x5b02205b
	.uaword	0x205b0220
	.uaword	0x69013b02
	.uaword	0x8a0b5040

	.uaword	0x505ee001
	.uaword	0x50002364
	.uaword	0x80028330
	.uaword	0x6c034051
	.uaword	0x96406405
	.uaword	0x9c250c4
	.uaword	0x200c456c
	.uaword	0x8230c496
	.uaword	0x210d115b
	.uaword	0x5040a304
	.uaword	0x436c09c2
	.uaword	0x1b842308
	.uaword	0x10a0754
	.uaword	0xf507030
	.uaword	0x48809283
	.uaword	0x200a141d

	.uaword	0x750a0ec
	.uaword	0x3db00085
	.uaword	0xf1410528
	.uaword	0xca0f4c40
	.uaword	0x50805000
	.uaword	0x80128418
	.uaword	0x142108
	.uaword	0xea00c81
	.uaword	0xe8008508
	.uaword	0x2042845
	.uaword	0x11064031
	.uaword	0x509000ce
	.uaword	0x49928407
	.uaword	0x80a28401
	.uaword	0x894256c
	.uaword	0x97e3181

	.uaword	0x9721c67
	.uaword	0x1c67117e
	.uaword	0x721cc771
	.uaword	0x67317e09
	.uaword	0x1cc7711c
	.uaword	0x711cc771
	.uaword	0xc7711cc7
	.uaword	0x1cc7711c
	.uaword	0x37e0972
	.uaword	0xdf825f8
	.uaword	0x3fe09780
	.uaword	0xe7840782
	.uaword	0x561d01
	.uaword	0xc1eb9300
	.uaword	0x81e54900
	.uaword	0xf0a22500

	.uaword	0x60d111c0
	.uaword	0xb03a0980
	.uaword	0xd730850
	.uaword	0x3050046
	.uaword	0x78c21d82
	.uaword	0x825cd805
	.uaword	0xa001928
	.uaword	0x8db70045
	.uaword	0x200b45f0
	.uaword	0x80805801
	.uaword	0x21002017
	.uaword	0x180c0a2
	.uaword	0xd546409f
	.uaword	0x72460080
	.uaword	0x35238010
	.uaword	0xaa118008

	.uaword	0xdb086084
	.uaword	0x6a044042
	.uaword	0x34022821
	.uaword	0x190198d0
	.uaword	0x8c004e88
	.uaword	0x46002864
	.uaword	0x238014b2
	.uaword	0x11800a81
	.uaword	0x860859e
	.uaword	0x980cb1
	.uaword	0xa0d1e086
	.uaword	0xe0589b04
	.uaword	0x742c4d02
	.uaword	0x3c193202
	.uaword	0x60ea5800
	.uaword	0x10c41d00

	.uaword	0xcbd00d40
	.uaword	0xbf2b0406
	.uaword	0x19270288
	.uaword	0x61160148
	.uaword	0x7a11c084
	.uaword	0x1a015017
	.uaword	0x1140a5e1
	.uaword	0x8c0fea0
	.uaword	0x2706b70
	.uaword	0xc02c2b
	.uaword	0x404c866c
	.uaword	0x8780a801
	.uaword	0x800d820
	.uaword	0x820d71
	.uaword	0xad06
	.uaword	0xef711400

	.uaword	0xdf
	.uaword	0xc3e1a00
	.uaword	0x40f16a
	.uaword	0x4700000
	.uaword	0x400
	.uaword	0x61f8c300
	.uaword	0x804fae
	.uaword	0x2c00100
	.uaword	0x2000
	.uaword	0x60e1f702
	.uaword	0x3eba
	.uaword	0x8000700
	.uaword	0xc000
	.uaword	0x57157c3a
	.uaword	0xc0a7
	.uaword	0x8e000

	.uaword	0x5000020
	.uaword	0x8c3858f
	.uaword	0xf8
	.uaword	0x580001c
	.uaword	0x2e000000
	.uaword	0x41bc427f
	.uaword	0xb6a7
	.uaword	0x10e0000
	.uaword	0x300
	.uaword	0x91df0a00
	.uaword	0xc0b6370e
	.uaword	0x1000001
	.uaword	0x700020c0
	.uaword	0x37020000
	.uaword	0x6c70cf2
	.uaword	0x2000d8

	.uaword	0x43800
	.uaword	0x10
	.uaword	0x10837e2a
	.uaword	0xb6c35331
	.uaword	0x0
	.uaword	0x480000e
	.uaword	0xa000080
	.uaword	0x210ca11f
	.uaword	0xdbe2
	.uaword	0x70000
	.uaword	0x800280
	.uaword	0xc88f0600
	.uaword	0x60bb1cae
	.uaword	0x8000
	.uaword	0x580008e0
	.uaword	0x8f050000

	.uaword	0xdb1c61c8
	.uaword	0x800060
	.uaword	0x4e000
	.uaword	0x5000060
	.uaword	0x1c54c88f
	.uaword	0x800060fb
	.uaword	0x4e00000
	.uaword	0x6800
	.uaword	0x53c88f05
	.uaword	0x601b1d
	.uaword	0xe0000080
	.uaword	0x700004
	.uaword	0xd08f0500
	.uaword	0xf6003ad
	.uaword	0xd84e
	.uaword	0x1380000

	.uaword	0x1e00
	.uaword	0x18f46301
	.uaword	0x4001d900
	.uaword	0xb6d50d
	.uaword	0xe000000
	.uaword	0x84000
	.uaword	0xfd580000
	.uaword	0x6236c00a
	.uaword	0x80edf509
	.uaword	0x3000000
	.uaword	0x20021080
	.uaword	0x3f1c0000
	.uaword	0x17174841
	.uaword	0xe0e78f3f
	.uaword	0x0
	.uaword	0x0

	.uaword	0x1d000000
	.uaword	0x609b
	.uaword	0x4e00000
	.uaword	0x9000
	.uaword	0x51d00f07
	.uaword	0x2d66c505
	.uaword	0xb839
	.uaword	0x0
	.uaword	0x0
	.uaword	0xd86e0700
	.uaword	0x0
	.uaword	0x26000138
	.uaword	0xc3010000
	.uaword	0x710114f4
	.uaword	0x7efefc61
	.uaword	0x0

	.uaword	0x0
	.uaword	0x1000000
	.uaword	0xb6dd
	.uaword	0xe0000
	.uaword	0xa40
	.uaword	0x4fd7000
	.uaword	0x46525cf0
	.uaword	0x801b1c
	.uaword	0x0
	.uaword	0x0
	.uaword	0xed770000
	.uaword	0x80
	.uaword	0x2108003
	.uaword	0x1c0000a0
	.uaword	0x1738413f
	.uaword	0x710800b

	.uaword	0xe0
	.uaword	0x0
	.uaword	0x0
	.uaword	0x601b1e
	.uaword	0xe0000000
	.uaword	0xb00004
	.uaword	0xd00f0700
	.uaword	0xe2c4054d
	.uaword	0xb8499a
	.uaword	0x0
	.uaword	0x0
	.uaword	0x8e070000
	.uaword	0xd8
	.uaword	0x13800
	.uaword	0x100002e
	.uaword	0x113f4c3

	.uaword	0xfefef570
	.uaword	0x7e
	.uaword	0x0
	.uaword	0x0
	.uaword	0xb6e501
	.uaword	0xe000000
	.uaword	0xc4000
	.uaword	0xfd700000
	.uaword	0x495cb004
	.uaword	0x801b2d8d
	.uaword	0x0
	.uaword	0x0
	.uaword	0x79000000
	.uaword	0x80ed
	.uaword	0x10800300
	.uaword	0x2003

	.uaword	0x28413f1c
	.uaword	0x10a00d17
	.uaword	0xe007
	.uaword	0x0
	.uaword	0x0
	.uaword	0x609b1e00
	.uaword	0x0
	.uaword	0xd00004e0
	.uaword	0xf070000
	.uaword	0xc40549d0
	.uaword	0xb8510b5f
	.uaword	0x0
	.uaword	0x0
	.uaword	0x7000000
	.uaword	0xd8ae
	.uaword	0x1380000

	.uaword	0x3600
	.uaword	0x12f4c301
	.uaword	0xfe377101
	.uaword	0x7efe
	.uaword	0x0
	.uaword	0x0
	.uaword	0xb6ed0100
	.uaword	0x0
	.uaword	0xe40000e
	.uaword	0x70000000
	.uaword	0x5c7004fd
	.uaword	0x9b3d5441
	.uaword	0x80
	.uaword	0x0
	.uaword	0x0
	.uaword	0x80ed7b

	.uaword	0x80030000
	.uaword	0xa00310
	.uaword	0x413f1c00
	.uaword	0xc00f1718
	.uaword	0xe00710
	.uaword	0x0
	.uaword	0x0
	.uaword	0x1b1f0000
	.uaword	0x60
	.uaword	0x4e000
	.uaword	0x70000f0
	.uaword	0x545d00f
	.uaword	0x31bce9c5
	.uaword	0xb8
	.uaword	0x0
	.uaword	0x0

	.uaword	0xd8ce07
	.uaword	0x38000000
	.uaword	0x3e0001
	.uaword	0xf4c30100
	.uaword	0x7b710111
	.uaword	0x7efefe
	.uaword	0x0
	.uaword	0x0
	.uaword	0xf5010000
	.uaword	0xb6
	.uaword	0x40000e00
	.uaword	0x10
	.uaword	0x3004fd70
	.uaword	0xc7cd1c5c
	.uaword	0x801b
	.uaword	0x0

	.uaword	0x0
	.uaword	0x80ed7d00
	.uaword	0x3000000
	.uaword	0x20041080
	.uaword	0x3f1c0000
	.uaword	0x11170841
	.uaword	0xe00710e0
	.uaword	0x0
	.uaword	0x0
	.uaword	0x1f000000
	.uaword	0x609b
	.uaword	0x4e00000
	.uaword	0x1001
	.uaword	0x41d00f07
	.uaword	0xf4afc505
	.uaword	0xb8b1

	.uaword	0x0
	.uaword	0x0
	.uaword	0xd8ee0700
	.uaword	0x0
	.uaword	0x46000138
	.uaword	0xc3010000
	.uaword	0x710110f4
	.uaword	0x7e00012e
	.uaword	0x0
	.uaword	0x0
	.uaword	0x1000000
	.uaword	0xb6fd
	.uaword	0xe0000
	.uaword	0x1240
	.uaword	0x3fd7000
	.uaword	0x31185cf0

	.uaword	0x809b4f
	.uaword	0x0
	.uaword	0x0
	.uaword	0xed7f0000
	.uaword	0x80
	.uaword	0x4108003
	.uaword	0x1c0000a0
	.uaword	0x17f8403f
	.uaword	0x710e013
	.uaword	0xe0
	.uaword	0x0
	.uaword	0x0
	.uaword	0x801b10
	.uaword	0xe0000000
	.uaword	0x300104
	.uaword	0xd00f0700

	.uaword	0x41c1053d
	.uaword	0xb8814d
	.uaword	0x0
	.uaword	0x0
	.uaword	0xe040000
	.uaword	0xe0
	.uaword	0x13800
	.uaword	0x100004e
	.uaword	0x10ff4c3
	.uaword	0x16071
	.uaword	0x7e
	.uaword	0x0
	.uaword	0x0
	.uaword	0xb80501
	.uaword	0xe000000
	.uaword	0x144000

	.uaword	0x56140000
	.uaword	0xa0d85708
	.uaword	0x38000000
	.uaword	0x400a2000
	.uaword	0xb0a0000
	.uaword	0x54002204
	.uaword	0x1c000000
	.uaword	0x40051000
	.uaword	0xb5060000
	.uaword	0x2a387d81
	.uaword	0xe000000
	.uaword	0xb0020800
	.uaword	0x52030000
	.uaword	0x15ec56c1
	.uaword	0x7000000
	.uaword	0x60010400

	.uaword	0xa5010000
	.uaword	0xa7b8360
	.uaword	0x3000080
	.uaword	0xb4000280
	.uaword	0xd0000000
	.uaword	0x53f55b0
	.uaword	0x1004040
	.uaword	0x5c0001c0
	.uaword	0x67000000
	.uaword	0xa2992058
	.uaword	0x20c0
	.uaword	0x878f80e3
	.uaword	0x2f000080
	.uaword	0xb7b9b4af
	.uaword	0xaf9c9cb1
	.uaword	0xb0b1b9b9

	.uaword	0x801733b7
	.uaword	0xd6130000
	.uaword	0xb820b503
	.uaword	0x38000000
	.uaword	0xc2000
	.uaword	0xcb090000
	.uaword	0x1aee4865
	.uaword	0x7000000
	.uaword	0x21850
	.uaword	0xc4
	.uaword	0xa640b28a
	.uaword	0x40804d
	.uaword	0x80a0c001
	.uaword	0x900104
	.uaword	0x607d0200
	.uaword	0x9b583a

	.uaword	0x80030080
	.uaword	0xcc0002
	.uaword	0xb09a0000
	.uaword	0x808eaa6f
	.uaword	0xc0010040
	.uaword	0x680001
	.uaword	0x599e0000
	.uaword	0x40e7590e
	.uaword	0xe0000022
	.uaword	0x20450
	.uaword	0xd4
	.uaword	0x1c61b688
	.uaword	0x309c
	.uaword	0x1750000
	.uaword	0x800d2000
	.uaword	0xab130000

	.uaword	0xc3d7b965
	.uaword	0x0
	.uaword	0x2105007
	.uaword	0xdc00
	.uaword	0x6fb09800
	.uaword	0xb529
	.uaword	0xc0010040
	.uaword	0x700001
	.uaword	0x584b0000
	.uaword	0x80fa9634
	.uaword	0x0
	.uaword	0x398000e0
	.uaword	0x4e000000
	.uaword	0x1722182d
	.uaword	0x70
	.uaword	0x21c00

	.uaword	0x10000e8
	.uaword	0x85eb436
	.uaword	0xc0dd
	.uaword	0x8700000
	.uaword	0xb003
	.uaword	0xbcd0d204
	.uaword	0x7725
	.uaword	0xc0010000
	.uaword	0xf20
	.uaword	0x453b0700
	.uaword	0xdc9db0
	.uaword	0x7000000
	.uaword	0x3d8000
	.uaword	0x2d330000
	.uaword	0x70030387
	.uaword	0x0

	.uaword	0x800421d
	.uaword	0xe003
	.uaword	0x50c15202
	.uaword	0xdcdd
	.uaword	0x70000
	.uaword	0xf80104
	.uaword	0x60650100
	.uaword	0x80ee40c0
	.uaword	0x3000000
	.uaword	0x10280
	.uaword	0xb0000000
	.uaword	0x37a262b0
	.uaword	0x40
	.uaword	0x1c001
	.uaword	0x82
	.uaword	0x19315857

	.uaword	0xa0bb
	.uaword	0xe00000
	.uaword	0x4280
	.uaword	0x172c2b00
	.uaword	0xd07d2d
	.uaword	0x70000000
	.uaword	0x80474000
	.uaword	0xa7240000
	.uaword	0x262e9
	.uaword	0x91
	.uaword	0xc6d24f47
	.uaword	0x240101
	.uaword	0x186c0000
	.uaword	0x4038
	.uaword	0x80e10000
	.uaword	0x804987

	.uaword	0xe9a72300
	.uaword	0x94800064
	.uaword	0x46000000
	.uaword	0x4cad24f
	.uaword	0x2a01
	.uaword	0xa59f8e00
	.uaword	0x58020298
	.uaword	0x15010000
	.uaword	0x10384b3f
	.uaword	0xb804
	.uaword	0x967e2202
	.uaword	0x80092080
	.uaword	0x34040000
	.uaword	0x10202dfd
	.uaword	0x2013
	.uaword	0x5afa4908

	.uaword	0x80261080
	.uaword	0x53100000
	.uaword	0x81b5f4
	.uaword	0x804d
	.uaword	0x6ce92720
	.uaword	0x9c0001
	.uaword	0x4f3f0000
	.uaword	0x104dad2
	.uaword	0x3a
	.uaword	0xb8a59f7c
	.uaword	0x780208
	.uaword	0x3ff50000
	.uaword	0x410784b
	.uaword	0x10000f8
	.uaword	0x977ee2
	.uaword	0xa20

	.uaword	0xfdb40300
	.uaword	0x1440202e
	.uaword	0x7000040
	.uaword	0x805cfa49
	.uaword	0xc02880
	.uaword	0xf4530e00
	.uaword	0x520081b9
	.uaword	0x24000000
	.uaword	0x274e9a7
	.uaword	0xa500
	.uaword	0xd24f3800
	.uaword	0x4c0104ea
	.uaword	0x70000000
	.uaword	0x8d8a59f
	.uaword	0x9c02
	.uaword	0x4b3f3101

	.uaword	0x400510b8
	.uaword	0x5a020000
	.uaword	0x2080977e
	.uaword	0x900a
	.uaword	0x2ffd1404
	.uaword	0x40154020
	.uaword	0xe9050000
	.uaword	0x80805efa
	.uaword	0xc02a
	.uaword	0xbdf4530e
	.uaword	0x560081
	.uaword	0xa7240000
	.uaword	0x27ce9
	.uaword	0xa5bd101c
	.uaword	0xfc8401c2
	.uaword	0xfc37bb80

	.uaword	0x207f6681
	.uaword	0x20bfc371
	.uaword	0x6558f558
	.uaword	0xa30bc8cf
	.uaword	0x4dc2ab19
	.uaword	0x1880fc6e
	.uaword	0x70820128
	.uaword	0xbc016073
	.uaword	0x6f00d800
	.uaword	0x1b003600
	.uaword	0x9d42000
	.uaword	0x6a36968d
	.uaword	0x37d93848
	.uaword	0x310bf293
	.uaword	0x6ff283fc
	.uaword	0x7fe332c8

	.uaword	0xb382ac8
	.uaword	0x38ea59f2
	.uaword	0xc2aff00b
	.uaword	0x663d30aa
	.uaword	0xb3fca656
	.uaword	0xfcaa5cd9
	.uaword	0xa8f77ebb
	.uaword	0x2b3f29e0
	.uaword	0xc8cfa1a8
	.uaword	0x721c930c
	.uaword	0xb30cf2df
	.uaword	0x35c81fa3
	.uaword	0xdf2f6ea3
	.uaword	0xb229c86f
	.uaword	0xfc203ffa
	.uaword	0x88aaf02b

	.uaword	0x9d81fc0d
	.uaword	0xc86fdb68
	.uaword	0x357ac70e
	.uaword	0x80a12afc
	.uaword	0xf0db25ff
	.uaword	0xfc0184aa
	.uaword	0x3f8ca02a
	.uaword	0xf28ffc23
	.uaword	0x23ffc83f
	.uaword	0x3ff28ffc
	.uaword	0xfc23ffc8
	.uaword	0xc83ff28f
	.uaword	0x8ffc23ff
	.uaword	0xffc83ff2
	.uaword	0xf28ffc23
	.uaword	0x23ffc83f

	.uaword	0x3ff28ffc
	.uaword	0xfc23ffc8
	.uaword	0xc83ff28f
	.uaword	0x8ffc23ff
	.uaword	0xffc83ff2
	.uaword	0xf28ffc23
	.uaword	0x23ffc83f
	.uaword	0x3ff28ffc
	.uaword	0xfc23ffc8
	.uaword	0xc83ff28f
	.uaword	0x8ffc23ff
	.uaword	0xaac2aff0
	.uaword	0x5df21300
	.uaword	0x2afc20bf
	.uaword	0xa7f899f
	.uaword	0x2fba81fc

	.uaword	0xbe6c49b2
	.uaword	0x81fcfccd
	.uaword	0xf2df36da
	.uaword	0x8ccb3509
	.uaword	0xf283fc67
	.uaword	0x5a20ff59
	.uaword	0x8dde78cc
	.uaword	0xc1a70abf
	.uaword	0x20bfc24f
	.uaword	0xc87f96fc
	.uaword	0xbfed650c
	.uaword	0x2c992b20
	.uaword	0xa36f49be
	.uaword	0x157aaaf0
	.uaword	0xff283fc
	.uaword	0xb3fc76c9

	.uaword	0x67c90ff2
	.uaword	0xf5da81fc
	.uaword	0xfcf649a2
	.uaword	0xc90ff2b3
	.uaword	0x9e2afc76
	.uaword	0x203fc033
	.uaword	0x36da81fc
	.uaword	0xc80ff2df
	.uaword	0x83fc203f
	.uaword	0x3fc80ff2
	.uaword	0xf283fc20
	.uaword	0x203fc80f
	.uaword	0x1f283fc
	.uaword	0xcd2f203f
	.uaword	0xf283fce8
	.uaword	0xf2db3306

	.uaword	0x203fc8ff
	.uaword	0x33ba81fc
	.uaword	0x20ff4da2
	.uaword	0xff283fc
	.uaword	0x6ca21cc8
	.uaword	0xc86f9fb1
	.uaword	0x81fc203f
	.uaword	0x9761d563
	.uaword	0x83fc203f
	.uaword	0x3fc80ff2
	.uaword	0xf283fc20
	.uaword	0x6dd7ec03
	.uaword	0x83fc20ff
	.uaword	0xbfaf02f2
	.uaword	0xd076aaf0
	.uaword	0xf283fc00

	.uaword	0x203fc80f
	.uaword	0xff283fc
	.uaword	0xfc203fc8
	.uaword	0xc80ff283
	.uaword	0x83fc203f
	.uaword	0x3fc80ff2
	.uaword	0xf283fc20
	.uaword	0x203fc80f
	.uaword	0xdb672d83
	.uaword	0x20c80ff2
	.uaword	0x20ff59cb
	.uaword	0x6f283fc
	.uaword	0x366adb64
	.uaword	0xff283fc
	.uaword	0xfc203fc8
	.uaword	0xc80ff283

	.uaword	0x83fc203f
	.uaword	0x3fc80ff2
	.uaword	0xf283fc20
	.uaword	0x203fc80f
	.uaword	0xff283fc
	.uaword	0xfc203fc8
	.uaword	0xc80ff283
	.uaword	0x81fc203f
	.uaword	0xfde236ba
	.uaword	0xf283fcf6
	.uaword	0x8fc22407
	.uaword	0xa70abfc2
	.uaword	0xec81f41
	.uaword	0xfc1bb66d
	.uaword	0x57950482
	.uaword	0x49a103f2

	.uaword	0xc8a9c2df
	.uaword	0x4550f27b
	.uaword	0xc90ff2db
	.uaword	0xff29f49
	.uaword	0xf29f45c9
	.uaword	0x9f48c90f
	.uaword	0x41c90ff2
	.uaword	0xa9e1f203
	.uaword	0x52f283fc
	.uaword	0x9f022e3f
	.uaword	0x3b482ac8
	.uaword	0x41c90ff2
	.uaword	0xa9e1f203
	.uaword	0xff283fc
	.uaword	0x6fa322c8
	.uaword	0x4bc0a9c2

	.uaword	0x3fc80ff2
	.uaword	0x3f8a7220
	.uaword	0xe84dbe20
	.uaword	0xc80ff2d7
	.uaword	0x2f5f203f
	.uaword	0x4bc0a9c2
	.uaword	0x3fc80ff2
	.uaword	0x3f8a7220
	.uaword	0xbf2abf20
	.uaword	0xf283fc20
	.uaword	0x203fc80f
	.uaword	0xaac22f5f
	.uaword	0xf2030c63
	.uaword	0x866d9b03
	.uaword	0xb7fc20ff
	.uaword	0xfcb702f2

	.uaword	0xdb24fa82
	.uaword	0xc632c87f
	.uaword	0xb329c88f
	.uaword	0x83fcb75d
	.uaword	0xfde2365a
	.uaword	0x9fca20ff
	.uaword	0xb8fc00c8
	.uaword	0x92244992
	.uaword	0xb7fc207f
	.uaword	0xfc720cf2
	.uaword	0x9b2f6982
	.uaword	0xccdee48b
	.uaword	0xfff3dbb1
	.uaword	0xa90abfc2
	.uaword	0xfc8af61
	.uaword	0xfcb75db3

	.uaword	0xef68ec81
	.uaword	0x89de263a
	.uaword	0x8d6e20ff
	.uaword	0xbf7dbfb8
	.uaword	0xf23a80a
	.uaword	0x6f1741c9
	.uaword	0x26253fc8
	.uaword	0x253fc87f
	.uaword	0x3fc87f16
	.uaword	0xc87f2225
	.uaword	0xff59cb3a
	.uaword	0x9994fc20
	.uaword	0x4dea20ff
	.uaword	0x94fc20bf
	.uaword	0x1a2e3f10
	.uaword	0xcb31c89f

	.uaword	0x253fc87f
	.uaword	0x86cb0f04
	.uaword	0x5eaaf0a7
	.uaword	0xf283fc1d
	.uaword	0x203fc80f
	.uaword	0xff283fc
	.uaword	0xfc203fc8
	.uaword	0xc80ff283
	.uaword	0x83fc203f
	.uaword	0xec80ff2
	.uaword	0x32c87fc6
	.uaword	0xe80df2a7
	.uaword	0x3fc87fdb
	.uaword	0x879cda25
	.uaword	0x83fc20bf
	.uaword	0x3fc80ff2

	.uaword	0xf283fc20
	.uaword	0x203fc80f
	.uaword	0xff283fc
	.uaword	0xfc203fc8
	.uaword	0xb103f283
	.uaword	0xa90cf29f
	.uaword	0x367a83fc
	.uaword	0xc90ff2df
	.uaword	0xa42afc76
	.uaword	0xfc0abf83
	.uaword	0xdb689d81
	.uaword	0xc70ec86f
	.uaword	0x28fc357a
	.uaword	0x4d0302a
	.uaword	0x20044860
	.uaword	0x42101842

	.uaword	0x4bd1004
	.uaword	0x83b67663
	.uaword	0x5e041061
	.uaword	0x8114082
	.uaword	0x502102
	.uaword	0x42e59d84
	.uaword	0x1401a488
	.uaword	0x27047048
	.uaword	0x2
	.uaword	0x181c4800
	.uaword	0x204070a
	.uaword	0x58c04041
	.uaword	0x80020334
	.uaword	0xddd08802
	.uaword	0x882004b5
	.uaword	0x18433004

	.uaword	0x6c048320
	.uaword	0xb223e845
	.uaword	0xd6066d61
	.uaword	0x8626
	.uaword	0x8098ab01
	.uaword	0x40806164
	.uaword	0xc0010000
	.uaword	0x800820
	.uaword	0x8cb91a00
	.uaword	0x41846b6
	.uaword	0x1c000000
	.uaword	0x8a0002
	.uaword	0x90ff0100
	.uaword	0x6058595d
	.uaword	0x10
	.uaword	0x11000870

	.uaword	0x2200097a
	.uaword	0xa4200210
	.uaword	0x409d8508
	.uaword	0x123ca24d
	.uaword	0x62120228
	.uaword	0x4522494
	.uaword	0x46a0ce22
	.uaword	0x20811ed1
	.uaword	0x50672105
	.uaword	0x48f6843
	.uaword	0x2843a8b
	.uaword	0x810a911
	.uaword	0x851421a0
	.uaword	0x45b47302
	.uaword	0xa20d009b
	.uaword	0x22a123c

	.uaword	0xfd5b2414
	.uaword	0x494804
	.uaword	0x28029022
	.uaword	0x3606e090
	.uaword	0x8c61
	.uaword	0xc1810400
	.uaword	0x5090a080
	.uaword	0x607182c
	.uaword	0x80e08183
	.uaword	0x162a5098
	.uaword	0xe1020609
	.uaword	0x386cd090
	.uaword	0x83870e10
	.uaword	0x901811e1
	.uaword	0x8a13264a
	.uaword	0x50012205

	.uaword	0x162c44ac
	.uaword	0xe1e24588
	.uaword	0x164c088
	.uaword	0x9fb26281
	.uaword	0x5a6dd5cf
	.uaword	0x2406dd4
	.uaword	0xb6ddd088
	.uaword	0xd7b66ddb
	.uaword	0x4810046c
	.uaword	0x18422004
	.uaword	0x6c044210
	.uaword	0xb523e885
	.uaword	0xda066de1
	.uaword	0x1825
	.uaword	0xb830f703
	.uaword	0x8000c3d6

	.uaword	0x80030000
	.uaword	0xd08b0040
	.uaword	0x210248
	.uaword	0x14021444
	.uaword	0x48118966
	.uaword	0xe0902802
	.uaword	0x81130a
	.uaword	0x24000000
	.uaword	0x3050c0e
	.uaword	0xa0200182
	.uaword	0x11a2c60
	.uaword	0x88024081
	.uaword	0xc0b5ddd0
	.uaword	0x4481104
	.uaword	0x10184530
	.uaword	0xbd100483

	.uaword	0xcd2d7004
	.uaword	0xcac4dca0
	.uaword	0x5000038
	.uaword	0x9b5608e
	.uaword	0x1b8
	.uaword	0x40000700
	.uaword	0x24
	.uaword	0x100be670
	.uaword	0x10809b
	.uaword	0x4700000
	.uaword	0x4802
	.uaword	0xad600e07
	.uaword	0x1b809
	.uaword	0x70000
	.uaword	0x2540
	.uaword	0xae67000

	.uaword	0x10809b90
	.uaword	0x70000000
	.uaword	0x580204
	.uaword	0x600e0700
	.uaword	0x1b809a5
	.uaword	0x7000000
	.uaword	0x264000
	.uaword	0xe6700000
	.uaword	0x809b100a
	.uaword	0x10
	.uaword	0x68020470
	.uaword	0xe070000
	.uaword	0xb8099d60
	.uaword	0x1
	.uaword	0x27400007
	.uaword	0x70000000

	.uaword	0x9b9009e6
	.uaword	0x1080
	.uaword	0x2047000
	.uaword	0x7000078
	.uaword	0x995600e
	.uaword	0x1b8
	.uaword	0x40000700
	.uaword	0x28
	.uaword	0x1009e670
	.uaword	0x10809b
	.uaword	0x4700000
	.uaword	0x8802
	.uaword	0x8d600e07
	.uaword	0x1b809
	.uaword	0x70000
	.uaword	0x2940

	.uaword	0x8e67000
	.uaword	0x10809b90
	.uaword	0x70000000
	.uaword	0x980204
	.uaword	0x600e0700
	.uaword	0x1b80985
	.uaword	0x7000000
	.uaword	0x2a4000
	.uaword	0xe6700000
	.uaword	0x809b1008
	.uaword	0x10
	.uaword	0xa8020470
	.uaword	0xe070000
	.uaword	0xb8097d60
	.uaword	0x1
	.uaword	0x2b400007

	.uaword	0x70000000
	.uaword	0x9b9007e6
	.uaword	0x1080
	.uaword	0x2047000
	.uaword	0x70000b8
	.uaword	0x975600e
	.uaword	0x1b8
	.uaword	0x40000700
	.uaword	0x2c
	.uaword	0x1007e670
	.uaword	0x10809b
	.uaword	0x4700000
	.uaword	0xc802
	.uaword	0x6d600e07
	.uaword	0x1b809
	.uaword	0x70000

	.uaword	0x2d40
	.uaword	0x6e67000
	.uaword	0x10809b90
	.uaword	0x70000000
	.uaword	0xd80204
	.uaword	0x600e0700
	.uaword	0x1b80965
	.uaword	0x7000000
	.uaword	0x2e4000
	.uaword	0xe6700000
	.uaword	0x809b1006
	.uaword	0x10
	.uaword	0xe8020470
	.uaword	0xe070000
	.uaword	0xb8095d60
	.uaword	0x1

	.uaword	0x2f400007
	.uaword	0x72000000
	.uaword	0x9b9005e6
	.uaword	0x1080
	.uaword	0x2087000
	.uaword	0x50000f8
	.uaword	0x4355408e
	.uaword	0x40006e
	.uaword	0x10c00100
	.uaword	0x24e84500
	.uaword	0x8408800
	.uaword	0x80cd82
	.uaword	0x20026e8c
	.uaword	0x5286005
	.uaword	0x42f00822
	.uaword	0x2b42e02a

	.uaword	0x70c8a103
	.uaword	0xe42cc2
	.uaword	0x49284464
	.uaword	0xc2262804
	.uaword	0x8816a108
	.uaword	0x8115ae22
	.uaword	0x6138e4d0
	.uaword	0x32007216
	.uaword	0x82241422
	.uaword	0x4613314
	.uaword	0x17440b51
	.uaword	0x85ab088c
	.uaword	0xe397460
	.uaword	0x809c4518
	.uaword	0x985880c
	.uaword	0xd8148520

	.uaword	0xd1621441
	.uaword	0x2a02b305
	.uaword	0xe1d58e1
	.uaword	0x67118643
	.uaword	0x21220320
	.uaword	0x47214842
	.uaword	0x20451036
	.uaword	0xc07841b4
	.uaword	0x756b88a
	.uaword	0x84e19043
	.uaword	0xc800c859
	.uaword	0x8925088
	.uaword	0x11844d52
	.uaword	0x5b102d4a
	.uaword	0x15ae2230
	.uaword	0x38e4d081

	.uaword	0x721661
	.uaword	0x24142232
	.uaword	0x61b31482
	.uaword	0x440b5304
	.uaword	0xab088c17
	.uaword	0x39746085
	.uaword	0x9c45180e
	.uaword	0x85880c80
	.uaword	0x34852009
	.uaword	0xe21441d8
	.uaword	0x2b305d1
	.uaword	0x1d58e12a
	.uaword	0x1186430e
	.uaword	0x22032067
	.uaword	0x21484221
	.uaword	0x4510364f

	.uaword	0x7841b440
	.uaword	0x56b88ac0
	.uaword	0xe1904307
	.uaword	0xc85984
	.uaword	0x925088c8
	.uaword	0x844d5408
	.uaword	0x102d5211
	.uaword	0xae22305b
	.uaword	0xe4d08115
	.uaword	0x72166138
	.uaword	0x14223200
	.uaword	0x33158224
	.uaword	0xb550461
	.uaword	0x88c1744
	.uaword	0x746085ab
	.uaword	0x45180e39

	.uaword	0x880c809c
	.uaword	0x85200985
	.uaword	0x1541d854
	.uaword	0xb305d162
	.uaword	0x58e12a02
	.uaword	0x86430e1d
	.uaword	0x5628e113
	.uaword	0xb059bc00
	.uaword	0x3782f004
	.uaword	0x44c21001
	.uaword	0x12450052
	.uaword	0x8c220b1c
	.uaword	0xd040
	.uaword	0xc0e2400
	.uaword	0x1820305
	.uaword	0x38689060

	.uaword	0x406101e
	.uaword	0xa0304142
	.uaword	0xc172c54
	.uaword	0xb0414306
	.uaword	0x1f3c74e0
	.uaword	0x42440810
	.uaword	0x4c942031
	.uaword	0x450a1427
	.uaword	0xb460b142
	.uaword	0xc182f5c
	.uaword	0xa0314346
	.uaword	0x1c376cd4
	.uaword	0xb143470e
	.uaword	0x3f7cf4e0
	.uaword	0x40300060
	.uaword	0x300c4018

	.uaword	0x14032006
	.uaword	0xc7008c01
	.uaword	0x32006400
	.uaword	0xc401940
	.uaword	0x36006b0
	.uaword	0x9c0134
	.uaword	0x6800cf
	.uaword	0x401a4034
	.uaword	0xa006300d
	.uaword	0xac015403
	.uaword	0x6c00d700
	.uaword	0x1b403600
	.uaword	0x6b00d40
	.uaword	0x17403e0
	.uaword	0xdf00bc
	.uaword	0x40380070

	.uaword	0x300e401c
	.uaword	0x94032007
	.uaword	0xe700cc01
	.uaword	0x3a007400
	.uaword	0xe401d40
	.uaword	0x36007b0
	.uaword	0xdc01b4
	.uaword	0x7800ef
	.uaword	0x401e403c
	.uaword	0xa007300f
	.uaword	0xec01d403
	.uaword	0x7c00f700
	.uaword	0x1f403e00
	.uaword	0x7b00f40
	.uaword	0x1f403e0
	.uaword	0xff00fc

	.uaword	0x40a00040
	.uaword	0x30284050
	.uaword	0x140a2014
	.uaword	0x87020c05
	.uaword	0xa2004401
	.uaword	0x28405140
	.uaword	0xa6014b0
	.uaword	0x21c0534
	.uaword	0x48018f
	.uaword	0x405240a4
	.uaword	0xa0143029
	.uaword	0x2c05540a
	.uaword	0x4c019702
	.uaword	0x5340a600
	.uaword	0x14b02940
	.uaword	0x4740ae0

	.uaword	0x4f019e14
	.uaword	0x5440a880
	.uaword	0x10202a00
	.uaword	0x94fb0a0c
	.uaword	0x32f6524e
	.uaword	0xe92e3e4
	.uaword	0xe42cb949
	.uaword	0x45ee906b
	.uaword	0xb640939
	.uaword	0xd0880260
	.uaword	0x6ddbb6dd
	.uaword	0xb66ddbb6
	.uaword	0xdbb66ddb
	.uaword	0x6ddbb66d
	.uaword	0xb66ddbb6
	.uaword	0xdbb66ddb

	.uaword	0x6ddbb66b
	.uaword	0xb66ddbb6
	.uaword	0x4806ddb
	.uaword	0x30040811
	.uaword	0x83101845
	.uaword	0x4bd1004
	.uaword	0xa0cd6d70
	.uaword	0x9644dd
	.uaword	0x1c0b0000
	.uaword	0x7033a2c0
	.uaword	0x2
	.uaword	0x6180000e
	.uaword	0xe1000000
	.uaword	0x37a309cc
	.uaword	0x2000
	.uaword	0x608e000

	.uaword	0xe000020
	.uaword	0x3392c01c
	.uaword	0x270
	.uaword	0x80000e00
	.uaword	0x63
	.uaword	0xa308cce1
	.uaword	0x200037
	.uaword	0x8e00000
	.uaword	0x4006
	.uaword	0x82c01c0e
	.uaword	0x27033
	.uaword	0xe0000
	.uaword	0x6580
	.uaword	0x7cce100
	.uaword	0x200037a3
	.uaword	0xe0000000

	.uaword	0x600608
	.uaword	0xc01c0e00
	.uaword	0x2703372
	.uaword	0xe000000
	.uaword	0x678000
	.uaword	0xcce50000
	.uaword	0x37a306
	.uaword	0x20
	.uaword	0x800610e0
	.uaword	0x1c0b0000
	.uaword	0xdc8e6280
	.uaword	0x8000
	.uaword	0x208003
	.uaword	0x148d08b
	.uaword	0x5118010
	.uaword	0x1801009b

	.uaword	0x158008d8
	.uaword	0x20524001
	.uaword	0x9c22048f
	.uaword	0xe8404508
	.uaword	0x8b301c72
	.uaword	0x11190039
	.uaword	0xa41120a
	.uaword	0x51046113
	.uaword	0x9c228816
	.uaword	0x9043072a
	.uaword	0xc85984e1
	.uaword	0x5088c800
	.uaword	0x9b510892
	.uaword	0xb4902208
	.uaword	0x8ac07841
	.uaword	0xe1da870

	.uaword	0x67118643
	.uaword	0x21220320
	.uaword	0x4a214842
	.uaword	0x628a206c
	.uaword	0x2b305d1
	.uaword	0x74a0c229
	.uaword	0x4f180e39
	.uaword	0x550a184
	.uaword	0x2780cde2
	.uaword	0x11b01184
	.uaword	0x2045240c
	.uaword	0xc0215104
	.uaword	0x300c0f0e
	.uaword	0xa0
	.uaword	0xa181c48
	.uaword	0xc1020407

	.uaword	0x3c70d020
	.uaword	0x84080c20
	.uaword	0xa8406182
	.uaword	0xc182e58
	.uaword	0xc0618386
	.uaword	0x203e78e8
	.uaword	0x62848810
	.uaword	0x4e982841
	.uaword	0x858a1428
	.uaword	0xb868c162
	.uaword	0x8c18305e
	.uaword	0xa8416386
	.uaword	0x1c386ed8
	.uaword	0xc163878e
	.uaword	0x3f7c28e8
	.uaword	0x308060

	.uaword	0x18004018
	.uaword	0x7287bd15
	.uaword	0x822c9153
	.uaword	0xd08802d8
	.uaword	0x6ddbb6dd
	.uaword	0xb66ddbb6
	.uaword	0xdbb66bdb
	.uaword	0x1004806d
	.uaword	0x443004c8
	.uaword	0x4831018
	.uaword	0x7004bd10
	.uaword	0xdda0cdad
	.uaword	0x20adc4
	.uaword	0x80391600
	.uaword	0x4e0a6b4
	.uaword	0x1c000000

	.uaword	0xd40001
	.uaword	0x98c30100
	.uaword	0x6e4a0a
	.uaword	0x1000040
	.uaword	0x600d10c0
	.uaword	0x391c0000
	.uaword	0xe0a69480
	.uaword	0x4
	.uaword	0xd800011c
	.uaword	0xcb010000
	.uaword	0x6e4a0898
	.uaword	0x4000
	.uaword	0xd20c001
	.uaword	0x160000a0
	.uaword	0x2d750039
	.uaword	0x1b8

	.uaword	0x40000700
	.uaword	0x90a01701
	.uaword	0x22002102
	.uaword	0x200360b
	.uaword	0x44b031
	.uaword	0x480a14a8
	.uaword	0x98228247
	.uaword	0xa3838a10
	.uaword	0x6711e390
	.uaword	0x42240320
	.uaword	0x260a2189
	.uaword	0x699122c4
	.uaword	0x715a608
	.uaword	0x27c62147
	.uaword	0x17a042c5
	.uaword	0x9e00368b

	.uaword	0x43041b21
	.uaword	0x1481109
	.uaword	0xe704814
	.uaword	0x8041588d
	.uaword	0x20010000
	.uaword	0x1c286070
	.uaword	0x83040b10
	.uaword	0x80f0c041
	.uaword	0x9122230
	.uaword	0x60a10285
	.uaword	0x1a3260b8
	.uaword	0xa103870d
	.uaword	0x4280f8e0
	.uaword	0x4891122
	.uaword	0x9c30a1a0
	.uaword	0x152852

	.uaword	0x4bec5760
	.uaword	0x88026c21
	.uaword	0xdbb6ddd0
	.uaword	0xeddab66d
	.uaword	0xc86004b6
	.uaword	0x1c466004
	.uaword	0x3c048550
	.uaword	0x3b1c412f
	.uaword	0x91376873
	.uaword	0x702b
	.uaword	0xc960ee07
	.uaword	0x1b839
	.uaword	0x70000
	.uaword	0x803780
	.uaword	0x1e45800
	.uaword	0x4e0f694

	.uaword	0x1c000000
	.uaword	0xe00001
	.uaword	0x90630100
	.uaword	0x80fb5331
	.uaword	0x10
	.uaword	0x88030470
	.uaword	0x4e060000
	.uaword	0x6e50fd41
	.uaword	0x4000
	.uaword	0xe20c001
	.uaword	0x1c000040
	.uaword	0x430503b9
	.uaword	0x1b8
	.uaword	0x80000700
	.uaword	0x88a01701
	.uaword	0x82200

	.uaword	0x13000522
	.uaword	0x6b90032a
	.uaword	0x4045804
	.uaword	0x6011a841
	.uaword	0x30851000
	.uaword	0x91830e52
	.uaword	0xa876050
	.uaword	0x16046c08
	.uaword	0x2002006c
	.uaword	0x14008d2
	.uaword	0xa4502a44
	.uaword	0x70c04320
	.uaword	0x18014645
	.uaword	0x6c00b059
	.uaword	0x10c04320
	.uaword	0x85089042

	.uaword	0xa960a4c
	.uaword	0x8423d82
	.uaword	0x9b854018
	.uaword	0x94848000
	.uaword	0x15004270
	.uaword	0x66410418
	.uaword	0x81b011c0
	.uaword	0xa41000f
	.uaword	0x30152240
	.uaword	0xe054682a
	.uaword	0x254e1a9
	.uaword	0x8fa082a8
	.uaword	0x300e0441
	.uaword	0x211006a2
	.uaword	0x2180c066
	.uaword	0x80101c25

	.uaword	0x10014605
	.uaword	0x6c08b059
	.uaword	0x10c04320
	.uaword	0x85089042
	.uaword	0x159a0a4c
	.uaword	0x55782a38
	.uaword	0x5421aa00
	.uaword	0x5485a982
	.uaword	0x5815aa0a
	.uaword	0x8055b82a
	.uaword	0x825621ab
	.uaword	0xa5c85ad
	.uaword	0x2a7815ba
	.uaword	0xac0056f8
	.uaword	0xcc23a820
	.uaword	0xaaac0bc3

	.uaword	0x78aa489
	.uaword	0x9485699c
	.uaword	0x288c0349
	.uaword	0x59088481
	.uaword	0x490880b0
	.uaword	0x200447
	.uaword	0x2cc003a2
	.uaword	0x103c02d8
	.uaword	0x8610a421
	.uaword	0x80284202
	.uaword	0x38482802
	.uaword	0x41a40f0f
	.uaword	0x0
	.uaword	0xa181c48
	.uaword	0x41020407
	.uaword	0x3460b040

	.uaword	0x4080f1c
	.uaword	0xa0304142
	.uaword	0xd192a5c
	.uaword	0x8081c306
	.uaword	0x224280f8
	.uaword	0x82c4880e
	.uaword	0x509c3051
	.uaword	0x85071529
	.uaword	0xc078e1a2
	.uaword	0xc193156
	.uaword	0xb05183c6
	.uaword	0x1d3970dc
	.uaword	0xc182c70e
	.uaword	0x820100fb
	.uaword	0x1e00c200
	.uaword	0x8018c0b0

	.uaword	0x3006500c
	.uaword	0x90011c03
	.uaword	0x6500c900
	.uaword	0x19c03200
	.uaword	0x6d00c80
	.uaword	0x13c0370
	.uaword	0xd100a0
	.uaword	0xc0340069
	.uaword	0x500d801a
	.uaword	0x5c03b006
	.uaword	0xd900b001
	.uaword	0x36006d00
	.uaword	0xd801bc0
	.uaword	0xf006d0
	.uaword	0xe000bef9
	.uaword	0x38807000

	.uaword	0x1601c80
	.uaword	0x94032067
	.uaword	0xe600ce01
	.uaword	0x7400
	.uaword	0x3bb65b60
	.uaword	0xac8dc5b2
	.uaword	0x144b6237
	.uaword	0x2c046d8
	.uaword	0xb6ddd088
	.uaword	0xdbb66ddb
	.uaword	0x6ddbb66d
	.uaword	0xb66ddbb6
	.uaword	0xdbb66ddb
	.uaword	0x6ddbb66d
	.uaword	0x46cdbb5
	.uaword	0x80044871

	.uaword	0xc7401c48
	.uaword	0x4bd1804
	.uaword	0xa0cd0572
	.uaword	0x98f3c4de
	.uaword	0x8e050000
	.uaword	0xb87fdd60
	.uaword	0x1
	.uaword	0x3a400007
	.uaword	0x44000000
	.uaword	0xfb970de6
	.uaword	0x1080
	.uaword	0x3087000
	.uaword	0x70000a8
	.uaword	0x606d412e
	.uaword	0x4000ee
	.uaword	0x20c00100

	.uaword	0xc00e
	.uaword	0xe507b91a
	.uaword	0x1b885
	.uaword	0x70000
	.uaword	0x803b80
	.uaword	0x1e45800
	.uaword	0x4e02656
	.uaword	0x1c000000
	.uaword	0xf00001
	.uaword	0x90630100
	.uaword	0x809b5804
	.uaword	0x10
	.uaword	0xc8030470
	.uaword	0x8e050000
	.uaword	0x6e620d40
	.uaword	0x4000

	.uaword	0xf10c001
	.uaword	0x16000040
	.uaword	0x89250039
	.uaword	0x1b8
	.uaword	0x40000700
	.uaword	0x803d
	.uaword	0xd629e459
	.uaword	0x4e02e
	.uaword	0x11c0000
	.uaword	0xf800
	.uaword	0xa6906701
	.uaword	0x1080db58
	.uaword	0x70000000
	.uaword	0xe80304
	.uaword	0x429e0500
	.uaword	0xee6395

	.uaword	0x1000040
	.uaword	0xc00f10c0
	.uaword	0x39190000
	.uaword	0xb891e502
	.uaword	0x1
	.uaword	0x3f800007
	.uaword	0x70000080
	.uaword	0x4e561fe4
	.uaword	0x4e0
	.uaword	0x1011c00
	.uaword	0x1000000
	.uaword	0x597c90c3
	.uaword	0x10805b
	.uaword	0x4700000
	.uaword	0x804
	.uaword	0x2dc85302

	.uaword	0x8c0bd2c
	.uaword	0x38000000
	.uaword	0x80208
	.uaword	0x20c70200
	.uaword	0x37b3b2
	.uaword	0x20
	.uaword	0x300808e0
	.uaword	0x1c0b0000
	.uaword	0xdccdc282
	.uaword	0x8000
	.uaword	0x21208003
	.uaword	0x2c000000
	.uaword	0x3b6b0f72
	.uaword	0x270
	.uaword	0x80000e00
	.uaword	0x85

	.uaword	0x2c52c8b1
	.uaword	0x8c0fd
	.uaword	0x2380000
	.uaword	0x1802
	.uaword	0x1ee48100
	.uaword	0x4e08696
	.uaword	0x1c000000
	.uaword	0xe0104
	.uaword	0xf2540000
	.uaword	0x70472b0f
	.uaword	0x2
	.uaword	0x8800020e
	.uaword	0xe1000000
	.uaword	0x2dad51c8
	.uaword	0x8c0
	.uaword	0x2023800

	.uaword	0x2000024
	.uaword	0xb4f020c7
	.uaword	0x2000f7
	.uaword	0x8e00000
	.uaword	0xa008
	.uaword	0xaa811c0b
	.uaword	0x8000dcd4
	.uaword	0x80030000
	.uaword	0xc02220
	.uaword	0x17722c00
	.uaword	0x270576b
	.uaword	0xe000000
	.uaword	0x8c8000
	.uaword	0xc8e90000
	.uaword	0xc06d2d51
	.uaword	0x8

	.uaword	0x34020438
	.uaword	0xc7020000
	.uaword	0x77a17e21
	.uaword	0x2040
	.uaword	0x808e000
	.uaword	0xb0000e0
	.uaword	0x868a861c
	.uaword	0x8000dd
	.uaword	0x20800300
	.uaword	0x4028
	.uaword	0xeb057238
	.uaword	0x274e3
	.uaword	0xe0000
	.uaword	0x9080
	.uaword	0x1c0b100
	.uaword	0x825e0400

	.uaword	0x8220020
	.uaword	0x66810800
	.uaword	0xd2500c0
	.uaword	0xd82c0840
	.uaword	0xa9210400
	.uaword	0x9b0501
	.uaword	0x40358400
	.uaword	0x60b320
	.uaword	0x4bc8612
	.uaword	0x2006c16
	.uaword	0x8200d810
	.uaword	0x420080cd
	.uaword	0x5910101b
	.uaword	0x430800b0
	.uaword	0x5c0b0264
	.uaword	0x9fbfff77

	.uaword	0x80
	.uaword	0x0
	.uaword	0x0
	.uaword	0x406d1801
	.uaword	0xc06641
	.uaword	0x8b00d21
	.uaword	0x406d82c
	.uaword	0x501b721
	.uaword	0x8400009b
	.uaword	0xb5200037
	.uaword	0xd0
	.uaword	0x0
	.uaword	0x0
	.uaword	0x0
	.uaword	0xe4861000
	.uaword	0x11e04404

	.uaword	0xc2a48008
	.uaword	0xa00380cd
	.uaword	0x80010739
	.uaword	0x61c28088
	.uaword	0x8032208
	.uaword	0xc080c49a
	.uaword	0x2080cd42
	.uaword	0x10401a42
	.uaword	0x2a20080
	.uaword	0x202581cd
	.uaword	0xce02140
	.uaword	0x4008500
	.uaword	0x1174441
	.uaword	0x2c808700
	.uaword	0x11101402
	.uaword	0x33a1005

	.uaword	0x8187090
	.uaword	0x6400c859
	.uaword	0x2220da08
	.uaword	0x60b32040
	.uaword	0x410ee800
	.uaword	0x672160c0
	.uaword	0x24900120
	.uaword	0x898080
	.uaword	0x136c4087
	.uaword	0x6f08087a
	.uaword	0x205d4140
	.uaword	0xcd02c680
	.uaword	0x6af60020
	.uaword	0x34b30e00
	.uaword	0x11089800
	.uaword	0x21040005

	.uaword	0x9b0544
	.uaword	0x4b808047
	.uaword	0xc0430081
	.uaword	0x80a0105
	.uaword	0xb888208
	.uaword	0x18f0036
	.uaword	0xe4808e00
	.uaword	0x16020a1c
	.uaword	0x2190072
	.uaword	0x90088836
	.uaword	0x4418c208
	.uaword	0x4241206
	.uaword	0x408a6d6
	.uaword	0x10801402
	.uaword	0xb009b85
	.uaword	0xc0438080

	.uaword	0x400a0101
	.uaword	0x40087894
	.uaword	0x10f0a800
	.uaword	0x399b85
	.uaword	0x4380400a
	.uaword	0xb0101c0
	.uaword	0x12007236
	.uaword	0x8018f
	.uaword	0x34200010
	.uaword	0x88408008
	.uaword	0xa210028
	.uaword	0x2d82c20
	.uaword	0x5c02043c
	.uaword	0x1e0208
	.uaword	0x40500828
	.uaword	0x59401444

	.uaword	0x87804b0
	.uaword	0x20077404
	.uaword	0xb31050e0
	.uaword	0x11c80090
	.uaword	0x804440b4
	.uaword	0x20c21046
	.uaword	0x26249130
	.uaword	0x204030b5
	.uaword	0x8480a410
	.uaword	0x5c00d82c
	.uaword	0x1e0204
	.uaword	0x44520808
	.uaword	0x4240a3
	.uaword	0x84804605
	.uaword	0x80d92c
	.uaword	0x1e02045c

	.uaword	0x59080800
	.uaword	0x940000b3
	.uaword	0x400868
	.uaword	0xc0000180
	.uaword	0x41040244
	.uaword	0x51080140
	.uaword	0x11c06601
	.uaword	0xe01220e0
	.uaword	0xf01040
	.uaword	0x28242c0
	.uaword	0xcd02a220
	.uaword	0x40c02380
	.uaword	0x739a023
	.uaword	0x9c858002
	.uaword	0x8d400680
	.uaword	0x22402a2

	.uaword	0x1118630
	.uaword	0x35418984
	.uaword	0x182a9
	.uaword	0x21042885
	.uaword	0xe002c066
	.uaword	0xf01020
	.uaword	0x2944240
	.uaword	0x8200d920
	.uaword	0x424080cd
	.uaword	0x5910601b
	.uaword	0x430804b0
	.uaword	0x360b026e
	.uaword	0x6e088100
	.uaword	0x4004200
	.uaword	0x2010800
	.uaword	0x20031

	.uaword	0xdc038802
	.uaword	0xf01360b
	.uaword	0x90860001
	.uaword	0x4d9c2104
	.uaword	0x16500f0
	.uaword	0x59080149
	.uaword	0x86c00b0
	.uaword	0x10003c04
	.uaword	0x51625011
	.uaword	0x10021a0
	.uaword	0x59080148
	.uaword	0x86c00b0
	.uaword	0x10003c04
	.uaword	0x50e15111
	.uaword	0x1220a062
	.uaword	0x21e051

	.uaword	0x4480a302
	.uaword	0xa810a01b
	.uaword	0xec8610f0
	.uaword	0x4146104
	.uaword	0x89302022
	.uaword	0x4d0404c4
	.uaword	0x614200f8
	.uaword	0x20220418
	.uaword	0x8479830
	.uaword	0xa426c280
	.uaword	0x51123020
	.uaword	0x20512120
	.uaword	0x44630b21
	.uaword	0x3c0408ac
	.uaword	0x9131000
	.uaword	0x1112200

	.uaword	0x20204e84
	.uaword	0x42401226
	.uaword	0x9c080322
	.uaword	0xd7444040
	.uaword	0xa6210480
	.uaword	0x9b0501
	.uaword	0x9a8d8400
	.uaword	0x2002220
	.uaword	0x440080cd
	.uaword	0x8010401a
	.uaword	0xcd02a200
	.uaword	0x40204581
	.uaword	0x8000e021
	.uaword	0x10014a98
	.uaword	0x260c88
	.uaword	0x30262002

	.uaword	0x724007a2
	.uaword	0x1101030e
	.uaword	0x204e8401
	.uaword	0x4421e040
	.uaword	0xb0597001
	.uaword	0x4087804
	.uaword	0xf218034
	.uaword	0x48c012c6
	.uaword	0x9c080322
	.uaword	0x44454040
	.uaword	0x58c28480
	.uaword	0x35110644
	.uaword	0x8a800141
	.uaword	0x84090189
	.uaword	0x220c88c0
	.uaword	0x103826a

	.uaword	0x8100360b
	.uaword	0x42006908
	.uaword	0xb880200
	.uaword	0x81140536
	.uaword	0x2808700
	.uaword	0x4242a02
	.uaword	0x20421346
	.uaword	0x8009830
	.uaword	0x88c29880
	.uaword	0x38c8011d
	.uaword	0x644040c
	.uaword	0x84413511
	.uaword	0x10858083
	.uaword	0xc066c105
	.uaword	0x1020e011
	.uaword	0x3f8400d2

	.uaword	0x81044805
	.uaword	0xe002c066
	.uaword	0xf01020
	.uaword	0x274c40
	.uaword	0x10064488
	.uaword	0x4e204a9
	.uaword	0x242a0204
	.uaword	0x82132604
	.uaword	0x48853020
	.uaword	0x4030a826
	.uaword	0x2001120
	.uaword	0x614440a2
	.uaword	0x803223c
	.uaword	0xa09a30a8
	.uaword	0x458000c1
	.uaword	0xc2848044

	.uaword	0x11064460
	.uaword	0x80014135
	.uaword	0x901898a
	.uaword	0xc880085
	.uaword	0x20020126
	.uaword	0x188d8a30
	.uaword	0xc2800801
	.uaword	0x8050a826
	.uaword	0x13304060
	.uaword	0x11216009
	.uaword	0x204e8401
	.uaword	0x40a22220
	.uaword	0x22446142
	.uaword	0xa09a0803
	.uaword	0x4445c080
	.uaword	0x90c28480

	.uaword	0x35110644
	.uaword	0x98800141
	.uaword	0x8808014c
	.uaword	0x171220c
	.uaword	0x2a03001
	.uaword	0x4c181011
	.uaword	0x61400402
	.uaword	0x2301a15
	.uaword	0x4e840111
	.uaword	0x80c08020
	.uaword	0x40142660
	.uaword	0x8032242
	.uaword	0x4c40409c
	.uaword	0x44840029
	.uaword	0x80381106
	.uaword	0x1898a80

	.uaword	0x40809a08
	.uaword	0x40040044
	.uaword	0x110060b3
	.uaword	0x20049c06
	.uaword	0xa9e02800
	.uaword	0x1992cd02
	.uaword	0x404005c0
	.uaword	0x11c06621
	.uaword	0x901220e0
	.uaword	0xef01060
	.uaword	0x1004440
	.uaword	0x104408
	.uaword	0x2ac0211
	.uaword	0x21605112
	.uaword	0xc1a20200
	.uaword	0x9032c066

	.uaword	0xcf01020
	.uaword	0x1004480
	.uaword	0x360b4408
	.uaword	0x6b080100
	.uaword	0x15a41c0
	.uaword	0x10e02809
	.uaword	0x4a42c056
	.uaword	0x20043c
	.uaword	0x9b0522
	.uaword	0xa0348400
	.uaword	0x45010021
	.uaword	0x4525c05
	.uaword	0x48011e02
	.uaword	0x21008008
	.uaword	0x80a38208
	.uaword	0xa8033a42

	.uaword	0xa810d459
	.uaword	0x60340408
	.uaword	0x8c80a120
	.uaword	0x2620ea2c
	.uaword	0x112020d0
	.uaword	0x44431e10
	.uaword	0x8100a02
	.uaword	0x5829df42
	.uaword	0x780810
	.uaword	0xc0142620
	.uaword	0x8032244
	.uaword	0x4c40409c
	.uaword	0x44848024
	.uaword	0x80381106
	.uaword	0xaf8980
	.uaword	0x24c4308

	.uaword	0x8100360b
	.uaword	0x40341b09
	.uaword	0x8050044
	.uaword	0x40016704
	.uaword	0x21c05141
	.uaword	0x23b1a15
	.uaword	0x30a3801
	.uaword	0x41046005
	.uaword	0xb011c066
	.uaword	0x2f01020
	.uaword	0x80cd4280
	.uaword	0x401a4600
	.uaword	0xa2008010
	.uaword	0x400a4705
	.uaword	0x1c04380
	.uaword	0x8a80a01

	.uaword	0x200a8482
	.uaword	0xe0200774
	.uaword	0x10f01130
	.uaword	0x5c005150
	.uaword	0x1e016c16
	.uaword	0x200d0102
	.uaword	0x9cf04308
	.uaword	0x2c940000
	.uaword	0x210400e4
	.uaword	0x801ab
	.uaword	0x6854580a
	.uaword	0x90220774
	.uaword	0xf01030
	.uaword	0x34c40
	.uaword	0x60074488
	.uaword	0x808083a5

	.uaword	0x1d8c4345
	.uaword	0x14d9682
	.uaword	0x80b24dfc
	.uaword	0x216080a0
	.uaword	0x5970014b
	.uaword	0x87804c8
	.uaword	0x21603504
	.uaword	0x2067c10f
	.uaword	0x580d2500
	.uaword	0x52004008
	.uaword	0xa043a3c2
	.uaword	0x80811439
	.uaword	0x2028087
	.uaword	0x42041860
	.uaword	0x2c053b20
	.uaword	0x1602041c

	.uaword	0x2190072
	.uaword	0x90080824
	.uaword	0x518f2d08
	.uaword	0x1e136
	.uaword	0xc1052c85
	.uaword	0xe0112067
	.uaword	0x80d51020
	.uaword	0xc1093f84
	.uaword	0x47050900
	.uaword	0x70c8580
	.uaword	0xd0b5a0
	.uaword	0x0
	.uaword	0x7201
	.uaword	0x0
	.uaword	0x68010000
	.uaword	0x22a80810

	.uaword	0x200a1038
	.uaword	0xc0a3840d
	.uaword	0x42c0a342
	.uaword	0x5910b01b
	.uaword	0x830800b0
	.uaword	0x100270
	.uaword	0x2006c16
	.uaword	0x8400d230
	.uaword	0x2a100500
	.uaword	0x2045238
	.uaword	0x808001e
	.uaword	0x14444055
	.uaword	0xa0035120
	.uaword	0x80010739
	.uaword	0x8282808f
	.uaword	0xb3e00288

	.uaword	0x10f00860
	.uaword	0x42006908
	.uaword	0xe0841f
	.uaword	0x2067a104
	.uaword	0x580d2100
	.uaword	0x52004008
	.uaword	0xa043a3c2
	.uaword	0x80811439
	.uaword	0x2028087
	.uaword	0x42041860
	.uaword	0x2c053b20
	.uaword	0x2a02041c
	.uaword	0x14ec601c
	.uaword	0xe20f68b2
	.uaword	0x405946d
	.uaword	0x580a0103

	.uaword	0x40ce820b
	.uaword	0x2140c023
	.uaword	0x7e0801ab
	.uaword	0x100390b
	.uaword	0x42c06a28
	.uaword	0x15960200
	.uaword	0xc8011d1a
	.uaword	0x3c040ca4
	.uaword	0x131000
	.uaword	0x11122c0
	.uaword	0xe06029d8
	.uaword	0x90b31020
	.uaword	0x2011c800
	.uaword	0x41804440
	.uaword	0xb7897a6c
	.uaword	0x29040808

	.uaword	0x390b2e60
	.uaword	0x18f00
	.uaword	0x2104ac86
	.uaword	0x84ef8
	.uaword	0x4382a48
	.uaword	0xa3c6028
	.uaword	0xf080218c
	.uaword	0x1a02065a
	.uaword	0xf0a810c0
	.uaword	0xf080a110
	.uaword	0x1068c114
	.uaword	0xe05a08
	.uaword	0x24d191
	.uaword	0x0
	.uaword	0x0
	.uaword	0x1c010000

	.uaword	0x10540408
	.uaword	0x708407fc
	.uaword	0x80d61030
	.uaword	0x1102b282
	.uaword	0x20604350
	.uaword	0x8280dc10
	.uaword	0xa91002b2
	.uaword	0x8587cd02
	.uaword	0x60284040
	.uaword	0x80022b3d
	.uaword	0x2028087
	.uaword	0xb2592015
	.uaword	0xa8003843
	.uaword	0xd82c0408
	.uaword	0x2043c14
	.uaword	0x8010701a

	.uaword	0x23205101
	.uaword	0x111a830
	.uaword	0x10c18984
	.uaword	0xb0599814
	.uaword	0x20077400
	.uaword	0x101130e0
	.uaword	0x5474518
	.uaword	0x85470546
	.uaword	0x3f9a0241
	.uaword	0x514de801
	.uaword	0xe0a0e101
	.uaword	0x6080a0c0
	.uaword	0x42001526
	.uaword	0x13090322
	.uaword	0x30292082
	.uaword	0xe80060b3

	.uaword	0x60c0410e
	.uaword	0x8a302022
	.uaword	0xa8c0a8e
	.uaword	0x5820a8f
	.uaword	0xd0037e34
	.uaword	0x41c3419c
	.uaword	0x4181c1
	.uaword	0x804445c0
	.uaword	0x20404d84
	.uaword	0xc06621
	.uaword	0x8780d21
	.uaword	0xb214028
	.uaword	0x800e0036
	.uaword	0x2061ce4
	.uaword	0x19007216
	.uaword	0x8082102

	.uaword	0x80370890
	.uaword	0x8400ae20
	.uaword	0x20a0a52a
	.uaword	0x4000f010
	.uaword	0x2080cd42
	.uaword	0x10001b44
	.uaword	0x804b059
	.uaword	0x10025e43
	.uaword	0x16c1600
	.uaword	0xd22002
	.uaword	0x10050084
	.uaword	0x452382a
	.uaword	0x28001e02
	.uaword	0x44005708
	.uaword	0x3512014
	.uaword	0x10739a0

	.uaword	0x809c8580
	.uaword	0x42884006
	.uaword	0x5c022402
	.uaword	0xf0108
	.uaword	0xd82c040c
	.uaword	0xaf410402
	.uaword	0x4440501
	.uaword	0xa2c06621
	.uaword	0xf0102090
	.uaword	0x84424000
	.uaword	0x7a22002
	.uaword	0x30e7240
	.uaword	0x390b01
	.uaword	0x8410810c
	.uaword	0x45044804
	.uaword	0xfc088830

	.uaword	0x3a00d82c
	.uaword	0x18709003
	.uaword	0x210f8808
	.uaword	0xe4800e51
	.uaword	0x3e02061c
	.uaword	0xe00a1402
	.uaword	0x11a64808
	.uaword	0x9b851f01
	.uaword	0x72404700
	.uaword	0x1101030e
	.uaword	0x212ae401
	.uaword	0x80831cd0
	.uaword	0x42c047c0
	.uaword	0x9014481
	.uaword	0x25200215
	.uaword	0x60b330

	.uaword	0xc0410ee8
	.uaword	0x36202260
	.uaword	0x33a4485
	.uaword	0x8187090
	.uaword	0x545008f8
	.uaword	0xa8480870
	.uaword	0x85290111
	.uaword	0x4047009b
	.uaword	0x1030e72
	.uaword	0x2ab40111
	.uaword	0x831cd021
	.uaword	0xc047c080
	.uaword	0xa38242
	.uaword	0x88404542
	.uaword	0xd82c4c09
	.uaword	0x90033a04

	.uaword	0x88081870
	.uaword	0xe51a10d
	.uaword	0x61ce480
	.uaword	0x14023e02
	.uaword	0x12021e15
	.uaword	0x4a40042a
	.uaword	0x31c06661
	.uaword	0x80831cd0
	.uaword	0x6d4044c0
	.uaword	0x774880a
	.uaword	0x1130e020
	.uaword	0x54a010f0
	.uaword	0x6c164440
	.uaword	0x1021e01
	.uaword	0x4008880d
	.uaword	0xa2008000

	.uaword	0xcd82fc00
	.uaword	0x40c02380
	.uaword	0x801a421
	.uaword	0xc780a7a
	.uaword	0xd82c48
	.uaword	0x1e020436
	.uaword	0xa8080800
	.uaword	0x55181190
	.uaword	0x14c28008
	.uaword	0xb05920
	.uaword	0xe0200774
	.uaword	0x90b31030
	.uaword	0x811c800
	.uaword	0x47804440
	.uaword	0xaa093de0
	.uaword	0x4242c0c

	.uaword	0x4408a8c2
	.uaword	0x100a6140
	.uaword	0x3a00d82c
	.uaword	0x18709003
	.uaword	0xc85908
	.uaword	0x20840864
	.uaword	0xf0234022
	.uaword	0x4e2841e
	.uaword	0x4200212
	.uaword	0xc094854
	.uaword	0x6140042b
	.uaword	0x18105413
	.uaword	0x10708509
	.uaword	0x27c28088
	.uaword	0x111010
	.uaword	0x18014201

	.uaword	0x6de40f88
	.uaword	0x1c150141
	.uaword	0x60b31002
	.uaword	0x9105051
	.uaword	0xa810e028
	.uaword	0x9b8510f0
	.uaword	0x80c08e02
	.uaword	0x85804749
	.uaword	0x2c848047
	.uaword	0x45202d8
	.uaword	0x8001e02
	.uaword	0x4b05908
	.uaword	0x40087894
	.uaword	0x8a008000
	.uaword	0xb01c5014
	.uaword	0x7804b059

	.uaword	0xa0340408
	.uaword	0xc20a21
	.uaword	0x80542802
	.uaword	0xc066816d
	.uaword	0x1020b001
	.uaword	0x454000f0
	.uaword	0xc2888044
	.uaword	0x11064458
	.uaword	0x80014135
	.uaword	0x8014b98
	.uaword	0x71220c88
	.uaword	0x100101
	.uaword	0x8a220020
	.uaword	0x5c6018b
	.uaword	0x8047009b
	.uaword	0x80454980

	.uaword	0x882684
	.uaword	0x200a208
	.uaword	0x5cc05128
	.uaword	0x1e016c16
	.uaword	0x380d0102
	.uaword	0x80304208
	.uaword	0x20158a00
	.uaword	0xb059d01b
	.uaword	0x408b800
	.uaword	0x1110003c
	.uaword	0x30222051
	.uaword	0x84011196
	.uaword	0x6040504d
	.uaword	0x42c01226
	.uaword	0x9c080322
	.uaword	0x444040

	.uaword	0x41044005
	.uaword	0xe002c066
	.uaword	0xf01020
	.uaword	0x80444540
	.uaword	0x44c0c288
	.uaword	0x41351106
	.uaword	0x58988001
	.uaword	0xc880801
	.uaword	0x1017122
	.uaword	0x10150010
	.uaword	0x9b0511
	.uaword	0x4380800b
	.uaword	0x150104c0
	.uaword	0xb230212
	.uaword	0x44181021
	.uaword	0x20604d5

	.uaword	0x2006c16
	.uaword	0x8400d210
	.uaword	0x15100500
	.uaword	0x8104811
	.uaword	0x22200078
	.uaword	0x614440a2
	.uaword	0x9032268
	.uaword	0x22428013
	.uaword	0x360b9302
	.uaword	0xe4800e00
	.uaword	0x2202061c
	.uaword	0x2150903
	.uaword	0xb3302520
	.uaword	0xee80860
	.uaword	0x2260c041
	.uaword	0x10853620

	.uaword	0x7090033a
	.uaword	0xc8590818
	.uaword	0xb4086400
	.uaword	0x22402220
	.uaword	0x4a40042a
	.uaword	0x21c06661
	.uaword	0x80831cd0
	.uaword	0x6d4044c0
	.uaword	0x774200a
	.uaword	0x1030e020
	.uaword	0xc80090b3
	.uaword	0x44406811
	.uaword	0x8544480
	.uaword	0xcdc29480
	.uaword	0x39a06380
	.uaword	0x88800107

	.uaword	0x4014da80
	.uaword	0xc0410ee8
	.uaword	0x20672160
	.uaword	0xd0229001
	.uaword	0x88008980
	.uaword	0x290111a8
	.uaword	0x7009b85
	.uaword	0x30e7240
	.uaword	0xb4011101
	.uaword	0x1cd08128
	.uaword	0x42c08083
	.uaword	0x200340ce
	.uaword	0x1201a145
	.uaword	0x224c1101
	.uaword	0x360b3f02
	.uaword	0xe4800e00

	.uaword	0x2202061c
	.uaword	0x351c803
	.uaword	0x10739a0
	.uaword	0x809c8580
	.uaword	0x42884006
	.uaword	0x3f022402
	.uaword	0x618ae801
	.uaword	0x59f81110
	.uaword	0x77404b0
	.uaword	0x1130e020
	.uaword	0x88421e10
	.uaword	0x38c8011d
	.uaword	0xe42c040c
	.uaword	0x42043200
	.uaword	0x11201110
	.uaword	0x6a420ff8

	.uaword	0x4b515389
	.uaword	0x1b27333f
	.uaword	0x200a010e
	.uaword	0x80cd420b
	.uaword	0x2140c023
	.uaword	0x7e0801a4
	.uaword	0x53021215
	.uaword	0x18106109
	.uaword	0x604d544
	.uaword	0x4d002002
	.uaword	0x614600f8
	.uaword	0x2022046c
	.uaword	0x8019830
	.uaword	0x1027c280
	.uaword	0x51113020
	.uaword	0xb8302120

	.uaword	0xc0840111
	.uaword	0x11064408
	.uaword	0x81824135
	.uaword	0x1898a80
	.uaword	0x40709a10
	.uaword	0x84802e4c
	.uaword	0x38110644
	.uaword	0x9b858080
	.uaword	0x84880000
	.uaword	0x882204
	.uaword	0xe020a108
	.uaword	0x899960f
	.uaword	0x20200086
	.uaword	0x181c4800
	.uaword	0x204070a
	.uaword	0x60b04041

	.uaword	0x80f1c34
	.uaword	0x30414204
	.uaword	0x172c54a0
	.uaword	0x4143060c
	.uaword	0x3c74e0b0
	.uaword	0x4408101f
	.uaword	0x94203142
	.uaword	0xa14274c
	.uaword	0x70a18245
	.uaword	0x163160bc
	.uaword	0x61a3068d
	.uaword	0x3970c8b8
	.uaword	0x83c70e1d
	.uaword	0x80fdf0d1
	.uaword	0x6100c100
	.uaword	0x18c03000

	.uaword	0x6500c80
	.uaword	0x11c0330
	.uaword	0xc90090
	.uaword	0x348065
	.uaword	0x200d201a
	.uaword	0x50039806
	.uaword	0xce00aa01
	.uaword	0x35006b00
	.uaword	0xd001bc0
	.uaword	0x3d00690
	.uaword	0xb8016c
	.uaword	0x6f00dd
	.uaword	0x1cc037
	.uaword	0x1007100e
	.uaword	0xcc019403
	.uaword	0x7400e700

	.uaword	0x1dc03800
	.uaword	0x7a00e20
	.uaword	0x1900358
	.uaword	0xef00dc
	.uaword	0x403c0078
	.uaword	0x200f801d
	.uaword	0xd0039807
	.uaword	0xf500da01
	.uaword	0x3d806700
	.uaword	0xf8019c0
	.uaword	0x3d807a0
	.uaword	0xfa01f0
	.uaword	0x807f00fe
	.uaword	0x10003e
	.uaword	0x10141028
	.uaword	0x8050c0a

	.uaword	0x43018502
	.uaword	0x51c0a100
	.uaword	0x14902800
	.uaword	0x52c0a50
	.uaword	0x18f0218
	.uaword	0x40a40048
	.uaword	0xd0284052
	.uaword	0x500a9814
	.uaword	0x8e022a05
	.uaword	0xa6004c01
	.uaword	0x29405340
	.uaword	0xab014b0
	.uaword	0x23a0570
	.uaword	0x804b019e
	.uaword	0x205fc0a7
	.uaword	0x6816000a

	.uaword	0x48058c02
	.uaword	0x5301a502
	.uaword	0x55c0a900
	.uaword	0x15102a00
	.uaword	0x5a80a48
	.uaword	0x1ac0256
	.uaword	0x80ab8056
	.uaword	0x2be055
	.uaword	0xc80a8815
	.uaword	0xb4026605
	.uaword	0xae805a01
	.uaword	0x2b205700
	.uaword	0xad815a0
	.uaword	0x27805d8
	.uaword	0x5f01bd
	.uaword	0x58c0af

	.uaword	0x1016102c
	.uaword	0x88050c0b
	.uaword	0x6201b702
	.uaword	0x5880a880
	.uaword	0x6a02cc0
	.uaword	0x1d80b38
	.uaword	0x64330290
	.uaword	0x5980b280
	.uaword	0x16c02c60
	.uaword	0x9cad0868
	.uaword	0x6901d102
	.uaword	0x5ac0b400
	.uaword	0x16f02c80
	.uaword	0x5580ba8
	.uaword	0x1d002ae
	.uaword	0xc0b6006d

	.uaword	0xd02d805b
	.uaword	0x780bc016
	.uaword	0xe002be05
	.uaword	0xb8807001
	.uaword	0x2e205b80
	.uaword	0xb201730
	.uaword	0x2cc0594
	.uaword	0x7401e7
	.uaword	0x405d40ba
	.uaword	0x6017b02e
	.uaword	0xdc05b40b
	.uaword	0x7801ef02
	.uaword	0x5ec0bc00
	.uaword	0x17502f80
	.uaword	0x5c40bb0
	.uaword	0x1f802ee

	.uaword	0x80be807c
	.uaword	0xc02f605f
	.uaword	0xf80be817
	.uaword	0x8002fe05
	.uaword	0x3c814002
	.uaword	0x48405080
	.uaword	0x12302430
	.uaword	0x4100910
	.uaword	0x1450289
	.uaword	0xe090c022
	.uaword	0x6824c048
	.uaword	0x1e093812
	.uaword	0x48029004
	.uaword	0x92802481
	.uaword	0x24404960
	.uaword	0x95812a8

	.uaword	0x298042e
	.uaword	0x4021814c
	.uaword	0xb0494093
	.uaword	0x7412e024
	.uaword	0x9f043c09
	.uaword	0x28015002
	.uaword	0x4a409440
	.uaword	0x12202530
	.uaword	0x44c0994
	.uaword	0x815302a9
	.uaword	0x8095c02a
	.uaword	0x7025d04a
	.uaword	0x5e09a812
	.uaword	0x5802b004
	.uaword	0x96802c81
	.uaword	0x25404b60

	.uaword	0x9d812a8
	.uaword	0x2b8046e
	.uaword	0x802e815c
	.uaword	0xc04b6097
	.uaword	0xa012e825
	.uaword	0xc1048009
	.uaword	0x30016102
	.uaword	0x4cc097c0
	.uaword	0x13282640
	.uaword	0x48e0918
	.uaword	0x816402c8
	.uaword	0x60998032
	.uaword	0x6826c04c
	.uaword	0x9c09fc12
	.uaword	0x6802cf04
	.uaword	0x9a403401

	.uaword	0x26304d40
	.uaword	0x95413a0
	.uaword	0x2d704ac
	.uaword	0x4036016c
	.uaword	0xb04d409b
	.uaword	0x7413e026
	.uaword	0xdf04bc09
	.uaword	0x38017002
	.uaword	0x4e409c40
	.uaword	0x13202730
	.uaword	0x4cc0994
	.uaword	0x17402e7
	.uaword	0x409d403a
	.uaword	0x6027b04e
	.uaword	0xdc09b413
	.uaword	0x7802ef04

	.uaword	0x9e403c01
	.uaword	0x27304f40
	.uaword	0x9d413a0
	.uaword	0x2f704ec
	.uaword	0x403e017c
	.uaword	0xb04f409f
	.uaword	0xf413e027
	.uaword	0xfe04fe09
	.uaword	0xa0014002
	.uaword	0x6880d040
	.uaword	0x1a303420
	.uaword	0x6100d1c
	.uaword	0x1450389
	.uaword	0x80d1c0a2
	.uaword	0x2834d068
	.uaword	0x1c0d3c1a

	.uaword	0x48039106
	.uaword	0xd280a401
	.uaword	0x34606960
	.uaword	0xd601aa0
	.uaword	0x39a0632
	.uaword	0xc0a5814d
	.uaword	0xc069a0d3
	.uaword	0x7c1af034
	.uaword	0xa106400d
	.uaword	0xa8015103
	.uaword	0x6aa0d4c0
	.uaword	0x1a303540
	.uaword	0x6540d9c
	.uaword	0x15603a8
	.uaword	0xc0d540ab
	.uaword	0x5835f06a

	.uaword	0x600dc41a
	.uaword	0x5903b206
	.uaword	0xd600ad81
	.uaword	0x35606ba0
	.uaword	0xde01ab8
	.uaword	0x3ba0672
	.uaword	0x80af815d
	.uaword	0x6ce0d7
	.uaword	0xf01a0836
	.uaword	0xc306840d
	.uaword	0xb1016203
	.uaword	0x6cc0d840
	.uaword	0x1b403670
	.uaword	0x6940d24
	.uaword	0x16603cb
	.uaword	0xa0d940af

	.uaword	0x7836e06c
	.uaword	0xa20d401b
	.uaword	0x6a03d206
	.uaword	0xda80b581
	.uaword	0x36806de0
	.uaword	0xd641b98
	.uaword	0x3dd06b4
	.uaword	0xc0b7816d
	.uaword	0x106e00dc
	.uaword	0x781b1037
	.uaword	0xe406c60d
	.uaword	0xb9817203
	.uaword	0x6ee0dc80
	.uaword	0x1b483780
	.uaword	0x6d60da8
	.uaword	0x817603ec

	.uaword	0xc0dd00b7
	.uaword	0x8037f06e
	.uaword	0xe20dcc1b
	.uaword	0x7b03f506
	.uaword	0xdfc0bd01
	.uaword	0x37906f00
	.uaword	0xde81ba0
	.uaword	0x3fc06f6
	.uaword	0x80bf817e
	.uaword	0x68e0df
	.uaword	0x8220844
	.uaword	0x84080611
	.uaword	0x21824204
	.uaword	0x8fe01081
	.uaword	0x22403420
	.uaword	0x8181124

	.uaword	0x247048a
	.uaword	0x12c123
	.uaword	0x90441089
	.uaword	0x26113422
	.uaword	0x4a049408
	.uaword	0x12812582
	.uaword	0x448089e0
	.uaword	0x116822c8
	.uaword	0x49c0836
	.uaword	0x8127824e
	.uaword	0x8ae013
	.uaword	0x84225844
	.uaword	0xa3084411
	.uaword	0x29025204
	.uaword	0x8ac01441
	.uaword	0x22404570

	.uaword	0x85411a4
	.uaword	0x25604ab
	.uaword	0xc015412b
	.uaword	0x7835408d
	.uaword	0x6611c022
	.uaword	0x5a04b108
	.uaword	0x16812d82
	.uaword	0x45808be0
	.uaword	0x11e422a0
	.uaword	0x4bb0874
	.uaword	0x412f025e
	.uaword	0xf08bc017
	.uaword	0x4230046
	.uaword	0xc3088411
	.uaword	0x31025904
	.uaword	0x8ca01801

	.uaword	0x23484660
	.uaword	0x896111c
	.uaword	0x826604cc
	.uaword	0xe0198133
	.uaword	0x8046a08c
	.uaword	0xa4114423
	.uaword	0x6a04d308
	.uaword	0x1a413502
	.uaword	0x46708dc0
	.uaword	0x116423c0
	.uaword	0x4db08b4
	.uaword	0x4137026e
	.uaword	0xe08d0019
	.uaword	0x8823f846
	.uaword	0xe408c011
	.uaword	0x39827204

	.uaword	0x8ee01c81
	.uaword	0x23184780
	.uaword	0x8d411a4
	.uaword	0x27604eb
	.uaword	0xc01d413b
	.uaword	0x8047f08e
	.uaword	0xe411c423
	.uaword	0x7a04f308
	.uaword	0x1e413d02
	.uaword	0x47108ec0
	.uaword	0x11e023b8
	.uaword	0x4fa08f2
	.uaword	0x13f827d
	.uaword	0xe08fa01f
	.uaword	0x22f847
	.uaword	0x820a0215

	.uaword	0xa1824105
	.uaword	0xa8a05001
	.uaword	0x2a385460
	.uaword	0xa121520
	.uaword	0x8245058a
	.uaword	0xe05181a3
	.uaword	0x885400a9
	.uaword	0x2615482a
	.uaword	0x4605940a
	.uaword	0x5241a502
	.uaword	0x5470a9c0
	.uaword	0x15642ac0
	.uaword	0x59b0a34
	.uaword	0x1a78246
	.uaword	0xe0a9a053
	.uaword	0x802af854

	.uaword	0xa20a4215
	.uaword	0xa9825105
	.uaword	0xaaa05401
	.uaword	0x2a385560
	.uaword	0xa5215a0
	.uaword	0x825505aa
	.uaword	0xa05501ab
	.uaword	0x7855e0aa
	.uaword	0x6215c02a
	.uaword	0x5905b20a
	.uaword	0x5601ad82
	.uaword	0x5560aba0
	.uaword	0x15e02ab8
	.uaword	0x5ba0a72
	.uaword	0x1af825d
	.uaword	0xe0aba057

	.uaword	0x2bf855
	.uaword	0xc20a8215
	.uaword	0xb1826105
	.uaword	0xaca05801
	.uaword	0x2b485660
	.uaword	0xa961528
	.uaword	0x826305cc
	.uaword	0xc05941b3
	.uaword	0x8056f0ac
	.uaword	0x9015442b
	.uaword	0x6905d20a
	.uaword	0x5a81b582
	.uaword	0x5680ad80
	.uaword	0x15682bc8
	.uaword	0x5d70ab6
	.uaword	0xc1b7026f

	.uaword	0x10ae005c
	.uaword	0x8c2b1057
	.uaword	0xe50ac815
	.uaword	0xb9027305
	.uaword	0xae805bc1
	.uaword	0x2b485780
	.uaword	0xada15b0
	.uaword	0x827705ee
	.uaword	0x5e81ba
	.uaword	0x905710af
	.uaword	0xe815cc2b
	.uaword	0x7b05f50a
	.uaword	0x5fc1bd02
	.uaword	0x5790af00
	.uaword	0x15ec2bd0
	.uaword	0x5fd0af8

	.uaword	0xc1bf027f
	.uaword	0x10c80050
	.uaword	0xc321064
	.uaword	0x850c0819
	.uaword	0x21034306
	.uaword	0xc80091c1
	.uaword	0x32506490
	.uaword	0xc18192c
	.uaword	0x347068d
	.uaword	0x92c123
	.uaword	0x906410c9
	.uaword	0x28194c32
	.uaword	0x4b06950c
	.uaword	0x93c12503
	.uaword	0x6490c900
	.uaword	0x196c32d0

	.uaword	0x69d0c38
	.uaword	0xc127034f
	.uaword	0x10ca0094
	.uaword	0x8c321065
	.uaword	0xa50c4819
	.uaword	0x29035306
	.uaword	0xca0095c1
	.uaword	0x32506590
	.uaword	0xc5819ac
	.uaword	0x35706ad
	.uaword	0x96c12b
	.uaword	0x906510cb
	.uaword	0x6819cc32
	.uaword	0x5b06b50c
	.uaword	0x97c12d03
	.uaword	0x6590cb00

	.uaword	0x19ec32d0
	.uaword	0x5eb0c78
	.uaword	0x4137835e
	.uaword	0xf0cbc057
	.uaword	0x4330066
	.uaword	0xd50c8419
	.uaword	0x31036305
	.uaword	0xcc0099c1
	.uaword	0x33186690
	.uaword	0xc961928
	.uaword	0x836606cc
	.uaword	0xe0998133
	.uaword	0x886600cd
	.uaword	0xa6194833
	.uaword	0x6a06d40c
	.uaword	0x9a813583

	.uaword	0x6680cde0
	.uaword	0x196833c8
	.uaword	0x6dc0cb6
	.uaword	0x8137836e
	.uaword	0xcee09b
	.uaword	0x14330867
	.uaword	0xe30cc419
	.uaword	0x39037206
	.uaword	0xcec09c41
	.uaword	0x33406770
	.uaword	0xc8819a4
	.uaword	0x837506ea
	.uaword	0xa09d013b
	.uaword	0x7867e0ce
	.uaword	0xe219c033
	.uaword	0x7906f20c

	.uaword	0x9e013d83
	.uaword	0x6780cfe0
	.uaword	0x19e833c8
	.uaword	0x6fb0cea
	.uaword	0x413f037e
	.uaword	0xf0cfc09e
	.uaword	0x32f067
	.uaword	0x820e021d
	.uaword	0xa1834107
	.uaword	0x6820d501
	.uaword	0x3a287460
	.uaword	0xe141d24
	.uaword	0x346078b
	.uaword	0xa0d1c1a1
	.uaword	0x7874e0e8
	.uaword	0x221d403a

	.uaword	0x4907920e
	.uaword	0xd101a583
	.uaword	0x7460e900
	.uaword	0x1d5c3aa8
	.uaword	0x7990e30
	.uaword	0xc1a6034d
	.uaword	0xd069a0d2
	.uaword	0x7c3ae074
	.uaword	0xa00e3c1d
	.uaword	0xa8835007
	.uaword	0xea60d481
	.uaword	0x1a187440
	.uaword	0xe4a1d98
	.uaword	0x35507a9
	.uaword	0x80d5c1aa
	.uaword	0x687570ea

	.uaword	0x5e1db83a
	.uaword	0x5807b00e
	.uaword	0xd681ac83
	.uaword	0x7540eb60
	.uaword	0x1ddc3a40
	.uaword	0x7b90e70
	.uaword	0x41ad035d
	.uaword	0xc0eb60d7
	.uaword	0xf83ae875
	.uaword	0xc00e7e1d
	.uaword	0xb0836007
	.uaword	0xecc0d681
	.uaword	0x3b307650
	.uaword	0xe901d1c
	.uaword	0x836407c3
	.uaword	0x60d981b2

	.uaword	0x6876c0ec
	.uaword	0xa21d383b
	.uaword	0x6907cf0e
	.uaword	0xda01b583
	.uaword	0x7660eda0
	.uaword	0x1d5c3b90
	.uaword	0x7d90eb0
	.uaword	0xc1b6036d
	.uaword	0xd0ed80db
	.uaword	0x7c3bf076
	.uaword	0xe10ec01d
	.uaword	0xb8037107
	.uaword	0xee80dcc1
	.uaword	0x3b307750
	.uaword	0xed01d9c
	.uaword	0x37507e9

	.uaword	0x80ddc1ba
	.uaword	0x7077d0ee
	.uaword	0xe01dbc3b
	.uaword	0x7907f10e
	.uaword	0xdec1bc03
	.uaword	0x7750ef80
	.uaword	0x1ddc3bb0
	.uaword	0x7f90ef0
	.uaword	0xc1be037d
	.uaword	0xd0ef80df
	.uaword	0xfc3bf077
	.uaword	0x8110001d
	.uaword	0x20044108
	.uaword	0x88110c2
	.uaword	0x42308450
	.uaword	0x1010211c

	.uaword	0x4450889
	.uaword	0x8111c222
	.uaword	0x7084d008
	.uaword	0x20213c42
	.uaword	0x49089110
	.uaword	0x12c22404
	.uaword	0x84500981
	.uaword	0x215c42b0
	.uaword	0x8991030
	.uaword	0xc226044d
	.uaword	0xd0098113
	.uaword	0x7c42f084
	.uaword	0xa1104021
	.uaword	0x28045108
	.uaword	0xa8114c2
	.uaword	0x42308550

	.uaword	0x1050219c
	.uaword	0x45508a9
	.uaword	0x8115c22a
	.uaword	0x7085d00a
	.uaword	0xa021bc42
	.uaword	0x5808b00e
	.uaword	0x16822c84
	.uaword	0x86400b61
	.uaword	0x21d43a20
	.uaword	0x8b7106c
	.uaword	0x422e045c
	.uaword	0xb00b4117
	.uaword	0xf442e085
	.uaword	0xbf107c21
	.uaword	0x30046008
	.uaword	0xc411842

	.uaword	0x43208630
	.uaword	0x108c2114
	.uaword	0x46408c7
	.uaword	0x21198232
	.uaword	0xc80b00c
	.uaword	0x2f2fa0b
	.uaword	0x83cc0496
	.uaword	0x21b382a5
	.uaword	0xc81461b9
	.uaword	0x2c8958a2
	.uaword	0x3b6576c2
	.uaword	0xce9b1d36
	.uaword	0x539757ce
	.uaword	0xece5c5b3
	.uaword	0x42767cec
	.uaword	0x931d253b

	.uaword	0x6567cace
	.uaword	0xd8fdb0a3
	.uaword	0x794aec8e
	.uaword	0x5e153b29
	.uaword	0xd7c62e4d
	.uaword	0xd5b18b63
	.uaword	0x7acf8d9
	.uaword	0x73b0976
	.uaword	0xc30e855d
	.uaword	0xb2cb6117
	.uaword	0xb27c59ed
	.uaword	0xab6456c7
	.uaword	0x6b9b5533
	.uaword	0x2267152e
	.uaword	0xe265b1b3
	.uaword	0x445c7dac

	.uaword	0x921524ab
	.uaword	0x65c5c94a
	.uaword	0x58e1b25a
	.uaword	0x5940ac74
	.uaword	0x56962c2a
	.uaword	0xa426eb4c
	.uaword	0x7e596d3d
	.uaword	0x4296809c
	.uaword	0x3d34210b
	.uaword	0x2e0f5916
	.uaword	0x4a859589
	.uaword	0x796643cc
	.uaword	0xc6d94cb3
	.uaword	0x3f39e96c
	.uaword	0x900d211b
	.uaword	0x6443c9c6

	.uaword	0xd988b2d1
	.uaword	0x3ab3755e
	.uaword	0x4d4f1edc
	.uaword	0x53c00680
	.uaword	0x8cb09960
	.uaword	0x376c50d8
	.uaword	0xa7017836
	.uaword	0x59e0b2e0
	.uaword	0x16c72c74
	.uaword	0xc5350b67
	.uaword	0x41caa293
	.uaword	0xc0ca4065
	.uaword	0x7a2c6c59
	.uaword	0xa10c3f16
	.uaword	0xc9e29185
	.uaword	0xb1e06231

	.uaword	0x2cd25894
	.uaword	0xc1f1673
	.uaword	0x28a4592
	.uaword	0xc09141c5
	.uaword	0x3e58ecc8
	.uaword	0x1516262c
	.uaword	0x82c5038b
	.uaword	0xc031c122
	.uaword	0x585cb0a8
	.uaword	0x1d1b2c32
	.uaword	0x45028b03
	.uaword	0xd1c06281
	.uaword	0x4b02860
	.uaword	0xc3c42080
	.uaword	0x34d40c24
	.uaword	0x68c3d560

	.uaword	0x9431c00d
	.uaword	0x524a29a5
	.uaword	0x4a29a594
	.uaword	0x29a59452
	.uaword	0xa594524a
	.uaword	0x94524a29
	.uaword	0x524a29a5
	.uaword	0x4a29a594
	.uaword	0x29a59452
	.uaword	0xa594524a
	.uaword	0x94524a29
	.uaword	0x524a29a5
	.uaword	0x4a29a594
	.uaword	0x29a59452
	.uaword	0xa594524a
	.uaword	0x94524a29

	.uaword	0x524a29a5
	.uaword	0x4a29a594
	.uaword	0x29a59452
	.uaword	0xa594524a
	.uaword	0x9c534a29
	.uaword	0xd6da5aeb
	.uaword	0xe37bafb5
	.uaword	0x8c31c618
	.uaword	0x31c61863
	.uaword	0xc618638c
	.uaword	0x18638c31
	.uaword	0x638c31c6
	.uaword	0x8c31c618
	.uaword	0x31c61863
	.uaword	0xc618638c
	.uaword	0x18638c31

	.uaword	0x638c31c6
	.uaword	0x8c31c618
	.uaword	0x31c61863
	.uaword	0xc618638c
	.uaword	0x18638c31
	.uaword	0x638c31c6
	.uaword	0x8c31c618
	.uaword	0x31c61863
	.uaword	0xc618638c
	.uaword	0x18638c31
	.uaword	0x638c31c6
	.uaword	0x8c31c618
	.uaword	0x31c61863
	.uaword	0xc618638c
	.uaword	0x18638c31
	.uaword	0x638c31c6

	.uaword	0x8c31c618
	.uaword	0xadb5f65e
	.uaword	0x9472ce5a
	.uaword	0x524a29a5
	.uaword	0x4a29a594
	.uaword	0x29a59452
	.uaword	0xa594524a
	.uaword	0x94524a29
	.uaword	0x514a29a5
	.uaword	0x4a29a594
	.uaword	0x29a59452
	.uaword	0xa594524a
	.uaword	0x94524a29
	.uahalf	0x2ca5
	.byte	0x44
	.weak	elbrus_optimizing_compiler_v1.24.09_Feb_11_2020
	elbrus_optimizing_compiler_v1.24.09_Feb_11_2020 = 0x0
