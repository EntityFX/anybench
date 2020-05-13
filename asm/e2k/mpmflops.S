	.file	"mpmflops.c"
	.ignore	ld_st_style
	.ignore	strict_delay
	.text
	.global	triadplus2
	.type	triadplus2, #function
	.align	8
triadplus2:
	{
	  setwd	wsz = 0x41, nfx = 0x1, dbl = 0x1
	  setbn	rsz = 0x20, rbs = 0x20, rcur = 0x0
	  disp	%ctpr2, .L661
	  getsp,0	_f32s,_lts1 0xfffffdb0, %r9
	  adds,1,sm	0x0, %r2, %r39
	  adds,2	0x0, 0x0, %r11
	  adds,3,sm	0x0, %r7, %r40
	  adds,4,sm	0x0, %r6, %r41
	  adds,5,sm	0x0, %r0, %r0
	}
	{
	  return	%ctpr3
	  cmplsb,0	0x0, %r0, %pred0
	  adds,1,sm	0x0, %r4, %r44
	  adds,2,sm	0x0, %r1, %r42
	  adds,3,sm	0x0, %r3, %r45
	  addd,4,sm	0x0, 0x0, %r48
	  adds,5,sm	0x0, %r5, %r43
	}
	{
	  disp	%ctpr1, .L405
	  cmplsb,0,sm	0x1, %r0, %pred1
	  addd,2	%r9, _f64,_lts0 0x250, %r8
	}
	{
	  ldd,0,sm	%r8, _f16s,_lts0lo 0xb8, %r46
	  merges,1,sm	0x1, %r0, %r12, %pred0
	  ldw,2,sm	%r8, _f16s,_lts0hi 0x40, %r35
	  addd,3	0x0, 0x0, %r47 ? %pred0
	}
	{
	  ct	%ctpr3 ? ~%pred0
	  ldw,0,sm	%r8, _f16s,_lts0lo 0x48, %r38
	  cmplsb,1,sm	%r12, _f16s,_lts0hi 0x10, %pred2
	  ldw,2,sm	%r8, _f16s,_lts1lo 0x50, %r33
	  ldw,3,sm	%r8, _f16s,_lts1hi 0x58, %r32
	  ldw,5,sm	%r8, _f32s,_lts2 0x60, %r37
	}
	{
	  ldw,0,sm	%r8, _f16s,_lts0lo 0x68, %r36
	  ldw,2,sm	%r8, _f16s,_lts0hi 0x70, %r29
	  ldw,3,sm	%r8, _f16s,_lts1lo 0x78, %r28
	  ldw,5,sm	%r8, _f16s,_lts1hi 0x80, %r34
	  pass	%pred0, @p0
	  pass	%pred2, @p1
	  landp	@p0, @p1, @p4
	  pass	@p4, %pred3
	  landp	@p0, ~@p1, @p5
	  pass	@p5, %pred0
	}
	{
	  ldw,0,sm	%r8, _f16s,_lts0lo 0x88, %r24
	  cmpandedb,1,sm	%r46, 0x4, %pred2
	  ldw,2,sm	%r8, _f16s,_lts0hi 0x90, %r31
	  ldw,3,sm	%r8, _f16s,_lts1hi 0xa0, %r27
	  ldw,5,sm	%r8, _f16s,_lts1lo 0x98, %r30
	}
	{
	  ldw,0,sm	%r8, _f16s,_lts0lo 0xa8, %r26
	  ldw,2,sm	%r8, _f16s,_lts0hi 0xb0, %r25
	  ldw,3,sm	%r46, 0x0, %g16
	  pass	%pred0, @p0
	  pass	%pred2, @p1
	  landp	@p0, @p1, @p4
	  pass	@p4, %pred4
	  landp	@p0, ~@p1, @p5
	  pass	@p5, %pred0
	  pass	%pred1, @p2
	  landp	@p5, ~@p2, @p6
	  pass	@p6, %pred1
	}
	{
	  ct	%ctpr2 ? %pred3
	}
	{
	  addd,0	0x1, 0x0, %r47 ? %pred0
	  adds,1	0x1, 0x0, %r11 ? %pred0
	}
	{
	  ct	%ctpr1 ? %pred4
	  fadds,3,sm	%g16, %r3, %g17
	  fadds,4,sm	%g16, %r1, %g18
	  fadds,5,sm	%g16, %r5, %g19
	}
	{
	  return	%ctpr3
	  fadds,0,sm	%g16, %r7, %g20
	  fadds,1,sm	%g16, %r38, %g21
	  fadds,2,sm	%g16, %r32, %g22
	  fadds,3,sm	%g16, %r36, %g23
	  fadds,4,sm	%g16, %r28, %g24
	  fadds,5,sm	%g16, %r24, %g25
	}
	{
	  nop 1
	  fadds,0,sm	%g16, %r30, %g26
	  fadds,1,sm	%g16, %r26, %g16
	}
	{
	  fmuls,3,sm	%g17, %r4, %g17
	  fmuls,4,sm	%g18, %r2, %g18
	  fmuls,5,sm	%g19, %r6, %g19
	}
	{
	  fmuls,0,sm	%g20, %r35, %g20
	  fmuls,1,sm	%g21, %r33, %g21
	  fmuls,2,sm	%g22, %r37, %g22
	  fmuls,3,sm	%g23, %r29, %g23
	  fmuls,4,sm	%g24, %r34, %g24
	  fmuls,5,sm	%g25, %r31, %g25
	}
	{
	  nop 1
	  fmuls,0,sm	%g26, %r27, %g26
	  fmuls,1,sm	%g16, %r25, %g16
	}
	{
	  nop 3
	  fsubs,3,sm	%g18, %g17, %g17
	}
	{
	  nop 3
	  fadds,3,sm	%g17, %g19, %g17
	}
	{
	  nop 3
	  fsubs,3,sm	%g17, %g20, %g17
	}
	{
	  nop 3
	  fadds,3,sm	%g17, %g21, %g17
	}
	{
	  nop 3
	  fsubs,3,sm	%g17, %g22, %g17
	}
	{
	  nop 3
	  fadds,3,sm	%g17, %g23, %g17
	}
	{
	  nop 3
	  fsubs,3,sm	%g17, %g24, %g17
	}
	{
	  nop 3
	  fadds,3,sm	%g17, %g25, %g17
	}
	{
	  nop 3
	  fsubs,3,sm	%g17, %g26, %g17
	}
	{
	  nop 3
	  fadds,3,sm	%g17, %g16, %g16
	}
	{
	  ibranch	.L147 ? %pred1
	  stw,5	%r46, 0x0, %g16 ? %pred0
	}
.L405:
	{
	  adds,0	0x0, %r41, %g18
	  adds,1	0x0, %r40, %g19
	  adds,2	0x0, %r44, %g16
	  cmplsb,3,sm	%r11, %r0, %pred0
	  adds,4	0x0, %r42, %g20
	  adds,5	0x0, %r43, %g17
	}
	{
	  subs,0,sm	%r0, 0x1, %g23
	  subs,1,sm	0x1, %r11, %g24
	  adds,2	0x0, %r39, %g21
	  insfd,3	%r26, _f32s,_lts0 0xa820, %r26, %r12
	  insfd,4	%r25, _lit32_ref,_lts0 0xa820, %r25, %r11
	  adds,5	0x0, %r45, %g22
	}
	{
	  insfd,0	%r24, _f32s,_lts0 0xa820, %r24, %r15
	  insfd,1	%r31, _lit32_ref,_lts0 0xa820, %r31, %r16
	  adds,2,sm	%g23, %g24, %g23
	  insfd,3	%r30, _lit32_ref,_lts0 0xa820, %r30, %r7
	  insfd,4	%r27, _lit32_ref,_lts0 0xa820, %r27, %r9
	}
	{
	  insfd,0	%r29, _f32s,_lts0 0xa820, %r29, %r20
	  insfd,1	%r28, _lit32_ref,_lts0 0xa820, %r28, %r13
	  merges,2,sm	0x1, %g23, %r50, %pred0
	  insfd,3	%r34, _lit32_ref,_lts0 0xa820, %r34, %r14
	  insfd,4	%r33, _lit32_ref,_lts0 0xa820, %r33, %r23
	}
	{
	  insfd,0	%g16, _f32s,_lts0 0xa820, %g16, %r6
	  insfd,1	%g18, _lit32_ref,_lts0 0xa820, %g18, %r1
	  shrs,2	%r50, 0x1, %r49
	  insfd,3	%g19, _lit32_ref,_lts0 0xa820, %g19, %r2
	  insfd,4	%g17, _lit32_ref,_lts0 0xa820, %g17, %r0
	}
	{
	  insfd,0	%g20, _f32s,_lts0 0xa820, %g20, %r3
	  insfd,1	%g21, _lit32_ref,_lts0 0xa820, %g21, %r4
	  insfd,3	%g22, _lit32_ref,_lts0 0xa820, %g22, %r5
	  insfd,4	%r32, _lit32_ref,_lts0 0xa820, %r32, %r17
	}
	{
	  insfd,0	%r37, _f32s,_lts0 0xa820, %r37, %r18
	  insfd,1	%r36, _lit32_ref,_lts0 0xa820, %r36, %r19
	  insfd,3	%r35, _lit32_ref,_lts0 0xa820, %r35, %r21
	  insfd,4	%r38, _lit32_ref,_lts0 0xa820, %r38, %r22
	}
	{
	  setwd	wsz = 0x41, nfx = 0x1, dbl = 0x1
	  setbn	rsz = 0x20, rbs = 0x20, rcur = 0x0
	  ldisp	%ctpr2, .L973
	  shld,0,sm	%r47, 0x2, %g16
	  cmplsb,1	0x0, %r49, %pred0
	  addd,2	0x0, _f64,_lts1 0x20ff2000000000, %g17
	  addd,3,sm	0x0, 0x0, %g19
	}
	{
	  disp	%ctpr1, .L20
	  ldd,0,sm	%r46, %g16, %g16
	  addd,1,sm	%r46, %g16, %g20
	  aaurwd,2	%r48, %aasti1
	}
	{
	  ldd,0,sm	%g20, 0x8, %g21
	  merges,1	0x1, %r49, %g23, %pred0
	  ldd,2,sm	%g20, _f16s,_lts0lo 0x18, %g22
	}
	{
	  ldd,0,sm	%g20, _f16s,_lts0lo 0x10, %g24
	  addd,1,sm	0x0, %g20, %g18
	  ldd,2,sm	%g20, _f16s,_lts0hi 0x28, %g25
	  ldd,3,sm	%g20, _f16s,_lts1lo 0x20, %g26
	  ldd,5,sm	%g20, _f16s,_lts1hi 0x40, %g27
	}
	{
	  pfadds,0,sm	%g16, %r3, %g29
	  pfadds,1,sm	%g16, %r5, %g28
	  pfadds,2,sm	%g16, %r0, %g30
	  ldd,3,sm	%g20, _f16s,_lts0lo 0x38, %g31
	  ldd,5,sm	%g20, _f16s,_lts0hi 0x30, %r48
	}
	{
	  pfadds,0,sm	%g21, %r5, %r51
	  pfadds,1,sm	%g21, %r3, %r52
	  pfadds,2,sm	%g22, %r5, %r53
	  pfadds,3,sm	%g16, %r2, %r54
	  pfadds,4,sm	%g16, %r22, %r55
	  ldd,5,sm	%g20, _f16s,_lts0lo 0x50, %r56
	}
	{
	  pfadds,0,sm	%g24, %r5, %r57
	  pfadds,1,sm	%g21, %r0, %r58
	  pfadds,2,sm	%g22, %r3, %r59
	  pfadds,3,sm	%g26, %r5, %r60
	  pfadds,4,sm	%g21, %r2, %r61
	  pfadds,5,sm	%g22, %r0, %r62
	}
	{
	  pfadds,0,sm	%g24, %r3, %r63
	  pfadds,1,sm	%g25, %r5, %g17
	  stw,2,sm	%r8, _f16s,_lts0lo 0xfff8, %r50
	  pfadds,3,sm	%g24, %r0, %r50
	  pfadds,4,sm	%g25, %r3, %r49
	  stw,5,sm	%r8, _f16s,_lts0hi 0xfff0, %r49
	}
	{
	  pfmuls,0,sm	%g28, %r6, %g28
	  pfadds,1,sm	%g26, %r3, %r46
	  std,2,sm	%r8, _f16s,_lts0lo 0xffe8, %r46
	  pfadds,3,sm	%g27, %r5, %r45
	  pfadds,4,sm	%g22, %r12, %b[33]
	  stw,5,sm	%r8, _f16s,_lts0hi 0xffe0, %r45
	}
	{
	  pfmuls,0,sm	%r51, %r6, %r51
	  pfmuls,1,sm	%r53, %r6, %r53
	  stw,2,sm	%r8, _f16s,_lts0lo 0xffd8, %r44
	  pfadds,3,sm	%g31, %r5, %r44
	  pfadds,4,sm	%r48, %r5, %r43
	  stw,5,sm	%r8, _f16s,_lts0hi 0xffd0, %r43
	}
	{
	  pfmuls,0,sm	%r57, %r6, %r57
	  pfadds,1,sm	%g21, %r22, %r42
	  stw,2,sm	%r8, _f16s,_lts0lo 0xffc8, %r42
	  pfmuls,3,sm	%r60, %r6, %r60
	  pfadds,4,sm	%g22, %r2, %r41
	  stw,5,sm	%r8, _f16s,_lts0hi 0xffc0, %r41
	}
	{
	  pfmuls,0,sm	%g17, %r6, %g17
	  pfadds,1,sm	%g24, %r2, %r40
	  stw,2,sm	%r8, _f16s,_lts0lo 0xffb8, %r40
	  pfadds,3,sm	%g24, %r12, %b[35]
	  pfadds,4,sm	%g25, %r0, %r39
	  stw,5,sm	%r8, _f16s,_lts0hi 0xffb0, %r39
	}
	{
	  pfmul_rsubs,0,sm	%g29, %r4, %g28, %g28
	  pfadds,1,sm	%g26, %r0, %g29
	  std,2,sm	%r8, _f16s,_lts0lo 0xffa8, %r38
	  pfmuls,3,sm	%r45, %r6, %r45
	  pfadds,4,sm	%g27, %r3, %r38
	  std,5,sm	%r8, _f16s,_lts0hi 0xffa0, %r37
	}
	{
	  pfadds,0,sm	%g31, %r3, %r37
	  pfmul_rsubs,1,sm	%r52, %r4, %r51, %r51
	  pfmul_rsubs,2,sm	%r59, %r4, %r53, %r52
	  pfadds,3,sm	%r48, %r3, %r53
	  pfmuls,4,sm	%r44, %r6, %r44
	  pfmuls,5,sm	%r43, %r6, %r43
	}
	{
	  ldd,0,sm	%g20, _f16s,_lts0lo 0x48, %r59
	  pfmul_rsubs,1,sm	%r63, %r4, %r57, %r57
	  pfadds,2,sm	%r56, %r5, %r60
	  pfadds,3,sm	%g16, %r17, %r63
	  pfmul_rsubs,4,sm	%r46, %r4, %r60, %r46
	  addd,5,sm	%g18, _f16s,_lts0hi 0xc8, %g18
	}
	{
	  pfmul_rsubs,0,sm	%r49, %r4, %g17, %g17
	  pfadds,1,sm	%g21, %r17, %r49
	  std,2,sm	%r8, _f16s,_lts0lo 0xff98, %r36
	  pfadds,3,sm	%g22, %r22, %r36
	  pfadds,4,sm	%g24, %r22, %r35
	  std,5,sm	%r8, _f16s,_lts0hi 0xff90, %r35
	}
	{
	  addd,0,sm	0x0, %g25, %b[40]
	  pfadds,1,sm	%g25, %r2, %r45
	  std,2,sm	%r8, _f16s,_lts0lo 0xff88, %r34
	  pfmul_rsubs,3,sm	%r38, %r4, %r45, %r38
	  pfadds,4,sm	%g26, %r2, %r34
	  std,5,sm	%r8, _f16s,_lts0hi 0xff80, %r33
	}
	{
	  pfadds,0,sm	%g27, %r0, %r33
	  std,2,sm	%r8, _f16s,_lts0hi 0xff70, %r31
	  pfmul_rsubs,3,sm	%r53, %r4, %r43, %r43
	  pfadds,4,sm	%g31, %r0, %r53
	  std,5,sm	%r8, _f16s,_lts0lo 0xff78, %r32
	}
	{
	  pfadds,0,sm	%r59, %r5, %r30
	  std,2,sm	%r8, _f16s,_lts0lo 0xff68, %r30
	  pfadds,3,sm	%r48, %r0, %r32
	  std,5,sm	%r8, _f16s,_lts0hi 0xff60, %r29
	}
	{
	  pfadds,1,sm	%r56, %r3, %r29
	  pfmuls,2,sm	%r60, %r6, %r44
	  pfadds,3,sm	%r59, %r3, %r60
	  pfmul_rsubs,4,sm	%r37, %r4, %r44, %r37
	  ldd,5,sm	%g20, _f16s,_lts0lo 0x60, %r31
	}
	{
	  pfadds,0,sm	%g16, %r19, %r28
	  pfmul_adds,1,sm	%g30, %r1, %g28, %g28
	  ldd,2,sm	%g20, _f16s,_lts0lo 0x58, %g30
	  pfadds,4,sm	%g26, %r7, %b[43]
	  std,5,sm	%r8, _f16s,_lts0hi 0xff58, %r28
	}
	{
	  pfmul_adds,0,sm	%r58, %r1, %r51, %r51
	  pfmul_adds,1,sm	%r62, %r1, %r52, %r52
	  pfadds,2,sm	%g21, %r19, %r58
	  pfadds,4,sm	%g22, %r17, %r62
	  std,5,sm	%r8, _f16s,_lts0lo 0xff50, %r27
	}
	{
	  pfadds,0,sm	%g24, %r17, %r27
	  pfmul_adds,1,sm	%r50, %r1, %r57, %r50
	  pfmuls,2,sm	%r30, %r6, %r30
	  pfmul_adds,3,sm	%g29, %r1, %r46, %g29
	  pfadds,4,sm	%r31, %r5, %r46
	  pfadds,5,sm	%g25, %r22, %r57
	}
	{
	  pfmul_adds,0,sm	%r39, %r1, %g17, %g17
	  pfmul_rsubs,1,sm	%r29, %r4, %r44, %r29
	  pfadds,2,sm	%g30, %r5, %r39
	  pfadds,3,sm	%g26, %r22, %r44
	  std,5,sm	%r8, _f16s,_lts0lo 0xff48, %r26
	}
	{
	  pfadds,0,sm	%g27, %r2, %r26
	  addd,1,sm	0x0, %g26, %b[42]
	  pfadds,2,sm	%g31, %r2, %r38
	  pfmul_adds,3,sm	%r33, %r1, %r38, %r33
	  pfadds,4,sm	%r48, %r2, %r25
	  std,5,sm	%r8, _f16s,_lts0lo 0xff40, %r25
	}
	{
	  addd,0,sm	%r8, _f16s,_lts0hi 0xff20, %r10
	  pfadds,2,sm	%r56, %r0, %r43
	  pfadds,3,sm	%r59, %r0, %r24
	  pfmul_adds,4,sm	%r32, %r1, %r43, %r32
	  std,5,sm	%r8, _f16s,_lts0lo 0xff38, %r24
	}
	{
	  std,2,sm	%r10, 0x0, %g18
	  std,5,sm	%r10, 0x8, %g19
	}
	{
	  addd,2	0x0, _f64,_lts1 0x20ff2000000000, %g19
	  pfadds,3,sm	%g16, %r15, %g18
	  pfadds,4,sm	%g21, %r15, %r59
	  std,5,sm	%r8, _f16s,_lts0lo 0xff18, %r59
	}
	{
	  insfd,0	%g19, _f32s,_lts0 0x8800, %g23, %g19
	  pfmul_subs,1,sm	%r54, %r21, %g28, %g23
	  pfmul_rsubs,2,sm	%r60, %r4, %r30, %r30
	  pfmul_adds,3,sm	%r53, %r1, %r37, %g28
	  pfadds,4,sm	%r31, %r3, %r37
	  pfmuls,5,sm	%r46, %r6, %r46
	}
	{
	  pfmul_subs,0,sm	%r41, %r21, %r52, %r41
	  pfmul_subs,1,sm	%r61, %r21, %r51, %r51
	  pfadds,2,sm	%g30, %r3, %r52
	  pfmuls,3,sm	%r39, %r6, %r39
	  ldd,5,sm	%g20, _f16s,_lts0lo 0x70, %r53
	}
	{
	  ldd,0,sm	%g20, _f16s,_lts0lo 0x68, %r34
	  pfmul_subs,1,sm	%r40, %r21, %r50, %r40
	  pfadds,2,sm	%g16, %r13, %r50
	  pfadds,3,sm	%g21, %r13, %r54
	  pfmul_subs,4,sm	%r34, %r21, %g29, %g29
	  pfadds,5,sm	%g22, %r19, %r60
	}
	{
	  pfmul_subs,0,sm	%r45, %r21, %g17, %g17
	  pfmul_adds,1,sm	%r43, %r1, %r29, %r29
	  pfadds,2,sm	%g24, %r19, %r43
	  pfadds,3,sm	%g25, %r17, %r45
	  pfadds,4,sm	%g26, %r17, %r61
	  std,5,sm	%r8, _f16s,_lts0lo 0xff10, %g21
	}
	{
	  pfadds,0,sm	%g27, %r22, %g21
	  andd,1	%g19, _f64,_lts0 0xffffffff, %r46
	  aaurwd,2	%g20, %aad1
	  pfmul_subs,3,sm	%r26, %r21, %r33, %r26
	  pfmul_rsubs,4,sm	%r37, %r4, %r46, %r33
	  pfadds,5,sm	%r53, %r5, %r37
	}
	{
	  addd,0,sm	0x0, %g27, %b[34]
	  addd,1,sm	0x0, %g31, %b[36]
	  pfadds,2,sm	%r34, %r5, %r32
	  pfmul_subs,3,sm	%r25, %r21, %r32, %r25
	  pfadds,4,sm	%g31, %r22, %r46
	  std,5,sm	%r8, _f16s,_lts0lo 0xff08, %r46
	}
	{
	  pfadds,0,sm	%r48, %r22, %g16
	  std,2,sm	%r8, _f16s,_lts0lo 0xff00, %g16
	  pfadds,3,sm	%r56, %r2, %r59
	  addd,4,sm	0x0, %r48, %b[38]
	  std,5,sm	%r8, _f16s,_lts0hi 0xfef8, %r59
	}
	{
	  pfmul_rsubs,0,sm	%r52, %r4, %r39, %r39
	  ldd,2	%r8, _f16s,_lts0lo 0xff18, %r52, mas=0x4
	  ldd,3,sm	%g20, _f16s,_lts1lo 0xc0, %b[2]
	  pfadds,4,sm	%r31, %r0, %g18
	  std,5,sm	%r8, _f16s,_lts0hi 0xfef0, %g18
	}
	{
	  pfmul_adds,0,sm	%r55, %r23, %g23, %g23
	  pfmul_adds,1,sm	%r24, %r1, %r30, %r24
	  pfadds,2,sm	%g30, %r0, %r30
	  pfmul_subs,3,sm	%r38, %r21, %g28, %g28
	  pfadds,5,sm	%r53, %r3, %r38
	}
	{
	  pfmul_adds,0,sm	%r36, %r23, %r41, %r36
	  pfmul_adds,1,sm	%r42, %r23, %r51, %r42
	  pfadds,2,sm	%r34, %r3, %r41
	  ldd,3,sm	%g20, _f16s,_lts0lo 0x80, %r51
	  pfmuls,4,sm	%r37, %r6, %r37
	  ldd,5,sm	%g20, _f16s,_lts0hi 0x78, %r55
	}
	{
	  pfadds,0,sm	%r52, %r2, %g20
	  pfmul_adds,1,sm	%r35, %r23, %r40, %r35
	  std,2,sm	%r8, _f16s,_lts0lo 0xfee0, %g20
	  pfmul_adds,3,sm	%r44, %r23, %g29, %g29
	  pfadds,4,sm	%g22, %r13, %r40
	  pfadds,5,sm	%g24, %r13, %r44
	}
	{
	  pfmul_adds,0,sm	%r57, %r23, %g17, %g17
	  pfmuls,1,sm	%r32, %r6, %r32
	  pfadds,2,sm	%g25, %r19, %r57
	  pfadds,3,sm	%g26, %r19, %g25
	  pfadds,4,sm	%r48, %r15, %b[49]
	  std,5,sm	%r8, _f16s,_lts0lo 0xfed8, %g25
	}
	{
	  pfmul_subs,0,sm	%r59, %r21, %r29, %r26
	  addd,1,sm	0x0, %r56, %b[30]
	  pfadds,2,sm	%g27, %r17, %r33
	  pfmul_adds,3,sm	%g21, %r23, %r26, %g21
	  pfmul_adds,4,sm	%g18, %r1, %r33, %g18
	  pfadds,5,sm	%r51, %r5, %r29
	}
	{
	  pfadds,2,sm	%r55, %r5, %r59
	  pfmul_adds,3,sm	%g16, %r23, %r25, %g16
	  pfmul_rsubs,4,sm	%r38, %r4, %r37, %r25
	  pfadds,5,sm	%g31, %r17, %r37
	}
	{
	  pfadds,0,sm	%r48, %r17, %r38
	  std,2,sm	%r8, _f16s,_lts0lo 0xfec8, %r48
	  pfadds,4,sm	%r56, %r22, %r48
	  std,5,sm	%r8, _f16s,_lts0hi 0xfec0, %r56
	}
	{
	  pfmul_adds,0,sm	%r30, %r1, %r39, %r30
	  pfadds,1,sm	%r52, %r22, %r56
	  pfmul_rsubs,2,sm	%r41, %r4, %r32, %r32
	  pfadds,3,sm	%r31, %r2, %r39
	  pfadds,4,sm	%g30, %r2, %r41
	  std,5,sm	%r8, _f16s,_lts0lo 0xfeb8, %r31
	}
	{
	  pfmul_subs,0,sm	%r63, %r18, %g23, %g23
	  pfadds,1,sm	%r53, %r0, %r31
	  pfmul_subs,2,sm	%g20, %r21, %r24, %g20
	  pfmul_adds,3,sm	%r46, %r23, %g28, %g28
	  pfadds,5,sm	%r34, %r0, %r24
	}
	{
	  pfmul_subs,0,sm	%r49, %r18, %r42, %r42
	  pfmul_subs,1,sm	%r62, %r18, %r36, %r36
	  pfadds,2,sm	%r51, %r3, %r46
	  pfmuls,5,sm	%r29, %r6, %r29
	}
	{
	  pfmuls,0,sm	%r59, %r6, %r49
	  pfmul_subs,1,sm	%r27, %r18, %r35, %r27
	  pfadds,2,sm	%r55, %r3, %r35
	  ldd,3	%r8, _f16s,_lts0lo 0xff00, %r59, mas=0x4
	  pfmul_subs,4,sm	%r61, %r18, %g29, %g29
	  pfadds,5,sm	%g22, %r15, %r61
	}
	{
	  ldd,0	%r8, _f16s,_lts0lo 0xfee0, %r45, mas=0x4
	  pfmul_subs,1,sm	%r45, %r18, %g17, %g17
	  std,2,sm	%r8, _f16s,_lts0hi 0xfed0, %g26
	  pfadds,3,sm	%g24, %r15, %r62
	  pfadds,4,sm	%g26, %r13, %r63
	  pfadds,5,sm	%g27, %r19, %g26
	}
	{
	  pfmul_adds,0,sm	%r48, %r23, %r26, %r26
	  pfadds,1,sm	%g31, %r19, %r33
	  pfmul_subs,3,sm	%r33, %r18, %g21, %g21
	  pfmul_subs,4,sm	%r39, %r21, %g18, %g18
	  pfadds,5,sm	%r52, %r17, %r39
	}
	{
	  std,2,sm	%r8, _f16s,_lts0lo 0xfeb0, %g30
	  pfadds,3,sm	%r59, %r7, %r48
	  std,5,sm	%r8, _f16s,_lts0hi 0xfea8, %g31
	}
	{
	  ldd,0	%r8, _f16s,_lts0lo 0xff20, %g30, mas=0x4
	  pfadds,2,sm	%r53, %r2, %r38
	  ldd,3	%r8, _f16s,_lts0hi 0xff28, %g31, mas=0x4
	  pfmul_subs,4,sm	%r38, %r18, %g16, %g16
	  pfadds,5,sm	%r59, %r12, %r59
	}
	{
	  rwd,0	%g19, %lsr
	  pfmul_subs,1,sm	%r41, %r21, %r30, %g19
	  std,2,sm	%r8, _f16s,_lts0lo 0xfea0, %r53
	  pfmul_adds,3,sm	%r31, %r1, %r25, %r25
	  pfmul_rsubs,4,sm	%r46, %r4, %r29, %r29
	  ldd,5,sm	%r45, _f16s,_lts0hi 0x98, %r53
	}
	{
	  pfmul_adds,0,sm	%r28, %r20, %g23, %g23
	  pfmul_adds,1,sm	%r24, %r1, %r32, %r24
	  pfmul_rsubs,2,sm	%r35, %r4, %r49, %r28
	  ldd,3,sm	%r45, _f16s,_lts0lo 0x90, %r30
	  pfmul_subs,4,sm	%r37, %r18, %g28, %g28
	  ldd,5	%r8, _f16s,_lts0hi 0xff10, %r31, mas=0x4
	}
	{
	  pfmul_adds,0,sm	%r58, %r20, %r42, %g30
	  pfmul_adds,1,sm	%r60, %r20, %r36, %g31
	  aaurwq,2	%g30, %aad0
	  pfadds,3,sm	%r51, %r0, %r35
	  pfadds,4,sm	%r34, %r2, %r32
	}
	{
	  pfmul_adds,0,sm	%r43, %r20, %r27, %r27
	  pfmul_adds,1,sm	%r56, %r23, %g20, %g20
	  ldd,2,sm	%r45, _f16s,_lts0lo 0x88, %r36
	  pfmul_adds,3,sm	%g25, %r20, %g29, %g25
	  pfadds,5,sm	%r53, %r5, %g29
	}
	{
	  bap
	  pfmul_adds,0,sm	%r57, %r20, %g17, %g17
	  addd,1,sm	0x0, %r52, %b[32]
	  ldd,2	%r8, _f16s,_lts0lo 0xfec8, %r41, mas=0x4
	  ldd,3	%r8, _f16s,_lts0hi 0xff08, %r42, mas=0x4
	  pfadds,5,sm	%r31, %r7, %r37
	}
	{
	  ldd,0,sm	%r45, _f16s,_lts0lo 0xa8, %r49
	  addd,1,sm	0x0, %r34, %b[24]
	  ldd,2,sm	%r45, _f16s,_lts0hi 0xa0, %r56
	  pfadds,3,sm	%r30, %r5, %r43
	  pfmul_adds,4,sm	%g26, %r20, %g21, %g21
	  pfadds,5,sm	%r55, %r0, %r46
	}
	{
	  ldd,0,sm	%r45, _f16s,_lts0lo 0xb0, %r57
	  pfadds,2,sm	%r36, %r5, %g26
	  pfadds,3,sm	%r31, %r12, %r31
	  pfadds,4,sm	%r53, %r3, %r58
	  pfadds,5,sm	%r30, %r3, %r60
	}
	{
	  std,2,sm	%r8, _f16s,_lts0lo 0xfe98, %r12
	  pfadds,4,sm	%r36, %r3, %r59
	  std,5,sm	%r8, _f16s,_lts0hi 0xfe90, %r59
	}
	{
	  pfadds,1,sm	%r41, %r19, %r12
	  std,2,sm	%r8, _f16s,_lts0lo 0xfe88, %r55
	}
	{
	  ldd,0	%r8, _f16s,_lts0lo 0xfec0, %r55, mas=0x4
	  pfmuls,1,sm	%g29, %r6, %g29
	  pfadds,2,sm	%r49, %r5, %r35
	  pfmul_subs,3,sm	%r38, %r21, %r25, %r25
	  pfmul_adds,4,sm	%r35, %r1, %r29, %r29
	  pfadds,5,sm	%r56, %r5, %r38
	}
	{
	  pfmul_subs,0,sm	%r50, %r14, %g23, %g23
	  pfmul_subs,1,sm	%r54, %r14, %g30, %g30
	  shld,2	%r42, 0x1, %r42
	  ldd,3	%r8, _f16s,_lts0lo 0xfeb8, %r50, mas=0x4
	  pfmuls,4,sm	%r43, %r6, %r43
	  pfmul_adds,5,sm	%r33, %r20, %g28, %g28
	}
	{
	  pfmul_subs,0,sm	%r40, %r14, %g31, %g31
	  pfmul_subs,1,sm	%r44, %r14, %r27, %r27
	  pfmuls,2,sm	%g26, %r6, %g26
	  pfmul_subs,3,sm	%r32, %r21, %r24, %r24
	  pfmul_subs,4,sm	%r63, %r14, %g25, %g25
	  pfmul_adds,5,sm	%r46, %r1, %r28, %r28
	}
	{
	  pfadds,0,sm	%r55, %r17, %r32
	  pfmul_subs,1,sm	%r39, %r18, %g20, %g20
	  ldd,2	%r8, _f16s,_lts0lo 0xfed8, %r33, mas=0x4
	  pfadds,3,sm	%g22, %r7, %g22
	  pfadds,4,sm	%g24, %r7, %g24
	  pfadds,5,sm	%g27, %r13, %g27
	}
	{
	  ldd,0	%r8, _f16s,_lts0lo 0xfeb0, %r40, mas=0x4
	  pfmul_adds,1,sm	%r12, %r20, %g16, %g16
	  pfmul_rsubs,2,sm	%r58, %r4, %g29, %g29
	  ldd,3,sm	%r45, _f16s,_lts0hi 0xb8, %r12
	  addd,4,sm	0x0, %r50, %b[26]
	  pfadds,5,sm	%r50, %r22, %r39
	}
	{
	  addd,1,sm	0x0, %r51, %b[18]
	  pfadds,2,sm	%r41, %r13, %r41
	  pfmul_rsubs,3,sm	%r60, %r4, %r43, %r43
	  pfadds,4,sm	%r55, %r19, %r44
	}
	{
	  pfmul_rsubs,0,sm	%r59, %r4, %g26, %g26
	  addd,1,sm	0x0, %r53, %b[12]
	  pfadds,2,sm	%r33, %r13, %r45
	  ldd,3	%r8, _f16s,_lts0lo 0xfea0, %r46, mas=0x4
	}
	{
	  pfadds,0,sm	%r40, %r22, %r54
	  pfmul_subs,1,sm	%r32, %r18, %r26, %r26
	  ldd,2	%r8, _f16s,_lts0lo 0xfed0, %r32, mas=0x4
	  addd,3,sm	0x0, %r40, %b[28]
	  pfadds,4,sm	%r52, %r19, %r55
	  pfadds,5,sm	%r50, %r17, %r50
	}
	{
	  pfadds,0,sm	%r40, %r17, %r39
	  pfmul_adds,3,sm	%r39, %r23, %g18, %g18
	  pfadds,4,sm	%r34, %r22, %r58
	  pfadds,5,sm	%r51, %r2, %r51
	}
	{
	  ldd,0	%r8, _f16s,_lts0lo 0xfef0, %r59, mas=0x4
	  pfadds,1,sm	%r33, %r15, %r33
	  pfadds,2,sm	%r53, %r0, %r53
	  addd,3,sm	0x0, %r46, %b[22]
	  pfadds,4,sm	%r46, %r22, %r46
	  pfadds,5,sm	%r30, %r0, %r60
	}
	{
	  pfmul_adds,0,sm	%r61, %r16, %g31, %g31
	  pfadds,1,sm	%r32, %r15, %r32
	  pfmul_adds,2,sm	%r62, %r16, %r27, %r27
	  ldd,3	%r8, _f16s,_lts0lo 0xfea8, %r61, mas=0x4
	  pfadds,4,sm	%r52, %r13, %b[64]
	  pfadds,5,sm	%r36, %r0, %r52
	}
	{
	  pfmul_subs,0,sm	%r45, %r14, %g17, %g17
	  pfmul_adds,1,sm	%r54, %r23, %g19, %g19
	  pfadds,2,sm	%r49, %r3, %r45
	  pfmuls,3,sm	%r35, %r6, %r35
	  pfadds,4,sm	%r56, %r3, %r54
	  pfmuls,5,sm	%r38, %r6, %r38
	}
	{
	  pfmul_adds,0,sm	%r59, %r16, %g23, %g23
	  pfadds,1,sm	%r57, %r5, %r62
	  ldd,2	%r8, _f16s,_lts0lo 0xfef8, %r59, mas=0x4
	  addd,3,sm	0x0, %r30, %b[14]
	  pfadds,4,sm	%r40, %r19, %b[45]
	  pfadds,5,sm	%r34, %r17, %b[62]
	}
	{
	  ldd,0	%r8, _f16s,_lts0lo 0xfe88, %r40, mas=0x4
	  pfadds,1,sm	%r30, %r2, %b[61]
	  pfadds,2,sm	%r36, %r2, %b[63]
	  pfadds,3,sm	%r61, %r13, %r34
	  pfadds,4,sm	%r56, %r0, %b[44]
	  pfadds,5,sm	%r57, %r3, %b[59]
	}
	{
	  addd,0,sm	0x0, %r36, %b[16]
	  pfmul_subs,1,sm	%g27, %r14, %g21, %b[53]
	  addd,2,sm	0x0, %r49, %b[8]
	  pfadds,3,sm	%r12, %r5, %b[51]
	  pfmul_subs,4,sm	%r41, %r14, %g16, %b[57]
	  pfmul_adds,5,sm	%r58, %r23, %r24, %b[5]
	}
	{
	  pfmul_adds,0,sm	%r59, %r16, %g30, %g16
	  pfmul_subs,1,sm	%r51, %r21, %r29, %b[29]
	  pfmul_adds,2,sm	%r55, %r20, %g20, %b[58]
	  pfmul_adds,3,sm	%r46, %r23, %r25, %b[3]
	  pfmul_adds,4,sm	%r53, %r1, %g29, %b[7]
	  pfmul_adds,5,sm	%r60, %r1, %r43, %b[9]
	}
	{
	  pfmul_adds,0,sm	%r32, %r16, %g25, %b[21]
	  pfadds,1,sm	%r40, %r2, %g20
	  pfadds,2,sm	%r40, %r22, %b[48]
	  pfmul_rsubs,3,sm	%r54, %r4, %r38, %b[25]
	  addd,4,sm	0x0, %r40, %b[20]
	  addd,5,sm	0x0, %r56, %b[10]
	}
	{
	  pfmul_adds,0,sm	%r44, %r20, %r26, %b[56]
	  pfmul_adds,1,sm	%r52, %r1, %g26, %b[11]
	  addd,2,sm	0x0, %r57, %b[6]
	  addd,3	%r47, %r42, %r47
	  addd,4,sm	0x0, %r12, %b[4]
	  pfmul_subs,5,sm	%r50, %r18, %g18, %b[37]
	}
	{
	  pfmuls,0,sm	%r62, %r6, %b[54]
	  pfmul_rsubs,1,sm	%r45, %r4, %r35, %b[23]
	  pfmul_subs,2,sm	%g22, %r9, %g31, %b[50]
	  pfmul_subs,3,sm	%r34, %r14, %g28, %b[55]
	}
	{
	  pfmul_subs,0,sm	%g24, %r9, %r27, %b[52]
	  pfmul_adds,1,sm	%r33, %r16, %g17, %b[19]
	  pfmul_subs,2,sm	%r39, %r18, %g19, %b[39]
	}
	{
	  nop 2
	  pfmul_subs,0,sm	%r48, %r9, %g23, %g17
	  pfmul_subs,1,sm	%g20, %r21, %r28, %b[31]
	}
	{
	  nop 4
	  pfmul_subs,0,sm	%r37, %r9, %g16, %g16
	}
	{
	  nop 2
	  ldd,0	%r8, _f16s,_lts0lo 0xfe90, %g18, mas=0x4
	}
	{
	  nop 5
	  pfmul_adds,0,sm	%g18, %r11, %g17, %b[15]
	  pfmul_adds,1,sm	%r31, %r11, %g16, %b[13]
	}
	{
	  ldd,0	%r8, _f16s,_lts0lo 0xfe98, %r12, mas=0x4
	  ldd,2	%r8, _f16s,_lts0hi 0xff38, %r24, mas=0x4
	  ldd,3	%r8, _f16s,_lts1lo 0xff40, %r25, mas=0x4
	  ldd,5	%r8, _f16s,_lts1hi 0xff48, %r26, mas=0x4
	}
	{
	  ldd,0	%r8, _f16s,_lts0lo 0xff50, %r27, mas=0x4
	  ldd,2	%r8, _f16s,_lts0hi 0xff58, %r28, mas=0x4
	  ldd,3	%r8, _f16s,_lts1lo 0xff60, %r29, mas=0x4
	  ldd,5	%r8, _f16s,_lts1hi 0xff68, %r30, mas=0x4
	}
	{
	  ldd,0	%r8, _f16s,_lts0lo 0xff70, %r31, mas=0x4
	  ldd,2	%r8, _f16s,_lts0hi 0xff78, %r32, mas=0x4
	  ldd,3	%r8, _f16s,_lts1lo 0xff80, %r33, mas=0x4
	  ldd,5	%r8, _f16s,_lts1hi 0xff88, %r34, mas=0x4
	}
	{
	  ldd,0	%r8, _f16s,_lts0lo 0xff90, %r35, mas=0x4
	  ldd,2	%r8, _f16s,_lts0hi 0xff98, %r36, mas=0x4
	  ldd,3	%r8, _f16s,_lts1lo 0xffa0, %r37, mas=0x4
	  ldd,5	%r8, _f16s,_lts1hi 0xffa8, %r38, mas=0x4
	}
	{
	  ldw,0	%r8, _f16s,_lts0lo 0xffb0, %r39, mas=0x4
	  ldw,2	%r8, _f16s,_lts0hi 0xffb8, %r40, mas=0x4
	  ldw,3	%r8, _f16s,_lts1lo 0xffc0, %r41, mas=0x4
	  ldw,5	%r8, _f16s,_lts1hi 0xffc8, %r42, mas=0x4
	}
	{
	  ldw,0	%r8, _f16s,_lts0lo 0xffd0, %r43, mas=0x4
	  ldw,2	%r8, _f16s,_lts0hi 0xffd8, %r44, mas=0x4
	  ldw,3	%r8, _f16s,_lts1lo 0xffe0, %r45, mas=0x4
	  ldd,5	%r8, _f16s,_lts1hi 0xffe8, %r46, mas=0x4
	}
	{
	  ldw,0	%r8, _f16s,_lts0lo 0xfff0, %r49, mas=0x4
	  ldw,2	%r8, _f16s,_lts0hi 0xfff8, %r50, mas=0x4
	}
.L20:
	{
	  loop_mode
	  pfmul_subs,0,sm	%b[63], %r21, %b[11], %b[27]
	  pfadds,1,sm	%b[18], %r22, %b[46]
	  pfmul_adds,2,sm	%b[48], %r23, %b[31], %b[1]
	  pfadds,3,sm	%b[36], %r15, %b[47]
	  pfmul_adds,4,sm	%b[49], %r16, %b[57], %b[17]
	  pfadds,5,sm	%b[40], %r7, %b[41]
	  movad,1	area=0, ind=0, am=1, be=0, %b[0]
	}
	{
	  loop_mode
	  pfadds,1,sm	%b[2], %r5, %b[49]
	  pfadds,2,sm	%b[4], %r3, %b[57]
	  pfmul_subs,3,sm	%b[43], %r9, %b[21], %b[48]
	  pfadds,4,sm	%b[42], %r12, %b[31]
	  pfmul_adds,5,sm	%b[35], %r11, %b[52], %b[11]
	}
	{
	  loop_mode
	  pfmuls,0,sm	%b[51], %r6, %b[52]
	  pfmul_rsubs,1,sm	%b[59], %r4, %b[54], %b[21]
	  pfadds,2,sm	%b[8], %r0, %b[42]
	  pfadds,3,sm	%b[22], %r17, %b[60]
	  pfmul_subs,4,sm	%b[62], %r18, %b[5], %b[35]
	  pfadds,5,sm	%b[26], %r19, %b[43]
	}
	{
	  loop_mode
	  alc	alcf=1, alct=1
	  abn	abnf=1, abnt=1
	  ct	%ctpr1 ? %NOT_LOOP_END
	  pfmul_adds,0,sm	%b[44], %r1, %b[25], %b[5]
	  pfadds,1,sm	%b[12], %r2, %b[59]
	  staad,2	%b[15], %aad1[ %aasti1 ]
	  incr,2	%aaincr0
	  pfmul_adds,3,sm	%b[45], %r20, %b[39], %b[54]
	  pfadds,4,sm	%b[30], %r13, %b[62]
	  pfmul_subs,5,sm	%b[64], %r14, %b[58], %b[51]
	}
	{
	  setwd	wsz = 0x41, nfx = 0x1, dbl = 0x1
	  setbn	rsz = 0x20, rbs = 0x20, rcur = 0x0
	  eap
	  return	%ctpr3
	  shld,0,sm	%r47, 0x2, %g16
	  shls,1	%r49, 0x1, %g17
	  adds,2	0x0, 0x0, %g18
	}
	{
	  disp	%ctpr2, disp=0x0
	  ldw,0,sm	%r46, %g16, %g19
	  cmpesb,1	%g17, %r50, %pred0
	  aaurw,2	%g18, %aabf0
	}
	{
	  nop 1
	  disp	%ctpr2, disp=0x0
	}
	{
	  fadds,0,sm	%g19, %r45, %g17
	  fadds,1,sm	%g19, %r42, %g18
	  fadds,2,sm	%g19, %r43, %g20
	}
	{
	  fadds,0,sm	%g19, %r40, %g21
	  fadds,1,sm	%g19, %r38, %g22
	  fadds,2,sm	%g19, %r32, %g23
	  fadds,3,sm	%g19, %r36, %g24
	  fadds,4,sm	%g19, %r28, %g25
	  fadds,5,sm	%g19, %r24, %g26
	}
	{
	  ct	%ctpr3 ? %pred0
	  fadds,0,sm	%g19, %r30, %g27
	  fadds,1,sm	%g19, %r26, %g19
	}
	nop
	{
	  fmuls,0,sm	%g17, %r44, %g17
	  fmuls,1,sm	%g18, %r39, %g18
	  fmuls,2,sm	%g20, %r41, %g20
	}
	{
	  fmuls,0,sm	%g21, %r35, %g21
	  fmuls,1,sm	%g22, %r33, %g22
	  fmuls,2,sm	%g23, %r37, %g23
	  fmuls,3,sm	%g24, %r29, %g24
	  fmuls,4,sm	%g25, %r34, %g25
	  fmuls,5,sm	%g26, %r31, %g26
	}
	{
	  nop 1
	  fmuls,0,sm	%g27, %r27, %g27
	  fmuls,1,sm	%g19, %r25, %g19
	}
	{
	  nop 3
	  fsubs,0,sm	%g18, %g17, %g17
	}
	{
	  nop 3
	  fadds,0,sm	%g17, %g20, %g17
	}
	{
	  nop 3
	  fsubs,0,sm	%g17, %g21, %g17
	}
	{
	  nop 3
	  fadds,0,sm	%g17, %g22, %g17
	}
	{
	  nop 3
	  fsubs,0,sm	%g17, %g23, %g17
	}
	{
	  nop 3
	  fadds,0,sm	%g17, %g24, %g17
	}
	{
	  nop 3
	  fsubs,0,sm	%g17, %g25, %g17
	}
	{
	  nop 3
	  fadds,0,sm	%g17, %g26, %g17
	}
	{
	  nop 3
	  fsubs,0,sm	%g17, %g27, %g17
	}
	{
	  nop 3
	  fadds,0,sm	%g17, %g19, %g17
	}
	{
	  ct	%ctpr3 ? ~%pred0
	  stw,2	%r46, %g16, %g17 ? ~%pred0
	}
.L661:
	{
	  setwd	wsz = 0x41, nfx = 0x1, dbl = 0x1
	  setbn	rsz = 0x1d, rbs = 0x20, rcur = 0x0
	  disp	%ctpr1, .L254
	  addd,0	0x0, _f64,_lts1 0x20ff2000000000, %g16
	}
	{
	  return	%ctpr3
	  addd,0,sm	0x0, 0x0, %b[43]
	  insfd,1	%g16, _f32s,_lts0 0x8800, %r12, %g16
	  aaurwd,2	%r47, %aasti1
	  aaurwd,5	%r46, %aad0
	}
	{
	  rwd,0	%g16, %lsr
	  addd,1,sm	0x4, %b[43], %g17
	  ldw,2,sm	%r46, %b[43], %g18
	}
	{
	  addd,1,sm	0x4, %g17, %g17
	  ldw,2,sm	%r46, %g17, %g16
	}
	{
	  ldw,0,sm	%r46, %g17, %g19
	  addd,1,sm	0x4, %g17, %g17
	}
	{
	  fadds,0,sm	%g18, %r42, %g21
	  fadds,1,sm	%g18, %r45, %g20
	  fadds,2,sm	%g18, %r43, %g22
	}
	{
	  fadds,0,sm	%g16, %r42, %g24
	  fadds,1,sm	%g16, %r45, %g23
	  fadds,2,sm	%g16, %r43, %g26
	  ldw,3,sm	%r46, %g17, %g17
	  addd,4,sm	0x4, %g17, %g25
	  fadds,5,sm	%g18, %r40, %g27
	}
	{
	  fadds,0,sm	%g19, %r42, %g29
	  fadds,1,sm	%g19, %r45, %g28
	  fadds,2,sm	%g16, %r40, %g31
	  ldw,3,sm	%r46, %g25, %g30
	  addd,4,sm	0x4, %g25, %g25
	  fadds,5,sm	%g18, %r38, %r0
	}
	{
	  fadds,0,sm	%g16, %r38, %r3
	  fadds,1,sm	%g19, %r43, %r1
	  fadds,2,sm	%g19, %r40, %r4
	  ldw,3,sm	%r46, %g25, %r2
	  addd,4,sm	0x4, %g25, %g25
	  fadds,5,sm	%g18, %r32, %r5
	}
	{
	  fadds,0,sm	%g16, %r32, %r12
	  fmuls,1,sm	%g20, %r44, %g20
	  fadds,2,sm	%g19, %r38, %r13
	  fadds,3,sm	%g17, %r42, %r7
	  fadds,4,sm	%g17, %r45, %r6
	  fadds,5,sm	%g17, %r43, %r9
	}
	{
	  fadds,0,sm	%g17, %r40, %r17
	  fmuls,1,sm	%g23, %r44, %g23
	  fadds,2,sm	%g18, %r36, %r18
	  fadds,3,sm	%g30, %r42, %r15
	  fadds,4,sm	%g30, %r45, %r14
	  fadds,5,sm	%g30, %r43, %r16
	}
	{
	  fadds,0,sm	%g30, %r40, %r21
	  fmuls,1,sm	%g28, %r44, %g28
	  fadds,2,sm	%g16, %r36, %r23
	  fadds,3,sm	%r2, %r42, %r20
	  fadds,4,sm	%r2, %r45, %r19
	  fadds,5,sm	%r2, %r43, %r22
	}
	{
	  fadds,0,sm	%g19, %r32, %r47
	  fadds,1,sm	%g17, %r38, %r48
	  fadds,2,sm	%g30, %r38, %r49
	  fadds,3,sm	%r2, %r40, %r50
	  fadds,4,sm	%g18, %r28, %r51
	  fadds,5,sm	%g16, %r28, %r52
	}
	{
	  fadds,0,sm	%g19, %r36, %r6
	  fmul_rsubs,1,sm	%g21, %r39, %g20, %g20
	  fadds,2,sm	%g30, %r32, %r54
	  fadds,3,sm	%g17, %r32, %r53
	  fmuls,4,sm	%r6, %r44, %g21
	  fadds,5,sm	%r2, %r38, %r55
	}
	{
	  fadds,0,sm	%g18, %r24, %r14
	  fmul_rsubs,1,sm	%g24, %r39, %g23, %g23
	  fadds,2,sm	%g16, %r24, %r56
	  fadds,3,sm	%g19, %r28, %r57
	  fmuls,4,sm	%r14, %r44, %g24
	  fadds,5,sm	%g17, %r36, %r58
	}
	{
	  fadds,0,sm	%g30, %r36, %r19
	  fmul_rsubs,1,sm	%g29, %r39, %g28, %g28
	  fadds,2,sm	%g18, %r30, %r60
	  fadds,3,sm	%r2, %r32, %r59
	  fmuls,4,sm	%r19, %r44, %g29
	  fadds,5,sm	%g16, %r30, %r61
	}
	{
	  fadds,0,sm	%g19, %r24, %r63
	  addd,1,sm	0x4, %g25, %r62
	  stw,2,sm	%r8, _f16s,_lts0lo 0xfe80, %r11
	  fadds,3,sm	%g17, %r28, %r11
	  fadds,4,sm	%g30, %r28, %g19
	  std,5,sm	%r8, _f16s,_lts0hi 0xfe78, %g19
	}
	{
	  fadds,0,sm	%r2, %r36, %g30
	  addd,1,sm	0x4, %r62, %r7
	  std,2,sm	%r8, _f16s,_lts0lo 0xfe70, %g30
	  fadds,3,sm	%g17, %r30, %g18
	  fmul_rsubs,4,sm	%r7, %r39, %g21, %g21
	  stw,5,sm	%r8, _f16s,_lts0hi 0xfe68, %g18
	}
	{
	  fadds,0,sm	%g16, %r26, %g16
	  addd,1,sm	0x4, %r7, %r62
	  ldw,2,sm	%r46, %g25, %g25
	  fmul_rsubs,4,sm	%r15, %r39, %g24, %g24
	  ldw,5,sm	%r46, %r62, %r15
	}
	{
	  fadds,0,sm	%r2, %r24, %r20
	  ldw,2,sm	%r46, %r7, %r7
	  fmul_rsubs,4,sm	%r20, %r39, %g29, %g29
	  std,5,sm	%r8, _f16s,_lts0lo 0xfe58, %r2
	}
	{
	  ldw,0	%r8, _f16s,_lts0lo 0xfe68, %r2, mas=0x4
	  std,2,sm	%r8, _f16s,_lts0hi 0xfe60, %g17
	}
	{
	  ldd,0	%r8, _f16s,_lts0lo 0xfe78, %g17, mas=0x4
	}
	{
	  fmul_adds,0,sm	%g22, %r41, %g20, %g20
	  fmul_adds,1,sm	%g26, %r41, %g23, %g22
	  fadds,2,sm	%g25, %r45, %g23
	  fadds,3,sm	%r15, %r45, %g26
	  addd,4,sm	0x0, %g25, %b[28]
	  stw,5,sm	%r8, _f16s,_lts0lo 0xfe50, %g18
	}
	{
	  fadds,0,sm	%r2, %r26, %r2
	  fadds,1,sm	%g25, %r42, %g18
	  fmul_adds,2,sm	%r1, %r41, %g28, %g28
	  fadds,3,sm	%r15, %r42, %r1
	  std,5,sm	%r8, _f16s,_lts0lo 0xff48, %r26
	}
	{
	  ldw,0,sm	%r46, %r62, %r26
	  fadds,1,sm	%g17, %r30, %r20
	  stw,2,sm	%r8, _f16s,_lts0lo 0xfe40, %r20
	  fadds,3,sm	%r7, %r45, %g17
	  addd,5,sm	0x0, %g17, %b[36]
	}
	{
	  fadds,0,sm	%g25, %r43, %r62
	  fadds,1,sm	%r15, %r43, %r30
	  addd,2,sm	0x4, %r62, %r9
	  fmul_adds,3,sm	%r9, %r41, %g21, %g21
	  std,5,sm	%r8, _f16s,_lts0lo 0xff68, %r30
	}
	{
	  addd,0,sm	0x0, %r15, %b[26]
	  fmuls,2,sm	%g23, %r44, %g23
	  fmuls,3,sm	%g26, %r44, %g26
	  fmul_adds,4,sm	%r16, %r41, %g24, %g24
	  fadds,5,sm	%r7, %r42, %r16
	}
	{
	  fadds,0,sm	%r26, %r42, %r2
	  fadds,1,sm	%r26, %r45, %r22
	  stw,2,sm	%r8, _f16s,_lts0lo 0xfe38, %r2
	  addd,3,sm	0x0, %r7, %b[24]
	  fmul_adds,4,sm	%r22, %r41, %g29, %g29
	  stw,5,sm	%r8, _f16s,_lts0hi 0xfe48, %g16
	}
	{
	  fadds,0,sm	%g25, %r40, %r63
	  stw,2,sm	%r8, _f16s,_lts0lo 0xfe28, %r20
	  fmuls,3,sm	%g17, %r44, %g17
	  addd,4,sm	0x4, %r9, %r20
	  stw,5,sm	%r8, _f16s,_lts0hi 0xfe30, %r63
	}
	{
	  fadds,1,sm	%r15, %r40, %r9
	  ldw,3,sm	%r46, %r9, %g16
	  fadds,4,sm	%r7, %r43, %r61
	  stw,5,sm	%r8, _f16s,_lts0lo 0xfe20, %r61
	}
	{
	  fmul_subs,0,sm	%g27, %r35, %g20, %g20
	  fmul_subs,1,sm	%g31, %r35, %g22, %g22
	  fmul_rsubs,2,sm	%g18, %r39, %g23, %g18
	  fadds,3,sm	%r26, %r43, %g26
	  fmul_rsubs,4,sm	%r1, %r39, %g26, %g23
	  addd,5,sm	0x4, %r20, %g27
	}
	{
	  fmuls,0,sm	%r22, %r44, %g31
	  fmul_subs,1,sm	%r4, %r35, %g28, %g28
	  ldw,2,sm	%r46, %r20, %r1
	  fadds,3,sm	%g25, %r38, %r20
	  ldw,5,sm	%r46, %g27, %r4
	}
	{
	  fadds,0,sm	%r15, %r38, %r60
	  addd,1,sm	0x4, %g27, %g27
	  stw,2,sm	%r8, _f16s,_lts0lo 0xfe18, %r60
	  fmul_rsubs,3,sm	%r16, %r39, %g17, %g17
	  fadds,4,sm	%g16, %r45, %r16
	  fadds,5,sm	%g16, %r42, %r22
	}
	{
	  fadds,0,sm	%r26, %r40, %r11
	  fadds,1,sm	%r7, %r40, %r17
	  stw,2,sm	%r8, _f16s,_lts0lo 0xfe10, %r11
	  fadds,3,sm	%g16, %r43, %g30
	  fmul_subs,4,sm	%r17, %r35, %g21, %g21
	  stw,5,sm	%r8, _f16s,_lts0hi 0xfe08, %g30
	}
	{
	  addd,1,sm	0x0, %r26, %b[22]
	  stw,2,sm	%r8, _f16s,_lts0lo 0xfe00, %g19
	  fadds,3,sm	%r4, %r45, %r21
	  fmul_subs,4,sm	%r21, %r35, %g24, %g24
	  fadds,5,sm	%r4, %r42, %g19
	}
	{
	  fadds,0,sm	%r1, %r45, %r2
	  fmul_rsubs,1,sm	%r2, %r39, %g31, %g31
	  fadds,2,sm	%r1, %r42, %r50
	  fmul_subs,4,sm	%r50, %r35, %g29, %g29
	  std,5,sm	%r8, _f16s,_lts0lo 0xfdf8, %r26
	}
	{
	  fadds,0,sm	%g25, %r32, %r15
	  fadds,1,sm	%r7, %r38, %g25
	  std,2,sm	%r8, _f16s,_lts0lo 0xfdf0, %r15
	  fmuls,4,sm	%r16, %r44, %r16
	  std,5,sm	%r8, _f16s,_lts0hi 0xfde8, %g25
	}
	{
	  fadds,0,sm	%g16, %r40, %r7
	  ldw,3,sm	%r46, %g27, %r26
	  addd,4,sm	0x4, %g27, %g27
	  std,5,sm	%r8, _f16s,_lts0lo 0xfde0, %r7
	}
	{
	  fmul_adds,0,sm	%r0, %r33, %g20, %g20
	  fmul_adds,1,sm	%r3, %r33, %g22, %g22
	  fmul_adds,2,sm	%r62, %r41, %g18, %g18
	  fmul_adds,3,sm	%r30, %r41, %g23, %g23
	  fmuls,5,sm	%r21, %r44, %r0
	}
	{
	  fmul_adds,0,sm	%r13, %r33, %g28, %g28
	  addd,1,sm	0x4, %g27, %r3
	  fmuls,2,sm	%r2, %r44, %r2
	  fadds,3,sm	%r1, %r43, %r13
	  fadds,5,sm	%r4, %r43, %r21
	}
	{
	  ldd,0	%r8, _f16s,_lts0lo 0xfdf8, %r61, mas=0x4
	  addd,1,sm	0x4, %r3, %r30
	  ldd,2	%r8, _f16s,_lts0hi 0xfdf0, %r62, mas=0x4
	  fmul_adds,3,sm	%r61, %r41, %g17, %g17
	  fmul_rsubs,4,sm	%r22, %r39, %r16, %r16
	  fadds,5,sm	%r26, %r45, %r22
	}
	{
	  ldw,0,sm	%r46, %r30, %r48
	  fadds,1,sm	%r26, %r42, %r4
	  std,2,sm	%r8, _f16s,_lts0lo 0xfdd0, %r4
	  fmul_adds,4,sm	%r48, %r33, %g21, %g21
	}
	{
	  ldw,0,sm	%r46, %g27, %g27
	  addd,1,sm	0x4, %r30, %r3
	  ldw,2,sm	%r46, %r3, %r0
	  fmul_rsubs,3,sm	%g19, %r39, %r0, %g19
	  fmul_adds,4,sm	%r49, %r33, %g24, %g24
	  fadds,5,sm	%g16, %r32, %r30
	}
	{
	  fmul_adds,0,sm	%g26, %r41, %g31, %g26
	  fadds,1,sm	%r61, %r38, %r49
	  std,2,sm	%r8, _f16s,_lts0lo 0xfdd8, %g16
	  fmul_adds,4,sm	%r55, %r33, %g29, %g29
	}
	{
	  ldd,0	%r8, _f16s,_lts0lo 0xfde8, %g31, mas=0x4
	  fadds,1,sm	%r1, %r38, %r55
	  std,2,sm	%r8, _f16s,_lts0hi 0xfdc0, %r1
	  addd,4,sm	0x0, %r26, %b[14]
	  fadds,5,sm	%r26, %r40, %r1
	}
	{
	  fadds,0,sm	%r48, %r45, %r26
	  fadds,1,sm	%r62, %r32, %g16
	  addd,2,sm	0x4, %r3, %r50
	  fmuls,3,sm	%r22, %r44, %r22
	  fmul_rsubs,4,sm	%r50, %r39, %r2, %r2
	  std,5,sm	%r8, _f16s,_lts0lo 0xfdc8, %r26
	}
	{
	  fmul_subs,0,sm	%r12, %r37, %g22, %g22
	  fmul_subs,1,sm	%r5, %r37, %g20, %g20
	  fmul_subs,2,sm	%r63, %r35, %g18, %g18
	  fmul_subs,4,sm	%r9, %r35, %g23, %g23
	  fadds,5,sm	%g27, %r45, %r5
	}
	{
	  fmul_subs,0,sm	%r47, %r37, %g28, %g28
	  fadds,1,sm	%g31, %r28, %r9
	  ldw,2,sm	%r46, %r3, %r3
	  fadds,3,sm	%r0, %r45, %r47
	  ldw,5,sm	%r46, %r50, %r12
	}
	{
	  ldd,0	%r8, _f16s,_lts0lo 0xfde0, %r16, mas=0x4
	  fadds,1,sm	%r48, %r42, %r17
	  fadds,2,sm	%g27, %r43, %r63
	  fmul_subs,3,sm	%r17, %r35, %g17, %g17
	  fmul_adds,4,sm	%g30, %r41, %r16, %g30
	  fadds,5,sm	%g31, %r36, %g31
	}
	{
	  fadds,0,sm	%r0, %r43, %r22
	  fmuls,1,sm	%r26, %r44, %r26
	  fadds,2,sm	%r62, %r36, %r62
	  fmul_subs,3,sm	%r53, %r37, %g21, %g21
	  fmul_rsubs,4,sm	%r4, %r39, %r22, %r4
	  ldd,5	%r8, _f16s,_lts0lo 0xfe60, %r53, mas=0x4
	}
	{
	  addd,0,sm	0x4, %r50, %r50
	  fmul_subs,3,sm	%r54, %r37, %g24, %g24
	  fmul_adds,4,sm	%r21, %r41, %g19, %g19
	  fadds,5,sm	%r12, %r45, %r21
	}
	{
	  fmul_subs,0,sm	%r11, %r35, %g26, %g26
	  fadds,1,sm	%r16, %r36, %r54
	  fadds,2,sm	%r3, %r42, %r11
	  fmul_subs,3,sm	%r59, %r37, %g29, %g29
	  fadds,4,sm	%r3, %r45, %r59
	  stw,5,sm	%r8, _f16s,_lts0lo 0xffe0, %r45
	}
	{
	  fadds,0,sm	%r61, %r32, %r61
	  ldd,3	%r8, _f16s,_lts0lo 0xfe58, %r45, mas=0x4
	}
	{
	  fadds,0,sm	%r53, %r24, %r36
	  std,2,sm	%r8, _f16s,_lts0lo 0xff98, %r36
	  fmul_adds,3,sm	%r13, %r41, %r2, %r2
	}
	{
	  ldd,0	%r8, _f16s,_lts0lo 0xfe70, %r13, mas=0x4
	  fadds,1,sm	%r16, %r32, %r16
	  std,2,sm	%r8, _f16s,_lts0hi 0xff78, %r32
	  fadds,5,sm	%g27, %r42, %r32
	}
	{
	  fmul_adds,0,sm	%r18, %r29, %g20, %g20
	  fmul_adds,1,sm	%r23, %r29, %g22, %g22
	  stw,2,sm	%r8, _f16s,_lts0lo 0xfdb0, %r63
	  fmul_adds,3,sm	%r60, %r33, %g23, %g23
	  fadds,4,sm	%r45, %r28, %r63
	}
	{
	  ldd,0	%r8, _f16s,_lts0lo 0xfdd8, %r18, mas=0x4
	  fmuls,1,sm	%r5, %r44, %r5
	  fadds,2,sm	%r0, %r42, %r23
	}
	{
	  fadds,0,sm	%r13, %r24, %r60
	  fmul_adds,1,sm	%r6, %r29, %g28, %g28
	  fmul_adds,2,sm	%r20, %r33, %g18, %g18
	  fmul_adds,3,sm	%r58, %r29, %g21, %g21
	  fmul_adds,4,sm	%g25, %r33, %g17, %g17
	  fmul_subs,5,sm	%r7, %r35, %g30, %g25
	}
	{
	  ldd,0	%r8, _f16s,_lts0lo 0xfdc0, %g30, mas=0x4
	  fmuls,1,sm	%r47, %r44, %r6
	  fmul_adds,3,sm	%r19, %r29, %g24, %g24
	  addd,4,sm	0x0, %r53, %b[34]
	  ldw,5,sm	%r46, %r50, %b[2]
	}
	{
	  ldw,0	%r8, _f16s,_lts0lo 0xfe08, %r19, mas=0x4
	  fmul_adds,1,sm	%r49, %r33, %g26, %g26
	  fadds,2,sm	%r18, %r38, %r7
	  addd,4,sm	0x0, %r13, %b[32]
	  addd,5,sm	0x0, %r45, %b[30]
	}
	{
	  addd,0,sm	0x0, %r18, %b[20]
	  fmul_rsubs,1,sm	%r32, %r39, %r5, %b[27]
	  addd,2,sm	0x0, %r48, %b[8]
	  addd,3,sm	0x0, %g27, %b[12]
	  addd,4,sm	0x0, %r0, %b[10]
	  adds,5,sm	0x0, %r30, %b[50]
	}
	{
	  fadds,0,sm	%g30, %r40, %g27
	  ldw,2	%r8, _f16s,_lts0lo 0xfe50, %g30, mas=0x4
	  addd,4,sm	0x0, %g30, %b[18]
	  adds,5,sm	0x0, %r55, %b[42]
	}
	{
	  fmul_adds,0,sm	%r19, %r29, %g29, %g29
	  adds,1,sm	0x0, %r1, %b[44]
	  ldd,2	%r8, _f16s,_lts0lo 0xfdc8, %r0, mas=0x4
	  addd,3,sm	0x0, %r3, %b[6]
	  addd,4,sm	0x0, %r12, %b[4]
	  addd,5,sm	0x4, %r50, %b[3]
	}
	{
	  fmul_subs,0,sm	%r51, %r34, %g20, %g20
	  fmul_subs,1,sm	%r52, %r34, %g22, %g22
	  fmul_rsubs,2,sm	%r23, %r39, %r6, %b[25]
	  fmul_subs,3,sm	%g16, %r37, %g23, %g16
	}
	{
	  adds,0,sm	0x0, %g30, %b[51]
	  adds,1,sm	0x0, %r9, %b[49]
	  ldd,2	%r8, _f16s,_lts0lo 0xfdd0, %g23, mas=0x4
	  adds,4,sm	0x0, %r17, %b[19]
	  adds,5,sm	0x0, %r22, %b[56]
	}
	{
	  fadds,0,sm	%r0, %r43, %g30
	  fmul_subs,1,sm	%r57, %r34, %g28, %g28
	  fmul_subs,2,sm	%r15, %r37, %g18, %g18
	  ldw,3	%r8, _f16s,_lts0lo 0xfe10, %r0, mas=0x4
	  adds,4,sm	0x0, %r26, %b[33]
	  adds,5,sm	0x0, %r21, %b[45]
	}
	{
	  adds,0,sm	0x0, %r54, %b[43]
	  fmul_subs,1,sm	%g27, %r35, %r2, %b[23]
	  adds,2,sm	0x0, %r11, %b[17]
	  adds,3,sm	0x0, %r59, %b[47]
	  fmul_subs,4,sm	%r16, %r37, %g17, %b[48]
	  fmul_adds,5,sm	%r7, %r33, %g25, %b[29]
	}
	{
	  fmul_subs,0,sm	%r61, %r37, %g26, %b[46]
	  addd,1,sm	0x0, %g23, %b[16]
	}
	{
	  fadds,0,sm	%g23, %r40, %g17
	  ldw,2	%r8, _f16s,_lts0lo 0xfe00, %g23, mas=0x4
	  fmul_subs,3,sm	%r0, %r34, %g21, %g21
	  ldw,5	%r8, _f16s,_lts0hi 0xfe40, %g25, mas=0x4
	}
	{
	  fmul_adds,0,sm	%g30, %r41, %r4, %b[7]
	}
	{
	  fmul_subs,0,sm	%r63, %r34, %g29, %b[15]
	}
	{
	  fmul_subs,0,sm	%g23, %r34, %g24, %g23
	  fmul_adds,1,sm	%r14, %r31, %g20, %g20
	  fmul_adds,2,sm	%r56, %r31, %g22, %g22
	  adds,3,sm	0x0, %g25, %b[53]
	  fmul_adds,4,sm	%r62, %r29, %g16, %b[39]
	  ldw,5	%r8, _f16s,_lts0lo 0xfdb0, %g24, mas=0x4
	}
	{
	  fmul_subs,0,sm	%g17, %r35, %g19, %b[21]
	}
	{
	  ldw,0	%r8, _f16s,_lts0lo 0xfe30, %g16, mas=0x4
	  fmul_adds,1,sm	%g31, %r29, %g18, %b[41]
	}
	{
	  nop 1
	  adds,4,sm	0x0, %g24, %b[58]
	}
	{
	  nop 2
	  fmul_adds,0,sm	%g16, %r31, %g28, %g16
	  fmul_adds,3,sm	%r36, %r31, %g21, %b[37]
	}
	{
	  nop 2
	  ldw,0	%r8, _f16s,_lts0lo 0xfe18, %g17, mas=0x4
	  fmul_adds,1,sm	%r60, %r31, %g23, %b[35]
	}
	{
	  nop 2
	  fmul_subs,0,sm	%g17, %r27, %g20, %g17
	  ldw,2	%r8, _f16s,_lts0lo 0xfe20, %g18, mas=0x4
	}
	{
	  nop 2
	  fmul_subs,0,sm	%g18, %r27, %g22, %g18
	  ldw,2	%r8, _f16s,_lts0lo 0xfe28, %g19, mas=0x4
	}
	{
	  nop 1
	  fmul_subs,0,sm	%g19, %r27, %g16, %b[38]
	}
	{
	  nop 2
	  ldw,0	%r8, _f16s,_lts0lo 0xfe38, %g16, mas=0x4
	}
	{
	  nop 2
	  fmul_adds,0,sm	%g16, %r25, %g17, %b[11]
	  ldw,2	%r8, _f16s,_lts0lo 0xfe48, %g16, mas=0x4
	}
	{
	  nop 1
	  fmul_adds,0,sm	%g16, %r25, %g18, %b[9]
	}
	{
	  ldd,0	%r8, _f16s,_lts0lo 0xff78, %r32, mas=0x4
	  ldd,2	%r8, _f16s,_lts0hi 0xff98, %r36, mas=0x4
	  ldw,3	%r8, _f16s,_lts1lo 0xffe0, %r45, mas=0x4
	  ldd,5	%r8, _f16s,_lts1hi 0xff68, %r30, mas=0x4
	}
	{
	  ldd,0	%r8, _f16s,_lts0lo 0xff48, %r26, mas=0x4
	  ldw,2	%r8, _f16s,_lts0hi 0xfe80, %r11, mas=0x4
	}
.L254:
	{
	  loop_mode
	  fmul_adds,0,sm	%b[58], %r41, %b[27], %b[5]
	  fmul_subs,1,sm	%b[49], %r34, %b[41], %b[13]
	  fadds,2,sm	%b[36], %r26, %b[52]
	  ldw,3,sm	%r46, %b[3], %b[0]
	  fadds,4,sm	%b[16], %r38, %b[40]
	  fmuls,5,sm	%b[47], %r44, %b[31]
	}
	{
	  loop_mode
	  fmul_adds,0,sm	%b[42], %r33, %b[23], %b[27]
	  fmul_subs,1,sm	%b[51], %r27, %b[37], %b[36]
	  fadds,2,sm	%b[26], %r28, %b[47]
	  fadds,4,sm	%b[22], %r36, %b[41]
	}
	{
	  loop_mode
	  fmul_rsubs,0,sm	%b[19], %r39, %b[33], %b[23]
	  fmul_adds,1,sm	%b[43], %r29, %b[48], %b[37]
	  fadds,2,sm	%b[32], %r30, %b[49]
	  fadds,4,sm	%b[12], %r40, %b[42]
	}
	{
	  loop_mode
	  fmul_subs,0,sm	%b[44], %r35, %b[7], %b[19]
	  fmul_adds,1,sm	%b[53], %r31, %b[15], %b[33]
	  fadds,2,sm	%b[28], %r24, %b[51]
	  fadds,4,sm	%b[18], %r32, %b[48]
	  fadds,5,sm	%b[2], %r45, %b[43]
	}
	{
	  loop_mode
	  alc	alcf=1, alct=1
	  abn	abnf=1, abnt=1
	  ct	%ctpr1 ? %NOT_LOOP_END
	  fmul_subs,0,sm	%b[50], %r37, %b[29], %b[44]
	  fmul_adds,1,sm	%b[52], %r25, %b[38], %b[7]
	  staaw,2	%b[11], %aad0[ %aasti1 ]
	  incr,2	%aaincr0
	  addd,3,sm	0x4, %b[3], %b[1]
	  fadds,4,sm	%b[8], %r43, %b[54]
	  fadds,5,sm	%b[4], %r42, %b[15]
	}
	{
	  setwd	wsz = 0x41, nfx = 0x1, dbl = 0x1
	  setbn	rsz = 0x20, rbs = 0x20, rcur = 0x0
	}
	{
	  aaurw,2	%r11, %aabf0
	}
.L147:
	{
	  ct	%ctpr3
	}
	.section .text.async_prefetch_code, "ax", @progbits

	.align	8
.L973:
	{
	  fapb	ct=1, dcd=0, fmt=4, mrng=8, d=0, incr=0, ind=0, asz=5, abs=0, disp=0
	}
.previous

	.size	triadplus2, .- triadplus2
	.global	triadplus
	.type	triadplus, #function
	.align	8
triadplus:
	{
	  setwd	wsz = 0x2b, nfx = 0x1, dbl = 0x1
	  setbn	rsz = 0x15, rbs = 0x15, rcur = 0x0
	  disp	%ctpr2, .L1633
	  adds,1	0x0, 0x0, %r19
	  adds,2,sm	0x0, %r3, %r3
	  adds,3,sm	0x0, %r1, %r1
	  addd,4,sm	0x0, %r7, %r7
	  adds,5,sm	0x0, %r6, %r6
	}
	{
	  return	%ctpr3
	  ldw,0,sm	%r7, 0x0, %g16
	  cmplsb,1	0x0, %r0, %pred0
	  adds,2,sm	0x0, %r5, %r5
	  cmpandedb,3,sm	%r7, 0x4, %pred1
	  adds,4,sm	0x0, %r2, %r2
	  adds,5,sm	0x0, %r4, %r4
	}
	{
	  cmplsb,0,sm	0x1, %r0, %pred2
	  adds,1,sm	0x0, %r6, %g18
	  adds,3,sm	0x0, %r5, %g19
	  adds,4,sm	0x0, %r1, %g20
	  subs,5,sm	%r0, 0x1, %g17
	}
	{
	  merges,0,sm	0x1, %r0, %r18, %pred0
	  addd,1	0x0, 0x0, %r17 ? %pred0
	  adds,2,sm	0x0, %r3, %g21
	  adds,3,sm	0x0, %r2, %g22
	  adds,4,sm	0x0, %r4, %g23
	  addd,5,sm	0x0, 0x0, %r23
	}
	{
	  ct	%ctpr3 ? ~%pred0
	  cmplsb,0,sm	%r18, _f16s,_lts0lo 0x10, %pred3
	  fadds,1,sm	%g16, %r3, %g24
	  fadds,2,sm	%g16, %r1, %g25
	}
	{
	  fadds,0,sm	%g16, %r5, %g16
	  pass	%pred0, @p0
	  pass	%pred3, @p1
	  landp	@p0, @p1, @p4
	  pass	@p4, %pred4
	  landp	@p0, ~@p1, @p5
	  pass	@p5, %pred0
	  pass	%pred1, @p2
	  landp	@p5, ~@p2, @p6
	  pass	@p6, %pred1
	}
	{
	  insfd,0,sm	%g18, _f32s,_lts0 0xa820, %g18, %r12
	  insfd,3,sm	%g19, _lit32_ref,_lts0 0xa820, %g19, %r13
	  insfd,4,sm	%g20, _lit32_ref,_lts0 0xa820, %g20, %r14
	  pass	%pred1, @p0
	  pass	%pred2, @p1
	  landp	@p0, ~@p1, @p4
	  pass	@p4, %pred0
	}
	{
	  insfd,1,sm	%g21, _f32s,_lts0 0xa820, %g21, %r11
	  adds,2	0x1, 0x0, %r19 ? %pred1
	  insfd,3,sm	%g22, _lit32_ref,_lts0 0xa820, %g22, %r15
	  insfd,4,sm	%g23, _lit32_ref,_lts0 0xa820, %g23, %r16
	  addd,5	0x1, 0x0, %r17 ? %pred1
	}
	{
	  ct	%ctpr2 ? %pred4
	  fmuls,0,sm	%g25, %r2, %g19
	  cmplsb,1,sm	%r19, %r0, %pred2
	  fmuls,2,sm	%g24, %r4, %g18
	}
	{
	  return	%ctpr3
	  fmuls,0,sm	%g16, %r6, %g16
	  subs,1,sm	0x1, %r19, %g20
	}
	{
	  adds,1,sm	%g17, %g20, %g17
	}
	{
	  merges,1,sm	0x1, %g17, %r22, %pred2
	}
	{
	  fsubs,0,sm	%g19, %g18, %g17
	  shrs,1,sm	%r22, 0x1, %r21
	}
	{
	  nop 1
	  cmplsb,0,sm	0x0, %r21, %pred2
	}
	{
	  merges,0,sm	0x1, %r21, %r20, %pred2
	}
	{
	  nop 3
	  fadds,0,sm	%g17, %g16, %g16
	  shrs,1,sm	%r20, 0x1, %r0
	}
	{
	  ibranch	.L1040 ? %pred0
	  stw,2	%r7, 0x0, %g16 ? %pred1
	}
	{
	  setwd	wsz = 0x2b, nfx = 0x1, dbl = 0x1
	  setbn	rsz = 0x15, rbs = 0x15, rcur = 0x0
	  ldisp	%ctpr2, .L1836
	  cmplsb,0	0x0, %r0, %pred0
	  shld,1,sm	%r17, 0x2, %g16
	  addd,2	0x0, _f64,_lts1 0x40ff2000000000, %g17
	  addd,3	%r7, 0x8, %g18
	  addd,4,sm	0x0, 0x0, %g21
	  adds,5	0x2, 0x0, %g19
	}
	{
	  disp	%ctpr1, .L993
	  ldd,0,sm	%r7, %g16, %g23
	  addd,1,sm	%r7, %g16, %g22
	  aaurwd,2	%r23, %aasti1
	  addd,3	0x2, 0x0, %g24
	}
	{
	  ldd,0,sm	%g22, _f16s,_lts0lo 0x20, %g26
	  merges,1	0x1, %r0, %g25, %pred0
	  ldd,2,sm	%g22, _f16s,_lts0hi 0x28, %g27
	  addd,3	%g18, %g16, %g16
	}
	{
	  ldd,0,sm	%g22, _f16s,_lts0lo 0x10, %g18
	  addd,1,sm	0x0, %g22, %g20
	  ldd,2,sm	%g22, 0x8, %g29
	  ldd,3,sm	%g22, _f16s,_lts0hi 0x18, %g28
	  ldd,5,sm	%g22, _f16s,_lts1lo 0x50, %g30
	}
	{
	  addd,0,sm	%g20, _f16s,_lts0lo 0xa0, %g20
	  pfadds,1,sm	%g23, %r11, %g19
	  aaurwd,2	%r23, %aasti2
	  aaurw,5	%g19, %aaincr1
	}
	{
	  pfadds,0,sm	%g27, %r11, %g31
	  pfadds,1,sm	%g26, %r11, %g24
	  aaurwd,2	%g22, %aad2
	  pfadds,3,sm	%g23, %r13, %g23
	  pfadds,4,sm	%g23, %r14, %r18
	  aaurwd,5	%g24, %aaincr2
	}
	{
	  insfd,0	%g17, _f32s,_lts0 0x8800, %g25, %g17
	  pfadds,1,sm	%g18, %r11, %g16
	  aaurwd,2	%g16, %aad1
	  pfadds,3,sm	%g28, %r11, %g25
	  pfadds,4,sm	%g26, %r14, %r19
	  pfadds,5,sm	%g27, %r14, %r23
	}
	{
	  rwd,0	%g17, %lsr
	  pfadds,1,sm	%g29, %r11, %g20
	  aaurwq,2	%g20, %aad0
	  pfadds,3,sm	%g28, %r14, %r24
	  pfadds,4,sm	%g18, %r14, %g21
	}
	{
	  pfmuls,0,sm	%g19, %r16, %g19
	  pfadds,1,sm	%g29, %r14, %r25
	  ldd,2,sm	%g22, _f16s,_lts0lo 0x58, %r26
	  pfadds,3,sm	%g26, %r13, %g26
	  pfadds,4,sm	%g30, %r11, %r27
	  pfadds,5,sm	%g27, %r13, %g27
	}
	{
	  pfmuls,0,sm	%g31, %r16, %g31
	  pfmuls,1,sm	%g24, %r16, %g24
	  ldd,2,sm	%g22, _f16s,_lts0lo 0x40, %r28
	  pfadds,3,sm	%g18, %r13, %g18
	  pfadds,4,sm	%g28, %r13, %g28
	  ldd,5,sm	%g22, _f16s,_lts0hi 0x48, %r29
	}
	{
	  pfadds,0,sm	%g29, %r13, %g29
	  pfmuls,1,sm	%g16, %r16, %g16
	  ldd,2,sm	%g22, _f16s,_lts0lo 0x30, %r30
	  pfadds,3,sm	%g30, %r14, %r31
	  pfmuls,4,sm	%g25, %r16, %g25
	  pfadds,5,sm	%g30, %r13, %b[26]
	}
	{
	  bap
	  pfadds,0,sm	%r26, %r11, %r32
	  pfmuls,1,sm	%g20, %r16, %g20
	  ldd,2,sm	%g22, _f16s,_lts0lo 0x38, %g30
	  ldd,5,sm	%g22, _f16s,_lts0hi 0x60, %r33
	}
	{
	  pfadds,0,sm	%r28, %r11, %r18
	  pfmul_rsubs,1,sm	%r18, %r15, %g19, %g19
	  ldd,2,sm	%g22, _f16s,_lts0lo 0x68, %r35
	  pfadds,3,sm	%r26, %r14, %r36
	  pfadds,4,sm	%r29, %r11, %r34
	  pfmuls,5,sm	%r27, %r16, %r27
	}
	{
	  pfmul_rsubs,0,sm	%r19, %r15, %g24, %g24
	  pfmul_rsubs,1,sm	%r23, %r15, %g31, %g31
	  pfadds,2,sm	%r30, %r11, %r19
	  pfadds,3,sm	%r29, %r14, %r37
	  pfadds,4,sm	%r28, %r14, %r23
	  ldd,5,sm	%g22, _f16s,_lts0lo 0x88, %r38
	}
	{
	  pfmul_rsubs,0,sm	%g21, %r15, %g16, %g16
	  pfadds,1,sm	%g30, %r11, %g25
	  pfadds,2,sm	%r30, %r14, %r24
	  pfadds,3,sm	%r33, %r11, %r39
	  pfmul_rsubs,4,sm	%r24, %r15, %g25, %g21
	  pfadds,5,sm	%r26, %r13, %b[3]
	}
	{
	  pfmuls,0,sm	%r32, %r16, %r26
	  pfmul_rsubs,1,sm	%r25, %r15, %g20, %g20
	  pfadds,2,sm	%r35, %r11, %r32
	  pfadds,3,sm	%r28, %r13, %b[28]
	  pfadds,4,sm	%g30, %r14, %r25
	  ldd,5,sm	%g22, _f16s,_lts0lo 0x70, %r40
	}
	{
	  pfmuls,0,sm	%r18, %r16, %r18
	  pfadds,2,sm	%r29, %r13, %b[5]
	  pfadds,3,sm	%r30, %r13, %b[30]
	  pfmuls,4,sm	%r34, %r16, %r28
	  pfadds,5,sm	%g30, %r13, %b[7]
	}
	{
	  andd,1	%g17, _f64,_lts1 0xffffffff, %g17
	  pfmuls,2,sm	%r19, %r16, %g30
	  pfadds,3,sm	%r33, %r14, %b[42]
	  pfadds,4,sm	%r35, %r14, %b[27]
	  ldd,5,sm	%g22, _f16s,_lts0lo 0x78, %r19
	}
	{
	  pfmul_rsubs,0,sm	%r31, %r15, %r27, %b[15]
	  pfmuls,1,sm	%g25, %r16, %g25
	  pfadds,2,sm	%r38, %r11, %b[21]
	  pfmuls,3,sm	%r39, %r16, %b[39]
	  pfadds,5,sm	%r40, %r11, %b[31]
	}
	{
	  pfmul_rsubs,0,sm	%r36, %r15, %r26, %b[9]
	  pfmuls,2,sm	%r32, %r16, %b[35]
	  shld,5	%g17, 0x2, %g17
	}
	{
	  pfmul_adds,0,sm	%g23, %r12, %g19, %b[38]
	  pfmul_rsubs,1,sm	%r23, %r15, %r18, %b[17]
	  pfmul_rsubs,3,sm	%r37, %r15, %r28, %b[11]
	  pfadds,4,sm	%r19, %r11, %b[23]
	}
	{
	  ldd,0,sm	%g22, _f16s,_lts0lo 0x90, %b[10]
	  pfmul_adds,1,sm	%g26, %r12, %g24, %b[34]
	  pfmul_adds,2,sm	%g27, %r12, %g31, %b[18]
	  ldd,3,sm	%g22, _f16s,_lts0hi 0x98, %b[2]
	  addd,4,sm	0x0, %r33, %b[16]
	  ldd,5,sm	%g22, _f16s,_lts1lo 0x80, %b[12]
	}
	{
	  addd,0,sm	0x0, %r35, %b[8]
	  addd,1,sm	0x0, %r38, %b[4]
	  addd,2,sm	0x0, %r40, %b[14]
	  addd,3,sm	0x0, %r19, %b[6]
	  pfmul_adds,4,sm	%g28, %r12, %g21, %b[20]
	  addd,5	%r17, %g17, %r9
	}
	{
	  pfmul_rsubs,0,sm	%r24, %r15, %g30, %b[19]
	  pfmul_adds,1,sm	%g18, %r12, %g16, %b[36]
	  pfmul_rsubs,2,sm	%r25, %r15, %g25, %b[13]
	}
	{
	  nop 7
	  pfmul_adds,0,sm	%g29, %r12, %g20, %b[22]
	}
.L993:
	{
	  loop_mode
	  pfadds,1,sm	%b[12], %r11, %b[29]
	  pfadds,2,sm	%b[16], %r13, %b[24]
	  pfadds,3,sm	%b[8], %r13, %b[1]
	  pfadds,5,sm	%b[6], %r14, %b[25]
	  movad,1	area=0, ind=8, am=0, be=0, %b[0]
	}
	{
	  loop_mode
	  pfmul_adds,0,sm	%b[30], %r12, %b[19], %b[32]
	  pfadds,1,sm	%b[14], %r14, %b[40]
	  pfmuls,2,sm	%b[31], %r16, %b[37]
	  pfmuls,3,sm	%b[23], %r16, %b[33]
	  pfmul_adds,4,sm	%b[7], %r12, %b[13], %b[16]
	  movad,1	area=0, ind=0, am=1, be=0, %b[8]
	}
	{
	  loop_mode
	  alc	alcf=1, alct=1
	  abn	abnf=1, abnt=1
	  ct	%ctpr1 ? %NOT_LOOP_END
	  pfmul_rsubs,0,sm	%b[42], %r15, %b[39], %b[13]
	  staad,2	%b[38], %aad2[ %aasti2 ]
	  incr,2	%aaincr2
	  pfadds,3,sm	%b[2], %r11, %b[19]
	  pfmul_rsubs,4,sm	%b[27], %r15, %b[35], %b[7]
	  staad,5	%b[22], %aad1[ %aasti1 ]
	  incr,5	%aaincr2
	}
	{
	  setwd	wsz = 0x2b, nfx = 0x1, dbl = 0x1
	  setbn	rsz = 0x15, rbs = 0x15, rcur = 0x0
	  eap
	  disp	%ctpr1, .L1194
	  shld,0,sm	%r9, 0x2, %g16
	  shls,1	%r0, 0x1, %g17
	  adds,2	0x0, 0x0, %g18
	}
	{
	  disp	%ctpr2, disp=0x0
	  ldd,0,sm	%r7, %g16, %g19
	  cmpesb,1	%g17, %r20, %pred0
	  aaurw,2	%g18, %aabf0
	}
	{
	  return	%ctpr3
	}
	{
	  disp	%ctpr2, disp=0x0
	  addd,0	%r9, 0x2, %r9 ? ~%pred0
	}
	{
	  pfadds,0,sm	%g19, %r11, %g17
	  pfadds,1,sm	%g19, %r14, %g18
	  pfadds,2,sm	%g19, %r13, %g19
	}
	{
	  ct	%ctpr1 ? %pred0
	}
	{
	  nop 1
	  return	%ctpr3
	}
	{
	  nop 3
	  pfmuls,0,sm	%g17, %r16, %g17
	  pfmuls,1,sm	%g18, %r15, %g18
	  pfmuls,2,sm	%g19, %r12, %g19
	}
	{
	  nop 3
	  pfsubs,0,sm	%g18, %g17, %g17
	}
	{
	  nop 3
	  pfadds,0,sm	%g17, %g19, %g17
	}
	{
	  std,2	%r7, %g16, %g17 ? ~%pred0
	}
.L1194:
	{
	  shld,0,sm	%r9, 0x2, %g16
	  shls,1	%r21, 0x1, %g17
	}
	{
	  nop 2
	  cmpesb,0	%g17, %r22, %pred0
	  ldw,2,sm	%r7, %g16, %g18
	}
	{
	  ct	%ctpr3 ? %pred0
	  fadds,0,sm	%g18, %r3, %g17
	  fadds,1,sm	%g18, %r1, %g19
	  fadds,2,sm	%g18, %r5, %g18
	}
	{
	  nop 2
	}
	{
	  nop 3
	  fmuls,0,sm	%g17, %r4, %g17
	  fmuls,1,sm	%g19, %r2, %g19
	  fmuls,2,sm	%g18, %r6, %g18
	}
	{
	  nop 3
	  fsubs,0,sm	%g19, %g17, %g17
	}
	{
	  nop 3
	  fadds,0,sm	%g17, %g18, %g17
	}
	{
	  ct	%ctpr3 ? ~%pred0
	  stw,2	%r7, %g16, %g17 ? ~%pred0
	}
.L1633:
	{
	  setwd	wsz = 0x2b, nfx = 0x1, dbl = 0x1
	  setbn	rsz = 0x11, rbs = 0x15, rcur = 0x0
	  disp	%ctpr1, .L1100
	  addd,0	0x0, _f64,_lts1 0x20ff2000000000, %g16
	}
	{
	  return	%ctpr3
	  addd,0,sm	0x0, 0x0, %b[30]
	  insfd,1	%g16, _f32s,_lts0 0x8800, %r18, %g16
	  aaurwd,2	%r17, %aasti1
	  aaurwd,5	%r7, %aad0
	}
	{
	  rwd,0	%g16, %lsr
	  addd,1,sm	0x4, %b[30], %g17
	  ldw,2,sm	%r7, %b[30], %g18
	}
	{
	  addd,1,sm	0x4, %g17, %g16
	  ldw,2,sm	%r7, %g17, %g17
	}
	{
	  ldw,0,sm	%r7, %g16, %g16
	  addd,1,sm	0x4, %g16, %g19
	}
	{
	  ldw,0,sm	%r7, %g19, %g19
	  addd,1,sm	0x4, %g19, %g20
	  fadds,2,sm	%g18, %r3, %g21
	}
	{
	  ldw,0,sm	%r7, %g20, %g22
	  addd,1,sm	0x4, %g20, %g20
	  fadds,2,sm	%g17, %r3, %g23
	  fadds,3,sm	%g18, %r1, %g24
	  fadds,4,sm	%g18, %r5, %g18
	}
	{
	  fadds,0,sm	%g16, %r3, %g26
	  addd,1,sm	0x4, %g20, %g25
	  fadds,2,sm	%g16, %r1, %g28
	  fadds,3,sm	%g17, %r5, %g17
	  fadds,4,sm	%g17, %r1, %g27
	}
	{
	  fadds,0,sm	%g19, %r3, %g30
	  addd,1,sm	0x4, %g25, %g29
	  fadds,2,sm	%g19, %r1, %g31
	  fadds,3,sm	%g16, %r5, %g16
	  ldw,5,sm	%r7, %g20, %g20
	}
	{
	  fmuls,0,sm	%g21, %r4, %g21
	  fadds,1,sm	%g22, %r3, %r0
	  fadds,2,sm	%g22, %r1, %r9
	  fadds,3,sm	%g19, %r5, %g19
	  ldw,5,sm	%r7, %g25, %g25
	}
	{
	  fmuls,0,sm	%g23, %r4, %g23
	  addd,1,sm	0x4, %g29, %r11
	  fadds,2,sm	%g22, %r5, %g22
	  ldw,5,sm	%r7, %g29, %g29
	}
	{
	  fmuls,1,sm	%g26, %r4, %g26
	  fadds,3,sm	%g20, %r3, %r12
	  fadds,4,sm	%g20, %r5, %r13
	  fadds,5,sm	%g20, %r1, %g20
	}
	{
	  fmuls,0,sm	%g30, %r4, %g30
	  addd,1,sm	0x4, %r11, %r14
	  ldw,3,sm	%r7, %r11, %r11
	  fadds,4,sm	%g25, %r3, %r15
	  fadds,5,sm	%g25, %r5, %r16
	}
	{
	  addd,0,sm	0x4, %r14, %r17
	  fmuls,1,sm	%r0, %r4, %r0
	  ldw,2,sm	%r7, %r14, %r14
	  fadds,3,sm	%g29, %r3, %r18
	  fadds,4,sm	%g25, %r1, %g25
	  fadds,5,sm	%g29, %r1, %r20
	}
	{
	  fmul_rsubs,0,sm	%g24, %r2, %g21, %g21
	  addd,1,sm	0x4, %r17, %r17
	  ldw,2,sm	%r7, %r17, %r21
	  addd,3,sm	0x0, %g29, %b[18]
	}
	{
	  addd,0,sm	0x4, %r17, %g24
	  fmul_rsubs,1,sm	%g27, %r2, %g23, %g23
	  ldw,2,sm	%r7, %r17, %g29
	  fadds,3,sm	%r11, %r3, %g27
	  fmuls,4,sm	%r12, %r4, %r12
	  fadds,5,sm	%r11, %r1, %r17
	}
	{
	  addd,0,sm	0x4, %g24, %r23
	  fadds,1,sm	%r14, %r3, %r22
	  ldw,2,sm	%r7, %g24, %g24
	  fmuls,3,sm	%r15, %r4, %r15
	  addd,4,sm	0x0, %r11, %b[16]
	}
	{
	  ldw,0,sm	%r7, %r23, %r24
	  fadds,1,sm	%r21, %r3, %r11
	  fmul_rsubs,2,sm	%g28, %r2, %g26, %g26
	  fadds,3,sm	%r14, %r1, %g28
	  fmuls,4,sm	%r18, %r4, %r18
	}
	{
	  fmul_rsubs,0,sm	%g31, %r2, %g30, %g30
	  fmul_rsubs,1,sm	%r9, %r2, %r0, %g31
	  fadds,2,sm	%r21, %r1, %r0
	  addd,4,sm	0x4, %r23, %r9
	  addd,5,sm	0x0, %r14, %b[14]
	}
	{
	  fadds,0,sm	%g29, %r3, %r23
	  fadds,2,sm	%g24, %r3, %r25
	  fmuls,3,sm	%g27, %r4, %g27
	  fadds,4,sm	%g29, %r1, %r14
	  addd,5,sm	0x4, %r9, %r26
	}
	{
	  fadds,0,sm	%r24, %r3, %r27
	  fmuls,1,sm	%r22, %r4, %r22
	  ldw,3,sm	%r7, %r9, %b[4]
	  adds,4,sm	0x0, %r13, %b[30]
	  ldw,5,sm	%r7, %r26, %b[2]
	}
	{
	  fmuls,0,sm	%r11, %r4, %r9
	  fmul_rsubs,1,sm	%g20, %r2, %r12, %b[9]
	  fmul_rsubs,3,sm	%g25, %r2, %r15, %b[7]
	  fmul_rsubs,4,sm	%r20, %r2, %r18, %b[5]
	  addd,5,sm	0x0, %r21, %b[12]
	}
	{
	  fmul_adds,0,sm	%g18, %r6, %g21, %b[27]
	  adds,2,sm	0x0, %r16, %b[28]
	  addd,3,sm	0x0, %g29, %b[10]
	  addd,4,sm	0x0, %g24, %b[8]
	  addd,5,sm	0x0, %r24, %b[6]
	}
	{
	  fmul_adds,0,sm	%g17, %r6, %g23, %b[25]
	  addd,1,sm	0x4, %r26, %b[34]
	  adds,3,sm	0x0, %g28, %b[26]
	  fmul_rsubs,4,sm	%r17, %r2, %g27, %b[3]
	}
	{
	  adds,2,sm	0x0, %r0, %b[24]
	}
	{
	  fmul_adds,0,sm	%g16, %r6, %g26, %b[23]
	  adds,1,sm	0x0, %r14, %b[22]
	  adds,2,sm	0x0, %r23, %b[17]
	  adds,3,sm	0x0, %r25, %b[15]
	}
	{
	  fmul_adds,0,sm	%g19, %r6, %g30, %b[21]
	  fmul_adds,1,sm	%g22, %r6, %g31, %b[19]
	  adds,2,sm	0x0, %r22, %b[33]
	  adds,3,sm	0x0, %r27, %b[13]
	}
	{
	  nop 5
	  adds,0,sm	0x0, %r9, %b[31]
	}
.L1100:
	{
	  loop_mode
	  fadds,0,sm	%b[4], %r3, %b[11]
	  fadds,1,sm	%b[8], %r1, %b[20]
	  addd,2,sm	0x4, %b[34], %b[32]
	  ldw,3,sm	%r7, %b[34], %b[0]
	  fmuls,4,sm	%b[17], %r4, %b[29]
	  fmul_rsubs,5,sm	%b[26], %r2, %b[33], %b[1]
	}
	{
	  loop_mode
	  alc	alcf=1, alct=1
	  abn	abnf=1, abnt=1
	  ct	%ctpr1 ? %NOT_LOOP_END
	  staaw,2	%b[27], %aad0[ %aasti1 ]
	  incr,2	%aaincr0
	  fadds,4,sm	%b[18], %r5, %b[26]
	  fmul_adds,5,sm	%b[30], %r6, %b[9], %b[17]
	}
	{
	  setwd	wsz = 0x2b, nfx = 0x1, dbl = 0x1
	  setbn	rsz = 0x15, rbs = 0x15, rcur = 0x0
	}
	{
	  aaurw,2	%r19, %aabf0
	}
.L1040:
	{
	  ct	%ctpr3
	}
	.section .text.async_prefetch_code, "ax", @progbits

.L1836:
	{
	  fapb	ct=1, dcd=0, fmt=4, mrng=16, d=0, incr=1, ind=0, asz=5, abs=0, disp=0
	}
.previous

	.size	triadplus, .- triadplus
	.global	triad
	.type	triad, #function
	.align	8
triad:
	{
	  setwd	wsz = 0x18, nfx = 0x1, dbl = 0x1
	  setbn	rsz = 0xf, rbs = 0x8, rcur = 0x0
	  disp	%ctpr2, .L2207
	  subs,1,sm	%r0, 0x1, %g16
	  adds,2,sm	0x0, %r2, %r2
	  ldw,3,sm	%r3, 0x0, %g17
	  adds,4,sm	0x0, %r1, %r1
	  addd,5,sm	0x0, %r3, %r3
	}
	{
	  return	%ctpr3
	  cmplsb,0	0x0, %r0, %pred0
	  cmplsb,1,sm	0x1, %r0, %pred1
	  adds,2,sm	0x0, %r2, %g18
	  cmpandedb,3,sm	%r3, 0x4, %pred2
	  adds,4,sm	0x0, %r1, %g19
	  addd,5,sm	0x0, 0x0, %r15
	}
	{
	  disp	%ctpr1, .L2179
	  adds,1,sm	0x0, %r2, %g20
	  adds,2,sm	0x0, %r1, %g21
	}
	{
	  merges,0,sm	0x1, %r0, %r0, %pred0
	  addd,1	0x0, 0x0, %r9 ? %pred0
	  merges,2,sm	0x1, %g16, %g16, %pred1
	  fadds,3,sm	%g17, %r1, %g17
	}
	{
	  ct	%ctpr3 ? ~%pred0
	  cmplsb,0,sm	%r0, _f16s,_lts0lo 0x10, %pred3
	  shrs,1,sm	%r0, 0x1, %g22
	  shrs,2,sm	%g16, 0x1, %g23
	}
	{
	  cmplsb,0,sm	0x0, %g22, %pred5
	  cmplsb,1,sm	0x0, %g23, %pred6
	  pass	%pred0, @p0
	  pass	%pred3, @p1
	  landp	@p0, @p1, @p4
	  pass	@p4, %pred4
	  landp	@p0, ~@p1, @p5
	  pass	@p5, %pred0
	  pass	%pred2, @p2
	  landp	@p5, @p2, @p6
	  pass	@p6, %pred3
	}
	{
	  pass	%pred0, @p0
	  pass	%pred2, @p1
	  landp	@p0, ~@p1, @p4
	  pass	@p4, %pred0
	  pass	%pred1, @p2
	  landp	@p4, ~@p2, @p5
	  pass	@p5, %pred2
	  landp	@p4, @p2, @p6
	  pass	@p6, %pred1
	}
	{
	  insfd,0	%g18, _f32s,_lts0 0xa820, %g18, %r6 ? %pred3
	  insfd,1	%g19, _lit32_ref,_lts0 0xa820, %g19, %r7 ? %pred3
	  merges,2,sm	0x1, %g22, %g24, %pred5
	  adds,3	0x0, %g22, %r12 ? %pred3
	  adds,4,sm	0x0, %r0, %r13 ? %pred3
	  addd,5,sm	0x0, 0x0, %r14 ? %pred3
	}
	{
	  ct	%ctpr2 ? %pred4
	  adds,0	0x0, %g24, %r11 ? %pred3
	  merges,1,sm	0x1, %g23, %g18, %pred6
	  shrs,2,sm	%g24, 0x1, %r10 ? %pred3
	  insfd,3	%g21, _f32s,_lts0 0xa820, %g21, %r7 ? %pred1
	  insfd,4	%g20, _lit32_ref,_lts0 0xa820, %g20, %r6 ? %pred1
	  fmuls,5,sm	%g17, %r2, %g17
	}
	{
	  ct	%ctpr1 ? %pred3
	  addd,0	0x1, 0x0, %r9 ? %pred0
	  adds,1	0x0, %g23, %r12 ? %pred1
	  adds,2,sm	0x0, %g16, %r13 ? %pred1
	  addd,3,sm	0x1, 0x0, %r14 ? %pred1
	}
	{
	  nop 1
	  return	%ctpr3
	  shrs,0	%g18, 0x1, %r10 ? %pred1
	  adds,1	0x0, %g18, %r11 ? %pred1
	}
	{
	  nop 2
	  stw,5	%r3, 0x0, %g17 ? %pred0
	}
	{
	  ibranch	.L1883 ? %pred2
	}
.L2179:
	{
	  setwd	wsz = 0x18, nfx = 0x1, dbl = 0x1
	  setbn	rsz = 0xf, rbs = 0x8, rcur = 0x0
	  ldisp	%ctpr2, .L2382
	  cmplsb,0	0x0, %r10, %pred0
	  addd,1	0x0, _f64,_lts1 0x40ff2000000000, %g16
	  adds,2	0x2, 0x0, %g19
	  shld,3,sm	%r14, 0x2, %g17
	  addd,4	%r3, 0x8, %g18
	  addd,5,sm	0x0, 0x0, %g21
	}
	{
	  disp	%ctpr1, .L1856
	  addd,1	0x2, 0x0, %g23
	  aaurwd,2	%r15, %aasti1
	  addd,3,sm	%r3, %g17, %g22
	  addd,4	%g18, %g17, %g18
	  aaurwd,5	%r15, %aasti2
	}
	{
	  merges,0	0x1, %r10, %g24, %pred0
	  aaurw,2	%g19, %aaincr1
	  addd,4,sm	0x0, %g22, %g20
	  aaurwd,5	%g22, %aad2
	}
	{
	  aaurwd,2	%g23, %aaincr2
	  addd,4,sm	%g20, _f16s,_lts0lo 0xd0, %g20
	  aaurwd,5	%g18, %aad1
	}
	{
	  aaurwq,2	%g20, %aad0
	}
	{
	  ldd,0,sm	%r3, %g17, %g17
	  ldd,2,sm	%g22, 0x8, %g18
	  ldd,3,sm	%g22, _f16s,_lts0lo 0x10, %g19
	  ldd,5,sm	%g22, _f16s,_lts0hi 0x18, %g20
	}
	{
	  ldd,0,sm	%g22, _f16s,_lts0lo 0x20, %g21
	  insfd,1	%g16, _f32s,_lts2 0x8800, %g24, %g16
	  ldd,2,sm	%g22, _f16s,_lts0hi 0x28, %g23
	  ldd,3,sm	%g22, _f16s,_lts1lo 0x30, %g24
	  ldd,5,sm	%g22, _f16s,_lts1hi 0x38, %g25
	}
	{
	  rwd,0	%g16, %lsr
	  andd,1	%g16, _f64,_lts2 0xffffffff, %g16
	  ldd,2,sm	%g22, _f16s,_lts0lo 0x40, %g26
	  ldd,3,sm	%g22, _f16s,_lts0hi 0x48, %g27
	  ldd,5,sm	%g22, _f16s,_lts1lo 0x50, %g28
	}
	{
	  pfadds,0,sm	%g18, %r7, %g18
	  pfadds,1,sm	%g17, %r7, %g17
	  ldd,2,sm	%g22, _f16s,_lts0lo 0x58, %g29
	  pfadds,3,sm	%g20, %r7, %g20
	  pfadds,4,sm	%g19, %r7, %g19
	  ldd,5,sm	%g22, _f16s,_lts0hi 0x60, %g30
	}
	{
	  pfadds,0,sm	%g23, %r7, %g23
	  pfadds,1,sm	%g21, %r7, %g21
	  ldd,2,sm	%g22, _f16s,_lts0lo 0x68, %g31
	  pfadds,3,sm	%g25, %r7, %g25
	  pfadds,4,sm	%g24, %r7, %g24
	  ldd,5,sm	%g22, _f16s,_lts0hi 0x70, %r5
	}
	{
	  pfadds,0,sm	%g26, %r7, %b[21]
	  ldd,2,sm	%g22, _f16s,_lts0lo 0x78, %r14
	  pfadds,3,sm	%g27, %r7, %b[20]
	  pfadds,4,sm	%g28, %r7, %b[19]
	  shld,5	%g16, 0x2, %g16
	}
	{
	  bap
	  pfadds,0,sm	%g29, %r7, %b[18]
	  ldd,2,sm	%g22, _f16s,_lts0lo 0x80, %b[10]
	  pfadds,3,sm	%g30, %r7, %b[17]
	  ldd,5,sm	%g22, _f16s,_lts0hi 0x88, %b[11]
	}
	{
	  pfmuls,0,sm	%g17, %r6, %b[31]
	  addd,1	%r9, %g16, %r0
	  ldd,2,sm	%g22, _f16s,_lts0lo 0x90, %b[8]
	  pfmuls,3,sm	%g19, %r6, %b[29]
	  pfmuls,4,sm	%g20, %r6, %b[28]
	  ldd,5,sm	%g22, _f16s,_lts0hi 0x98, %b[9]
	}
	{
	  pfmuls,0,sm	%g18, %r6, %b[30]
	  pfadds,1,sm	%g31, %r7, %b[16]
	  ldd,2,sm	%g22, _f16s,_lts0lo 0xa0, %b[6]
	  pfadds,3,sm	%r5, %r7, %b[15]
	  pfmuls,4,sm	%g24, %r6, %b[25]
	  ldd,5,sm	%g22, _f16s,_lts0hi 0xa8, %b[7]
	}
	{
	  pfmuls,0,sm	%g21, %r6, %b[27]
	  pfmuls,1,sm	%g23, %r6, %b[26]
	  ldd,2,sm	%g22, _f16s,_lts0lo 0xb0, %b[4]
	  pfmuls,3,sm	%g25, %r6, %b[24]
	  pfadds,4,sm	%r14, %r7, %b[14]
	  ldd,5,sm	%g22, _f16s,_lts0hi 0xb8, %b[5]
	}
	{
	  nop 7
	  ldd,2,sm	%g22, _f16s,_lts0lo 0xc0, %b[2]
	  ldd,5,sm	%g22, _f16s,_lts0hi 0xc8, %b[3]
	}
	{
	  nop 3
	}
.L1856:
	{
	  loop_mode
	  alc	alcf=1, alct=1
	  abn	abnf=1, abnt=1
	  ct	%ctpr1 ? %NOT_LOOP_END
	  pfadds,0,sm	%b[10], %r7, %b[13]
	  pfmuls,1,sm	%b[21], %r6, %b[23]
	  staad,2	%b[31], %aad2[ %aasti2 ]
	  incr,2	%aaincr2
	  pfadds,3,sm	%b[11], %r7, %b[12]
	  pfmuls,4,sm	%b[20], %r6, %b[22]
	  staad,5	%b[30], %aad1[ %aasti1 ]
	  incr,5	%aaincr2
	  movad,0	area=0, ind=0, am=0, be=0, %b[0]
	  movad,1	area=0, ind=8, am=1, be=0, %b[1]
	}
	{
	  setwd	wsz = 0x18, nfx = 0x1, dbl = 0x1
	  setbn	rsz = 0xf, rbs = 0x8, rcur = 0x0
	  eap
	  return	%ctpr3
	  shld,0,sm	%r0, 0x2, %g16
	  shls,1	%r10, 0x1, %g17
	  shls,2	%r12, 0x1, %g18
	  adds,3	0x0, 0x0, %g19
	}
	{
	  disp	%ctpr2, disp=0x0
	  cmpesb,0	%g17, %r11, %pred0
	  cmpesb,1	%g18, %r13, %pred1
	  ldd,2,sm	%r3, %g16, %g20
	}
	{
	  disp	%ctpr2, disp=0x0
	  aaurw,2	%g19, %aabf0
	}
	{
	  addd,0	%r0, 0x2, %r0 ? ~%pred0
	}
	{
	  nop 3
	  pfadds,0,sm	%g20, %r7, %g17
	  shld,1,sm	%r0, 0x2, %g18
	}
	{
	  nop 3
	  pfmuls,0,sm	%g17, %r6, %g17
	}
	{
	  ct	%ctpr3 ? %pred1
	  std,2	%r3, %g16, %g17 ? ~%pred0
	  ldw,5,sm	%r3, %g18, %g16
	}
	{
	  nop 1
	}
	{
	  nop 3
	  fadds,3,sm	%g16, %r1, %g16
	}
	{
	  nop 3
	  fmuls,3,sm	%g16, %r2, %g16
	}
	{
	  ct	%ctpr3 ? ~%pred1
	  stw,5	%r3, %g18, %g16 ? ~%pred1
	}
.L2207:
	{
	  setwd	wsz = 0x18, nfx = 0x1, dbl = 0x1
	  setbn	rsz = 0xa, rbs = 0x8, rcur = 0x0
	  disp	%ctpr1, .L1935
	  addd,0	0x0, _f64,_lts1 0x20ff2000000000, %g16
	}
	{
	  return	%ctpr3
	  addd,0,sm	0x0, 0x0, %b[6]
	  insfd,1	%g16, _f32s,_lts0 0x8800, %r0, %g16
	  aaurwd,2	%r9, %aasti1
	  aaurwd,5	%r3, %aad0
	}
	{
	  rwd,0	%g16, %lsr
	  addd,1,sm	0x4, %b[6], %g17
	  ldw,2,sm	%r3, %b[6], %g18
	}
	{
	  addd,1,sm	0x4, %g17, %g16
	  ldw,2,sm	%r3, %g17, %g17
	}
	{
	  ldw,0,sm	%r3, %g16, %g16
	  addd,1,sm	0x4, %g16, %g19
	}
	{
	  ldw,0,sm	%r3, %g19, %g19
	  addd,1,sm	0x4, %g19, %g20
	  fadds,2,sm	%g18, %r1, %g18
	}
	{
	  fadds,0,sm	%g17, %r1, %g17
	  addd,1,sm	0x4, %g20, %g21
	  ldw,2,sm	%r3, %g20, %g20
	}
	{
	  fadds,0,sm	%g16, %r1, %g16
	  addd,1,sm	0x4, %g21, %g22
	}
	{
	  fadds,0,sm	%g19, %r1, %g19
	  addd,1,sm	0x4, %g22, %g23
	  ldw,2,sm	%r3, %g21, %g21
	}
	{
	  fmuls,0,sm	%g18, %r2, %g18
	  addd,1,sm	0x4, %g23, %g24
	  ldw,2,sm	%r3, %g22, %g22
	}
	{
	  fadds,0,sm	%g20, %r1, %g20
	  addd,1,sm	0x4, %g24, %g25
	  ldw,2,sm	%r3, %g23, %g23
	}
	{
	  fmuls,0,sm	%g17, %r2, %g17
	  addd,1,sm	0x4, %g25, %g26
	  ldw,2,sm	%r3, %g24, %g24
	}
	{
	  fmuls,0,sm	%g16, %r2, %g16
	  fadds,1,sm	%g21, %r1, %g21
	  ldw,2,sm	%r3, %g25, %g25
	}
	{
	  fmuls,0,sm	%g19, %r2, %g19
	  fadds,1,sm	%g22, %r1, %g22
	  ldw,2,sm	%r3, %g26, %g27
	  addd,3,sm	0x4, %g26, %g26
	}
	{
	  fadds,0,sm	%g24, %r1, %g24
	  fadds,1,sm	%g23, %r1, %g23
	  ldw,3,sm	%r3, %g26, %b[9]
	  addd,4,sm	0x4, %g26, %g28
	}
	{
	  fadds,1,sm	%g25, %r1, %g25
	  adds,2,sm	0x0, %g18, %b[19]
	  ldw,3,sm	%r3, %g28, %b[7]
	  addd,4,sm	0x4, %g28, %g26
	}
	{
	  fadds,1,sm	%g27, %r1, %g18
	  adds,2,sm	0x0, %g20, %b[14]
	  ldw,3,sm	%r3, %g26, %b[5]
	  addd,4,sm	0x4, %g26, %g27
	}
	{
	  adds,0,sm	0x0, %g17, %b[17]
	  ldw,3,sm	%r3, %g27, %b[3]
	  addd,4,sm	%g27, 0x8, %b[18]
	  addd,5,sm	0x4, %g27, %b[20]
	}
	{
	  adds,0,sm	0x0, %g16, %b[15]
	  adds,2,sm	0x0, %g21, %b[12]
	}
	{
	  adds,0,sm	0x0, %g19, %b[13]
	  adds,1,sm	0x0, %g22, %b[10]
	}
	{
	  adds,0,sm	0x0, %g23, %b[8]
	  adds,1,sm	0x0, %g24, %b[6]
	}
	{
	  adds,0,sm	0x0, %g25, %b[4]
	}
	{
	  adds,0,sm	0x0, %g18, %b[2]
	}
.L1935:
	{
	  loop_mode
	  alc	alcf=1, alct=1
	  abn	abnf=1, abnt=1
	  ct	%ctpr1 ? %NOT_LOOP_END
	  ldw,0,sm	%r3, %b[20], %b[1]
	  fmuls,1,sm	%b[14], %r2, %b[11]
	  staaw,2	%b[19], %aad0[ %aasti1 ]
	  incr,2	%aaincr0
	  addd,4,sm	0x4, %b[18], %b[16]
	  fadds,5,sm	%b[9], %r1, %b[0]
	}
	{
	  setwd	wsz = 0x18, nfx = 0x1, dbl = 0x1
	  setbn	rsz = 0xf, rbs = 0x8, rcur = 0x0
	  adds,0	0x0, 0x0, %g16
	}
	{
	  aaurw,2	%g16, %aabf0
	}
.L1883:
	{
	  ct	%ctpr3
	}
	.section .text.async_prefetch_code, "ax", @progbits

.L2382:
	{
	  fapb	ct=1, dcd=0, fmt=4, mrng=16, d=0, incr=1, ind=0, asz=5, abs=0, disp=0
	}
.previous

	.size	triad, .- triad
	.global	runTests
	.type	runTests, #function
	.align	8
runTests:
	{
	  setwd	wsz = 0x41, nfx = 0x1, dbl = 0x1
	  setbn	rsz = 0x20, rbs = 0x20, rcur = 0x0
	  return	%ctpr3
	  getsp,0	_f32s,_lts1 0xfffffd70, %r2
	  adds,1	0x0, 0x0, %r49
	  ldw,2	0x0, [ _f64,_lts2 repeats ], %r50
	  shld,3,sm	%r0, 0x2, %g17
	  shld,4,sm	%r0, 0x2, %g16
	  adds,5,sm	0x2, 0x0, %r9
	}
	{
	  disp	%ctpr1, .L3052
	  ldw,0	0x0, [ _f64,_lts0 xcalcs +8 ], %r48
	  addd,1,sm	0x2, 0x0, %r20
	  ldw,2,sm	0x0, [ _f64,_lts2 part ], %g18
	  adds,3,sm	0x1f, 0x1, %r54
	  shld,4,sm	%r0, 0x2, %g19
	  adds,5,sm	0x2, 0x0, %r25
	}
	{
	  disp	%ctpr2, .L14275
	  addd,0	%r2, _f64,_lts0 0x290, %r1
	  addd,1,sm	0x2, 0x0, %r26
	  ldd,2	0x0, [ _f64,_lts2 xcalcs ], %g20
	  adds,3,sm	0x8, 0x0, %r22
	}
	{
	  ldw,0,sm	0x0, [ _f64,_lts0 aval ], %r5
	  cmplsb,1	0x0, %r50, %pred3
	  ldw,2,sm	0x0, _lit64_ref,_lts0 0x0, %r13
	  ldw,3,sm	0x0, [ _f64,_lts2 cval ], %r14
	}
	{
	  cmpesb,0,sm	%g18, 0x0, %pred4
	  cmpesb,1,sm	%g18, 0x2, %pred5
	  sxt,2	0x2, %r48, %g21
	}
	{
	  cmpesb,0,sm	%g18, 0x1, %pred6
	  muld,1	%r0, %g21, %g18
	  adds,2	0x0, 0x0, %r56 ? %pred3
	  cmplsb,3,sm	0x0, %r48, %pred7
	  cmplesb,4,sm	%r48, 0x0, %pred0
	  subs,5,sm	%r48, 0x1, %r17
	  pass	%pred3, @p0
	  pass	%pred4, @p1
	  landp	@p0, ~@p1, @p4
	  pass	@p4, %pred8
	  landp	@p0, @p1, @p5
	  pass	@p5, %pred9
	}
	{
	  muld,0,sm	%g16, %g21, %g16
	  muld,1,sm	%g17, %g21, %g17
	  cmplsb,3,sm	0x0, %r48, %pred1
	  muld,4,sm	%g19, %g21, %g19
	  pass	%pred6, @p0
	  pass	%pred5, @p1
	  landp	~@p0, @p1, @p4
	  pass	@p4, %pred10
	  pass	%pred8, @p2
	  landp	@p2, @p4, @p5
	  pass	@p5, %pred11
	  pass	%pred7, @p3
	  landp	@p0, ~@p3, @p6
	  pass	@p6, %pred12
	}
	{
	  cmplsb,0,sm	0x0, %r48, %pred2
	  pass	%pred11, @p0
	  pass	%pred7, @p1
	  landp	@p0, ~@p1, @p4
	  pass	@p4, %pred10
	  pass	%pred9, @p2
	  landp	@p2, ~@p1, @p5
	  pass	@p5, %pred13
	  pass	%pred5, @p3
	  landp	@p3, @p1, @p6
	  pass	@p6, %pred5
	}
	{
	  pass	%pred8, @p0
	  pass	%pred12, @p1
	  landp	@p0, @p1, @p4
	  pass	@p4, %pred8
	  pass	%pred6, @p2
	  pass	%pred5, @p3
	  landp	~@p2, ~@p3, @p5
	  pass	@p5, %pred5
	  landp	~@p1, ~@p5, @p6
	  pass	@p6, %pred6
	}
	{
	  adds,0	0x1, 0x0, %r56 ? %pred10
	  adds,1	0x1, 0x0, %r56 ? %pred13
	  adds,2	0x1f, 0x1, %r3 ? %pred10
	  adds,3	0x2, 0x0, %r3 ? %pred13
	  pass	%pred4, @p0
	  pass	%pred6, @p1
	  landp	~@p0, ~@p1, @p4
	  pass	@p4, %pred5
	  pass	%pred7, @p2
	  landp	@p0, ~@p2, @p5
	  pass	@p5, %pred4
	  landp	~@p5, ~@p4, @p6
	  pass	@p6, %pred6
	}
	{
	  adds,0	0x1, 0x0, %r56 ? %pred8
	  adds,1	0x8, 0x0, %r3 ? %pred8
	  pass	%pred3, @p0
	  pass	%pred6, @p1
	  landp	@p0, ~@p1, @p4
	  pass	@p4, %pred4
	  pass	%pred9, @p2
	  pass	%pred7, @p3
	  landp	@p2, @p3, @p5
	  pass	@p5, %pred5
	}
	{
	  ct	%ctpr3 ? ~%pred3
	  cmpesb,0,sm	%r56, 0x0, %pred6
	  shl_addd,1	%g18, 0x2, %g20, %r47
	  pass	%pred11, @p0
	  pass	%pred7, @p1
	  landp	@p0, @p1, @p4
	  pass	@p4, %pred3
	}
	{
	  addd,0,sm	%g20, %g16, %r19
	  addd,1,sm	%g20, %g17, %r55
	  addd,2,sm	%g20, %g19, %r24
	  pass	%pred4, @p0
	  pass	%pred6, @p1
	  landp	@p0, ~@p1, @p4
	  pass	@p4, %pred6
	}
	{
	  ldw,0,sm	%r47, 0x0, %r7
	  addd,1,sm	%r47, 0x8, %r18
	  getfd,2,sm	%r47, _f16s,_lts0lo 0x42, %r16
	}
	{
	  ct	%ctpr3 ? %pred4
	  addd,0,sm	%r47, 0x8, %r23
	  getfd,1,sm	%r47, _f16s,_lts0lo 0x42, %r53
	  stw,2	0x0, [ _f64,_lts1 opwd ], %r3 ? %pred6
	}
	{
	  ct	%ctpr1 ? %pred5
	  ldw,0,sm	%r47, 0x0, %r3
	  getfd,1,sm	%r47, _f16s,_lts0lo 0x42, %r21
	}
	{
	  ct	%ctpr2 ? %pred3
	}
	nop
.L3359:
	{
	  disp	%ctpr2, .L9357
	  fadds,0,sm	%r3, %r14, %g16
	  merges,1	0x1, %r48, %r27, %pred2
	  ldw,2	0x0, [ _f64,_lts0 dval ], %r11
	  ldw,3	0x0, [ _f64,_lts2 bval ], %r12
	  adds,4	0x0, 0x0, %g17
	  addd,5	0x0, 0x0, %r16
	}
	{
	  cmplsb,0	%r27, _f16s,_lts0lo 0x10, %pred0
	  fadds,1,sm	%r3, %r13, %g18
	  ldw,2	0x0, [ _f64,_lts1 eval ], %r10
	  cmpedb,3,sm	%r21, 0x0, %pred1
	  cmplsb,4,sm	0x1, %r48, %pred2
	  addd,5,sm	0x0, 0x0, %r20
	}
	{
	  insfd,1,sm	%r13, _f32s,_lts0 0xa820, %r13, %r7
	  ldw,2	0x0, [ _f64,_lts1 fval ], %r9
	  insfd,3,sm	%r14, _lit32_ref,_lts0 0xa820, %r14, %r6
	  pass	%pred0, @p0
	  pass	%pred1, @p1
	  landp	~@p0, ~@p1, @p4
	  pass	@p4, %pred1
	  pass	%pred2, @p2
	  landp	@p4, ~@p2, @p5
	  pass	@p5, %pred2
	}
	{
	  insfd,0,sm	%r11, _f32s,_lts0 0xa820, %r11, %r5
	  insfd,3,sm	%r12, _lit32_ref,_lts0 0xa820, %r12, %r2
	}
	{
	  ct	%ctpr2 ? %pred0
	  fadds,0,sm	%r3, %r10, %g19
	  insfd,1,sm	%r10, _f32s,_lts0 0xa820, %r10, %r4
	  fmuls,2,sm	%g16, %r11, %g16
	  addd,3	0x1, 0x0, %r16 ? %pred1
	  adds,5	0x1, 0x0, %g17 ? %pred1
	}
	{
	  nop 1
	  disp	%ctpr2, .L3359
	  insfd,0,sm	%r9, _f32s,_lts0 0xa820, %r9, %r3
	  fmuls,2,sm	%g18, %r12, %g18
	  cmplsb,3,sm	%g17, %r48, %pred0
	  subs,5,sm	%r48, %g17, %g17
	}
	{
	  merges,0,sm	0x1, %g17, %r19, %pred0
	}
	{
	  fmuls,0,sm	%g19, %r9, %g17
	  shrs,1,sm	%r19, 0x1, %r18
	}
	{
	  nop 1
	  cmplsb,0,sm	0x0, %r18, %pred0
	  fsubs,2,sm	%g18, %g16, %g16
	}
	{
	  merges,0,sm	0x1, %r18, %r17, %pred0
	}
	{
	  shrs,0,sm	%r17, 0x1, %r15
	}
	{
	  nop 3
	  fadds,0,sm	%g16, %g17, %g16
	}
	{
	  ibranch	.L3394 ? %pred2
	  stw,2	%r47, 0x0, %g16 ? %pred1
	}
	{
	  setwd	wsz = 0x41, nfx = 0x1, dbl = 0x1
	  setbn	rsz = 0x15, rbs = 0x20, rcur = 0x0
	  ldisp	%ctpr2, .L11444
	  cmplsb,0	0x0, %r15, %pred0
	  shld,1,sm	%r16, 0x2, %g16
	  addd,2	0x0, _f64,_lts1 0x40ff2000000000, %g17
	  addd,3,sm	0x0, 0x0, %g19
	}
	{
	  disp	%ctpr1, .L3376
	  ldd,0,sm	%r24, %g16, %g21
	  addd,1,sm	%r24, %g16, %g20
	  addd,2	%r23, %g16, %g22
	}
	{
	  disp	%ctpr3, .L6539
	  ldd,0,sm	%g20, _f16s,_lts0lo 0x20, %g24
	  merges,1	0x1, %r15, %g23, %pred0
	  ldd,2,sm	%g20, _f16s,_lts0hi 0x28, %g25
	  addd,3	%r47, %g16, %g16
	}
	{
	  ldd,0,sm	%g20, _f16s,_lts0lo 0x10, %g26
	  addd,1,sm	0x0, %g20, %g18
	  ldd,2,sm	%g20, 0x8, %g28
	  ldd,3,sm	%g20, _f16s,_lts0hi 0x18, %g27
	  ldd,5,sm	%g20, _f16s,_lts1lo 0x50, %g29
	}
	{
	  addd,0,sm	%g18, _f16s,_lts0lo 0xa0, %g18
	  pfadds,1,sm	%g21, %r6, %g30
	  aaurw,2	%r25, %aaincr1
	  aaurwd,5	%r26, %aaincr2
	}
	{
	  pfadds,0,sm	%g25, %r6, %r20
	  pfadds,1,sm	%g24, %r6, %g31
	  aaurwd,2	%r20, %aasti1
	  pfadds,3,sm	%g21, %r4, %g21
	  pfadds,4,sm	%g21, %r7, %r27
	  aaurwd,5	%r20, %aasti2
	}
	{
	  insfd,0	%g17, _f32s,_lts0 0x8800, %g23, %g17
	  pfadds,1,sm	%g26, %r6, %g16
	  aaurwd,2	%g22, %aad1
	  pfadds,3,sm	%g27, %r6, %g22
	  pfadds,4,sm	%g24, %r7, %g23
	  aaurwd,5	%g16, %aad2
	}
	{
	  rwd,0	%g17, %lsr
	  pfadds,1,sm	%g28, %r6, %g18
	  aaurwq,2	%g18, %aad0
	  pfadds,3,sm	%g26, %r7, %r28
	  pfadds,4,sm	%g25, %r7, %g19
	}
	{
	  pfmuls,0,sm	%g30, %r5, %g30
	  pfadds,1,sm	%g27, %r7, %r29
	  ldd,2,sm	%g20, _f16s,_lts0lo 0x58, %r31
	  pfadds,3,sm	%g29, %r6, %r33
	  pfadds,4,sm	%g28, %r7, %r30
	  ldd,5,sm	%g20, _f16s,_lts0hi 0x40, %r32
	}
	{
	  pfmuls,0,sm	%r20, %r5, %r20
	  pfmuls,1,sm	%g31, %r5, %g31
	  ldd,2,sm	%g20, _f16s,_lts0lo 0x48, %r34
	  pfadds,3,sm	%g24, %r4, %g24
	  pfadds,4,sm	%g25, %r4, %g25
	  ldd,5,sm	%g20, _f16s,_lts0hi 0x30, %r35
	}
	{
	  pfadds,0,sm	%g26, %r4, %g26
	  pfmuls,1,sm	%g16, %r5, %g16
	  ldd,2,sm	%g20, _f16s,_lts0lo 0x38, %r36
	  pfadds,3,sm	%g27, %r4, %g27
	  pfmuls,4,sm	%g22, %r5, %g22
	  ldd,5,sm	%g20, _f16s,_lts0hi 0x60, %r37
	}
	{
	  bap
	  pfadds,0,sm	%r31, %r6, %r38
	  pfmuls,1,sm	%g18, %r5, %g18
	  ldd,2,sm	%g20, _f16s,_lts0lo 0x68, %r40
	  pfadds,3,sm	%g28, %r4, %g28
	  pfadds,4,sm	%r32, %r6, %r39
	  pfadds,5,sm	%g29, %r7, %r41
	}
	{
	  pfmul_rsubs,0,sm	%r27, %r2, %g30, %g30
	  pfadds,1,sm	%r34, %r6, %r27
	  pfadds,2,sm	%r31, %r7, %r43
	  pfadds,3,sm	%r35, %r6, %r42
	  pfadds,4,sm	%r32, %r7, %r44
	  pfmuls,5,sm	%r33, %r5, %r33
	}
	{
	  pfmul_rsubs,0,sm	%g23, %r2, %g31, %g23
	  pfmul_rsubs,1,sm	%g19, %r2, %r20, %g19
	  pfadds,2,sm	%r36, %r6, %g31
	  pfadds,3,sm	%r35, %r7, %r45
	  pfadds,4,sm	%r34, %r7, %r20
	  pfadds,5,sm	%r37, %r6, %r46
	}
	{
	  pfadds,0,sm	%r36, %r7, %r28
	  pfmul_rsubs,1,sm	%r28, %r2, %g16, %g16
	  pfadds,2,sm	%r40, %r6, %r29
	  pfadds,3,sm	%g29, %r4, %b[26]
	  pfmul_rsubs,4,sm	%r29, %r2, %g22, %g22
	  pfadds,5,sm	%r31, %r4, %b[3]
	}
	{
	  pfmuls,0,sm	%r38, %r5, %g29
	  pfmul_rsubs,1,sm	%r30, %r2, %g18, %g18
	  pfadds,2,sm	%r32, %r4, %b[28]
	  pfadds,3,sm	%r34, %r4, %b[5]
	  pfmuls,4,sm	%r39, %r5, %r30
	  pfadds,5,sm	%r35, %r4, %b[30]
	}
	{
	  pfmuls,1,sm	%r27, %r5, %r27
	  pfadds,2,sm	%r36, %r4, %b[7]
	  pfadds,3,sm	%r37, %r7, %b[42]
	  pfmuls,4,sm	%r42, %r5, %r31
	  pfadds,5,sm	%r40, %r7, %b[27]
	}
	{
	  andd,1	%g17, _f64,_lts0 0xffffffff, %g17
	  pfmuls,2,sm	%g31, %r5, %g31
	  pfmul_rsubs,3,sm	%r41, %r2, %r33, %b[15]
	  pfmuls,4,sm	%r46, %r5, %b[39]
	}
	{
	  pfmuls,0,sm	%r29, %r5, %b[35]
	}
	{
	  pfmul_rsubs,0,sm	%r43, %r2, %g29, %b[9]
	  ldd,3,sm	%g20, _f16s,_lts0lo 0x88, %r29
	  pfmul_rsubs,4,sm	%r44, %r2, %r30, %b[17]
	  ldd,5,sm	%g20, _f16s,_lts0hi 0x70, %r32
	}
	{
	  pfmul_adds,0,sm	%g21, %r3, %g30, %b[38]
	  pfmul_rsubs,1,sm	%r20, %r2, %r27, %b[11]
	  ldd,2,sm	%g20, _f16s,_lts0lo 0x78, %g29
	  shld,3	%g17, 0x2, %g17
	  pfmul_rsubs,4,sm	%r45, %r2, %r31, %b[19]
	  ldd,5,sm	%g20, _f16s,_lts0hi 0x90, %b[10]
	}
	{
	  ldd,0,sm	%g20, _f16s,_lts0lo 0x98, %b[2]
	  pfmul_adds,1,sm	%g24, %r3, %g23, %b[34]
	  ldd,2,sm	%g20, _f16s,_lts0hi 0x80, %b[12]
	  addd,3,sm	0x0, %r37, %b[16]
	  addd,4,sm	0x0, %r40, %b[8]
	  addd,5	%r16, %g17, %r16
	}
	{
	  pfmul_adds,0,sm	%g25, %r3, %g19, %b[18]
	  pfmul_rsubs,1,sm	%r28, %r2, %g31, %b[13]
	  pfmul_adds,2,sm	%g26, %r3, %g16, %b[36]
	  pfmul_adds,3,sm	%g27, %r3, %g22, %b[20]
	  pfadds,4,sm	%r29, %r6, %b[21]
	  addd,5,sm	0x0, %r29, %b[4]
	}
	{
	  addd,0,sm	0x0, %r32, %b[14]
	  pfadds,1,sm	%r32, %r6, %b[31]
	  pfmul_adds,2,sm	%g28, %r3, %g18, %b[22]
	}
	{
	  nop 7
	  addd,0,sm	0x0, %g29, %b[6]
	  pfadds,2,sm	%g29, %r6, %b[23]
	}
.L3376:
	{
	  loop_mode
	  pfadds,1,sm	%b[12], %r6, %b[29]
	  pfadds,2,sm	%b[16], %r4, %b[24]
	  pfadds,3,sm	%b[8], %r4, %b[1]
	  pfadds,5,sm	%b[6], %r7, %b[25]
	  movad,1	area=0, ind=8, am=0, be=0, %b[0]
	}
	{
	  loop_mode
	  pfmul_adds,0,sm	%b[30], %r3, %b[19], %b[32]
	  pfadds,1,sm	%b[14], %r7, %b[40]
	  pfmuls,2,sm	%b[31], %r5, %b[37]
	  pfmuls,3,sm	%b[23], %r5, %b[33]
	  pfmul_adds,4,sm	%b[7], %r3, %b[13], %b[16]
	  movad,1	area=0, ind=0, am=1, be=0, %b[8]
	}
	{
	  loop_mode
	  alc	alcf=1, alct=1
	  abn	abnf=1, abnt=1
	  ct	%ctpr1 ? %NOT_LOOP_END
	  pfmul_rsubs,0,sm	%b[42], %r2, %b[39], %b[13]
	  staad,2	%b[38], %aad2[ %aasti2 ]
	  incr,2	%aaincr2
	  pfadds,3,sm	%b[2], %r6, %b[19]
	  pfmul_rsubs,4,sm	%b[27], %r2, %b[35], %b[7]
	  staad,5	%b[22], %aad1[ %aasti1 ]
	  incr,5	%aaincr2
	}
	{
	  setwd	wsz = 0x41, nfx = 0x1, dbl = 0x1
	  setbn	rsz = 0x20, rbs = 0x20, rcur = 0x0
	  eap
	  disp	%ctpr1, .L3394
	  shld,0,sm	%r16, 0x2, %g16
	  shls,1	%r15, 0x1, %g17
	  adds,2	0x0, 0x0, %g18
	  shls,3	%r18, 0x1, %r18
	}
	{
	  nop 1
	  disp	%ctpr2, disp=0x0
	  ldd,0,sm	%r47, %g16, %g17
	  cmpesb,1	%g17, %r17, %pred0
	  aaurw,2	%g18, %aabf0
	}
	{
	  addd,0	%r16, 0x2, %r16 ? ~%pred0
	}
	{
	  ct	%ctpr3 ? %pred0
	  shld,0,sm	%r16, 0x2, %r15
	  pfadds,1,sm	%g17, %r6, %g18
	  pfadds,2,sm	%g17, %r7, %g19
	}
	{
	  nop 2
	  disp	%ctpr1, .L3394
	  pfadds,0,sm	%g17, %r4, %g17
	}
	{
	  pfmuls,0,sm	%g18, %r5, %g18
	  pfmuls,1,sm	%g19, %r2, %g19
	}
	{
	  nop 2
	  pfmuls,0,sm	%g17, %r3, %g17
	}
	{
	  nop 3
	  pfsubs,0,sm	%g19, %g18, %g18
	}
	{
	  nop 3
	  pfadds,0,sm	%g18, %g17, %g17
	}
	{
	  std,2	%r47, %g16, %g17 ? ~%pred0
	}
.L6539:
	{
	  nop 2
	  disp	%ctpr2, .L3359
	  ldw,0,sm	%r47, %r15, %g16
	  cmpesb,1	%r18, %r19, %pred0
	}
	{
	  ct	%ctpr1 ? %pred0
	  fadds,0,sm	%g16, %r14, %g17
	  fadds,1,sm	%g16, %r13, %g18
	}
	{
	  nop 2
	  disp	%ctpr2, .L3359
	  fadds,0,sm	%g16, %r10, %g16
	}
	{
	  fmuls,0,sm	%g17, %r11, %g17
	  fmuls,1,sm	%g18, %r12, %g18
	}
	{
	  nop 2
	  fmuls,0,sm	%g16, %r9, %g16
	}
	{
	  nop 3
	  fsubs,0,sm	%g18, %g17, %g17
	}
	{
	  nop 3
	  fadds,0,sm	%g17, %g16, %g16
	}
	{
	  stw,2	%r47, %r15, %g16 ? ~%pred0
	}
.L3394:
	{
	  return	%ctpr3
	  ldw,0,sm	0x0, [ _f64,_lts2 cval ], %r14
	  adds,1	%r49, 0x1, %r49
	  ldw,2,sm	%r47, 0x0, %r3
	  cmplsb,3,sm	0x0, %r48, %pred2
	  ldw,5,sm	0x0, [ _f64,_lts0 aval ], %r13
	}
	{
	  nop 1
	  cmplsb,0	%r49, %r50, %pred0
	}
	{
	  stw,2	0x0, [ _f64,_lts0 opwd ], %r22 ? ~%pred0
	}
	{
	  ct	%ctpr2 ? %pred0
	}
	{
	  ct	%ctpr3 ? ~%pred0
	}
.L9357:
	{
	  setwd	wsz = 0x41, nfx = 0x1, dbl = 0x1
	  setbn	rsz = 0x11, rbs = 0x20, rcur = 0x0
	  disp	%ctpr1, .L5665
	  addd,0	0x0, _f64,_lts1 0x20ff2000000000, %g16
	}
	{
	  addd,0,sm	0x0, 0x0, %b[30]
	  insfd,1	%g16, _f32s,_lts0 0x8800, %r27, %g16
	  aaurwd,2	%r16, %aasti1
	  aaurwd,5	%r47, %aad0
	}
	{
	  rwd,0	%g16, %lsr
	  addd,1,sm	0x4, %b[30], %g17
	  ldw,2,sm	%r47, %b[30], %g18
	}
	{
	  addd,1,sm	0x4, %g17, %g16
	  ldw,2,sm	%r47, %g17, %g17
	}
	{
	  ldw,0,sm	%r47, %g16, %g16
	  addd,1,sm	0x4, %g16, %g19
	}
	{
	  ldw,0,sm	%r47, %g19, %g19
	  addd,1,sm	0x4, %g19, %g20
	  fadds,2,sm	%g18, %r14, %g21
	}
	{
	  ldw,0,sm	%r47, %g20, %g22
	  addd,1,sm	0x4, %g20, %g20
	  fadds,2,sm	%g17, %r14, %g23
	  fadds,3,sm	%g18, %r13, %g24
	  fadds,4,sm	%g18, %r10, %g18
	}
	{
	  fadds,0,sm	%g16, %r14, %g26
	  addd,1,sm	0x4, %g20, %g25
	  fadds,2,sm	%g16, %r13, %g28
	  fadds,3,sm	%g17, %r10, %g17
	  fadds,4,sm	%g17, %r13, %g27
	}
	{
	  fadds,0,sm	%g19, %r14, %g30
	  addd,1,sm	0x4, %g25, %g29
	  fadds,2,sm	%g19, %r13, %g31
	  fadds,3,sm	%g16, %r10, %g16
	  ldw,5,sm	%r47, %g20, %g20
	}
	{
	  fmuls,0,sm	%g21, %r11, %g21
	  fadds,1,sm	%g22, %r14, %r2
	  fadds,2,sm	%g22, %r13, %r3
	  fadds,3,sm	%g19, %r10, %g19
	  ldw,5,sm	%r47, %g25, %g25
	}
	{
	  fmuls,0,sm	%g23, %r11, %g23
	  addd,1,sm	0x4, %g29, %r4
	  fadds,2,sm	%g22, %r10, %g22
	  ldw,5,sm	%r47, %g29, %g29
	}
	{
	  fmuls,1,sm	%g26, %r11, %g26
	  fadds,3,sm	%g20, %r14, %r5
	  fadds,4,sm	%g20, %r10, %r6
	  fadds,5,sm	%g20, %r13, %g20
	}
	{
	  fmuls,0,sm	%g30, %r11, %g30
	  addd,1,sm	0x4, %r4, %r7
	  ldw,3,sm	%r47, %r4, %r4
	  fadds,4,sm	%g25, %r14, %r15
	  fadds,5,sm	%g25, %r10, %r16
	}
	{
	  addd,0,sm	0x4, %r7, %r17
	  fmuls,1,sm	%r2, %r11, %r2
	  ldw,2,sm	%r47, %r7, %r7
	  fadds,3,sm	%g29, %r14, %r18
	  fadds,4,sm	%g25, %r13, %g25
	  fadds,5,sm	%g29, %r13, %r19
	}
	{
	  fmul_rsubs,0,sm	%g24, %r12, %g21, %g21
	  addd,1,sm	0x4, %r17, %r17
	  ldw,2,sm	%r47, %r17, %r20
	  addd,3,sm	0x0, %g29, %b[18]
	}
	{
	  addd,0,sm	0x4, %r17, %g24
	  fmul_rsubs,1,sm	%g27, %r12, %g23, %g23
	  ldw,2,sm	%r47, %r17, %g29
	  fadds,3,sm	%r4, %r14, %g27
	  fmuls,4,sm	%r5, %r11, %r5
	  fadds,5,sm	%r4, %r13, %r17
	}
	{
	  addd,0,sm	0x4, %g24, %r28
	  fadds,1,sm	%r7, %r14, %r27
	  ldw,2,sm	%r47, %g24, %g24
	  fmuls,3,sm	%r15, %r11, %r15
	  addd,4,sm	0x0, %r4, %b[16]
	}
	{
	  ldw,0,sm	%r47, %r28, %r29
	  fadds,1,sm	%r20, %r14, %r4
	  fmul_rsubs,2,sm	%g28, %r12, %g26, %g26
	  fadds,3,sm	%r7, %r13, %g28
	  fmuls,4,sm	%r18, %r11, %r18
	}
	{
	  fmul_rsubs,0,sm	%g31, %r12, %g30, %g30
	  fmul_rsubs,1,sm	%r3, %r12, %r2, %g31
	  fadds,2,sm	%r20, %r13, %r2
	  addd,4,sm	0x4, %r28, %r3
	  addd,5,sm	0x0, %r7, %b[14]
	}
	{
	  fadds,0,sm	%g29, %r14, %r28
	  fadds,2,sm	%g24, %r14, %r30
	  fmuls,3,sm	%g27, %r11, %g27
	  fadds,4,sm	%g29, %r13, %r7
	  addd,5,sm	0x4, %r3, %r31
	}
	{
	  fadds,0,sm	%r29, %r14, %r32
	  fmuls,1,sm	%r27, %r11, %r27
	  ldw,3,sm	%r47, %r3, %b[4]
	  adds,4,sm	0x0, %r6, %b[30]
	  ldw,5,sm	%r47, %r31, %b[2]
	}
	{
	  fmuls,0,sm	%r4, %r11, %r3
	  fmul_rsubs,1,sm	%g20, %r12, %r5, %b[9]
	  fmul_rsubs,3,sm	%g25, %r12, %r15, %b[7]
	  fmul_rsubs,4,sm	%r19, %r12, %r18, %b[5]
	  addd,5,sm	0x0, %r20, %b[12]
	}
	{
	  fmul_adds,0,sm	%g18, %r9, %g21, %b[27]
	  adds,2,sm	0x0, %r16, %b[28]
	  addd,3,sm	0x0, %g29, %b[10]
	  addd,4,sm	0x0, %g24, %b[8]
	  addd,5,sm	0x0, %r29, %b[6]
	}
	{
	  fmul_adds,0,sm	%g17, %r9, %g23, %b[25]
	  addd,1,sm	0x4, %r31, %b[34]
	  adds,3,sm	0x0, %g28, %b[26]
	  fmul_rsubs,4,sm	%r17, %r12, %g27, %b[3]
	}
	{
	  adds,2,sm	0x0, %r2, %b[24]
	}
	{
	  fmul_adds,0,sm	%g16, %r9, %g26, %b[23]
	  adds,1,sm	0x0, %r7, %b[22]
	  adds,2,sm	0x0, %r28, %b[17]
	  adds,3,sm	0x0, %r30, %b[15]
	}
	{
	  fmul_adds,0,sm	%g19, %r9, %g30, %b[21]
	  fmul_adds,1,sm	%g22, %r9, %g31, %b[19]
	  adds,2,sm	0x0, %r27, %b[33]
	  adds,3,sm	0x0, %r32, %b[13]
	}
	{
	  nop 5
	  adds,0,sm	0x0, %r3, %b[31]
	}
.L5665:
	{
	  loop_mode
	  fadds,0,sm	%b[4], %r14, %b[11]
	  fadds,1,sm	%b[8], %r13, %b[20]
	  addd,2,sm	0x4, %b[34], %b[32]
	  ldw,3,sm	%r47, %b[34], %b[0]
	  fmuls,4,sm	%b[17], %r11, %b[29]
	  fmul_rsubs,5,sm	%b[26], %r12, %b[33], %b[1]
	}
	{
	  loop_mode
	  alc	alcf=1, alct=1
	  abn	abnf=1, abnt=1
	  ct	%ctpr1 ? %NOT_LOOP_END
	  staaw,2	%b[27], %aad0[ %aasti1 ]
	  incr,2	%aaincr0
	  fadds,4,sm	%b[18], %r10, %b[26]
	  fmul_adds,5,sm	%b[30], %r9, %b[9], %b[17]
	}
	{
	  setwd	wsz = 0x41, nfx = 0x1, dbl = 0x1
	  setbn	rsz = 0x20, rbs = 0x20, rcur = 0x0
	  disp	%ctpr1, .L3394
	}
	{
	  nop 3
	  disp	%ctpr2, .L3359
	  aaurw,2	%r56, %aabf0
	}
	{
	  ct	%ctpr1
	}
.L3052:
	{
	  disp	%ctpr1, .L8535
	  ldw,0	0x0, [ _f64,_lts0 xval ], %r4
	  cmpedb,1,sm	%r16, 0x0, %pred0
	  merges,2	0x1, %r48, %r21, %pred1
	  cmplsb,3,sm	0x1, %r48, %pred1
	  addd,4	0x0, 0x0, %r10
	  merges,5,sm	0x1, %r48, %g16, ~%pred0
	}
	{
	  disp	%ctpr2, .L9252
	  fadds,0,sm	%r7, %r5, %g17
	  cmplsb,1	%r21, _f16s,_lts0lo 0x10, %pred2
	  addd,2,sm	0x0, 0x0, %r15
	  shrs,3,sm	%g16, 0x1, %g18
	}
	{
	  merges,0,sm	0x1, %r17, %g19, %pred1
	  cmplsb,3,sm	0x0, %g18, %pred4
	  pass	%pred2, @p0
	  pass	%pred0, @p1
	  landp	~@p0, @p1, @p4
	  pass	@p4, %pred3
	  landp	~@p0, ~@p1, @p5
	  pass	@p5, %pred0
	  pass	%pred1, @p2
	  landp	@p5, ~@p2, @p6
	  pass	@p6, %pred5
	}
	{
	  shrs,1,sm	%g19, 0x1, %g20
	  pass	%pred0, @p0
	  pass	%pred1, @p1
	  landp	@p0, @p1, @p4
	  pass	@p4, %pred1
	}
	{
	  ct	%ctpr2 ? %pred2
	  insfd,0	%r5, _f32s,_lts0 0xa820, %r5, %r2 ? %pred3
	  insfd,1	%r4, _lit32_ref,_lts0 0xa820, %r4, %r3 ? %pred3
	  merges,2,sm	0x1, %g18, %g21, %pred4
	  adds,3,sm	0x0, %g16, %r14 ? %pred3
	  addd,4,sm	0x0, 0x0, %r12 ? %pred3
	  adds,5	0x0, %g18, %r13 ? %pred3
	}
	{
	  ct	%ctpr1 ? %pred3
	  adds,0	0x0, %g21, %r11 ? %pred3
	  fmuls,1,sm	%g17, %r4, %g16
	  shrs,2,sm	%g21, 0x1, %r6 ? %pred3
	  cmplsb,3,sm	0x0, %g20, %pred2
	  insfd,4	%r5, _f32s,_lts0 0xa820, %r5, %r2 ? %pred1
	  addd,5	0x1, 0x0, %r10 ? %pred0
	}
	{
	  disp	%ctpr2, .L3052
	  insfd,0	%r4, _f32s,_lts0 0xa820, %r4, %r3 ? %pred1
	  adds,1,sm	0x0, %g19, %r14 ? %pred1
	  addd,2,sm	0x1, 0x0, %r12 ? %pred1
	  adds,3	0x0, %g20, %r13 ? %pred1
	}
	{
	  merges,0,sm	0x1, %g20, %g17, %pred2
	}
	{
	  shrs,0	%g17, 0x1, %r6 ? %pred1
	  adds,1	0x0, %g17, %r11 ? %pred1
	}
	{
	  ibranch	.L3077 ? %pred5
	  stw,2	%r47, 0x0, %g16 ? %pred0
	}
.L8535:
	{
	  setwd	wsz = 0x41, nfx = 0x1, dbl = 0x1
	  setbn	rsz = 0xf, rbs = 0x20, rcur = 0x0
	  ldisp	%ctpr2, .L11418
	  cmplsb,0	0x0, %r6, %pred0
	  addd,1	0x0, _f64,_lts1 0x40ff2000000000, %g16
	  shld,3,sm	%r12, 0x2, %g17
	  addd,4,sm	0x0, 0x0, %g19
	}
	{
	  disp	%ctpr1, .L3065
	  aaurw,2	%r9, %aaincr1
	  addd,3,sm	%r19, %g17, %g20
	  addd,4	%r18, %g17, %g21
	  addd,5	%r47, %g17, %g22
	}
	{
	  merges,0	0x1, %r6, %g23, %pred0
	  aaurwd,2	%r20, %aaincr2
	  addd,3,sm	0x0, %g20, %g18
	  aaurwd,5	%r15, %aasti1
	}
	{
	  aaurwd,2	%r15, %aasti2
	  addd,4,sm	%g18, _f16s,_lts0lo 0xd0, %g18
	  aaurwd,5	%g21, %aad1
	}
	{
	  ldd,0,sm	%r19, %g17, %g17
	  aaurwd,2	%g22, %aad2
	  ldd,5,sm	%g20, 0x8, %g21
	}
	{
	  aaurwq,2	%g18, %aad0
	}
	{
	  ldd,0,sm	%g20, _f16s,_lts0lo 0x10, %g18
	  insfd,1	%g16, _f32s,_lts2 0x8800, %g23, %g16
	  ldd,2,sm	%g20, _f16s,_lts0hi 0x18, %g19
	  ldd,3,sm	%g20, _f16s,_lts1lo 0x20, %g22
	  ldd,5,sm	%g20, _f16s,_lts1hi 0x28, %g23
	}
	{
	  rwd,0	%g16, %lsr
	  pfadds,1,sm	%g17, %r2, %g17
	  ldd,2,sm	%g20, _f16s,_lts0lo 0x30, %g24
	  ldd,3,sm	%g20, _f16s,_lts0hi 0x38, %g25
	  pfadds,4,sm	%g21, %r2, %g21
	  ldd,5,sm	%g20, _f16s,_lts1lo 0x40, %g26
	}
	{
	  andd,1	%g16, _f64,_lts2 0xffffffff, %g16
	  ldd,2,sm	%g20, _f16s,_lts0lo 0x48, %g27
	  ldd,3,sm	%g20, _f16s,_lts0hi 0x50, %g28
	  ldd,5,sm	%g20, _f16s,_lts1lo 0x58, %g29
	}
	{
	  pfadds,0,sm	%g19, %r2, %g19
	  pfadds,1,sm	%g18, %r2, %g18
	  ldd,2,sm	%g20, _f16s,_lts0lo 0x60, %g30
	  pfadds,3,sm	%g23, %r2, %g23
	  pfadds,4,sm	%g22, %r2, %g22
	  ldd,5,sm	%g20, _f16s,_lts0hi 0x68, %g31
	}
	{
	  ldd,0,sm	%g20, _f16s,_lts0lo 0x70, %r12
	  pfadds,1,sm	%g24, %r2, %g24
	  ldd,2,sm	%g20, _f16s,_lts0hi 0x78, %r15
	  shld,3	%g16, 0x2, %g16
	  pfadds,4,sm	%g25, %r2, %g25
	  ldd,5,sm	%g20, _f16s,_lts1lo 0x80, %b[11]
	}
	{
	  bap
	  pfadds,0,sm	%g26, %r2, %b[21]
	  pfmuls,1,sm	%g17, %r3, %b[31]
	  ldd,2,sm	%g20, _f16s,_lts0lo 0x88, %b[10]
	  pfmuls,3,sm	%g21, %r3, %b[30]
	  pfadds,4,sm	%g28, %r2, %b[19]
	  ldd,5,sm	%g20, _f16s,_lts0hi 0x90, %b[9]
	}
	{
	  ldd,0,sm	%g20, _f16s,_lts0lo 0x98, %b[8]
	  pfadds,1,sm	%g27, %r2, %b[20]
	  ldd,2,sm	%g20, _f16s,_lts0hi 0xa0, %b[7]
	  ldd,3,sm	%g20, _f16s,_lts1lo 0xa8, %b[6]
	  pfadds,4,sm	%g29, %r2, %b[18]
	  ldd,5,sm	%g20, _f16s,_lts1hi 0xb0, %b[5]
	}
	{
	  pfadds,0,sm	%g30, %r2, %b[17]
	  pfadds,1,sm	%g31, %r2, %b[16]
	  ldd,2,sm	%g20, _f16s,_lts0lo 0xb8, %b[4]
	  pfmuls,3,sm	%g22, %r3, %b[27]
	  pfmuls,4,sm	%g23, %r3, %b[26]
	  ldd,5,sm	%g20, _f16s,_lts0hi 0xc0, %b[3]
	}
	{
	  ldd,0,sm	%g20, _f16s,_lts0lo 0xc8, %b[2]
	  pfmuls,1,sm	%g18, %r3, %b[29]
	  addd,2	%r10, %g16, %r7
	  pfadds,3,sm	%r12, %r2, %b[15]
	  pfadds,4,sm	%r15, %r2, %b[14]
	  pfmuls,5,sm	%g25, %r3, %b[24]
	}
	{
	  nop 7
	  pfmuls,0,sm	%g19, %r3, %b[28]
	  pfmuls,1,sm	%g24, %r3, %b[25]
	}
	{
	  nop 3
	}
.L3065:
	{
	  loop_mode
	  alc	alcf=1, alct=1
	  abn	abnf=1, abnt=1
	  ct	%ctpr1 ? %NOT_LOOP_END
	  pfadds,0,sm	%b[11], %r2, %b[13]
	  pfmuls,1,sm	%b[21], %r3, %b[23]
	  staad,2	%b[31], %aad2[ %aasti2 ]
	  incr,2	%aaincr2
	  pfadds,3,sm	%b[10], %r2, %b[12]
	  pfmuls,4,sm	%b[20], %r3, %b[22]
	  staad,5	%b[30], %aad1[ %aasti1 ]
	  incr,5	%aaincr2
	  movad,0	area=0, ind=0, am=0, be=0, %b[1]
	  movad,1	area=0, ind=8, am=1, be=0, %b[0]
	}
	{
	  setwd	wsz = 0x41, nfx = 0x1, dbl = 0x1
	  setbn	rsz = 0x20, rbs = 0x20, rcur = 0x0
	  eap
	  disp	%ctpr3, .L3077
	  shld,0,sm	%r7, 0x2, %g16
	  shls,1	%r6, 0x1, %g17
	  shls,2	%r13, 0x1, %g18
	  adds,3	0x0, 0x0, %g19
	}
	{
	  disp	%ctpr2, disp=0x0
	  cmpesb,0	%g17, %r11, %pred0
	  cmpesb,1	%g18, %r14, %pred1
	  ldd,2,sm	%r47, %g16, %g20
	}
	{
	  disp	%ctpr2, .L3052
	  aaurw,2	%g19, %aabf0
	}
	{
	  addd,0	%r7, 0x2, %r7 ? ~%pred0
	}
	{
	  nop 3
	  pfadds,0,sm	%g20, %r2, %g17
	  shld,1,sm	%r7, 0x2, %g18
	}
	{
	  nop 3
	  pfmuls,0,sm	%g17, %r3, %g17
	}
	{
	  ct	%ctpr3 ? %pred1
	  std,2	%r47, %g16, %g17 ? ~%pred0
	  ldw,5,sm	%r47, %g18, %g16
	}
	{
	  nop 1
	  disp	%ctpr2, .L3052
	}
	{
	  nop 3
	  fadds,3,sm	%g16, %r5, %g16
	}
	{
	  nop 3
	  fmuls,3,sm	%g16, %r4, %g16
	}
	{
	  stw,5	%r47, %g18, %g16 ? ~%pred1
	}
.L3077:
	{
	  return	%ctpr3
	  cmplsb,0,sm	0x0, %r48, %pred1
	  adds,1	%r49, 0x1, %r49
	  ldw,2,sm	%r47, 0x0, %r7
	  cmplesb,4,sm	%r48, 0x0, %pred0
	  ldw,5,sm	0x0, [ _f64,_lts0 aval ], %r5
	}
	{
	  nop 1
	  cmplsb,0	%r49, %r50, %pred2
	}
	{
	  stw,2	0x0, [ _f64,_lts0 opwd ], %r9 ? ~%pred2
	}
	{
	  ct	%ctpr2 ? %pred2
	}
	{
	  ct	%ctpr3 ? ~%pred2
	}
.L9252:
	{
	  setwd	wsz = 0x41, nfx = 0x1, dbl = 0x1
	  setbn	rsz = 0xa, rbs = 0x20, rcur = 0x0
	  disp	%ctpr1, .L5440
	  addd,0	0x0, _f64,_lts1 0x20ff2000000000, %g16
	}
	{
	  addd,0,sm	0x0, 0x0, %b[6]
	  insfd,1	%g16, _f32s,_lts0 0x8800, %r21, %g16
	  aaurwd,2	%r10, %aasti1
	  aaurwd,5	%r47, %aad0
	}
	{
	  rwd,0	%g16, %lsr
	  addd,1,sm	0x4, %b[6], %g17
	  ldw,2,sm	%r47, %b[6], %g18
	}
	{
	  addd,1,sm	0x4, %g17, %g16
	  ldw,2,sm	%r47, %g17, %g17
	}
	{
	  ldw,0,sm	%r47, %g16, %g16
	  addd,1,sm	0x4, %g16, %g19
	}
	{
	  ldw,0,sm	%r47, %g19, %g19
	  addd,1,sm	0x4, %g19, %g20
	  fadds,2,sm	%g18, %r5, %g18
	}
	{
	  fadds,0,sm	%g17, %r5, %g17
	  addd,1,sm	0x4, %g20, %g21
	  ldw,2,sm	%r47, %g20, %g20
	}
	{
	  fadds,0,sm	%g16, %r5, %g16
	  addd,1,sm	0x4, %g21, %g22
	}
	{
	  fadds,0,sm	%g19, %r5, %g19
	  addd,1,sm	0x4, %g22, %g23
	  ldw,2,sm	%r47, %g21, %g21
	}
	{
	  fmuls,0,sm	%g18, %r4, %g18
	  addd,1,sm	0x4, %g23, %g24
	  ldw,2,sm	%r47, %g22, %g22
	}
	{
	  fadds,0,sm	%g20, %r5, %g20
	  addd,1,sm	0x4, %g24, %g25
	  ldw,2,sm	%r47, %g23, %g23
	}
	{
	  fmuls,0,sm	%g17, %r4, %g17
	  addd,1,sm	0x4, %g25, %g26
	  ldw,2,sm	%r47, %g24, %g24
	}
	{
	  fmuls,0,sm	%g16, %r4, %g16
	  fadds,1,sm	%g21, %r5, %g21
	  ldw,2,sm	%r47, %g25, %g25
	}
	{
	  fmuls,0,sm	%g19, %r4, %g19
	  fadds,1,sm	%g22, %r5, %g22
	  ldw,2,sm	%r47, %g26, %g27
	  addd,3,sm	0x4, %g26, %g26
	}
	{
	  fadds,0,sm	%g24, %r5, %g24
	  fadds,1,sm	%g23, %r5, %g23
	  ldw,3,sm	%r47, %g26, %b[9]
	  addd,4,sm	0x4, %g26, %g28
	}
	{
	  fadds,1,sm	%g25, %r5, %g25
	  adds,2,sm	0x0, %g18, %b[19]
	  ldw,3,sm	%r47, %g28, %b[7]
	  addd,4,sm	0x4, %g28, %g26
	}
	{
	  fadds,1,sm	%g27, %r5, %g18
	  adds,2,sm	0x0, %g20, %b[14]
	  ldw,3,sm	%r47, %g26, %b[5]
	  addd,4,sm	0x4, %g26, %g27
	}
	{
	  adds,0,sm	0x0, %g17, %b[17]
	  ldw,3,sm	%r47, %g27, %b[3]
	  addd,4,sm	%g27, 0x8, %b[18]
	  addd,5,sm	0x4, %g27, %b[20]
	}
	{
	  adds,0,sm	0x0, %g16, %b[15]
	  adds,2,sm	0x0, %g21, %b[12]
	}
	{
	  adds,0,sm	0x0, %g19, %b[13]
	  adds,1,sm	0x0, %g22, %b[10]
	}
	{
	  adds,0,sm	0x0, %g23, %b[8]
	  adds,1,sm	0x0, %g24, %b[6]
	}
	{
	  adds,0,sm	0x0, %g25, %b[4]
	}
	{
	  adds,0,sm	0x0, %g18, %b[2]
	}
.L5440:
	{
	  loop_mode
	  alc	alcf=1, alct=1
	  abn	abnf=1, abnt=1
	  ct	%ctpr1 ? %NOT_LOOP_END
	  ldw,0,sm	%r47, %b[20], %b[1]
	  fmuls,1,sm	%b[14], %r4, %b[11]
	  staaw,2	%b[19], %aad0[ %aasti1 ]
	  incr,2	%aaincr0
	  addd,4,sm	0x4, %b[18], %b[16]
	  fadds,5,sm	%b[9], %r5, %b[0]
	}
	{
	  setwd	wsz = 0x41, nfx = 0x1, dbl = 0x1
	  setbn	rsz = 0x20, rbs = 0x20, rcur = 0x0
	  disp	%ctpr1, .L3077
	}
	{
	  nop 3
	  disp	%ctpr2, .L3052
	  aaurw,2	%r56, %aabf0
	}
	{
	  ct	%ctpr1
	}
.L4080:
	{
	  disp	%ctpr1, .L5828
	  ldw,0	0x0, [ _f64,_lts2 bval ], %r46
	  merges,1	0x1, %r48, %r4, %pred0
	  ldw,2	0x0, [ _f64,_lts0 dval ], %r45
	  fadds,3,sm	%r2, %r37, %g17
	  fadds,4,sm	%r2, %r40, %g16
	  addd,5	0x0, 0x0, %r51
	}
	{
	  disp	%ctpr2, .L9386
	  insfd,0,sm	%r37, _f32s,_lts1 0xa820, %r37, %r22
	  cmplsb,1	%r4, _f16s,_lts0lo 0x10, %pred1
	  ldw,2	0x0, [ _f64,_lts2 eval ], %r44
	  insfd,3,sm	%r40, _lit32_ref,_lts1 0xa820, %r40, %r24
	  cmpedb,4,sm	%r53, 0x0, %pred2
	  adds,5	0x0, 0x0, %r3
	}
	{
	  ldw,0	0x0, [ _f64,_lts0 fval ], %r43
	  cmplsb,1,sm	0x1, %r48, %pred4
	  ldw,2	0x0, [ _f64,_lts2 hval ], %r41
	  addd,5,sm	0x0, 0x0, %r57
	  pass	%pred1, @p0
	  pass	%pred2, @p1
	  landp	~@p0, @p1, @p4
	  pass	@p4, %pred3
	  landp	~@p0, ~@p1, @p5
	  pass	@p5, %pred2
	}
	{
	  ldw,0	0x0, [ _f64,_lts0 gval ], %r42
	  ldw,2	0x0, [ _f64,_lts2 kval ], %r38
	  pass	%pred2, @p0
	  pass	%pred4, @p1
	  landp	@p0, ~@p1, @p4
	  pass	@p4, %pred4
	}
	{
	  ldw,0	0x0, [ _f64,_lts0 jval ], %r39
	  fadds,1,sm	%r2, %r44, %g18
	  ldw,2	0x0, [ _f64,_lts2 mval ], %r35
	  fmuls,3,sm	%g16, %r46, %g16
	  fmuls,4,sm	%g17, %r45, %g17
	  adds,5	0x1, 0x0, %r3 ? %pred2
	}
	{
	  ldw,0	0x0, [ _f64,_lts0 lval ], %r36
	  addd,1	0x1, 0x0, %r51 ? %pred2
	  ldw,2	0x0, [ _f64,_lts2 pval ], %r33
	  cmplsb,3,sm	%r3, %r48, %pred0
	}
	{
	  ldw,0	0x0, [ _f64,_lts0 oval ], %r34
	  fadds,1,sm	%r2, %r42, %g19
	  ldw,2	0x0, [ _f64,_lts2 rval ], %r31
	}
	{
	  ldw,0	0x0, [ _f64,_lts0 qval ], %r32
	  fadds,1,sm	%r2, %r39, %g20
	  ldw,2	0x0, [ _f64,_lts2 tval ], %r29
	}
	{
	  ldw,0	0x0, [ _f64,_lts2 vval ], %r27
	  fmuls,1,sm	%g18, %r43, %g17
	  ldw,2	0x0, [ _f64,_lts0 sval ], %r30
	  fsubs,3,sm	%g16, %g17, %g16
	}
	{
	  ldw,0	0x0, [ _f64,_lts2 yval ], %r25
	  fadds,1,sm	%r2, %r36, %g18
	  ldw,2	0x0, [ _f64,_lts0 uval ], %r28
	}
	{
	  ct	%ctpr1 ? %pred3
	  insfd,0,sm	%r46, _f32s,_lts0 0xa820, %r46, %r23
	  fmuls,1,sm	%g19, %r41, %g19
	  ldw,2	0x0, [ _f64,_lts1 wval ], %r26
	  fadds,3,sm	%r2, %r34, %g21
	}
	{
	  ct	%ctpr2 ? %pred1
	  fmuls,0,sm	%g20, %r38, %g20
	  fadds,1,sm	%r2, %r32, %g22
	  fadds,2,sm	%r2, %r30, %g23
	}
	{
	  disp	%ctpr2, .L4080
	  fadds,0,sm	%r2, %r28, %g24
	}
	{
	  fmuls,0,sm	%g18, %r35, %g18
	  fadds,1,sm	%r2, %r26, %g25
	}
	{
	  fadds,0,sm	%g16, %g17, %g16
	  fmuls,3,sm	%g21, %r33, %g17
	}
	{
	  fmuls,0,sm	%g22, %r31, %g21
	  fmuls,1,sm	%g23, %r29, %g22
	}
	{
	  fmuls,0,sm	%g24, %r27, %g23
	}
	{
	  fmuls,0,sm	%g25, %r25, %g24
	}
	{
	  nop 3
	  fsubs,0,sm	%g16, %g19, %g16
	}
	{
	  nop 3
	  fadds,0,sm	%g16, %g20, %g16
	}
	{
	  nop 3
	  fsubs,0,sm	%g16, %g18, %g16
	}
	{
	  nop 3
	  fadds,0,sm	%g16, %g17, %g16
	}
	{
	  nop 3
	  fsubs,0,sm	%g16, %g21, %g16
	}
	{
	  nop 3
	  fadds,0,sm	%g16, %g22, %g16
	}
	{
	  nop 3
	  fsubs,0,sm	%g16, %g23, %g16
	}
	{
	  nop 3
	  fadds,0,sm	%g16, %g24, %g16
	}
	{
	  ibranch	.L4155 ? %pred4
	  stw,2	%r47, 0x0, %g16 ? %pred2
	}
.L5828:
	{
	  insfd,0	%r29, _f32s,_lts0 0xa820, %r29, %r3
	  insfd,1	%r30, _lit32_ref,_lts0 0xa820, %r30, %r11
	  subs,2,sm	%r48, %r3, %g16
	  insfd,3	%r32, _lit32_ref,_lts0 0xa820, %r32, %r9
	  insfd,4	%r31, _lit32_ref,_lts0 0xa820, %r31, %r10
	  shld,5,sm	%r51, 0x2, %r58
	}
	{
	  insfd,0	%r25, _f32s,_lts0 0xa820, %r25, %r6
	  insfd,1	%r27, _lit32_ref,_lts0 0xa820, %r27, %r5
	  merges,2,sm	0x1, %g16, %r59, %pred0
	  insfd,3	%r35, _lit32_ref,_lts0 0xa820, %r35, %r14
	  insfd,4	%r34, _lit32_ref,_lts0 0xa820, %r34, %r15
	}
	{
	  insfd,0	%r26, _f32s,_lts0 0xa820, %r26, %r2
	  insfd,1	%r28, _lit32_ref,_lts0 0xa820, %r28, %r4
	  shrs,2	%r59, 0x1, %r52
	  insfd,3	%r33, _lit32_ref,_lts0 0xa820, %r33, %r7
	  insfd,4	%r39, _lit32_ref,_lts0 0xa820, %r39, %r18
	}
	{
	  insfd,0	%r38, _f32s,_lts0 0xa820, %r38, %r12
	  insfd,1	%r36, _lit32_ref,_lts0 0xa820, %r36, %r13
	  insfd,3	%r42, _lit32_ref,_lts0 0xa820, %r42, %r16
	  insfd,4	%r41, _lit32_ref,_lts0 0xa820, %r41, %r17
	}
	{
	  insfd,0	%r45, _f32s,_lts0 0xa820, %r45, %r19
	  insfd,1	%r44, _lit32_ref,_lts0 0xa820, %r44, %r20
	  insfd,3	%r43, _lit32_ref,_lts0 0xa820, %r43, %r21
	}
	{
	  setwd	wsz = 0x41, nfx = 0x1, dbl = 0x1
	  setbn	rsz = 0x20, rbs = 0x20, rcur = 0x0
	  ldisp	%ctpr2, .L11467
	  ldd,0,sm	%r55, %r58, %g17
	  addd,1,sm	%r55, %r58, %g16
	  addd,2	0x0, _f64,_lts1 0x20ff2000000000, %g18
	  cmplsb,3	0x0, %r52, %pred0
	  addd,4	%r47, %r58, %g19
	  addd,5,sm	0x0, 0x0, %g21
	}
	{
	  disp	%ctpr1, .L4113
	  ldd,0,sm	%g16, 0x8, %g22
	  addd,1,sm	0x0, %g16, %g20
	  ldd,2,sm	%g16, _f16s,_lts0lo 0x18, %g23
	}
	{
	  disp	%ctpr3, .L4155
	  ldd,0,sm	%g16, _f16s,_lts0lo 0x10, %g24
	  merges,1	0x1, %r52, %g28, %pred0
	  ldd,2,sm	%g16, _f16s,_lts0hi 0x28, %g25
	  ldd,3,sm	%g16, _f16s,_lts1lo 0x20, %g26
	  ldd,5,sm	%g16, _f16s,_lts1hi 0x40, %g27
	}
	{
	  pfadds,0,sm	%g17, %r24, %g30
	  pfadds,1,sm	%g17, %r22, %g29
	  ldd,2,sm	%g16, _f16s,_lts0lo 0x38, %g31
	  ldd,3,sm	%g16, _f16s,_lts0hi 0x30, %r58
	  addd,4,sm	%g20, _f16s,_lts1hi 0xc8, %g20
	  ldd,5,sm	%g16, _f16s,_lts1lo 0x50, %r60
	}
	{
	  pfadds,0,sm	%g22, %r22, %r61
	  pfadds,1,sm	%g22, %r24, %r62
	  pfadds,2,sm	%g23, %r22, %r63
	  pfadds,3,sm	%g17, %r20, %g18
	  pfadds,4,sm	%g17, %r16, %r59
	  stw,5,sm	%r1, _f16s,_lts0lo 0xfff8, %r59
	}
	{
	  pfadds,0,sm	%g24, %r22, %r56
	  pfadds,1,sm	%g22, %r20, %r55
	  stw,2,sm	%r1, _f16s,_lts0lo 0xfff0, %r56
	  pfadds,3,sm	%g23, %r2, %b[33]
	  pfadds,4,sm	%g26, %r4, %b[43]
	  std,5,sm	%r1, _f16s,_lts0hi 0xffe8, %r55
	}
	{
	  pfadds,0,sm	%g23, %r24, %r54
	  pfadds,1,sm	%g24, %r24, %r53
	  stw,2,sm	%r1, _f16s,_lts0lo 0xffe0, %r54
	  pfadds,3,sm	%g24, %r2, %b[35]
	  pfadds,4,sm	%r58, %r11, %b[49]
	  std,5,sm	%r1, _f16s,_lts0hi 0xffd8, %r53
	}
	{
	  pfmuls,0,sm	%g29, %r19, %g29
	  pfadds,1,sm	%g25, %r22, %r52
	  stw,2,sm	%r1, _f16s,_lts0lo 0xffd0, %r52
	  pfadds,3,sm	%g26, %r22, %r50
	  stw,5,sm	%r1, _f16s,_lts0hi 0xffc8, %r50
	}
	{
	  pfmuls,0,sm	%r61, %r19, %r61
	  pfmuls,1,sm	%r63, %r19, %r63
	  stw,2,sm	%r1, _f16s,_lts0lo 0xffc0, %r49
	  pfadds,3,sm	%g22, %r16, %r49
	  pfadds,4,sm	%g23, %r20, %r48
	  stw,5,sm	%r1, _f16s,_lts0hi 0xffb8, %r48
	}
	{
	  pfmuls,0,sm	%r56, %r19, %r56
	  pfadds,1,sm	%g24, %r20, %r47
	  std,2,sm	%r1, _f16s,_lts0lo 0xffb0, %r47
	  pfadds,3,sm	%g25, %r24, %r46
	  addd,4,sm	0x0, %g25, %b[40]
	  std,5,sm	%r1, _f16s,_lts0hi 0xffa8, %r46
	}
	{
	  pfadds,0,sm	%g26, %r24, %r45
	  pfadds,1,sm	%g27, %r22, %r44
	  std,2,sm	%r1, _f16s,_lts0lo 0xffa0, %r45
	  std,5,sm	%r1, _f16s,_lts0hi 0xff98, %r44
	}
	{
	  pfmul_rsubs,0,sm	%g30, %r23, %g29, %g29
	  pfmuls,1,sm	%r52, %r19, %g30
	  pfadds,2,sm	%g31, %r22, %r52
	  pfmuls,3,sm	%r50, %r19, %r50
	  pfadds,4,sm	%r58, %r22, %r43
	  std,5,sm	%r1, _f16s,_lts0lo 0xff90, %r43
	}
	{
	  pfmul_rsubs,0,sm	%r62, %r23, %r61, %r61
	  pfmul_rsubs,1,sm	%r54, %r23, %r63, %r54
	  pfadds,2,sm	%g17, %r18, %r62
	  pfadds,3,sm	%g22, %r18, %r63
	  pfadds,4,sm	%g23, %r16, %r42
	  std,5,sm	%r1, _f16s,_lts0lo 0xff88, %r42
	}
	{
	  pfmul_rsubs,0,sm	%r53, %r23, %r56, %r53
	  pfadds,1,sm	%g24, %r16, %r56
	  std,2,sm	%r1, _f16s,_lts0lo 0xff80, %r41
	  pfadds,3,sm	%g26, %r20, %r40
	  pfadds,4,sm	%g25, %r20, %r41
	  std,5,sm	%r1, _f16s,_lts0hi 0xff78, %r40
	}
	{
	  pfmuls,0,sm	%r44, %r19, %r44
	  pfadds,1,sm	%g27, %r24, %r39
	  std,2,sm	%r1, _f16s,_lts0lo 0xff70, %r39
	  pfadds,4,sm	%g31, %r24, %r38
	  std,5,sm	%r1, _f16s,_lts0hi 0xff68, %r38
	}
	{
	  addd,0,sm	0x0, %g26, %b[42]
	  pfmul_rsubs,1,sm	%r46, %r23, %g30, %g30
	  pfmuls,2,sm	%r52, %r19, %r52
	  pfmuls,3,sm	%r43, %r19, %r43
	  pfadds,4,sm	%r58, %r24, %r46
	  std,5,sm	%r1, _f16s,_lts0lo 0xff60, %r37
	}
	{
	  ldd,2,sm	%g16, _f16s,_lts0lo 0x48, %r37
	  pfmul_rsubs,3,sm	%r45, %r23, %r50, %r45
	  pfadds,4,sm	%r60, %r22, %r50
	  std,5,sm	%r1, _f16s,_lts0hi 0xff58, %r36
	}
	{
	  pfadds,1,sm	%g17, %r13, %r36
	  std,2,sm	%r1, _f16s,_lts0lo 0xff50, %r35
	  pfadds,3,sm	%g22, %r13, %r35
	  pfadds,4,sm	%g23, %r18, %r34
	  std,5,sm	%r1, _f16s,_lts0hi 0xff48, %r34
	}
	{
	  pfmul_rsubs,0,sm	%r39, %r23, %r44, %r39
	  pfadds,1,sm	%g24, %r18, %r44
	  std,2,sm	%r1, _f16s,_lts0lo 0xff40, %r33
	  pfadds,3,sm	%g25, %r16, %r33
	  pfadds,4,sm	%g26, %r16, %r32
	  std,5,sm	%r1, _f16s,_lts0hi 0xff38, %r32
	}
	{
	  pfmul_adds,0,sm	%g18, %r21, %g29, %g18
	  pfadds,2,sm	%r37, %r22, %r43
	  pfmul_rsubs,3,sm	%r46, %r23, %r43, %g29
	  pfadds,4,sm	%g27, %r20, %r46
	  std,5,sm	%r1, _f16s,_lts0lo 0xff30, %r31
	}
	{
	  pfadds,0,sm	%g31, %r20, %r31
	  pfmul_adds,1,sm	%r55, %r21, %r61, %r55
	  pfmul_adds,2,sm	%r48, %r21, %r54, %r48
	  pfadds,4,sm	%r58, %r20, %r54
	  pfadds,5,sm	%r60, %r24, %r61
	}
	{
	  pfadds,0,sm	%r37, %r24, %r52
	  pfmul_adds,1,sm	%r47, %r21, %r53, %r47
	  std,2,sm	%r1, _f16s,_lts0hi 0xff28, %r30
	  pfmuls,3,sm	%r50, %r19, %r50
	  pfmul_rsubs,4,sm	%r38, %r23, %r52, %r38
	  ldd,5,sm	%g16, _f16s,_lts0lo 0x60, %r53
	}
	{
	  pfadds,1,sm	%g17, %r15, %r30
	  std,2,sm	%r1, _f16s,_lts0lo 0xff20, %r29
	  pfadds,3,sm	%g22, %r15, %r28
	  pfadds,4,sm	%r37, %r9, %b[64]
	  std,5,sm	%r1, _f16s,_lts0hi 0xff18, %r28
	}
	{
	  pfmul_adds,0,sm	%r41, %r21, %g30, %g30
	  pfmuls,1,sm	%r43, %r19, %r41
	  ldd,2,sm	%g16, _f16s,_lts0lo 0x58, %r29
	  pfadds,4,sm	%g23, %r13, %r43
	  std,5,sm	%r1, _f16s,_lts0hi 0xff10, %r27
	}
	{
	  pfadds,0,sm	%g24, %r13, %r27
	  std,2,sm	%r1, _f16s,_lts0lo 0xff08, %r26
	  pfmul_adds,3,sm	%r40, %r21, %r45, %r40
	  pfadds,4,sm	%r53, %r22, %r45
	  pfadds,5,sm	%g25, %r18, %r26
	}
	{
	  pfadds,0,sm	%g26, %r18, %r61
	  std,2,sm	%r1, _f16s,_lts0lo 0xff00, %r25
	  pfmul_rsubs,3,sm	%r61, %r23, %r50, %r50
	  pfadds,5,sm	%g27, %r16, %r25
	}
	{
	  pfmul_adds,0,sm	%r46, %r21, %r39, %r39
	  pfadds,1,sm	%r29, %r22, %r46
	  addd,2,sm	%r1, _f16s,_lts0lo 0xfef0, %r8
	}
	{
	  pfadds,1,sm	%g31, %r16, %g21
	  std,2,sm	%r8, 0x0, %g20
	  pfadds,3,sm	%r58, %r16, %g20
	  pfadds,4,sm	%r29, %r15, %b[45]
	  std,5,sm	%r8, 0x8, %g21
	}
	{
	  pfmul_subs,0,sm	%r59, %r17, %g18, %g18
	  pfmul_subs,1,sm	%r49, %r17, %r55, %r49
	  pfmul_subs,2,sm	%r42, %r17, %r48, %r42
	  pfmul_adds,3,sm	%r54, %r21, %g29, %g29
	  pfadds,4,sm	%r60, %r20, %r48
	  pfadds,5,sm	%r37, %r20, %r54
	}
	{
	  pfmul_subs,0,sm	%r56, %r17, %r47, %r47
	  pfmul_rsubs,1,sm	%r52, %r23, %r41, %r41
	  pfadds,2,sm	%r53, %r24, %r38
	  pfmul_adds,4,sm	%r31, %r21, %r38, %r31
	  pfmuls,5,sm	%r45, %r19, %r45
	}
	{
	  ldd,0,sm	%g16, _f16s,_lts0lo 0x70, %r55
	  pfadds,1,sm	%r29, %r24, %r52
	  pfmuls,2,sm	%r46, %r19, %r46
	  pfadds,3,sm	%g17, %r9, %r56
	  pfadds,4,sm	%g22, %r9, %r59
	}
	{
	  ldd,0,sm	%g16, _f16s,_lts0lo 0x68, %r33
	  pfmul_subs,1,sm	%r33, %r17, %g30, %g30
	  std,2,sm	%r1, _f16s,_lts0hi 0xfee8, %g19
	  pfadds,3,sm	%g23, %r15, %g19
	  addd,4,sm	0x0, %g27, %b[34]
	}
	{
	  std,2,sm	%r1, _f16s,_lts0lo 0xfee0, %g28
	  pfmul_subs,3,sm	%r32, %r17, %r40, %r32
	  pfadds,4,sm	%g24, %r15, %r40
	  pfadds,5,sm	%g25, %r13, %g28
	}
	{
	  addd,0,sm	0x0, %g31, %b[36]
	  addd,1,sm	0x0, %r58, %b[38]
	  pfadds,2,sm	%r55, %r22, %r50
	  pfmul_adds,3,sm	%r48, %r21, %r50, %r48
	  addd,4,sm	0x0, %r60, %b[30]
	  std,5,sm	%r1, _f16s,_lts0lo 0xfed8, %g25
	}
	{
	  pfadds,0,sm	%g26, %r13, %g25
	  pfmul_subs,1,sm	%r25, %r17, %r39, %r25
	  pfmul_rsubs,2,sm	%r52, %r23, %r46, %r39
	  pfadds,3,sm	%g27, %r18, %r46
	  pfadds,4,sm	%g31, %r18, %r52
	  std,5,sm	%r1, _f16s,_lts0lo 0xfec8, %g31
	}
	{
	  pfadds,0,sm	%r33, %r22, %g27
	  pfmul_rsubs,1,sm	%r38, %r23, %r45, %r38
	  std,2,sm	%r1, _f16s,_lts0lo 0xfec0, %g27
	  pfadds,3,sm	%r58, %r18, %g31
	  pfadds,4,sm	%r60, %r16, %r45
	  std,5,sm	%r1, _f16s,_lts0hi 0xfeb8, %r60
	}
	{
	  pfadds,0,sm	%r37, %r16, %r60
	  pfmul_adds,1,sm	%r62, %r12, %g18, %g18
	  pfmul_adds,2,sm	%r63, %r12, %r49, %r49
	  pfmul_subs,3,sm	%g20, %r17, %g29, %g20
	  pfadds,4,sm	%r53, %r20, %g29
	  pfadds,5,sm	%r29, %r20, %r62
	}
	{
	  pfmul_adds,0,sm	%r34, %r12, %r42, %r34
	  pfmul_adds,1,sm	%r44, %r12, %r47, %r42
	  pfmul_adds,2,sm	%r54, %r21, %r41, %r41
	  pfmul_subs,4,sm	%g21, %r17, %r31, %g21
	  pfadds,5,sm	%r55, %r24, %r31
	}
	{
	  pfmuls,0,sm	%r50, %r19, %r44
	  addd,1	0x0, _f64,_lts1 0x20ff2000000000, %r54
	  ldd,2,sm	%g16, _f16s,_lts0lo 0x80, %r50
	  pfadds,3,sm	%r33, %r13, %b[62]
	  pfadds,4,sm	%r33, %r24, %r47
	  ldd,5	%r1, _f16s,_lts0hi 0xfee0, %r63, mas=0x4
	}
	{
	  pfmuls,0,sm	%g27, %r19, %g27
	  pfmul_adds,1,sm	%r26, %r12, %g30, %g30
	  ldd,2,sm	%g16, _f16s,_lts0lo 0x78, %r26
	  pfadds,3,sm	%g17, %r11, %g16
	  addd,4,sm	0x0, %r37, %b[32]
	  std,5,sm	%r1, _f16s,_lts0hi 0xfea8, %g16
	}
	{
	  pfadds,0,sm	%g22, %r11, %r61
	  std,2,sm	%r1, _f16s,_lts0lo 0xfe98, %g22
	  pfmul_adds,3,sm	%r61, %r12, %r32, %r32
	  pfadds,4,sm	%g23, %r9, %g22
	  std,5,sm	%r1, _f16s,_lts0hi 0xfe90, %g23
	}
	{
	  ldd,0	%r1, _f16s,_lts0lo 0xfea8, %r48, mas=0x4
	  aaurwd,2	%r57, %aasti1
	  pfadds,3,sm	%g24, %r9, %g23
	  insfd,4	%r54, _f32s,_lts1 0x8800, %r63, %r54
	  pfmul_subs,5,sm	%r45, %r17, %r48, %r45
	}
	{
	  pfadds,0,sm	%r50, %r22, %r57
	  pfmul_adds,1,sm	%r46, %r12, %r25, %r25
	  pfmul_adds,2,sm	%r62, %r21, %r39, %r39
	  ldd,3	%r1, _f16s,_lts0lo 0xfed8, %r46, mas=0x4
	  pfadds,4,sm	%g26, %r15, %r62
	  pfadds,5,sm	%r58, %r13, %r63
	}
	{
	  pfadds,0,sm	%r26, %r22, %r58
	  pfmul_adds,1,sm	%g29, %r21, %r38, %g29
	  std,2,sm	%r1, _f16s,_lts0lo 0xfeb0, %r58
	  pfadds,3,sm	%r37, %r18, %r38
	  pfadds,4,sm	%r53, %r16, %r37
	  std,5,sm	%r1, _f16s,_lts0hi 0xfe88, %r37
	}
	{
	  pfmul_subs,0,sm	%r36, %r14, %g18, %g18
	  pfmul_subs,1,sm	%r35, %r14, %r49, %r35
	  std,2,sm	%r1, _f16s,_lts0lo 0xfe80, %r53
	  pfmul_rsubs,3,sm	%r31, %r23, %r44, %r31
	  pfmul_adds,4,sm	%g31, %r12, %g20, %g20
	  pfadds,5,sm	%r29, %r16, %g31
	}
	{
	  pfmul_subs,0,sm	%r43, %r14, %r34, %r34
	  pfmul_subs,1,sm	%r27, %r14, %r42, %r27
	  ldd,2,sm	%r48, _f16s,_lts0lo 0x98, %r53
	  pfadds,3,sm	%r46, %r15, %r44
	  pfmul_rsubs,4,sm	%r47, %r23, %g27, %g27
	  ldd,5,sm	%r48, _f16s,_lts0hi 0x90, %r36
	}
	{
	  ldd,0,sm	%r48, _f16s,_lts0lo 0x88, %r42
	  pfmul_subs,1,sm	%r60, %r17, %r41, %r41
	  ldd,2	%r1, _f16s,_lts0hi 0xfec0, %r43, mas=0x4
	  pfmul_adds,3,sm	%r52, %r12, %g21, %g21
	  pfadds,4,sm	%r55, %r20, %r49
	  ldd,5	%r1, _f16s,_lts1lo 0xfeb8, %r47, mas=0x4
	}
	{
	  pfmul_subs,0,sm	%g28, %r14, %g30, %g28
	  addd,1,sm	0x0, %r29, %b[28]
	  pfmuls,2,sm	%r57, %r19, %r57
	  pfadds,3,sm	%r33, %r20, %g30
	  pfadds,4,sm	%r50, %r24, %r52
	  pfadds,5,sm	%r26, %r24, %r60
	}
	{
	  rwd,0	%r54, %lsr
	  pfmuls,2,sm	%r58, %r19, %r32
	  pfmul_subs,3,sm	%g25, %r14, %r32, %g25
	  pfadds,5,sm	%r36, %r22, %r58
	}
	{
	  std,2,sm	%r1, _f16s,_lts0lo 0xfe70, %r54
	  pfadds,3,sm	%r47, %r18, %r55
	  std,5,sm	%r1, _f16s,_lts0hi 0xfe78, %r55
	}
	{
	  pfadds,0,sm	%r43, %r13, %r54
	  std,2,sm	%r1, _f16s,_lts0lo 0xfe68, %r50
	}
	{
	  ldd,0	%r1, _f16s,_lts0lo 0xfec8, %r50, mas=0x4
	  std,2,sm	%r1, _f16s,_lts0hi 0xfe60, %r36
	}
	{
	  ldd,0	%r1, _f16s,_lts0lo 0xfee8, %r36, mas=0x4
	  pfadds,1,sm	%r53, %r22, %r58
	  std,2,sm	%r1, _f16s,_lts0hi 0xfe58, %r58
	  pfmul_subs,3,sm	%g31, %r17, %r39, %g31
	  pfadds,4,sm	%g17, %r4, %r39
	  pfadds,5,sm	%g17, %r2, %g17
	}
	{
	  pfmul_adds,0,sm	%r30, %r7, %g18, %g18
	  pfmul_adds,1,sm	%r28, %r7, %r35, %r28
	  pfmul_adds,2,sm	%g19, %r7, %r34, %g19
	  pfadds,3,sm	%r42, %r22, %r30
	  pfmul_subs,4,sm	%r37, %r17, %g29, %g29
	  pfmul_subs,5,sm	%r63, %r14, %g20, %g20
	}
	{
	  pfadds,0,sm	%r50, %r13, %r34
	  pfmul_adds,1,sm	%r40, %r7, %r27, %r27
	  std,2,sm	%r1, _f16s,_lts0lo 0xfe48, %r62
	}
	{
	  ldd,0	%r1, _f16s,_lts0lo 0xfef0, %r62, mas=0x4
	  pfmul_adds,1,sm	%r49, %r21, %r31, %r31
	  pfmul_adds,2,sm	%g30, %r21, %g27, %g27
	  ldd,3	%r1, _f16s,_lts0hi 0xfef8, %r63, mas=0x4
	  pfmul_rsubs,4,sm	%r52, %r23, %r57, %g30
	  pfmul_rsubs,5,sm	%r60, %r23, %r32, %r32
	}
	{
	  pfmul_adds,0,sm	%r55, %r12, %r45, %r35
	  pfmul_adds,1,sm	%r38, %r12, %r41, %r36
	  aaurwd,2	%r36, %aad1
	  pfmul_subs,3,sm	%r54, %r14, %r25, %r25
	  pfadds,4,sm	%g24, %r11, %r38
	  ldd,5	%r1, _f16s,_lts0lo 0xfe48, %r37, mas=0x4
	}
	{
	  pfmul_adds,0,sm	%r44, %r7, %g28, %g28
	  addd,1,sm	0x0, %r33, %b[24]
	  ldd,2,sm	%r48, _f16s,_lts0lo 0xa8, %r41
	  pfadds,3,sm	%r46, %r9, %r40
	  addd,4,sm	0x0, %r26, %b[20]
	  ldd,5,sm	%r48, _f16s,_lts0hi 0xa0, %r44
	}
	{
	  pfmul_subs,0,sm	%r34, %r14, %g21, %g21
	  addd,1,sm	0x0, %r53, %b[12]
	  aaurwq,2	%r62, %aad0
	  pfadds,3,sm	%g26, %r9, %r34
	  pfadds,4,sm	%r43, %r15, %r45
	}
	{
	  bap
	  ldd,0	%r1, _f16s,_lts0lo 0xfe98, %r37, mas=0x4
	  pfmul_adds,3,sm	%r37, %r7, %g25, %g25
	}
	{
	  ldd,0	%r1, _f16s,_lts0lo 0xfe90, %r49, mas=0x4
	  pfadds,2,sm	%r50, %r15, %r52
	  pfadds,4,sm	%r47, %r13, %r54
	  pfadds,5,sm	%r29, %r18, %r55
	}
	{
	  pfmul_subs,0,sm	%r56, %r10, %g18, %g18
	  pfmul_subs,1,sm	%r59, %r10, %r28, %r28
	  pfmul_subs,2,sm	%g22, %r10, %g19, %g19
	  ldd,3,sm	%r48, _f16s,_lts0lo 0xb0, %r56
	  pfadds,4,sm	%r33, %r16, %g22
	  pfadds,5,sm	%r26, %r20, %r57
	}
	{
	  pfmul_subs,0,sm	%g23, %r10, %r27, %g23
	  pfadds,1,sm	%r37, %r4, %r59
	  ldd,2	%r1, _f16s,_lts0lo 0xfeb0, %r27, mas=0x4
	  pfadds,3,sm	%r53, %r24, %r60
	  pfmuls,4,sm	%r58, %r19, %r58
	  pfadds,5,sm	%r42, %r24, %r62
	}
	{
	  pfadds,0,sm	%r49, %r11, %r63
	  std,2,sm	%r1, _f16s,_lts0lo 0xfe40, %g17
	}
	{
	  ldd,0	%r1, _f16s,_lts0lo 0xfe88, %g17, mas=0x4
	  pfmuls,1,sm	%r30, %r19, %r30
	  pfadds,2,sm	%r37, %r2, %r37
	  pfadds,3,sm	%r49, %r4, %r49
	  pfadds,4,sm	%g24, %r4, %g24
	  pfadds,5,sm	%r46, %r11, %r46
	}
	{
	  pfmul_subs,0,sm	%r40, %r10, %g28, %g28
	  addd,1,sm	0x0, %r42, %b[16]
	  std,2,sm	%r1, _f16s,_lts0lo 0xfe30, %r4
	  pfadds,3,sm	%r41, %r22, %r4
	  pfadds,4,sm	%r44, %r22, %r2
	  std,5,sm	%r1, _f16s,_lts0hi 0xfe38, %r2
	}
	{
	  pfadds,1,sm	%r27, %r15, %r40
	  std,2,sm	%r1, _f16s,_lts0lo 0xfe28, %r56
	}
	{
	  ldd,0	%r1, _f16s,_lts0lo 0xfe80, %r56, mas=0x4
	  pfmul_adds,1,sm	%r45, %r7, %r25, %r25
	  pfmul_adds,2,sm	%r55, %r12, %g31, %g31
	  pfmul_subs,3,sm	%g22, %r17, %g27, %g22
	  pfmul_adds,4,sm	%r57, %r21, %r32, %g27
	  pfmul_subs,5,sm	%r54, %r14, %r35, %r32
	}
	{
	  pfadds,0,sm	%g17, %r13, %r35
	  pfmul_adds,1,sm	%r52, %r7, %g21, %g21
	  ldd,2	%r1, _f16s,_lts0lo 0xfe78, %r45, mas=0x4
	  pfmul_rsubs,3,sm	%r60, %r23, %r58, %r52
	  pfmul_subs,4,sm	%r34, %r10, %g25, %g25
	  pfadds,5,sm	%g26, %r11, %g26
	}
	{
	  pfmul_adds,0,sm	%r61, %r3, %r28, %r28
	  pfmul_adds,1,sm	%g16, %r3, %g18, %g16
	  pfmul_rsubs,2,sm	%r62, %r23, %r30, %g18
	  pfadds,3,sm	%r43, %r9, %r30
	  pfadds,4,sm	%r50, %r9, %r34
	  pfadds,5,sm	%r27, %r9, %r27
	}
	{
	  pfadds,0,sm	%r56, %r18, %r43
	  pfadds,1,sm	%r47, %r15, %r47
	  ldd,2	%r1, _f16s,_lts0lo 0xfe68, %r50, mas=0x4
	  pfadds,3,sm	%g17, %r15, %g17
	  pfadds,4,sm	%r29, %r13, %r29
	  pfadds,5,sm	%r33, %r18, %r33
	}
	{
	  pfadds,0,sm	%r45, %r16, %r54
	  pfmul_adds,1,sm	%r63, %r3, %g19, %g19
	  pfmul_adds,2,sm	%r38, %r3, %g23, %g23
	}
	{
	  ldd,0	%r1, _f16s,_lts0lo 0xfe60, %r38, mas=0x4
	  pfmul_adds,1,sm	%r40, %r7, %g20, %g20
	  pfadds,2,sm	%r56, %r13, %r55
	  pfadds,5,sm	%r45, %r18, %r40
	}
	{
	  pfmul_subs,0,sm	%r35, %r14, %r36, %r35
	  pfmul_adds,1,sm	%r46, %r3, %g28, %b[19]
	  pfadds,3,sm	%r26, %r16, %r36
	  pfadds,4,sm	%r53, %r20, %r53
	  pfadds,5,sm	%r42, %r20, %r57
	}
	{
	  ldd,0	%r1, _f16s,_lts0lo 0xfe58, %r46, mas=0x4
	  pfadds,1,sm	%r50, %r20, %g28
	  pfadds,2,sm	%r50, %r16, %r58
	  pfadds,3,sm	%r41, %r24, %r60
	  pfmuls,4,sm	%r4, %r19, %r4
	  pfadds,5,sm	%r44, %r24, %r61
	}
	{
	  pfadds,0,sm	%r38, %r20, %r62
	  pfmul_adds,1,sm	%r43, %r12, %g29, %g29
	  pfmul_subs,2,sm	%r54, %r17, %r31, %r31
	  pfmuls,3,sm	%r2, %r19, %r2
	  pfadds,4,sm	%r26, %r18, %b[48]
	  pfadds,5,sm	%r42, %r16, %b[63]
	}
	{
	  ldd,0,sm	%r48, _f16s,_lts0lo 0xb8, %r26
	  pfmul_subs,1,sm	%r30, %r10, %r25, %b[53]
	  pfadds,2,sm	%r38, %r24, %r42
	  ldd,3	%r1, _f16s,_lts0hi 0xfe28, %r43, mas=0x4
	  pfadds,4,sm	%r38, %r16, %b[61]
	  pfadds,5,sm	%r44, %r20, %b[44]
	}
	{
	  pfmul_subs,0,sm	%r59, %r5, %r28, %r28
	  pfmul_subs,1,sm	%r39, %r5, %g16, %g16
	  pfmuls,2,sm	%r46, %r19, %r25
	  pfmul_adds,3,sm	%r33, %r12, %g22, %b[5]
	  pfmul_adds,4,sm	%g26, %r3, %g25, %b[21]
	  pfmul_adds,5,sm	%r47, %r7, %r32, %b[56]
	}
	{
	  ldd,0,sm	%r48, _f16s,_lts0lo 0xc0, %b[2]
	  pfmul_adds,1,sm	%g28, %r21, %g30, %g22
	  ldd,2	%r1, _f16s,_lts0hi 0xfe70, %g25, mas=0x4
	  addd,3,sm	0x0, %r56, %b[26]
	  pfmul_subs,4,sm	%r34, %r10, %g21, %b[55]
	  pfmul_subs,5,sm	%r29, %r14, %g31, %b[39]
	}
	{
	  pfmul_subs,0,sm	%r36, %r17, %g27, %b[31]
	  pfmul_adds,1,sm	%r53, %r21, %r52, %b[7]
	  pfmul_subs,2,sm	%r49, %r5, %g19, %b[50]
	  addd,3,sm	0x0, %r45, %b[22]
	  addd,4,sm	0x0, %r50, %b[18]
	  addd,5,sm	0x0, %r38, %b[14]
	}
	{
	  pfadds,0,sm	%r43, %r22, %g19
	  addd,1,sm	0x0, %r41, %b[8]
	  pfadds,2,sm	%r43, %r24, %b[59]
	  addd,3,sm	0x0, %r44, %b[10]
	  addd,4,sm	0x0, %r43, %b[6]
	  pfmul_rsubs,5,sm	%r60, %r23, %r4, %b[23]
	}
	{
	  andd,0	%g25, _f64,_lts0 0xffffffff, %g21
	  pfmul_rsubs,1,sm	%r42, %r23, %r25, %g25
	  pfmul_subs,2,sm	%g24, %r5, %g23, %b[52]
	  pfmul_adds,3,sm	%r57, %r21, %g18, %b[11]
	  pfmul_rsubs,4,sm	%r61, %r23, %r2, %b[25]
	  addd,5,sm	0x0, %r26, %b[4]
	}
	{
	  pfadds,0,sm	%r26, %r22, %b[51]
	  pfmul_subs,1,sm	%r27, %r10, %g20, %b[57]
	  pfmul_adds,2,sm	%g17, %r7, %r35, %b[58]
	}
	{
	  pfmul_subs,0,sm	%r55, %r14, %g29, %b[37]
	  pfmul_adds,1,sm	%r40, %r12, %r31, %b[3]
	  shld,2	%g21, 0x1, %g17
	}
	{
	  pfmuls,0,sm	%g19, %r19, %b[54]
	  addd,2	%r51, %g17, %r51
	}
	{
	  pfmul_adds,0,sm	%r37, %r6, %r28, %b[13]
	  ldd,2	%r1, _f16s,_lts0lo 0xfe40, %g17, mas=0x4
	}
	{
	  nop 1
	  pfmul_subs,0,sm	%r58, %r17, %g22, %b[29]
	}
	{
	  pfmul_adds,0,sm	%g17, %r6, %g16, %b[15]
	}
	{
	  nop 4
	  pfmul_adds,0,sm	%r62, %r21, %g25, %b[9]
	}
	{
	  ldd,0	%r1, _f16s,_lts0lo 0xfe38, %r2, mas=0x4
	  ldd,2	%r1, _f16s,_lts0hi 0xfe30, %r4, mas=0x4
	  ldd,3	%r1, _f16s,_lts1lo 0xff00, %r25, mas=0x4
	  ldd,5	%r1, _f16s,_lts1hi 0xff08, %r26, mas=0x4
	}
	{
	  ldd,0	%r1, _f16s,_lts0lo 0xff10, %r27, mas=0x4
	  ldd,2	%r1, _f16s,_lts0hi 0xff18, %r28, mas=0x4
	  ldd,3	%r1, _f16s,_lts1lo 0xff20, %r29, mas=0x4
	  ldd,5	%r1, _f16s,_lts1hi 0xff28, %r30, mas=0x4
	}
	{
	  ldd,0	%r1, _f16s,_lts0lo 0xff30, %r31, mas=0x4
	  ldd,2	%r1, _f16s,_lts0hi 0xff38, %r32, mas=0x4
	  ldd,3	%r1, _f16s,_lts1lo 0xff40, %r33, mas=0x4
	  ldd,5	%r1, _f16s,_lts1hi 0xff48, %r34, mas=0x4
	}
	{
	  ldd,0	%r1, _f16s,_lts0lo 0xff50, %r35, mas=0x4
	  ldd,2	%r1, _f16s,_lts0hi 0xff58, %r36, mas=0x4
	  ldd,3	%r1, _f16s,_lts1lo 0xff60, %r37, mas=0x4
	  ldd,5	%r1, _f16s,_lts1hi 0xff68, %r38, mas=0x4
	}
	{
	  ldd,0	%r1, _f16s,_lts0lo 0xff70, %r39, mas=0x4
	  ldd,2	%r1, _f16s,_lts0hi 0xff78, %r40, mas=0x4
	  ldd,3	%r1, _f16s,_lts1lo 0xff80, %r41, mas=0x4
	  ldd,5	%r1, _f16s,_lts1hi 0xff88, %r42, mas=0x4
	}
	{
	  ldd,0	%r1, _f16s,_lts0lo 0xff90, %r43, mas=0x4
	  ldd,2	%r1, _f16s,_lts0hi 0xff98, %r44, mas=0x4
	  ldd,3	%r1, _f16s,_lts1lo 0xffa0, %r45, mas=0x4
	  ldd,5	%r1, _f16s,_lts1hi 0xffa8, %r46, mas=0x4
	}
	{
	  ldd,0	%r1, _f16s,_lts0lo 0xffb0, %r47, mas=0x4
	  ldw,2	%r1, _f16s,_lts0hi 0xffb8, %r48, mas=0x4
	  ldw,3	%r1, _f16s,_lts1lo 0xffc0, %r49, mas=0x4
	  ldw,5	%r1, _f16s,_lts1hi 0xffc8, %r50, mas=0x4
	}
	{
	  ldw,0	%r1, _f16s,_lts0lo 0xffd0, %r52, mas=0x4
	  ldd,2	%r1, _f16s,_lts0hi 0xffd8, %r53, mas=0x4
	  ldw,3	%r1, _f16s,_lts1lo 0xffe0, %r54, mas=0x4
	  ldd,5	%r1, _f16s,_lts1hi 0xffe8, %r55, mas=0x4
	}
	{
	  ldw,0	%r1, _f16s,_lts0lo 0xfff0, %r56, mas=0x4
	  ldw,2	%r1, _f16s,_lts0hi 0xfff8, %r59, mas=0x4
	}
.L4113:
	{
	  loop_mode
	  pfmul_subs,0,sm	%b[63], %r17, %b[11], %b[27]
	  pfadds,1,sm	%b[18], %r18, %b[46]
	  pfmul_adds,2,sm	%b[48], %r12, %b[31], %b[1]
	  pfadds,3,sm	%b[36], %r11, %b[47]
	  pfmul_adds,4,sm	%b[49], %r3, %b[57], %b[17]
	  pfadds,5,sm	%b[40], %r4, %b[41]
	  movad,1	area=0, ind=0, am=1, be=0, %b[0]
	}
	{
	  loop_mode
	  pfadds,1,sm	%b[2], %r22, %b[49]
	  pfadds,2,sm	%b[4], %r24, %b[57]
	  pfmul_subs,3,sm	%b[43], %r5, %b[21], %b[48]
	  pfadds,4,sm	%b[42], %r2, %b[31]
	  pfmul_adds,5,sm	%b[35], %r6, %b[52], %b[11]
	}
	{
	  loop_mode
	  pfmuls,0,sm	%b[51], %r19, %b[52]
	  pfmul_rsubs,1,sm	%b[59], %r23, %b[54], %b[21]
	  pfadds,2,sm	%b[8], %r20, %b[42]
	  pfadds,3,sm	%b[22], %r13, %b[60]
	  pfmul_subs,4,sm	%b[62], %r14, %b[5], %b[35]
	  pfadds,5,sm	%b[26], %r15, %b[43]
	}
	{
	  loop_mode
	  alc	alcf=1, alct=1
	  abn	abnf=1, abnt=1
	  ct	%ctpr1 ? %NOT_LOOP_END
	  pfmul_adds,0,sm	%b[44], %r21, %b[25], %b[5]
	  pfadds,1,sm	%b[12], %r16, %b[59]
	  staad,2	%b[15], %aad1[ %aasti1 ]
	  incr,2	%aaincr0
	  pfmul_adds,3,sm	%b[45], %r7, %b[39], %b[54]
	  pfadds,4,sm	%b[30], %r9, %b[62]
	  pfmul_subs,5,sm	%b[64], %r10, %b[58], %b[51]
	}
	{
	  setwd	wsz = 0x41, nfx = 0x1, dbl = 0x1
	  setbn	rsz = 0x20, rbs = 0x20, rcur = 0x0
	  eap
	  shls,0	%r52, 0x1, %g16
	  shld,1,sm	%r51, 0x2, %g17
	  adds,2	0x0, 0x0, %g18
	}
	{
	  disp	%ctpr2, disp=0x0
	  ldw,0,sm	%r47, %g17, %g16
	  cmpesb,1	%g16, %r59, %pred0
	  aaurw,2	%g18, %aabf0
	}
	{
	  nop 1
	  disp	%ctpr2, .L4080
	}
	{
	  ct	%ctpr3 ? %pred0
	  fadds,0,sm	%g16, %r37, %g18
	  fadds,1,sm	%g16, %r40, %g19
	  fadds,2,sm	%g16, %r44, %g20
	}
	{
	  disp	%ctpr2, .L4080
	  fadds,0,sm	%g16, %r42, %g21
	  fadds,1,sm	%g16, %r39, %g22
	  fadds,2,sm	%g16, %r36, %g23
	  fadds,3,sm	%g16, %r34, %g24
	  fadds,4,sm	%g16, %r32, %g25
	  fadds,5,sm	%g16, %r30, %g26
	}
	{
	  nop 1
	  fadds,0,sm	%g16, %r28, %g27
	  fadds,1,sm	%g16, %r26, %g16
	}
	{
	  fmuls,0,sm	%g18, %r45, %g18
	  fmuls,1,sm	%g19, %r46, %g19
	  fmuls,2,sm	%g20, %r43, %g20
	}
	{
	  fmuls,0,sm	%g21, %r41, %g21
	  fmuls,1,sm	%g22, %r38, %g22
	  fmuls,2,sm	%g23, %r35, %g23
	  fmuls,3,sm	%g24, %r33, %g24
	  fmuls,4,sm	%g25, %r31, %g25
	  fmuls,5,sm	%g26, %r29, %g26
	}
	{
	  nop 1
	  fmuls,0,sm	%g27, %r27, %g27
	  fmuls,1,sm	%g16, %r25, %g16
	}
	{
	  nop 3
	  fsubs,0,sm	%g19, %g18, %g18
	}
	{
	  nop 3
	  fadds,0,sm	%g18, %g20, %g18
	}
	{
	  nop 3
	  fsubs,0,sm	%g18, %g21, %g18
	}
	{
	  nop 3
	  fadds,0,sm	%g18, %g22, %g18
	}
	{
	  nop 3
	  fsubs,0,sm	%g18, %g23, %g18
	}
	{
	  nop 3
	  fadds,0,sm	%g18, %g24, %g18
	}
	{
	  nop 3
	  fsubs,0,sm	%g18, %g25, %g18
	}
	{
	  nop 3
	  fadds,0,sm	%g18, %g26, %g18
	}
	{
	  nop 3
	  fsubs,0,sm	%g18, %g27, %g18
	}
	{
	  nop 3
	  fadds,0,sm	%g18, %g16, %g16
	}
	{
	  stw,2	%r47, %g17, %g16 ? ~%pred0
	}
.L4155:
	{
	  return	%ctpr3
	  ldw,0,sm	0x0, [ _f64,_lts2 cval ], %r37
	  adds,1	%r49, 0x1, %r49
	  ldw,2,sm	%r47, 0x0, %r2
	  cmplsb,3,sm	0x0, %r48, %pred0
	  ldw,5,sm	0x0, [ _f64,_lts0 aval ], %r40
	}
	{
	  nop 1
	  cmplsb,0	%r49, %r50, %pred1
	}
	{
	  stw,2	0x0, [ _f64,_lts0 opwd ], %r54 ? ~%pred1
	}
	{
	  ct	%ctpr2 ? %pred1
	}
	{
	  ct	%ctpr3 ? ~%pred1
	}
.L9386:
	{
	  setwd	wsz = 0x41, nfx = 0x1, dbl = 0x1
	  setbn	rsz = 0x1d, rbs = 0x20, rcur = 0x0
	  disp	%ctpr1, .L5728
	  addd,0	0x0, _f64,_lts1 0x20ff2000000000, %g16
	}
	{
	  addd,0,sm	0x0, 0x0, %b[43]
	  insfd,1	%g16, _f32s,_lts0 0x8800, %r4, %g16
	  aaurwd,2	%r51, %aasti1
	  aaurwd,5	%r47, %aad0
	}
	{
	  rwd,0	%g16, %lsr
	  addd,1,sm	0x4, %b[43], %g17
	  ldw,2,sm	%r47, %b[43], %g18
	}
	{
	  addd,1,sm	0x4, %g17, %g17
	  ldw,2,sm	%r47, %g17, %g16
	}
	{
	  ldw,0,sm	%r47, %g17, %g19
	  addd,1,sm	0x4, %g17, %g17
	}
	{
	  fadds,0,sm	%g18, %r40, %g21
	  fadds,1,sm	%g18, %r37, %g20
	  fadds,2,sm	%g18, %r44, %g22
	}
	{
	  fadds,0,sm	%g16, %r40, %g24
	  fadds,1,sm	%g16, %r37, %g23
	  fadds,2,sm	%g16, %r44, %g26
	  ldw,3,sm	%r47, %g17, %g17
	  addd,4,sm	0x4, %g17, %g25
	  fadds,5,sm	%g18, %r42, %g27
	}
	{
	  fadds,0,sm	%g19, %r40, %g29
	  fadds,1,sm	%g19, %r37, %g28
	  fadds,2,sm	%g16, %r42, %g31
	  ldw,3,sm	%r47, %g25, %g30
	  addd,4,sm	0x4, %g25, %g25
	  fadds,5,sm	%g18, %r39, %r2
	}
	{
	  fadds,0,sm	%g16, %r39, %r5
	  fadds,1,sm	%g19, %r44, %r3
	  fadds,2,sm	%g19, %r42, %r6
	  ldw,3,sm	%r47, %g25, %r4
	  addd,4,sm	0x4, %g25, %g25
	  fadds,5,sm	%g18, %r36, %r7
	}
	{
	  fadds,0,sm	%g16, %r36, %r12
	  fmuls,1,sm	%g20, %r45, %g20
	  fadds,2,sm	%g19, %r39, %r13
	  fadds,3,sm	%g17, %r40, %r10
	  fadds,4,sm	%g17, %r37, %r9
	  fadds,5,sm	%g17, %r44, %r11
	}
	{
	  fadds,0,sm	%g17, %r42, %r17
	  fmuls,1,sm	%g23, %r45, %g23
	  fadds,2,sm	%g18, %r34, %r18
	  fadds,3,sm	%g30, %r40, %r15
	  fadds,4,sm	%g30, %r37, %r14
	  fadds,5,sm	%g30, %r44, %r16
	}
	{
	  fadds,0,sm	%g30, %r42, %r21
	  fmuls,1,sm	%g28, %r45, %g28
	  fadds,2,sm	%g16, %r34, %r23
	  fadds,3,sm	%r4, %r40, %r20
	  fadds,4,sm	%r4, %r37, %r19
	  fadds,5,sm	%r4, %r44, %r22
	}
	{
	  fadds,0,sm	%g19, %r36, %r24
	  fadds,1,sm	%g17, %r39, %r51
	  fadds,2,sm	%g30, %r39, %r52
	  fadds,3,sm	%r4, %r42, %r57
	  fadds,4,sm	%g18, %r32, %r58
	  fadds,5,sm	%g16, %r32, %r59
	}
	{
	  fadds,0,sm	%g19, %r34, %r9
	  fmul_rsubs,1,sm	%g21, %r46, %g20, %g20
	  fadds,2,sm	%g30, %r36, %r61
	  fadds,3,sm	%g17, %r36, %r60
	  fmuls,4,sm	%r9, %r45, %g21
	  fadds,5,sm	%r4, %r39, %r62
	}
	{
	  fadds,0,sm	%g18, %r30, %r14
	  fmul_rsubs,1,sm	%g24, %r46, %g23, %g23
	  fadds,2,sm	%g16, %r30, %r63
	  fadds,3,sm	%g19, %r32, %r56
	  fmuls,4,sm	%r14, %r45, %g24
	  stw,5,sm	%r1, _f16s,_lts0lo 0xfff0, %r56
	}
	{
	  fadds,0,sm	%g17, %r34, %r19
	  fmul_rsubs,1,sm	%g29, %r46, %g28, %g28
	  std,2,sm	%r1, _f16s,_lts0lo 0xffe8, %r55
	  fadds,3,sm	%g30, %r34, %r55
	  fmuls,4,sm	%r19, %r45, %g29
	  stw,5,sm	%r1, _f16s,_lts0hi 0xffe0, %r54
	}
	{
	  fadds,0,sm	%r4, %r36, %r54
	  addd,1,sm	0x4, %g25, %r53
	  std,2,sm	%r1, _f16s,_lts0lo 0xffd8, %r53
	  ldw,5,sm	%r47, %g25, %g25
	}
	{
	  fadds,0,sm	%g18, %r28, %r50
	  addd,1,sm	0x4, %r53, %r53
	  ldw,2,sm	%r47, %r53, %r10
	  fadds,3,sm	%g18, %r26, %g18
	  fmul_rsubs,4,sm	%r10, %r46, %g21, %g21
	  stw,5,sm	%r1, _f16s,_lts0lo 0xffc8, %r50
	}
	{
	  fadds,0,sm	%g16, %r28, %r49
	  addd,1,sm	0x4, %r53, %r15
	  ldw,2,sm	%r47, %r53, %r53
	  fadds,3,sm	%g16, %r26, %g16
	  fmul_rsubs,4,sm	%r15, %r46, %g24, %g24
	  stw,5,sm	%r1, _f16s,_lts0lo 0xffc0, %r49
	}
	{
	  stw,2,sm	%r1, _f16s,_lts0lo 0xffb8, %r48
	  fadds,3,sm	%g25, %r37, %r20
	  fmul_rsubs,4,sm	%r20, %r46, %g29, %g29
	  fadds,5,sm	%g25, %r40, %r48
	}
	{
	  fadds,0,sm	%r10, %r40, %r4
	  fadds,1,sm	%r10, %r37, %r26
	  std,2,sm	%r1, _f16s,_lts0lo 0xff08, %r26
	  addd,4,sm	0x0, %g19, %b[36]
	  std,5,sm	%r1, _f16s,_lts0hi 0xfe20, %r4
	}
	{
	  ldw,0,sm	%r47, %r15, %g22
	  fmul_adds,1,sm	%g22, %r43, %g20, %g20
	  stw,2,sm	%r1, _f16s,_lts0lo 0xfe10, %g18
	  addd,4,sm	0x4, %r15, %r15
	}
	{
	  fmul_adds,0,sm	%g26, %r43, %g23, %g23
	  fadds,1,sm	%r53, %r37, %g18
	  fadds,2,sm	%g25, %r44, %g26
	  fadds,3,sm	%r10, %r44, %g16
	  addd,4,sm	0x0, %g17, %b[34]
	  stw,5,sm	%r1, _f16s,_lts0lo 0xfe00, %g16
	}
	{
	  fadds,0,sm	%r53, %r40, %r20
	  fmul_adds,1,sm	%r3, %r43, %g28, %g28
	  stw,2,sm	%r1, _f16s,_lts0lo 0xfe08, %r50
	  fmuls,3,sm	%r20, %r45, %r3
	  ldw,5,sm	%r47, %r15, %r50
	}
	{
	  fmuls,0,sm	%r26, %r45, %r26
	  fadds,1,sm	%g22, %r37, %r49
	  stw,2,sm	%r1, _f16s,_lts0lo 0xfdf8, %r49
	  addd,5,sm	0x4, %r15, %r15
	}
	{
	  fadds,0,sm	%g22, %r40, %r11
	  addd,1,sm	0x0, %g25, %b[28]
	  std,2,sm	%r1, _f16s,_lts0lo 0xfe18, %g30
	  fmul_adds,3,sm	%r11, %r43, %g21, %g21
	  fadds,4,sm	%g25, %r42, %g30
	  std,5,sm	%r1, _f16s,_lts0hi 0xfdf0, %g19
	}
	{
	  fadds,1,sm	%r10, %r42, %g19
	  fmuls,2,sm	%g18, %r45, %g18
	  fmul_adds,3,sm	%r16, %r43, %g24, %g24
	  fadds,4,sm	%r50, %r37, %r16
	  std,5,sm	%r1, _f16s,_lts0lo 0xfde8, %g17
	}
	{
	  fadds,0,sm	%r53, %r44, %g17
	  fadds,2,sm	%g22, %r44, %r22
	  fmul_rsubs,3,sm	%r48, %r46, %r3, %r3
	  fmul_adds,4,sm	%r22, %r43, %g29, %g29
	  addd,5,sm	0x4, %r15, %r48
	}
	{
	  fmuls,0,sm	%r49, %r45, %r26
	  fmul_rsubs,1,sm	%r4, %r46, %r26, %r4
	  ldw,3,sm	%r47, %r15, %r15
	  fadds,4,sm	%r50, %r40, %r49
	  stw,5,sm	%r1, _f16s,_lts0lo 0xfde0, %r63
	}
	{
	  fmul_subs,0,sm	%g27, %r41, %g20, %g20
	  fadds,1,sm	%g25, %r39, %g27
	  fadds,2,sm	%r10, %r39, %g25
	  ldw,3,sm	%r47, %r48, %r63
	  addd,4,sm	0x4, %r48, %r48
	  std,5,sm	%r1, _f16s,_lts0lo 0xfdd0, %g25
	}
	{
	  fmul_subs,0,sm	%g31, %r41, %g23, %g23
	  fmul_rsubs,1,sm	%r20, %r46, %g18, %g18
	  fadds,2,sm	%r53, %r42, %r16
	  addd,3,sm	0x0, %r10, %b[26]
	  fmuls,4,sm	%r16, %r45, %g31
	  fadds,5,sm	%g22, %r42, %r20
	}
	{
	  fadds,0,sm	%r50, %r44, %r53
	  fmul_subs,1,sm	%r6, %r41, %g28, %g28
	  std,2,sm	%r1, _f16s,_lts0lo 0xfdc0, %r53
	  addd,4,sm	0x0, %g22, %b[22]
	  fadds,5,sm	%r15, %r37, %r6
	}
	{
	  fadds,0,sm	%r15, %r40, %r50
	  fmul_rsubs,1,sm	%r11, %r46, %r26, %r11
	  std,2,sm	%r1, _f16s,_lts0lo 0xfdb8, %r50
	  fadds,3,sm	%r63, %r40, %r15
	  fadds,4,sm	%r63, %r37, %r26
	  std,5,sm	%r1, _f16s,_lts0hi 0xfdb0, %r15
	}
	{
	  addd,1,sm	0x4, %r48, %r48
	  ldw,2,sm	%r47, %r48, %r17
	  fmul_subs,4,sm	%r17, %r41, %g21, %g21
	  std,5,sm	%r1, _f16s,_lts0lo 0xfda8, %r63
	}
	{
	  ldd,0	%r1, _f16s,_lts0lo 0xfdf0, %r63, mas=0x4
	  std,2,sm	%r1, _f16s,_lts0hi 0xfdc8, %r10
	}
	{
	  ldd,0	%r1, _f16s,_lts0lo 0xfde8, %r10, mas=0x4
	  std,2,sm	%r1, _f16s,_lts0hi 0xfda0, %r48
	  fadds,3,sm	%g22, %r39, %r48
	  fadds,4,sm	%g22, %r36, %g22
	}
	{
	  fmul_subs,0,sm	%r21, %r41, %g24, %g24
	  fmul_adds,1,sm	%g16, %r43, %r4, %g16
	  fmul_rsubs,2,sm	%r49, %r46, %g31, %g31
	  fmul_subs,3,sm	%r57, %r41, %g29, %g29
	  fmul_adds,4,sm	%g26, %r43, %r3, %g26
	  fmuls,5,sm	%r6, %r45, %r3
	}
	{
	  fadds,0,sm	%r63, %r30, %r4
	  fmul_adds,1,sm	%r2, %r38, %g20, %g20
	  fadds,2,sm	%r17, %r37, %r6
	  fmuls,3,sm	%r26, %r45, %r2
	  ldd,5	%r1, _f16s,_lts0lo 0xfda0, %r21, mas=0x4
	}
	{
	  fadds,0,sm	%r10, %r32, %r26
	  fmul_adds,1,sm	%r5, %r38, %g23, %g23
	  fmul_adds,2,sm	%g17, %r43, %g18, %g17
	  ldd,3	%r1, _f16s,_lts0lo 0xfe18, %g18, mas=0x4
	  fadds,4,sm	%r17, %r40, %r5
	  fadds,5,sm	%r63, %r28, %r49
	}
	{
	  fmul_adds,0,sm	%r13, %r38, %g28, %g28
	  fadds,1,sm	%r10, %r28, %r13
	  fadds,2,sm	%r10, %r30, %r10
	  fadds,3,sm	%r17, %r42, %r57
	  fadds,4,sm	%r17, %r44, %r63
	  addd,5,sm	0x0, %r17, %b[14]
	}
	{
	  fmul_adds,0,sm	%r22, %r43, %r11, %r11
	  ldw,2,sm	%r47, %r21, %r17
	  addd,3,sm	0x4, %r21, %r21
	  fmul_rsubs,4,sm	%r50, %r46, %r3, %r3
	  ldd,5	%r1, _f16s,_lts0lo 0xfdd0, %r22, mas=0x4
	}
	{
	  addd,0,sm	0x0, %g18, %b[32]
	  std,2,sm	%r1, _f16s,_lts0lo 0xff18, %r28
	  fadds,3,sm	%g18, %r32, %r50
	  fadds,4,sm	%g18, %r30, %r28
	  fmul_adds,5,sm	%r51, %r38, %g21, %g18
	}
	{
	  ldd,0	%r1, _f16s,_lts0lo 0xfdc0, %r15, mas=0x4
	  fmul_rsubs,3,sm	%r15, %r46, %r2, %g21
	  addd,5,sm	0x4, %r21, %r2
	}
	{
	  ldw,0,sm	%r47, %r21, %r21
	  fmuls,1,sm	%r6, %r45, %r6
	  stw,2,sm	%r1, _f16s,_lts0lo 0xfd98, %r63
	  fadds,3,sm	%r22, %r32, %r63
	  fadds,4,sm	%r22, %r36, %r51
	  fadds,5,sm	%r22, %r34, %r22
	}
	{
	  fmul_subs,0,sm	%g19, %r41, %g16, %g16
	  fmul_adds,1,sm	%r52, %r38, %g24, %g24
	  fmul_adds,2,sm	%r53, %r43, %g31, %g19
	  fmul_subs,3,sm	%g30, %r41, %g26, %g26
	  fmul_adds,4,sm	%r62, %r38, %g29, %g29
	  ldw,5,sm	%r47, %r2, %g30
	}
	{
	  fadds,0,sm	%r15, %r39, %g31
	  fmul_subs,1,sm	%r7, %r35, %g20, %g20
	  ldd,2	%r1, _f16s,_lts0lo 0xfdc8, %r7, mas=0x4
	  ldd,3	%r1, _f16s,_lts0hi 0xfe20, %r52, mas=0x4
	  fadds,4,sm	%r17, %r37, %r53
	}
	{
	  fmul_subs,0,sm	%r12, %r35, %g23, %g23
	  fmul_subs,1,sm	%r16, %r41, %g17, %g17
	  fadds,2,sm	%r15, %r34, %r12
	  addd,3,sm	0x4, %r2, %r2
	  fadds,4,sm	%r17, %r44, %r16
	  fadds,5,sm	%r15, %r36, %r62
	}
	{
	  fmul_subs,0,sm	%r24, %r35, %g28, %g28
	  fadds,1,sm	%r21, %r37, %r57
	  stw,2,sm	%r1, _f16s,_lts0lo 0xfd88, %r63
	  addd,3,sm	0x4, %r2, %r63
	  fadds,4,sm	%g30, %r37, %r24
	  stw,5,sm	%r1, _f16s,_lts0hi 0xfd90, %r57
	}
	{
	  ldw,0,sm	%r47, %r2, %r2
	  fmul_subs,1,sm	%r20, %r41, %r11, %r11
	  stw,2,sm	%r1, _f16s,_lts0lo 0xfd80, %r49
	  fadds,5,sm	%r52, %r34, %r49
	}
	{
	  fadds,0,sm	%r7, %r36, %r20
	  stw,2,sm	%r1, _f16s,_lts0lo 0xfd78, %r28
	  fmul_subs,3,sm	%r60, %r35, %g18, %g18
	  fadds,4,sm	%r52, %r30, %r28
	}
	{
	  ldd,0	%r1, _f16s,_lts0lo 0xfdb8, %r60, mas=0x4
	  std,2,sm	%r1, _f16s,_lts0hi 0xff28, %r30
	}
	{
	  ldd,0	%r1, _f16s,_lts0lo 0xfdb0, %r30, mas=0x4
	  fmul_rsubs,1,sm	%r5, %r46, %r6, %r5
	  stw,2,sm	%r1, _f16s,_lts0hi 0xfd70, %r62
	  fadds,3,sm	%r7, %r34, %r6
	  ldw,5,sm	%r47, %r63, %r62
	}
	{
	  fmul_subs,0,sm	%r61, %r35, %g24, %g24
	  fmul_adds,1,sm	%g25, %r38, %g16, %g16
	  fadds,2,sm	%r21, %r44, %g27
	  fmul_subs,3,sm	%r54, %r35, %g29, %g29
	  fmul_adds,4,sm	%g27, %r38, %g26, %g26
	  fadds,5,sm	%r52, %r32, %g25
	}
	{
	  fadds,0,sm	%r60, %r42, %r7
	  fadds,1,sm	%r60, %r36, %r54
	  fmul_adds,2,sm	%r18, %r33, %g20, %g20
	  fadds,4,sm	%g30, %r40, %r18
	  fmuls,5,sm	%r24, %r45, %r24
	}
	{
	  fadds,0,sm	%r30, %r44, %r61
	  fadds,1,sm	%r30, %r39, %r36
	  std,2,sm	%r1, _f16s,_lts0lo 0xff58, %r36
	  std,5,sm	%r1, _f16s,_lts0hi 0xff48, %r34
	}
	{
	  ldd,0	%r1, _f16s,_lts0lo 0xfda8, %r34, mas=0x4
	  fmul_adds,1,sm	%g31, %r38, %g17, %g17
	  std,2,sm	%r1, _f16s,_lts0hi 0xff38, %r32
	  fadds,3,sm	%r60, %r39, %r32
	  fadds,4,sm	%r2, %r40, %g31
	  fmuls,5,sm	%r53, %r45, %r53
	}
	{
	  fmul_adds,0,sm	%r23, %r33, %g23, %g23
	  fmul_adds,1,sm	%r9, %r33, %g28, %g28
	  fadds,2,sm	%r30, %r42, %r23
	  addd,3,sm	0x0, %r52, %b[30]
	  addd,4,sm	0x4, %r63, %r52
	  fadds,5,sm	%r2, %r37, %r9
	}
	{
	  fmul_adds,0,sm	%r48, %r38, %r11, %r11
	  fmul_subs,1,sm	%r7, %r41, %g19, %g19
	  addd,2,sm	0x0, %r60, %b[20]
	  fmul_adds,3,sm	%r19, %r33, %g18, %g18
	  fadds,4,sm	%r62, %r37, %r7
	  fadds,5,sm	%r17, %r40, %r19
	}
	{
	  fadds,0,sm	%r34, %r42, %r48
	  fadds,1,sm	%r34, %r44, %r60
	  fmul_adds,2,sm	%r61, %r43, %r3, %r3
	  fadds,3,sm	%r21, %r40, %r61
	  fmuls,4,sm	%r57, %r45, %r57
	}
	{
	  addd,0,sm	0x0, %r34, %b[16]
	  addd,1,sm	0x0, %r30, %b[18]
	  ldw,2	%r1, _f16s,_lts0lo 0xfd98, %r15, mas=0x4
	  addd,3,sm	0x0, %r15, %b[24]
	}
	{
	  fmul_subs,0,sm	%r20, %r35, %g16, %g16
	  fmul_adds,1,sm	%r55, %r33, %g24, %g24
	  ldw,2,sm	%r47, %r52, %b[2]
	  fmul_subs,3,sm	%r51, %r35, %g26, %g26
	  fmul_adds,4,sm	%r49, %r33, %g29, %g29
	  addd,5,sm	0x0, %r17, %b[12]
	}
	{
	  fmul_subs,0,sm	%r58, %r31, %g20, %g20
	  adds,2,sm	0x0, %r13, %b[51]
	  ldw,3	%r1, _f16s,_lts0lo 0xfd90, %r13, mas=0x4
	  addd,4,sm	0x0, %r21, %b[10]
	  addd,5,sm	0x0, %g30, %b[8]
	}
	{
	  fmul_adds,0,sm	%r15, %r43, %r5, %b[7]
	  fmul_adds,1,sm	%r60, %r43, %g21, %g21
	  ldw,2	%r1, _f16s,_lts0lo 0xfd88, %g30, mas=0x4
	  adds,3,sm	0x0, %r12, %b[43]
	  adds,4,sm	0x0, %r16, %b[58]
	  addd,5,sm	0x0, %r2, %b[6]
	}
	{
	  fmul_rsubs,0,sm	%r19, %r46, %r53, %b[27]
	  addd,2,sm	0x0, %r62, %b[4]
	  fmul_rsubs,3,sm	%r61, %r46, %r57, %b[25]
	  adds,4,sm	0x0, %r28, %b[53]
	  addd,5,sm	0x4, %r52, %b[3]
	}
	{
	  fmul_subs,0,sm	%r59, %r31, %g23, %g23
	  fmul_subs,1,sm	%r56, %r31, %g28, %g28
	  ldw,2	%r1, _f16s,_lts0lo 0xfd70, %g27, mas=0x4
	  adds,3,sm	0x0, %r13, %b[44]
	  adds,4,sm	0x0, %g27, %b[56]
	  adds,5,sm	0x0, %r54, %b[50]
	}
	{
	  adds,0,sm	0x0, %g30, %b[49]
	  adds,1,sm	0x0, %r18, %b[19]
	  adds,2,sm	0x0, %r24, %b[33]
	  fmul_subs,3,sm	%r26, %r31, %g18, %g18
	  adds,4,sm	0x0, %r36, %b[42]
	  adds,5,sm	0x0, %g31, %b[17]
	}
	{
	  fmul_subs,0,sm	%g22, %r35, %r11, %b[46]
	  fmul_adds,1,sm	%r32, %r38, %g19, %b[29]
	  adds,2,sm	0x0, %r9, %b[47]
	  adds,5,sm	0x0, %r7, %b[45]
	}
	{
	  fmul_subs,0,sm	%g27, %r35, %g17, %b[48]
	  fmul_subs,1,sm	%r23, %r41, %r3, %b[23]
	}
	{
	  fmul_subs,0,sm	%r50, %r31, %g24, %g17
	  fmul_adds,1,sm	%r6, %r33, %g16, %b[39]
	  fmul_subs,3,sm	%g25, %r31, %g29, %b[15]
	  fmul_adds,4,sm	%r22, %r33, %g26, %b[41]
	}
	{
	  fmul_adds,0,sm	%r14, %r29, %g20, %g16
	}
	{
	  nop 1
	  fmul_subs,0,sm	%r48, %r41, %g21, %b[21]
	}
	{
	  ldw,0	%r1, _f16s,_lts0lo 0xfde0, %g19, mas=0x4
	  fmul_adds,1,sm	%r4, %r29, %g28, %g20
	}
	{
	  nop 1
	  fmul_adds,3,sm	%r10, %r29, %g18, %b[37]
	}
	{
	  fmul_adds,0,sm	%g19, %r29, %g23, %g18
	}
	{
	  ldw,0	%r1, _f16s,_lts0lo 0xfd78, %g19, mas=0x4
	}
	{
	  nop 1
	  ldw,0	%r1, _f16s,_lts0lo 0xfe08, %g21, mas=0x4
	}
	{
	  fmul_adds,0,sm	%g19, %r29, %g17, %b[35]
	}
	{
	  nop 2
	  fmul_subs,0,sm	%g21, %r27, %g16, %g16
	  ldw,2	%r1, _f16s,_lts0lo 0xfd80, %g17, mas=0x4
	}
	{
	  nop 2
	  fmul_subs,0,sm	%g17, %r27, %g20, %b[38]
	  ldw,2	%r1, _f16s,_lts0lo 0xfdf8, %g17, mas=0x4
	}
	{
	  nop 1
	  fmul_subs,0,sm	%g17, %r27, %g18, %g17
	}
	{
	  nop 2
	  ldw,0	%r1, _f16s,_lts0lo 0xfe10, %g18, mas=0x4
	}
	{
	  nop 2
	  fmul_adds,0,sm	%g18, %r25, %g16, %b[11]
	}
	{
	  nop 2
	  ldw,0	%r1, _f16s,_lts0lo 0xfe00, %g16, mas=0x4
	}
	{
	  fmul_adds,0,sm	%g16, %r25, %g17, %b[9]
	  ldd,2	%r1, _f16s,_lts0lo 0xff38, %r32, mas=0x4
	  ldd,3	%r1, _f16s,_lts0hi 0xff48, %r34, mas=0x4
	  ldd,5	%r1, _f16s,_lts1lo 0xff58, %r36, mas=0x4
	}
	{
	  ldd,0	%r1, _f16s,_lts0lo 0xff28, %r30, mas=0x4
	  ldd,2	%r1, _f16s,_lts0hi 0xff18, %r28, mas=0x4
	  ldd,3	%r1, _f16s,_lts1lo 0xff08, %r26, mas=0x4
	  ldw,5	%r1, _f16s,_lts1hi 0xffb8, %r48, mas=0x4
	}
	{
	  ldw,0	%r1, _f16s,_lts0lo 0xffc0, %r49, mas=0x4
	  ldw,2	%r1, _f16s,_lts0hi 0xffc8, %r50, mas=0x4
	  ldd,3	%r1, _f16s,_lts1lo 0xffd8, %r53, mas=0x4
	  ldw,5	%r1, _f16s,_lts1hi 0xffe0, %r54, mas=0x4
	}
	{
	  ldd,0	%r1, _f16s,_lts0lo 0xffe8, %r55, mas=0x4
	  ldw,2	%r1, _f16s,_lts0hi 0xfff0, %r56, mas=0x4
	}
.L5728:
	{
	  loop_mode
	  fmul_adds,0,sm	%b[58], %r43, %b[27], %b[5]
	  fmul_subs,1,sm	%b[49], %r31, %b[41], %b[13]
	  fadds,2,sm	%b[36], %r26, %b[52]
	  ldw,3,sm	%r47, %b[3], %b[0]
	  fadds,4,sm	%b[16], %r39, %b[40]
	  fmuls,5,sm	%b[47], %r45, %b[31]
	}
	{
	  loop_mode
	  fmul_adds,0,sm	%b[42], %r38, %b[23], %b[27]
	  fmul_subs,1,sm	%b[51], %r27, %b[37], %b[36]
	  fadds,2,sm	%b[26], %r32, %b[47]
	  fadds,4,sm	%b[22], %r34, %b[41]
	}
	{
	  loop_mode
	  fmul_rsubs,0,sm	%b[19], %r46, %b[33], %b[23]
	  fmul_adds,1,sm	%b[43], %r33, %b[48], %b[37]
	  fadds,2,sm	%b[32], %r28, %b[49]
	  fadds,4,sm	%b[12], %r42, %b[42]
	}
	{
	  loop_mode
	  fmul_subs,0,sm	%b[44], %r41, %b[7], %b[19]
	  fmul_adds,1,sm	%b[53], %r29, %b[15], %b[33]
	  fadds,2,sm	%b[28], %r30, %b[51]
	  fadds,4,sm	%b[18], %r36, %b[48]
	  fadds,5,sm	%b[2], %r37, %b[43]
	}
	{
	  loop_mode
	  alc	alcf=1, alct=1
	  abn	abnf=1, abnt=1
	  ct	%ctpr1 ? %NOT_LOOP_END
	  fmul_subs,0,sm	%b[50], %r35, %b[29], %b[44]
	  fmul_adds,1,sm	%b[52], %r25, %b[38], %b[7]
	  staaw,2	%b[11], %aad0[ %aasti1 ]
	  incr,2	%aaincr0
	  addd,3,sm	0x4, %b[3], %b[1]
	  fadds,4,sm	%b[8], %r44, %b[54]
	  fadds,5,sm	%b[4], %r40, %b[15]
	}
	{
	  setwd	wsz = 0x41, nfx = 0x1, dbl = 0x1
	  setbn	rsz = 0x20, rbs = 0x20, rcur = 0x0
	  disp	%ctpr1, .L4155
	}
	{
	  nop 3
	  disp	%ctpr2, .L4080
	  aaurw,2	%r56, %aabf0
	}
	{
	  ct	%ctpr1
	}
	.section .text.async_prefetch_code, "ax", @progbits

.L11418:
	{
	  fapb	ct=1, dcd=0, fmt=4, mrng=16, d=0, incr=1, ind=0, asz=5, abs=0, disp=0
	}
.L11444:
	{
	  fapb	ct=1, dcd=0, fmt=4, mrng=16, d=0, incr=1, ind=0, asz=5, abs=0, disp=0
	}
.L11467:
	{
	  fapb	ct=1, dcd=0, fmt=4, mrng=8, d=0, incr=0, ind=0, asz=5, abs=0, disp=0
	}
.previous

.L14275:
	{
	  nop 2
	  ldw,0	0x0, [ _f64,_lts2 cval ], %r37
	  cmplsb,1	0x0, %r48, %pred0
	  ldw,2,sm	%r47, 0x0, %r2
	  ldw,5	0x0, [ _f64,_lts0 aval ], %r40
	}
	{
	  ibranch	.L4080
	}
	.size	runTests, .- runTests
	.global	main
	.type	main, #function
	.align	8
main:
	{
	  setwd	wsz = 0x38, nfx = 0x1, dbl = 0x0
	  setbn	rsz = 0x17, rbs = 0x20, rcur = 0x14
	  setbp	psz = 0x0
	  disp	%ctpr1, sprintf
	  getsp,0	_f32s,_lts1 0xfffffe40, %r3
	  addd,1	0x0, [ _f64,_lts2 .LC.1 ], %r19
	  adds,2	0x0, 0x0, %r34
	  adds,3,sm	0x0, %r0, %r6
	  adds,4	0x3, 0x0, %r36
	  adds,5	0x0, 0x0, %r28
	}
	{
	  addd,0	0x0, [ _f64,_lts0 .LC.1 ], %b[1]
	  adds,1	0x0, 0x0, %b[45]
	  adds,2	0x0, 0x0, %r38
	  addd,3,sm	0x0, %r1, %r7
	  addd,4,sm	0x0, [ _f64,_lts2 .LC.2 ], %r13
	  addd,5,sm	0x0, _lit64_ref,_lts2 0x0, %r14
	}
	{
	  addd,0	%r3, _f64,_lts0 0x1c0, %r2
	  addd,1	0x1, 0x0, %r4
	  adds,2	0x1, 0x0, %r5
	  addd,3	0x0, 0x0, %r32
	  adds,4	0x0, 0x0, %r33
	  addd,5,sm	%r1, 0x8, %r8
	}
	{
	  addd,0	%r2, _f16s,_lts0lo 0xffc0, %r37
	  scls,1,sm	0x19, 0x2, %r9
	  stw,2	%r2, _f16s,_lts0hi 0xfff4, %r34
	  scls,3,sm	0x1, 0x6, %r10
	  addd,4,sm	0x0, [ _f64,_lts1 .LC.2 ], %r15
	  addd,5,sm	%r1, 0x8, %r11
	}
	{
	  addd,0,sm	0x0, %r37, %b[0]
	  addd,1,sm	%r1, 0x8, %r12
	  stw,2	%r2, _f16s,_lts0lo 0xfff8, %r34
	  subd,3,sm	%r2, 0x8, %r16
	  subd,4,sm	%r2, 0xc, %r17
	  stw,5	%r2, _f16s,_lts0hi 0xfffc, %r34
	}
	{
	  subd,0,sm	%r2, 0x4, %r18
	  adds,1	0x0, 0x0, %r1
	  std,2	%r3, 0x8, %r19
	}
	{
	  call	%ctpr1, wbs = 0x34
	}
.L23911:
	{
	  disp	%ctpr2, .L14509
	  cmplesb,0	%r6, %r5, %pred0
	  adds,1,sm	%r5, 0x2, %r19
	  adds,2,sm	0x4, %r5, %r20
	  addd,3,sm	0x4, %r4, %r21
	}
	{
	  disp	%ctpr1, .L23911
	  cmplsb,0,sm	%r19, 0x9, %pred1
	  cmplesb,1,sm	%r6, %r19, %pred2
	}
	{
	  disp	%ctpr3, toupper
	  cmplsb,0,sm	%r20, 0x9, %pred4
	  adds,1,sm	0x0, %r1, %b[44] ? %pred0
	  addd,2	%r4, 0x2, %r4 ? %pred0
	  adds,3	0x0, %r19, %r5 ? %pred0
	  pass	%pred0, @p0
	  pass	%pred1, @p1
	  landp	@p0, @p1, @p4
	  pass	@p4, %pred3
	  landp	@p0, ~@p1, @p5
	  pass	@p5, %pred5
	  pass	%pred2, @p2
	  landp	@p4, @p2, @p6
	  pass	@p6, %pred6
	}
	{
	  shld,0,sm	%r4, 0x3, %r19
	  adds,3,sm	%r5, 0x1, %r22
	  adds,4,sm	%r5, 0x1, %r23
	  adds,5,sm	%r5, 0x1, %r24
	  pass	%pred6, @p0
	  pass	%pred4, @p1
	  landp	@p0, ~@p1, @p4
	  pass	@p4, %pred3
	  landp	@p0, @p1, @p5
	  pass	@p5, %pred4
	  pass	%pred1, @p2
	  pass	%pred2, @p3
	  landp	@p2, ~@p3, @p6
	  pass	@p6, %pred1
	}
	{
	  adds,0,sm	0x0, %r1, %b[44] ? %pred6
	  adds,1	0x0, %r20, %r5 ? %pred6
	  ldd,2,sm	%r7, %r19, %r25
	  cmplesb,3,sm	%r6, %r22, %pred1
	  cmplesb,4,sm	%r6, %r23, %pred2
	  addd,5	0x0, %r21, %r4 ? %pred6
	  pass	%pred0, @p0
	  pass	%pred1, @p1
	  landp	@p0, ~@p1, @p4
	  pass	@p4, %pred0
	}
	{
	  ct	%ctpr2 ? %pred5
	  cmplesb,0,sm	%r6, %r24, %pred5
	}
	{
	  ct	%ctpr1 ? %pred4
	}
	{
	  ct	%ctpr2 ? %pred3
	  ldb,0,sm	%r25, 0x0, %r20
	}
	{
	  nop 1
	}
	{
	  sxt,0,sm	0x0, %r20, %r20
	}
	{
	  addd,1,sm	0x0, %r20, %b[0] ? ~%pred0
	  std,2	%r3, 0x0, %r20 ? ~%pred0
	  ldd,5,sm	%r11, %r19, %r20
	}
	{
	  call	%ctpr3, wbs = 0x34 ? ~%pred0
	  ldd,0,sm	%r12, %r19, %r21
	  ldd,2,sm	%r8, %r19, %r19
	}
	{
	  disp	%ctpr2, .L23903
	  cmpesb,0,sm	%b[0], _f16s,_lts0lo 0x4d, %pred3
	  cmpesb,1,sm	%b[0], _f16s,_lts0hi 0x52, %pred4
	  cmpesb,3,sm	%b[0], _f16s,_lts1lo 0x54, %pred6
	}
	{
	  disp	%ctpr1, __isoc99_sscanf
	  pass	%pred0, @p0
	  pass	%pred3, @p1
	  landp	~@p0, ~@p1, @p4
	  pass	@p4, %pred7
	  pass	%pred4, @p2
	  landp	@p4, @p2, @p5
	  pass	@p5, %pred8
	  landp	~@p0, @p1, @p6
	  pass	@p6, %pred0
	}
	{
	  disp	%ctpr3, __isoc99_sscanf
	  pass	%pred7, @p0
	  pass	%pred4, @p1
	  landp	@p0, ~@p1, @p4
	  pass	@p4, %pred3
	  pass	%pred0, @p2
	  pass	%pred1, @p3
	  landp	@p2, @p3, @p5
	  pass	@p5, %pred4
	  landp	@p2, ~@p3, @p6
	  pass	@p6, %pred0
	}
	{
	  pass	%pred8, @p0
	  pass	%pred2, @p1
	  landp	@p0, ~@p1, @p4
	  pass	@p4, %pred1
	  pass	%pred0, @p2
	  landp	~@p2, ~@p4, @p5
	  pass	@p5, %pred7
	  landp	@p0, @p1, @p6
	  pass	@p6, %pred2
	}
	{
	  addd,0,sm	0x0, [ _f64,_lts0 .LC.2 ], %b[1] ? %pred0
	  addd,1,sm	0x0, %r20, %b[0] ? %pred0
	  std,2	%r3, 0x8, %r15 ? %pred0
	  addd,3,sm	0x0, %r17, %b[2] ? %pred0
	  std,5	0x10, %r3, %r17 ? %pred0
	  pass	%pred3, @p0
	  pass	%pred6, @p1
	  landp	@p0, @p1, @p4
	  pass	@p4, %pred8
	  pass	%pred5, @p2
	  landp	@p4, @p2, @p5
	  pass	@p5, %pred9
	  landp	@p0, ~@p1, @p6
	  pass	@p6, %pred3
	}
	{
	  ct	%ctpr2 ? %pred4
	  addd,0,sm	0x0, %r18, %b[2] ? %pred1
	  addd,1,sm	0x0, [ _f64,_lts0 .LC.2 ], %b[1] ? %pred1
	  std,2	%r3, 0x8, %r13 ? %pred1
	  addd,3,sm	0x0, %r21, %b[0] ? %pred1
	  std,5	0x10, %r3, %r18 ? %pred1
	  pass	%pred8, @p0
	  pass	%pred5, @p1
	  landp	@p0, ~@p1, @p4
	  pass	@p4, %pred5
	}
	{
	  call	%ctpr1, wbs = 0x34 ? ~%pred7
	}
	{
	  ct	%ctpr2 ? %pred2
	  disp	%ctpr1, .L23903
	  ldw,0,sm	%r2, _f16s,_lts0lo 0xfffc, %r20
	  addd,1,sm	0x0, [ _f64,_lts1 .LC.2 ], %b[1] ? %pred5
	  addd,2,sm	0x0, %r19, %b[0] ? %pred5
	  ldw,3,sm	%r2, _f16s,_lts0hi 0xfff4, %r21
	  addd,4,sm	0x0, %r16, %b[2] ? %pred5
	}
	{
	  ct	%ctpr2 ? %pred9
	  std,2	%r3, 0x8, %r14 ? %pred5
	  std,5	0x10, %r3, %r16 ? %pred5
	}
	{
	  ct	%ctpr2 ? %pred3
	}
	{
	  call	%ctpr3, wbs = 0x34 ? %pred5
	  cmplesb,0,sm	%r20, 0x0, %pred2
	  cmplesb,3,sm	%r21, 0x0, %pred3
	}
	{
	  nop 1
	  ldw,0,sm	%r2, _f16s,_lts0lo 0xfff8, %g16
	  pass	%pred1, @p0
	  pass	%pred2, @p1
	  landp	@p0, ~@p1, @p4
	  pass	@p4, %pred2
	  pass	%pred0, @p2
	  pass	%pred3, @p3
	  landp	@p2, ~@p3, @p5
	  pass	@p5, %pred4
	  landp	@p2, @p3, @p6
	  pass	@p6, %pred0
	}
	{
	  adds,0	0x1, 0x0, %r33 ? %pred4
	  adds,1	0x1, 0x0, %r36 ? %pred4
	  stw,2	0x0, [ _f64,_lts0 repeats ], %r20 ? %pred2
	  adds,3	0x2, 0x0, %r1 ? %pred4
	  adds,4	0x0, %r21, %b[45] ? %pred4
	}
	{
	  ct	%ctpr1 ? %pred4
	  cmplesb,0,sm	%g16, 0x0, %pred2
	}
	{
	  ct	%ctpr1 ? %pred0
	  ldw,0,sm	0x0, [ _f64,_lts0 repeats ], %g17
	  pass	%pred5, @p0
	  pass	%pred2, @p1
	  landp	@p0, ~@p1, @p4
	  pass	@p4, %pred2
	}
	nop
	{
	  stw,2	0x0, [ _f64,_lts0 threads ], %g16 ? %pred2
	}
	{
	  cmplsb,0,sm	%g17, _f16s,_lts0lo 0x64, %pred0
	}
	{
	  nop 1
	  ldw,0,sm	0x0, [ _f64,_lts0 threads ], %g16
	  pass	%pred1, @p0
	  pass	%pred0, @p1
	  landp	@p0, ~@p1, @p4
	  pass	@p4, %pred2
	  landp	@p0, @p1, @p5
	  pass	@p5, %pred0
	}
	{
	  stw,2	0x0, [ _f64,_lts0 repeats ], %r9 ? %pred0
	}
	{
	  ct	%ctpr1 ? %pred2
	  cmplesb,0,sm	%g16, _f16s,_lts0lo 0x40, %pred1
	}
	{
	  ct	%ctpr1 ? %pred0
	  pass	%pred5, @p0
	  pass	%pred1, @p1
	  landp	@p0, ~@p1, @p4
	  pass	@p4, %pred1
	}
	nop
	{
	  stw,2	0x0, [ _f64,_lts0 threads ], %r10 ? %pred1
	}
.L23903:
	{
	  disp	%ctpr1, .L23911
	  adds,0	%r5, 0x2, %r5
	  addd,1	%r4, 0x2, %r4
	  adds,2,sm	0x0, %r1, %b[44]
	}
	{
	  nop 3
	  cmplsb,0	%r5, 0x9, %pred0
	}
	{
	  ct	%ctpr1 ? %pred0
	}
.L14509:
	{
	  nop 4
	  disp	%ctpr2, getDetails
	  cmpesb,0,sm	0x0, 0x0, %pred0
	}
.LCS.1:
	{
	  call	%ctpr2, wbs = 0x34
	}
	{
	  disp	%ctpr1, puts
	  ldw,0,sm	0x0, [ _f64,_lts0 CPUavail ], %r1
	  ldw,2,sm	0x0, [ _f64,_lts2 repeats ], %r4
	}
	{
	  ldw,0	%r2, _f16s,_lts0lo 0xfffc, %r5
	  ldw,2	%r2, _f16s,_lts0hi 0xfff8, %r6
	  ldw,3	0x0, [ _f64,_lts1 words ], %b[40]
	}
	{
	  addd,0	0x0, [ _f64,_lts0 .LC.42 ], %b[0]
	}
	{
	  merges,0,sm	0x0, %r1, %r7, %pred0
	}
	{
	  muls,0,sm	%r4, %r7, %r4
	  cmpesb,1	%r5, 0x0, %pred0
	}
	{
	  nop 1
	  cmpesb,0	%r6, 0x0, %pred1
	}
	{
	  stw,2	0x0, [ _f64,_lts0 threads ], %r1 ? %pred1
	}
	{
	  nop 1
	  stw,2	0x0, [ _f64,_lts0 repeats ], %r4 ? %pred0
	}
	{
	  ldw,0	0x0, [ _f64,_lts0 repeats ], %r39
	}
	{
	  call	%ctpr1, wbs = 0x34
	}
	{
	  nop 4
	  disp	%ctpr1, local_time
	}
	{
	  call	%ctpr1, wbs = 0x34
	}
	{
	  nop 4
	  disp	%ctpr1, fopen
	  addd,0	0x0, [ _f64,_lts0 .LC.5 ], %b[1]
	  addd,1	0x0, [ _f64,_lts2 .LC.4 ], %b[0]
	}
	{
	  call	%ctpr1, wbs = 0x34
	}
	{
	  disp	%ctpr1, puts
	  cmpedb,0	%b[0], 0x0, %pred0
	  std,2	0x0, [ _f64,_lts0 outfile ], %b[0]
	}
	{
	  nop 1
	  disp	%ctpr3, printf
	}
	{
	  ibranch	.L14570 ? %pred0
	}
	{
	  addd,0,sm	0x0, [ _f64,_lts0 configdata ], %b[1]
	  addd,1,sm	0x0, [ _f64,_lts2 .LC.8 ], %b[0]
	  addd,2	0x0, _lit64_ref,_lts0 0x0, %r6
	  cmpesb,3,sm	0x0, 0x0, %pred0
	  scld,4,sm	0x19, 0x4, %r1
	  addd,5,sm	0x0, _lit64_ref,_lts2 0x0, %r7
	}
	{
	  addd,0,sm	0x0, [ _f64,_lts0 configdata +200 ], %r4
	  std,2	%r3, 0x0, %r7
	  adds,3,sm	0x2, 0x0, %r5
	  std,5	%r3, 0x8, %r6
	}
	{
	  call	%ctpr3, wbs = 0x34
	}
.L23640:
	{
	  disp	%ctpr2, printf
	  addd,0,sm	0x0, %r4, %b[1]
	  addd,1,sm	0x0, [ _f64,_lts0 .LC.8 ], %b[0]
	  std,2	%r3, 0x0, %r7
	  adds,3,sm	%r5, 0x1, %r5
	  addd,4,sm	%r1, [ _f64,_lts2 configdata ], %r6
	  std,5	%r3, 0x8, %r4
	}
	{
	  nop 3
	  cmplsb,3,sm	%r5, 0xa, %pred1
	}
	{
	  call	%ctpr2, wbs = 0x34
	}
	{
	  disp	%ctpr1, .L24196
	}
	{
	  disp	%ctpr3, .L23640
	}
	{
	  ct	%ctpr1 ? ~%pred0
	}
	{
	  nop 2
	  addd,0,sm	%r1, _f16s,_lts0lo 0xc8, %r1
	  addd,1,sm	0x0, %r6, %r4
	  pass	%pred1, @p0
	  andp	@p0, @p0, @p4
	  pass	@p4, %pred0
	}
	{
	  ct	%ctpr3
	}
.L24196:
	{
	  disp	%ctpr2, puts
	  cmpesb,0,sm	0x0, 0x1, %pred1
	  cmpesb,1,sm	0x0, 0x0, %pred0
	  addd,2	0x0, [ _f64,_lts0 .LC.39 ], %b[0]
	  adds,3,sm	0x3, 0x0, %r6
	  addd,5	0x0, [ _f64,_lts2 .LC.9 ], %b[41]
	}
	{
	  addd,0	0x0, [ _f64,_lts0 .LC.10 ], %r9
	  addd,1	0x0, [ _f64,_lts2 configdata +200 ], %r1
	}
	{
	  nop 2
	  addd,0,sm	0x0, [ _f64,_lts0 .LC.11 ], %r8
	  addd,1,sm	0x0, [ _f64,_lts2 configdata +400 ], %r5
	}
	{
	  call	%ctpr2, wbs = 0x34
	}
	{
	  nop 2
	  disp	%ctpr1, fprintf
	  ldd,0	0x0, [ _f64,_lts0 outfile ], %r7
	  addd,1	0x0, [ _f64,_lts2 .LC.9 ], %b[1]
	  std,2	%r3, 0x8, %b[41]
	}
	{
	  nop 1
	  addd,0,sm	0x0, %r7, %b[0]
	}
	{
	  call	%ctpr1, wbs = 0x34
	}
	{
	  nop 2
	  disp	%ctpr3, fprintf
	  ldd,0	0x0, [ _f64,_lts0 outfile ], %r7
	  addd,1	0x0, [ _f64,_lts2 .LC.10 ], %b[1]
	  std,2	%r3, 0x8, %r9
	}
	{
	  nop 1
	  addd,0,sm	0x0, %r7, %b[0]
	}
	{
	  call	%ctpr3, wbs = 0x34
	}
	{
	  disp	%ctpr2, fprintf
	  ldd,0	0x0, [ _f64,_lts0 outfile ], %r7
	  addd,1,sm	0x0, [ _f64,_lts2 .LC.11 ], %b[1]
	  std,2	%r3, 0x8, %r8
	}
	{
	  nop 1
	  addd,0,sm	0x0, [ _f64,_lts0 configdata +200 ], %b[2]
	  std,2	0x10, %r3, %r1
	}
	{
	  nop 1
	  addd,0,sm	0x0, %r7, %b[0]
	}
	{
	  call	%ctpr2, wbs = 0x34
	}
	{
	  ibranch	.L14758 ? %pred1
	  ldd,0,sm	0x0, [ _f64,_lts0 outfile ], %r4
	}
	{
	  disp	%ctpr3, fprintf
	}
	{
	  addd,0,sm	0x0, _f16s,_lts0lo 0x258, %r1
	}
.L23536:
	{
	  addd,0,sm	0x0, %r5, %b[2]
	  addd,1,sm	0x0, [ _f64,_lts0 .LC.11 ], %b[1]
	  std,2	%r3, 0x8, %r8
	  adds,3,sm	%r6, 0x1, %r6
	  std,5	0x10, %r3, %r5
	}
	{
	  nop 2
	  addd,0,sm	%r1, [ _f64,_lts0 configdata ], %r7
	  addd,2,sm	0x0, %r4, %b[0]
	  cmplsb,3,sm	%r6, 0xa, %pred1
	}
	{
	  call	%ctpr3, wbs = 0x34
	}
	{
	  disp	%ctpr1, .L24240
	  ldd,0,sm	0x0, [ _f64,_lts0 outfile ], %r4
	}
	{
	  disp	%ctpr2, .L23536
	}
	{
	  ct	%ctpr1 ? ~%pred0
	}
	{
	  nop 2
	  disp	%ctpr3, fprintf
	  addd,0,sm	%r1, _f16s,_lts0lo 0xc8, %r1
	  addd,1,sm	0x0, %r7, %r5
	  pass	%pred1, @p0
	  andp	@p0, @p0, @p4
	  pass	@p4, %pred0
	}
	{
	  ct	%ctpr2
	}
.L24240:
	{
	  disp	%ctpr1, .L24245
	  cmplesb,0	%b[45], 0x0, %pred0
	  sxt,1,sm	0x2, %b[45], %r1
	  addd,2,sm	0x0, [ _f64,_lts0 .LC.12 ], %r4
	  sxt,3,sm	0x2, %b[45], %r5
	}
	{
	  disp	%ctpr2, printf
	}
	{
	  addd,0,sm	0x0, [ _f64,_lts0 .LC.12 ], %b[0] ? ~%pred0
	  addd,1,sm	0x0, %r1, %b[1] ? ~%pred0
	  std,2	%r3, 0x0, %r4 ? ~%pred0
	  std,5	%r3, 0x8, %r1 ? ~%pred0
	}
	{
	  call	%ctpr2, wbs = 0x34 ? ~%pred0
	}
	{
	  disp	%ctpr3, fprintf
	  ldd,0,sm	0x0, [ _f64,_lts0 outfile ], %r6
	  addd,1,sm	0x0, %r5, %b[2] ? ~%pred0
	  std,2	%r3, 0x8, %r4 ? ~%pred0
	  addd,3,sm	0x0, [ _f64,_lts2 .LC.12 ], %b[1] ? ~%pred0
	}
	{
	  ct	%ctpr1 ? %pred0
	  std,2	0x10, %r3, %r1 ? ~%pred0
	}
	nop
	{
	  addd,0,sm	0x0, %r6, %b[0] ? ~%pred0
	}
	{
	  call	%ctpr3, wbs = 0x34 ? ~%pred0
	}
.L24245:
	{
	  disp	%ctpr2, fprintf
	  ldw,0	0x0, [ _f64,_lts0 CPUavail ], %r1
	  ldd,2	0x0, [ _f64,_lts2 outfile ], %r4
	}
	{
	  addd,0	0x0, [ _f64,_lts0 .LC.13 ], %r5
	  addd,1	0x0, _lit64_ref,_lts0 0x0, %b[1]
	  addd,2	0x0, [ _f64,_lts2 .LC.14 ], %r6
	}
	{
	  addd,0	0x0, [ _f64,_lts0 timeday ], %b[47]
	  addd,1	0x0, [ _f64,_lts2 heading ], %r5
	  std,2	%r3, 0x8, %r5
	}
	{
	  sxt,0	0x2, %r1, %r1
	  addd,1,sm	0x0, %r4, %b[0]
	  addd,2	0x0, [ _f64,_lts0 .LC.15 ], %r4
	  addd,3	0x0, [ _f64,_lts2 .LC.16 ], %r7
	}
	{
	  addd,0,sm	0x0, %r1, %b[2]
	  std,2	0x10, %r3, %r1
	}
	{
	  call	%ctpr2, wbs = 0x34
	}
	{
	  nop 2
	  disp	%ctpr1, fprintf
	  ldd,0	0x0, [ _f64,_lts0 outfile ], %r1
	  addd,1	0x0, [ _f64,_lts2 .LC.10 ], %b[1]
	  std,2	%r3, 0x8, %r9
	}
	{
	  nop 1
	  addd,0,sm	0x0, %r1, %b[0]
	}
	{
	  call	%ctpr1, wbs = 0x34
	}
	{
	  disp	%ctpr3, fprintf
	  ldw,0	0x0, [ _f64,_lts0 threads ], %r1
	  ldd,2	0x0, [ _f64,_lts2 outfile ], %r8
	}
	{
	  addd,0	0x0, [ _f64,_lts0 heading ], %b[2]
	  addd,1	0x0, [ _f64,_lts2 .LC.14 ], %b[1]
	  std,2	%r3, 0x8, %r6
	  std,5	0x10, %r3, %r5
	}
	{
	  addd,0	0x0, [ _f64,_lts1 timeday ], %b[4]
	  std,2	%r3, _f16s,_lts0lo 0x20, %b[47]
	}
	{
	  sxt,0	0x2, %r1, %r1
	  addd,1,sm	0x0, %r8, %b[0]
	}
	{
	  addd,0,sm	0x0, %r1, %b[3]
	  std,2	0x18, %r3, %r1
	}
	{
	  call	%ctpr3, wbs = 0x34
	}
	{
	  nop 4
	  disp	%ctpr2, puts
	  addd,0	0x0, [ _f64,_lts0 .LC.38 ], %b[0]
	}
	{
	  call	%ctpr2, wbs = 0x34
	}
	{
	  nop 2
	  disp	%ctpr1, fprintf
	  ldd,0	0x0, [ _f64,_lts0 outfile ], %r1
	  addd,1	0x0, [ _f64,_lts2 .LC.15 ], %b[1]
	  std,2	%r3, 0x8, %r4
	}
	{
	  nop 1
	  addd,0,sm	0x0, %r1, %b[0]
	}
	{
	  call	%ctpr1, wbs = 0x34
	}
	{
	  nop 2
	  disp	%ctpr3, fprintf
	  ldd,0	0x0, [ _f64,_lts0 outfile ], %r1
	  addd,1	0x0, [ _f64,_lts2 .LC.16 ], %b[1]
	  std,2	%r3, 0x8, %r7
	}
	{
	  nop 1
	  addd,0,sm	0x0, %r1, %b[0]
	}
	{
	  call	%ctpr3, wbs = 0x34
	}
	{
	  nop 4
	  disp	%ctpr2, puts
	  addd,0	0x0, [ _f64,_lts0 .LC.37 ], %b[0]
	}
	{
	  call	%ctpr2, wbs = 0x34
	}
	{
	  disp	%ctpr1, printf
	  ldw,0	0x0, [ _f64,_lts0 threads ], %r1
	  addd,1	0x0, [ _f64,_lts2 .LC.14 ], %b[0]
	  std,2	%r3, 0x0, %r6
	}
	{
	  nop 1
	  addd,0	0x0, [ _f64,_lts0 timeday ], %b[3]
	  addd,1	0x0, [ _f64,_lts2 heading ], %b[1]
	  std,2	%r3, 0x8, %r5
	  std,5	0x18, %r3, %b[47]
	}
	{
	  sxt,0	0x2, %r1, %r1
	}
	{
	  addd,0,sm	0x0, %r1, %b[2]
	  std,2	0x10, %r3, %r1
	}
	{
	  call	%ctpr1, wbs = 0x34
	}
	{
	  disp	%ctpr2, puts
	  shls,0	%b[45], 0xb, %r12
	  cmplsb,1,sm	%b[44], 0x3, %pred0
	  addd,2	0x0, [ _f64,_lts0 .LC.36 ], %b[0]
	  shls,3	%b[45], 0xd, %r10
	  shls,4	%b[45], 0x8, %r11
	  shls,5	%b[45], 0x4, %r9
	}
	{
	  cmpesb,0,sm	%b[45], 0x0, %pred1
	  cmplsb,1,sm	0x0, %r36, %pred2
	  adds,2	0x0, 0x0, %r35
	  cmplesb,3,sm	%b[45], 0x0, %pred3
	  shls,4,sm	%b[45], 0x2, %r10
	  adds,5	%r10, %r9, %r9
	}
	{
	  cmpesb,0,sm	0x0, 0x0, %pred4
	  addd,1	0x0, _f16s,_lts0lo 0xffc0, %r13
	  subs,2	%r12, %r11, %r11
	  addd,3	0x0, _f64,_lts1 0x3f7fffef3f7fffef, %b[8]
	  addd,4	0x0, _lit16_ref,_lts0lo 0xffc0, %b[9]
	  shls,5,sm	%b[45], 0x6, %r12
	}
	{
	  adds,0	%r9, %r11, %r9
	  addd,1	0x0, _f64,_lts0 0x3f7fffef3f7fffef, %r11
	  subs,3,sm	%r12, %r10, %r10
	}
	{
	  adds,0	%r9, 0x1, %b[46]
	}
	{
	  call	%ctpr2, wbs = 0x34
	  cmplsb,0	0x0, %b[46], %pred5
	}
	{
	  disp	%ctpr1, puts
	  addd,0	0x0, [ _f64,_lts0 .LC.35 ], %b[0]
	  pass	%pred5, @p0
	  pass	%pred0, @p1
	  landp	@p0, @p1, @p4
	  pass	@p4, %pred6
	  pass	%pred3, @p2
	  landp	~@p4, @p2, @p5
	  pass	@p5, %pred7
	  landp	@p0, ~@p1, @p6
	  pass	@p6, %pred0
	}
	{
	  addd,0	0x0, 0x0, %r29 ? %pred5
	  merges,1,sm	0x1, %b[46], %r12, %pred5
	  pass	%pred6, @p0
	  pass	%pred2, @p1
	  landp	@p0, @p1, @p4
	  pass	@p4, %pred8
	  landp	@p0, ~@p1, @p5
	  pass	@p5, %pred2
	  pass	%pred1, @p2
	  landp	@p4, ~@p2, @p6
	  pass	@p6, %pred9
	}
	{
	  shrs,0,sm	%r12, 0x3, %b[10]
	  pass	%pred2, @p0
	  pass	%pred1, @p1
	  landp	@p0, @p1, @p4
	  pass	@p4, %pred5
	  pass	%pred8, @p2
	  landp	@p2, @p1, @p5
	  pass	@p5, %pred8
	  landp	@p0, ~@p1, @p6
	  pass	@p6, %pred1
	}
	{
	  addd,0,sm	%r2, _f16s,_lts0lo 0xfea0, %r21 ? %pred9
	  addd,1,sm	%r2, _f16s,_lts0hi 0xff70, %r22 ? %pred9
	  addd,2,sm	%r2, _f16s,_lts1lo 0xfe98, %r63 ? %pred9
	  addd,3,sm	%r2, %r13, %b[29] ? %pred9
	  addd,4,sm	0x0, %b[8], %r23 ? %pred9
	  addd,5,sm	0x0, %b[8], %b[31] ? %pred9
	  pass	%pred6, @p0
	  pass	%pred3, @p1
	  landp	~@p0, ~@p1, @p4
	  pass	@p4, %pred2
	}
	{
	  addd,0,sm	0x0, %b[8], %b[39] ? %pred9
	  addd,1,sm	%r2, %r13, %r62 ? %pred9
	  adds,2,sm	0x0, _f32s,_lts0 0x3f7fffef, %r19 ? %pred9
	  addd,3,sm	0x10, 0x0, %r58 ? %pred9
	  addd,4,sm	0x0, %b[8], %r20 ? %pred9
	  addd,5,sm	0x0, [ _f64,_lts1 .LC.18 ], %r59 ? %pred9
	}
	{
	  call	%ctpr1, wbs = 0x34
	  addd,0,sm	0x0, [ _f64,_lts0 .LC.18 ], %r60 ? %pred9
	  addd,1,sm	0x0, _lit64_ref,_lts0 0x0, %r61 ? %pred9
	  addd,2,sm	0x0, [ _f64,_lts2 .LC.19 ], %b[35] ? %pred9
	  addd,3,sm	0x0, _lit64_ref,_lts2 0x0, %b[36] ? %pred9
	  addd,4,sm	0x0, _lit64_ref,_lts2 0x0, %b[37] ? %pred9
	  merges,5,sm	0x0, %r10, %r56, %pred4 ? %pred9
	}
	{
	  disp	%ctpr3, fflush
	  ldd,0	0x0, [ _f64,_lts0 outfile ], %r13
	  addd,1,sm	0x0, [ _f64,_lts2 .LC.32 ], %r55 ? %pred9
	  addd,2,sm	0x0, 0x0, %r25 ? %pred9
	  cmpesb,3,sm	%b[10], 0x0, %pred3
	  addd,4,sm	0x0, %r11, %r18 ? %pred8
	  adds,5,sm	%r9, 0xa, %r57 ? %pred9
	}
	{
	  addd,0,sm	0x0, [ _f64,_lts0 runTests ], %r27 ? %pred9
	  addd,1,sm	0x0, _lit64_ref,_lts0 0x0, %r31 ? %pred9
	  addd,2,sm	0x0, [ _f64,_lts2 .LC.20 ], %r53 ? %pred9
	  addd,3,sm	0x0, _lit64_ref,_lts2 0x0, %r54 ? %pred9
	  addd,4,sm	0x0, %r11, %b[30] ? %pred8
	  addd,5,sm	0x0, %r11, %b[38] ? %pred8
	  pass	%pred1, @p0
	  pass	%pred3, @p1
	  landp	@p0, ~@p1, @p4
	  pass	@p4, %pred4
	  landp	@p0, @p1, @p5
	  pass	@p5, %pred3
	}
	{
	  addd,0,sm	0x0, [ _f64,_lts0 .LC.9 ], %r4 ? %pred5
	  addd,1,sm	0x0, [ _f64,_lts2 .LC.31 ], %r1 ? %pred5
	  addd,2,sm	0x0, %r11, %r17 ? %pred8
	  addd,3,sm	%r2, %b[9], %r51 ? %pred8
	  addd,4,sm	%r2, %b[9], %r52 ? %pred8
	  addd,5,sm	0x0, _lit64_ref,_lts0 0x0, %b[43] ? %pred8
	}
	{
	  addd,0,sm	0x0, %r13, %b[0]
	  addd,1,sm	%r2, _f16s,_lts0lo 0xff70, %r16 ? %pred8
	  addd,2,sm	0x0, [ _f64,_lts1 .LC.18 ], %r48 ? %pred8
	  addd,3,sm	0x0, _lit64_ref,_lts1 0x0, %r49 ? %pred8
	  addd,4,sm	0x0, _lit64_ref,_lts1 0x0, %r50 ? %pred8
	  addd,5,sm	%r2, _f16s,_lts0hi 0xfea0, %r15 ? %pred8
	}
	{
	  adds,0,sm	0x0, _f32s,_lts1 0x3f7fffef, %r14 ? %pred8
	  addd,1,sm	0x10, 0x0, %r45 ? %pred8
	  addd,2,sm	%r2, _f16s,_lts0lo 0xfe98, %r46 ? %pred8
	  addd,3,sm	0x0, [ _f64,_lts2 .LC.19 ], %b[32] ? %pred8
	  addd,4,sm	0x0, _lit64_ref,_lts2 0x0, %b[33] ? %pred8
	  addd,5,sm	0x0, _lit64_ref,_lts2 0x0, %b[34] ? %pred8
	}
	{
	  call	%ctpr3, wbs = 0x34
	  addd,0,sm	0x0, [ _f64,_lts0 .LC.31 ], %b[42] ? %pred8
	  addd,1,sm	0x0, [ _f64,_lts2 .LC.20 ], %r42 ? %pred8
	  addd,2,sm	0x0, _lit64_ref,_lts2 0x0, %r43 ? %pred8
	  adds,3,sm	0x0, %r10, %r47 ? %pred8
	  addd,4,sm	0x0, 0x0, %r24 ? %pred8
	  adds,5,sm	%r9, 0xa, %r44 ? %pred8
	}
	{
	  disp	%ctpr2, .L15683
	  addd,0,sm	0x0, [ _f64,_lts0 runTests ], %r26 ? %pred8
	  addd,1,sm	0x0, _lit64_ref,_lts0 0x0, %r30 ? %pred8
	  stw,2	0x0, [ _f64,_lts2 part ], %b[44] ? %pred0
	  adds,3,sm	0x0, %r12, %r7 ? %pred1
	  adds,4	0x0, %b[10], %r6 ? %pred1
	  adds,5	0x0, 0x0, %r5 ? %pred1
	}
	{
	  disp	%ctpr1, .L24827
	  ldd,0,sm	0x0, [ _f64,_lts2 outfile ], %r9
	  addd,1,sm	0x0, [ _f64,_lts0 .LC.32 ], %r41 ? %pred8
	  std,2	%r3, 0x8, %b[41] ? %pred2
	  subs,4,sm	0x3, %b[44], %r8 ? %pred4
	}
	{
	  ct	%ctpr2 ? %pred7
	  disp	%ctpr3, .L19486
	  addd,0,sm	0x0, [ _f64,_lts0 .LC.9 ], %b[1] ? %pred2
	}
	{
	  ct	%ctpr1 ? %pred9
	  disp	%ctpr2, .L24805
	}
	{
	  ct	%ctpr3 ? %pred5
	  disp	%ctpr1, .L24837
	  addd,0,sm	0x0, %r9, %b[0] ? %pred2
	}
	{
	  ct	%ctpr2 ? %pred8
	  disp	%ctpr3, .L20357
	}
	{
	  ct	%ctpr1 ? %pred4
	  disp	%ctpr2, fprintf
	}
	{
	  ct	%ctpr3 ? %pred3
	}
	{
	  call	%ctpr2, wbs = 0x34 ? %pred2
	}
	{
	  nop 1
	  disp	%ctpr1, puts
	  addd,0,sm	0x0, [ _f64,_lts0 .LC.30 ], %b[0] ? %pred2
	}
	{
	  call	%ctpr1, wbs = 0x34 ? %pred2
	}
.L15683:
	{
	  nop 4
	  disp	%ctpr2, local_time
	  addd,0	0x0, [ _f64,_lts0 .LC.25 ], %r1
	  addd,1	0x0, [ _f64,_lts2 .LC.26 ], %r4
	}
	{
	  call	%ctpr2, wbs = 0x34
	}
	{
	  nop 4
	  disp	%ctpr1, printf
	  addd,0	0x0, [ _f64,_lts0 timeday ], %b[1]
	  addd,1	0x0, [ _f64,_lts2 .LC.25 ], %b[0]
	  std,2	%r3, 0x0, %r1
	  std,5	%r3, 0x8, %b[47]
	}
	{
	  call	%ctpr1, wbs = 0x34
	}
	{
	  disp	%ctpr3, fprintf
	  ldd,0	0x0, [ _f64,_lts0 outfile ], %r1
	  addd,1	0x0, [ _f64,_lts2 timeday ], %b[2]
	  std,2	%r3, 0x8, %r4
	}
	{
	  nop 1
	  addd,0	0x0, [ _f64,_lts0 .LC.26 ], %b[1]
	  std,2	0x10, %r3, %b[47]
	}
	{
	  nop 1
	  addd,0,sm	0x0, %r1, %b[0]
	}
	{
	  call	%ctpr3, wbs = 0x34
	}
	{
	  nop 2
	  disp	%ctpr2, fclose
	  ldd,0	0x0, [ _f64,_lts0 outfile ], %r1
	}
	{
	  nop 1
	  addd,0,sm	0x0, %r1, %b[0]
	}
	{
	  call	%ctpr2, wbs = 0x34
	}
	{
	  nop 4
	  disp	%ctpr1, puts
	  addd,0	0x0, [ _f64,_lts0 .LC.28 ], %b[0]
	}
	{
	  call	%ctpr1, wbs = 0x34
	}
	{
	  nop 5
	  return	%ctpr3
	  addd,0	0x0, 0x0, %r0
	}
	{
	  ct	%ctpr3
	}
.L24827:
	{
	  addd,0,sm	%r21, _f16s,_lts0lo 0x78, %r10
	  addd,1,sm	%r21, _f16s,_lts0hi 0x50, %r11
	  addd,2,sm	%r21, _f16s,_lts1lo 0x28, %r12
	  addd,3,sm	%r22, _lit16_ref,_lts1lo 0x28, %r13
	  addd,4,sm	0x2, 0x0, %r30
	  addd,5,sm	0x0, 0x0, %r26
	}
.L17900:
	{
	  stw,2	0x0, [ _f64,_lts0 part ], %b[44]
	}
.L17916:
	{
	  nop 2
	  disp	%ctpr2, posix_memalign
	  adds,0	0x0, %b[40], %r1
	  adds,1	0x0, 0x0, %r16
	  stw,2	0x0, [ _f64,_lts0 repeats ], %r39
	  stw,5	0x0, [ _f64,_lts2 words ], %b[40]
	}
.L17921:
	{
	  addd,0,sm	0x0, %r63, %b[0]
	  cmpesb,1,sm	%r33, 0x1, %pred0
	  sxt,2	0x2, %r1, %r41
	  addd,5,sm	0x0, %r58, %b[1]
	}
	{
	  shld,0	%r41, 0x2, %b[2]
	}
	{
	  call	%ctpr2, wbs = 0x34
	}
	{
	  disp	%ctpr2, .L21659
	  cmpesb,0	%b[0], 0x0, %pred1
	  ldw,3,sm	0x0, [ _f64,_lts2 threads ], %g17
	  ldw,5,sm	0x0, [ _f64,_lts0 words ], %g16
	}
	{
	  disp	%ctpr3, .L21355
	  ldd,0,sm	%r2, _f16s,_lts0lo 0xfe98, %r9
	}
	{
	  disp	%ctpr1, .L21639
	}
	{
	  ibranch	.L14957 ? ~%pred1
	  cmplsb,3,sm	0x0, %g16, %pred2
	  cmplsb,4,sm	0x1, %g16, %pred3
	  sdivs,5,sm	%g16, %g17, %g17
	}
	{
	  cmpedb,0,sm	%r9, 0x0, %pred4
	  cmpandedb,1,sm	%r9, 0x4, %pred5
	}
	{
	  merges,0,sm	0x1, %g16, %g18, %pred2
	  merges,1,sm	0x1, %g16, %r40, %pred2
	  pass	%pred1, @p0
	  pass	%pred4, @p1
	  landp	@p0, ~@p1, @p4
	  pass	@p4, %pred6
	  pass	%pred0, @p2
	  landp	@p4, ~@p2, @p5
	  pass	@p5, %pred7
	  landp	@p4, @p2, @p6
	  pass	@p6, %pred0
	}
	{
	  cmplsb,0,sm	%g18, _f16s,_lts0lo 0x10, %pred9
	  cmplsb,1,sm	%r40, _lit16_ref,_lts0lo 0x10, %pred11
	  pass	%pred7, @p0
	  pass	%pred2, @p1
	  landp	@p0, @p1, @p4
	  pass	@p4, %pred8
	  pass	%pred0, @p2
	  landp	@p2, @p1, @p5
	  pass	@p5, %pred10
	  landp	@p0, ~@p1, @p6
	  pass	@p6, %pred12
	}
	{
	  adds,0	0x0, 0x0, %g18 ? %pred7
	  adds,1	0x0, 0x0, %g19 ? %pred0
	  std,2	0x0, [ _f64,_lts0 xcalcs ], %r9 ? %pred6
	  adds,3	0x0, %g16, %r4 ? %pred7
	  pass	%pred8, @p0
	  pass	%pred9, @p1
	  landp	@p0, ~@p1, @p4
	  pass	@p4, %pred13
	  pass	%pred5, @p2
	  landp	@p4, ~@p2, @p5
	  pass	@p5, %pred14
	  pass	%pred3, @p3
	  landp	~@p2, ~@p3, @p6
	  pass	@p6, %pred15
	}
	{
	  addd,0	0x0, 0x0, %r15 ? %pred8
	  addd,1	0x0, 0x0, %r24 ? %pred10
	  pass	%pred10, @p0
	  pass	%pred11, @p1
	  landp	@p0, ~@p1, @p4
	  pass	@p4, %pred7
	  pass	%pred5, @p2
	  landp	@p4, ~@p2, @p5
	  pass	@p5, %pred5
	  landp	@p0, @p1, @p6
	  pass	@p6, %pred11
	}
	{
	  adds,0	0x1, 0x0, %g18 ? %pred14
	  addd,1	0x1, 0x0, %r15 ? %pred14
	  stw,2	%r9, 0x0, %r19 ? %pred14
	  pass	%pred13, @p0
	  pass	%pred15, @p1
	  landp	@p0, ~@p1, @p4
	  pass	@p4, %pred10
	  pass	%pred7, @p2
	  landp	@p2, ~@p1, @p5
	  pass	@p5, %pred7
	}
	{
	  adds,0	0x1, 0x0, %g19 ? %pred5
	  cmplsb,1,sm	%g18, %g16, %pred13
	  subs,2,sm	%g16, %g18, %g18
	  addd,3	0x1, 0x0, %r24 ? %pred5
	  stw,5	%r9, 0x0, %r19 ? %pred5
	  pass	%pred8, @p0
	  pass	%pred9, @p1
	  landp	@p0, @p1, @p4
	  pass	@p4, %pred8
	  pass	%pred0, @p2
	  pass	%pred2, @p3
	  landp	@p2, ~@p3, @p5
	  pass	@p5, %pred0
	}
	{
	  cmplsb,0,sm	%g19, %g16, %pred2
	  subs,1,sm	%g16, %g19, %g16
	  pass	%pred1, @p0
	  pass	%pred4, @p1
	  landp	@p0, @p1, @p4
	  pass	@p4, %pred1
	  pass	%pred14, @p2
	  pass	%pred3, @p3
	  landp	@p2, ~@p3, @p5
	  pass	@p5, %pred4
	}
	{
	  merges,0,sm	0x1, %g18, %g18, %pred13
	  pass	%pred5, @p0
	  pass	%pred3, @p1
	  landp	@p0, ~@p1, @p4
	  pass	@p4, %pred3
	}
	{
	  shrs,0,sm	%g18, 0x1, %g19
	  merges,1,sm	0x1, %g16, %r18, %pred2
	  adds,2,sm	0x0, %g18, %r14 ? %pred10
	}
	{
	  ct	%ctpr1 ? %pred8
	  cmplsb,0,sm	0x0, %g19, %pred2
	  shrs,1,sm	%r18, 0x1, %r17
	  adds,2	0x0, %g19, %r8 ? %pred10
	  stw,5	0x0, [ _f64,_lts0 xcalcs +8 ], %g17 ? %pred6
	}
	{
	  ct	%ctpr2 ? %pred11
	  disp	%ctpr1, .L17971
	  cmplsb,0,sm	0x0, %r17, %pred5
	}
	{
	  disp	%ctpr2, .L21378
	  merges,0,sm	0x1, %g19, %g16, %pred2
	  merges,1,sm	0x1, %g19, %r7, %pred2 ? %pred10
	}
	{
	  ct	%ctpr3 ? %pred10
	  shrs,0,sm	%g16, 0x1, %r6 ? %pred10
	  merges,1,sm	0x1, %r17, %r5, %pred5
	}
	{
	  ct	%ctpr2 ? %pred7
	  disp	%ctpr3, .L18213
	  shrs,0,sm	%r5, 0x1, %r1
	}
	{
	  ibranch	.L14957 ? %pred1
	}
	{
	  ct	%ctpr1 ? %pred12
	}
	{
	  ct	%ctpr3 ? %pred0
	}
	{
	  ibranch	.L17971 ? %pred4
	}
	{
	  ct	%ctpr3 ? %pred3
	}
.L21659:
	{
	  disp	%ctpr1, .L20098
	  sxt,0	0x6, %r40, %g16
	  addd,1	0x0, _f64,_lts0 0x20ff2000000000, %g17
	  aaurwd,2	%r26, %aasti1
	  aaurwd,5	%r9, %aad0
	}
	{
	  insfd,0	%g17, _f32s,_lts0 0x8800, %g16, %g16
	}
	{
	  nop 3
	  rwd,0	%g16, %lsr
	}
.L20098:
	{
	  loop_mode
	  alc	alcf=1, alct=1
	  ct	%ctpr1 ? %NOT_LOOP_END
	  staaw,5	%r19, %aad0[ %aasti1 ]
	  incr,5	%aaincr0
	}
	{
	  nop 4
	  disp	%ctpr1, .L18213
	  aaurw,2	%r34, %aabf0
	}
	{
	  ct	%ctpr1
	}
.L21378:
	{
	  disp	%ctpr1, .L18279
	  cmplsb,0	0x0, %r1, %pred0
	  sxt,1,sm	0x6, %r1, %g16
	  addd,2	0x0, _f64,_lts0 0x40ff2000000000, %g17
	  addd,3	%r9, 0x8, %g18
	  shld,4	%r24, 0x2, %g19
	  aaurwd,5	%r30, %aaincr1
	}
	{
	  aaurwd,2	%r26, %aasti1
	  addd,3	%g18, %g19, %g18
	  addd,4	%r9, %g19, %g19
	  aaurwd,5	%r26, %aasti2
	}
	{
	  insfd,0,sm	%g17, _f32s,_lts0 0x8800, %g16, %g16 ? %pred0
	  addd,1,sm	0x0, _f64,_lts1 0x40ff2000000001, %g16 ? ~%pred0
	  aaurwd,5	%g18, %aad0
	}
	{
	  rwd,0	%g16, %lsr
	  andd,1	%g16, _f64,_lts0 0xffffffff, %g17
	  aaurwd,2	%g19, %aad1
	}
	{
	  shld,1	%g17, 0x2, %g16
	}
	{
	  nop 1
	  addd,0	%r24, %g16, %r4
	}
.L18279:
	{
	  loop_mode
	  alc	alcf=1, alct=1
	  ct	%ctpr1 ? %NOT_LOOP_END
	  staad,2	%r23, %aad0[ %aasti1 ]
	  incr,2	%aaincr1
	  staad,5	%r23, %aad1[ %aasti2 ]
	  incr,5	%aaincr1
	}
	{
	  shls,0	%r1, 0x1, %g16
	  shls,1	%r17, 0x1, %g17
	  aaurw,2	%r34, %aabf0
	  shld,3,sm	%r4, 0x2, %g18
	}
	{
	  nop 1
	  cmpesb,0	%g16, %r5, %pred0
	  cmpesb,1	%g17, %r18, %pred1
	}
	{
	  addd,0	%r4, 0x2, %r4 ? ~%pred0
	  std,2	%r9, %g18, %b[39] ? ~%pred0
	}
	{
	  shld,0,sm	%r4, 0x2, %g16
	}
	{
	  stw,2	%r9, %g16, %r19 ? ~%pred1
	}
.L18213:
	{
	  nop 4
	  disp	%ctpr2, start_time
	  addd,0	0x0, 0x0, %r1
	}
	{
	  call	%ctpr2, wbs = 0x34
	}
	{
	  nop 2
	  disp	%ctpr3, .L18223
	  ldw,0	0x0, [ _f64,_lts0 threads ], %g16
	}
	{
	  sxt,0	0x2, %g16, %g16
	}
	{
	  nop 2
	  cmpldb,0	0x0, %g16, %pred0
	}
	{
	  ct	%ctpr3 ? ~%pred0
	}
	{
	  nop 3
	  disp	%ctpr3, pthread_create
	  ldd,0	0x0, [ _f64,_lts0 attrt ], %r4
	  addd,1,sm	0x0, 0x0, %r5
	}
.L18261:
	{
	  addd,0,sm	0x0, %r4, %b[1]
	  addd,1,sm	0x0, %r1, %b[3]
	  addd,2,sm	0x0, %r31, %b[2]
	  addd,3	%r5, [ _f64,_lts0 tid ], %b[0]
	  addd,4,sm	0x8, %r5, %r5
	}
	{
	  call	%ctpr3, wbs = 0x34
	  addd,0	%r1, 0x1, %r1
	}
	{
	  disp	%ctpr1, .L18261
	  ldw,0	0x0, [ _f64,_lts0 threads ], %g16
	}
	{
	  nop 1
	  disp	%ctpr3, pthread_create
	}
	{
	  sxt,0	0x2, %g16, %g16
	}
	{
	  nop 1
	  cmpldb,0	%r1, %g16, %pred0
	}
	{
	  nop 1
	  ldd,0	0x0, [ _f64,_lts0 attrt ], %r4 ? %pred0
	}
	{
	  ct	%ctpr1 ? %pred0
	}
.L18223:
	{
	  nop 2
	  disp	%ctpr3, .L18246
	  ldw,0	0x0, [ _f64,_lts0 threads ], %g16
	  addd,1	0x0, 0x0, %r1
	}
	{
	  sxt,0	0x2, %g16, %g16
	}
	{
	  nop 2
	  cmpldb,0	0x0, %g16, %pred0
	}
	{
	  ct	%ctpr3 ? ~%pred0
	}
	{
	  disp	%ctpr3, pthread_join
	  addd,0,sm	0x0, 0x0, %r5
	}
	{
	  nop 2
	  ldd,0	%r5, [ _f64,_lts0 tid ], %r4
	}
.L18234:
	{
	  addd,0,sm	0x0, %r4, %b[0]
	  addd,1,sm	0x0, %r25, %b[1]
	  addd,2	%r1, 0x1, %r1
	  addd,3,sm	0x8, %r5, %r5
	}
	{
	  call	%ctpr3, wbs = 0x34
	}
	{
	  disp	%ctpr1, .L18234
	  ldw,0	0x0, [ _f64,_lts0 threads ], %g16
	}
	{
	  nop 1
	  disp	%ctpr3, pthread_join
	}
	{
	  sxt,0	0x2, %g16, %g16
	}
	{
	  nop 1
	  cmpldb,0	%r1, %g16, %pred0
	}
	{
	  nop 1
	  ldd,0	%r5, [ _f64,_lts0 tid ], %r4 ? %pred0
	}
	{
	  ct	%ctpr1 ? %pred0
	}
.L18246:
	{
	  disp	%ctpr2, end_time
	  getfd,0,sm	%r9, _f16s,_lts0lo 0x42, %r1
	  adds,1	0x0, 0x0, %r5
	  adds,2	0x0, 0x0, %r33
	}
	{
	  nop 3
	  cmpandedb,0,sm	%r1, 0x1, %pred0
	}
	{
	  call	%ctpr2, wbs = 0x34
	}
	{
	  disp	%ctpr1, .L21355
	  ldw,3	0x0, [ _f64,_lts0 repeats ], %g16
	  ldd,5	0x0, [ _f64,_lts2 secs ], %g17
	}
	{
	  disp	%ctpr3, .L21639
	  ldw,0	0x0, [ _f64,_lts0 words ], %g18
	}
	{
	  disp	%ctpr2, .L17971
	}
	{
	  istofd,3,sm	%g16, %g16
	}
	{
	  cmplsb,0	0x0, %g18, %pred1
	  cmplsb,1,sm	0x1, %g18, %pred2
	  adds,2	0x0, %g18, %r4
	}
	{
	  pass	%pred0, @p0
	  pass	%pred2, @p1
	  landp	~@p0, ~@p1, @p4
	  pass	@p4, %pred3
	}
	{
	  merges,0,sm	0x1, %g18, %g19, %pred1
	  addd,1	0x0, 0x0, %r15 ? %pred1
	}
	{
	  cmplsb,0,sm	%g19, _f16s,_lts0lo 0x10, %pred4
	  fmuld,5,sm	%g16, _f64,_lts1 0x402e000000000000, %g16
	}
	{
	  pass	%pred1, @p0
	  pass	%pred4, @p1
	  landp	@p0, ~@p1, @p4
	  pass	@p4, %pred5
	  pass	%pred0, @p2
	  landp	@p4, ~@p2, @p5
	  pass	@p5, %pred0
	  pass	%pred3, @p3
	  landp	@p4, ~@p3, @p6
	  pass	@p6, %pred3
	}
	{
	  pass	%pred1, @p0
	  pass	%pred4, @p1
	  landp	@p0, @p1, @p4
	  pass	@p4, %pred4
	  pass	%pred0, @p2
	  pass	%pred2, @p3
	  landp	@p2, ~@p3, @p5
	  pass	@p5, %pred2
	  landp	~@p5, @p0, @p6
	  pass	@p6, %pred1
	}
	{
	  adds,0	0x1, 0x0, %r5 ? %pred0
	  addd,1	0x1, 0x0, %r15 ? %pred0
	  stw,2	%r9, 0x0, %r19 ? %pred0
	}
	{
	  nop 1
	  cmplsb,0,sm	%r5, %g18, %pred0
	  subs,1,sm	%g18, %r5, %g17
	  fdivd,5,sm	%g16, %g17, %g16
	}
	{
	  merges,0,sm	0x1, %g17, %g17, %pred0
	}
	{
	  shrs,0,sm	%g17, 0x1, %g18
	  adds,1,sm	0x0, %g17, %r14 ? %pred3
	}
	{
	  nop 1
	  cmplsb,0,sm	0x0, %g18, %pred0
	  adds,1	0x0, %g18, %r8 ? %pred3
	}
	{
	  merges,0,sm	0x1, %g18, %g17, %pred0
	}
	{
	  nop 6
	  shrs,0	%g17, 0x1, %r6 ? %pred3
	  adds,1	0x0, %g17, %r7 ? %pred3
	}
	{
	  nop 3
	  fdtoistr,3,sm	%g16, %r39
	}
	{
	  ct	%ctpr1 ? %pred3
	  stw,5	0x0, [ _f64,_lts0 repeats ], %r39
	}
	{
	  ct	%ctpr3 ? %pred4
	}
	{
	  ct	%ctpr2 ? ~%pred1
	}
.L21639:
	{
	  disp	%ctpr1, .L20052
	  cmplsb,0	0x0, %r4, %pred0
	  sxt,1,sm	0x6, %r4, %g16
	  addd,2	0x0, _f64,_lts0 0x20ff2000000000, %g17
	  aaurwd,5	%r26, %aasti1
	}
	{
	  aaurwd,2	%r9, %aad0
	}
	{
	  insfd,0,sm	%g17, _f32s,_lts0 0x8800, %g16, %g16 ? %pred0
	  addd,1,sm	0x0, _f64,_lts1 0x20ff2000000001, %g16 ? ~%pred0
	}
	{
	  nop 3
	  rwd,0	%g16, %lsr
	}
.L20052:
	{
	  loop_mode
	  alc	alcf=1, alct=1
	  ct	%ctpr1 ? %NOT_LOOP_END
	  staaw,5	%r19, %aad0[ %aasti1 ]
	  incr,5	%aaincr0
	}
	{
	  nop 4
	  disp	%ctpr1, .L17971
	  aaurw,2	%r34, %aabf0
	}
	{
	  ct	%ctpr1
	}
.L24058:
	{
	  nop 1
	  disp	%ctpr2, .L24063
	  ldd,0,sm	0x0, [ _f64,_lts0 outfile ], %r1
	  cmpesb,1	%r1, 0x0, %pred0
	}
	{
	  addd,0,sm	0x0, %r54, %b[1] ? ~%pred0
	  std,2	%r3, 0x8, %r53 ? ~%pred0
	}
	{
	  ct	%ctpr2 ? %pred0
	  addd,0,sm	0x0, %r1, %b[0] ? ~%pred0
	}
	{
	  call	%ctpr3, wbs = 0x34 ? ~%pred0
	}
	{
	  nop 4
	  disp	%ctpr3, puts
	  addd,0,sm	0x0, %r55, %b[0] ? ~%pred0
	}
	{
	  call	%ctpr3, wbs = 0x34 ? ~%pred0
	}
.L24077:
	{
	  disp	%ctpr2, free
	  addd,0,sm	0x0, %r9, %b[0]
	  adds,1	%r16, 0x1, %r16
	}
	{
	  nop 3
	  cmplsb,0	%r16, %r36, %pred0
	}
	{
	  call	%ctpr2, wbs = 0x34
	}
	{
	  disp	%ctpr1, .L17921
	  ldw,0	0x0, [ _f64,_lts0 repeats ], %g16
	  ldw,2	0x0, [ _f64,_lts2 words ], %g17
	}
	{
	  disp	%ctpr2, posix_memalign
	}
	{
	  disp	%ctpr3, .L18145
	}
	{
	  smulx,0	%g16, _f32s,_lts1 0x66666667, %g18
	  sars,1	%g16, _f16s,_lts0lo 0x1f, %g16
	  shls,2	%g17, 0x1, %g19
	}
	{
	  shls,0	%g17, 0x3, %g17
	}
	{
	  adds,1	%g17, %g19, %r1
	}
	{
	  nop 2
	  stw,2	0x0, [ _f64,_lts0 words ], %r1
	}
	{
	  shrd,0	%g18, _f16s,_lts0lo 0x20, %g17
	}
	{
	  sars,0	%g17, 0x2, %g17
	}
	{
	  subs,0	%g17, %g16, %g16
	}
	{
	  nop 1
	  cmplsb,0	%g16, 0x1, %pred1
	}
	{
	  adds,0	0x1, 0x0, %g16 ? %pred1
	}
	{
	  ct	%ctpr1 ? %pred0
	  stw,2	0x0, [ _f64,_lts0 repeats ], %g16
	}
	{
	  ct	%ctpr3 ? ~%pred0
	}
.L24063:
	{
	  nop 2
	  disp	%ctpr2, fprintf
	  ldd,0	0x0, [ _f64,_lts0 outfile ], %r4
	  fstofd,1	%r8, %r1
	  std,2	%r3, 0x8, %b[35]
	  addd,3,sm	0x0, %b[36], %b[1]
	}
	{
	  addd,0,sm	0x0, %r4, %b[0]
	}
	{
	  nop 1
	  std,2	0x10, %r3, %r1
	}
	{
	  addd,0,sm	0x0, %r1, %b[2]
	}
	{
	  call	%ctpr2, wbs = 0x34
	}
	{
	  nop 2
	  disp	%ctpr1, printf
	  ldw,0	%r9, 0x0, %r1
	  addd,1,sm	0x0, %b[37], %b[0]
	  std,2	%r3, 0x0, %b[35]
	}
	{
	  nop 3
	  fstofd,0,sm	%r1, %r1
	}
	{
	  nop 1
	  std,2	%r3, 0x8, %r1
	}
	{
	  addd,0,sm	0x0, %r1, %b[1]
	}
	{
	  call	%ctpr1, wbs = 0x34
	}
	{
	  nop 4
	  disp	%ctpr1, .L24077
	}
	{
	  ct	%ctpr1
	}
.L18112:
	{
	  nop 2
	  disp	%ctpr2, fprintf
	  ldd,0	0x0, [ _f64,_lts0 outfile ], %r4
	  fstofd,1	%r8, %r1
	  std,2	%r3, 0x8, %b[35]
	  addd,3,sm	0x0, %b[36], %b[1]
	}
	{
	  addd,0,sm	0x0, %r4, %b[0]
	}
	{
	  nop 1
	  std,2	0x10, %r3, %r1
	}
	{
	  addd,0,sm	0x0, %r1, %b[2]
	}
	{
	  call	%ctpr2, wbs = 0x34
	}
	{
	  nop 2
	  disp	%ctpr1, printf
	  ldw,0	%r9, 0x0, %r1
	  addd,1,sm	0x0, %b[37], %b[0]
	  std,2	%r3, 0x0, %b[35]
	}
	{
	  nop 3
	  fstofd,0,sm	%r1, %r1
	}
	{
	  nop 1
	  std,2	%r3, 0x8, %r1
	}
	{
	  addd,0,sm	0x0, %r1, %b[1]
	}
	{
	  call	%ctpr1, wbs = 0x34
	}
	{
	  nop 4
	  disp	%ctpr1, .L18130
	}
	{
	  ct	%ctpr1
	}
.L21355:
	{
	  disp	%ctpr1, .L17962
	  cmplsb,0	0x0, %r6, %pred0
	  sxt,1,sm	0x6, %r6, %g16
	  addd,2	0x0, _f64,_lts0 0x40ff2000000000, %g17
	  addd,3	%r9, 0x8, %g18
	  shld,4	%r15, 0x2, %g19
	  aaurwd,5	%r30, %aaincr1
	}
	{
	  aaurwd,2	%r26, %aasti1
	  addd,3	%g18, %g19, %g18
	  addd,4	%r9, %g19, %g19
	  aaurwd,5	%r26, %aasti2
	}
	{
	  insfd,0,sm	%g17, _f32s,_lts0 0x8800, %g16, %g16 ? %pred0
	  addd,1,sm	0x0, _f64,_lts1 0x40ff2000000001, %g16 ? ~%pred0
	  aaurwd,5	%g18, %aad0
	}
	{
	  rwd,0	%g16, %lsr
	  andd,1	%g16, _f64,_lts0 0xffffffff, %g17
	  aaurwd,2	%g19, %aad1
	}
	{
	  shld,1	%g17, 0x2, %g16
	}
	{
	  nop 1
	  addd,0	%r15, %g16, %r1
	}
.L17962:
	{
	  loop_mode
	  alc	alcf=1, alct=1
	  ct	%ctpr1 ? %NOT_LOOP_END
	  staad,2	%r20, %aad0[ %aasti1 ]
	  incr,2	%aaincr1
	  staad,5	%r20, %aad1[ %aasti2 ]
	  incr,5	%aaincr1
	}
	{
	  shls,0	%r6, 0x1, %g16
	  shls,1	%r8, 0x1, %g17
	  aaurw,2	%r34, %aabf0
	  shld,3,sm	%r1, 0x2, %g18
	}
	{
	  nop 1
	  cmpesb,0	%g16, %r7, %pred0
	  cmpesb,1	%g17, %r14, %pred1
	}
	{
	  addd,0	%r1, 0x2, %r1 ? ~%pred0
	  std,2	%r9, %g18, %b[31] ? ~%pred0
	}
	{
	  shld,0,sm	%r1, 0x2, %g16
	}
	{
	  stw,2	%r9, %g16, %r19 ? ~%pred1
	}
.L17971:
	{
	  nop 4
	  disp	%ctpr2, start_time
	  addd,0	0x0, 0x0, %r1
	}
	{
	  call	%ctpr2, wbs = 0x34
	}
	{
	  nop 2
	  disp	%ctpr3, .L17981
	  ldw,0	0x0, [ _f64,_lts0 threads ], %g16
	}
	{
	  sxt,0	0x2, %g16, %g16
	}
	{
	  nop 2
	  cmpldb,0	0x0, %g16, %pred0
	}
	{
	  ct	%ctpr3 ? ~%pred0
	}
	{
	  nop 3
	  disp	%ctpr3, pthread_create
	  ldd,0	0x0, [ _f64,_lts0 attrt ], %r4
	  addd,1,sm	0x0, 0x0, %r5
	}
.L18194:
	{
	  addd,0,sm	0x0, %r4, %b[1]
	  addd,1,sm	0x0, %r1, %b[3]
	  addd,2,sm	0x0, %r27, %b[2]
	  addd,3	%r5, [ _f64,_lts0 tid ], %b[0]
	  addd,4,sm	0x8, %r5, %r5
	}
	{
	  call	%ctpr3, wbs = 0x34
	  addd,0	%r1, 0x1, %r1
	}
	{
	  disp	%ctpr1, .L18194
	  ldw,0	0x0, [ _f64,_lts0 threads ], %g16
	}
	{
	  nop 1
	  disp	%ctpr3, pthread_create
	}
	{
	  sxt,0	0x2, %g16, %g16
	}
	{
	  nop 1
	  cmpldb,0	%r1, %g16, %pred0
	}
	{
	  nop 1
	  ldd,0	0x0, [ _f64,_lts0 attrt ], %r4 ? %pred0
	}
	{
	  ct	%ctpr1 ? %pred0
	}
.L17981:
	{
	  nop 2
	  disp	%ctpr3, .L18004
	  ldw,0	0x0, [ _f64,_lts0 threads ], %g16
	  addd,1	0x0, 0x0, %r1
	}
	{
	  sxt,0	0x2, %g16, %g16
	}
	{
	  nop 2
	  cmpldb,0	0x0, %g16, %pred0
	}
	{
	  ct	%ctpr3 ? ~%pred0
	}
	{
	  disp	%ctpr3, pthread_join
	  addd,0,sm	0x0, 0x0, %r5
	}
	{
	  nop 2
	  ldd,0	%r5, [ _f64,_lts0 tid ], %r4
	}
.L17992:
	{
	  addd,0,sm	0x0, %r4, %b[0]
	  addd,1,sm	0x0, %r25, %b[1]
	  addd,2	%r1, 0x1, %r1
	  addd,3,sm	0x8, %r5, %r5
	}
	{
	  call	%ctpr3, wbs = 0x34
	}
	{
	  disp	%ctpr1, .L17992
	  ldw,0	0x0, [ _f64,_lts0 threads ], %g16
	}
	{
	  nop 1
	  disp	%ctpr3, pthread_join
	}
	{
	  sxt,0	0x2, %g16, %g16
	}
	{
	  nop 1
	  cmpldb,0	%r1, %g16, %pred0
	}
	{
	  nop 1
	  ldd,0	%r5, [ _f64,_lts0 tid ], %r4 ? %pred0
	}
	{
	  ct	%ctpr1 ? %pred0
	}
.L18004:
	{
	  nop 4
	  disp	%ctpr2, end_time
	  adds,0	0x1, 0x0, %r24
	  adds,1	0x0, 0x0, %r1
	}
	{
	  call	%ctpr2, wbs = 0x34
	}
	{
	  disp	%ctpr1, fprintf
	  istofd,0	%r56, %r41
	  addd,1,sm	0x0, %b[29], %b[2]
	  addd,2,sm	0x0, %r60, %b[1]
	  ldw,3	0x0, [ _f64,_lts2 words ], %r40
	  ldw,5	0x0, [ _f64,_lts0 opwd ], %r4
	}
	{
	  ldw,3	0x0, [ _f64,_lts0 repeats ], %r42
	  ldd,5	0x0, [ _f64,_lts2 secs ], %r43
	}
	{
	  ldd,2	0x0, [ _f64,_lts0 outfile ], %r44
	  std,5	%r3, 0x8, %r59
	}
	{
	  std,2	0x10, %r3, %r37
	  istofs,3,sm	%r4, %r45
	  istofs,4,sm	%r40, %r46
	  sxt,5	0x2, %r4, %r4
	}
	{
	  sxt,0	0x2, %r40, %r40
	  std,2	%r3, _f16s,_lts0lo 0x20, %r4
	  istofs,3	%r42, %r47
	  fdtofs,4	%r43, %r48
	  sxt,5	0x2, %r42, %r42
	}
	{
	  addd,0,sm	0x0, %r43, %b[6]
	  faddd,1	%r32, %r43, %r32
	  std,2	0x18, %r3, %r40
	  std,5	%r3, _f16s,_lts0lo 0x28, %r42
	}
	{
	  addd,0,sm	0x0, %r4, %b[4]
	  addd,1,sm	0x0, %r44, %b[0]
	  std,2	%r3, _f16s,_lts0lo 0x30, %r43
	  addd,5,sm	0x0, %r40, %b[3]
	}
	{
	  nop 1
	  addd,0,sm	0x0, %r42, %b[5]
	  fmuls,3,sm	%r46, %r45, %r4
	}
	{
	  fcmpltdb,0	%r41, %r32, %pred0
	}
	nop
	{
	  nop 1
	  fmuls,3,sm	%r47, %r4, %r4
	}
	{
	  nop 1
	  adds,0	0x0, %r57, %r35 ? %pred0
	}
	{
	  nop 7
	  fdivs,5,sm	%r4, _f32s,_lts0 0x49742400, %r4
	}
	{
	  nop 2
	}
	{
	  nop 7
	  fdivs,5,sm	%r4, %r48, %r4
	}
	{
	  nop 2
	}
	{
	  nop 3
	  fstofd,3,sm	%r4, %r40
	}
	{
	  nop 1
	  std,5	%r3, _f16s,_lts0lo 0x38, %r40
	}
	{
	  addd,0,sm	0x0, %r40, %b[7]
	}
	{
	  call	%ctpr1, wbs = 0x34
	}
	{
	  disp	%ctpr3, printf
	  fstofd,0	%r4, %b[6]
	  addd,1,sm	0x0, %r62, %b[1]
	  ldd,2	0x0, [ _f64,_lts0 secs ], %r41
	  addd,3,sm	0x0, %r61, %b[0]
	  ldw,5	0x0, [ _f64,_lts2 repeats ], %r42
	}
	{
	  ldw,0	0x0, [ _f64,_lts0 opwd ], %r4
	  ldw,2	0x0, [ _f64,_lts2 words ], %r43
	}
	{
	  std,2	%r3, 0x0, %r59
	  std,5	%r3, 0x8, %r37
	}
	{
	  addd,0,sm	0x0, %r41, %b[5]
	  std,2	%r3, _f16s,_lts0lo 0x30, %r40
	  sxt,3	0x2, %r42, %r42
	}
	{
	  sxt,0	0x2, %r4, %r4
	  sxt,1	0x2, %r43, %r40
	  std,2	%r3, _f16s,_lts0lo 0x20, %r42
	  addd,3,sm	0x0, %r42, %b[4]
	  std,5	%r3, _f16s,_lts0hi 0x28, %r41
	}
	{
	  addd,0,sm	0x0, %r4, %b[3]
	  addd,1,sm	0x0, %r40, %b[2]
	  std,2	0x10, %r3, %r40
	  std,5	0x18, %r3, %r4
	}
	{
	  call	%ctpr3, wbs = 0x34
	}
	{
	  nop 2
	  disp	%ctpr2, fflush
	  ldd,0	0x0, [ _f64,_lts0 outfile ], %r4
	}
	{
	  nop 1
	  addd,0,sm	0x0, %r4, %b[0]
	}
	{
	  call	%ctpr2, wbs = 0x34
	}
	{
	  disp	%ctpr1, .L24058
	  ldw,0	0x0, [ _f64,_lts0 words ], %r7
	  ldw,2	%r9, 0x0, %r8
	  ldw,3,sm	0x0, [ _f64,_lts2 repeats ], %r6
	}
	{
	  nop 1
	  disp	%ctpr3, fprintf
	  ldw,0,sm	0x0, [ _f64,_lts0 opwd ], %r5
	}
	{
	  cmplsb,0	0x1, %r7, %pred0
	  fcmpeqsb,1	%r8, _f32s,_lts0 0x3f7fffef, %pred1
	  subs,2,sm	%r7, 0x1, %g16
	}
	nop
	{
	  merges,0,sm	0x1, %g16, %r18, %pred0
	  addd,1	0x1, 0x0, %r14 ? %pred0
	}
	{
	  shrs,0,sm	%r18, 0x1, %r17
	  ands,1,sm	%r18, _f16s,_lts0lo 0xfffe, %r15
	}
	{
	  ct	%ctpr1 ? ~%pred0
	  cmpesb,0,sm	%r17, 0x0, %pred1
	  adds,2	0x1, 0x0, %r1 ? %pred1
	  adds,5	0x1, 0x0, %r38 ? %pred1
	}
	{
	  nop 2
	  pass	%pred0, @p0
	  pass	%pred1, @p1
	  landp	@p0, @p1, @p4
	  pass	@p4, %pred0
	}
	{
	  ibranch	.L20904 ? %pred0
	}
	{
	  nop 1
	  disp	%ctpr1, .L19774
	  cmplsb,0	0x0, %r17, %pred0
	  sxt,1,sm	0x6, %r17, %g16
	  addd,2	0x0, _f64,_lts0 0x180ff2000000000, %g17
	  addd,3	%r9, 0x4, %r4
	}
	{
	  insfd,0,sm	%g17, _f32s,_lts0 0x8800, %g16, %g16 ? %pred0
	  addd,1,sm	0x0, _f64,_lts1 0x180ff2000000001, %g16 ? ~%pred0
	}
	{
	  setwd	wsz = 0x38, nfx = 0x1, dbl = 0x0
	  setbn	rsz = 0x9, rbs = 0x20, rcur = 0x0
	  setbp	psz = 0x9
	  rwd,0	%g16, %lsr
	  andd,1	%g16, _f64,_lts1 0xffffffff, %g17
	}
	{
	  addd,1,sm	0x4, 0x0, %b[2]
	  adds,2,sm	0x0, %r28, %b[16]
	  addd,3,sm	0x0, %r29, %b[7]
	  adds,4,sm	0x0, %r24, %b[6]
	}
	{
	  ldw,0,sm	%r4, %b[2], %g18
	  cmplsb,1,sm	%b[16], 0xa, %pred1
	  ldw,2,sm	%r9, %b[2], %g16
	  shld,3	%g17, 0x1, %g17
	}
	{
	  addd,0,sm	0x8, %b[2], %g19
	  addd,3	0x1, %g17, %r14
	}
	{
	  ldw,0,sm	%r9, %g19, %g17
	  addd,1,sm	0x8, %g19, %b[18]
	  ldw,2,sm	%r4, %g19, %b[15]
	}
	{
	  fcmpneqsb,0,sm	%r8, %g16, %pred8
	  fcmpneqsb,1,sm	%r8, %g18, %pred5
	  addd,2,sm	0x0, %g16, %b[11]
	}
	{
	  addd,0,sm	0x0, %g18, %b[17]
	}
	{
	  fcmpneqsb,0,sm	%r8, %g17, %pred7
	  addd,1,sm	0x0, %g17, %b[9]
	}
	{
	  nop 1
	}
	{
	  nop 1
	  pass	%pred8, @p0
	  pass	%pred1, @p1
	  landp	@p0, @p1, @p4
	  pass	@p4, %pred2
	}
	{
	  adds,0,sm	%b[16], 0x1, %g16 ? %pred2
	  addd,1,sm	%b[7], 0x1, %g17 ? %pred2
	}
	{
	  adds,0,sm	0x0, %g16, %b[14] ? %pred2
	  adds,1,sm	0x0, %b[16], %g16 ? ~%pred2
	  addd,2,sm	0x0, %g17, %b[5] ? %pred2
	  addd,3,sm	0x0, %b[7], %g17 ? ~%pred2
	}
	{
	  cmplsb,0,sm	%g16, 0xa, %pred1
	  adds,1,sm	0x0, %g16, %b[14] ? ~%pred2
	  shld,3,sm	%g17, 0x2, %b[8]
	  addd,4,sm	0x0, %g17, %b[5] ? ~%pred2
	}
	{
	  nop 1
	  pass	%pred5, @p0
	  pass	%pred1, @p1
	  landp	@p0, @p1, @p4
	  pass	@p4, %pred3
	}
	{
	  addd,0,sm	%g17, 0x1, %g17 ? %pred3
	  adds,1,sm	%g16, 0x1, %g16 ? %pred3
	}
	{
	  addd,0,sm	0x0, %g17, %b[5] ? %pred3
	  adds,1,sm	0x0, %g16, %b[14] ? %pred3
	}
.L19774:
	{
	  loop_mode
	  cmplsb,1,sm	%b[14], 0xa, %pred0
	  ldw,3,sm	%r4, %b[18], %b[13]
	}
	{
	  loop_mode
	  shld,1,sm	%b[7], 0x2, %b[19]
	  pass	%pred7, @p0
	  pass	%pred0, @p1
	  landp	@p0, @p1, @p4
	  pass	@p4, %pred1
	}
	{
	  loop_mode
	  ldw,0,sm	%r9, %b[18], %b[7]
	  stw,2	%r13, %b[19], %r8 ? %pred2
	  addd,5,sm	0x8, %b[18], %b[16]
	}
	{
	  loop_mode
	  adds,0,sm	%b[14], 0x1, %b[12] ? %pred1
	  stw,2	%r10, %b[19], %r6 ? %pred2
	  fcmpneqsb,3,sm	%r8, %b[15], %pred4
	  adds,4,sm	0x2, %b[6], %b[4]
	  stw,5	%r21, %b[19], %b[6] ? %pred2
	}
	{
	  loop_mode
	  adds,0,sm	0x0, %b[14], %b[12] ? ~%pred1
	  stw,2	%r11, %b[19], %r5 ? %pred2
	  stw,5	%r12, %b[19], %r7 ? %pred2
	}
	{
	  loop_mode
	  cmplsb,1,sm	%b[12], 0xa, %pred0
	  stw,2	%r11, %b[8], %r5 ? %pred3
	  addd,3,sm	%b[5], 0x1, %b[3] ? %pred1
	  adds,4,sm	%b[6], 0x1, %b[18]
	  stw,5	%r22, %b[19], %b[11] ? %pred2
	}
	{
	  loop_mode
	  stw,2	%r21, %b[8], %b[18] ? %pred3
	  addd,4,sm	0x0, %b[5], %b[3] ? ~%pred1
	  stw,5	%r10, %b[8], %r6 ? %pred3
	  pass	%pred4, @p0
	  pass	%pred0, @p1
	  landp	@p0, @p1, @p4
	  pass	@p4, %pred2
	}
	{
	  loop_mode
	  stw,2	%r22, %b[8], %b[17] ? %pred3
	  fcmpneqsb,3,sm	%r8, %b[7], %pred6
	  shld,4,sm	%b[3], 0x2, %b[6]
	  stw,5	%r12, %b[8], %r7 ? %pred3
	}
	{
	  loop_mode
	  alc	alcf=1, alct=1
	  abn	abnf=1, abnt=1
	  abp	abpf=1, abpt=1
	  ct	%ctpr1 ? %NOT_LOOP_END
	  addd,0,sm	%b[3], 0x1, %b[3] ? %pred2
	  adds,1,sm	0x0, 0x1, %r1 ? %pred8
	  adds,2,sm	%b[12], 0x1, %b[12] ? %pred2
	  adds,3,sm	0x0, %r1, %r1 ? ~%pred8
	  adds,4,sm	0x0, 0x1, %r1 ? %pred5
	  stw,5	%r13, %b[8], %r8 ? %pred3
	}
	{
	  nop 1
	  setwd	wsz = 0x38, nfx = 0x1, dbl = 0x0
	  setbn	rsz = 0x17, rbs = 0x20, rcur = 0x14
	  setbp	psz = 0x0
	  adds,0,sm	0x0, %b[16], %r28
	  addd,1,sm	0x0, %b[7], %r29
	}
.L20904:
	{
	  disp	%ctpr2, .L18107
	  cmpesb,0	%r15, %r18, %pred0
	  cmplsb,1,sm	%r28, 0xa, %pred1
	  shld,2,sm	%r14, 0x2, %g16
	  adds,3	%r15, 0x1, %g17
	  shld,4,sm	%r29, 0x2, %g18
	}
	{
	  nop 2
	  disp	%ctpr1, fprintf
	  ldw,0,sm	%r9, %g16, %g16
	}
	{
	  fcmpneqsb,0,sm	%r8, %g16, %pred2
	}
	{
	  nop 1
	}
	{
	  ct	%ctpr2 ? %pred0
	  pass	%pred0, @p0
	  pass	%pred2, @p1
	  landp	~@p0, ~@p1, @p4
	  pass	@p4, %pred3
	  landp	~@p0, @p1, @p5
	  pass	@p5, %pred0
	  pass	%pred1, @p2
	  landp	@p5, @p2, @p6
	  pass	@p6, %pred1
	}
	{
	  disp	%ctpr1, fprintf
	}
	{
	  adds,0	0x1, 0x0, %r1 ? %pred0
	  adds,1	%r28, 0x1, %r28 ? %pred1
	  stw,2	%r22, %g18, %g16 ? %pred1
	  addd,3	%r29, 0x1, %r29 ? %pred1
	  stw,5	%r21, %g18, %g17 ? %pred1
	}
	{
	  ct	%ctpr2 ? %pred3
	  stw,2	%r13, %g18, %r8 ? %pred1
	  stw,5	%r12, %g18, %r7 ? %pred1
	}
	{
	  disp	%ctpr1, fprintf
	  stw,2	%r11, %g18, %r5 ? %pred1
	  stw,5	%r10, %g18, %r6 ? %pred1
	}
.L18107:
	{
	  nop 1
	  disp	%ctpr2, .L18112
	  ldd,0,sm	0x0, [ _f64,_lts0 outfile ], %r1
	  cmpesb,1	%r1, 0x0, %pred0
	}
	{
	  addd,0,sm	0x0, %r54, %b[1] ? ~%pred0
	  std,2	%r3, 0x8, %r53 ? ~%pred0
	}
	{
	  ct	%ctpr2 ? %pred0
	  addd,0,sm	0x0, %r1, %b[0] ? ~%pred0
	}
	{
	  call	%ctpr1, wbs = 0x34 ? ~%pred0
	}
	{
	  nop 4
	  disp	%ctpr3, puts
	  addd,0,sm	0x0, %r55, %b[0] ? ~%pred0
	}
	{
	  call	%ctpr3, wbs = 0x34 ? ~%pred0
	}
.L18130:
	{
	  disp	%ctpr2, free
	  addd,0,sm	0x0, %r9, %b[0]
	  adds,1	%r16, 0x1, %r16
	}
	{
	  nop 3
	  cmplsb,0	%r16, %r36, %pred0
	}
	{
	  call	%ctpr2, wbs = 0x34
	}
	{
	  disp	%ctpr1, .L17921
	  ldw,0	0x0, [ _f64,_lts0 repeats ], %g16
	  ldw,2	0x0, [ _f64,_lts2 words ], %g17
	}
	{
	  nop 1
	  disp	%ctpr2, posix_memalign
	}
	{
	  smulx,0	%g16, _f32s,_lts1 0x66666667, %g18
	  sars,1	%g16, _f16s,_lts0lo 0x1f, %g16
	  shls,2	%g17, 0x1, %g19
	}
	{
	  shls,0	%g17, 0x3, %g17
	}
	{
	  adds,1	%g17, %g19, %r1
	}
	{
	  nop 2
	  stw,2	0x0, [ _f64,_lts0 words ], %r1
	}
	{
	  shrd,0	%g18, _f16s,_lts0lo 0x20, %g17
	}
	{
	  sars,0	%g17, 0x2, %g17
	}
	{
	  subs,0	%g17, %g16, %g16
	}
	{
	  nop 1
	  cmplsb,0	%g16, 0x1, %pred1
	}
	{
	  adds,0	0x1, 0x0, %g16 ? %pred1
	}
	{
	  ct	%ctpr1 ? %pred0
	  stw,2	0x0, [ _f64,_lts0 repeats ], %g16
	}
.L18145:
	{
	  nop 2
	  disp	%ctpr1, .L17916
	  ldw,0	0x0, [ _f64,_lts0 part ], %g16
	}
	{
	  adds,0	%g16, 0x1, %g16
	}
	{
	  nop 2
	  cmplsb,0	%g16, 0x3, %pred0
	  stw,2	0x0, [ _f64,_lts0 part ], %g16
	}
	{
	  ct	%ctpr1 ? %pred0
	}
	{
	  disp	%ctpr1, .L17900
	  adds,0	%r35, 0x1, %r35
	}
	{
	  nop 2
	  disp	%ctpr3, .L24630
	  cmplsb,0	%r35, %b[46], %pred0
	}
	{
	  ct	%ctpr3 ? ~%pred0
	}
	{
	  ct	%ctpr1 ? %pred0
	}
.L24805:
	{
	  addd,0,sm	%r15, _f16s,_lts0lo 0x78, %r10
	  addd,1,sm	%r15, _f16s,_lts0hi 0x50, %r11
	  addd,2,sm	%r15, _f16s,_lts1lo 0x28, %r12
	  addd,3,sm	%r16, _lit16_ref,_lts1lo 0x28, %r13
	  addd,4,sm	0x2, 0x0, %r31
	  addd,5,sm	0x0, 0x0, %r27
	}
.L18716:
	{
	  stw,2	0x0, [ _f64,_lts0 part ], %b[44]
	}
.L18725:
	{
	  nop 2
	  disp	%ctpr2, posix_memalign
	  adds,0	0x0, %b[40], %r1
	  adds,1	0x0, 0x0, %r21
	  stw,2	0x0, [ _f64,_lts0 repeats ], %r39
	  stw,5	0x0, [ _f64,_lts2 words ], %b[40]
	}
.L18730:
	{
	  addd,0,sm	0x0, %r46, %b[0]
	  cmpesb,1,sm	%r33, 0x1, %pred0
	  sxt,2	0x2, %r1, %r53
	  addd,5,sm	0x0, %r45, %b[1]
	}
	{
	  shld,0	%r53, 0x2, %b[2]
	}
	{
	  call	%ctpr2, wbs = 0x34
	}
	{
	  disp	%ctpr2, .L21619
	  cmpesb,0	%b[0], 0x0, %pred1
	  ldw,3,sm	0x0, [ _f64,_lts2 threads ], %g17
	  ldw,5,sm	0x0, [ _f64,_lts0 words ], %g16
	}
	{
	  disp	%ctpr3, .L21401
	  ldd,0,sm	%r2, _f16s,_lts0lo 0xfe98, %r9
	}
	{
	  disp	%ctpr1, .L21599
	}
	{
	  ibranch	.L14957 ? ~%pred1
	  cmplsb,3,sm	0x0, %g16, %pred2
	  cmplsb,4,sm	0x1, %g16, %pred3
	  sdivs,5,sm	%g16, %g17, %g17
	}
	{
	  cmpedb,0,sm	%r9, 0x0, %pred4
	  cmpandedb,1,sm	%r9, 0x4, %pred5
	}
	{
	  merges,0,sm	0x1, %g16, %g18, %pred2
	  merges,1,sm	0x1, %g16, %r40, %pred2
	  pass	%pred1, @p0
	  pass	%pred4, @p1
	  landp	@p0, ~@p1, @p4
	  pass	@p4, %pred6
	  pass	%pred0, @p2
	  landp	@p4, ~@p2, @p5
	  pass	@p5, %pred7
	  landp	@p4, @p2, @p6
	  pass	@p6, %pred0
	}
	{
	  cmplsb,0,sm	%g18, _f16s,_lts0lo 0x10, %pred9
	  cmplsb,1,sm	%r40, _lit16_ref,_lts0lo 0x10, %pred11
	  pass	%pred7, @p0
	  pass	%pred2, @p1
	  landp	@p0, @p1, @p4
	  pass	@p4, %pred8
	  pass	%pred0, @p2
	  landp	@p2, @p1, @p5
	  pass	@p5, %pred10
	  landp	@p0, ~@p1, @p6
	  pass	@p6, %pred12
	}
	{
	  adds,0	0x0, 0x0, %g18 ? %pred7
	  adds,1	0x0, 0x0, %g19 ? %pred0
	  std,2	0x0, [ _f64,_lts0 xcalcs ], %r9 ? %pred6
	  adds,3	0x0, %g16, %r4 ? %pred7
	  pass	%pred8, @p0
	  pass	%pred9, @p1
	  landp	@p0, ~@p1, @p4
	  pass	@p4, %pred13
	  pass	%pred5, @p2
	  landp	@p4, ~@p2, @p5
	  pass	@p5, %pred14
	  pass	%pred3, @p3
	  landp	~@p2, ~@p3, @p6
	  pass	@p6, %pred15
	}
	{
	  addd,0	0x0, 0x0, %r20 ? %pred8
	  addd,1	0x0, 0x0, %r25 ? %pred10
	  pass	%pred10, @p0
	  pass	%pred11, @p1
	  landp	@p0, ~@p1, @p4
	  pass	@p4, %pred7
	  pass	%pred5, @p2
	  landp	@p4, ~@p2, @p5
	  pass	@p5, %pred5
	  landp	@p0, @p1, @p6
	  pass	@p6, %pred11
	}
	{
	  adds,0	0x1, 0x0, %g18 ? %pred14
	  addd,1	0x1, 0x0, %r20 ? %pred14
	  stw,2	%r9, 0x0, %r14 ? %pred14
	  pass	%pred13, @p0
	  pass	%pred15, @p1
	  landp	@p0, ~@p1, @p4
	  pass	@p4, %pred10
	  pass	%pred7, @p2
	  landp	@p2, ~@p1, @p5
	  pass	@p5, %pred7
	}
	{
	  adds,0	0x1, 0x0, %g19 ? %pred5
	  cmplsb,1,sm	%g18, %g16, %pred13
	  subs,2,sm	%g16, %g18, %g18
	  addd,3	0x1, 0x0, %r25 ? %pred5
	  stw,5	%r9, 0x0, %r14 ? %pred5
	  pass	%pred8, @p0
	  pass	%pred9, @p1
	  landp	@p0, @p1, @p4
	  pass	@p4, %pred8
	  pass	%pred0, @p2
	  pass	%pred2, @p3
	  landp	@p2, ~@p3, @p5
	  pass	@p5, %pred0
	}
	{
	  cmplsb,0,sm	%g19, %g16, %pred2
	  subs,1,sm	%g16, %g19, %g16
	  pass	%pred1, @p0
	  pass	%pred4, @p1
	  landp	@p0, @p1, @p4
	  pass	@p4, %pred1
	  pass	%pred14, @p2
	  pass	%pred3, @p3
	  landp	@p2, ~@p3, @p5
	  pass	@p5, %pred4
	}
	{
	  merges,0,sm	0x1, %g18, %g18, %pred13
	  pass	%pred5, @p0
	  pass	%pred3, @p1
	  landp	@p0, ~@p1, @p4
	  pass	@p4, %pred3
	}
	{
	  shrs,0,sm	%g18, 0x1, %g19
	  merges,1,sm	0x1, %g16, %r23, %pred2
	  adds,2,sm	0x0, %g18, %r19 ? %pred10
	}
	{
	  ct	%ctpr1 ? %pred8
	  cmplsb,0,sm	0x0, %g19, %pred2
	  shrs,1,sm	%r23, 0x1, %r22
	  adds,2	0x0, %g19, %r8 ? %pred10
	  stw,5	0x0, [ _f64,_lts0 xcalcs +8 ], %g17 ? %pred6
	}
	{
	  ct	%ctpr2 ? %pred11
	  disp	%ctpr1, .L18780
	  cmplsb,0,sm	0x0, %r22, %pred5
	}
	{
	  disp	%ctpr2, .L21424
	  merges,0,sm	0x1, %g19, %g16, %pred2
	  merges,1,sm	0x1, %g19, %r7, %pred2 ? %pred10
	}
	{
	  ct	%ctpr3 ? %pred10
	  shrs,0,sm	%g16, 0x1, %r6 ? %pred10
	  merges,1,sm	0x1, %r22, %r5, %pred5
	}
	{
	  ct	%ctpr2 ? %pred7
	  disp	%ctpr3, .L19032
	  shrs,0,sm	%r5, 0x1, %r1
	}
	{
	  ibranch	.L14957 ? %pred1
	}
	{
	  ct	%ctpr1 ? %pred12
	}
	{
	  ct	%ctpr3 ? %pred0
	}
	{
	  ibranch	.L18780 ? %pred4
	}
	{
	  ct	%ctpr3 ? %pred3
	}
.L21619:
	{
	  disp	%ctpr1, .L19956
	  sxt,0	0x6, %r40, %g16
	  addd,1	0x0, _f64,_lts0 0x20ff2000000000, %g17
	  aaurwd,2	%r27, %aasti1
	  aaurwd,5	%r9, %aad0
	}
	{
	  insfd,0	%g17, _f32s,_lts0 0x8800, %g16, %g16
	}
	{
	  nop 3
	  rwd,0	%g16, %lsr
	}
.L19956:
	{
	  loop_mode
	  alc	alcf=1, alct=1
	  ct	%ctpr1 ? %NOT_LOOP_END
	  staaw,5	%r14, %aad0[ %aasti1 ]
	  incr,5	%aaincr0
	}
	{
	  nop 4
	  disp	%ctpr1, .L19032
	  aaurw,2	%r34, %aabf0
	}
	{
	  ct	%ctpr1
	}
.L21424:
	{
	  disp	%ctpr1, .L19098
	  cmplsb,0	0x0, %r1, %pred0
	  sxt,1,sm	0x6, %r1, %g16
	  addd,2	0x0, _f64,_lts0 0x40ff2000000000, %g17
	  addd,3	%r9, 0x8, %g18
	  shld,4	%r25, 0x2, %g19
	  aaurwd,5	%r31, %aaincr1
	}
	{
	  aaurwd,2	%r27, %aasti1
	  addd,3	%g18, %g19, %g18
	  addd,4	%r9, %g19, %g19
	  aaurwd,5	%r27, %aasti2
	}
	{
	  insfd,0,sm	%g17, _f32s,_lts0 0x8800, %g16, %g16 ? %pred0
	  addd,1,sm	0x0, _f64,_lts1 0x40ff2000000001, %g16 ? ~%pred0
	  aaurwd,5	%g18, %aad0
	}
	{
	  rwd,0	%g16, %lsr
	  andd,1	%g16, _f64,_lts0 0xffffffff, %g17
	  aaurwd,2	%g19, %aad1
	}
	{
	  shld,1	%g17, 0x2, %g16
	}
	{
	  nop 1
	  addd,0	%r25, %g16, %r4
	}
.L19098:
	{
	  loop_mode
	  alc	alcf=1, alct=1
	  ct	%ctpr1 ? %NOT_LOOP_END
	  staad,2	%r18, %aad0[ %aasti1 ]
	  incr,2	%aaincr1
	  staad,5	%r18, %aad1[ %aasti2 ]
	  incr,5	%aaincr1
	}
	{
	  shls,0	%r1, 0x1, %g16
	  shls,1	%r22, 0x1, %g17
	  aaurw,2	%r34, %aabf0
	  shld,3,sm	%r4, 0x2, %g18
	}
	{
	  nop 1
	  cmpesb,0	%g16, %r5, %pred0
	  cmpesb,1	%g17, %r23, %pred1
	}
	{
	  addd,0	%r4, 0x2, %r4 ? ~%pred0
	  std,2	%r9, %g18, %b[38] ? ~%pred0
	}
	{
	  shld,0,sm	%r4, 0x2, %g16
	}
	{
	  stw,2	%r9, %g16, %r14 ? ~%pred1
	}
.L19032:
	{
	  nop 4
	  disp	%ctpr2, start_time
	  addd,0	0x0, 0x0, %r1
	}
	{
	  call	%ctpr2, wbs = 0x34
	}
	{
	  nop 2
	  disp	%ctpr3, .L19042
	  ldw,0	0x0, [ _f64,_lts0 threads ], %g16
	}
	{
	  sxt,0	0x2, %g16, %g16
	}
	{
	  nop 2
	  cmpldb,0	0x0, %g16, %pred0
	}
	{
	  ct	%ctpr3 ? ~%pred0
	}
	{
	  nop 3
	  disp	%ctpr3, pthread_create
	  ldd,0	0x0, [ _f64,_lts0 attrt ], %r4
	  addd,1,sm	0x0, 0x0, %r5
	}
.L19080:
	{
	  addd,0,sm	0x0, %r4, %b[1]
	  addd,1,sm	0x0, %r1, %b[3]
	  addd,2,sm	0x0, %r30, %b[2]
	  addd,3	%r5, [ _f64,_lts0 tid ], %b[0]
	  addd,4,sm	0x8, %r5, %r5
	}
	{
	  call	%ctpr3, wbs = 0x34
	  addd,0	%r1, 0x1, %r1
	}
	{
	  disp	%ctpr1, .L19080
	  ldw,0	0x0, [ _f64,_lts0 threads ], %g16
	}
	{
	  nop 1
	  disp	%ctpr3, pthread_create
	}
	{
	  sxt,0	0x2, %g16, %g16
	}
	{
	  nop 1
	  cmpldb,0	%r1, %g16, %pred0
	}
	{
	  nop 1
	  ldd,0	0x0, [ _f64,_lts0 attrt ], %r4 ? %pred0
	}
	{
	  ct	%ctpr1 ? %pred0
	}
.L19042:
	{
	  nop 2
	  disp	%ctpr3, .L19065
	  ldw,0	0x0, [ _f64,_lts0 threads ], %g16
	  addd,1	0x0, 0x0, %r1
	}
	{
	  sxt,0	0x2, %g16, %g16
	}
	{
	  nop 2
	  cmpldb,0	0x0, %g16, %pred0
	}
	{
	  ct	%ctpr3 ? ~%pred0
	}
	{
	  disp	%ctpr3, pthread_join
	  addd,0,sm	0x0, 0x0, %r5
	}
	{
	  nop 2
	  ldd,0	%r5, [ _f64,_lts0 tid ], %r4
	}
.L19053:
	{
	  addd,0,sm	0x0, %r4, %b[0]
	  addd,1,sm	0x0, %r24, %b[1]
	  addd,2	%r1, 0x1, %r1
	  addd,3,sm	0x8, %r5, %r5
	}
	{
	  call	%ctpr3, wbs = 0x34
	}
	{
	  disp	%ctpr1, .L19053
	  ldw,0	0x0, [ _f64,_lts0 threads ], %g16
	}
	{
	  nop 1
	  disp	%ctpr3, pthread_join
	}
	{
	  sxt,0	0x2, %g16, %g16
	}
	{
	  nop 1
	  cmpldb,0	%r1, %g16, %pred0
	}
	{
	  nop 1
	  ldd,0	%r5, [ _f64,_lts0 tid ], %r4 ? %pred0
	}
	{
	  ct	%ctpr1 ? %pred0
	}
.L19065:
	{
	  disp	%ctpr2, end_time
	  getfd,0,sm	%r9, _f16s,_lts0lo 0x42, %r1
	  adds,1	0x0, 0x0, %r5
	  adds,2	0x0, 0x0, %r33
	}
	{
	  nop 3
	  cmpandedb,0,sm	%r1, 0x1, %pred0
	}
	{
	  call	%ctpr2, wbs = 0x34
	}
	{
	  disp	%ctpr1, .L21401
	  ldw,3	0x0, [ _f64,_lts0 repeats ], %g16
	  ldd,5	0x0, [ _f64,_lts2 secs ], %g17
	}
	{
	  disp	%ctpr3, .L21599
	  ldw,0	0x0, [ _f64,_lts0 words ], %g18
	}
	{
	  disp	%ctpr2, .L18780
	}
	{
	  istofd,3,sm	%g16, %g16
	}
	{
	  cmplsb,0	0x0, %g18, %pred1
	  cmplsb,1,sm	0x1, %g18, %pred2
	  adds,2	0x0, %g18, %r4
	}
	{
	  pass	%pred0, @p0
	  pass	%pred2, @p1
	  landp	~@p0, ~@p1, @p4
	  pass	@p4, %pred3
	}
	{
	  merges,0,sm	0x1, %g18, %g19, %pred1
	  addd,1	0x0, 0x0, %r20 ? %pred1
	}
	{
	  cmplsb,0,sm	%g19, _f16s,_lts0lo 0x10, %pred4
	  fmuld,5,sm	%g16, _f64,_lts1 0x402e000000000000, %g16
	}
	{
	  pass	%pred1, @p0
	  pass	%pred4, @p1
	  landp	@p0, ~@p1, @p4
	  pass	@p4, %pred5
	  pass	%pred0, @p2
	  landp	@p4, ~@p2, @p5
	  pass	@p5, %pred0
	  pass	%pred3, @p3
	  landp	@p4, ~@p3, @p6
	  pass	@p6, %pred3
	}
	{
	  pass	%pred1, @p0
	  pass	%pred4, @p1
	  landp	@p0, @p1, @p4
	  pass	@p4, %pred4
	  pass	%pred0, @p2
	  pass	%pred2, @p3
	  landp	@p2, ~@p3, @p5
	  pass	@p5, %pred2
	  landp	~@p5, @p0, @p6
	  pass	@p6, %pred1
	}
	{
	  adds,0	0x1, 0x0, %r5 ? %pred0
	  addd,1	0x1, 0x0, %r20 ? %pred0
	  stw,2	%r9, 0x0, %r14 ? %pred0
	}
	{
	  nop 1
	  cmplsb,0,sm	%r5, %g18, %pred0
	  subs,1,sm	%g18, %r5, %g17
	  fdivd,5,sm	%g16, %g17, %g16
	}
	{
	  merges,0,sm	0x1, %g17, %g17, %pred0
	}
	{
	  shrs,0,sm	%g17, 0x1, %g18
	  adds,1,sm	0x0, %g17, %r19 ? %pred3
	}
	{
	  nop 1
	  cmplsb,0,sm	0x0, %g18, %pred0
	  adds,1	0x0, %g18, %r8 ? %pred3
	}
	{
	  merges,0,sm	0x1, %g18, %g17, %pred0
	}
	{
	  nop 6
	  shrs,0	%g17, 0x1, %r6 ? %pred3
	  adds,1	0x0, %g17, %r7 ? %pred3
	}
	{
	  nop 3
	  fdtoistr,3,sm	%g16, %r39
	}
	{
	  ct	%ctpr1 ? %pred3
	  stw,5	0x0, [ _f64,_lts0 repeats ], %r39
	}
	{
	  ct	%ctpr3 ? %pred4
	}
	{
	  ct	%ctpr2 ? ~%pred1
	}
.L21599:
	{
	  disp	%ctpr1, .L19910
	  cmplsb,0	0x0, %r4, %pred0
	  sxt,1,sm	0x6, %r4, %g16
	  addd,2	0x0, _f64,_lts0 0x20ff2000000000, %g17
	  aaurwd,5	%r27, %aasti1
	}
	{
	  aaurwd,2	%r9, %aad0
	}
	{
	  insfd,0,sm	%g17, _f32s,_lts0 0x8800, %g16, %g16 ? %pred0
	  addd,1,sm	0x0, _f64,_lts1 0x20ff2000000001, %g16 ? ~%pred0
	}
	{
	  nop 3
	  rwd,0	%g16, %lsr
	}
.L19910:
	{
	  loop_mode
	  alc	alcf=1, alct=1
	  ct	%ctpr1 ? %NOT_LOOP_END
	  staaw,5	%r14, %aad0[ %aasti1 ]
	  incr,5	%aaincr0
	}
	{
	  nop 4
	  disp	%ctpr1, .L18780
	  aaurw,2	%r34, %aabf0
	}
	{
	  ct	%ctpr1
	}
.L24107:
	{
	  nop 1
	  disp	%ctpr2, .L24112
	  ldd,0,sm	0x0, [ _f64,_lts0 outfile ], %r1
	  cmpesb,1	%r1, 0x0, %pred0
	}
	{
	  addd,0,sm	0x0, %r43, %b[1] ? ~%pred0
	  std,2	%r3, 0x8, %r42 ? ~%pred0
	}
	{
	  ct	%ctpr2 ? %pred0
	  addd,0,sm	0x0, %r1, %b[0] ? ~%pred0
	}
	{
	  call	%ctpr3, wbs = 0x34 ? ~%pred0
	}
	{
	  nop 4
	  disp	%ctpr3, puts
	  addd,0,sm	0x0, %r41, %b[0] ? ~%pred0
	}
	{
	  call	%ctpr3, wbs = 0x34 ? ~%pred0
	}
.L24126:
	{
	  disp	%ctpr2, free
	  addd,0,sm	0x0, %r9, %b[0]
	  adds,1	%r21, 0x1, %r21
	}
	{
	  nop 3
	  cmplsb,0	%r21, %r36, %pred0
	}
	{
	  call	%ctpr2, wbs = 0x34
	}
	{
	  disp	%ctpr1, .L18730
	  ldw,0	0x0, [ _f64,_lts0 repeats ], %g16
	  ldw,2	0x0, [ _f64,_lts2 words ], %g17
	}
	{
	  disp	%ctpr2, posix_memalign
	}
	{
	  disp	%ctpr3, .L18954
	}
	{
	  smulx,0	%g16, _f32s,_lts1 0x66666667, %g18
	  sars,1	%g16, _f16s,_lts0lo 0x1f, %g16
	  shls,2	%g17, 0x1, %g19
	}
	{
	  shls,0	%g17, 0x3, %g17
	}
	{
	  adds,1	%g17, %g19, %r1
	}
	{
	  nop 2
	  stw,2	0x0, [ _f64,_lts0 words ], %r1
	}
	{
	  shrd,0	%g18, _f16s,_lts0lo 0x20, %g17
	}
	{
	  sars,0	%g17, 0x2, %g17
	}
	{
	  subs,0	%g17, %g16, %g16
	}
	{
	  nop 1
	  cmplsb,0	%g16, 0x1, %pred1
	}
	{
	  adds,0	0x1, 0x0, %g16 ? %pred1
	}
	{
	  ct	%ctpr1 ? %pred0
	  stw,2	0x0, [ _f64,_lts0 repeats ], %g16
	}
	{
	  ct	%ctpr3 ? ~%pred0
	}
.L24112:
	{
	  nop 2
	  disp	%ctpr2, fprintf
	  ldd,0	0x0, [ _f64,_lts0 outfile ], %r4
	  fstofd,1	%r8, %r1
	  std,2	%r3, 0x8, %b[32]
	  addd,3,sm	0x0, %b[33], %b[1]
	}
	{
	  addd,0,sm	0x0, %r4, %b[0]
	}
	{
	  nop 1
	  std,2	0x10, %r3, %r1
	}
	{
	  addd,0,sm	0x0, %r1, %b[2]
	}
	{
	  call	%ctpr2, wbs = 0x34
	}
	{
	  nop 2
	  disp	%ctpr1, printf
	  ldw,0	%r9, 0x0, %r1
	  addd,1,sm	0x0, %b[34], %b[0]
	  std,2	%r3, 0x0, %b[32]
	}
	{
	  nop 3
	  fstofd,0,sm	%r1, %r1
	}
	{
	  nop 1
	  std,2	%r3, 0x8, %r1
	}
	{
	  addd,0,sm	0x0, %r1, %b[1]
	}
	{
	  call	%ctpr1, wbs = 0x34
	}
	{
	  nop 4
	  disp	%ctpr1, .L24126
	}
	{
	  ct	%ctpr1
	}
.L18921:
	{
	  nop 2
	  disp	%ctpr2, fprintf
	  ldd,0	0x0, [ _f64,_lts0 outfile ], %r4
	  fstofd,1	%r8, %r1
	  std,2	%r3, 0x8, %b[32]
	  addd,3,sm	0x0, %b[33], %b[1]
	}
	{
	  addd,0,sm	0x0, %r4, %b[0]
	}
	{
	  nop 1
	  std,2	0x10, %r3, %r1
	}
	{
	  addd,0,sm	0x0, %r1, %b[2]
	}
	{
	  call	%ctpr2, wbs = 0x34
	}
	{
	  nop 2
	  disp	%ctpr1, printf
	  ldw,0	%r9, 0x0, %r1
	  addd,1,sm	0x0, %b[34], %b[0]
	  std,2	%r3, 0x0, %b[32]
	}
	{
	  nop 3
	  fstofd,0,sm	%r1, %r1
	}
	{
	  nop 1
	  std,2	%r3, 0x8, %r1
	}
	{
	  addd,0,sm	0x0, %r1, %b[1]
	}
	{
	  call	%ctpr1, wbs = 0x34
	}
	{
	  nop 4
	  disp	%ctpr1, .L18939
	}
	{
	  ct	%ctpr1
	}
.L21401:
	{
	  disp	%ctpr1, .L18771
	  cmplsb,0	0x0, %r6, %pred0
	  sxt,1,sm	0x6, %r6, %g16
	  addd,2	0x0, _f64,_lts0 0x40ff2000000000, %g17
	  addd,3	%r9, 0x8, %g18
	  shld,4	%r20, 0x2, %g19
	  aaurwd,5	%r31, %aaincr1
	}
	{
	  aaurwd,2	%r27, %aasti1
	  addd,3	%g18, %g19, %g18
	  addd,4	%r9, %g19, %g19
	  aaurwd,5	%r27, %aasti2
	}
	{
	  insfd,0,sm	%g17, _f32s,_lts0 0x8800, %g16, %g16 ? %pred0
	  addd,1,sm	0x0, _f64,_lts1 0x40ff2000000001, %g16 ? ~%pred0
	  aaurwd,5	%g18, %aad0
	}
	{
	  rwd,0	%g16, %lsr
	  andd,1	%g16, _f64,_lts0 0xffffffff, %g17
	  aaurwd,2	%g19, %aad1
	}
	{
	  shld,1	%g17, 0x2, %g16
	}
	{
	  nop 1
	  addd,0	%r20, %g16, %r1
	}
.L18771:
	{
	  loop_mode
	  alc	alcf=1, alct=1
	  ct	%ctpr1 ? %NOT_LOOP_END
	  staad,2	%r17, %aad0[ %aasti1 ]
	  incr,2	%aaincr1
	  staad,5	%r17, %aad1[ %aasti2 ]
	  incr,5	%aaincr1
	}
	{
	  shls,0	%r6, 0x1, %g16
	  shls,1	%r8, 0x1, %g17
	  aaurw,2	%r34, %aabf0
	  shld,3,sm	%r1, 0x2, %g18
	}
	{
	  nop 1
	  cmpesb,0	%g16, %r7, %pred0
	  cmpesb,1	%g17, %r19, %pred1
	}
	{
	  addd,0	%r1, 0x2, %r1 ? ~%pred0
	  std,2	%r9, %g18, %b[30] ? ~%pred0
	}
	{
	  shld,0,sm	%r1, 0x2, %g16
	}
	{
	  stw,2	%r9, %g16, %r14 ? ~%pred1
	}
.L18780:
	{
	  nop 4
	  disp	%ctpr2, start_time
	  addd,0	0x0, 0x0, %r1
	}
	{
	  call	%ctpr2, wbs = 0x34
	}
	{
	  nop 2
	  disp	%ctpr3, .L18790
	  ldw,0	0x0, [ _f64,_lts0 threads ], %g16
	}
	{
	  sxt,0	0x2, %g16, %g16
	}
	{
	  nop 2
	  cmpldb,0	0x0, %g16, %pred0
	}
	{
	  ct	%ctpr3 ? ~%pred0
	}
	{
	  nop 3
	  disp	%ctpr3, pthread_create
	  ldd,0	0x0, [ _f64,_lts0 attrt ], %r4
	  addd,1,sm	0x0, 0x0, %r5
	}
.L19013:
	{
	  addd,0,sm	0x0, %r4, %b[1]
	  addd,1,sm	0x0, %r1, %b[3]
	  addd,2,sm	0x0, %r26, %b[2]
	  addd,3	%r5, [ _f64,_lts0 tid ], %b[0]
	  addd,4,sm	0x8, %r5, %r5
	}
	{
	  call	%ctpr3, wbs = 0x34
	  addd,0	%r1, 0x1, %r1
	}
	{
	  disp	%ctpr1, .L19013
	  ldw,0	0x0, [ _f64,_lts0 threads ], %g16
	}
	{
	  nop 1
	  disp	%ctpr3, pthread_create
	}
	{
	  sxt,0	0x2, %g16, %g16
	}
	{
	  nop 1
	  cmpldb,0	%r1, %g16, %pred0
	}
	{
	  nop 1
	  ldd,0	0x0, [ _f64,_lts0 attrt ], %r4 ? %pred0
	}
	{
	  ct	%ctpr1 ? %pred0
	}
.L18790:
	{
	  nop 2
	  disp	%ctpr3, .L18813
	  ldw,0	0x0, [ _f64,_lts0 threads ], %g16
	  addd,1	0x0, 0x0, %r1
	}
	{
	  sxt,0	0x2, %g16, %g16
	}
	{
	  nop 2
	  cmpldb,0	0x0, %g16, %pred0
	}
	{
	  ct	%ctpr3 ? ~%pred0
	}
	{
	  disp	%ctpr3, pthread_join
	  addd,0,sm	0x0, 0x0, %r5
	}
	{
	  nop 2
	  ldd,0	%r5, [ _f64,_lts0 tid ], %r4
	}
.L18801:
	{
	  addd,0,sm	0x0, %r4, %b[0]
	  addd,1,sm	0x0, %r24, %b[1]
	  addd,2	%r1, 0x1, %r1
	  addd,3,sm	0x8, %r5, %r5
	}
	{
	  call	%ctpr3, wbs = 0x34
	}
	{
	  disp	%ctpr1, .L18801
	  ldw,0	0x0, [ _f64,_lts0 threads ], %g16
	}
	{
	  nop 1
	  disp	%ctpr3, pthread_join
	}
	{
	  sxt,0	0x2, %g16, %g16
	}
	{
	  nop 1
	  cmpldb,0	%r1, %g16, %pred0
	}
	{
	  nop 1
	  ldd,0	%r5, [ _f64,_lts0 tid ], %r4 ? %pred0
	}
	{
	  ct	%ctpr1 ? %pred0
	}
.L18813:
	{
	  nop 4
	  disp	%ctpr2, end_time
	  adds,0	0x1, 0x0, %r25
	  adds,1	0x0, 0x0, %r1
	}
	{
	  call	%ctpr2, wbs = 0x34
	}
	{
	  disp	%ctpr1, fprintf
	  istofd,0	%r47, %r53
	  addd,1,sm	0x0, %r51, %b[2]
	  addd,2,sm	0x0, %r49, %b[1]
	  ldw,3	0x0, [ _f64,_lts2 words ], %r40
	  ldw,5	0x0, [ _f64,_lts0 opwd ], %r4
	}
	{
	  ldw,3	0x0, [ _f64,_lts0 repeats ], %r54
	  ldd,5	0x0, [ _f64,_lts2 secs ], %r55
	}
	{
	  ldd,2	0x0, [ _f64,_lts0 outfile ], %r56
	  std,5	%r3, 0x8, %r48
	}
	{
	  std,2	0x10, %r3, %r37
	  istofs,3,sm	%r4, %r57
	  istofs,4,sm	%r40, %r58
	  sxt,5	0x2, %r4, %r4
	}
	{
	  sxt,0	0x2, %r40, %r40
	  std,2	%r3, _f16s,_lts0lo 0x20, %r4
	  istofs,3	%r54, %r59
	  fdtofs,4	%r55, %r60
	  sxt,5	0x2, %r54, %r54
	}
	{
	  addd,0,sm	0x0, %r55, %b[6]
	  faddd,1	%r32, %r55, %r32
	  std,2	0x18, %r3, %r40
	  std,5	%r3, _f16s,_lts0lo 0x28, %r54
	}
	{
	  addd,0,sm	0x0, %r4, %b[4]
	  addd,1,sm	0x0, %r56, %b[0]
	  std,2	%r3, _f16s,_lts0lo 0x30, %r55
	  addd,5,sm	0x0, %r40, %b[3]
	}
	{
	  nop 1
	  addd,0,sm	0x0, %r54, %b[5]
	  fmuls,3,sm	%r58, %r57, %r4
	}
	{
	  fcmpltdb,0	%r53, %r32, %pred0
	}
	nop
	{
	  nop 1
	  fmuls,3,sm	%r59, %r4, %r4
	}
	{
	  nop 1
	  adds,0	0x0, %r44, %r35 ? %pred0
	}
	{
	  nop 7
	  fdivs,5,sm	%r4, _f32s,_lts0 0x49742400, %r4
	}
	{
	  nop 2
	}
	{
	  nop 7
	  fdivs,5,sm	%r4, %r60, %r4
	}
	{
	  nop 2
	}
	{
	  nop 3
	  fstofd,3,sm	%r4, %r40
	}
	{
	  nop 1
	  std,5	%r3, _f16s,_lts0lo 0x38, %r40
	}
	{
	  addd,0,sm	0x0, %r40, %b[7]
	}
	{
	  call	%ctpr1, wbs = 0x34
	}
	{
	  disp	%ctpr3, printf
	  fstofd,0	%r4, %b[6]
	  addd,1,sm	0x0, %r52, %b[1]
	  ldd,2	0x0, [ _f64,_lts0 secs ], %r53
	  addd,3,sm	0x0, %r50, %b[0]
	  ldw,5	0x0, [ _f64,_lts2 repeats ], %r54
	}
	{
	  ldw,0	0x0, [ _f64,_lts0 opwd ], %r4
	  ldw,2	0x0, [ _f64,_lts2 words ], %r55
	}
	{
	  std,2	%r3, 0x0, %r48
	  std,5	%r3, 0x8, %r37
	}
	{
	  addd,0,sm	0x0, %r53, %b[5]
	  std,2	%r3, _f16s,_lts0lo 0x30, %r40
	  sxt,3	0x2, %r54, %r54
	}
	{
	  sxt,0	0x2, %r4, %r4
	  sxt,1	0x2, %r55, %r40
	  std,2	%r3, _f16s,_lts0lo 0x20, %r54
	  addd,3,sm	0x0, %r54, %b[4]
	  std,5	%r3, _f16s,_lts0hi 0x28, %r53
	}
	{
	  addd,0,sm	0x0, %r4, %b[3]
	  addd,1,sm	0x0, %r40, %b[2]
	  std,2	0x10, %r3, %r40
	  std,5	0x18, %r3, %r4
	}
	{
	  call	%ctpr3, wbs = 0x34
	}
	{
	  nop 2
	  disp	%ctpr2, fflush
	  ldd,0	0x0, [ _f64,_lts0 outfile ], %r4
	}
	{
	  nop 1
	  addd,0,sm	0x0, %r4, %b[0]
	}
	{
	  call	%ctpr2, wbs = 0x34
	}
	{
	  disp	%ctpr1, .L24107
	  ldw,0	0x0, [ _f64,_lts0 words ], %r7
	  ldw,2	%r9, 0x0, %r8
	  ldw,3,sm	0x0, [ _f64,_lts2 repeats ], %r6
	}
	{
	  nop 1
	  disp	%ctpr3, fprintf
	  ldw,0,sm	0x0, [ _f64,_lts0 opwd ], %r5
	}
	{
	  cmplsb,0	0x1, %r7, %pred0
	  fcmpeqsb,1	%r8, _f32s,_lts0 0x3f7fffef, %pred1
	  subs,2,sm	%r7, 0x1, %g16
	}
	nop
	{
	  merges,0,sm	0x1, %g16, %r23, %pred0
	  addd,1	0x1, 0x0, %r19 ? %pred0
	}
	{
	  shrs,0,sm	%r23, 0x1, %r22
	  ands,1,sm	%r23, _f16s,_lts0lo 0xfffe, %r20
	}
	{
	  ct	%ctpr1 ? ~%pred0
	  cmpesb,0,sm	%r22, 0x0, %pred1
	  adds,2	0x1, 0x0, %r1 ? %pred1
	  adds,5	0x1, 0x0, %r38 ? %pred1
	}
	{
	  nop 2
	  pass	%pred0, @p0
	  pass	%pred1, @p1
	  landp	@p0, @p1, @p4
	  pass	@p4, %pred0
	}
	{
	  ibranch	.L20620 ? %pred0
	}
	{
	  nop 1
	  disp	%ctpr1, .L19701
	  cmplsb,0	0x0, %r22, %pred0
	  sxt,1,sm	0x6, %r22, %g16
	  addd,2	0x0, _f64,_lts0 0x180ff2000000000, %g17
	  addd,3	%r9, 0x4, %r4
	}
	{
	  insfd,0,sm	%g17, _f32s,_lts0 0x8800, %g16, %g16 ? %pred0
	  addd,1,sm	0x0, _f64,_lts1 0x180ff2000000001, %g16 ? ~%pred0
	}
	{
	  setwd	wsz = 0x38, nfx = 0x1, dbl = 0x0
	  setbn	rsz = 0x9, rbs = 0x20, rcur = 0x0
	  setbp	psz = 0x9
	  rwd,0	%g16, %lsr
	  andd,1	%g16, _f64,_lts1 0xffffffff, %g17
	}
	{
	  addd,1,sm	0x4, 0x0, %b[2]
	  adds,2,sm	0x0, %r28, %b[16]
	  addd,3,sm	0x0, %r29, %b[7]
	  adds,4,sm	0x0, %r25, %b[6]
	}
	{
	  ldw,0,sm	%r4, %b[2], %g18
	  cmplsb,1,sm	%b[16], 0xa, %pred1
	  ldw,2,sm	%r9, %b[2], %g16
	  shld,3	%g17, 0x1, %g17
	}
	{
	  addd,0,sm	0x8, %b[2], %g19
	  addd,3	0x1, %g17, %r19
	}
	{
	  ldw,0,sm	%r9, %g19, %g17
	  addd,1,sm	0x8, %g19, %b[18]
	  ldw,2,sm	%r4, %g19, %b[15]
	}
	{
	  fcmpneqsb,0,sm	%r8, %g16, %pred8
	  fcmpneqsb,1,sm	%r8, %g18, %pred5
	  addd,2,sm	0x0, %g16, %b[11]
	}
	{
	  addd,0,sm	0x0, %g18, %b[17]
	}
	{
	  fcmpneqsb,0,sm	%r8, %g17, %pred7
	  addd,1,sm	0x0, %g17, %b[9]
	}
	{
	  nop 1
	}
	{
	  nop 1
	  pass	%pred8, @p0
	  pass	%pred1, @p1
	  landp	@p0, @p1, @p4
	  pass	@p4, %pred2
	}
	{
	  adds,0,sm	%b[16], 0x1, %g16 ? %pred2
	  addd,1,sm	%b[7], 0x1, %g17 ? %pred2
	}
	{
	  adds,0,sm	0x0, %g16, %b[14] ? %pred2
	  adds,1,sm	0x0, %b[16], %g16 ? ~%pred2
	  addd,2,sm	0x0, %g17, %b[5] ? %pred2
	  addd,3,sm	0x0, %b[7], %g17 ? ~%pred2
	}
	{
	  cmplsb,0,sm	%g16, 0xa, %pred1
	  adds,1,sm	0x0, %g16, %b[14] ? ~%pred2
	  shld,3,sm	%g17, 0x2, %b[8]
	  addd,4,sm	0x0, %g17, %b[5] ? ~%pred2
	}
	{
	  nop 1
	  pass	%pred5, @p0
	  pass	%pred1, @p1
	  landp	@p0, @p1, @p4
	  pass	@p4, %pred3
	}
	{
	  adds,0,sm	%g16, 0x1, %g16 ? %pred3
	  addd,1,sm	%g17, 0x1, %g17 ? %pred3
	}
	{
	  adds,0,sm	0x0, %g16, %b[14] ? %pred3
	  addd,1,sm	0x0, %g17, %b[5] ? %pred3
	}
.L19701:
	{
	  loop_mode
	  cmplsb,1,sm	%b[14], 0xa, %pred0
	  ldw,3,sm	%r4, %b[18], %b[13]
	}
	{
	  loop_mode
	  shld,1,sm	%b[7], 0x2, %b[19]
	  pass	%pred7, @p0
	  pass	%pred0, @p1
	  landp	@p0, @p1, @p4
	  pass	@p4, %pred1
	}
	{
	  loop_mode
	  ldw,0,sm	%r9, %b[18], %b[7]
	  stw,2	%r13, %b[19], %r8 ? %pred2
	  addd,5,sm	0x8, %b[18], %b[16]
	}
	{
	  loop_mode
	  adds,0,sm	%b[14], 0x1, %b[12] ? %pred1
	  stw,2	%r10, %b[19], %r6 ? %pred2
	  fcmpneqsb,3,sm	%r8, %b[15], %pred4
	  adds,4,sm	0x2, %b[6], %b[4]
	  stw,5	%r15, %b[19], %b[6] ? %pred2
	}
	{
	  loop_mode
	  adds,0,sm	0x0, %b[14], %b[12] ? ~%pred1
	  stw,2	%r11, %b[19], %r5 ? %pred2
	  stw,5	%r12, %b[19], %r7 ? %pred2
	}
	{
	  loop_mode
	  cmplsb,1,sm	%b[12], 0xa, %pred0
	  stw,2	%r11, %b[8], %r5 ? %pred3
	  addd,3,sm	%b[5], 0x1, %b[3] ? %pred1
	  adds,4,sm	%b[6], 0x1, %b[18]
	  stw,5	%r16, %b[19], %b[11] ? %pred2
	}
	{
	  loop_mode
	  stw,2	%r15, %b[8], %b[18] ? %pred3
	  addd,4,sm	0x0, %b[5], %b[3] ? ~%pred1
	  stw,5	%r10, %b[8], %r6 ? %pred3
	  pass	%pred4, @p0
	  pass	%pred0, @p1
	  landp	@p0, @p1, @p4
	  pass	@p4, %pred2
	}
	{
	  loop_mode
	  stw,2	%r16, %b[8], %b[17] ? %pred3
	  fcmpneqsb,3,sm	%r8, %b[7], %pred6
	  shld,4,sm	%b[3], 0x2, %b[6]
	  stw,5	%r12, %b[8], %r7 ? %pred3
	}
	{
	  loop_mode
	  alc	alcf=1, alct=1
	  abn	abnf=1, abnt=1
	  abp	abpf=1, abpt=1
	  ct	%ctpr1 ? %NOT_LOOP_END
	  addd,0,sm	%b[3], 0x1, %b[3] ? %pred2
	  adds,1,sm	0x0, 0x1, %r1 ? %pred8
	  adds,2,sm	%b[12], 0x1, %b[12] ? %pred2
	  adds,3,sm	0x0, %r1, %r1 ? ~%pred8
	  adds,4,sm	0x0, 0x1, %r1 ? %pred5
	  stw,5	%r13, %b[8], %r8 ? %pred3
	}
	{
	  nop 1
	  setwd	wsz = 0x38, nfx = 0x1, dbl = 0x0
	  setbn	rsz = 0x17, rbs = 0x20, rcur = 0x14
	  setbp	psz = 0x0
	  adds,0,sm	0x0, %b[16], %r28
	  addd,1,sm	0x0, %b[7], %r29
	}
.L20620:
	{
	  disp	%ctpr2, .L18916
	  cmpesb,0	%r20, %r23, %pred0
	  cmplsb,1,sm	%r28, 0xa, %pred1
	  shld,2,sm	%r19, 0x2, %g16
	  adds,3	%r20, 0x1, %g17
	  shld,4,sm	%r29, 0x2, %g18
	}
	{
	  nop 2
	  disp	%ctpr1, fprintf
	  ldw,0,sm	%r9, %g16, %g16
	}
	{
	  fcmpneqsb,0,sm	%r8, %g16, %pred2
	}
	{
	  nop 1
	}
	{
	  ct	%ctpr2 ? %pred0
	  pass	%pred0, @p0
	  pass	%pred2, @p1
	  landp	~@p0, ~@p1, @p4
	  pass	@p4, %pred3
	  landp	~@p0, @p1, @p5
	  pass	@p5, %pred0
	  pass	%pred1, @p2
	  landp	@p5, @p2, @p6
	  pass	@p6, %pred1
	}
	{
	  disp	%ctpr1, fprintf
	}
	{
	  adds,0	0x1, 0x0, %r1 ? %pred0
	  adds,1	%r28, 0x1, %r28 ? %pred1
	  stw,2	%r16, %g18, %g16 ? %pred1
	  addd,3	%r29, 0x1, %r29 ? %pred1
	  stw,5	%r15, %g18, %g17 ? %pred1
	}
	{
	  ct	%ctpr2 ? %pred3
	  stw,2	%r13, %g18, %r8 ? %pred1
	  stw,5	%r12, %g18, %r7 ? %pred1
	}
	{
	  disp	%ctpr1, fprintf
	  stw,2	%r11, %g18, %r5 ? %pred1
	  stw,5	%r10, %g18, %r6 ? %pred1
	}
.L18916:
	{
	  nop 1
	  disp	%ctpr2, .L18921
	  ldd,0,sm	0x0, [ _f64,_lts0 outfile ], %r1
	  cmpesb,1	%r1, 0x0, %pred0
	}
	{
	  addd,0,sm	0x0, %r43, %b[1] ? ~%pred0
	  std,2	%r3, 0x8, %r42 ? ~%pred0
	}
	{
	  ct	%ctpr2 ? %pred0
	  addd,0,sm	0x0, %r1, %b[0] ? ~%pred0
	}
	{
	  call	%ctpr1, wbs = 0x34 ? ~%pred0
	}
	{
	  nop 4
	  disp	%ctpr3, puts
	  addd,0,sm	0x0, %r41, %b[0] ? ~%pred0
	}
	{
	  call	%ctpr3, wbs = 0x34 ? ~%pred0
	}
.L18939:
	{
	  disp	%ctpr2, free
	  addd,0,sm	0x0, %r9, %b[0]
	  adds,1	%r21, 0x1, %r21
	}
	{
	  nop 3
	  cmplsb,0	%r21, %r36, %pred0
	}
	{
	  call	%ctpr2, wbs = 0x34
	}
	{
	  disp	%ctpr1, .L18730
	  ldw,0	0x0, [ _f64,_lts0 repeats ], %g16
	  ldw,2	0x0, [ _f64,_lts2 words ], %g17
	}
	{
	  nop 1
	  disp	%ctpr2, posix_memalign
	}
	{
	  smulx,0	%g16, _f32s,_lts1 0x66666667, %g18
	  sars,1	%g16, _f16s,_lts0lo 0x1f, %g16
	  shls,2	%g17, 0x1, %g19
	}
	{
	  shls,0	%g17, 0x3, %g17
	}
	{
	  adds,1	%g17, %g19, %r1
	}
	{
	  nop 2
	  stw,2	0x0, [ _f64,_lts0 words ], %r1
	}
	{
	  shrd,0	%g18, _f16s,_lts0lo 0x20, %g17
	}
	{
	  sars,0	%g17, 0x2, %g17
	}
	{
	  subs,0	%g17, %g16, %g16
	}
	{
	  nop 1
	  cmplsb,0	%g16, 0x1, %pred1
	}
	{
	  adds,0	0x1, 0x0, %g16 ? %pred1
	}
	{
	  ct	%ctpr1 ? %pred0
	  stw,2	0x0, [ _f64,_lts0 repeats ], %g16
	}
.L18954:
	{
	  nop 2
	  disp	%ctpr2, fprintf
	  ldd,0	0x0, [ _f64,_lts0 outfile ], %r1
	  addd,1,sm	0x0, %b[43], %b[1]
	  std,2	%r3, 0x8, %b[41]
	}
	{
	  nop 1
	  addd,0,sm	0x0, %r1, %b[0]
	}
	{
	  call	%ctpr2, wbs = 0x34
	}
	{
	  nop 4
	  disp	%ctpr1, puts
	  addd,0,sm	0x0, %b[42], %b[0]
	}
	{
	  call	%ctpr1, wbs = 0x34
	}
	{
	  nop 2
	  disp	%ctpr3, .L18725
	  ldw,0	0x0, [ _f64,_lts0 part ], %g16
	}
	{
	  adds,0	%g16, 0x1, %g16
	}
	{
	  nop 2
	  cmplsb,0	%g16, 0x3, %pred0
	  stw,2	0x0, [ _f64,_lts0 part ], %g16
	}
	{
	  ct	%ctpr3 ? %pred0
	}
	{
	  disp	%ctpr1, .L18716
	  adds,0	%r35, 0x1, %r35
	}
	{
	  nop 2
	  disp	%ctpr3, .L24630
	  cmplsb,0	%r35, %b[46], %pred0
	}
	{
	  ct	%ctpr3 ? ~%pred0
	}
	{
	  ct	%ctpr1 ? %pred0
	}
.L24837:
	{
	  nop 1
	  cmplsb,0,sm	%b[44], 0x3, %pred0
	}
	{
	  merges,0,sm	0x1, %r8, %g16, %pred0
	}
	{
	  ands,0,sm	%g16, _f16s,_lts0lo 0xfffe, %g16
	}
	{
	  adds,0,sm	%g16, %b[44], %r0
	}
.L14905:
	{
	  disp	%ctpr1, .L14905
	  adds,0	%r5, 0x1, %r5
	  adds,1	%r0, 0x1, %r40
	}
	{
	  nop 2
	  cmplsb,0	%r5, %r6, %pred0
	}
	{
	  ct	%ctpr1 ? %pred0
	}
.L20357:
	{
	  disp	%ctpr2, .L24630
	  shls,0	%r6, 0x3, %g16
	  adds,1	0x0, 0x0, %r1
	}
	{
	  nop 1
	  cmpesb,0	%r7, %g16, %pred0
	  subs,1	%r7, %g16, %r4
	}
	{
	  stw,2	0x0, [ _f64,_lts0 part ], %r40 ? %pred0
	  stw,5	0x0, [ _f64,_lts2 words ], %b[40] ? %pred0
	}
	{
	  ct	%ctpr2 ? %pred0
	  stw,2	0x0, [ _f64,_lts0 repeats ], %r39 ? %pred0
	}
	{
	  subs,0,sm	0x3, %b[44], %r5
	}
.L20369:
	{
	  disp	%ctpr1, .L28136
	  cmpesb,0	0x1, 0x7, %pred0
	  adds,1	0x0, %b[44], %r0
	}
	{
	  disp	%ctpr2, .L20378
	}
	{
	  nop 2
	  disp	%ctpr3, .L20369
	}
	{
	  ct	%ctpr1 ? ~%pred0
	}
	{
	  disp	%ctpr3, .L20369
	  cmplsb,0,sm	%b[44], 0x3, %pred0
	  adds,1,sm	0x0, %r5, %g16
	  adds,2,sm	0x1, 0x0, %g17
	  addd,3	0x0, 0x0, %g18
	}
	{
	  sxt,0,sm	0x6, %g16, %g16
	  sxt,1,sm	0x6, %g17, %g17
	}
	{
	  insfd,0,sm	%g18, _f32s,_lts0 0x8800, %g16, %g16 ? %pred0
	  insfd,1,sm	%g18, _lit32_ref,_lts0 0x8800, %g17, %g16 ? ~%pred0
	}
	{
	  adds,0	%r0, %g16, %r0
	}
.L20378:
	{
	  disp	%ctpr2, .L24625
	  adds,0	%r1, 0x1, %r1
	}
	{
	  nop 2
	  cmplsb,0	%r1, %r4, %pred0
	}
	{
	  ct	%ctpr3 ? %pred0
	}
	{
	  ct	%ctpr2 ? ~%pred0
	}
.L28136:
	{
	  adds,0	%r0, 0x1, %r0
	}
	{
	  nop 2
	  cmplsb,0	%r0, 0x3, %pred0
	}
	{
	  ct	%ctpr1 ? %pred0
	}
	{
	  ct	%ctpr2 ? ~%pred0
	}
.L24625:
	{
	  disp	%ctpr1, .L24421
	  cmplesb,1	%b[45], 0x0, %pred0
	  stw,2	0x0, [ _f64,_lts0 repeats ], %r39
	  stw,5	0x0, [ _f64,_lts2 part ], %r0
	}
	{
	  disp	%ctpr2, fprintf
	  ldd,0,sm	0x0, [ _f64,_lts2 outfile ], %r0
	  stw,2	0x0, [ _f64,_lts0 words ], %b[40]
	}
	{
	  nop 1
	  addd,0,sm	0x0, [ _f64,_lts0 .LC.9 ], %b[1] ? ~%pred0
	  std,2	%r3, 0x8, %b[41] ? ~%pred0
	}
	{
	  addd,0,sm	0x0, %r0, %b[0] ? ~%pred0
	}
	{
	  ct	%ctpr1 ? %pred0
	}
	{
	  call	%ctpr2, wbs = 0x34 ? ~%pred0
	}
	{
	  nop 1
	  disp	%ctpr3, puts
	  addd,0,sm	0x0, [ _f64,_lts0 .LC.30 ], %b[0] ? ~%pred0
	}
	{
	  call	%ctpr3, wbs = 0x34 ? ~%pred0
	}
.L24421:
	{
	  nop 4
	  disp	%ctpr2, local_time
	  addd,0	0x0, [ _f64,_lts0 .LC.25 ], %r1
	  addd,1	0x0, [ _f64,_lts2 .LC.26 ], %r4
	}
	{
	  call	%ctpr2, wbs = 0x34
	}
	{
	  nop 4
	  disp	%ctpr1, printf
	  addd,0	0x0, [ _f64,_lts0 timeday ], %b[1]
	  addd,1	0x0, [ _f64,_lts2 .LC.25 ], %b[0]
	  std,2	%r3, 0x0, %r1
	  std,5	%r3, 0x8, %b[47]
	}
	{
	  call	%ctpr1, wbs = 0x34
	}
	{
	  disp	%ctpr3, fprintf
	  ldd,0	0x0, [ _f64,_lts0 outfile ], %r1
	  addd,1	0x0, [ _f64,_lts2 timeday ], %b[2]
	  std,2	%r3, 0x8, %r4
	}
	{
	  nop 1
	  addd,0	0x0, [ _f64,_lts0 .LC.26 ], %b[1]
	  std,2	0x10, %r3, %b[47]
	}
	{
	  nop 1
	  addd,0,sm	0x0, %r1, %b[0]
	}
	{
	  call	%ctpr3, wbs = 0x34
	}
	{
	  nop 2
	  disp	%ctpr2, fclose
	  ldd,0	0x0, [ _f64,_lts0 outfile ], %r1
	}
	{
	  nop 1
	  addd,0,sm	0x0, %r1, %b[0]
	}
	{
	  call	%ctpr2, wbs = 0x34
	}
	{
	  nop 4
	  disp	%ctpr1, puts
	  addd,0	0x0, [ _f64,_lts0 .LC.28 ], %b[0]
	}
	{
	  call	%ctpr1, wbs = 0x34
	}
	{
	  nop 5
	  return	%ctpr3
	  addd,0	0x0, 0x0, %r0
	}
	{
	  ct	%ctpr3
	}
.L19486:
	{
	  disp	%ctpr3, fprintf
	  ldd,0	0x0, [ _f64,_lts2 outfile ], %r0
	  stw,2	0x0, [ _f64,_lts0 repeats ], %r39
	}
	{
	  nop 2
	  stw,2	0x0, [ _f64,_lts0 words ], %b[40]
	  stw,5	0x0, [ _f64,_lts2 part ], %b[44]
	}
.L21997:
	{
	  addd,0,sm	0x0, %r4, %b[1]
	  addd,1,sm	0x0, %r0, %b[0]
	  std,2	%r3, 0x8, %b[41]
	}
	{
	  call	%ctpr3, wbs = 0x34
	}
	{
	  nop 4
	  disp	%ctpr1, puts
	  addd,0,sm	0x0, %r1, %b[0]
	}
	{
	  call	%ctpr1, wbs = 0x34
	}
	{
	  disp	%ctpr3, .L19519
	  ldw,0	0x0, [ _f64,_lts0 part ], %g16
	  ldd,2,sm	0x0, [ _f64,_lts2 outfile ], %r0
	}
	{
	  nop 1
	  disp	%ctpr2, .L21997
	}
	{
	  adds,0	%g16, 0x1, %g16
	}
	{
	  nop 1
	  cmplsb,0	%g16, 0x3, %pred0
	  stw,2	0x0, [ _f64,_lts0 part ], %g16
	}
	{
	  stw,2	0x0, [ _f64,_lts0 repeats ], %r39 ? %pred0
	  stw,5	0x0, [ _f64,_lts2 words ], %b[40] ? %pred0
	}
	{
	  ct	%ctpr3 ? ~%pred0
	}
	{
	  nop 2
	  disp	%ctpr3, fprintf
	}
	{
	  ct	%ctpr2
	}
.L19519:
	{
	  disp	%ctpr1, .L19486
	  adds,0	%r35, 0x1, %r35
	}
	{
	  nop 3
	  cmplsb,0	%r35, %b[46], %pred0
	}
	{
	  ct	%ctpr1 ? %pred0
	}
.L24630:
	{
	  disp	%ctpr1, .L24645
	  ldd,0,sm	0x0, [ _f64,_lts0 outfile ], %r0
	  cmplesb,1	%b[45], 0x0, %pred0
	}
	{
	  disp	%ctpr2, fprintf
	}
	{
	  addd,0,sm	0x0, [ _f64,_lts0 .LC.9 ], %b[1] ? ~%pred0
	  std,2	%r3, 0x8, %b[41] ? ~%pred0
	}
	{
	  addd,0,sm	0x0, %r0, %b[0] ? ~%pred0
	}
	{
	  call	%ctpr2, wbs = 0x34 ? ~%pred0
	}
	{
	  ct	%ctpr1 ? %pred0
	  disp	%ctpr3, puts
	  addd,0,sm	0x0, [ _f64,_lts0 .LC.30 ], %b[0] ? ~%pred0
	}
	nop
	{
	  call	%ctpr3, wbs = 0x34 ? ~%pred0
	}
.L24645:
	{
	  disp	%ctpr1, .L24661
	  ldd,0,sm	0x0, [ _f64,_lts0 outfile ], %r0
	  cmplesb,1	%r38, 0x0, %pred0
	  addd,2,sm	0x0, [ _f64,_lts2 .LC.22 ], %r1
	}
	{
	  disp	%ctpr2, fprintf
	}
	{
	  addd,0,sm	0x0, [ _f64,_lts0 .LC.22 ], %b[1] ? ~%pred0
	  std,2	%r3, 0x8, %r1 ? ~%pred0
	}
	{
	  addd,0,sm	0x0, %r0, %b[0] ? ~%pred0
	}
	{
	  call	%ctpr2, wbs = 0x34 ? ~%pred0
	}
	{
	  ct	%ctpr1 ? %pred0
	  disp	%ctpr3, puts
	  addd,0,sm	0x0, [ _f64,_lts0 .LC.29 ], %b[0] ? ~%pred0
	}
	nop
	{
	  call	%ctpr3, wbs = 0x34 ? ~%pred0
	}
.L24661:
	{
	  disp	%ctpr1, local_time
	  cmplesb,0	%r28, 0x0, %pred0
	  addd,1,sm	0x0, [ _f64,_lts0 .LC.25 ], %r1
	  addd,2,sm	0x0, [ _f64,_lts2 .LC.26 ], %r4
	}
	{
	  nop 1
	  disp	%ctpr2, .L24666
	}
	{
	  ct	%ctpr2 ? ~%pred0
	}
	nop
	{
	  call	%ctpr1, wbs = 0x34 ? %pred0
	}
	{
	  nop 4
	  disp	%ctpr3, printf
	  addd,0,sm	0x0, [ _f64,_lts0 timeday ], %b[1] ? %pred0
	  addd,1,sm	0x0, [ _f64,_lts2 .LC.25 ], %b[0] ? %pred0
	  std,2	%r3, 0x0, %r1 ? %pred0
	  std,5	%r3, 0x8, %b[47] ? %pred0
	}
	{
	  call	%ctpr3, wbs = 0x34 ? %pred0
	}
	{
	  disp	%ctpr2, fprintf
	  ldd,0,sm	0x0, [ _f64,_lts0 outfile ], %r1
	  addd,1,sm	0x0, [ _f64,_lts2 timeday ], %b[2] ? %pred0
	  std,2	%r3, 0x8, %r4 ? %pred0
	}
	{
	  nop 1
	  addd,0,sm	0x0, [ _f64,_lts0 .LC.26 ], %b[1] ? %pred0
	  std,2	0x10, %r3, %b[47] ? %pred0
	}
	{
	  nop 1
	  addd,0,sm	0x0, %r1, %b[0] ? %pred0
	}
	{
	  call	%ctpr2, wbs = 0x34 ? %pred0
	}
	{
	  nop 2
	  disp	%ctpr1, fclose
	  ldd,0,sm	0x0, [ _f64,_lts0 outfile ], %r1
	}
	{
	  nop 1
	  addd,0,sm	0x0, %r1, %b[0] ? %pred0
	}
	{
	  call	%ctpr1, wbs = 0x34 ? %pred0
	}
	{
	  nop 4
	  disp	%ctpr1, puts
	  addd,0,sm	0x0, [ _f64,_lts0 .LC.28 ], %b[0] ? %pred0
	}
	{
	  call	%ctpr1, wbs = 0x34 ? %pred0
	}
	{
	  nop 5
	  return	%ctpr3
	  addd,0	0x0, 0x0, %r0 ? %pred0
	}
	{
	  ct	%ctpr3 ? %pred0
	}
.L24666:
	{
	  disp	%ctpr2, fprintf
	  ldd,0	0x0, [ _f64,_lts0 outfile ], %r19
	  addd,1	0x0, [ _f64,_lts2 .LC.23 ], %r20
	  addd,2	0x0, _lit64_ref,_lts2 0x0, %b[1]
	  cmplsb,3,sm	0x2, %r28, %pred2
	  cmplsb,4	0x1, %r28, %pred0
	  addd,5,sm	0x8, 0x0, %r0
	}
	{
	  addd,0,sm	0x0, [ _f64,_lts2 .LC.24 ], %r15
	  addd,1,sm	%r2, _f16s,_lts0lo 0xff70, %r18
	  std,2	%r3, 0x8, %r20
	  addd,3,sm	%r2, _f16s,_lts1lo 0xffc0, %r16
	  addd,4,sm	%r2, _f16s,_lts0hi 0xfea0, %r17
	  ldw,5	%r2, _lit16_ref,_lts0lo 0xff70, %r20
	}
	{
	  ldw,0	%r18, _f16s,_lts0lo 0x28, %r21
	  adds,1,sm	0x2, 0x0, %r10
	  ldw,2	%r2, _f16s,_lts0hi 0xfea0, %r22
	  ldw,3	%r17, _lit16_ref,_lts0lo 0x28, %r23
	  addd,4,sm	%r17, _f16s,_lts1hi 0x78, %r14
	  ldw,5	%r17, _f16s,_lts1lo 0x50, %r24
	}
	{
	  nop 1
	  ldw,0	%r17, _f16s,_lts0lo 0x78, %r19
	  addd,1,sm	0x0, %r19, %b[0]
	  addd,2,sm	%r18, _f16s,_lts0hi 0x28, %r13
	  addd,3,sm	%r17, _f16s,_lts1lo 0x50, %r11
	  addd,4,sm	%r17, _lit16_ref,_lts0hi 0x28, %r12
	}
	{
	  call	%ctpr2, wbs = 0x34
	  sxt,0	0x2, %r22, %r22
	  sxt,3	0x2, %r23, %r23
	  sxt,4	0x2, %r24, %r24
	}
	{
	  disp	%ctpr1, fprintf
	  ldd,0	0x0, [ _f64,_lts0 outfile ], %r25
	  fstofd,1,sm	%r20, %r20
	  sxt,2	0x2, %r19, %r19
	  addd,3,sm	0x0, [ _f64,_lts2 .LC.24 ], %b[1]
	  fstofd,4	%r21, %r21
	  addd,5,sm	0x0, %r16, %b[2]
	}
	{
	  addd,0,sm	0x0, %r22, %b[6]
	  addd,1,sm	0x0, %r23, %b[3]
	  std,2	%r3, 0x8, %r15
	  addd,3,sm	0x0, %r24, %b[4]
	  std,5	0x10, %r3, %r37
	}
	{
	  addd,0,sm	0x0, %r19, %b[5]
	  std,2	0x18, %r3, %r23
	  std,5	%r3, _f16s,_lts0lo 0x20, %r24
	}
	{
	  addd,0,sm	0x0, %r25, %b[0]
	  std,2	%r3, _f16s,_lts0lo 0x28, %r19
	  std,5	%r3, _f16s,_lts0hi 0x30, %r22
	}
	{
	  std,2	%r3, _f16s,_lts0lo 0x38, %r20
	  std,5	%r3, _f16s,_lts0hi 0x40, %r21
	}
	{
	  ldw,0,sm	%r17, 0x4, %r6
	  ldw,2,sm	%r17, _f16s,_lts0lo 0x2c, %r9
	  ldw,3,sm	%r17, _f16s,_lts0hi 0x54, %r8
	  ldw,5,sm	%r17, _f16s,_lts1lo 0x7c, %r7
	}
	{
	  ldw,0,sm	%r18, 0x4, %r5
	  addd,1,sm	0x0, %r20, %b[7]
	  ldw,2,sm	%r18, _f16s,_lts0lo 0x2c, %r4
	}
	{
	  call	%ctpr1, wbs = 0x34
	}
	{
	  nop 1
	  disp	%ctpr3, .L15822
	  ldd,0,sm	0x0, [ _f64,_lts0 outfile ], %r1
	}
.L21872:
	{
	  ct	%ctpr3 ? ~%pred0
	  disp	%ctpr1, fprintf
	  fstofd,0,sm	%r5, %r19
	  fstofd,1,sm	%r4, %r20
	  sxt,2,sm	0x2, %r8, %r23
	  sxt,3,sm	0x2, %r6, %r21
	  sxt,4,sm	0x2, %r7, %r22
	  sxt,5,sm	0x2, %r9, %r24
	  pass	%pred0, @p0
	  andp	@p0, @p0, @p4
	  pass	@p4, %pred3
	}
	{
	  addd,0,sm	0x0, %r16, %b[2] ? %pred0
	  addd,1,sm	0x0, %r15, %b[1] ? %pred0
	  std,2	%r3, 0x8, %r15 ? %pred0
	  addd,3,sm	0x0, %r21, %b[6] ? %pred0
	  addd,4,sm	0x0, %r22, %b[5] ? %pred0
	  std,5	0x10, %r3, %r37 ? %pred0
	}
	{
	  std,2	0x18, %r3, %r24 ? %pred0
	  addd,3,sm	0x0, %r23, %b[4] ? %pred0
	  addd,4,sm	0x0, %r24, %b[3] ? %pred0
	  std,5	%r3, _f16s,_lts0lo 0x20, %r23 ? %pred0
	}
	{
	  addd,0,sm	0x0, %r1, %b[0] ? %pred0
	  adds,1,sm	%r10, 0x1, %r10
	  std,2	%r3, _f16s,_lts0lo 0x28, %r22 ? %pred0
	  std,5	%r3, _f16s,_lts0hi 0x30, %r21 ? %pred0
	}
	{
	  cmplsb,0,sm	%r10, %r28, %pred1
	  std,2	%r3, _f16s,_lts0lo 0x38, %r19 ? %pred0
	}
	{
	  std,2	%r3, _f16s,_lts0lo 0x40, %r20 ? %pred0
	  ldw,5,sm	%r17, %r0, %r6
	}
	{
	  ldw,0,sm	%r12, %r0, %r9
	  addd,1,sm	0x0, %r19, %b[7] ? %pred0
	  ldw,2,sm	%r11, %r0, %r8
	  ldw,3,sm	%r14, %r0, %r7
	  ldw,5,sm	%r18, %r0, %r5
	}
	{
	  call	%ctpr1, wbs = 0x34 ? %pred3
	  ldw,0,sm	%r13, %r0, %r4
	}
	{
	  disp	%ctpr2, .L21872
	  ldd,0,sm	0x0, [ _f64,_lts0 outfile ], %r1
	}
	{
	  nop 3
	  disp	%ctpr3, .L15822
	  addd,0,sm	0x4, %r0, %r0
	  pass	%pred2, @p0
	  andp	@p0, @p0, @p4
	  pass	@p4, %pred0
	  pass	%pred1, @p1
	  andp	@p1, @p1, @p5
	  pass	@p5, %pred2
	}
	{
	  ct	%ctpr2
	}
.L15822:
	{
	  disp	%ctpr2, fprintf
	  ldd,0	0x0, [ _f64,_lts0 outfile ], %r1
	  addd,1	0x0, [ _f64,_lts2 .LC.9 ], %b[1]
	  std,2	%r3, 0x8, %b[41]
	}
	{
	  nop 1
	  addd,0	0x0, [ _f64,_lts0 .LC.25 ], %r4
	  addd,1	0x0, [ _f64,_lts2 .LC.26 ], %r5
	}
	{
	  nop 1
	  addd,0,sm	0x0, %r1, %b[0]
	}
	{
	  call	%ctpr2, wbs = 0x34
	}
	{
	  nop 4
	  disp	%ctpr1, local_time
	}
	{
	  call	%ctpr1, wbs = 0x34
	}
	{
	  nop 4
	  disp	%ctpr3, printf
	  addd,0	0x0, [ _f64,_lts0 timeday ], %b[1]
	  addd,1	0x0, [ _f64,_lts2 .LC.25 ], %b[0]
	  std,2	%r3, 0x0, %r4
	  std,5	%r3, 0x8, %b[47]
	}
	{
	  call	%ctpr3, wbs = 0x34
	}
	{
	  disp	%ctpr2, fprintf
	  ldd,0	0x0, [ _f64,_lts0 outfile ], %r1
	  addd,1	0x0, [ _f64,_lts2 timeday ], %b[2]
	  std,2	%r3, 0x8, %r5
	}
	{
	  nop 1
	  addd,0	0x0, [ _f64,_lts0 .LC.26 ], %b[1]
	  std,2	0x10, %r3, %b[47]
	}
	{
	  nop 1
	  addd,0,sm	0x0, %r1, %b[0]
	}
	{
	  call	%ctpr2, wbs = 0x34
	}
	{
	  nop 2
	  disp	%ctpr1, fclose
	  ldd,0	0x0, [ _f64,_lts0 outfile ], %r1
	}
	{
	  nop 1
	  addd,0,sm	0x0, %r1, %b[0]
	}
	{
	  call	%ctpr1, wbs = 0x34
	}
	{
	  nop 4
	  disp	%ctpr1, puts
	  addd,0	0x0, [ _f64,_lts0 .LC.28 ], %b[0]
	}
	{
	  call	%ctpr1, wbs = 0x34
	}
	{
	  nop 5
	  return	%ctpr3
	  addd,0	0x0, 0x0, %r0
	}
	{
	  ct	%ctpr3
	}
.L14758:
	{
	  disp	%ctpr2, fprintf
	  ldw,0	0x0, [ _f64,_lts0 CPUavail ], %r1
	  ldd,2	0x0, [ _f64,_lts2 outfile ], %r4
	}
	{
	  addd,0	0x0, [ _f64,_lts0 .LC.13 ], %r5
	  addd,1	0x0, _lit64_ref,_lts0 0x0, %b[1]
	  addd,2	0x0, [ _f64,_lts2 .LC.14 ], %r6
	}
	{
	  addd,0	0x0, [ _f64,_lts0 timeday ], %b[47]
	  addd,1	0x0, [ _f64,_lts2 heading ], %r5
	  std,2	%r3, 0x8, %r5
	}
	{
	  sxt,0	0x2, %r1, %r1
	  addd,1,sm	0x0, %r4, %b[0]
	  addd,2	0x0, [ _f64,_lts0 .LC.15 ], %r4
	  addd,3	0x0, [ _f64,_lts2 .LC.16 ], %r7
	}
	{
	  addd,0,sm	0x0, %r1, %b[2]
	  std,2	0x10, %r3, %r1
	}
	{
	  call	%ctpr2, wbs = 0x34
	}
	{
	  nop 2
	  disp	%ctpr1, fprintf
	  ldd,0	0x0, [ _f64,_lts0 outfile ], %r1
	  addd,1	0x0, [ _f64,_lts2 .LC.10 ], %b[1]
	  std,2	%r3, 0x8, %r9
	}
	{
	  nop 1
	  addd,0,sm	0x0, %r1, %b[0]
	}
	{
	  call	%ctpr1, wbs = 0x34
	}
	{
	  disp	%ctpr3, fprintf
	  ldw,0	0x0, [ _f64,_lts0 threads ], %r1
	  ldd,2	0x0, [ _f64,_lts2 outfile ], %r8
	}
	{
	  addd,0	0x0, [ _f64,_lts0 heading ], %b[2]
	  addd,1	0x0, [ _f64,_lts2 .LC.14 ], %b[1]
	  std,2	%r3, 0x8, %r6
	  std,5	0x10, %r3, %r5
	}
	{
	  addd,0	0x0, [ _f64,_lts1 timeday ], %b[4]
	  std,2	%r3, _f16s,_lts0lo 0x20, %b[47]
	}
	{
	  sxt,0	0x2, %r1, %r1
	  addd,1,sm	0x0, %r8, %b[0]
	}
	{
	  addd,0,sm	0x0, %r1, %b[3]
	  std,2	0x18, %r3, %r1
	}
	{
	  call	%ctpr3, wbs = 0x34
	}
	{
	  nop 4
	  disp	%ctpr2, puts
	  addd,0	0x0, [ _f64,_lts0 .LC.38 ], %b[0]
	}
	{
	  call	%ctpr2, wbs = 0x34
	}
	{
	  nop 2
	  disp	%ctpr1, fprintf
	  ldd,0	0x0, [ _f64,_lts0 outfile ], %r1
	  addd,1	0x0, [ _f64,_lts2 .LC.15 ], %b[1]
	  std,2	%r3, 0x8, %r4
	}
	{
	  nop 1
	  addd,0,sm	0x0, %r1, %b[0]
	}
	{
	  call	%ctpr1, wbs = 0x34
	}
	{
	  nop 2
	  disp	%ctpr3, fprintf
	  ldd,0	0x0, [ _f64,_lts0 outfile ], %r1
	  addd,1	0x0, [ _f64,_lts2 .LC.16 ], %b[1]
	  std,2	%r3, 0x8, %r7
	}
	{
	  nop 1
	  addd,0,sm	0x0, %r1, %b[0]
	}
	{
	  call	%ctpr3, wbs = 0x34
	}
	{
	  nop 4
	  disp	%ctpr2, puts
	  addd,0	0x0, [ _f64,_lts0 .LC.37 ], %b[0]
	}
	{
	  call	%ctpr2, wbs = 0x34
	}
	{
	  disp	%ctpr1, printf
	  ldw,0	0x0, [ _f64,_lts0 threads ], %r1
	  addd,1	0x0, [ _f64,_lts2 .LC.14 ], %b[0]
	  std,2	%r3, 0x0, %r6
	}
	{
	  nop 1
	  addd,0	0x0, [ _f64,_lts0 timeday ], %b[3]
	  addd,1	0x0, [ _f64,_lts2 heading ], %b[1]
	  std,2	%r3, 0x8, %r5
	  std,5	0x18, %r3, %b[47]
	}
	{
	  sxt,0	0x2, %r1, %r1
	}
	{
	  addd,0,sm	0x0, %r1, %b[2]
	  std,2	0x10, %r3, %r1
	}
	{
	  call	%ctpr1, wbs = 0x34
	}
	{
	  disp	%ctpr2, puts
	  cmpesb,0	0x0, 0x1, %pred0
	  shls,1	%b[45], 0x4, %r4
	  addd,2	0x0, [ _f64,_lts0 .LC.36 ], %b[0]
	  shls,3	%b[45], 0xd, %r5
	  shls,4	%b[45], 0x8, %r6
	  shls,5	%b[45], 0xb, %r7
	}
	{
	  adds,0	0x0, 0x0, %r35
	  subs,3	%r7, %r6, %r6
	}
	{
	  adds,0	%r5, %r4, %r4
	}
	{
	  adds,0	%r4, %r6, %r1
	}
	{
	  adds,0	%r1, 0x1, %b[46]
	}
	{
	  call	%ctpr2, wbs = 0x34
	  cmplsb,0	0x0, %b[46], %pred1
	}
	{
	  nop 4
	  disp	%ctpr1, puts
	  addd,0	0x0, [ _f64,_lts0 .LC.35 ], %b[0]
	}
	{
	  call	%ctpr1, wbs = 0x34
	}
	{
	  nop 2
	  disp	%ctpr3, fflush
	  ldd,0	0x0, [ _f64,_lts0 outfile ], %r4
	}
	{
	  ibranch	.L24630 ? %pred0
	  addd,0,sm	0x0, %r4, %b[0]
	}
	{
	  disp	%ctpr1, .L24581
	}
	{
	  ibranch	.L24390 ? %pred0
	}
	{
	  disp	%ctpr1, .L24483
	}
	{
	  ibranch	.L24385 ? %pred0
	}
	{
	  call	%ctpr3, wbs = 0x34
	}
	{
	  nop 4
	  disp	%ctpr2, .L24630
	}
	{
	  ct	%ctpr2 ? ~%pred1
	}
.L24385:
	{
	  disp	%ctpr2, .L24827
	  cmpesb,0,sm	%b[45], 0x0, %pred0
	}
	{
	  nop 1
	  disp	%ctpr3, .L24805
	}
	{
	  ct	%ctpr1 ? %pred0
	}
	{
	  shls,0,sm	%b[45], 0x2, %g16
	  shls,1,sm	%b[45], 0x6, %g17
	  addd,2,sm	0x0, _f64,_lts0 0x3f7fffef3f7fffef, %r20
	  addd,3,sm	0x0, _lit64_ref,_lts0 0x3f7fffef3f7fffef, %r23
	  addd,4,sm	0x0, _lit64_ref,_lts0 0x3f7fffef3f7fffef, %b[31]
	  addd,5,sm	0x0, _lit64_ref,_lts0 0x3f7fffef3f7fffef, %b[39]
	}
	{
	  addd,0,sm	%r2, _f16s,_lts0lo 0xff70, %r22
	  subs,1,sm	%g17, %g16, %r56
	  adds,2,sm	%r1, 0xa, %r57
	  addd,3,sm	%r2, _f16s,_lts0hi 0xfe98, %r63
	  addd,4,sm	%r2, _f16s,_lts1lo 0xffc0, %b[29]
	  addd,5,sm	%r2, _lit16_ref,_lts1lo 0xffc0, %r62
	}
	{
	  addd,0,sm	%r2, _f16s,_lts0lo 0xfea0, %r21
	  addd,1,sm	0x0, 0x0, %r25
	  adds,2,sm	0x0, _f32s,_lts1 0x3f7fffef, %r19
	  addd,3,sm	0x0, [ _f64,_lts2 .LC.18 ], %r59
	  addd,4,sm	0x0, _lit64_ref,_lts2 0x0, %r60
	  addd,5,sm	0x0, _lit64_ref,_lts2 0x0, %r61
	}
	{
	  addd,0,sm	0x0, [ _f64,_lts0 .LC.20 ], %r53
	  addd,1,sm	0x0, _lit64_ref,_lts0 0x0, %r54
	  addd,2,sm	0x10, 0x0, %r58
	  addd,3,sm	0x0, [ _f64,_lts2 .LC.19 ], %b[35]
	  addd,4,sm	0x0, _lit64_ref,_lts2 0x0, %b[36]
	  addd,5,sm	0x0, _lit64_ref,_lts2 0x0, %b[37]
	}
	{
	  ct	%ctpr2
	  addd,0,sm	0x0, [ _f64,_lts0 .LC.32 ], %r55
	  addd,1,sm	0x0, [ _f64,_lts2 runTests ], %r27
	  addd,2,sm	0x0, _lit64_ref,_lts2 0x0, %r31
	}
.L24483:
	{
	  shls,0,sm	%b[45], 0x2, %g16
	  shls,1,sm	%b[45], 0x6, %g17
	  addd,2,sm	0x0, _f64,_lts0 0x3f7fffef3f7fffef, %r17
	  addd,3,sm	0x0, _lit64_ref,_lts0 0x3f7fffef3f7fffef, %r18
	  addd,4,sm	0x0, _lit64_ref,_lts0 0x3f7fffef3f7fffef, %b[30]
	  addd,5,sm	0x0, _lit64_ref,_lts0 0x3f7fffef3f7fffef, %b[38]
	}
	{
	  addd,0,sm	%r2, _f16s,_lts0lo 0xff70, %r16
	  subs,1,sm	%g17, %g16, %r47
	  adds,2,sm	%r1, 0xa, %r44
	  addd,3,sm	%r2, _f16s,_lts0hi 0xfe98, %r46
	  addd,4,sm	%r2, _f16s,_lts1lo 0xffc0, %r51
	  addd,5,sm	%r2, _lit16_ref,_lts1lo 0xffc0, %r52
	}
	{
	  addd,0,sm	%r2, _f16s,_lts0lo 0xfea0, %r15
	  addd,1,sm	0x10, 0x0, %r45
	  addd,2,sm	0x0, 0x0, %r24
	  adds,3,sm	0x0, _f32s,_lts1 0x3f7fffef, %r14
	  addd,4,sm	0x0, [ _f64,_lts2 .LC.18 ], %r48
	  addd,5,sm	0x0, _lit64_ref,_lts2 0x0, %r49
	}
	{
	  addd,0,sm	0x0, [ _f64,_lts0 .LC.18 ], %r50
	  addd,1,sm	0x0, [ _f64,_lts2 .LC.19 ], %b[33]
	  addd,2,sm	0x0, _lit64_ref,_lts2 0x0, %b[34]
	  addd,3,sm	0x0, _lit64_ref,_lts2 0x0, %b[32]
	}
	{
	  addd,0,sm	0x0, [ _f64,_lts0 .LC.9 ], %b[43]
	  addd,1,sm	0x0, [ _f64,_lts2 .LC.31 ], %b[42]
	}
	{
	  addd,0,sm	0x0, [ _f64,_lts0 .LC.20 ], %r42
	  addd,1,sm	0x0, _lit64_ref,_lts0 0x0, %r43
	  addd,2,sm	0x0, [ _f64,_lts2 .LC.32 ], %r41
	}
	{
	  ct	%ctpr3
	  addd,0,sm	0x0, [ _f64,_lts0 runTests ], %r26
	  addd,1,sm	0x0, _lit64_ref,_lts0 0x0, %r30
	}
.L14957:
	{
	  nop 4
	  disp	%ctpr1, puts
	  addd,0	0x0, [ _f64,_lts0 .LC.34 ], %b[0]
	}
	{
	  call	%ctpr1, wbs = 0x34
	}
	{
	  nop 4
	  disp	%ctpr1, puts
	  addd,0	0x0, [ _f64,_lts0 .LC.33 ], %b[0]
	}
	{
	  call	%ctpr1, wbs = 0x34
	}
	{
	  nop 2
	  disp	%ctpr1, _IO_getc
	  ldd,0	0x0, [ _f64,_lts0 stdin ], %r1
	}
	{
	  nop 1
	  addd,0,sm	0x0, %r1, %b[0]
	}
	{
	  call	%ctpr1, wbs = 0x34
	}
	{
	  return	%ctpr3
	  addd,0	0x1, 0x0, %b[0]
	}
	{
	  nop 4
	  disp	%ctpr1, exit
	}
	{
	  call	%ctpr1, wbs = 0x34
	}
	{
	  ct	%ctpr3
	}
.L24390:
	{
	  nop 2
	  disp	%ctpr3, .L19486
	  cmpesb,0,sm	%b[45], 0x0, %pred0
	}
	{
	  ct	%ctpr1 ? %pred0
	}
	{
	  disp	%ctpr3, .L20357
	  cmplsb,0,sm	0x0, %b[46], %pred0
	  adds,1	0x0, 0x0, %r5
	}
	{
	  disp	%ctpr1, .L24837
	}
	{
	  merges,0,sm	0x1, %b[46], %r7, %pred0
	}
	{
	  shrs,0	%r7, 0x3, %r6
	}
	{
	  nop 2
	  cmpesb,0	%r6, 0x0, %pred0
	}
	{
	  ct	%ctpr3 ? %pred0
	}
	{
	  ct	%ctpr1
	  subs,0,sm	0x3, %b[44], %r8
	}
.L24581:
	{
	  addd,0,sm	0x0, [ _f64,_lts0 .LC.31 ], %r1
	  addd,1,sm	0x0, [ _f64,_lts2 .LC.9 ], %r4
	}
	{
	  ct	%ctpr3
	}
.L14570:
	{
	  addd,0	0x0, [ _f64,_lts0 .LC.41 ], %b[0]
	}
	{
	  call	%ctpr1, wbs = 0x34
	}
	{
	  nop 4
	  disp	%ctpr1, puts
	  addd,0	0x0, [ _f64,_lts0 .LC.40 ], %b[0]
	}
	{
	  call	%ctpr1, wbs = 0x34
	}
	{
	  nop 2
	  disp	%ctpr1, _IO_getc
	  ldd,0	0x0, [ _f64,_lts0 stdin ], %r1
	}
	{
	  nop 1
	  addd,0,sm	0x0, %r1, %b[0]
	}
	{
	  call	%ctpr1, wbs = 0x34
	}
	{
	  return	%ctpr3
	  addd,0	0x0, 0x0, %b[0]
	}
	{
	  nop 4
	  disp	%ctpr1, exit
	}
	{
	  call	%ctpr1, wbs = 0x34
	}
	{
	  ct	%ctpr3
	}
.LCS.2:
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
	.align	16
.LC.4:
	.ascii	"MPMflopsLog.txt\000"
	.align	4
.LC.5:
	.ascii	"a+\000"
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
.LC.18:
	.ascii	"%15s %9d %5d %8d %10.6f %8.0f \000"
	.align	16
.LC.19:
	.ascii	" %10.6f   Yes\n\000"
	.align	16
.LC.20:
	.ascii	"   See later   No\n\000"
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
.LC.28:
	.ascii	"\n Press Enter\000"
	.align	16
.LC.29:
	.ascii	" ERROR - At least one first resu"
	.ascii	"lt of 0.999999 - no calculations"
	.ascii	"?\n\000"
	.align	1
.LC.30:
	.ascii	"\000"
	.align	1
.LC.31:
	.ascii	"\000"
	.align	16
.LC.32:
	.ascii	"   See log     No\000"
	.align	16
.LC.33:
	.ascii	" Press Enter\000"
	.align	16
.LC.34:
	.ascii	" ERROR WILL EXIT\000"
	.align	16
.LC.35:
	.ascii	"                    Words  Word "
	.ascii	"  Passes                        "
	.ascii	" Results  Same\n\000"
	.align	16
.LC.36:
	.ascii	"  Test             4 Byte  Ops/ "
	.ascii	"  Repeat    Seconds   MFLOPS    "
	.ascii	"   First   All\000"
	.align	16
.LC.37:
	.ascii	"################################"
	.ascii	"##############\n\000"
	.align	1
.LC.38:
	.ascii	"\000"
	.align	1
.LC.39:
	.ascii	"\000"
	.align	16
.LC.40:
	.ascii	" Press Enter\000"
	.align	16
.LC.41:
	.ascii	" Cannot open results file \n\000"
	.align	2
.LC.42:
	.ascii	"\n\000"
	.weak	elbrus_optimizing_compiler_v1.23.20_Sep__4_2019
	elbrus_optimizing_compiler_v1.23.20_Sep__4_2019 = 0x0