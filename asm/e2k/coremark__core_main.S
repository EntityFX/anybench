	.file	"core_main.c"
	.ignore	ld_st_style
	.ignore	strict_delay
! -----------------------------------------------------------------------------
	.text
! coremark/core_main.c : 38
	.global	iterate
	.type	iterate, #function
	.align	8
iterate:
	! <0000>
	{
	  setwd	wsz = 0xa, nfx = 0x1, dbl = 0x0
	  setbn	rsz = 0x3, rbs = 0x6, rcur = 0x0
	  getsp,0	_f16s,_lts1hi 0xfff0, %dr2
	}
	! <0001>
	{
	  nop 1
	  addd,0,sm	0x0, %dr0, %dr5				! coremark/core_main.c : 41
	  adds,1,sm	0x0, 0x0, %r7			! coremark/core_main.c : 43
	  adds,2,sm	0x0, 0x0, %r8			! coremark/core_main.c : 44
	  adds,3,sm	0x0, 0x0, %r9			! coremark/core_main.c : 45
	  adds,4,sm	0x0, 0x0, %r10			! coremark/core_main.c : 46
	  adds,5,sm	0x0, 0x0, %r3			! coremark/core_main.c : 48
	}
	! <0003>
	{
	  ldw,0	%dr5, _f16s,_lts0hi 0x2c, %r6		! coremark/core_main.c : 42
	}
	! <0004>
	{
	  sth,2,sm	%dr5, _f16s,_lts0hi 0x60, %r7		! coremark/core_main.c : 43
	  sth,5,sm	%dr5, _f16s,_lts0lo 0x62, %r8		! coremark/core_main.c : 44
	}
	! <0005>
	{
	  sth,2,sm	%dr5, _f16s,_lts0hi 0x64, %r9		! coremark/core_main.c : 45
	  sth,5,sm	%dr5, _f16s,_lts0lo 0x66, %r10		! coremark/core_main.c : 46
	}
.L18:							! coremark/core_main.c : 48
	! <0006>
	{
	  disp	%ctpr1, .L20				! coremark/core_main.c : 48
	}
	! <0007>
	{
	  nop 3
	  cmpbsb,0	%r3, %r6, %pred0				! coremark/core_main.c : 48
	}
	! <0011>
	{
	  ct	%ctpr1 ? ~%pred0				! coremark/core_main.c : 48
	}
.L23:							! coremark/core_main.c : 48
	! <0012>
	{
	  addd,0,sm	0x0, %dr5, %db[0]				! coremark/core_main.c : 49
	  addd,1,sm	0x0, 0x1, %db[1]			! coremark/core_main.c : 49
	}
.LCS.1:							! coremark/core_main.c : 49
	! <0013>
	{
	  nop 4
	  disp	%ctpr1, core_bench_list				! coremark/core_main.c : 49
	}
	! <0018>
	{
	  call	%ctpr1, wbs = 0x6			! coremark/core_main.c : 49
	}
.LCS.2:							! coremark/core_main.c : 49
	! <0019>
	{
	  adds,0,sm	0x0, %b[0], %r7				! coremark/core_main.c : 49
	  ldh,2	%dr5, _f16s,_lts0hi 0x60, %r8		! coremark/core_main.c : 50
	}
	! <0020>
	{
	  adds,0,sm	0x0, %r7, %r4				! coremark/core_main.c : 49
	}
	! <0021>
	{
	  sxt,0,sm	0x5, %r4, %db[0]				! coremark/core_main.c : 50
	}
	! <0022>
	{
	  sxt,0,sm	0x5, %r8, %db[1]				! coremark/core_main.c : 50
	}
.LCS.3:							! coremark/core_main.c : 50
	! <0023>
	{
	  nop 4
	  disp	%ctpr1, crcu16				! coremark/core_main.c : 50
	}
	! <0028>
	{
	  call	%ctpr1, wbs = 0x6			! coremark/core_main.c : 50
	}
.LCS.4:							! coremark/core_main.c : 50
	! <0029>
	{
	  adds,0,sm	0x0, %b[0], %r7				! coremark/core_main.c : 50
	  addd,1,sm	0x0, %dr5, %db[0]				! coremark/core_main.c : 51
	  addd,2,sm	0x0, _f16s,_lts0hi 0xffff, %db[1]	! coremark/core_main.c : 51
	}
	! <0030>
	{
	  sth,2,sm	%dr5, _f16s,_lts0hi 0x60, %r7		! coremark/core_main.c : 50
	}
.LCS.5:							! coremark/core_main.c : 51
	! <0031>
	{
	  nop 4
	  disp	%ctpr1, core_bench_list				! coremark/core_main.c : 51
	}
	! <0036>
	{
	  call	%ctpr1, wbs = 0x6			! coremark/core_main.c : 51
	}
.LCS.6:							! coremark/core_main.c : 51
	! <0037>
	{
	  adds,0,sm	0x0, %b[0], %r7				! coremark/core_main.c : 51
	  ldh,2	%dr5, _f16s,_lts0hi 0x60, %r8		! coremark/core_main.c : 52
	}
	! <0038>
	{
	  adds,0,sm	0x0, %r7, %r4				! coremark/core_main.c : 51
	}
	! <0039>
	{
	  sxt,0,sm	0x5, %r4, %db[0]				! coremark/core_main.c : 52
	}
	! <0040>
	{
	  sxt,0,sm	0x5, %r8, %db[1]				! coremark/core_main.c : 52
	}
.LCS.7:							! coremark/core_main.c : 52
	! <0041>
	{
	  nop 4
	  disp	%ctpr1, crcu16				! coremark/core_main.c : 52
	}
	! <0046>
	{
	  call	%ctpr1, wbs = 0x6			! coremark/core_main.c : 52
	}
.LCS.8:							! coremark/core_main.c : 52
	! <0047>
	{
	  adds,0,sm	0x0, %b[0], %r7				! coremark/core_main.c : 52
	  cmpesb,1	%r3, 0x0, %pred1				! coremark/core_main.c : 53
	  disp	%ctpr1, .L71				! coremark/core_main.c : 53
	}
	! <0048>
	{
	  nop 3
	  sth,2,sm	%dr5, _f16s,_lts0hi 0x60, %r7		! coremark/core_main.c : 52
	}
	! <0052>
	{
	  ct	%ctpr1 ? ~%pred1				! coremark/core_main.c : 53
	}
.L74:							! coremark/core_main.c : 53
	! <0053>
	{
	  nop 2
	  ldh,0	%dr5, _f16s,_lts0hi 0x60, %r7		! coremark/core_main.c : 53
	}
	! <0056>
	{
	  sth,2,sm	%dr5, _f16s,_lts0hi 0x62, %r7		! coremark/core_main.c : 53
	}
.L71:							! coremark/core_main.c : 53
	! <0057>
	{
	  nop 4
	  adds,0	%r3, 0x1, %r3				! coremark/core_main.c : 48
	  disp	%ctpr1, .L18				! coremark/core_main.c : 48
	}
	! <0062>
	{
	  ct	%ctpr1				! coremark/core_main.c : 48
	}
.L20:							! coremark/core_main.c : 48
	! <0063>
	{
	  nop 5
	  addd,0,sm	0x0, 0x0, %dr0			! coremark/core_main.c : 55
	  return	%ctpr3				! coremark/core_main.c : 55
	}
	! <0069>
	{
	  ct	%ctpr3					! coremark/core_main.c : 55
	}
	.size	iterate, .- iterate
! -----------------------------------------------------------------------------
! coremark/core_main.c : 93
	.global	main
	.type	main, #function
	.align	8
main:
	! <0000>
	{
	  setwd	wsz = 0x14, nfx = 0x1, dbl = 0x0
	  setbn	rsz = 0x3, rbs = 0x10, rcur = 0x0
	  getsp,0	_f16s,_lts1hi 0xff70, %dr3
	}
	! <0001>
	{
	  addd,0	%dr3, _f16s,_lts0hi 0x90, %dr2
	}
	! <0002>
	{
	  stw,2,sm	%dr2, 0x0, %r0				! coremark/core_main.c : 93
	  adds,0,sm	0x0, 0x0, %r5			! coremark/core_main.c : 95
	  adds,1,sm	0x0, 0x0, %r6			! coremark/core_main.c : 95
	  adds,3,sm	0x0, _f32s,_lts0 0xffff, %r7		! coremark/core_main.c : 96
	  adds,4,sm	0x0, 0x0, %r8			! coremark/core_main.c : 96
	  adds,5,sm	0x0, 0x0, %r9			! coremark/core_main.c : 97
	}
	! <0003>
	{
	  addd,0	%dr2, _f16s,_lts0hi 0xff90, %dr16		! coremark/core_main.c : 104
	  addd,1,sm	0x0, %dr2, %db[1]				! coremark/core_main.c : 104
	  addd,2,sm	0x0, %dr1, %db[2]				! coremark/core_main.c : 104
	}
	! <0004>
	{
	  addd,0	%dr16, _f16s,_lts0hi 0x6a, %dr16		! coremark/core_main.c : 104
	}
	! <0005>
	{
	  addd,0,sm	0x0, %dr16, %db[0]				! coremark/core_main.c : 104
	}
.LCS.9:							! coremark/core_main.c : 104
	! <0006>
	{
	  nop 4
	  disp	%ctpr1, portable_init				! coremark/core_main.c : 104
	}
	! <0011>
	{
	  call	%ctpr1, wbs = 0x10			! coremark/core_main.c : 104
	}
.LCS.10:						! coremark/core_main.c : 104
	! <0012>
	{
	  nop 4
	  disp	%ctpr1, .L105				! coremark/core_main.c : 104
	}
	! <0017>
	{
	  ct	%ctpr1				! coremark/core_main.c : 104
	}
.L108:							! coremark/core_main.c : 106
	! <0018>
	{
	  addd,0,sm	0x0, [ _f64,_lts0 .LC.4 ], %db[0]	! coremark/core_main.c : 107
	  addd,1,sm	0x0, [ _f64,_lts2 .LC.4 ], %dr16	! coremark/core_main.c : 107
	}
	! <0019>
	{
	  std,2,sm	%dr3, 0x0, %dr16				! coremark/core_main.c : 107
	}
.LCS.11:						! coremark/core_main.c : 107
	! <0020>
	{
	  nop 4
	  disp	%ctpr1, printf				! coremark/core_main.c : 107
	}
	! <0025>
	{
	  call	%ctpr1, wbs = 0x10			! coremark/core_main.c : 107
	}
.LCS.12:						! coremark/core_main.c : 107
	! <0026>
	{
	  nop 5
	  addd,0,sm	0x0, 0x0, %dr0			! coremark/core_main.c : 108
	  return	%ctpr3				! coremark/core_main.c : 108
	}
	! <0032>
	{
	  ct	%ctpr3					! coremark/core_main.c : 108
	}
.L105:							! coremark/core_main.c : 108
	! <0033>
	{
	  nop 2
	  ldw,0	%dr2, 0x0, %r16				! coremark/core_main.c : 110
	  addd,1,sm	0x0, 0x1, %db[0]			! coremark/core_main.c : 110
	  addd,2,sm	0x0, %dr1, %db[2]				! coremark/core_main.c : 110
	}
	! <0036>
	{
	  sxt,0,sm	0x2, %r16, %db[1]				! coremark/core_main.c : 110
	}
.LCS.13:						! coremark/core_main.c : 110
	! <0037>
	{
	  nop 4
	  disp	%ctpr1, get_seed_args				! coremark/core_main.c : 110
	}
	! <0042>
	{
	  call	%ctpr1, wbs = 0x10			! coremark/core_main.c : 110
	}
.LCS.14:						! coremark/core_main.c : 110
	! <0043>
	{
	  adds,0,sm	0x0, %b[0], %r16				! coremark/core_main.c : 110
	  addd,1	%dr2, _f16s,_lts0hi 0xff90, %dr17		! coremark/core_main.c : 110
	  addd,2,sm	0x0, 0x2, %db[0]			! coremark/core_main.c : 111
	  addd,3,sm	0x0, %dr1, %db[2]				! coremark/core_main.c : 111
	}
	! <0044>
	{
	  nop 2
	  sth,2,sm	%dr17, 0x0, %r16				! coremark/core_main.c : 110
	  ldw,5	%dr2, 0x0, %r16				! coremark/core_main.c : 111
	}
	! <0047>
	{
	  sxt,0,sm	0x2, %r16, %db[1]				! coremark/core_main.c : 111
	}
.LCS.15:						! coremark/core_main.c : 111
	! <0048>
	{
	  nop 4
	  disp	%ctpr1, get_seed_args				! coremark/core_main.c : 111
	}
	! <0053>
	{
	  call	%ctpr1, wbs = 0x10			! coremark/core_main.c : 111
	}
.LCS.16:						! coremark/core_main.c : 111
	! <0054>
	{
	  adds,0,sm	0x0, %b[0], %r16				! coremark/core_main.c : 111
	  addd,1	%dr2, _f16s,_lts0hi 0xff90, %dr17		! coremark/core_main.c : 111
	  addd,2,sm	0x0, 0x3, %db[0]			! coremark/core_main.c : 112
	  addd,3,sm	0x0, %dr1, %db[2]				! coremark/core_main.c : 112
	}
	! <0055>
	{
	  nop 2
	  sth,2,sm	%dr17, 0x2, %r16				! coremark/core_main.c : 111
	  ldw,5	%dr2, 0x0, %r16				! coremark/core_main.c : 112
	}
	! <0058>
	{
	  sxt,0,sm	0x2, %r16, %db[1]				! coremark/core_main.c : 112
	}
.LCS.17:						! coremark/core_main.c : 112
	! <0059>
	{
	  nop 4
	  disp	%ctpr1, get_seed_args				! coremark/core_main.c : 112
	}
	! <0064>
	{
	  call	%ctpr1, wbs = 0x10			! coremark/core_main.c : 112
	}
.LCS.18:						! coremark/core_main.c : 112
	! <0065>
	{
	  adds,0,sm	0x0, %b[0], %r16				! coremark/core_main.c : 112
	  addd,1	%dr2, _f16s,_lts0hi 0xff90, %dr17		! coremark/core_main.c : 112
	  addd,2,sm	0x0, 0x4, %db[0]			! coremark/core_main.c : 113
	  addd,3,sm	0x0, %dr1, %db[2]				! coremark/core_main.c : 113
	}
	! <0066>
	{
	  nop 2
	  sth,2,sm	%dr17, 0x4, %r16				! coremark/core_main.c : 112
	  ldw,5	%dr2, 0x0, %r16				! coremark/core_main.c : 113
	}
	! <0069>
	{
	  sxt,0,sm	0x2, %r16, %db[1]				! coremark/core_main.c : 113
	}
.LCS.19:						! coremark/core_main.c : 113
	! <0070>
	{
	  nop 4
	  disp	%ctpr1, get_seed_args				! coremark/core_main.c : 113
	}
	! <0075>
	{
	  call	%ctpr1, wbs = 0x10			! coremark/core_main.c : 113
	}
.LCS.20:						! coremark/core_main.c : 113
	! <0076>
	{
	  adds,0,sm	0x0, %b[0], %r16				! coremark/core_main.c : 113
	  addd,1	%dr2, _f16s,_lts0hi 0xff90, %dr17		! coremark/core_main.c : 113
	  addd,2,sm	0x0, 0x5, %db[0]			! coremark/core_main.c : 117
	  addd,3,sm	0x0, %dr1, %db[2]				! coremark/core_main.c : 117
	}
	! <0077>
	{
	  nop 2
	  stw,2,sm	%dr17, _f16s,_lts0hi 0x2c, %r16		! coremark/core_main.c : 113
	  ldw,5	%dr2, 0x0, %r16				! coremark/core_main.c : 117
	}
	! <0080>
	{
	  sxt,0,sm	0x2, %r16, %db[1]				! coremark/core_main.c : 117
	}
.LCS.21:						! coremark/core_main.c : 117
	! <0081>
	{
	  nop 4
	  disp	%ctpr1, get_seed_args				! coremark/core_main.c : 117
	}
	! <0086>
	{
	  call	%ctpr1, wbs = 0x10			! coremark/core_main.c : 117
	}
.LCS.22:						! coremark/core_main.c : 117
	! <0087>
	{
	  adds,0,sm	0x0, %b[0], %r16				! coremark/core_main.c : 117
	  addd,1	%dr2, _f16s,_lts0hi 0xff90, %dr17		! coremark/core_main.c : 117
	  addd,2	%dr2, _f16s,_lts0lo 0xff90, %dr18		! coremark/core_main.c : 118
	  disp	%ctpr1, .L195				! coremark/core_main.c : 118
	}
	! <0088>
	{
	  nop 2
	  stw,2,sm	%dr17, _f16s,_lts0hi 0x30, %r16		! coremark/core_main.c : 117
	  ldw,5	%dr18, _f16s,_lts0lo 0x30, %r16		! coremark/core_main.c : 118
	}
	! <0091>
	{
	  nop 2
	  cmpesb,0	%r16, 0x0, %pred0				! coremark/core_main.c : 118
	}
	! <0094>
	{
	  ct	%ctpr1 ? ~%pred0				! coremark/core_main.c : 118
	}
.L198:							! coremark/core_main.c : 118
	! <0095>
	{
	  addd,0	%dr2, _f16s,_lts0hi 0xff90, %dr16		! coremark/core_main.c : 119
	  adds,1,sm	0x0, 0x7, %r17			! coremark/core_main.c : 119
	}
	! <0096>
	{
	  stw,2,sm	%dr16, _f16s,_lts0hi 0x30, %r17		! coremark/core_main.c : 119
	}
.L195:							! coremark/core_main.c : 119
	! <0097>
	{
	  addd,0	%dr2, _f16s,_lts0hi 0xff90, %dr16		! coremark/core_main.c : 122
	  disp	%ctpr1, .L206				! coremark/core_main.c : 122
	}
	! <0098>
	{
	  nop 2
	  ldh,0	%dr16, 0x0, %r16				! coremark/core_main.c : 122
	}
	! <0101>
	{
	  getfs,0	%r16, _f16s,_lts0hi 0x3400, %r16		! coremark/core_main.c : 122
	}
	! <0102>
	{
	  nop 2
	  cmpesb,0	%r16, 0x0, %pred1				! coremark/core_main.c : 122
	}
	! <0105>
	{
	  ct	%ctpr1 ? ~%pred1				! coremark/core_main.c : 122
	}
.L209:							! coremark/core_main.c : 122
	! <0106>
	{
	  addd,0	%dr2, _f16s,_lts0hi 0xff90, %dr16		! coremark/core_main.c : 122
	  disp	%ctpr1, .L206				! coremark/core_main.c : 122
	}
	! <0107>
	{
	  nop 2
	  ldh,0	%dr16, 0x2, %r16				! coremark/core_main.c : 122
	}
	! <0110>
	{
	  getfs,0	%r16, _f16s,_lts0hi 0x3400, %r16		! coremark/core_main.c : 122
	}
	! <0111>
	{
	  nop 2
	  cmpesb,0	%r16, 0x0, %pred2				! coremark/core_main.c : 122
	}
	! <0114>
	{
	  ct	%ctpr1 ? ~%pred2				! coremark/core_main.c : 122
	}
.L216:							! coremark/core_main.c : 122
	! <0115>
	{
	  addd,0	%dr2, _f16s,_lts0hi 0xff90, %dr16		! coremark/core_main.c : 122
	  disp	%ctpr1, .L206				! coremark/core_main.c : 122
	}
	! <0116>
	{
	  nop 2
	  ldh,0	%dr16, 0x4, %r16				! coremark/core_main.c : 122
	}
	! <0119>
	{
	  getfs,0	%r16, _f16s,_lts0hi 0x3400, %r16		! coremark/core_main.c : 122
	}
	! <0120>
	{
	  nop 2
	  cmpesb,0	%r16, 0x0, %pred3				! coremark/core_main.c : 122
	}
	! <0123>
	{
	  ct	%ctpr1 ? ~%pred3				! coremark/core_main.c : 122
	}
.L223:							! coremark/core_main.c : 122
	! <0124>
	{
	  addd,0	%dr2, _f16s,_lts0hi 0xff90, %dr16		! coremark/core_main.c : 123
	  adds,1,sm	0x0, 0x0, %r17			! coremark/core_main.c : 123
	  addd,2	%dr2, _f16s,_lts0lo 0xff90, %dr18		! coremark/core_main.c : 124
	  adds,3,sm	0x0, 0x0, %r19			! coremark/core_main.c : 124
	  addd,4	%dr2, _f16s,_lts1hi 0xff90, %dr20		! coremark/core_main.c : 125
	  adds,5,sm	0x0, _f16s,_lts1lo 0x66, %r21		! coremark/core_main.c : 125
	}
	! <0125>
	{
	  sth,2,sm	%dr16, 0x0, %r17				! coremark/core_main.c : 123
	  sth,5,sm	%dr18, 0x2, %r19				! coremark/core_main.c : 124
	}
	! <0126>
	{
	  sth,2,sm	%dr20, 0x4, %r21				! coremark/core_main.c : 125
	}
.L206:							! coremark/core_main.c : 125
	! <0127>
	{
	  addd,0	%dr2, _f16s,_lts0hi 0xff90, %dr16		! coremark/core_main.c : 127
	  disp	%ctpr1, .L237				! coremark/core_main.c : 127
	}
	! <0128>
	{
	  nop 2
	  ldh,0	%dr16, 0x0, %r16				! coremark/core_main.c : 127
	}
	! <0131>
	{
	  getfs,0	%r16, _f16s,_lts0hi 0x3400, %r16		! coremark/core_main.c : 127
	}
	! <0132>
	{
	  nop 2
	  cmpesb,0	%r16, 0x1, %pred4				! coremark/core_main.c : 127
	}
	! <0135>
	{
	  ct	%ctpr1 ? ~%pred4				! coremark/core_main.c : 127
	}
.L240:							! coremark/core_main.c : 127
	! <0136>
	{
	  addd,0	%dr2, _f16s,_lts0hi 0xff90, %dr16		! coremark/core_main.c : 127
	  disp	%ctpr1, .L237				! coremark/core_main.c : 127
	}
	! <0137>
	{
	  nop 2
	  ldh,0	%dr16, 0x2, %r16				! coremark/core_main.c : 127
	}
	! <0140>
	{
	  getfs,0	%r16, _f16s,_lts0hi 0x3400, %r16		! coremark/core_main.c : 127
	}
	! <0141>
	{
	  nop 2
	  cmpesb,0	%r16, 0x0, %pred5				! coremark/core_main.c : 127
	}
	! <0144>
	{
	  ct	%ctpr1 ? ~%pred5				! coremark/core_main.c : 127
	}
.L247:							! coremark/core_main.c : 127
	! <0145>
	{
	  addd,0	%dr2, _f16s,_lts0hi 0xff90, %dr16		! coremark/core_main.c : 127
	  disp	%ctpr1, .L237				! coremark/core_main.c : 127
	}
	! <0146>
	{
	  nop 2
	  ldh,0	%dr16, 0x4, %r16				! coremark/core_main.c : 127
	}
	! <0149>
	{
	  getfs,0	%r16, _f16s,_lts0hi 0x3400, %r16		! coremark/core_main.c : 127
	}
	! <0150>
	{
	  nop 2
	  cmpesb,0	%r16, 0x0, %pred6				! coremark/core_main.c : 127
	}
	! <0153>
	{
	  ct	%ctpr1 ? ~%pred6				! coremark/core_main.c : 127
	}
.L254:							! coremark/core_main.c : 127
	! <0154>
	{
	  addd,0	%dr2, _f16s,_lts0hi 0xff90, %dr16		! coremark/core_main.c : 128
	  adds,1,sm	0x0, _f16s,_lts0lo 0x3415, %r17	! coremark/core_main.c : 128
	  addd,2	%dr2, _f16s,_lts1hi 0xff90, %dr18		! coremark/core_main.c : 129
	  adds,3,sm	0x0, _f16s,_lts1lo 0x3415, %r19	! coremark/core_main.c : 129
	  addd,4	%dr2, _f32s,_lts2 0xffffff90, %dr20	! coremark/core_main.c : 130
	  adds,5,sm	0x0, _f32s,_lts3 0x66, %r21		! coremark/core_main.c : 130
	}
	! <0155>
	{
	  sth,2,sm	%dr16, 0x0, %r17				! coremark/core_main.c : 128
	  sth,5,sm	%dr18, 0x2, %r19				! coremark/core_main.c : 129
	}
	! <0156>
	{
	  sth,2,sm	%dr20, 0x4, %r21				! coremark/core_main.c : 130
	}
.L237:							! coremark/core_main.c : 130
	! <0157>
	{
	  adds,0,sm	0x0, 0x0, %r4			! coremark/core_main.c : 140
	}
.L265:							! coremark/core_main.c : 140
	! <0158>
	{
	  getfs,0	%r4, _f16s,_lts0hi 0x400, %r16		! coremark/core_main.c : 140
	  disp	%ctpr1, .L268				! coremark/core_main.c : 140
	}
	! <0159>
	{
	  nop 3
	  cmplsb,0	%r16, 0x1, %pred7				! coremark/core_main.c : 140
	}
	! <0163>
	{
	  ct	%ctpr1 ? ~%pred7				! coremark/core_main.c : 140
	}
.L271:							! coremark/core_main.c : 140
	! <0164>
	{
	  nop 2
	  ldw,0	%dr2, 0x0, %r16				! coremark/core_main.c : 141
	  addd,1,sm	0x0, 0x7, %db[0]			! coremark/core_main.c : 141
	  addd,2,sm	0x0, %dr1, %db[2]				! coremark/core_main.c : 141
	}
	! <0167>
	{
	  sxt,0,sm	0x2, %r16, %db[1]				! coremark/core_main.c : 141
	}
.LCS.23:						! coremark/core_main.c : 141
	! <0168>
	{
	  nop 4
	  disp	%ctpr1, get_seed_args				! coremark/core_main.c : 141
	}
	! <0173>
	{
	  call	%ctpr1, wbs = 0x10			! coremark/core_main.c : 141
	}
.LCS.24:						! coremark/core_main.c : 141
	! <0174>
	{
	  adds,0,sm	0x0, %b[0], %r16				! coremark/core_main.c : 141
	  disp	%ctpr1, .L287				! coremark/core_main.c : 142
	}
	! <0175>
	{
	  getfs,0	%r16, _f16s,_lts0hi 0x3400, %r11		! coremark/core_main.c : 141
	}
	! <0176>
	{
	  nop 2
	  cmpesb,0	%r11, 0x0, %pred8				! coremark/core_main.c : 142
	}
	! <0179>
	{
	  ct	%ctpr1 ? %pred8				! coremark/core_main.c : 142
	}
.L290:							! coremark/core_main.c : 142
	! <0180>
	{
	  addd,0	%dr2, _f16s,_lts0hi 0xff90, %dr16		! coremark/core_main.c : 143
	  sxt,1,sm	0x5, %r4, %dr17				! coremark/core_main.c : 143
	  disp	%ctpr1, .L296				! coremark/core_main.c : 143
	}
	! <0181>
	{
	  nop 5
	  muld,0	%dr17, _f16s,_lts0hi 0x70, %dr17		! coremark/core_main.c : 143
	}
	! <0187>
	{
	  addd,0	%dr16, %dr17, %dr16				! coremark/core_main.c : 143
	}
	! <0188>
	{
	  stw,2,sm	%dr16, _f16s,_lts0hi 0x28, %r11		! coremark/core_main.c : 143
	  ct	%ctpr1				! coremark/core_main.c : 143
	}
.L287:							! coremark/core_main.c : 143
	! <0189>
	{
	  addd,0	%dr2, _f16s,_lts0hi 0xff90, %dr16		! coremark/core_main.c : 145
	  sxt,1,sm	0x5, %r4, %dr17				! coremark/core_main.c : 145
	  adds,2,sm	0x0, _f16s,_lts0lo 0x7d0, %r18	! coremark/core_main.c : 145
	}
	! <0190>
	{
	  nop 5
	  muld,0	%dr17, _f16s,_lts0hi 0x70, %dr17		! coremark/core_main.c : 145
	}
	! <0196>
	{
	  addd,0	%dr16, %dr17, %dr16				! coremark/core_main.c : 145
	}
	! <0197>
	{
	  stw,2,sm	%dr16, _f16s,_lts0hi 0x28, %r18		! coremark/core_main.c : 145
	}
.L296:							! coremark/core_main.c : 145
	! <0198>
	{
	  addd,0	%dr2, _f16s,_lts0hi 0xff90, %dr16		! coremark/core_main.c : 146
	  sxt,1,sm	0x5, %r4, %dr17				! coremark/core_main.c : 146
	}
	! <0199>
	{
	  nop 5
	  muld,0	%dr17, _f16s,_lts0hi 0x70, %dr17		! coremark/core_main.c : 146
	}
	! <0205>
	{
	  addd,0	%dr16, %dr17, %dr16				! coremark/core_main.c : 146
	}
	! <0206>
	{
	  nop 2
	  ldw,0	%dr16, _f16s,_lts0hi 0x28, %r16		! coremark/core_main.c : 146
	}
	! <0209>
	{
	  sxt,0,sm	0x6, %r16, %dr16				! coremark/core_main.c : 146
	}
	! <0210>
	{
	  addd,0,sm	0x0, %dr16, %db[0]				! coremark/core_main.c : 146
	}
.LCS.25:						! coremark/core_main.c : 146
	! <0211>
	{
	  nop 4
	  disp	%ctpr1, portable_malloc				! coremark/core_main.c : 146
	}
	! <0216>
	{
	  call	%ctpr1, wbs = 0x10			! coremark/core_main.c : 146
	}
.LCS.26:						! coremark/core_main.c : 146
	! <0217>
	{
	  addd,0,sm	0x0, %db[0], %dr16				! coremark/core_main.c : 146
	  addd,1	%dr2, _f16s,_lts0hi 0xff90, %dr17		! coremark/core_main.c : 146
	  sxt,2,sm	0x5, %r4, %dr18				! coremark/core_main.c : 146
	  addd,3	%dr2, _f16s,_lts0lo 0xff90, %dr19		! coremark/core_main.c : 147
	  addd,4	%dr2, _f16s,_lts1hi 0xff90, %dr20		! coremark/core_main.c : 147
	  sxt,5,sm	0x5, %r4, %dr21				! coremark/core_main.c : 147
	}
	! <0218>
	{
	  addd,0	%dr2, _f16s,_lts0hi 0xff90, %dr22		! coremark/core_main.c : 148
	  addd,1	%dr2, _f16s,_lts0lo 0xff90, %dr23		! coremark/core_main.c : 148
	  sxt,2,sm	0x5, %r4, %dr24				! coremark/core_main.c : 148
	  addd,3	%dr2, _f16s,_lts1hi 0xff90, %dr25		! coremark/core_main.c : 149
	  addd,4	%dr2, _f16s,_lts1lo 0xff90, %dr26		! coremark/core_main.c : 149
	  sxt,5,sm	0x5, %r4, %dr27				! coremark/core_main.c : 149
	}
	! <0219>
	{
	  addd,0	%dr2, _f32s,_lts0 0xffffff90, %dr28	! coremark/core_main.c : 150
	  sxt,1,sm	0x5, %r4, %dr29				! coremark/core_main.c : 150
	  adds,2,sm	0x0, 0x0, %r30			! coremark/core_main.c : 150
	}
	! <0220>
	{
	  muld,0	%dr18, _f16s,_lts0hi 0x70, %dr18		! coremark/core_main.c : 146
	  muld,1	%dr21, _f16s,_lts0lo 0x70, %dr21		! coremark/core_main.c : 147
	  muld,3	%dr24, _f16s,_lts1hi 0x70, %dr24		! coremark/core_main.c : 148
	  muld,4	%dr27, _f16s,_lts1lo 0x70, %dr27		! coremark/core_main.c : 149
	}
	! <0221>
	{
	  nop 5
	  muld,0	%dr29, _f32s,_lts0 0x70, %dr29		! coremark/core_main.c : 150
	}
	! <0227>
	{
	  addd,0	%dr17, %dr18, %dr17				! coremark/core_main.c : 146
	  addd,1	%dr20, %dr21, %dr18				! coremark/core_main.c : 147
	  addd,2	%dr23, %dr24, %dr20				! coremark/core_main.c : 148
	  addd,3	%dr26, %dr27, %dr21				! coremark/core_main.c : 149
	  addd,4	%dr28, %dr29, %dr23				! coremark/core_main.c : 150
	}
	! <0228>
	{
	  addd,0	%dr17, 0x8, %dr17				! coremark/core_main.c : 146
	}
	! <0229>
	{
	  nop 2
	  std,2,sm	%dr17, 0x0, %dr16				! coremark/core_main.c : 146
	  ldh,5	%dr19, 0x0, %r16				! coremark/core_main.c : 147
	}
	! <0232>
	{
	  nop 2
	  sth,2,sm	%dr18, 0x0, %r16				! coremark/core_main.c : 147
	  ldh,5	%dr22, 0x2, %r16				! coremark/core_main.c : 148
	}
	! <0235>
	{
	  nop 2
	  sth,2,sm	%dr20, 0x2, %r16				! coremark/core_main.c : 148
	  ldh,5	%dr25, 0x4, %r16				! coremark/core_main.c : 149
	}
	! <0238>
	{
	  sth,2,sm	%dr21, 0x4, %r16				! coremark/core_main.c : 149
	  sth,5,sm	%dr23, _f16s,_lts0hi 0x68, %r30		! coremark/core_main.c : 150
	  addd,0	%dr2, _f16s,_lts0lo 0xff90, %dr16		! coremark/core_main.c : 151
	  addd,1	%dr2, _f16s,_lts1hi 0xff90, %dr17		! coremark/core_main.c : 151
	  sxt,3,sm	0x5, %r4, %dr18				! coremark/core_main.c : 151
	  adds,4	%r4, 0x1, %r4				! coremark/core_main.c : 140
	  disp	%ctpr1, .L265				! coremark/core_main.c : 140
	}
	! <0239>
	{
	  nop 5
	  ldw,0	%dr16, _f16s,_lts0hi 0x30, %r16		! coremark/core_main.c : 151
	  muld,1	%dr18, _f16s,_lts0lo 0x70, %dr18		! coremark/core_main.c : 151
	}
	! <0245>
	{
	  addd,0	%dr17, %dr18, %dr17				! coremark/core_main.c : 151
	}
	! <0246>
	{
	  stw,2,sm	%dr17, _f16s,_lts0hi 0x30, %r16		! coremark/core_main.c : 151
	  ct	%ctpr1				! coremark/core_main.c : 140
	}
.L268:							! coremark/core_main.c : 140
	! <0247>
	{
	  adds,0,sm	0x0, 0x0, %r4			! coremark/core_main.c : 168
	}
.L364:							! coremark/core_main.c : 168
	! <0248>
	{
	  getfs,0	%r4, _f16s,_lts0hi 0x400, %r16		! coremark/core_main.c : 168
	  disp	%ctpr1, .L367				! coremark/core_main.c : 168
	}
	! <0249>
	{
	  nop 3
	  cmplsb,0	%r16, 0x3, %pred9				! coremark/core_main.c : 168
	}
	! <0253>
	{
	  ct	%ctpr1 ? ~%pred9				! coremark/core_main.c : 168
	}
.L370:							! coremark/core_main.c : 168
	! <0254>
	{
	  getfs,0	%r4, _f16s,_lts0hi 0x400, %r16		! coremark/core_main.c : 169
	  addd,1	%dr2, _f16s,_lts0lo 0xff90, %dr17		! coremark/core_main.c : 169
	  disp	%ctpr1, .L377				! coremark/core_main.c : 169
	}
	! <0255>
	{
	  nop 2
	  shls,0	0x1, %r16, %r16				! coremark/core_main.c : 169
	  ldw,2	%dr17, _f16s,_lts0hi 0x30, %r17		! coremark/core_main.c : 169
	}
	! <0258>
	{
	  ands,0	%r16, %r17, %r16				! coremark/core_main.c : 169
	}
	! <0259>
	{
	  nop 2
	  cmpesb,0	%r16, 0x0, %pred10				! coremark/core_main.c : 169
	}
	! <0262>
	{
	  ct	%ctpr1 ? %pred10				! coremark/core_main.c : 169
	}
.L380:							! coremark/core_main.c : 169
	! <0263>
	{
	  adds,0	%r6, 0x1, %r6				! coremark/core_main.c : 170
	}
.L377:							! coremark/core_main.c : 170
	! <0264>
	{
	  nop 4
	  adds,0	%r4, 0x1, %r4				! coremark/core_main.c : 168
	  disp	%ctpr1, .L364				! coremark/core_main.c : 168
	}
	! <0269>
	{
	  ct	%ctpr1				! coremark/core_main.c : 168
	}
.L367:							! coremark/core_main.c : 168
	! <0270>
	{
	  adds,0,sm	0x0, 0x0, %r4			! coremark/core_main.c : 172
	}
.L388:							! coremark/core_main.c : 172
	! <0271>
	{
	  getfs,0	%r4, _f16s,_lts0hi 0x400, %r16		! coremark/core_main.c : 172
	  disp	%ctpr1, .L391				! coremark/core_main.c : 172
	}
	! <0272>
	{
	  nop 3
	  cmplsb,0	%r16, 0x1, %pred11				! coremark/core_main.c : 172
	}
	! <0276>
	{
	  ct	%ctpr1 ? ~%pred11				! coremark/core_main.c : 172
	}
.L394:							! coremark/core_main.c : 172
	! <0277>
	{
	  addd,0	%dr2, _f16s,_lts0hi 0xff90, %dr16		! coremark/core_main.c : 173
	  sxt,1,sm	0x5, %r4, %dr17				! coremark/core_main.c : 173
	  getfs,2	%r6, _f16s,_lts0lo 0x400, %r18		! coremark/core_main.c : 173
	  addd,3	%dr2, _f16s,_lts1hi 0xff90, %dr19		! coremark/core_main.c : 173
	  sxt,4,sm	0x5, %r4, %dr20				! coremark/core_main.c : 173
	  adds,5	%r4, 0x1, %r4				! coremark/core_main.c : 172
	  disp	%ctpr1, .L388				! coremark/core_main.c : 172
	}
	! <0278>
	{
	  nop 5
	  muld,0	%dr17, _f16s,_lts0hi 0x70, %dr17		! coremark/core_main.c : 173
	  muld,1	%dr20, _f16s,_lts0lo 0x70, %dr20		! coremark/core_main.c : 173
	}
	! <0284>
	{
	  addd,0	%dr16, %dr17, %dr16				! coremark/core_main.c : 173
	  addd,1	%dr19, %dr20, %dr17				! coremark/core_main.c : 173
	}
	! <0285>
	{
	  nop 2
	  ldw,0	%dr16, _f16s,_lts0hi 0x28, %r16		! coremark/core_main.c : 173
	}
	! <0288>
	{
	  nop 7
	  udivs,5	%r16, %r18, %r16				! coremark/core_main.c : 173
	}
	! <0296>
	{
	  nop 5
	}
	! <0302>
	{
	  stw,2,sm	%dr17, _f16s,_lts0hi 0x28, %r16		! coremark/core_main.c : 173
	  ct	%ctpr1				! coremark/core_main.c : 172
	}
.L391:							! coremark/core_main.c : 172
	! <0303>
	{
	  adds,0,sm	0x0, 0x0, %r4			! coremark/core_main.c : 175
	}
.L412:							! coremark/core_main.c : 175
	! <0304>
	{
	  getfs,0	%r4, _f16s,_lts0hi 0x400, %r16		! coremark/core_main.c : 175
	  disp	%ctpr1, .L415				! coremark/core_main.c : 175
	}
	! <0305>
	{
	  nop 3
	  cmplsb,0	%r16, 0x3, %pred12				! coremark/core_main.c : 175
	}
	! <0309>
	{
	  ct	%ctpr1 ? ~%pred12				! coremark/core_main.c : 175
	}
.L418:							! coremark/core_main.c : 175
	! <0310>
	{
	  getfs,0	%r4, _f16s,_lts0hi 0x400, %r16		! coremark/core_main.c : 177
	  addd,1	%dr2, _f16s,_lts0lo 0xff90, %dr17		! coremark/core_main.c : 177
	  disp	%ctpr1, .L425				! coremark/core_main.c : 177
	}
	! <0311>
	{
	  nop 2
	  shls,0	0x1, %r16, %r16				! coremark/core_main.c : 177
	  ldw,2	%dr17, _f16s,_lts0hi 0x30, %r17		! coremark/core_main.c : 177
	}
	! <0314>
	{
	  ands,0	%r16, %r17, %r16				! coremark/core_main.c : 177
	}
	! <0315>
	{
	  nop 2
	  cmpesb,0	%r16, 0x0, %pred13				! coremark/core_main.c : 177
	}
	! <0318>
	{
	  ct	%ctpr1 ? %pred13				! coremark/core_main.c : 177
	}
.L428:							! coremark/core_main.c : 177
	! <0319>
	{
	  adds,0,sm	0x0, 0x0, %r12			! coremark/core_main.c : 178
	}
.L430:							! coremark/core_main.c : 178
	! <0320>
	{
	  nop 4
	  cmpbsb,0	%r12, 0x1, %pred14				! coremark/core_main.c : 178
	  disp	%ctpr1, .L432				! coremark/core_main.c : 178
	}
	! <0325>
	{
	  ct	%ctpr1 ? ~%pred14				! coremark/core_main.c : 178
	}
.L435:							! coremark/core_main.c : 178
	! <0326>
	{
	  addd,0	%dr2, _f16s,_lts0hi 0xff90, %dr16		! coremark/core_main.c : 179
	  sxt,1,sm	0x6, %r12, %dr17				! coremark/core_main.c : 179
	  addd,2	%dr2, _f16s,_lts0lo 0xff90, %dr18		! coremark/core_main.c : 179
	  getfs,3	%r5, _f16s,_lts1hi 0x400, %r19		! coremark/core_main.c : 179
	  addd,4	%dr2, _f16s,_lts1lo 0xff90, %dr20		! coremark/core_main.c : 179
	  sxt,5,sm	0x6, %r12, %dr21				! coremark/core_main.c : 179
	}
	! <0327>
	{
	  getfs,0	%r4, _f32s,_lts0 0x400, %r22		! coremark/core_main.c : 179
	  adds,1	%r12, 0x1, %r12				! coremark/core_main.c : 178
	  disp	%ctpr1, .L430				! coremark/core_main.c : 178
	}
	! <0328>
	{
	  muld,0	%dr17, _f16s,_lts0hi 0x70, %dr17		! coremark/core_main.c : 179
	  ldw,2	%dr18, _f16s,_lts0lo 0x28, %r18		! coremark/core_main.c : 179
	  muld,1	%dr21, _f16s,_lts1hi 0x70, %dr21		! coremark/core_main.c : 179
	  adds,3	%r22, 0x1, %r22				! coremark/core_main.c : 179
	}
	! <0329>
	{
	  sxt,0,sm	0x2, %r22, %dr22				! coremark/core_main.c : 179
	}
	! <0330>
	{
	  shld,0	%dr22, 0x3, %dr22				! coremark/core_main.c : 179
	}
	! <0331>
	{
	  nop 2
	  muls,0	%r18, %r19, %r18				! coremark/core_main.c : 179
	}
	! <0334>
	{
	  addd,0	%dr16, %dr17, %dr16				! coremark/core_main.c : 179
	  addd,1	%dr20, %dr21, %dr17				! coremark/core_main.c : 179
	}
	! <0335>
	{
	  addd,0	%dr16, 0x8, %dr16				! coremark/core_main.c : 179
	  addd,1	%dr17, 0x8, %dr17				! coremark/core_main.c : 179
	}
	! <0336>
	{
	  ldd,0	%dr16, 0x0, %dr16				! coremark/core_main.c : 179
	  addd,1	%dr17, %dr22, %dr17				! coremark/core_main.c : 179
	}
	! <0337>
	{
	  nop 1
	  sxt,0,sm	0x6, %r18, %dr18				! coremark/core_main.c : 179
	}
	! <0339>
	{
	  addd,0	%dr16, %dr18, %dr16				! coremark/core_main.c : 179
	}
	! <0340>
	{
	  std,2,sm	%dr17, 0x0, %dr16				! coremark/core_main.c : 179
	  ct	%ctpr1				! coremark/core_main.c : 178
	}
.L432:							! coremark/core_main.c : 178
	! <0341>
	{
	  adds,0	%r5, 0x1, %r5				! coremark/core_main.c : 180
	}
.L425:							! coremark/core_main.c : 180
	! <0342>
	{
	  nop 4
	  adds,0	%r4, 0x1, %r4				! coremark/core_main.c : 175
	  disp	%ctpr1, .L412				! coremark/core_main.c : 175
	}
	! <0347>
	{
	  ct	%ctpr1				! coremark/core_main.c : 175
	}
.L415:							! coremark/core_main.c : 175
	! <0348>
	{
	  adds,0,sm	0x0, 0x0, %r4			! coremark/core_main.c : 184
	}
.L470:							! coremark/core_main.c : 184
	! <0349>
	{
	  getfs,0	%r4, _f16s,_lts0hi 0x400, %r16		! coremark/core_main.c : 184
	  disp	%ctpr1, .L473				! coremark/core_main.c : 184
	}
	! <0350>
	{
	  nop 3
	  cmplsb,0	%r16, 0x1, %pred15				! coremark/core_main.c : 184
	}
	! <0354>
	{
	  ct	%ctpr1 ? ~%pred15				! coremark/core_main.c : 184
	}
.L476:							! coremark/core_main.c : 184
	! <0355>
	{
	  addd,0	%dr2, _f16s,_lts0hi 0xff90, %dr16		! coremark/core_main.c : 185
	  sxt,1,sm	0x5, %r4, %dr17				! coremark/core_main.c : 185
	  disp	%ctpr1, .L484				! coremark/core_main.c : 185
	}
	! <0356>
	{
	  nop 5
	  muld,0	%dr17, _f16s,_lts0hi 0x70, %dr17		! coremark/core_main.c : 185
	}
	! <0362>
	{
	  addd,0	%dr16, %dr17, %dr16				! coremark/core_main.c : 185
	}
	! <0363>
	{
	  nop 2
	  ldw,0	%dr16, _f16s,_lts0hi 0x30, %r16		! coremark/core_main.c : 185
	}
	! <0366>
	{
	  ands,0	%r16, 0x1, %r16				! coremark/core_main.c : 185
	}
	! <0367>
	{
	  nop 2
	  cmpesb,0	%r16, 0x0, %pred16				! coremark/core_main.c : 185
	}
	! <0370>
	{
	  ct	%ctpr1 ? %pred16				! coremark/core_main.c : 185
	}
.L487:							! coremark/core_main.c : 185
	! <0371>
	{
	  addd,0	%dr2, _f16s,_lts0hi 0xff90, %dr16		! coremark/core_main.c : 186
	  addd,1	%dr2, _f16s,_lts0lo 0xff90, %dr17		! coremark/core_main.c : 186
	  sxt,2,sm	0x5, %r4, %dr18				! coremark/core_main.c : 186
	  addd,3	%dr2, _f16s,_lts1hi 0xff90, %dr19		! coremark/core_main.c : 186
	  sxt,4,sm	0x5, %r4, %dr20				! coremark/core_main.c : 186
	}
	! <0372>
	{
	  nop 2
	  ldw,0	%dr16, _f16s,_lts0hi 0x28, %r16		! coremark/core_main.c : 186
	  muld,1	%dr18, _f16s,_lts0lo 0x70, %dr18		! coremark/core_main.c : 186
	  muld,3	%dr20, _f16s,_lts1hi 0x70, %dr20		! coremark/core_main.c : 186
	}
	! <0375>
	{
	  nop 2
	  sxt,0,sm	0x6, %r16, %db[0]				! coremark/core_main.c : 186
	}
	! <0378>
	{
	  addd,0	%dr17, %dr18, %dr16				! coremark/core_main.c : 186
	  addd,1	%dr19, %dr20, %dr17				! coremark/core_main.c : 186
	}
	! <0379>
	{
	  addd,0	%dr16, 0x8, %dr16				! coremark/core_main.c : 186
	  ldh,2	%dr17, 0x0, %r17				! coremark/core_main.c : 186
	}
	! <0380>
	{
	  addd,0	%dr16, 0x8, %dr16				! coremark/core_main.c : 186
	}
	! <0381>
	{
	  ldd,0	%dr16, 0x0, %dr16				! coremark/core_main.c : 186
	}
	! <0382>
	{
	  nop 1
	  sxt,0,sm	0x1, %r17, %db[2]				! coremark/core_main.c : 186
	}
	! <0384>
	{
	  addd,0,sm	0x0, %dr16, %db[1]				! coremark/core_main.c : 186
	}
.LCS.27:						! coremark/core_main.c : 186
	! <0385>
	{
	  nop 4
	  disp	%ctpr1, core_list_init				! coremark/core_main.c : 186
	}
	! <0390>
	{
	  call	%ctpr1, wbs = 0x10			! coremark/core_main.c : 186
	}
.LCS.28:						! coremark/core_main.c : 186
	! <0391>
	{
	  addd,0,sm	0x0, %db[0], %dr16				! coremark/core_main.c : 186
	  addd,1	%dr2, _f16s,_lts0hi 0xff90, %dr17		! coremark/core_main.c : 186
	  sxt,2,sm	0x5, %r4, %dr18				! coremark/core_main.c : 186
	}
	! <0392>
	{
	  nop 5
	  muld,0	%dr18, _f16s,_lts0hi 0x70, %dr18		! coremark/core_main.c : 186
	}
	! <0398>
	{
	  addd,0	%dr17, %dr18, %dr17				! coremark/core_main.c : 186
	}
	! <0399>
	{
	  std,2,sm	%dr17, _f16s,_lts0hi 0x38, %dr16		! coremark/core_main.c : 186
	}
.L484:							! coremark/core_main.c : 186
	! <0400>
	{
	  addd,0	%dr2, _f16s,_lts0hi 0xff90, %dr16		! coremark/core_main.c : 188
	  sxt,1,sm	0x5, %r4, %dr17				! coremark/core_main.c : 188
	  disp	%ctpr1, .L526				! coremark/core_main.c : 188
	}
	! <0401>
	{
	  nop 5
	  muld,0	%dr17, _f16s,_lts0hi 0x70, %dr17		! coremark/core_main.c : 188
	}
	! <0407>
	{
	  addd,0	%dr16, %dr17, %dr16				! coremark/core_main.c : 188
	}
	! <0408>
	{
	  nop 2
	  ldw,0	%dr16, _f16s,_lts0hi 0x30, %r16		! coremark/core_main.c : 188
	}
	! <0411>
	{
	  ands,0	%r16, 0x2, %r16				! coremark/core_main.c : 188
	}
	! <0412>
	{
	  nop 2
	  cmpesb,0	%r16, 0x0, %pred17				! coremark/core_main.c : 188
	}
	! <0415>
	{
	  ct	%ctpr1 ? %pred17				! coremark/core_main.c : 188
	}
.L529:							! coremark/core_main.c : 188
	! <0416>
	{
	  addd,0	%dr2, _f16s,_lts0hi 0xff90, %dr16		! coremark/core_main.c : 189
	  addd,1	%dr2, _f16s,_lts0lo 0xff90, %dr17		! coremark/core_main.c : 189
	  sxt,2,sm	0x5, %r4, %dr18				! coremark/core_main.c : 189
	  addd,3	%dr2, _f16s,_lts1hi 0xff90, %dr19		! coremark/core_main.c : 189
	  sxt,4,sm	0x5, %r4, %dr20				! coremark/core_main.c : 189
	  addd,5	%dr2, _f16s,_lts1lo 0xff90, %dr21		! coremark/core_main.c : 189
	}
	! <0417>
	{
	  sxt,0,sm	0x5, %r4, %dr22				! coremark/core_main.c : 189
	}
	! <0418>
	{
	  nop 5
	  ldw,0	%dr16, _f16s,_lts0hi 0x28, %r16		! coremark/core_main.c : 189
	  muld,1	%dr18, _f16s,_lts0lo 0x70, %dr18		! coremark/core_main.c : 189
	  muld,3	%dr20, _f16s,_lts1hi 0x70, %dr20		! coremark/core_main.c : 189
	  muld,4	%dr22, _f16s,_lts1lo 0x70, %dr22		! coremark/core_main.c : 189
	}
	! <0424>
	{
	  addd,0	%dr17, %dr18, %dr17				! coremark/core_main.c : 189
	  addd,1	%dr19, %dr20, %dr18				! coremark/core_main.c : 189
	}
	! <0425>
	{
	  addd,0	%dr17, 0x8, %dr17				! coremark/core_main.c : 189
	  ldh,2	%dr18, 0x0, %r18				! coremark/core_main.c : 189
	}
	! <0426>
	{
	  addd,0	0x10, %dr17, %dr17				! coremark/core_main.c : 189
	}
	! <0427>
	{
	  ldd,0	%dr17, 0x0, %dr17				! coremark/core_main.c : 189
	}
	! <0428>
	{
	  getfs,0	%r18, _f16s,_lts0hi 0x3400, %r18		! coremark/core_main.c : 189
	  addd,1	%dr21, %dr22, %dr19				! coremark/core_main.c : 189
	  addd,2	%dr2, _f16s,_lts0lo 0xff90, %dr20		! coremark/core_main.c : 189
	  sxt,3,sm	0x5, %r4, %dr21				! coremark/core_main.c : 189
	  sxt,4,sm	0x6, %r16, %db[0]				! coremark/core_main.c : 189
	}
	! <0429>
	{
	  ldh,0	%dr19, 0x2, %r16				! coremark/core_main.c : 189
	  muld,1	%dr21, _f16s,_lts0hi 0x70, %dr19		! coremark/core_main.c : 189
	}
	! <0430>
	{
	  nop 1
	  addd,0,sm	0x0, %dr17, %db[1]				! coremark/core_main.c : 189
	}
	! <0432>
	{
	  getfs,0	%r16, _f16s,_lts0hi 0x3400, %r16		! coremark/core_main.c : 189
	}
	! <0433>
	{
	  shls,0	%r16, _f16s,_lts0hi 0x10, %r16		! coremark/core_main.c : 189
	}
	! <0434>
	{
	  ors,0	%r18, %r16, %r16				! coremark/core_main.c : 189
	}
	! <0435>
	{
	  addd,0	%dr20, %dr19, %dr17				! coremark/core_main.c : 189
	  sxt,1,sm	0x2, %r16, %db[2]				! coremark/core_main.c : 189
	}
	! <0436>
	{
	  addd,0	%dr17, _f16s,_lts0hi 0x40, %dr16		! coremark/core_main.c : 189
	}
	! <0437>
	{
	  addd,0,sm	0x0, %dr16, %db[3]				! coremark/core_main.c : 189
	}
.LCS.29:						! coremark/core_main.c : 189
	! <0438>
	{
	  nop 4
	  disp	%ctpr1, core_init_matrix				! coremark/core_main.c : 189
	}
	! <0443>
	{
	  call	%ctpr1, wbs = 0x10			! coremark/core_main.c : 189
	}
.LCS.30:						! coremark/core_main.c : 189
.L526:							! coremark/core_main.c : 189
	! <0444>
	{
	  addd,0	%dr2, _f16s,_lts0hi 0xff90, %dr16		! coremark/core_main.c : 191
	  sxt,1,sm	0x5, %r4, %dr17				! coremark/core_main.c : 191
	  disp	%ctpr1, .L577				! coremark/core_main.c : 191
	}
	! <0445>
	{
	  nop 5
	  muld,0	%dr17, _f16s,_lts0hi 0x70, %dr17		! coremark/core_main.c : 191
	}
	! <0451>
	{
	  addd,0	%dr16, %dr17, %dr16				! coremark/core_main.c : 191
	}
	! <0452>
	{
	  nop 2
	  ldw,0	%dr16, _f16s,_lts0hi 0x30, %r16		! coremark/core_main.c : 191
	}
	! <0455>
	{
	  ands,0	%r16, 0x4, %r16				! coremark/core_main.c : 191
	}
	! <0456>
	{
	  nop 2
	  cmpesb,0	%r16, 0x0, %pred18				! coremark/core_main.c : 191
	}
	! <0459>
	{
	  ct	%ctpr1 ? %pred18				! coremark/core_main.c : 191
	}
.L580:							! coremark/core_main.c : 191
	! <0460>
	{
	  addd,0	%dr2, _f16s,_lts0hi 0xff90, %dr16		! coremark/core_main.c : 192
	  addd,1	%dr2, _f16s,_lts0lo 0xff90, %dr17		! coremark/core_main.c : 192
	  sxt,2,sm	0x5, %r4, %dr18				! coremark/core_main.c : 192
	  addd,3	%dr2, _f16s,_lts1hi 0xff90, %dr19		! coremark/core_main.c : 192
	  sxt,4,sm	0x5, %r4, %dr20				! coremark/core_main.c : 192
	}
	! <0461>
	{
	  nop 2
	  ldw,0	%dr16, _f16s,_lts0hi 0x28, %r16		! coremark/core_main.c : 192
	  muld,1	%dr18, _f16s,_lts0lo 0x70, %dr18		! coremark/core_main.c : 192
	  muld,3	%dr20, _f16s,_lts1hi 0x70, %dr20		! coremark/core_main.c : 192
	}
	! <0464>
	{
	  nop 2
	  sxt,0,sm	0x6, %r16, %db[0]				! coremark/core_main.c : 192
	}
	! <0467>
	{
	  addd,0	%dr17, %dr18, %dr16				! coremark/core_main.c : 192
	  addd,1	%dr19, %dr20, %dr17				! coremark/core_main.c : 192
	}
	! <0468>
	{
	  ldh,0	%dr16, 0x0, %r16				! coremark/core_main.c : 192
	  addd,1	%dr17, 0x8, %dr17				! coremark/core_main.c : 192
	}
	! <0469>
	{
	  addd,0	0x18, %dr17, %dr17				! coremark/core_main.c : 192
	}
	! <0470>
	{
	  ldd,0	%dr17, 0x0, %dr17				! coremark/core_main.c : 192
	}
	! <0471>
	{
	  nop 1
	  sxt,0,sm	0x1, %r16, %db[1]				! coremark/core_main.c : 192
	}
	! <0473>
	{
	  addd,0,sm	0x0, %dr17, %db[2]				! coremark/core_main.c : 192
	}
.LCS.31:						! coremark/core_main.c : 192
	! <0474>
	{
	  nop 4
	  disp	%ctpr1, core_init_state				! coremark/core_main.c : 192
	}
	! <0479>
	{
	  call	%ctpr1, wbs = 0x10			! coremark/core_main.c : 192
	}
.LCS.32:						! coremark/core_main.c : 192
.L577:							! coremark/core_main.c : 192
	! <0480>
	{
	  nop 4
	  adds,0	%r4, 0x1, %r4				! coremark/core_main.c : 184
	  disp	%ctpr1, .L470				! coremark/core_main.c : 184
	}
	! <0485>
	{
	  ct	%ctpr1				! coremark/core_main.c : 184
	}
.L473:							! coremark/core_main.c : 184
	! <0486>
	{
	  addd,0	%dr2, _f16s,_lts0hi 0xff90, %dr16		! coremark/core_main.c : 197
	  disp	%ctpr1, .L613				! coremark/core_main.c : 197
	}
	! <0487>
	{
	  nop 2
	  ldw,0	%dr16, _f16s,_lts0hi 0x2c, %r16		! coremark/core_main.c : 197
	}
	! <0490>
	{
	  nop 2
	  cmpesb,0	%r16, 0x0, %pred19				! coremark/core_main.c : 197
	}
	! <0493>
	{
	  ct	%ctpr1 ? ~%pred19				! coremark/core_main.c : 197
	}
.L616:							! coremark/core_main.c : 197
	! <0494>
	{
	  addd,0,sm	0x0, 0x0, %dr13			! coremark/core_main.c : 198
	  addd,1	%dr2, _f16s,_lts0hi 0xff90, %dr16		! coremark/core_main.c : 200
	  adds,2,sm	0x0, 0x1, %r17			! coremark/core_main.c : 200
	}
	! <0495>
	{
	  stw,2,sm	%dr16, _f16s,_lts0hi 0x2c, %r17		! coremark/core_main.c : 200
	}
.L621:							! coremark/core_main.c : 201
	! <0496>
	{
	  nop 4
	  fcmpltdb,0	%dr13, _f64,_lts0 0x3ff0000000000000, %pred20	! coremark/core_main.c : 201
	  disp	%ctpr1, .L623				! coremark/core_main.c : 201
	}
	! <0501>
	{
	  ct	%ctpr1 ? %pred20				! coremark/core_main.c : 201
	}
	! <0502>
	{
	  nop 4
	  disp	%ctpr1, .L626				! coremark/core_main.c : 201
	}
	! <0507>
	{
	  ct	%ctpr1				! coremark/core_main.c : 201
	}
.L623:							! coremark/core_main.c : 201
	! <0508>
	{
	  addd,0	%dr2, _f16s,_lts0hi 0xff90, %dr16		! coremark/core_main.c : 202
	}
	! <0509>
	{
	  nop 2
	  ldw,0	%dr16, _f16s,_lts0hi 0x2c, %r17		! coremark/core_main.c : 202
	}
	! <0512>
	{
	  nop 5
	  muls,0	%r17, 0xa, %r17				! coremark/core_main.c : 202
	}
	! <0518>
	{
	  stw,2,sm	%dr16, _f16s,_lts0hi 0x2c, %r17		! coremark/core_main.c : 202
	}
.LCS.33:						! coremark/core_main.c : 203
	! <0519>
	{
	  nop 4
	  disp	%ctpr1, start_time				! coremark/core_main.c : 203
	}
	! <0524>
	{
	  call	%ctpr1, wbs = 0x10			! coremark/core_main.c : 203
	}
.LCS.34:						! coremark/core_main.c : 203
	! <0525>
	{
	  addd,0	%dr2, _f16s,_lts0hi 0xff90, %dr16		! coremark/core_main.c : 204
	}
	! <0526>
	{
	  addd,0,sm	0x0, %dr16, %db[0]				! coremark/core_main.c : 204
	}
.LCS.35:						! coremark/core_main.c : 204
	! <0527>
	{
	  nop 4
	  disp	%ctpr1, iterate				! coremark/core_main.c : 204
	}
	! <0532>
	{
	  call	%ctpr1, wbs = 0x10			! coremark/core_main.c : 204
	}
.LCS.36:						! coremark/core_main.c : 204
.LCS.37:						! coremark/core_main.c : 205
	! <0533>
	{
	  nop 4
	  disp	%ctpr1, stop_time				! coremark/core_main.c : 205
	}
	! <0538>
	{
	  call	%ctpr1, wbs = 0x10			! coremark/core_main.c : 205
	}
.LCS.38:						! coremark/core_main.c : 205
.LCS.39:						! coremark/core_main.c : 206
	! <0539>
	{
	  nop 4
	  disp	%ctpr1, get_time				! coremark/core_main.c : 206
	}
	! <0544>
	{
	  call	%ctpr1, wbs = 0x10			! coremark/core_main.c : 206
	}
.LCS.40:						! coremark/core_main.c : 206
	! <0545>
	{
	  addd,0,sm	0x0, %db[0], %dr16				! coremark/core_main.c : 206
	}
	! <0546>
	{
	  addd,0,sm	0x0, %dr16, %db[0]				! coremark/core_main.c : 206
	}
.LCS.41:						! coremark/core_main.c : 206
	! <0547>
	{
	  nop 4
	  disp	%ctpr1, time_in_secs				! coremark/core_main.c : 206
	}
	! <0552>
	{
	  call	%ctpr1, wbs = 0x10			! coremark/core_main.c : 206
	}
.LCS.42:						! coremark/core_main.c : 206
	! <0553>
	{
	  addd,0,sm	0x0, %db[0], %dr16				! coremark/core_main.c : 206
	  disp	%ctpr1, .L621				! coremark/core_main.c : 206
	}
	! <0554>
	{
	  nop 3
	  addd,0,sm	0x0, %dr16, %dr13				! coremark/core_main.c : 206
	}
	! <0558>
	{
	  ct	%ctpr1				! coremark/core_main.c : 206
	}
.L626:							! coremark/core_main.c : 206
	! <0559>
	{
	  nop 5
	  fdtoidtr,0	%dr13, %dr16				! coremark/core_main.c : 209
	  disp	%ctpr1, .L675				! coremark/core_main.c : 210
	}
	! <0565>
	{
	  adds,0,sm	0x0, %r16, %r14				! coremark/core_main.c : 209
	}
	! <0566>
	{
	  nop 2
	  cmpesb,0	%r14, 0x0, %pred21				! coremark/core_main.c : 210
	}
	! <0569>
	{
	  ct	%ctpr1 ? ~%pred21				! coremark/core_main.c : 210
	}
.L678:							! coremark/core_main.c : 210
	! <0570>
	{
	  adds,0,sm	0x0, 0x1, %r14			! coremark/core_main.c : 211
	}
.L675:							! coremark/core_main.c : 211
	! <0571>
	{
	  udivs,5	0xa, %r14, %r16				! coremark/core_main.c : 212
	  addd,0	%dr2, _f16s,_lts0hi 0xff90, %dr17		! coremark/core_main.c : 212
	}
	! <0572>
	{
	  nop 7
	  ldw,0	%dr17, _f16s,_lts0hi 0x2c, %r18		! coremark/core_main.c : 212
	}
	! <0580>
	{
	  nop 4
	}
	! <0585>
	{
	  adds,0	0x1, %r16, %r16				! coremark/core_main.c : 212
	}
	! <0586>
	{
	  nop 5
	  muls,0	%r18, %r16, %r16				! coremark/core_main.c : 212
	}
	! <0592>
	{
	  stw,2,sm	%dr17, _f16s,_lts0hi 0x2c, %r16		! coremark/core_main.c : 212
	}
.L613:							! coremark/core_main.c : 212
.LCS.43:						! coremark/core_main.c : 215
	! <0593>
	{
	  nop 4
	  disp	%ctpr1, start_time				! coremark/core_main.c : 215
	}
	! <0598>
	{
	  call	%ctpr1, wbs = 0x10			! coremark/core_main.c : 215
	}
.LCS.44:						! coremark/core_main.c : 215
	! <0599>
	{
	  addd,0	%dr2, _f16s,_lts0hi 0xff90, %dr16		! coremark/core_main.c : 229
	}
	! <0600>
	{
	  addd,0,sm	0x0, %dr16, %db[0]				! coremark/core_main.c : 229
	}
.LCS.45:						! coremark/core_main.c : 229
	! <0601>
	{
	  nop 4
	  disp	%ctpr1, iterate				! coremark/core_main.c : 229
	}
	! <0606>
	{
	  call	%ctpr1, wbs = 0x10			! coremark/core_main.c : 229
	}
.LCS.46:						! coremark/core_main.c : 229
.LCS.47:						! coremark/core_main.c : 231
	! <0607>
	{
	  nop 4
	  disp	%ctpr1, stop_time				! coremark/core_main.c : 231
	}
	! <0612>
	{
	  call	%ctpr1, wbs = 0x10			! coremark/core_main.c : 231
	}
.LCS.48:						! coremark/core_main.c : 231
.LCS.49:						! coremark/core_main.c : 232
	! <0613>
	{
	  nop 4
	  disp	%ctpr1, get_time				! coremark/core_main.c : 232
	}
	! <0618>
	{
	  call	%ctpr1, wbs = 0x10			! coremark/core_main.c : 232
	}
.LCS.50:						! coremark/core_main.c : 232
	! <0619>
	{
	  addd,0,sm	0x0, %db[0], %dr16				! coremark/core_main.c : 232
	  addd,1	%dr2, _f16s,_lts0hi 0xff90, %dr17		! coremark/core_main.c : 234
	  sxt,2,sm	0x5, %r9, %db[1]				! coremark/core_main.c : 234
	}
	! <0620>
	{
	  nop 2
	  addd,0,sm	0x0, %dr16, %dr10				! coremark/core_main.c : 232
	  ldh,2	%dr17, 0x0, %r16				! coremark/core_main.c : 234
	}
	! <0623>
	{
	  sxt,0,sm	0x1, %r16, %db[0]				! coremark/core_main.c : 234
	}
.LCS.51:						! coremark/core_main.c : 234
	! <0624>
	{
	  nop 4
	  disp	%ctpr1, crc16				! coremark/core_main.c : 234
	}
	! <0629>
	{
	  call	%ctpr1, wbs = 0x10			! coremark/core_main.c : 234
	}
.LCS.52:						! coremark/core_main.c : 234
	! <0630>
	{
	  adds,0,sm	0x0, %b[0], %r16				! coremark/core_main.c : 234
	  addd,1	%dr2, _f16s,_lts0hi 0xff90, %dr17		! coremark/core_main.c : 235
	}
	! <0631>
	{
	  adds,0,sm	0x0, %r16, %r9				! coremark/core_main.c : 234
	  ldh,2	%dr17, 0x2, %r16				! coremark/core_main.c : 235
	}
	! <0632>
	{
	  nop 1
	  sxt,0,sm	0x5, %r9, %db[1]				! coremark/core_main.c : 235
	}
	! <0634>
	{
	  sxt,0,sm	0x1, %r16, %db[0]				! coremark/core_main.c : 235
	}
.LCS.53:						! coremark/core_main.c : 235
	! <0635>
	{
	  nop 4
	  disp	%ctpr1, crc16				! coremark/core_main.c : 235
	}
	! <0640>
	{
	  call	%ctpr1, wbs = 0x10			! coremark/core_main.c : 235
	}
.LCS.54:						! coremark/core_main.c : 235
	! <0641>
	{
	  adds,0,sm	0x0, %b[0], %r16				! coremark/core_main.c : 235
	  addd,1	%dr2, _f16s,_lts0hi 0xff90, %dr17		! coremark/core_main.c : 236
	}
	! <0642>
	{
	  adds,0,sm	0x0, %r16, %r9				! coremark/core_main.c : 235
	  ldh,2	%dr17, 0x4, %r16				! coremark/core_main.c : 236
	}
	! <0643>
	{
	  nop 1
	  sxt,0,sm	0x5, %r9, %db[1]				! coremark/core_main.c : 236
	}
	! <0645>
	{
	  sxt,0,sm	0x1, %r16, %db[0]				! coremark/core_main.c : 236
	}
.LCS.55:						! coremark/core_main.c : 236
	! <0646>
	{
	  nop 4
	  disp	%ctpr1, crc16				! coremark/core_main.c : 236
	}
	! <0651>
	{
	  call	%ctpr1, wbs = 0x10			! coremark/core_main.c : 236
	}
.LCS.56:						! coremark/core_main.c : 236
	! <0652>
	{
	  adds,0,sm	0x0, %b[0], %r16				! coremark/core_main.c : 236
	  addd,1	%dr2, _f16s,_lts0hi 0xff90, %dr17		! coremark/core_main.c : 237
	}
	! <0653>
	{
	  adds,0,sm	0x0, %r16, %r9				! coremark/core_main.c : 236
	  ldw,2	%dr17, _f16s,_lts0hi 0x28, %r16		! coremark/core_main.c : 237
	}
	! <0654>
	{
	  nop 1
	  sxt,0,sm	0x5, %r9, %db[1]				! coremark/core_main.c : 237
	}
	! <0656>
	{
	  sxt,0,sm	0x1, %r16, %db[0]				! coremark/core_main.c : 237
	}
.LCS.57:						! coremark/core_main.c : 237
	! <0657>
	{
	  nop 4
	  disp	%ctpr1, crc16				! coremark/core_main.c : 237
	}
	! <0662>
	{
	  call	%ctpr1, wbs = 0x10			! coremark/core_main.c : 237
	}
.LCS.58:						! coremark/core_main.c : 237
	! <0663>
	{
	  adds,0,sm	0x0, %b[0], %r16				! coremark/core_main.c : 237
	  disp	%ctpr1, .L773				! coremark/core_main.c : 239
	}
	! <0664>
	{
	  adds,0,sm	0x0, %r16, %r9				! coremark/core_main.c : 237
	}
	! <0665>
	{
	  getfs,0	%r9, _f16s,_lts0hi 0x400, %r15		! coremark/core_main.c : 239
	}
	! <0666>
	{
	  nop 2
	  cmpesb,0	%r15, _f32s,_lts0 0x8a02, %pred22		! coremark/core_main.c : 239
	}
	! <0669>
	{
	  ct	%ctpr1 ? %pred22				! coremark/core_main.c : 239
	}
	! <0670>
	{
	  nop 4
	  cmpesb,0	%r15, _f16s,_lts0hi 0x7b05, %pred23	! coremark/core_main.c : 239
	  disp	%ctpr1, .L777				! coremark/core_main.c : 239
	}
	! <0675>
	{
	  ct	%ctpr1 ? %pred23				! coremark/core_main.c : 239
	}
	! <0676>
	{
	  nop 4
	  cmpesb,0	%r15, _f16s,_lts0hi 0x4eaf, %pred24	! coremark/core_main.c : 239
	  disp	%ctpr1, .L781				! coremark/core_main.c : 239
	}
	! <0681>
	{
	  ct	%ctpr1 ? %pred24				! coremark/core_main.c : 239
	}
	! <0682>
	{
	  nop 4
	  cmpesb,0	%r15, _f32s,_lts0 0xe9f5, %pred25		! coremark/core_main.c : 239
	  disp	%ctpr1, .L785				! coremark/core_main.c : 239
	}
	! <0687>
	{
	  ct	%ctpr1 ? %pred25				! coremark/core_main.c : 239
	}
	! <0688>
	{
	  nop 4
	  cmpesb,0	%r15, _f16s,_lts0hi 0x18f2, %pred26	! coremark/core_main.c : 239
	  disp	%ctpr1, .L789				! coremark/core_main.c : 239
	}
	! <0693>
	{
	  ct	%ctpr1 ? %pred26				! coremark/core_main.c : 239
	}
	! <0694>
	{
	  nop 4
	  disp	%ctpr1, .L792				! coremark/core_main.c : 239
	}
	! <0699>
	{
	  ct	%ctpr1				! coremark/core_main.c : 239
	}
.L773:							! coremark/core_main.c : 240
	! <0700>
	{
	  adds,0,sm	0x0, 0x0, %r7			! coremark/core_main.c : 241
	  addd,1,sm	0x0, [ _f64,_lts0 .LC.5 ], %db[0]	! coremark/core_main.c : 242
	  addd,2,sm	0x0, [ _f64,_lts2 .LC.5 ], %dr16	! coremark/core_main.c : 242
	}
	! <0701>
	{
	  std,2,sm	%dr3, 0x0, %dr16				! coremark/core_main.c : 242
	}
.LCS.59:						! coremark/core_main.c : 242
	! <0702>
	{
	  nop 4
	  disp	%ctpr1, printf				! coremark/core_main.c : 242
	}
	! <0707>
	{
	  call	%ctpr1, wbs = 0x10			! coremark/core_main.c : 242
	}
.LCS.60:						! coremark/core_main.c : 242
	! <0708>
	{
	  nop 4
	  disp	%ctpr1, .L805				! coremark/core_main.c : 242
	}
	! <0713>
	{
	  ct	%ctpr1				! coremark/core_main.c : 242
	}
.L777:							! coremark/core_main.c : 244
	! <0714>
	{
	  adds,0,sm	0x0, 0x1, %r7			! coremark/core_main.c : 245
	  addd,1,sm	0x0, [ _f64,_lts0 .LC.6 ], %db[0]	! coremark/core_main.c : 246
	  addd,2,sm	0x0, [ _f64,_lts2 .LC.6 ], %dr16	! coremark/core_main.c : 246
	}
	! <0715>
	{
	  std,2,sm	%dr3, 0x0, %dr16				! coremark/core_main.c : 246
	}
.LCS.61:						! coremark/core_main.c : 246
	! <0716>
	{
	  nop 4
	  disp	%ctpr1, printf				! coremark/core_main.c : 246
	}
	! <0721>
	{
	  call	%ctpr1, wbs = 0x10			! coremark/core_main.c : 246
	}
.LCS.62:						! coremark/core_main.c : 246
	! <0722>
	{
	  nop 4
	  disp	%ctpr1, .L805				! coremark/core_main.c : 246
	}
	! <0727>
	{
	  ct	%ctpr1				! coremark/core_main.c : 246
	}
.L781:							! coremark/core_main.c : 248
	! <0728>
	{
	  adds,0,sm	0x0, 0x2, %r7			! coremark/core_main.c : 249
	  addd,1,sm	0x0, [ _f64,_lts0 .LC.7 ], %db[0]	! coremark/core_main.c : 250
	  addd,2,sm	0x0, [ _f64,_lts2 .LC.7 ], %dr16	! coremark/core_main.c : 250
	}
	! <0729>
	{
	  std,2,sm	%dr3, 0x0, %dr16				! coremark/core_main.c : 250
	}
.LCS.63:						! coremark/core_main.c : 250
	! <0730>
	{
	  nop 4
	  disp	%ctpr1, printf				! coremark/core_main.c : 250
	}
	! <0735>
	{
	  call	%ctpr1, wbs = 0x10			! coremark/core_main.c : 250
	}
.LCS.64:						! coremark/core_main.c : 250
	! <0736>
	{
	  nop 4
	  disp	%ctpr1, .L805				! coremark/core_main.c : 250
	}
	! <0741>
	{
	  ct	%ctpr1				! coremark/core_main.c : 250
	}
.L785:							! coremark/core_main.c : 252
	! <0742>
	{
	  adds,0,sm	0x0, 0x3, %r7			! coremark/core_main.c : 253
	  addd,1,sm	0x0, [ _f64,_lts0 .LC.8 ], %db[0]	! coremark/core_main.c : 254
	  addd,2,sm	0x0, [ _f64,_lts2 .LC.8 ], %dr16	! coremark/core_main.c : 254
	}
	! <0743>
	{
	  std,2,sm	%dr3, 0x0, %dr16				! coremark/core_main.c : 254
	}
.LCS.65:						! coremark/core_main.c : 254
	! <0744>
	{
	  nop 4
	  disp	%ctpr1, printf				! coremark/core_main.c : 254
	}
	! <0749>
	{
	  call	%ctpr1, wbs = 0x10			! coremark/core_main.c : 254
	}
.LCS.66:						! coremark/core_main.c : 254
	! <0750>
	{
	  nop 4
	  disp	%ctpr1, .L805				! coremark/core_main.c : 254
	}
	! <0755>
	{
	  ct	%ctpr1				! coremark/core_main.c : 254
	}
.L789:							! coremark/core_main.c : 256
	! <0756>
	{
	  adds,0,sm	0x0, 0x4, %r7			! coremark/core_main.c : 257
	  addd,1,sm	0x0, [ _f64,_lts0 .LC.9 ], %db[0]	! coremark/core_main.c : 258
	  addd,2,sm	0x0, [ _f64,_lts2 .LC.9 ], %dr16	! coremark/core_main.c : 258
	}
	! <0757>
	{
	  std,2,sm	%dr3, 0x0, %dr16				! coremark/core_main.c : 258
	}
.LCS.67:						! coremark/core_main.c : 258
	! <0758>
	{
	  nop 4
	  disp	%ctpr1, printf				! coremark/core_main.c : 258
	}
	! <0763>
	{
	  call	%ctpr1, wbs = 0x10			! coremark/core_main.c : 258
	}
.LCS.68:						! coremark/core_main.c : 258
	! <0764>
	{
	  nop 4
	  disp	%ctpr1, .L805				! coremark/core_main.c : 258
	}
	! <0769>
	{
	  ct	%ctpr1				! coremark/core_main.c : 258
	}
.L792:							! coremark/core_main.c : 260
	! <0770>
	{
	  adds,0,sm	0x0, _f32s,_lts0 0xffff, %r8		! coremark/core_main.c : 261
	}
.L805:							! coremark/core_main.c : 262
	! <0771>
	{
	  getfs,0	%r7, _f16s,_lts0hi 0x3400, %r16		! coremark/core_main.c : 264
	  disp	%ctpr1, .L859				! coremark/core_main.c : 264
	}
	! <0772>
	{
	  nop 3
	  cmplsb,0	%r16, 0x0, %pred27				! coremark/core_main.c : 264
	}
	! <0776>
	{
	  ct	%ctpr1 ? %pred27				! coremark/core_main.c : 264
	}
.L862:							! coremark/core_main.c : 264
	! <0777>
	{
	  adds,0,sm	0x0, 0x0, %r4			! coremark/core_main.c : 265
	}
.L864:							! coremark/core_main.c : 265
	! <0778>
	{
	  nop 2
	  getfs,0	%r4, _f16s,_lts0hi 0x400, %r16		! coremark/core_main.c : 265
	  ldw,2	0x0, [ _f64,_lts1 default_num_contexts ], %r17	! coremark/core_main.c : 265
	  disp	%ctpr1, .L868				! coremark/core_main.c : 265
	}
	! <0781>
	{
	  nop 2
	  cmpbsb,0	%r16, %r17, %pred28				! coremark/core_main.c : 265
	}
	! <0784>
	{
	  ct	%ctpr1 ? ~%pred28				! coremark/core_main.c : 265
	}
.L871:							! coremark/core_main.c : 265
	! <0785>
	{
	  addd,0	%dr2, _f16s,_lts0hi 0xff90, %dr16		! coremark/core_main.c : 266
	  sxt,1,sm	0x5, %r4, %dr17				! coremark/core_main.c : 266
	  adds,2,sm	0x0, 0x0, %r18			! coremark/core_main.c : 266
	  addd,3	%dr2, _f16s,_lts0lo 0xff90, %dr19		! coremark/core_main.c : 267
	  sxt,4,sm	0x5, %r4, %dr20				! coremark/core_main.c : 267
	  disp	%ctpr1, .L885				! coremark/core_main.c : 267
	}
	! <0786>
	{
	  nop 5
	  muld,0	%dr17, _f16s,_lts0hi 0x70, %dr17		! coremark/core_main.c : 266
	  muld,1	%dr20, _f16s,_lts0lo 0x70, %dr20		! coremark/core_main.c : 267
	}
	! <0792>
	{
	  addd,0	%dr16, %dr17, %dr16				! coremark/core_main.c : 266
	  addd,1	%dr19, %dr20, %dr17				! coremark/core_main.c : 267
	}
	! <0793>
	{
	  nop 2
	  sth,2,sm	%dr16, _f16s,_lts0hi 0x68, %r18		! coremark/core_main.c : 266
	  ldw,5	%dr17, _f16s,_lts0lo 0x30, %r16		! coremark/core_main.c : 267
	}
	! <0796>
	{
	  ands,0	%r16, 0x1, %r16				! coremark/core_main.c : 267
	}
	! <0797>
	{
	  nop 2
	  cmpesb,0	%r16, 0x0, %pred29				! coremark/core_main.c : 267
	}
	! <0800>
	{
	  ct	%ctpr1 ? %pred29				! coremark/core_main.c : 267
	}
.L888:							! coremark/core_main.c : 267
	! <0801>
	{
	  addd,0	%dr2, _f16s,_lts0hi 0xff90, %dr16		! coremark/core_main.c : 268
	  sxt,1,sm	0x5, %r4, %dr17				! coremark/core_main.c : 268
	  sxt,2,sm	0x1, %r7, %dr18				! coremark/core_main.c : 268
	  disp	%ctpr1, .L885				! coremark/core_main.c : 268
	}
	! <0802>
	{
	  muld,0	%dr17, _f16s,_lts0hi 0x70, %dr17		! coremark/core_main.c : 268
	  shld,1	%dr18, 0x1, %dr18				! coremark/core_main.c : 268
	}
	! <0803>
	{
	  addd,0	%dr18, [ _f64,_lts0 list_known_crc ], %dr18	! coremark/core_main.c : 268
	}
	! <0804>
	{
	  nop 2
	  ldh,0	%dr18, 0x0, %r18				! coremark/core_main.c : 268
	}
	! <0807>
	{
	  getfs,0	%r18, _f16s,_lts0hi 0x400, %r18		! coremark/core_main.c : 268
	}
	! <0808>
	{
	  addd,0	%dr16, %dr17, %dr16				! coremark/core_main.c : 268
	}
	! <0809>
	{
	  nop 2
	  ldh,0	%dr16, _f16s,_lts0hi 0x62, %r16		! coremark/core_main.c : 268
	}
	! <0812>
	{
	  getfs,0	%r16, _f16s,_lts0hi 0x400, %r16		! coremark/core_main.c : 268
	}
	! <0813>
	{
	  nop 2
	  cmpesb,0	%r16, %r18, %pred30				! coremark/core_main.c : 268
	}
	! <0816>
	{
	  ct	%ctpr1 ? %pred30				! coremark/core_main.c : 268
	}
.L903:							! coremark/core_main.c : 268
	! <0817>
	{
	  getfs,0	%r4, _f16s,_lts0hi 0x400, %r16		! coremark/core_main.c : 269
	  addd,1	%dr2, _f16s,_lts0lo 0xff90, %dr17		! coremark/core_main.c : 269
	  sxt,2,sm	0x5, %r4, %dr18				! coremark/core_main.c : 269
	  sxt,3,sm	0x1, %r7, %dr19				! coremark/core_main.c : 269
	}
	! <0818>
	{
	  muld,0	%dr18, _f16s,_lts0hi 0x70, %dr18		! coremark/core_main.c : 269
	  shld,1	%dr19, 0x1, %dr19				! coremark/core_main.c : 269
	}
	! <0819>
	{
	  addd,0	%dr19, [ _f64,_lts0 list_known_crc ], %dr19	! coremark/core_main.c : 269
	}
	! <0820>
	{
	  nop 2
	  ldh,0	%dr19, 0x0, %r19				! coremark/core_main.c : 269
	}
	! <0823>
	{
	  getfs,0	%r19, _f16s,_lts0hi 0x400, %r19		! coremark/core_main.c : 269
	}
	! <0824>
	{
	  addd,0	%dr17, %dr18, %dr17				! coremark/core_main.c : 269
	}
	! <0825>
	{
	  nop 2
	  ldh,0	%dr17, _f16s,_lts0hi 0x62, %r17		! coremark/core_main.c : 269
	}
	! <0828>
	{
	  getfs,0	%r17, _f16s,_lts0hi 0x400, %r17		! coremark/core_main.c : 269
	  addd,1,sm	0x0, [ _f64,_lts1 .LC.10 ], %db[0]	! coremark/core_main.c : 269
	}
	! <0829>
	{
	  addd,0,sm	0x0, [ _f64,_lts0 .LC.10 ], %dr18	! coremark/core_main.c : 269
	  sxt,1,sm	0x2, %r16, %dr16				! coremark/core_main.c : 269
	  sxt,2,sm	0x2, %r19, %dr19				! coremark/core_main.c : 269
	}
	! <0830>
	{
	  std,2,sm	%dr3, 0x0, %dr18				! coremark/core_main.c : 269
	  addd,0,sm	0x0, %dr16, %db[1]				! coremark/core_main.c : 269
	  std,5,sm	%dr3, 0x8, %dr16				! coremark/core_main.c : 269
	  sxt,1,sm	0x2, %r17, %dr16				! coremark/core_main.c : 269
	  addd,3,sm	0x0, %dr19, %db[3]				! coremark/core_main.c : 269
	}
	! <0831>
	{
	  addd,0,sm	0x0, %dr16, %db[2]				! coremark/core_main.c : 269
	  std,2,sm	0x10, %dr3, %dr16				! coremark/core_main.c : 269
	  std,5,sm	0x18, %dr3, %dr19				! coremark/core_main.c : 269
	}
.LCS.69:						! coremark/core_main.c : 269
	! <0832>
	{
	  nop 4
	  disp	%ctpr1, printf				! coremark/core_main.c : 269
	}
	! <0837>
	{
	  call	%ctpr1, wbs = 0x10			! coremark/core_main.c : 269
	}
.LCS.70:						! coremark/core_main.c : 269
	! <0838>
	{
	  addd,0	%dr2, _f16s,_lts0hi 0xff90, %dr16		! coremark/core_main.c : 270
	  sxt,1,sm	0x5, %r4, %dr17				! coremark/core_main.c : 270
	}
	! <0839>
	{
	  nop 5
	  muld,0	%dr17, _f16s,_lts0hi 0x70, %dr17		! coremark/core_main.c : 270
	}
	! <0845>
	{
	  addd,0	%dr16, %dr17, %dr16				! coremark/core_main.c : 270
	}
	! <0846>
	{
	  nop 2
	  ldh,0	%dr16, _f16s,_lts0hi 0x68, %r17		! coremark/core_main.c : 270
	}
	! <0849>
	{
	  adds,0	%r17, 0x1, %r17				! coremark/core_main.c : 270
	}
	! <0850>
	{
	  sth,2,sm	%dr16, _f16s,_lts0hi 0x68, %r17		! coremark/core_main.c : 270
	}
.L885:							! coremark/core_main.c : 270
	! <0851>
	{
	  addd,0	%dr2, _f16s,_lts0hi 0xff90, %dr16		! coremark/core_main.c : 272
	  sxt,1,sm	0x5, %r4, %dr17				! coremark/core_main.c : 272
	  disp	%ctpr1, .L948				! coremark/core_main.c : 272
	}
	! <0852>
	{
	  nop 5
	  muld,0	%dr17, _f16s,_lts0hi 0x70, %dr17		! coremark/core_main.c : 272
	}
	! <0858>
	{
	  addd,0	%dr16, %dr17, %dr16				! coremark/core_main.c : 272
	}
	! <0859>
	{
	  nop 2
	  ldw,0	%dr16, _f16s,_lts0hi 0x30, %r16		! coremark/core_main.c : 272
	}
	! <0862>
	{
	  ands,0	%r16, 0x2, %r16				! coremark/core_main.c : 272
	}
	! <0863>
	{
	  nop 2
	  cmpesb,0	%r16, 0x0, %pred31				! coremark/core_main.c : 272
	}
	! <0866>
	{
	  ct	%ctpr1 ? %pred31				! coremark/core_main.c : 272
	}
.L951:							! coremark/core_main.c : 272
	! <0867>
	{
	  addd,0	%dr2, _f16s,_lts0hi 0xff90, %dr16		! coremark/core_main.c : 273
	  sxt,1,sm	0x5, %r4, %dr17				! coremark/core_main.c : 273
	  sxt,2,sm	0x1, %r7, %dr18				! coremark/core_main.c : 273
	  disp	%ctpr1, .L948				! coremark/core_main.c : 273
	}
	! <0868>
	{
	  muld,0	%dr17, _f16s,_lts0hi 0x70, %dr17		! coremark/core_main.c : 273
	  shld,1	%dr18, 0x1, %dr18				! coremark/core_main.c : 273
	}
	! <0869>
	{
	  addd,0	%dr18, [ _f64,_lts0 matrix_known_crc ], %dr18	! coremark/core_main.c : 273
	}
	! <0870>
	{
	  nop 2
	  ldh,0	%dr18, 0x0, %r18				! coremark/core_main.c : 273
	}
	! <0873>
	{
	  getfs,0	%r18, _f16s,_lts0hi 0x400, %r18		! coremark/core_main.c : 273
	}
	! <0874>
	{
	  addd,0	%dr16, %dr17, %dr16				! coremark/core_main.c : 273
	}
	! <0875>
	{
	  nop 2
	  ldh,0	%dr16, _f16s,_lts0hi 0x64, %r16		! coremark/core_main.c : 273
	}
	! <0878>
	{
	  getfs,0	%r16, _f16s,_lts0hi 0x400, %r16		! coremark/core_main.c : 273
	}
	! <0879>
	{
	  nop 2
	  cmpesb,0	%r16, %r18, %pred0				! coremark/core_main.c : 273
	}
	! <0882>
	{
	  ct	%ctpr1 ? %pred0				! coremark/core_main.c : 273
	}
.L966:							! coremark/core_main.c : 273
	! <0883>
	{
	  getfs,0	%r4, _f16s,_lts0hi 0x400, %r16		! coremark/core_main.c : 274
	  addd,1	%dr2, _f16s,_lts0lo 0xff90, %dr17		! coremark/core_main.c : 274
	  sxt,2,sm	0x5, %r4, %dr18				! coremark/core_main.c : 274
	  sxt,3,sm	0x1, %r7, %dr19				! coremark/core_main.c : 274
	  addd,4,sm	0x0, [ _f64,_lts1 .LC.11 ], %db[0]	! coremark/core_main.c : 274
	}
	! <0884>
	{
	  addd,0,sm	0x0, [ _f64,_lts0 .LC.11 ], %dr20	! coremark/core_main.c : 274
	}
	! <0885>
	{
	  muld,0	%dr18, _f32s,_lts0 0x70, %dr18		! coremark/core_main.c : 274
	  shld,1	%dr19, 0x1, %dr19				! coremark/core_main.c : 274
	  sxt,2,sm	0x2, %r16, %dr16				! coremark/core_main.c : 274
	}
	! <0886>
	{
	  addd,0	%dr19, [ _f64,_lts0 matrix_known_crc ], %dr19	! coremark/core_main.c : 274
	  addd,1,sm	0x0, %dr16, %db[1]				! coremark/core_main.c : 274
	}
	! <0887>
	{
	  nop 2
	  ldh,0	%dr19, 0x0, %r19				! coremark/core_main.c : 274
	}
	! <0890>
	{
	  getfs,0	%r19, _f16s,_lts0hi 0x400, %r19		! coremark/core_main.c : 274
	}
	! <0891>
	{
	  addd,0	%dr17, %dr18, %dr17				! coremark/core_main.c : 274
	  sxt,1,sm	0x2, %r19, %dr18				! coremark/core_main.c : 274
	}
	! <0892>
	{
	  ldh,0	%dr17, _f16s,_lts0hi 0x64, %r17		! coremark/core_main.c : 274
	  std,2,sm	%dr3, 0x0, %dr20				! coremark/core_main.c : 274
	}
	! <0893>
	{
	  nop 2
	  std,2,sm	%dr3, 0x8, %dr16				! coremark/core_main.c : 274
	  addd,0,sm	0x0, %dr18, %db[3]				! coremark/core_main.c : 274
	}
	! <0896>
	{
	  getfs,0	%r17, _f16s,_lts0hi 0x400, %r16		! coremark/core_main.c : 274
	}
	! <0897>
	{
	  sxt,0,sm	0x2, %r16, %dr16				! coremark/core_main.c : 274
	}
	! <0898>
	{
	  addd,0,sm	0x0, %dr16, %db[2]				! coremark/core_main.c : 274
	  std,2,sm	0x10, %dr3, %dr16				! coremark/core_main.c : 274
	  std,5,sm	0x18, %dr3, %dr18				! coremark/core_main.c : 274
	}
.LCS.71:						! coremark/core_main.c : 274
	! <0899>
	{
	  nop 4
	  disp	%ctpr1, printf				! coremark/core_main.c : 274
	}
	! <0904>
	{
	  call	%ctpr1, wbs = 0x10			! coremark/core_main.c : 274
	}
.LCS.72:						! coremark/core_main.c : 274
	! <0905>
	{
	  addd,0	%dr2, _f16s,_lts0hi 0xff90, %dr16		! coremark/core_main.c : 275
	  sxt,1,sm	0x5, %r4, %dr17				! coremark/core_main.c : 275
	}
	! <0906>
	{
	  nop 5
	  muld,0	%dr17, _f16s,_lts0hi 0x70, %dr17		! coremark/core_main.c : 275
	}
	! <0912>
	{
	  addd,0	%dr16, %dr17, %dr16				! coremark/core_main.c : 275
	}
	! <0913>
	{
	  nop 2
	  ldh,0	%dr16, _f16s,_lts0hi 0x68, %r17		! coremark/core_main.c : 275
	}
	! <0916>
	{
	  adds,0	%r17, 0x1, %r17				! coremark/core_main.c : 275
	}
	! <0917>
	{
	  sth,2,sm	%dr16, _f16s,_lts0hi 0x68, %r17		! coremark/core_main.c : 275
	}
.L948:							! coremark/core_main.c : 275
	! <0918>
	{
	  addd,0	%dr2, _f16s,_lts0hi 0xff90, %dr16		! coremark/core_main.c : 277
	  sxt,1,sm	0x5, %r4, %dr17				! coremark/core_main.c : 277
	  disp	%ctpr1, .L1011				! coremark/core_main.c : 277
	}
	! <0919>
	{
	  nop 5
	  muld,0	%dr17, _f16s,_lts0hi 0x70, %dr17		! coremark/core_main.c : 277
	}
	! <0925>
	{
	  addd,0	%dr16, %dr17, %dr16				! coremark/core_main.c : 277
	}
	! <0926>
	{
	  nop 2
	  ldw,0	%dr16, _f16s,_lts0hi 0x30, %r16		! coremark/core_main.c : 277
	}
	! <0929>
	{
	  ands,0	%r16, 0x4, %r16				! coremark/core_main.c : 277
	}
	! <0930>
	{
	  nop 2
	  cmpesb,0	%r16, 0x0, %pred1				! coremark/core_main.c : 277
	}
	! <0933>
	{
	  ct	%ctpr1 ? %pred1				! coremark/core_main.c : 277
	}
.L1014:							! coremark/core_main.c : 277
	! <0934>
	{
	  addd,0	%dr2, _f16s,_lts0hi 0xff90, %dr16		! coremark/core_main.c : 278
	  sxt,1,sm	0x5, %r4, %dr17				! coremark/core_main.c : 278
	  sxt,2,sm	0x1, %r7, %dr18				! coremark/core_main.c : 278
	  disp	%ctpr1, .L1011				! coremark/core_main.c : 278
	}
	! <0935>
	{
	  muld,0	%dr17, _f16s,_lts0hi 0x70, %dr17		! coremark/core_main.c : 278
	  shld,1	%dr18, 0x1, %dr18				! coremark/core_main.c : 278
	}
	! <0936>
	{
	  addd,0	%dr18, [ _f64,_lts0 state_known_crc ], %dr18	! coremark/core_main.c : 278
	}
	! <0937>
	{
	  nop 2
	  ldh,0	%dr18, 0x0, %r18				! coremark/core_main.c : 278
	}
	! <0940>
	{
	  getfs,0	%r18, _f16s,_lts0hi 0x400, %r18		! coremark/core_main.c : 278
	}
	! <0941>
	{
	  addd,0	%dr16, %dr17, %dr16				! coremark/core_main.c : 278
	}
	! <0942>
	{
	  nop 2
	  ldh,0	%dr16, _f16s,_lts0hi 0x66, %r16		! coremark/core_main.c : 278
	}
	! <0945>
	{
	  getfs,0	%r16, _f16s,_lts0hi 0x400, %r16		! coremark/core_main.c : 278
	}
	! <0946>
	{
	  nop 2
	  cmpesb,0	%r16, %r18, %pred2				! coremark/core_main.c : 278
	}
	! <0949>
	{
	  ct	%ctpr1 ? %pred2				! coremark/core_main.c : 278
	}
.L1029:							! coremark/core_main.c : 278
	! <0950>
	{
	  getfs,0	%r4, _f16s,_lts0hi 0x400, %r16		! coremark/core_main.c : 279
	  addd,1	%dr2, _f16s,_lts0lo 0xff90, %dr17		! coremark/core_main.c : 279
	  sxt,2,sm	0x5, %r4, %dr18				! coremark/core_main.c : 279
	  sxt,3,sm	0x1, %r7, %dr19				! coremark/core_main.c : 279
	  addd,4,sm	0x0, [ _f64,_lts1 .LC.12 ], %db[0]	! coremark/core_main.c : 279
	}
	! <0951>
	{
	  addd,0,sm	0x0, [ _f64,_lts0 .LC.12 ], %dr20	! coremark/core_main.c : 279
	}
	! <0952>
	{
	  muld,0	%dr18, _f32s,_lts0 0x70, %dr18		! coremark/core_main.c : 279
	  shld,1	%dr19, 0x1, %dr19				! coremark/core_main.c : 279
	  sxt,2,sm	0x2, %r16, %dr16				! coremark/core_main.c : 279
	}
	! <0953>
	{
	  addd,0	%dr19, [ _f64,_lts0 state_known_crc ], %dr19	! coremark/core_main.c : 279
	  addd,1,sm	0x0, %dr16, %db[1]				! coremark/core_main.c : 279
	}
	! <0954>
	{
	  nop 2
	  ldh,0	%dr19, 0x0, %r19				! coremark/core_main.c : 279
	}
	! <0957>
	{
	  getfs,0	%r19, _f16s,_lts0hi 0x400, %r19		! coremark/core_main.c : 279
	}
	! <0958>
	{
	  addd,0	%dr17, %dr18, %dr17				! coremark/core_main.c : 279
	  sxt,1,sm	0x2, %r19, %dr18				! coremark/core_main.c : 279
	}
	! <0959>
	{
	  ldh,0	%dr17, _f16s,_lts0hi 0x66, %r17		! coremark/core_main.c : 279
	  std,2,sm	%dr3, 0x0, %dr20				! coremark/core_main.c : 279
	}
	! <0960>
	{
	  nop 2
	  std,2,sm	%dr3, 0x8, %dr16				! coremark/core_main.c : 279
	  addd,0,sm	0x0, %dr18, %db[3]				! coremark/core_main.c : 279
	}
	! <0963>
	{
	  getfs,0	%r17, _f16s,_lts0hi 0x400, %r16		! coremark/core_main.c : 279
	}
	! <0964>
	{
	  sxt,0,sm	0x2, %r16, %dr16				! coremark/core_main.c : 279
	}
	! <0965>
	{
	  addd,0,sm	0x0, %dr16, %db[2]				! coremark/core_main.c : 279
	  std,2,sm	0x10, %dr3, %dr16				! coremark/core_main.c : 279
	  std,5,sm	0x18, %dr3, %dr18				! coremark/core_main.c : 279
	}
.LCS.73:						! coremark/core_main.c : 279
	! <0966>
	{
	  nop 4
	  disp	%ctpr1, printf				! coremark/core_main.c : 279
	}
	! <0971>
	{
	  call	%ctpr1, wbs = 0x10			! coremark/core_main.c : 279
	}
.LCS.74:						! coremark/core_main.c : 279
	! <0972>
	{
	  addd,0	%dr2, _f16s,_lts0hi 0xff90, %dr16		! coremark/core_main.c : 280
	  sxt,1,sm	0x5, %r4, %dr17				! coremark/core_main.c : 280
	}
	! <0973>
	{
	  nop 5
	  muld,0	%dr17, _f16s,_lts0hi 0x70, %dr17		! coremark/core_main.c : 280
	}
	! <0979>
	{
	  addd,0	%dr16, %dr17, %dr16				! coremark/core_main.c : 280
	}
	! <0980>
	{
	  nop 2
	  ldh,0	%dr16, _f16s,_lts0hi 0x68, %r17		! coremark/core_main.c : 280
	}
	! <0983>
	{
	  adds,0	%r17, 0x1, %r17				! coremark/core_main.c : 280
	}
	! <0984>
	{
	  sth,2,sm	%dr16, _f16s,_lts0hi 0x68, %r17		! coremark/core_main.c : 280
	}
.L1011:							! coremark/core_main.c : 280
	! <0985>
	{
	  addd,0	%dr2, _f16s,_lts0hi 0xff90, %dr16		! coremark/core_main.c : 282
	  sxt,1,sm	0x5, %r4, %dr17				! coremark/core_main.c : 282
	  getfs,2	%r8, _f16s,_lts0lo 0x3400, %r18		! coremark/core_main.c : 282
	  adds,3	%r4, 0x1, %r4				! coremark/core_main.c : 265
	  disp	%ctpr1, .L864				! coremark/core_main.c : 265
	}
	! <0986>
	{
	  nop 5
	  muld,0	%dr17, _f16s,_lts0hi 0x70, %dr17		! coremark/core_main.c : 282
	}
	! <0992>
	{
	  addd,0	%dr16, %dr17, %dr16				! coremark/core_main.c : 282
	}
	! <0993>
	{
	  nop 2
	  ldh,0	%dr16, _f16s,_lts0hi 0x68, %r16		! coremark/core_main.c : 282
	}
	! <0996>
	{
	  getfs,0	%r16, _f16s,_lts0hi 0x3400, %r16		! coremark/core_main.c : 282
	}
	! <0997>
	{
	  adds,0	%r18, %r16, %r8				! coremark/core_main.c : 282
	  ct	%ctpr1				! coremark/core_main.c : 265
	}
.L868:							! coremark/core_main.c : 265
.L859:							! coremark/core_main.c : 265
.LCS.75:						! coremark/core_main.c : 285
	! <0998>
	{
	  nop 4
	  disp	%ctpr1, check_data_types				! coremark/core_main.c : 285
	}
	! <1003>
	{
	  call	%ctpr1, wbs = 0x10			! coremark/core_main.c : 285
	}
.LCS.76:						! coremark/core_main.c : 285
	! <1004>
	{
	  adds,0,sm	0x0, %b[0], %r16				! coremark/core_main.c : 285
	  getfs,1	%r8, _f16s,_lts0hi 0x3400, %r17		! coremark/core_main.c : 285
	}
	! <1005>
	{
	  getfs,0	%r16, _f16s,_lts0hi 0x200, %r16		! coremark/core_main.c : 285
	}
	! <1006>
	{
	  adds,0	%r17, %r16, %r8				! coremark/core_main.c : 285
	  addd,1	%dr2, _f16s,_lts0hi 0xff90, %dr16		! coremark/core_main.c : 287
	  addd,2,sm	0x0, [ _f64,_lts1 .LC.13 ], %db[0]	! coremark/core_main.c : 287
	}
	! <1007>
	{
	  addd,0,sm	0x0, [ _f64,_lts0 .LC.13 ], %dr17	! coremark/core_main.c : 287
	}
	! <1008>
	{
	  nop 2
	  ldw,0	%dr16, _f32s,_lts0 0x28, %r16		! coremark/core_main.c : 287
	  std,2,sm	%dr3, 0x0, %dr17				! coremark/core_main.c : 287
	}
	! <1011>
	{
	  sxt,0,sm	0x6, %r16, %dr16				! coremark/core_main.c : 287
	}
	! <1012>
	{
	  addd,0,sm	0x0, %dr16, %db[1]				! coremark/core_main.c : 287
	  std,2,sm	%dr3, 0x8, %dr16				! coremark/core_main.c : 287
	}
.LCS.77:						! coremark/core_main.c : 287
	! <1013>
	{
	  nop 4
	  disp	%ctpr1, printf				! coremark/core_main.c : 287
	}
	! <1018>
	{
	  call	%ctpr1, wbs = 0x10			! coremark/core_main.c : 287
	}
.LCS.78:						! coremark/core_main.c : 287
	! <1019>
	{
	  addd,0,sm	0x0, [ _f64,_lts0 .LC.14 ], %db[0]	! coremark/core_main.c : 288
	  addd,1,sm	0x0, [ _f64,_lts2 .LC.14 ], %dr16	! coremark/core_main.c : 288
	  addd,2,sm	0x0, %dr10, %db[1]				! coremark/core_main.c : 288
	}
	! <1020>
	{
	  std,2,sm	%dr3, 0x0, %dr16				! coremark/core_main.c : 288
	  std,5,sm	%dr3, 0x8, %dr10				! coremark/core_main.c : 288
	}
.LCS.79:						! coremark/core_main.c : 288
	! <1021>
	{
	  nop 4
	  disp	%ctpr1, printf				! coremark/core_main.c : 288
	}
	! <1026>
	{
	  call	%ctpr1, wbs = 0x10			! coremark/core_main.c : 288
	}
.LCS.80:						! coremark/core_main.c : 288
	! <1027>
	{
	  addd,0,sm	0x0, %dr10, %db[0]				! coremark/core_main.c : 290
	}
.LCS.81:						! coremark/core_main.c : 290
	! <1028>
	{
	  nop 4
	  disp	%ctpr1, time_in_secs				! coremark/core_main.c : 290
	}
	! <1033>
	{
	  call	%ctpr1, wbs = 0x10			! coremark/core_main.c : 290
	}
.LCS.82:						! coremark/core_main.c : 290
	! <1034>
	{
	  addd,0,sm	0x0, %db[0], %dr16				! coremark/core_main.c : 290
	  addd,1,sm	0x0, [ _f64,_lts0 .LC.15 ], %db[0]	! coremark/core_main.c : 290
	  addd,2,sm	0x0, [ _f64,_lts2 .LC.15 ], %dr17	! coremark/core_main.c : 290
	}
	! <1035>
	{
	  std,2,sm	%dr3, 0x0, %dr17				! coremark/core_main.c : 290
	  addd,0,sm	0x0, %dr16, %db[1]				! coremark/core_main.c : 290
	  std,5,sm	%dr3, 0x8, %dr16				! coremark/core_main.c : 290
	}
.LCS.83:						! coremark/core_main.c : 290
	! <1036>
	{
	  nop 4
	  disp	%ctpr1, printf				! coremark/core_main.c : 290
	}
	! <1041>
	{
	  call	%ctpr1, wbs = 0x10			! coremark/core_main.c : 290
	}
.LCS.84:						! coremark/core_main.c : 290
	! <1042>
	{
	  addd,0,sm	0x0, %dr10, %db[0]				! coremark/core_main.c : 291
	}
.LCS.85:						! coremark/core_main.c : 291
	! <1043>
	{
	  nop 4
	  disp	%ctpr1, time_in_secs				! coremark/core_main.c : 291
	}
	! <1048>
	{
	  call	%ctpr1, wbs = 0x10			! coremark/core_main.c : 291
	}
.LCS.86:						! coremark/core_main.c : 291
	! <1049>
	{
	  addd,0,sm	0x0, %db[0], %dr16				! coremark/core_main.c : 291
	  disp	%ctpr1, .L1144				! coremark/core_main.c : 291
	}
	! <1050>
	{
	  nop 4
	  fcmpltdb,0	0x0, %dr16, %pred3			! coremark/core_main.c : 291
	}
	! <1055>
	{
	  ct	%ctpr1 ? %pred3				! coremark/core_main.c : 291
	}
	! <1056>
	{
	  nop 4
	  disp	%ctpr1, .L1147				! coremark/core_main.c : 291
	}
	! <1061>
	{
	  ct	%ctpr1				! coremark/core_main.c : 291
	}
.L1144:							! coremark/core_main.c : 291
	! <1062>
	{
	  ldw,0	0x0, [ _f64,_lts0 default_num_contexts ], %r16	! coremark/core_main.c : 292
	  addd,1	%dr2, _f32s,_lts2 0xffffff90, %dr17	! coremark/core_main.c : 292
	  addd,2,sm	0x0, %dr10, %db[0]				! coremark/core_main.c : 292
	}
	! <1063>
	{
	  nop 2
	  ldw,0	%dr17, _f32s,_lts0 0x2c, %r17		! coremark/core_main.c : 292
	}
	! <1066>
	{
	  nop 5
	  muls,0	%r16, %r17, %r16				! coremark/core_main.c : 292
	}
	! <1072>
	{
	  sxt,0,sm	0x6, %r16, %dr16				! coremark/core_main.c : 292
	}
	! <1073>
	{
	  idtofd,0	%dr16, %dr16				! coremark/core_main.c : 292
	}
.LCS.87:						! coremark/core_main.c : 292
	! <1074>
	{
	  nop 4
	  disp	%ctpr1, time_in_secs				! coremark/core_main.c : 292
	}
	! <1079>
	{
	  call	%ctpr1, wbs = 0x10			! coremark/core_main.c : 292
	}
.LCS.88:						! coremark/core_main.c : 292
	! <1080>
	{
	  addd,0,sm	0x0, %db[0], %dr17				! coremark/core_main.c : 292
	  addd,1,sm	0x0, [ _f64,_lts0 .LC.16 ], %db[0]	! coremark/core_main.c : 292
	  addd,2,sm	0x0, [ _f64,_lts2 .LC.16 ], %dr18	! coremark/core_main.c : 292
	}
	! <1081>
	{
	  nop 7
	  fdivd,5	%dr16, %dr17, %dr16				! coremark/core_main.c : 292
	  std,2,sm	%dr3, 0x0, %dr18				! coremark/core_main.c : 292
	}
	! <1089>
	{
	  nop 7
	}
	! <1097>
	{
	  nop 1
	}
	! <1099>
	{
	  addd,0,sm	0x0, %dr16, %db[1]				! coremark/core_main.c : 292
	  std,2,sm	%dr3, 0x8, %dr16				! coremark/core_main.c : 292
	}
.LCS.89:						! coremark/core_main.c : 292
	! <1100>
	{
	  nop 4
	  disp	%ctpr1, printf				! coremark/core_main.c : 292
	}
	! <1105>
	{
	  call	%ctpr1, wbs = 0x10			! coremark/core_main.c : 292
	}
.LCS.90:						! coremark/core_main.c : 292
.L1147:							! coremark/core_main.c : 292
	! <1106>
	{
	  addd,0,sm	0x0, %dr10, %db[0]				! coremark/core_main.c : 298
	}
.LCS.91:						! coremark/core_main.c : 298
	! <1107>
	{
	  nop 4
	  disp	%ctpr1, time_in_secs				! coremark/core_main.c : 298
	}
	! <1112>
	{
	  call	%ctpr1, wbs = 0x10			! coremark/core_main.c : 298
	}
.LCS.92:						! coremark/core_main.c : 298
	! <1113>
	{
	  addd,0,sm	0x0, %db[0], %dr16				! coremark/core_main.c : 298
	  disp	%ctpr1, .L1185				! coremark/core_main.c : 298
	}
	! <1114>
	{
	  nop 4
	  fcmpltdb,0	%dr16, _f64,_lts0 0x4024000000000000, %pred4	! coremark/core_main.c : 298
	}
	! <1119>
	{
	  ct	%ctpr1 ? %pred4				! coremark/core_main.c : 298
	}
	! <1120>
	{
	  nop 4
	  disp	%ctpr1, .L1188				! coremark/core_main.c : 298
	}
	! <1125>
	{
	  ct	%ctpr1				! coremark/core_main.c : 298
	}
.L1185:							! coremark/core_main.c : 298
	! <1126>
	{
	  addd,0,sm	0x0, [ _f64,_lts0 .LC.17 ], %db[0]	! coremark/core_main.c : 299
	  addd,1,sm	0x0, [ _f64,_lts2 .LC.17 ], %dr16	! coremark/core_main.c : 299
	}
	! <1127>
	{
	  std,2,sm	%dr3, 0x0, %dr16				! coremark/core_main.c : 299
	}
.LCS.93:						! coremark/core_main.c : 299
	! <1128>
	{
	  nop 4
	  disp	%ctpr1, printf				! coremark/core_main.c : 299
	}
	! <1133>
	{
	  call	%ctpr1, wbs = 0x10			! coremark/core_main.c : 299
	}
.LCS.94:						! coremark/core_main.c : 299
	! <1134>
	{
	  adds,0	%r8, 0x1, %r8				! coremark/core_main.c : 300
	}
.L1188:							! coremark/core_main.c : 300
	! <1135>
	{
	  ldw,0	0x0, [ _f64,_lts0 default_num_contexts ], %r16	! coremark/core_main.c : 303
	  addd,1	%dr2, _f32s,_lts2 0xffffff90, %dr17	! coremark/core_main.c : 303
	}
	! <1136>
	{
	  addd,0,sm	0x0, [ _f64,_lts0 .LC.18 ], %db[0]	! coremark/core_main.c : 303
	  addd,1,sm	0x0, [ _f64,_lts2 .LC.18 ], %dr18	! coremark/core_main.c : 303
	}
	! <1137>
	{
	  nop 1
	  ldw,0	%dr17, _f16s,_lts0hi 0x2c, %r17		! coremark/core_main.c : 303
	  std,2,sm	%dr3, 0x0, %dr18				! coremark/core_main.c : 303
	}
	! <1139>
	{
	  sxt,0,sm	0x6, %r16, %dr16				! coremark/core_main.c : 303
	}
	! <1140>
	{
	  sxt,0,sm	0x6, %r17, %dr17				! coremark/core_main.c : 303
	}
	! <1141>
	{
	  nop 5
	  muld,0	%dr16, %dr17, %dr16				! coremark/core_main.c : 303
	}
	! <1147>
	{
	  addd,0,sm	0x0, %dr16, %db[1]				! coremark/core_main.c : 303
	  std,2,sm	%dr3, 0x8, %dr16				! coremark/core_main.c : 303
	}
.LCS.95:						! coremark/core_main.c : 303
	! <1148>
	{
	  nop 4
	  disp	%ctpr1, printf				! coremark/core_main.c : 303
	}
	! <1153>
	{
	  call	%ctpr1, wbs = 0x10			! coremark/core_main.c : 303
	}
.LCS.96:						! coremark/core_main.c : 303
	! <1154>
	{
	  addd,0,sm	0x0, [ _f64,_lts0 .LC.19 ], %db[0]	! coremark/core_main.c : 304
	  addd,1,sm	0x0, [ _f64,_lts2 .LC.19 ], %dr16	! coremark/core_main.c : 304
	}
	! <1155>
	{
	  addd,0,sm	0x0, [ _f64,_lts0 .LC.20 ], %db[1]	! coremark/core_main.c : 304
	  addd,1,sm	0x0, [ _f64,_lts2 .LC.20 ], %dr17	! coremark/core_main.c : 304
	}
	! <1156>
	{
	  std,2,sm	%dr3, 0x0, %dr16				! coremark/core_main.c : 304
	  std,5,sm	%dr3, 0x8, %dr17				! coremark/core_main.c : 304
	}
.LCS.97:						! coremark/core_main.c : 304
	! <1157>
	{
	  nop 4
	  disp	%ctpr1, printf				! coremark/core_main.c : 304
	}
	! <1162>
	{
	  call	%ctpr1, wbs = 0x10			! coremark/core_main.c : 304
	}
.LCS.98:						! coremark/core_main.c : 304
	! <1163>
	{
	  addd,0,sm	0x0, [ _f64,_lts0 .LC.21 ], %db[0]	! coremark/core_main.c : 305
	  addd,1,sm	0x0, [ _f64,_lts2 .LC.21 ], %dr16	! coremark/core_main.c : 305
	}
	! <1164>
	{
	  addd,0,sm	0x0, [ _f64,_lts0 .LC.22 ], %db[1]	! coremark/core_main.c : 305
	  addd,1,sm	0x0, [ _f64,_lts2 .LC.22 ], %dr17	! coremark/core_main.c : 305
	}
	! <1165>
	{
	  std,2,sm	%dr3, 0x0, %dr16				! coremark/core_main.c : 305
	  std,5,sm	%dr3, 0x8, %dr17				! coremark/core_main.c : 305
	}
.LCS.99:						! coremark/core_main.c : 305
	! <1166>
	{
	  nop 4
	  disp	%ctpr1, printf				! coremark/core_main.c : 305
	}
	! <1171>
	{
	  call	%ctpr1, wbs = 0x10			! coremark/core_main.c : 305
	}
.LCS.100:						! coremark/core_main.c : 305
	! <1172>
	{
	  addd,0,sm	0x0, [ _f64,_lts0 .LC.23 ], %db[0]	! coremark/core_main.c : 309
	  addd,1,sm	0x0, [ _f64,_lts2 .LC.23 ], %dr16	! coremark/core_main.c : 309
	}
	! <1173>
	{
	  addd,0,sm	0x0, [ _f64,_lts0 .LC.24 ], %db[1]	! coremark/core_main.c : 309
	  addd,1,sm	0x0, [ _f64,_lts2 .LC.24 ], %dr17	! coremark/core_main.c : 309
	}
	! <1174>
	{
	  std,2,sm	%dr3, 0x0, %dr16				! coremark/core_main.c : 309
	  std,5,sm	%dr3, 0x8, %dr17				! coremark/core_main.c : 309
	}
.LCS.101:						! coremark/core_main.c : 309
	! <1175>
	{
	  nop 4
	  disp	%ctpr1, printf				! coremark/core_main.c : 309
	}
	! <1180>
	{
	  call	%ctpr1, wbs = 0x10			! coremark/core_main.c : 309
	}
.LCS.102:						! coremark/core_main.c : 309
	! <1181>
	{
	  getfs,0	%r9, _f16s,_lts0hi 0x400, %r16		! coremark/core_main.c : 311
	  addd,1,sm	0x0, [ _f64,_lts1 .LC.25 ], %db[0]	! coremark/core_main.c : 311
	}
	! <1182>
	{
	  addd,0,sm	0x0, [ _f64,_lts0 .LC.25 ], %dr17	! coremark/core_main.c : 311
	}
	! <1183>
	{
	  std,2,sm	%dr3, 0x0, %dr17				! coremark/core_main.c : 311
	  sxt,0,sm	0x2, %r16, %dr16				! coremark/core_main.c : 311
	}
	! <1184>
	{
	  addd,0,sm	0x0, %dr16, %db[1]				! coremark/core_main.c : 311
	  std,2,sm	%dr3, 0x8, %dr16				! coremark/core_main.c : 311
	}
.LCS.103:						! coremark/core_main.c : 311
	! <1185>
	{
	  nop 4
	  disp	%ctpr1, printf				! coremark/core_main.c : 311
	}
	! <1190>
	{
	  call	%ctpr1, wbs = 0x10			! coremark/core_main.c : 311
	}
.LCS.104:						! coremark/core_main.c : 311
	! <1191>
	{
	  addd,0	%dr2, _f16s,_lts0hi 0xff90, %dr16		! coremark/core_main.c : 312
	  disp	%ctpr1, .L1272				! coremark/core_main.c : 312
	}
	! <1192>
	{
	  nop 2
	  ldw,0	%dr16, _f16s,_lts0hi 0x30, %r16		! coremark/core_main.c : 312
	}
	! <1195>
	{
	  ands,0	%r16, 0x1, %r16				! coremark/core_main.c : 312
	}
	! <1196>
	{
	  nop 2
	  cmpesb,0	%r16, 0x0, %pred5				! coremark/core_main.c : 312
	}
	! <1199>
	{
	  ct	%ctpr1 ? %pred5				! coremark/core_main.c : 312
	}
.L1275:							! coremark/core_main.c : 312
	! <1200>
	{
	  adds,0,sm	0x0, 0x0, %r4			! coremark/core_main.c : 313
	}
.L1277:							! coremark/core_main.c : 313
	! <1201>
	{
	  nop 2
	  getfs,0	%r4, _f16s,_lts0hi 0x400, %r16		! coremark/core_main.c : 313
	  ldw,2	0x0, [ _f64,_lts1 default_num_contexts ], %r17	! coremark/core_main.c : 313
	  disp	%ctpr1, .L1281				! coremark/core_main.c : 313
	}
	! <1204>
	{
	  nop 2
	  cmpbsb,0	%r16, %r17, %pred6				! coremark/core_main.c : 313
	}
	! <1207>
	{
	  ct	%ctpr1 ? ~%pred6				! coremark/core_main.c : 313
	}
.L1284:							! coremark/core_main.c : 313
	! <1208>
	{
	  getfs,0	%r4, _f16s,_lts0hi 0x400, %r16		! coremark/core_main.c : 314
	  addd,1	%dr2, _f16s,_lts0lo 0xff90, %dr17		! coremark/core_main.c : 314
	  sxt,2,sm	0x5, %r4, %dr18				! coremark/core_main.c : 314
	  addd,3,sm	0x0, [ _f64,_lts1 .LC.26 ], %db[0]	! coremark/core_main.c : 314
	}
	! <1209>
	{
	  addd,0,sm	0x0, [ _f64,_lts0 .LC.26 ], %dr19	! coremark/core_main.c : 314
	}
	! <1210>
	{
	  muld,0	%dr18, _f32s,_lts0 0x70, %dr18		! coremark/core_main.c : 314
	  sxt,1,sm	0x2, %r16, %dr16				! coremark/core_main.c : 314
	}
	! <1211>
	{
	  nop 4
	  addd,0,sm	0x0, %dr16, %db[1]				! coremark/core_main.c : 314
	}
	! <1216>
	{
	  addd,0	%dr17, %dr18, %dr17				! coremark/core_main.c : 314
	}
	! <1217>
	{
	  ldh,0	%dr17, _f16s,_lts0hi 0x62, %r17		! coremark/core_main.c : 314
	  std,2,sm	%dr3, 0x0, %dr19				! coremark/core_main.c : 314
	}
	! <1218>
	{
	  nop 2
	  std,2,sm	%dr3, 0x8, %dr16				! coremark/core_main.c : 314
	}
	! <1221>
	{
	  getfs,0	%r17, _f16s,_lts0hi 0x400, %r16		! coremark/core_main.c : 314
	}
	! <1222>
	{
	  sxt,0,sm	0x2, %r16, %dr16				! coremark/core_main.c : 314
	}
	! <1223>
	{
	  addd,0,sm	0x0, %dr16, %db[2]				! coremark/core_main.c : 314
	  std,2,sm	0x10, %dr3, %dr16				! coremark/core_main.c : 314
	}
.LCS.105:						! coremark/core_main.c : 314
	! <1224>
	{
	  nop 4
	  disp	%ctpr1, printf				! coremark/core_main.c : 314
	}
	! <1229>
	{
	  call	%ctpr1, wbs = 0x10			! coremark/core_main.c : 314
	}
.LCS.106:						! coremark/core_main.c : 314
	! <1230>
	{
	  nop 4
	  adds,0	%r4, 0x1, %r4				! coremark/core_main.c : 313
	  disp	%ctpr1, .L1277				! coremark/core_main.c : 313
	}
	! <1235>
	{
	  ct	%ctpr1				! coremark/core_main.c : 313
	}
.L1281:							! coremark/core_main.c : 313
.L1272:							! coremark/core_main.c : 313
	! <1236>
	{
	  addd,0	%dr2, _f16s,_lts0hi 0xff90, %dr16		! coremark/core_main.c : 315
	  disp	%ctpr1, .L1315				! coremark/core_main.c : 315
	}
	! <1237>
	{
	  nop 2
	  ldw,0	%dr16, _f16s,_lts0hi 0x30, %r16		! coremark/core_main.c : 315
	}
	! <1240>
	{
	  ands,0	%r16, 0x2, %r16				! coremark/core_main.c : 315
	}
	! <1241>
	{
	  nop 2
	  cmpesb,0	%r16, 0x0, %pred7				! coremark/core_main.c : 315
	}
	! <1244>
	{
	  ct	%ctpr1 ? %pred7				! coremark/core_main.c : 315
	}
.L1318:							! coremark/core_main.c : 315
	! <1245>
	{
	  adds,0,sm	0x0, 0x0, %r4			! coremark/core_main.c : 316
	}
.L1320:							! coremark/core_main.c : 316
	! <1246>
	{
	  nop 2
	  getfs,0	%r4, _f16s,_lts0hi 0x400, %r16		! coremark/core_main.c : 316
	  ldw,2	0x0, [ _f64,_lts1 default_num_contexts ], %r17	! coremark/core_main.c : 316
	  disp	%ctpr1, .L1324				! coremark/core_main.c : 316
	}
	! <1249>
	{
	  nop 2
	  cmpbsb,0	%r16, %r17, %pred8				! coremark/core_main.c : 316
	}
	! <1252>
	{
	  ct	%ctpr1 ? ~%pred8				! coremark/core_main.c : 316
	}
.L1327:							! coremark/core_main.c : 316
	! <1253>
	{
	  getfs,0	%r4, _f16s,_lts0hi 0x400, %r16		! coremark/core_main.c : 317
	  addd,1	%dr2, _f16s,_lts0lo 0xff90, %dr17		! coremark/core_main.c : 317
	  sxt,2,sm	0x5, %r4, %dr18				! coremark/core_main.c : 317
	  addd,3,sm	0x0, [ _f64,_lts1 .LC.27 ], %db[0]	! coremark/core_main.c : 317
	}
	! <1254>
	{
	  addd,0,sm	0x0, [ _f64,_lts0 .LC.27 ], %dr19	! coremark/core_main.c : 317
	}
	! <1255>
	{
	  muld,0	%dr18, _f32s,_lts0 0x70, %dr18		! coremark/core_main.c : 317
	  sxt,1,sm	0x2, %r16, %dr16				! coremark/core_main.c : 317
	}
	! <1256>
	{
	  nop 4
	  addd,0,sm	0x0, %dr16, %db[1]				! coremark/core_main.c : 317
	}
	! <1261>
	{
	  addd,0	%dr17, %dr18, %dr17				! coremark/core_main.c : 317
	}
	! <1262>
	{
	  ldh,0	%dr17, _f16s,_lts0hi 0x64, %r17		! coremark/core_main.c : 317
	  std,2,sm	%dr3, 0x0, %dr19				! coremark/core_main.c : 317
	}
	! <1263>
	{
	  nop 2
	  std,2,sm	%dr3, 0x8, %dr16				! coremark/core_main.c : 317
	}
	! <1266>
	{
	  getfs,0	%r17, _f16s,_lts0hi 0x400, %r16		! coremark/core_main.c : 317
	}
	! <1267>
	{
	  sxt,0,sm	0x2, %r16, %dr16				! coremark/core_main.c : 317
	}
	! <1268>
	{
	  addd,0,sm	0x0, %dr16, %db[2]				! coremark/core_main.c : 317
	  std,2,sm	0x10, %dr3, %dr16				! coremark/core_main.c : 317
	}
.LCS.107:						! coremark/core_main.c : 317
	! <1269>
	{
	  nop 4
	  disp	%ctpr1, printf				! coremark/core_main.c : 317
	}
	! <1274>
	{
	  call	%ctpr1, wbs = 0x10			! coremark/core_main.c : 317
	}
.LCS.108:						! coremark/core_main.c : 317
	! <1275>
	{
	  nop 4
	  adds,0	%r4, 0x1, %r4				! coremark/core_main.c : 316
	  disp	%ctpr1, .L1320				! coremark/core_main.c : 316
	}
	! <1280>
	{
	  ct	%ctpr1				! coremark/core_main.c : 316
	}
.L1324:							! coremark/core_main.c : 316
.L1315:							! coremark/core_main.c : 316
	! <1281>
	{
	  addd,0	%dr2, _f16s,_lts0hi 0xff90, %dr16		! coremark/core_main.c : 318
	  disp	%ctpr1, .L1358				! coremark/core_main.c : 318
	}
	! <1282>
	{
	  nop 2
	  ldw,0	%dr16, _f16s,_lts0hi 0x30, %r16		! coremark/core_main.c : 318
	}
	! <1285>
	{
	  ands,0	%r16, 0x4, %r16				! coremark/core_main.c : 318
	}
	! <1286>
	{
	  nop 2
	  cmpesb,0	%r16, 0x0, %pred9				! coremark/core_main.c : 318
	}
	! <1289>
	{
	  ct	%ctpr1 ? %pred9				! coremark/core_main.c : 318
	}
.L1361:							! coremark/core_main.c : 318
	! <1290>
	{
	  adds,0,sm	0x0, 0x0, %r4			! coremark/core_main.c : 319
	}
.L1363:							! coremark/core_main.c : 319
	! <1291>
	{
	  nop 2
	  getfs,0	%r4, _f16s,_lts0hi 0x400, %r16		! coremark/core_main.c : 319
	  ldw,2	0x0, [ _f64,_lts1 default_num_contexts ], %r17	! coremark/core_main.c : 319
	  disp	%ctpr1, .L1367				! coremark/core_main.c : 319
	}
	! <1294>
	{
	  nop 2
	  cmpbsb,0	%r16, %r17, %pred10				! coremark/core_main.c : 319
	}
	! <1297>
	{
	  ct	%ctpr1 ? ~%pred10				! coremark/core_main.c : 319
	}
.L1370:							! coremark/core_main.c : 319
	! <1298>
	{
	  getfs,0	%r4, _f16s,_lts0hi 0x400, %r16		! coremark/core_main.c : 320
	  addd,1	%dr2, _f16s,_lts0lo 0xff90, %dr17		! coremark/core_main.c : 320
	  sxt,2,sm	0x5, %r4, %dr18				! coremark/core_main.c : 320
	  addd,3,sm	0x0, [ _f64,_lts1 .LC.28 ], %db[0]	! coremark/core_main.c : 320
	}
	! <1299>
	{
	  addd,0,sm	0x0, [ _f64,_lts0 .LC.28 ], %dr19	! coremark/core_main.c : 320
	}
	! <1300>
	{
	  muld,0	%dr18, _f32s,_lts0 0x70, %dr18		! coremark/core_main.c : 320
	  sxt,1,sm	0x2, %r16, %dr16				! coremark/core_main.c : 320
	}
	! <1301>
	{
	  nop 4
	  addd,0,sm	0x0, %dr16, %db[1]				! coremark/core_main.c : 320
	}
	! <1306>
	{
	  addd,0	%dr17, %dr18, %dr17				! coremark/core_main.c : 320
	}
	! <1307>
	{
	  ldh,0	%dr17, _f16s,_lts0hi 0x66, %r17		! coremark/core_main.c : 320
	  std,2,sm	%dr3, 0x0, %dr19				! coremark/core_main.c : 320
	}
	! <1308>
	{
	  nop 2
	  std,2,sm	%dr3, 0x8, %dr16				! coremark/core_main.c : 320
	}
	! <1311>
	{
	  getfs,0	%r17, _f16s,_lts0hi 0x400, %r16		! coremark/core_main.c : 320
	}
	! <1312>
	{
	  sxt,0,sm	0x2, %r16, %dr16				! coremark/core_main.c : 320
	}
	! <1313>
	{
	  addd,0,sm	0x0, %dr16, %db[2]				! coremark/core_main.c : 320
	  std,2,sm	0x10, %dr3, %dr16				! coremark/core_main.c : 320
	}
.LCS.109:						! coremark/core_main.c : 320
	! <1314>
	{
	  nop 4
	  disp	%ctpr1, printf				! coremark/core_main.c : 320
	}
	! <1319>
	{
	  call	%ctpr1, wbs = 0x10			! coremark/core_main.c : 320
	}
.LCS.110:						! coremark/core_main.c : 320
	! <1320>
	{
	  nop 4
	  adds,0	%r4, 0x1, %r4				! coremark/core_main.c : 319
	  disp	%ctpr1, .L1363				! coremark/core_main.c : 319
	}
	! <1325>
	{
	  ct	%ctpr1				! coremark/core_main.c : 319
	}
.L1367:							! coremark/core_main.c : 319
.L1358:							! coremark/core_main.c : 319
	! <1326>
	{
	  adds,0,sm	0x0, 0x0, %r4			! coremark/core_main.c : 321
	}
.L1398:							! coremark/core_main.c : 321
	! <1327>
	{
	  nop 2
	  getfs,0	%r4, _f16s,_lts0hi 0x400, %r16		! coremark/core_main.c : 321
	  ldw,2	0x0, [ _f64,_lts1 default_num_contexts ], %r17	! coremark/core_main.c : 321
	  disp	%ctpr1, .L1402				! coremark/core_main.c : 321
	}
	! <1330>
	{
	  nop 2
	  cmpbsb,0	%r16, %r17, %pred11				! coremark/core_main.c : 321
	}
	! <1333>
	{
	  ct	%ctpr1 ? ~%pred11				! coremark/core_main.c : 321
	}
.L1405:							! coremark/core_main.c : 321
	! <1334>
	{
	  getfs,0	%r4, _f16s,_lts0hi 0x400, %r16		! coremark/core_main.c : 322
	  addd,1	%dr2, _f16s,_lts0lo 0xff90, %dr17		! coremark/core_main.c : 322
	  sxt,2,sm	0x5, %r4, %dr18				! coremark/core_main.c : 322
	  addd,3,sm	0x0, [ _f64,_lts1 .LC.29 ], %db[0]	! coremark/core_main.c : 322
	}
	! <1335>
	{
	  addd,0,sm	0x0, [ _f64,_lts0 .LC.29 ], %dr19	! coremark/core_main.c : 322
	}
	! <1336>
	{
	  muld,0	%dr18, _f32s,_lts0 0x70, %dr18		! coremark/core_main.c : 322
	  sxt,1,sm	0x2, %r16, %dr16				! coremark/core_main.c : 322
	}
	! <1337>
	{
	  nop 4
	  addd,0,sm	0x0, %dr16, %db[1]				! coremark/core_main.c : 322
	}
	! <1342>
	{
	  addd,0	%dr17, %dr18, %dr17				! coremark/core_main.c : 322
	}
	! <1343>
	{
	  ldh,0	%dr17, _f16s,_lts0hi 0x60, %r17		! coremark/core_main.c : 322
	  std,2,sm	%dr3, 0x0, %dr19				! coremark/core_main.c : 322
	}
	! <1344>
	{
	  nop 2
	  std,2,sm	%dr3, 0x8, %dr16				! coremark/core_main.c : 322
	}
	! <1347>
	{
	  getfs,0	%r17, _f16s,_lts0hi 0x400, %r16		! coremark/core_main.c : 322
	}
	! <1348>
	{
	  sxt,0,sm	0x2, %r16, %dr16				! coremark/core_main.c : 322
	}
	! <1349>
	{
	  addd,0,sm	0x0, %dr16, %db[2]				! coremark/core_main.c : 322
	  std,2,sm	0x10, %dr3, %dr16				! coremark/core_main.c : 322
	}
.LCS.111:						! coremark/core_main.c : 322
	! <1350>
	{
	  nop 4
	  disp	%ctpr1, printf				! coremark/core_main.c : 322
	}
	! <1355>
	{
	  call	%ctpr1, wbs = 0x10			! coremark/core_main.c : 322
	}
.LCS.112:						! coremark/core_main.c : 322
	! <1356>
	{
	  nop 4
	  adds,0	%r4, 0x1, %r4				! coremark/core_main.c : 321
	  disp	%ctpr1, .L1398				! coremark/core_main.c : 321
	}
	! <1361>
	{
	  ct	%ctpr1				! coremark/core_main.c : 321
	}
.L1402:							! coremark/core_main.c : 321
	! <1362>
	{
	  getfs,0	%r8, _f16s,_lts0hi 0x3400, %r16		! coremark/core_main.c : 323
	  disp	%ctpr1, .L1434				! coremark/core_main.c : 323
	}
	! <1363>
	{
	  nop 3
	  cmpesb,0	%r16, 0x0, %pred12				! coremark/core_main.c : 323
	}
	! <1367>
	{
	  ct	%ctpr1 ? ~%pred12				! coremark/core_main.c : 323
	}
.L1437:							! coremark/core_main.c : 323
	! <1368>
	{
	  addd,0,sm	0x0, [ _f64,_lts0 .LC.30 ], %db[0]	! coremark/core_main.c : 324
	  addd,1,sm	0x0, [ _f64,_lts2 .LC.30 ], %dr16	! coremark/core_main.c : 324
	}
	! <1369>
	{
	  std,2,sm	%dr3, 0x0, %dr16				! coremark/core_main.c : 324
	}
.LCS.113:						! coremark/core_main.c : 324
	! <1370>
	{
	  nop 4
	  disp	%ctpr1, printf				! coremark/core_main.c : 324
	}
	! <1375>
	{
	  call	%ctpr1, wbs = 0x10			! coremark/core_main.c : 324
	}
.LCS.114:						! coremark/core_main.c : 324
	! <1376>
	{
	  getfs,0	%r7, _f16s,_lts0hi 0x3400, %r16		! coremark/core_main.c : 326
	  disp	%ctpr1, .L1449				! coremark/core_main.c : 326
	}
	! <1377>
	{
	  nop 3
	  cmpesb,0	%r16, 0x3, %pred13				! coremark/core_main.c : 326
	}
	! <1381>
	{
	  ct	%ctpr1 ? ~%pred13				! coremark/core_main.c : 326
	}
.L1452:							! coremark/core_main.c : 326
	! <1382>
	{
	  ldw,0	0x0, [ _f64,_lts0 default_num_contexts ], %r16	! coremark/core_main.c : 327
	  addd,1	%dr2, _f32s,_lts2 0xffffff90, %dr17	! coremark/core_main.c : 327
	  addd,2,sm	0x0, %dr10, %db[0]				! coremark/core_main.c : 327
	}
	! <1383>
	{
	  nop 2
	  ldw,0	%dr17, _f32s,_lts0 0x2c, %r17		! coremark/core_main.c : 327
	}
	! <1386>
	{
	  nop 5
	  muls,0	%r16, %r17, %r16				! coremark/core_main.c : 327
	}
	! <1392>
	{
	  sxt,0,sm	0x6, %r16, %dr16				! coremark/core_main.c : 327
	}
	! <1393>
	{
	  idtofd,0	%dr16, %dr16				! coremark/core_main.c : 327
	}
.LCS.115:						! coremark/core_main.c : 327
	! <1394>
	{
	  nop 4
	  disp	%ctpr1, time_in_secs				! coremark/core_main.c : 327
	}
	! <1399>
	{
	  call	%ctpr1, wbs = 0x10			! coremark/core_main.c : 327
	}
.LCS.116:						! coremark/core_main.c : 327
	! <1400>
	{
	  addd,0,sm	0x0, %db[0], %dr17				! coremark/core_main.c : 327
	  addd,1,sm	0x0, [ _f64,_lts0 .LC.31 ], %db[0]	! coremark/core_main.c : 327
	  addd,2,sm	0x0, [ _f64,_lts2 .LC.31 ], %dr18	! coremark/core_main.c : 327
	}
	! <1401>
	{
	  addd,0,sm	0x0, [ _f64,_lts0 .LC.20 ], %db[2]	! coremark/core_main.c : 327
	  addd,1,sm	0x0, [ _f64,_lts2 .LC.20 ], %dr19	! coremark/core_main.c : 327
	}
	! <1402>
	{
	  addd,0,sm	0x0, [ _f64,_lts0 .LC.22 ], %db[3]	! coremark/core_main.c : 327
	  addd,1,sm	0x0, [ _f64,_lts2 .LC.22 ], %dr20	! coremark/core_main.c : 327
	}
	! <1403>
	{
	  nop 7
	  fdivd,5	%dr16, %dr17, %dr16				! coremark/core_main.c : 327
	  std,2,sm	%dr3, 0x0, %dr18				! coremark/core_main.c : 327
	}
	! <1411>
	{
	  nop 7
	}
	! <1419>
	{
	  nop 1
	}
	! <1421>
	{
	  addd,0,sm	0x0, %dr16, %db[1]				! coremark/core_main.c : 327
	  std,2,sm	%dr3, 0x8, %dr16				! coremark/core_main.c : 327
	  std,5,sm	0x10, %dr3, %dr19				! coremark/core_main.c : 327
	}
	! <1422>
	{
	  std,2,sm	0x18, %dr3, %dr20				! coremark/core_main.c : 327
	}
.LCS.117:						! coremark/core_main.c : 327
	! <1423>
	{
	  nop 4
	  disp	%ctpr1, printf				! coremark/core_main.c : 327
	}
	! <1428>
	{
	  call	%ctpr1, wbs = 0x10			! coremark/core_main.c : 327
	}
.LCS.118:						! coremark/core_main.c : 327
	! <1429>
	{
	  ldd,0	0x0, [ _f64,_lts0 mem_name +8 ], %dr16	! coremark/core_main.c : 331
	  addd,1,sm	0x0, [ _f64,_lts2 .LC.32 ], %db[0]	! coremark/core_main.c : 331
	}
	! <1430>
	{
	  addd,0,sm	0x0, [ _f64,_lts0 .LC.32 ], %dr17	! coremark/core_main.c : 331
	}
	! <1431>
	{
	  nop 1
	  std,2,sm	%dr3, 0x0, %dr17				! coremark/core_main.c : 331
	}
	! <1433>
	{
	  addd,0,sm	0x0, %dr16, %db[1]				! coremark/core_main.c : 331
	  std,2,sm	%dr3, 0x8, %dr16				! coremark/core_main.c : 331
	}
.LCS.119:						! coremark/core_main.c : 331
	! <1434>
	{
	  nop 4
	  disp	%ctpr1, printf				! coremark/core_main.c : 331
	}
	! <1439>
	{
	  call	%ctpr1, wbs = 0x10			! coremark/core_main.c : 331
	}
.LCS.120:						! coremark/core_main.c : 331
	! <1440>
	{
	  addd,0,sm	0x0, [ _f64,_lts0 .LC.33 ], %db[0]	! coremark/core_main.c : 337
	  addd,1,sm	0x0, [ _f64,_lts2 .LC.33 ], %dr16	! coremark/core_main.c : 337
	}
	! <1441>
	{
	  std,2,sm	%dr3, 0x0, %dr16				! coremark/core_main.c : 337
	}
.LCS.121:						! coremark/core_main.c : 337
	! <1442>
	{
	  nop 4
	  disp	%ctpr1, printf				! coremark/core_main.c : 337
	}
	! <1447>
	{
	  call	%ctpr1, wbs = 0x10			! coremark/core_main.c : 337
	}
.LCS.122:						! coremark/core_main.c : 337
.L1449:							! coremark/core_main.c : 337
.L1434:							! coremark/core_main.c : 337
	! <1448>
	{
	  getfs,0	%r8, _f16s,_lts0hi 0x3400, %r16		! coremark/core_main.c : 341
	  disp	%ctpr1, .L1508				! coremark/core_main.c : 341
	}
	! <1449>
	{
	  nop 3
	  cmplesb,0	%r16, 0x0, %pred14			! coremark/core_main.c : 341
	}
	! <1453>
	{
	  ct	%ctpr1 ? %pred14				! coremark/core_main.c : 341
	}
.L1511:							! coremark/core_main.c : 341
	! <1454>
	{
	  addd,0,sm	0x0, [ _f64,_lts0 .LC.34 ], %db[0]	! coremark/core_main.c : 342
	  addd,1,sm	0x0, [ _f64,_lts2 .LC.34 ], %dr16	! coremark/core_main.c : 342
	}
	! <1455>
	{
	  std,2,sm	%dr3, 0x0, %dr16				! coremark/core_main.c : 342
	}
.LCS.123:						! coremark/core_main.c : 342
	! <1456>
	{
	  nop 4
	  disp	%ctpr1, printf				! coremark/core_main.c : 342
	}
	! <1461>
	{
	  call	%ctpr1, wbs = 0x10			! coremark/core_main.c : 342
	}
.LCS.124:						! coremark/core_main.c : 342
.L1508:							! coremark/core_main.c : 342
	! <1462>
	{
	  getfs,0	%r8, _f16s,_lts0hi 0x3400, %r16		! coremark/core_main.c : 343
	  disp	%ctpr1, .L1523				! coremark/core_main.c : 343
	}
	! <1463>
	{
	  nop 3
	  cmplsb,0	%r16, 0x0, %pred15				! coremark/core_main.c : 343
	}
	! <1467>
	{
	  ct	%ctpr1 ? ~%pred15				! coremark/core_main.c : 343
	}
.L1526:							! coremark/core_main.c : 343
	! <1468>
	{
	  addd,0,sm	0x0, [ _f64,_lts0 .LC.35 ], %db[0]	! coremark/core_main.c : 344
	  addd,1,sm	0x0, [ _f64,_lts2 .LC.35 ], %dr16	! coremark/core_main.c : 344
	}
	! <1469>
	{
	  std,2,sm	%dr3, 0x0, %dr16				! coremark/core_main.c : 344
	}
.LCS.125:						! coremark/core_main.c : 344
	! <1470>
	{
	  nop 4
	  disp	%ctpr1, printf				! coremark/core_main.c : 344
	}
	! <1475>
	{
	  call	%ctpr1, wbs = 0x10			! coremark/core_main.c : 344
	}
.LCS.126:						! coremark/core_main.c : 344
.L1523:							! coremark/core_main.c : 344
	! <1476>
	{
	  adds,0,sm	0x0, 0x0, %r4			! coremark/core_main.c : 347
	}
.L1537:							! coremark/core_main.c : 347
	! <1477>
	{
	  getfs,0	%r4, _f16s,_lts0hi 0x400, %r16		! coremark/core_main.c : 347
	  disp	%ctpr1, .L1540				! coremark/core_main.c : 347
	}
	! <1478>
	{
	  nop 3
	  cmplsb,0	%r16, 0x1, %pred16				! coremark/core_main.c : 347
	}
	! <1482>
	{
	  ct	%ctpr1 ? ~%pred16				! coremark/core_main.c : 347
	}
.L1543:							! coremark/core_main.c : 347
	! <1483>
	{
	  addd,0	%dr2, _f16s,_lts0hi 0xff90, %dr16		! coremark/core_main.c : 348
	  sxt,1,sm	0x5, %r4, %dr17				! coremark/core_main.c : 348
	}
	! <1484>
	{
	  nop 5
	  muld,0	%dr17, _f16s,_lts0hi 0x70, %dr17		! coremark/core_main.c : 348
	}
	! <1490>
	{
	  addd,0	%dr16, %dr17, %dr16				! coremark/core_main.c : 348
	}
	! <1491>
	{
	  addd,0	%dr16, 0x8, %dr16				! coremark/core_main.c : 348
	}
	! <1492>
	{
	  nop 2
	  ldd,0	%dr16, 0x0, %dr16				! coremark/core_main.c : 348
	}
	! <1495>
	{
	  addd,0,sm	0x0, %dr16, %db[0]				! coremark/core_main.c : 348
	}
.LCS.127:						! coremark/core_main.c : 348
	! <1496>
	{
	  nop 4
	  disp	%ctpr1, portable_free				! coremark/core_main.c : 348
	}
	! <1501>
	{
	  call	%ctpr1, wbs = 0x10			! coremark/core_main.c : 348
	}
.LCS.128:						! coremark/core_main.c : 348
	! <1502>
	{
	  nop 4
	  adds,0	%r4, 0x1, %r4				! coremark/core_main.c : 347
	  disp	%ctpr1, .L1537				! coremark/core_main.c : 347
	}
	! <1507>
	{
	  ct	%ctpr1				! coremark/core_main.c : 347
	}
.L1540:							! coremark/core_main.c : 347
	! <1508>
	{
	  addd,0	%dr2, _f16s,_lts0hi 0xff90, %dr16		! coremark/core_main.c : 351
	}
	! <1509>
	{
	  addd,0	%dr16, _f16s,_lts0hi 0x6a, %dr16		! coremark/core_main.c : 351
	}
	! <1510>
	{
	  addd,0,sm	0x0, %dr16, %db[0]				! coremark/core_main.c : 351
	}
.LCS.129:						! coremark/core_main.c : 351
	! <1511>
	{
	  nop 4
	  disp	%ctpr1, portable_fini				! coremark/core_main.c : 351
	}
	! <1516>
	{
	  call	%ctpr1, wbs = 0x10			! coremark/core_main.c : 351
	}
.LCS.130:						! coremark/core_main.c : 351
	! <1517>
	{
	  nop 5
	  addd,0,sm	0x0, 0x0, %dr0			! coremark/core_main.c : 353
	  return	%ctpr3				! coremark/core_main.c : 353
	}
	! <1523>
	{
	  ct	%ctpr3					! coremark/core_main.c : 353
	}
	.size	main, .- main
! -----------------------------------------------------------------------------
	.data
	.local	list_known_crc
	.type	list_known_crc, #object
	.size	list_known_crc, 0xa
	.align	16
list_known_crc:
	.uadword	0xe7146a793340d4b0
	.uahalf	0xe3c1
! -----------------------------------------------------------------------------
	.local	matrix_known_crc
	.type	matrix_known_crc, #object
	.size	matrix_known_crc, 0xa
	.align	16
matrix_known_crc:
	.uadword	0x1fd756081199be52
	.uahalf	0x747
! -----------------------------------------------------------------------------
	.local	state_known_crc
	.type	state_known_crc, #object
	.size	state_known_crc, 0xa
	.align	16
state_known_crc:
	.uadword	0x8e3ae5a439bf5e47
	.uahalf	0x8d84
! -----------------------------------------------------------------------------
	.global	mem_name
	.type	mem_name, #object
	.size	mem_name, 0x18
	.align	16
mem_name:
	.dword	.LC.1
	.dword	.LC.2
	.dword	.LC.3
! -----------------------------------------------------------------------------
	.section .rodata
	.align	8
.LC.1:
	.ascii	"Static\000"
! -----------------------------------------------------------------------------
	.align	8
.LC.2:
	.ascii	"Heap\000"
! -----------------------------------------------------------------------------
	.align	8
.LC.3:
	.ascii	"Stack\000"
! -----------------------------------------------------------------------------
	.align	16
.LC.4:
	.ascii	"list_head structure too big for "
	.ascii	"comparable data!\n\000"
! -----------------------------------------------------------------------------
	.align	16
.LC.5:
	.ascii	"6k performance run parameters fo"
	.ascii	"r coremark.\n\000"
! -----------------------------------------------------------------------------
	.align	16
.LC.6:
	.ascii	"6k validation run parameters for"
	.ascii	" coremark.\n\000"
! -----------------------------------------------------------------------------
	.align	16
.LC.7:
	.ascii	"Profile generation run parameter"
	.ascii	"s for coremark.\n\000"
! -----------------------------------------------------------------------------
	.align	16
.LC.8:
	.ascii	"2K performance run parameters fo"
	.ascii	"r coremark.\n\000"
! -----------------------------------------------------------------------------
	.align	16
.LC.9:
	.ascii	"2K validation run parameters for"
	.ascii	" coremark.\n\000"
! -----------------------------------------------------------------------------
	.align	16
.LC.10:
	.ascii	"[%u]ERROR! list crc 0x%04x - sho"
	.ascii	"uld be 0x%04x\n\000"
! -----------------------------------------------------------------------------
	.align	16
.LC.11:
	.ascii	"[%u]ERROR! matrix crc 0x%04x - s"
	.ascii	"hould be 0x%04x\n\000"
! -----------------------------------------------------------------------------
	.align	16
.LC.12:
	.ascii	"[%u]ERROR! state crc 0x%04x - sh"
	.ascii	"ould be 0x%04x\n\000"
! -----------------------------------------------------------------------------
	.align	16
.LC.13:
	.ascii	"CoreMark Size    : %lu\n\000"
! -----------------------------------------------------------------------------
	.align	16
.LC.14:
	.ascii	"Total ticks      : %lu\n\000"
! -----------------------------------------------------------------------------
	.align	16
.LC.15:
	.ascii	"Total time (secs): %f\n\000"
! -----------------------------------------------------------------------------
	.align	16
.LC.16:
	.ascii	"Iterations/Sec   : %f\n\000"
! -----------------------------------------------------------------------------
	.align	16
.LC.17:
	.ascii	"ERROR! Must execute for at least"
	.ascii	" 10 secs for a valid result!\n\000"
! -----------------------------------------------------------------------------
	.align	16
.LC.18:
	.ascii	"Iterations       : %lu\n\000"
! -----------------------------------------------------------------------------
	.align	16
.LC.19:
	.ascii	"Compiler version : %s\n\000"
! -----------------------------------------------------------------------------
	.align	8
.LC.20:
	.ascii	"GCC7.3\000"
! -----------------------------------------------------------------------------
	.align	16
.LC.21:
	.ascii	"Compiler flags   : %s\n\000"
! -----------------------------------------------------------------------------
	.align	16
.LC.22:
	.ascii	"-g -DPERFORMANCE_RUN=1  -lrt\000"
! -----------------------------------------------------------------------------
	.align	16
.LC.23:
	.ascii	"Memory location  : %s\n\000"
! -----------------------------------------------------------------------------
	.align	16
.LC.24:
	.ascii	"Please put data memory location "
	.ascii	"here\n\t\t\t(e.g. code in flash, dat"
	.ascii	"a on heap etc)\000"
! -----------------------------------------------------------------------------
	.align	16
.LC.25:
	.ascii	"seedcrc          : 0x%04x\n\000"
! -----------------------------------------------------------------------------
	.align	16
.LC.26:
	.ascii	"[%d]crclist       : 0x%04x\n\000"
! -----------------------------------------------------------------------------
	.align	16
.LC.27:
	.ascii	"[%d]crcmatrix     : 0x%04x\n\000"
! -----------------------------------------------------------------------------
	.align	16
.LC.28:
	.ascii	"[%d]crcstate      : 0x%04x\n\000"
! -----------------------------------------------------------------------------
	.align	16
.LC.29:
	.ascii	"[%d]crcfinal      : 0x%04x\n\000"
! -----------------------------------------------------------------------------
	.align	16
.LC.30:
	.ascii	"Correct operation validated. See"
	.ascii	" README.md for run and reporting"
	.ascii	" rules.\n\000"
! -----------------------------------------------------------------------------
	.align	16
.LC.31:
	.ascii	"CoreMark 1.0 : %f / %s %s\000"
! -----------------------------------------------------------------------------
	.align	8
.LC.32:
	.ascii	" / %s\000"
! -----------------------------------------------------------------------------
	.align	2
.LC.33:
	.ascii	"\n\000"
! -----------------------------------------------------------------------------
	.align	16
.LC.34:
	.ascii	"Errors detected\n\000"
! -----------------------------------------------------------------------------
	.align	16
.LC.35:
	.ascii	"Cannot validate operation for th"
	.ascii	"ese seed values, please compare "
	.ascii	"with results on a known platform"
	.ascii	".\n\000"
! -----------------------------------------------------------------------------
	.weak	elbrus_compiler_v1.24.10_Mar__8_2020
	elbrus_compiler_v1.24.10_Mar__8_2020 = 0x0
