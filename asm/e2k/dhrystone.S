getSecs():
        {
          setwd wsz = 0x8, nfx = 0x1, dbl = 0x0
          setbn rsz = 0x3, rbs = 0x4, rcur = 0x0
          disp  %ctpr1, clock_gettime
          getsp,0       _f32s,_lts1 0xfffffff0, %dr1
        }
        {
          nop 3
          addd,0        0x0, [ _f64,_lts0 tp1 ], %db[1]
          addd,1        0x0, 0x0, %db[0]
        }
        {
          call  %ctpr1, wbs = 0x4
        }
        {
          nop 4
          return        %ctpr3
          ldd,0 0x0, [ _f64,_lts0 tp1 +8 ], %dr2
          ldd,2 0x0, [ _f64,_lts2 tp1 ], %dr3
        }
        {
          nop 3
          idtofd,0,sm   %dr2, %dr2
          idtofd,1      %dr3, %dr3
        }
        {
          nop 3
          fmuld,0,sm    %dr2, _f64,_lts0 0x3e112e0be826d695, %dr2
        }
        {
          nop 3
          faddd,0,sm    %dr3, %dr2, %dr2
        }
        {
          ct    %ctpr3
          std,2 0x0, [ _f64,_lts0 theseSecs ], %dr2
        }
start_time():
        {
          setwd wsz = 0x8, nfx = 0x1, dbl = 0x0
          setbn rsz = 0x3, rbs = 0x4, rcur = 0x0
          disp  %ctpr1, clock_gettime
          getsp,0       _f32s,_lts1 0xfffffff0, %dr1
        }
        {
          nop 3
          addd,0        0x0, [ _f64,_lts0 tp1 ], %db[1]
          addd,1        0x0, 0x0, %db[0]
        }
        {
          call  %ctpr1, wbs = 0x4
        }
        {
          nop 4
          return        %ctpr3
          ldd,0 0x0, [ _f64,_lts0 tp1 +8 ], %dr2
          ldd,2 0x0, [ _f64,_lts2 tp1 ], %dr3
        }
        {
          nop 3
          idtofd,0,sm   %dr2, %dr2
          idtofd,1      %dr3, %dr3
        }
        {
          nop 3
          fmuld,0,sm    %dr2, _f64,_lts0 0x3e112e0be826d695, %dr2
        }
        {
          nop 3
          faddd,0,sm    %dr3, %dr2, %dr2
        }
        {
          std,2 0x0, [ _f64,_lts0 startSecs ], %dr2
        }
        {
          ct    %ctpr3
          std,2 0x0, [ _f64,_lts0 theseSecs ], %dr2
        }
end_time():
        {
          setwd wsz = 0x8, nfx = 0x1, dbl = 0x0
          setbn rsz = 0x3, rbs = 0x4, rcur = 0x0
          disp  %ctpr1, clock_gettime
          getsp,0       _f32s,_lts1 0xfffffff0, %dr1
        }
        {
          nop 3
          addd,0        0x0, [ _f64,_lts0 tp1 ], %db[1]
          addd,1        0x0, 0x0, %db[0]
        }
        {
          call  %ctpr1, wbs = 0x4
        }
        {
          return        %ctpr3
          ldd,0 0x0, [ _f64,_lts0 tp1 +8 ], %dr2
          ldd,2 0x0, [ _f64,_lts2 tp1 ], %dr3
        }
        {
          nop 3
          ldd,0 0x0, [ _f64,_lts0 startSecs ], %dr4
        }
        {
          nop 3
          idtofd,0,sm   %dr2, %dr2
          idtofd,1      %dr3, %dr3
        }
        {
          nop 3
          fmuld,0,sm    %dr2, _f64,_lts0 0x3e112e0be826d695, %dr2
        }
        {
          nop 3
          faddd,0,sm    %dr3, %dr2, %dr2
        }
        {
          nop 3
          fsubd,0,sm    %dr2, %dr4, %dr3
          std,2 0x0, [ _f64,_lts0 theseSecs ], %dr2
        }
        {
          nop 3
          fmuld,0,sm    %dr3, _f64,_lts0 0x408f400000000000, %dr2
          std,2 0x0, [ _f64,_lts2 secs ], %dr3
        }
        {
          nop 3
          fdtoistr,0,sm %dr2, %r2
        }
        {
          ct    %ctpr3
          stw,2 0x0, [ _f64,_lts0 millisecs ], %r2
        }
local_time():
        {
          setwd wsz = 0x8, nfx = 0x1, dbl = 0x0
          setbn rsz = 0x3, rbs = 0x4, rcur = 0x0
          disp  %ctpr1, time
          getsp,0       _f32s,_lts1 0xffffffd0, %dr1
          addd,1        0x0, [ _f64,_lts2 .LC.1 ], %dr3
        }
        {
          nop 2
          addd,0        0x0, 0x0, %db[0]
          addd,1        0x0, [ _f64,_lts0 timeday ], %dr4
        }
        {
          addd,3        %dr1, _f64,_lts0 0x30, %dr0
        }
        {
          call  %ctpr1, wbs = 0x4
        }
        {
          nop 4
          disp  %ctpr1, localtime
          subd,0        %dr0, 0x8, %db[0]
          std,5 %dr0, _f16s,_lts0lo 0xfff8, %db[0]
        }
        {
          call  %ctpr1, wbs = 0x4
        }
        {
          nop 4
          disp  %ctpr1, asctime
        }
        {
          call  %ctpr1, wbs = 0x4
        }
        {
          nop 3
          disp  %ctpr1, sprintf
          addd,0        0x0, [ _f64,_lts0 .LC.1 ], %dr1
          std,2 %dr1, 0x8, %dr3
          addd,3        0x0, %db[0], %dr2
          std,5 0x10, %dr1, %db[0]
        }
        {
          addd,0        0x0, %dr4, %dr0
        }
        {
          ct    %ctpr1
        }
main:
        {
          setwd wsz = 0x2e, nfx = 0x1, dbl = 0x0
          setbn rsz = 0xd, rbs = 0x20, rcur = 0xa
          setbp psz = 0x0
          disp  %ctpr2, malloc
          getsp,0       _f32s,_lts2 0xffffff90, %dr3
          adds,1        0x1f, 0x9, %r1
          adds,2        0x0, 0x0, %r6
          adds,3        0xa, 0x0, %r42
          smulx,4,sm    0x8, _f16s,_lts1lo 0xc8, %dr35
          adds,5        0x2, 0x0, %r39
        }
        {
          scld,0,sm     0x7, 0x3, %db[0]
          adds,1        0x5, 0x0, %r34
          adds,2        0x0, _f16s,_lts0lo 0x42, %r40
          adds,3        0x1, 0x0, %r27
          adds,4        0x0, _f16s,_lts0hi 0x41, %r41
          adds,5        0xa, 0x0, %r43
        }
        {
          addd,0        %dr3, _f64,_lts1 0x70, %dr2
          adds,1        0x0, _f16s,_lts0lo 0x1388, %r31
          adds,2        0x8, 0x0, %r36
          adds,3        0x0, 0x0, %r37
          adds,5        0x6, 0x0, %r38
        }
        {
          nop 1
          addd,0        0x0, [ _f64,_lts0 .LC.9 ], %dr44
          adds,1        0x0, 0x0, %r32
          adds,2        0x0, 0x0, %r26
          adds,3        0x0, 0x0, %r5
        }
        {
          call  %ctpr2, wbs = 0x2a
          addd,0,sm     %dr2, _f16s,_lts0lo 0xffe0, %dr25
          addd,1,sm     %dr2, _f16s,_lts0hi 0xffc0, %dr33
        }
        {
          nop 4
          disp  %ctpr1, malloc
          scld,0,sm     0x7, 0x3, %db[0]
          std,5 0x0, [ _f64,_lts0 Next_Ptr_Glob ], %db[0]
        }
        {
          call  %ctpr1, wbs = 0x2a
        }
        {
          disp  %ctpr3, puts
          ldd,3 0x0, [ _f64,_lts2 Next_Ptr_Glob ], %dr7
          std,5 0x0, [ _f64,_lts0 Ptr_Glob ], %db[0]
        }
        {
          stw,5 %db[0], 0x8, %r6
        }
        {
          ldd,0 0x0, [ _f64,_lts0 Ptr_Glob ], %dr8
          ldd,3,sm      0x0, [ _f64,_lts0 Ptr_Glob ], %dr9, mas=0x4
        }
        {
          nop 1
          ldd,0,sm      0x0, [ _f64,_lts0 Ptr_Glob ], %dr10, mas=0x4
        }
        {
          nop 1
          addd,0        0x0, [ _f64,_lts0 .LC.61.1 ], %db[0]
          std,5 %db[0], 0x0, %dr7
        }
        {
          stw,2 %dr8, 0xc, %r39
        }
        {
          ldd,2 0x0, [ _f64,_lts0 Ptr_Glob ], %dr9, mas=0x3
        }
        {
          stw,2 0x10, %dr9, %r1
          ldw,5 0x0, [ _f64,_lts0 .LC.2 ], %r1
        }
        {
          ldw,0 0x0, [ _f64,_lts0 .LC.2 +4 ], %r7
          ldw,2 0x0, [ _f64,_lts2 .LC.2 +8 ], %r8
        }
        {
          ldw,0 0x0, [ _f64,_lts0 .LC.2 +12 ], %r9
          ldw,2 0x0, [ _f64,_lts2 .LC.2 +16 ], %r11
        }
        {
          ldw,0 0x0, [ _f64,_lts0 .LC.2 +20 ], %r12
          ldw,2 0x0, [ _f64,_lts2 .LC.2 +24 ], %r13
        }
        {
          ldh,0 0x0, [ _f64,_lts0 .LC.2 +28 ], %r14
          ldb,2 0x0, [ _f64,_lts2 .LC.2 +30 ], %r15
        }
        {
          ldd,2 0x0, [ _f64,_lts0 Ptr_Glob ], %dr10, mas=0x3
        }
        {
          stw,2 0x14, %dr10, %r1
          stw,5 %dr10, _f16s,_lts0lo 0x18, %r7
        }
        {
          stw,2 %dr10, _f16s,_lts0lo 0x1c, %r8
          stw,5 %dr10, _f16s,_lts0hi 0x20, %r9
        }
        {
          stw,2 %dr10, _f16s,_lts0lo 0x24, %r11
          stw,5 %dr10, _f16s,_lts0hi 0x28, %r12
        }
        {
          stw,2 %dr10, _f16s,_lts0lo 0x2c, %r13
          sth,5 %dr10, _f16s,_lts0hi 0x30, %r14
        }
        {
          stb,2 %dr10, _f16s,_lts0lo 0x32, %r15
          ldd,5 0x0, [ _f64,_lts1 .LC.3 ], %dr1
        }
        {
          ldd,0 0x0, [ _f64,_lts0 .LC.3 +8 ], %dr7
          ldd,3 0x0, [ _f64,_lts2 .LC.3 +16 ], %dr8
        }
        {
          ldw,0 0x0, [ _f64,_lts0 .LC.3 +24 ], %r9
          ldh,3 0x0, [ _f64,_lts2 .LC.3 +28 ], %r10
        }
        {
          nop 1
          ldb,0 0x0, [ _f64,_lts0 .LC.3 +30 ], %r11
          stw,2 0x0, [ _f64,_lts2 Arr_2_Glob +1628 ], %r42
        }
        {
          std,2 %dr2, _f16s,_lts0lo 0xffe0, %dr1
        }
        {
          std,2 %dr2, _f16s,_lts0lo 0xffe8, %dr7
          std,5 %dr2, _f16s,_lts0hi 0xfff0, %dr8
        }
        {
          stw,2 %dr2, _f16s,_lts0lo 0xfff8, %r9
          sth,5 %dr2, _f16s,_lts0hi 0xfffc, %r10
        }
        {
          stb,2 %dr2, _f16s,_lts0lo 0xfffe, %r11
        }
        {
          call  %ctpr3, wbs = 0x2a
        }
        {
          nop 4
          disp  %ctpr2, puts
          addd,0        0x0, [ _f64,_lts0 .LC.60.1 ], %db[0]
        }
        {
          call  %ctpr2, wbs = 0x2a
        }
        {
          nop 4
          disp  %ctpr1, puts
          addd,0        0x0, [ _f64,_lts0 .LC.59.1 ], %db[0]
        }
        {
          call  %ctpr1, wbs = 0x2a
        }
        {
          nop 4
          disp  %ctpr3, puts
          addd,0        0x0, [ _f64,_lts0 .LC.58.1 ], %db[0]
        }
        {
          call  %ctpr3, wbs = 0x2a
        }
.L174:
        {
          disp  %ctpr1, clock_gettime
          addd,0,sm     0x0, [ _f64,_lts2 tp1 ], %db[1]
          addd,1,sm     0x0, 0x0, %db[0]
          stw,2 0x0, [ _f64,_lts0 Arr_2_Glob +1628 ], %r43
          shls,3        %r31, 0x1, %r31
          adds,4        0x1, 0x0, %r24
          subs,5        %r42, 0x1, %r42
        }
        {
          nop 3
          addd,0,sm     %dr33, 0x1, %dr23
          cmplesb,3     0x1, %r31, %pred0
        }
        {
          call  %ctpr1, wbs = 0x2a
        }
        {
          disp  %ctpr3, .L787
          ldd,0 0x0, [ _f64,_lts0 tp1 +8 ], %dr12
          adds,1        0x7, 0x0, %r32 ? %pred0
          ldd,2 0x0, [ _f64,_lts2 tp1 ], %dr13
        }
        {
          ldd,0,sm      0x0, [ _f64,_lts0 .LC.7 ], %dr7
          ldd,2,sm      0x0, [ _f64,_lts2 .LC.7 +8 ], %dr1
        }
        {
          ldd,0,sm      0x0, [ _f64,_lts0 .LC.7 +16 ], %dr9
          ldw,2,sm      0x0, [ _f64,_lts2 .LC.7 +24 ], %r8
        }
        {
          nop 1
          ldh,0,sm      0x0, [ _f64,_lts0 .LC.7 +28 ], %r11
          ldb,2,sm      0x0, [ _f64,_lts2 .LC.7 +30 ], %r10
        }
        {
          nop 3
          idtofd,0,sm   %dr12, %dr12
          idtofd,1      %dr13, %dr13
        }
        {
          nop 3
          fmuld,0,sm    %dr12, _f64,_lts0 0x3e112e0be826d695, %dr12
        }
        {
          nop 3
          faddd,0,sm    %dr13, %dr12, %dr12
        }
        {
          std,2 0x0, [ _f64,_lts0 startSecs ], %dr12
        }
        {
          ct    %ctpr3 ? ~%pred0
          std,2 0x0, [ _f64,_lts0 theseSecs ], %dr12
        }
.L209:
        {
          setwd wsz = 0x2e, nfx = 0x1, dbl = 0x0
          setbn rsz = 0x3, rbs = 0x20, rcur = 0x0
          setbp psz = 0x2
          disp  %ctpr3, strcmp
          rwd,0 _f64,_lts2 0xff0000000000, %lsr
          adds,1,sm     0x0, 0x0, %r5
          std,2 %dr2, _f16s,_lts1lo 0xffc0, %dr7
          adds,3        0x1, 0x0, %r26
          adds,4        0x3, 0x0, %r22
          std,5 %dr2, _f16s,_lts1hi 0xffc8, %dr1
        }
        {
          disp  %ctpr1, .L270
          addd,1,sm     0x2, 0x0, %db[1]
          std,2 %dr2, _f16s,_lts0lo 0xffd0, %dr9
          adds,3        0x0, _f16s,_lts1lo 0x41, %r6
          adds,4,sm     0x0, 0x0, %r1
          stw,5 %dr2, _f16s,_lts0hi 0xffd8, %r8
        }
        {
          adds,0,sm     0x2, 0x0, %b[4]
          sth,2 %dr2, _f16s,_lts0lo 0xffdc, %r11
          stb,5 %dr2, _f16s,_lts0hi 0xffde, %r10
        }
        {
          ldb,0,sm      %dr23, %db[1], %r7
          ldb,2,sm      %dr25, %db[1], %r8
        }
        {
          stb,2 0x0, [ _f64,_lts0 Ch_1_Glob ], %r41
          stb,5 0x0, [ _f64,_lts2 Ch_2_Glob ], %r40
        }
        {
          nop 2
          stw,2 0x0, [ _f64,_lts0 Bool_Glob ], %r27
        }
        {
          nop 1
          cmpesb,0,sm   %r8, %r7, %pred2
          addd,1,sm     0x0, %dr8, %db[3]
        }
        {
          addd,0,sm     %db[1], 0x1, %dr7 ? ~%pred2
          addd,1,sm     0x0, %db[1], %dr8 ? %pred2
        }
        {
          nop 1
          addd,0,sm     0x0, %dr7, %db[7] ? ~%pred2
          addd,1,sm     0x0, %dr8, %db[7] ? %pred2
        }
.L270:
        {
          loop_mode
          nop 2
          ldb,3,sm      %dr23, %db[7], %b[6]
          ldb,5,sm      %dr25, %db[7], %b[1]
        }
        {
          loop_mode
          adds,4,sm     0x0, %b[4], %b[2] ? %pred2
          adds,5,sm     %b[4], 0x1, %b[2] ? ~%pred2
        }
        {
          loop_mode
          cmplesb,4,sm  %b[2], 0x2, %pred0
        }
        {
          loop_mode
          nop 1
          cmpesb,4,sm   %b[1], %b[6], %pred1
        }
        {
          loop_mode
          alc   alcf=1, alct=1
          abn   abnf=1, abnt=1
          abp   abpf=1, abpt=1
          ct    %ctpr1 ? %pred0
          merges,1,sm   %r5, %r6, %r5, ~%pred2
          merges,2,sm   %r21, %b[3], %r21, %pred2
          merges,3,sm   %r1, 0x1, %r1, %pred2
          addd,4,sm     %db[7], 0x1, %db[5] ? ~%pred1
          addd,5,sm     0x0, %db[7], %db[5] ? %pred1
        }
        {
          setwd wsz = 0x2e, nfx = 0x1, dbl = 0x0
          setbn rsz = 0xd, rbs = 0x20, rcur = 0xa
          setbp psz = 0x0
        }
        {
          ldw,0 %dr35, [ _f64,_lts1 Arr_2_Glob +28 ], %r1
          cmpesb,1      %r5, _f16s,_lts0lo 0x52, %pred0
          adds,2,sm     0x12, 0x0, %r5
          adds,3,sm     0x12, 0x0, %r6
          cmpesb,4      %r1, 0x0, %pred1
        }
        {
          ldd,0 0x0, [ _f64,_lts0 Ptr_Glob ], %dr7
          addd,1        0x0, [ _f64,_lts0 Ptr_Glob ], %dr9
          addd,2,sm     0x0, [ _f64,_lts2 Int_Glob ], %dr10
          ldd,3,sm      0x0, [ _f64,_lts0 Ptr_Glob ], %dr8, mas=0x4
          addd,4,sm     0x0, [ _f64,_lts2 Int_Glob ], %dr11
          addd,5,sm     0x0, [ _f64,_lts2 Int_Glob ], %dr12
        }
        {
          ldd,0,sm      0x0, [ _f64,_lts2 Ptr_Glob ], %dr14, mas=0x4
          addd,1,sm     0x0, %dr33, %db[1] ? ~%pred0
          stb,2 0x0, [ _f64,_lts0 Ch_1_Glob ], %r21 ? ~%pred1
          addd,4,sm     0x0, %dr25, %db[0] ? ~%pred0
          adds,5        0x1, 0x0, %r13 ? %pred0
        }
        {
          call  %ctpr3, wbs = 0x2a ? ~%pred0
        }
        {
          disp  %ctpr3, .L2364
          stw,2 0x0, [ _f64,_lts0 Arr_1_Glob +36 ], %r32
          cmplesb,3,sm  %b[0], 0x0, %pred1
          stw,5 0x0, [ _f64,_lts2 Arr_1_Glob +32 ], %r32
        }
        {
          disp  %ctpr1, .L751
          adds,1        %r1, 0x1, %r1
          stw,2 %dr35, [ _f64,_lts0 Arr_2_Glob +32 ], %r36
          stw,5 0x0, [ _f64,_lts2 Arr_1_Glob +152 ], %r36
        }
        {
          addd,0        0x18, %dr7, %dr16
          merges,1,sm   0x0, 0x1, %r13, ~%pred1 ? ~%pred0
          stw,2 0x0, [ _f64,_lts0 Int_Glob ], %r34
          addd,3,sm     %dr7, 0xc, %dr17
          addd,4        0x10, %dr7, %dr15
          stw,5 %dr35, [ _f64,_lts2 Arr_2_Glob +36 ], %r36
        }
        {
          addd,0,sm     %dr7, 0x0, %dr1
          cmpesb,1      %r13, 0x0, %pred0
          stw,2 %dr35, [ _f64,_lts0 Arr_2_Glob +28 ], %r1
          addd,3,sm     %dr7, 0x0, %dr13
          addd,4,sm     %dr7, 0x0, %dr18
          stw,5 0x0, [ _f64,_lts2 Arr_2_Glob +5632 ], %r32
        }
        {
          ldd,0,sm      0x10, %dr7, %dr19, mas=0x4
          addd,1        %dr7, _f16s,_lts0lo 0x20, %dr45
          addd,2,sm     %dr7, _f16s,_lts0hi 0x28, %dr46
          ldd,3,sm      %dr7, 0x8, %dr20, mas=0x4
          addd,4,sm     %dr7, _f16s,_lts1lo 0x30, %dr47
          addd,5        %dr7, _f16s,_lts0hi 0x28, %dr48
        }
        {
          ldd,0,sm      0x18, %dr7, %dr50, mas=0x4
          merges,1,sm   0x1, 0x0, %r49, ~%pred0
          addd,2        %dr7, _f16s,_lts0lo 0x30, %dr53
          ldd,3,sm      %dr7, _f16s,_lts0lo 0x30, %dr51, mas=0x4
          addd,4,sm     %dr7, _f16s,_lts0lo 0x30, %dr52
          addd,5,sm     %dr7, 0x0, %dr54
        }
        {
          ldd,0,sm      %dr7, _f16s,_lts0lo 0x28, %dr55, mas=0x4
          addd,1,sm     %dr7, 0x0, %dr56
          stw,2 0x0, [ _f64,_lts1 Bool_Glob ], %r49
          addd,4,sm     %dr7, 0x0, %dr57
          ldd,5 %dr7, 0x0, %dr49
        }
        {
          ldd,0,sm      %dr7, _f16s,_lts0lo 0x20, %dr58, mas=0x4
          addd,1,sm     %dr7, 0x8, %dr60
          addd,2,sm     %dr7, 0x8, %dr61
          ldd,3,sm      %dr7, 0x0, %dr59, mas=0x4
          addd,4,sm     %dr7, 0x8, %dr62
        }
        {
          ldd,0,sm      0x0, [ _f64,_lts0 Ptr_Glob ], %dr63, mas=0x4
          addd,1,sm     %dr7, 0x8, %db[8]
          addd,2,sm     %dr7, 0x8, %db[9]
          ldb,3,sm      0x0, [ _f64,_lts2 Ch_2_Glob ], %b[12], mas=0x4
          addd,4,sm     0x10, %dr7, %db[10]
          addd,5,sm     0x10, %dr7, %db[11]
        }
        {
          ldd,0,sm      0x0, [ _f64,_lts0 Ptr_Glob ], %db[17], mas=0x4
          addd,1,sm     0x10, %dr7, %db[13]
          addd,2,sm     0x10, %dr7, %db[14]
          ldb,3,sm      0x0, [ _f64,_lts2 Ch_2_Glob ], %b[18], mas=0x4
          addd,4,sm     0x18, %dr7, %db[15]
          addd,5,sm     0x18, %dr7, %db[16]
        }
        {
          addd,1,sm     0x18, %dr7, %db[19]
          addd,2,sm     %dr7, _f16s,_lts0lo 0x20, %db[20]
          addd,4,sm     %dr7, _f16s,_lts0lo 0x20, %db[21]
          addd,5,sm     %dr7, _f16s,_lts0hi 0x28, %db[22]
        }
        {
          addd,0        %dr49, 0x8, %db[23]
          addd,1        0x10, %dr49, %db[24]
          std,2 %dr49, 0x0, %dr49
          addd,3        0x18, %dr49, %db[25]
          addd,4,sm     0x18, %dr49, %db[26]
          addd,5,sm     0x18, %dr49, %db[27]
        }
        {
          cmpedb,0,sm   %db[24], %dr16, %pred1
          cmpedb,1,sm   %db[23], %dr15, %pred0
          ldd,2 0x10, %dr7, %dr19, mas=0x3
          cmpedb,3,sm   %db[25], %dr45, %pred2
          cmpedb,4,sm   %db[26], %dr46, %pred3
          addd,5        %dr49, _f16s,_lts0lo 0x20, %dr15
        }
        {
          cmpedb,0,sm   %db[27], %dr47, %pred4
          addd,1        %dr49, _f16s,_lts0hi 0x28, %dr15
          ldd,2 %dr7, 0x8, %dr20, mas=0x3
          cmpedb,3,sm   %dr15, %dr48, %pred5
          addd,4        %dr49, 0x0, %dr45
          addd,5,sm     %dr49, _f16s,_lts0lo 0x20, %dr16
        }
        {
          cmpedb,0,sm   %dr15, %dr53, %pred6
          addd,1        %dr49, 0x8, %dr9
          std,2 %dr49, 0x8, %dr20
          cmpedb,3,sm   %dr16, %dr52, %pred0
          cmpedb,4,sm   %dr45, %dr9, %pred7
          merged,5,sm   %dr19, %dr20, %dr19, %pred0
        }
        {
          addd,0,sm     0x10, %dr49, %dr15
          addd,1,sm     0x10, %dr49, %dr16
          std,2 0x10, %dr49, %dr19
          addd,3,sm     %dr49, 0xc, %dr20
          addd,4,sm     %dr49, 0xc, %dr45
          ldd,5 0x18, %dr7, %dr50, mas=0x3
        }
        {
          merged,0,sm   %dr50, %dr19, %dr19, %pred1
          cmpedb,1,sm   %dr15, %dr17, %pred1
          ldd,2 %dr7, _f16s,_lts0lo 0x30, %dr51, mas=0x3
          cmpedb,3,sm   %dr20, %dr11, %pred8
          cmpedb,4,sm   %dr45, %dr12, %pred9
        }
        {
          merged,0,sm   %dr51, %dr19, %dr11, %pred4
          cmpedb,1,sm   %dr16, %dr10, %pred4
          ldd,2 %dr7, _f16s,_lts0lo 0x28, %dr55, mas=0x3
          std,5 0x18, %dr49, %dr19
        }
        {
          merged,0,sm   %dr55, %dr19, %dr10, %pred3
          ldd,2 %dr7, _f16s,_lts0lo 0x20, %dr58, mas=0x3
        }
        {
          merged,0,sm   %dr58, %dr19, %dr12, %pred2
        }
        {
          merged,0,sm   %dr10, %dr12, %dr10, %pred5
          merged,1,sm   %dr11, %dr12, %dr11, %pred0
          std,2 %dr49, _f16s,_lts0lo 0x20, %dr12
        }
        {
          merged,0,sm   %dr11, %dr10, %dr11, %pred6
          std,2 %dr49, _f16s,_lts0lo 0x28, %dr10
        }
        {
          std,2 %dr49, _f16s,_lts0lo 0x30, %dr11
          stw,5 0x10, %dr7, %r34
        }
        {
          ldw,0,sm      %dr49, 0x8, %r10
          stw,2 0x10, %dr49, %r34
        }
        {
          ldd,2 0x0, [ _f64,_lts0 Ptr_Glob ], %dr8, mas=0x3
        }
        {
          ldd,2 %dr7, 0x0, %dr59, mas=0x3
        }
        {
          merged,0,sm   %dr8, %dr59, %dr8, %pred7
          std,2 %dr49, 0x0, %dr59
        }
        {
          nop 4
          cmpedb,0      %dr8, 0x0, %pred0
          ldd,2,sm      %dr8, 0x0, %dr11
        }
        {
          std,2 %dr49, 0x0, %dr11 ? ~%pred0
          ldw,5 0x0, [ _f64,_lts0 Int_Glob ], %r8
        }
        {
          ldd,2 0x0, [ _f64,_lts0 Ptr_Glob ], %dr14, mas=0x3
        }
        {
          addd,0        0x10, %dr14, %dr11
        }
        {
          nop 1
          cmpedb,0,sm   %dr11, %dr9, %pred0
        }
        {
          adds,0        %r8, 0xc, %r8
        }
        {
          merges,1,sm   %r10, %r8, %r8, %pred0
          stw,2 0x10, %dr14, %r8
          ldw,5,sm      %dr7, 0xc, %r9
        }
        {
          ldw,0,sm      0x0, [ _f64,_lts0 Int_Glob ], %r8
          cmpesb,1      %r8, 0x0, %pred0
          ldd,2,sm      %dr7, 0x0, %dr10
        }
        {
          pass  %pred0, @p0
          pass  %pred1, @p1
          landp @p0, @p1, @p4
          pass  @p4, %pred1
          pass  %pred4, @p2
          landp @p0, @p2, @p5
          pass  @p5, %pred2
          pass  %pred8, @p3
          landp @p0, @p3, @p6
          pass  @p6, %pred3
        }
        {
          nop 1
          stw,2 0x10, %dr49, %r38 ? %pred0
        }
        {
          merges,0,sm   %r9, %r38, %r9, %pred1
        }
        {
          ldd,0,sm      %dr10, _f16s,_lts0lo 0x30, %dr11
          cmpesb,1,sm   %r9, 0x0, %pred1
          ldd,2,sm      %dr10, 0x0, %dr12
          ldd,3,sm      %dr10, _f16s,_lts1lo 0x20, %dr15
          addd,4,sm     %dr10, 0x8, %dr16
          ldd,5,sm      %dr10, _f16s,_lts0hi 0x28, %dr14
        }
        {
          ldd,0,sm      0x10, %dr10, %dr19
          cmpesb,1,sm   %r9, 0x2, %pred4
          ldd,2,sm      0x18, %dr10, %dr17
          cmpedb,3,sm   %dr1, %dr16, %pred6
          addd,4,sm     0x10, %dr10, %dr45
          ldd,5,sm      %dr10, 0x8, %dr20
          pass  %pred0, @p0
          pass  %pred1, @p1
          landp @p0, @p1, @p4
          pass  @p4, %pred5
          landp @p0, ~@p1, @p5
          pass  @p5, %pred1
        }
        {
          cmpesb,0,sm   %r9, 0x3, %pred9
          addd,1,sm     0x18, %dr10, %dr1
          stw,2 %dr49, 0xc, %r9 ? %pred0
          addd,3,sm     %dr10, _f16s,_lts0lo 0x20, %dr16
          addd,4,sm     %dr10, _f16s,_lts0hi 0x28, %dr46
          pass  %pred0, @p0
          pass  %pred4, @p1
          landp @p0, ~@p1, @p4
          pass  @p4, %pred7
          pass  %pred6, @p2
          landp ~@p0, @p2, @p5
          pass  @p5, %pred6
          pass  %pred9, @p3
          landp @p4, @p3, @p6
          pass  @p6, %pred8
        }
        {
          cmpedb,0,sm   %dr13, %dr45, %pred10
          cmpedb,1,sm   %dr18, %dr1, %pred11
          addd,2,sm     %dr10, _f16s,_lts0lo 0x30, %dr47
          cmpedb,3,sm   %dr54, %dr16, %pred12
          cmpedb,4,sm   %dr56, %dr46, %pred13
          addd,5,sm     0x10, %dr10, %dr1
          pass  %pred4, @p0
          pass  %pred9, @p1
          landp ~@p0, ~@p1, @p4
          pass  @p4, %pred9
        }
        {
          cmpedb,0,sm   %dr57, %dr47, %pred14
          addd,1,sm     %dr10, _f16s,_lts0lo 0x28, %dr18
          addd,2,sm     0x18, %dr10, %dr13
          addd,3,sm     %dr10, _f16s,_lts1lo 0x30, %dr45
          cmpedb,4,sm   %dr60, %dr1, %pred15
          addd,5,sm     %dr10, _f16s,_lts0hi 0x20, %dr16
          pass  %pred0, @p0
          pass  %pred10, @p1
          landp ~@p0, @p1, @p4
          pass  @p4, %pred10
          pass  %pred11, @p2
          landp ~@p0, @p2, @p5
          pass  @p5, %pred11
          pass  %pred12, @p3
          landp ~@p0, @p3, @p6
          pass  @p6, %pred12
        }
        {
          cmpedb,0,sm   %dr61, %dr13, %pred16
          cmpedb,1,sm   %db[8], %dr18, %pred18
          addd,2,sm     0x18, %dr10, %dr1
          cmpedb,3,sm   %dr62, %dr16, %pred17
          cmpedb,4,sm   %db[9], %dr45, %pred19
          addd,5,sm     %dr10, _f16s,_lts0lo 0x20, %dr13
          pass  %pred0, @p0
          pass  %pred14, @p1
          landp ~@p0, @p1, @p4
          pass  @p4, %pred14
          pass  %pred13, @p2
          landp ~@p0, @p2, @p5
          pass  @p5, %pred13
          pass  %pred15, @p3
          landp ~@p0, @p3, @p6
          pass  @p6, %pred15
        }
        {
          cmpedb,0,sm   %db[10], %dr1, %pred20
          addd,1,sm     %dr10, _f16s,_lts0lo 0x20, %dr1
          addd,2,sm     %dr10, _f16s,_lts0hi 0x28, %dr16
          cmpedb,3,sm   %db[11], %dr13, %pred21
          addd,4,sm     %dr10, _f16s,_lts0hi 0x28, %dr13
          addd,5,sm     %dr10, _f16s,_lts1lo 0x30, %dr18
          pass  %pred0, @p0
          pass  %pred16, @p1
          landp ~@p0, @p1, @p4
          pass  @p4, %pred16
          pass  %pred17, @p2
          landp ~@p0, @p2, @p5
          pass  @p5, %pred17
          pass  %pred18, @p3
          landp ~@p0, @p3, @p6
          pass  @p6, %pred18
        }
        {
          cmpedb,0,sm   %db[13], %dr16, %pred7
          addd,1,sm     %dr10, _f16s,_lts0lo 0x30, %dr16
          stw,2 %dr49, 0xc, %r22 ? %pred7
          cmpedb,3,sm   %db[14], %dr18, %pred22
          cmpedb,4,sm   %db[16], %dr13, %pred23
          stw,5 %dr49, 0xc, %r37 ? %pred5
          pass  %pred0, @p0
          pass  %pred19, @p1
          landp ~@p0, @p1, @p4
          pass  @p4, %pred19
          pass  %pred20, @p2
          landp ~@p0, @p2, @p5
          pass  @p5, %pred20
          pass  %pred21, @p3
          landp ~@p0, @p3, @p6
          pass  @p6, %pred21
        }
        {
          cmpedb,0,sm   %db[19], %dr16, %pred25
          cmpedb,1,sm   %db[15], %dr1, %pred24
          ldd,2 0x0, [ _f64,_lts1 Ptr_Glob ], %dr63, mas=0x3 ? %pred5
          addd,3,sm     %dr10, _f16s,_lts0lo 0x28, %dr1
          addd,4,sm     %dr10, _f16s,_lts0hi 0x30, %dr13
          merged,5,sm   %dr20, %dr12, %dr16, %pred6
          pass  %pred0, @p0
          pass  %pred7, @p1
          landp ~@p0, @p1, @p4
          pass  @p4, %pred7
          pass  %pred22, @p2
          landp ~@p0, @p2, @p5
          pass  @p5, %pred22
          pass  %pred23, @p3
          landp ~@p0, @p3, @p6
          pass  @p6, %pred6
        }
        {
          merged,0,sm   %dr17, %dr12, %dr17, %pred11
          merged,1,sm   %dr19, %dr12, %dr18, %pred10
          ldd,2,sm      %dr63, 0x0, %dr19
          merged,3,sm   %dr14, %dr12, %dr14, %pred13
          merged,4,sm   %dr11, %dr12, %dr11, %pred14
          merged,5,sm   %dr15, %dr12, %dr15, %pred12
          pass  %pred0, @p0
          pass  %pred24, @p1
          landp ~@p0, @p1, @p4
          pass  @p4, %pred10
          pass  %pred25, @p2
          landp ~@p0, @p2, @p5
          pass  @p5, %pred11
        }
        {
          cmpedb,0,sm   %db[20], %dr1, %pred12
          cmpedb,1,sm   %db[21], %dr13, %pred13
          std,2 %dr7, 0x0, %dr12 ? ~%pred0
          addd,3,sm     %dr10, _f16s,_lts0lo 0x30, %dr1
          merges,4,sm   %r8, %r38, %r8, %pred2
          merged,5,sm   %dr15, %dr16, %dr10, %pred17
        }
        {
          merged,0,sm   %dr17, %dr16, %dr13, %pred16
          merged,1,sm   %dr11, %dr16, %dr11, %pred19
          merged,2,sm   %dr18, %dr16, %dr12, %pred15
          merged,3,sm   %dr14, %dr16, %dr14, %pred18
          cmpedb,4,sm   %db[22], %dr1, %pred12
          merges,5,sm   %r8, %r9, %r8, %pred3
          pass  %pred0, @p0
          pass  %pred12, @p1
          landp ~@p0, @p1, @p4
          pass  @p4, %pred2
          pass  %pred13, @p2
          landp ~@p0, @p2, @p5
          pass  @p5, %pred3
        }
        {
          merged,0,sm   %dr13, %dr12, %dr10, %pred20
          merged,1,sm   %dr11, %dr12, %dr11, %pred22
          merged,2,sm   %dr10, %dr12, %dr8, %pred21
          cmpesb,3,sm   %r9, 0x4, %pred12
          cmpesb,4,sm   %r9, 0x1, %pred13
          merges,5,sm   %r8, %r22, %r1, %pred8
          pass  %pred0, @p0
          pass  %pred12, @p1
          landp ~@p0, @p1, @p4
          pass  @p4, %pred8
        }
        {
          merged,0,sm   %dr14, %dr12, %dr9, %pred7
          merged,1,sm   %dr8, %dr10, %dr1, %pred10
          merged,2,sm   %dr11, %dr10, %dr8, %pred11
          cmplesb,3,sm  %r1, _f16s,_lts0lo 0x64, %pred7
          adds,4        0x0, _f16s,_lts0hi 0x41, %r30 ? ~%pred1
          stw,5 0x10, %dr49, %r5 ? %pred5
          pass  %pred9, @p0
          pass  %pred12, @p1
          landp @p0, @p1, @p4
          pass  @p4, %pred9
          pass  %pred1, @p2
          pass  %pred13, @p3
          landp @p2, ~@p3, @p5
          pass  @p5, %pred10
          landp @p5, @p4, @p6
          pass  @p6, %pred11
        }
        {
          merged,0,sm   %dr9, %dr10, %dr5, %pred6
          merged,1,sm   %dr8, %dr1, %dr8, %pred3
          std,2 %dr7, 0x8, %dr16 ? ~%pred0
          adds,3        0x0, _f16s,_lts0lo 0x41, %r30 ? %pred1
          std,5 %dr49, 0x0, %dr19 ? %pred5
          pass  %pred1, @p0
          pass  %pred13, @p1
          landp @p0, @p1, @p4
          pass  @p4, %pred6
          pass  %pred7, @p2
          landp @p4, ~@p2, @p5
          pass  @p5, %pred9
          landp @p4, @p2, @p6
          pass  @p6, %pred7
        }
        {
          merged,0,sm   %dr5, %dr1, %dr5, %pred2
          std,2 0x10, %dr7, %dr12 ? ~%pred0
          std,5 0x18, %dr7, %dr10 ? ~%pred0
          pass  %pred10, @p0
          pass  %pred4, @p1
          landp @p0, @p1, @p4
          pass  @p4, %pred3
        }
        {
          merged,0,sm   %dr8, %dr5, %dr8, %pred8
          std,2 %dr7, _f16s,_lts0lo 0x20, %dr1 ? ~%pred0
          std,5 %dr7, _f16s,_lts0hi 0x28, %dr5 ? ~%pred0
        }
        {
          stw,2 %dr49, 0xc, %r39 ? %pred11
          stw,5 %dr49, 0xc, %r37 ? %pred9
        }
        {
          stw,2 %dr49, 0xc, %r22 ? %pred7
          stw,5 %dr49, 0xc, %r27 ? %pred3
        }
        {
          std,2 %dr7, _f16s,_lts0lo 0x30, %dr8 ? ~%pred0
          ldd,5 0x0, [ _f64,_lts1 Ptr_Glob ], %db[17], mas=0x3 ? %pred1
        }
        {
          ldd,0,sm      %db[17], 0x0, %dr1
          ldb,2 0x0, [ _f64,_lts0 Ch_2_Glob ], %b[12], mas=0x3 ? ~%pred1
        }
        {
          getfs,1,sm    %b[12], _f16s,_lts0lo 0x1200, %r5
          stw,2 0x10, %dr49, %r6 ? %pred1
        }
        {
          cmplsb,0,sm   %r5, _f16s,_lts0lo 0x41, %pred0
        }
        {
          nop 1
          pass  %pred1, @p0
          pass  %pred0, @p1
          landp ~@p0, ~@p1, @p4
          pass  @p4, %pred2
          landp ~@p0, @p1, @p5
          pass  @p5, %pred0
        }
        {
          adds,0        0x0, 0x0, %r29 ? %pred2
          adds,1        0x0, 0x0, %r28 ? %pred2
          std,2 %dr49, 0x0, %dr1 ? %pred1
        }
        {
          ct    %ctpr3 ? %pred2
          ldb,2 0x0, [ _f64,_lts0 Ch_2_Glob ], %b[18], mas=0x3 ? %pred1
        }
        {
          ct    %ctpr1 ? %pred0
          getfs,0,sm    %b[18], _f16s,_lts0lo 0x1200, %r1
        }
        {
          cmplsb,0,sm   %r1, _f16s,_lts0lo 0x41, %pred0
        }
        {
          nop 1
          pass  %pred1, @p0
          pass  %pred0, @p1
          landp @p0, @p1, @p4
          pass  @p4, %pred2
          landp @p0, ~@p1, @p5
          pass  @p5, %pred0
        }
        {
          adds,0        0x0, 0x0, %r29 ? %pred0
          adds,1        0x0, 0x0, %r28 ? %pred0
        }
        {
          ct    %ctpr1 ? %pred2
        }
.L2364:
        {
          setwd wsz = 0x2e, nfx = 0x1, dbl = 0x0
          setbn rsz = 0x6, rbs = 0x20, rcur = 0x0
          setbp psz = 0x6
          disp  %ctpr1, .L668
          scls,1        0x9, 0x9, %r14
          adds,2        0x0, _f16s,_lts1lo 0x43, %r13
          ldb,3 0x0, [ _f64,_lts2 Ch_2_Glob ], %r45
          adds,4,sm     0x0, %r28, %r1
          adds,5,sm     0x0, %r29, %r5
        }
        {
          rwd,0 _f64,_lts0 0xc0ff0000000000, %lsr
          adds,1,sm     0x0, %r30, %b[8]
          ldd,2,sm      0x0, [ _f64,_lts2 .LC.8 ], %dr9
        }
        {
          ldd,0,sm      0x0, [ _f64,_lts0 .LC.8 +8 ], %dr8
          getfs,1,sm    %b[8], %r14, %r28
          ldd,2,sm      0x0, [ _f64,_lts2 .LC.8 +16 ], %dr7
        }
        {
          ldw,0,sm      0x0, [ _f64,_lts0 .LC.8 +24 ], %r10
          cmpesb,1,sm   %r28, %r13, %pred4
          ldh,2,sm      0x0, [ _f64,_lts2 .LC.8 +28 ], %r11
          adds,3,sm     %b[8], 0x2, %r29
          adds,4,sm     %b[8], 0x1, %r28
          adds,5,sm     %b[8], 0x3, %b[2]
        }
        {
          ldb,0,sm      0x0, [ _f64,_lts2 .LC.8 +30 ], %r12
          addd,1        0x0, _f16s,_lts0lo 0xffde, %dr15
          addd,3        0x0, _f16s,_lts0hi 0xffd8, %dr16
          getfs,4,sm    %r28, %r14, %r30
          addd,5        0x0, _f16s,_lts1lo 0xffdc, %dr17
        }
        {
          addd,1        0x0, _f16s,_lts0lo 0xffc8, %dr18
          merges,2,sm   0x0, 0x1, %r46, %pred4
          cmpesb,3,sm   %r30, %r13, %pred3
          addd,4        0x0, _f16s,_lts0hi 0xffd0, %dr19
          addd,5        0x0, _f16s,_lts1lo 0xffc0, %dr20
        }
        {
          cmpesb,0,sm   %r26, %r46, %pred1
          getfs,1,sm    %r28, %r14, %b[13]
          adds,2,sm     0x0, %r28, %b[6]
          getfs,3,sm    %r29, %r14, %b[12]
          adds,4,sm     0x0, %r29, %b[4]
          getfs,5       %r45, _f16s,_lts0lo 0x1200, %r6
        }
        {
          merges,0,sm   0x0, 0x1, %b[11], %pred3
        }
        {
          merges,0,sm   %r26, 0x0, %b[7], %pred1
        }
.L668:
        {
          loop_mode
          cmpesb,0,sm   %b[12], %r13, %pred2
          cmpesb,1,sm   %b[7], %b[11], %pred0
          stb,2 %dr2, %dr15, %r12 ? %pred1
          cmplesb,3,sm  %b[13], %r6, %pred5
        }
        {
          loop_mode
          sth,2 %dr2, %dr17, %r11 ? %pred1
          adds,4,sm     %b[2], 0x1, %b[0]
          stw,5 %dr2, %dr16, %r10 ? %pred1
        }
        {
          loop_mode
          getfs,0,sm    %b[2], %r14, %b[10]
          merges,1,sm   0x0, 0x1, %b[9], %pred2
          merges,2,sm   %b[7], 0x0, %b[5], %pred0
          getfs,3,sm    %b[4], %r14, %b[11]
          merges,4,sm   %r1, 0x1, %r1, %pred4
          std,5 %dr2, %dr18, %dr8 ? %pred1
        }
        {
          loop_mode
          alc   alcf=1, alct=1
          abn   abnf=1, abnt=1
          abp   abpf=1, abpt=1
          ct    %ctpr1 ? %pred5
          merges,0,sm   %r5, 0x1, %r5, %pred1
          merges,1,sm   %r4, %r24, %r4, %pred1
          std,2 %dr2, %dr20, %dr9 ? %pred1
          merges,3,sm   %r0, %b[8], %r0, %pred4
          merges,4,sm   %r22, %r24, %r22, %pred1
          std,5 %dr2, %dr19, %dr7 ? %pred1
        }
        {
          setwd wsz = 0x2e, nfx = 0x1, dbl = 0x0
          setbn rsz = 0xd, rbs = 0x20, rcur = 0xa
          setbp psz = 0x0
          adds,0,sm     0x0, %b[9], %r26
        }
        {
          nop 1
          cmpesb,0      %r1, 0x0, %pred7
          cmpesb,1      %r5, 0x0, %pred8
        }
        {
          stb,2 0x0, [ _f64,_lts0 Ch_1_Glob ], %r0 ? ~%pred7
          stw,5 0x0, [ _f64,_lts2 Int_Glob ], %r4 ? ~%pred8
        }
.L751:
        {
          disp  %ctpr1, .L209
          ldb,0 0x0, [ _f64,_lts0 Ch_1_Glob ], %r13
          shls,1        %r22, 0x1, %r12
          ldw,2,sm      0x0, [ _f64,_lts2 Int_Glob ], %r14
          shls,3        %r22, 0x4, %r15
          adds,4        %r24, 0x1, %r24
          shls,5        %r22, 0x3, %r16
        }
        {
          disp  %ctpr2, .L787
          ldd,0,sm      0x0, [ _f64,_lts1 .LC.7 ], %dr7
          adds,1        %r12, %r22, %r12
          subs,3        %r15, _f16s,_lts0lo 0x31, %r15
          cmplesb,4     %r24, %r31, %pred0
        }
        {
          ldd,0,sm      0x0, [ _f64,_lts2 .LC.7 +8 ], %dr1
          smulx,1       %r12, _f32s,_lts1 0x92492493, %dr17
          sars,2        %r12, _f16s,_lts0lo 0x1f, %r18
          adds,4        %r16, %r15, %r15
        }
        {
          ldd,0,sm      0x0, [ _f64,_lts0 .LC.7 +16 ], %dr9
          ldw,2,sm      0x0, [ _f64,_lts2 .LC.7 +24 ], %r8
          subs,4        %r15, %r12, %r15
        }
        {
          ldh,0,sm      0x0, [ _f64,_lts0 .LC.7 +28 ], %r11
          ldb,2,sm      0x0, [ _f64,_lts2 .LC.7 +30 ], %r10
        }
        {
          nop 2
          cmpesb,0      %r13, _f16s,_lts0lo 0x41, %pred1
          subs,1,sm     0x9, %r14, %r13
        }
        {
          shrd,0        %dr17, _f16s,_lts0lo 0x20, %dr14
        }
        {
          adds,0        %r14, %r12, %r12
        }
        {
          sars,0        %r12, 0x2, %r12
        }
        {
          subs,0        %r12, %r18, %r6
        }
        {
          ct    %ctpr1 ? %pred0
          subs,0        %r15, %r6, %r5
          adds,1,sm     %r13, %r6, %r6 ? %pred1
        }
        {
          ct    %ctpr2 ? ~%pred0
        }
.L787:
        {
          nop 4
          disp  %ctpr2, clock_gettime
          addd,0,sm     0x0, [ _f64,_lts0 tp1 ], %db[1]
          addd,1,sm     0x0, 0x0, %db[0]
          shls,2,sm     %r31, 0x2, %r1
        }
        {
          call  %ctpr2, wbs = 0x2a
        }
        {
          disp  %ctpr1, printf
          ldd,0 0x0, [ _f64,_lts2 tp1 ], %dr8
          istofd,1      %r31, %dr9
          ldd,2 0x0, [ _f64,_lts0 tp1 +8 ], %dr7
        }
        {
          nop 3
          ldd,0 0x0, [ _f64,_lts0 startSecs ], %dr10
          addd,1,sm     0x0, [ _f64,_lts2 .LC.9 ], %db[0]
        }
        {
          idtofd,0,sm   %dr7, %dr7
          idtofd,1      %dr8, %dr8
        }
        {
          nop 2
          addd,0,sm     0x0, %dr9, %db[1]
        }
        {
          nop 3
          fmuld,0,sm    %dr7, _f64,_lts0 0x3e112e0be826d695, %dr7
        }
        {
          nop 3
          faddd,0,sm    %dr8, %dr7, %dr7
        }
        {
          nop 3
          fsubd,0,sm    %dr7, %dr10, %dr8
          std,2 0x0, [ _f64,_lts0 theseSecs ], %dr7
        }
        {
          fmuld,0,sm    %dr8, _f64,_lts0 0x408f400000000000, %dr7
          std,2 0x0, [ _f64,_lts2 secs ], %dr8
        }
        {
          std,2 0x0, [ _f64,_lts0 User_Time ], %dr8
        }
        {
          nop 1
          addd,1,sm     0x0, %dr8, %db[2]
        }
        {
          nop 3
          fdtoistr,0,sm %dr7, %r7
        }
        {
          stw,2 0x0, [ _f64,_lts0 millisecs ], %r7
          std,5 %dr3, 0x0, %dr44
        }
        {
          std,2 %dr3, 0x8, %dr9
          std,5 0x10, %dr3, %dr8
        }
        {
          call  %ctpr1, wbs = 0x2a
        }
        {
          nop 4
          disp  %ctpr3, .L174
          ldd,0 0x0, [ _f64,_lts0 User_Time ], %dr7
        }
        {
          fcmpledb,0    %dr7, _f64,_lts0 0x4000000000000000, %pred0
          fcmpltdb,1,sm %dr7, _f64,_lts2 0x3fa999999999999a, %pred1
        }
        {
          nop 1
        }
        {
          pass  %pred0, @p0
          pass  %pred1, @p1
          landp @p0, @p1, @p4
          pass  @p4, %pred1
        }
        {
          adds,0        0x0, 0x0, %r42 ? ~%pred0
        }
        {
          nop 2
          cmplesb,0     %r42, 0x0, %pred0
          adds,1        %r1, %r31, %r31 ? %pred1
        }
        {
          ct    %ctpr3 ? ~%pred0
        }
        {
          disp  %ctpr2, puts
          addd,0        0x0, [ _f64,_lts0 .LC.57.1 ], %db[0]
          addd,1        0x0, [ _f64,_lts2 .LC.11 ], %dr0
        }
        {
          nop 3
          addd,0,sm     0x0, [ _f64,_lts0 .LC.13 ], %dr1
          addd,1,sm     0x0, [ _f64,_lts2 .LC.12 ], %dr4
        }
        {
          call  %ctpr2, wbs = 0x2a
        }
        {
          nop 4
          disp  %ctpr1, puts
          addd,0        0x0, [ _f64,_lts0 .LC.56.1 ], %db[0]
        }
        {
          call  %ctpr1, wbs = 0x2a
        }
        {
          nop 4
          disp  %ctpr3, puts
          addd,0        0x0, [ _f64,_lts0 .LC.55.1 ], %db[0]
        }
        {
          call  %ctpr3, wbs = 0x2a
        }
        {
          nop 4
          disp  %ctpr2, printf
          addd,0,sm     0x0, [ _f64,_lts0 .LC.11 ], %db[0]
          std,2 %dr3, 0x0, %dr0
        }
        {
          call  %ctpr2, wbs = 0x2a
        }
        {
          nop 4
          disp  %ctpr1, printf
          ldw,0 0x0, [ _f64,_lts0 Int_Glob ], %r0
        }
        {
          nop 1
          cmpesb,0      %r0, 0x5, %pred0
        }
        {
          addd,0,sm     0x0, [ _f64,_lts0 .LC.13 ], %db[0] ? ~%pred0
          addd,1,sm     0x0, [ _f64,_lts2 .LC.12 ], %db[0] ? %pred0
          std,2 %dr3, 0x0, %dr1 ? ~%pred0
          std,5 %dr3, 0x0, %dr4 ? %pred0
        }
        {
          call  %ctpr1, wbs = 0x2a ? ~%pred0
        }
        {
          call  %ctpr1, wbs = 0x2a ? %pred0
        }
        {
          nop 4
        }
        {
          disp  %ctpr2, printf
          ldw,0 0x0, [ _f64,_lts0 Int_Glob ], %r1
          addd,1        0x0, [ _f64,_lts2 .LC.14 ], %dr0
          addd,2,sm     0x0, [ _f64,_lts2 .LC.14 ], %db[0]
        }
        {
          addd,1        0x0, [ _f64,_lts0 .LC.15 ], %dr4
          std,2 %dr3, 0x0, %dr0
          addd,3,sm     0x0, [ _f64,_lts2 .LC.13 ], %dr7
        }
        {
          nop 2
          addd,0,sm     0x0, [ _f64,_lts0 .LC.12 ], %dr8
        }
        {
          sxt,0 0x2, %r1, %dr1
        }
        {
          addd,0,sm     0x0, %dr1, %db[1]
          std,2 %dr3, 0x8, %dr1
        }
        {
          call  %ctpr2, wbs = 0x2a
        }
        {
          nop 4
          disp  %ctpr1, printf
          addd,0,sm     0x0, [ _f64,_lts0 .LC.15 ], %db[0]
          std,2 %dr3, 0x0, %dr4
        }
        {
          call  %ctpr1, wbs = 0x2a
        }
        {
          nop 4
          disp  %ctpr3, printf
          ldw,0 0x0, [ _f64,_lts0 Bool_Glob ], %r1
        }
        {
          nop 1
          cmpesb,0      %r1, 0x1, %pred0
        }
        {
          addd,0,sm     0x0, [ _f64,_lts0 .LC.13 ], %db[0] ? ~%pred0
          addd,1,sm     0x0, [ _f64,_lts2 .LC.12 ], %db[0] ? %pred0
          std,2 %dr3, 0x0, %dr7 ? ~%pred0
          std,5 %dr3, 0x0, %dr8 ? %pred0
        }
        {
          call  %ctpr3, wbs = 0x2a ? ~%pred0
        }
        {
          call  %ctpr3, wbs = 0x2a ? %pred0
        }
        {
          nop 4
        }
        {
          disp  %ctpr2, printf
          ldw,0 0x0, [ _f64,_lts0 Bool_Glob ], %r1
          addd,1        0x0, [ _f64,_lts2 .LC.16 ], %dr4
          addd,2,sm     0x0, [ _f64,_lts2 .LC.16 ], %db[0]
        }
        {
          addd,1        0x0, [ _f64,_lts0 .LC.17 ], %dr7
          std,2 %dr3, 0x0, %dr4
          addd,3,sm     0x0, [ _f64,_lts2 .LC.13 ], %dr8
        }
        {
          nop 2
          addd,0,sm     0x0, [ _f64,_lts0 .LC.12 ], %dr9
        }
        {
          sxt,0 0x2, %r1, %dr1
        }
        {
          addd,0,sm     0x0, %dr1, %db[1]
          std,2 %dr3, 0x8, %dr1
        }
        {
          call  %ctpr2, wbs = 0x2a
        }
        {
          nop 4
          disp  %ctpr1, printf
          addd,0,sm     0x0, [ _f64,_lts0 .LC.17 ], %db[0]
          std,2 %dr3, 0x0, %dr7
        }
        {
          call  %ctpr1, wbs = 0x2a
        }
        {
          nop 4
          disp  %ctpr3, printf
          ldb,0 0x0, [ _f64,_lts0 Ch_1_Glob ], %r1
        }
        {
          nop 1
          cmpesb,0      %r1, _f16s,_lts0lo 0x41, %pred0
        }
        {
          addd,0,sm     0x0, [ _f64,_lts0 .LC.13 ], %db[0] ? ~%pred0
          addd,1,sm     0x0, [ _f64,_lts2 .LC.12 ], %db[0] ? %pred0
          std,2 %dr3, 0x0, %dr8 ? ~%pred0
          std,5 %dr3, 0x0, %dr9 ? %pred0
        }
        {
          call  %ctpr3, wbs = 0x2a ? ~%pred0
        }
        {
          call  %ctpr3, wbs = 0x2a ? %pred0
        }
        {
          nop 4
        }
        {
          disp  %ctpr2, printf
          ldb,0 0x0, [ _f64,_lts0 Ch_1_Glob ], %r1
          addd,1        0x0, [ _f64,_lts2 .LC.18 ], %dr7
          addd,2,sm     0x0, [ _f64,_lts2 .LC.18 ], %db[0]
        }
        {
          addd,1        0x0, [ _f64,_lts0 .LC.19 ], %dr7
          std,2 %dr3, 0x0, %dr7
          addd,3,sm     0x0, [ _f64,_lts2 .LC.13 ], %dr8
        }
        {
          nop 2
          addd,0,sm     0x0, [ _f64,_lts0 .LC.12 ], %dr9
        }
        {
          sxt,0 0x0, %r1, %dr1
        }
        {
          addd,0,sm     0x0, %dr1, %db[1]
          std,2 %dr3, 0x8, %dr1
        }
        {
          call  %ctpr2, wbs = 0x2a
        }
        {
          nop 4
          disp  %ctpr1, printf
          addd,0,sm     0x0, [ _f64,_lts0 .LC.19 ], %db[0]
          std,2 %dr3, 0x0, %dr7
        }
        {
          call  %ctpr1, wbs = 0x2a
        }
        {
          nop 4
          disp  %ctpr3, printf
          ldb,0 0x0, [ _f64,_lts0 Ch_2_Glob ], %r1
        }
        {
          nop 1
          cmpesb,0      %r1, _f16s,_lts0lo 0x42, %pred0
        }
        {
          addd,0,sm     0x0, [ _f64,_lts0 .LC.13 ], %db[0] ? ~%pred0
          addd,1,sm     0x0, [ _f64,_lts2 .LC.12 ], %db[0] ? %pred0
          std,2 %dr3, 0x0, %dr8 ? ~%pred0
          std,5 %dr3, 0x0, %dr9 ? %pred0
        }
        {
          call  %ctpr3, wbs = 0x2a ? ~%pred0
        }
        {
          call  %ctpr3, wbs = 0x2a ? %pred0
        }
        {
          nop 4
        }
        {
          disp  %ctpr2, printf
          ldb,0 0x0, [ _f64,_lts0 Ch_2_Glob ], %r1
          addd,1        0x0, [ _f64,_lts2 .LC.20 ], %dr7
          addd,2,sm     0x0, [ _f64,_lts2 .LC.20 ], %db[0]
        }
        {
          addd,1        0x0, [ _f64,_lts0 .LC.21 ], %dr7
          std,2 %dr3, 0x0, %dr7
          addd,3,sm     0x0, [ _f64,_lts2 .LC.13 ], %dr8
        }
        {
          nop 2
          addd,0,sm     0x0, [ _f64,_lts0 .LC.12 ], %dr9
        }
        {
          sxt,0 0x0, %r1, %dr1
        }
        {
          addd,0,sm     0x0, %dr1, %db[1]
          std,2 %dr3, 0x8, %dr1
        }
        {
          call  %ctpr2, wbs = 0x2a
        }
        {
          nop 4
          disp  %ctpr1, printf
          addd,0,sm     0x0, [ _f64,_lts0 .LC.21 ], %db[0]
          std,2 %dr3, 0x0, %dr7
        }
        {
          call  %ctpr1, wbs = 0x2a
        }
        {
          nop 4
          disp  %ctpr3, printf
          ldw,0 0x0, [ _f64,_lts0 Arr_1_Glob +32 ], %r1
        }
        {
          nop 1
          cmpesb,0      %r1, 0x7, %pred0
        }
        {
          addd,0,sm     0x0, [ _f64,_lts0 .LC.13 ], %db[0] ? ~%pred0
          addd,1,sm     0x0, [ _f64,_lts2 .LC.12 ], %db[0] ? %pred0
          std,2 %dr3, 0x0, %dr8 ? ~%pred0
          std,5 %dr3, 0x0, %dr9 ? %pred0
        }
        {
          call  %ctpr3, wbs = 0x2a ? ~%pred0
        }
        {
          call  %ctpr3, wbs = 0x2a ? %pred0
        }
        {
          nop 4
        }
        {
          disp  %ctpr2, printf
          ldw,0 0x0, [ _f64,_lts0 Arr_1_Glob +32 ], %r1
          addd,1,sm     0x0, [ _f64,_lts2 .LC.14 ], %db[0]
          std,2 %dr3, 0x0, %dr0
          adds,3        %r31, 0xa, %r7
        }
        {
          addd,1        0x0, [ _f64,_lts0 .LC.22 ], %dr8
          addd,2,sm     0x0, [ _f64,_lts2 .LC.13 ], %dr9
        }
        {
          nop 2
          addd,0,sm     0x0, [ _f64,_lts0 .LC.12 ], %dr10
        }
        {
          sxt,0 0x2, %r1, %dr1
        }
        {
          addd,0,sm     0x0, %dr1, %db[1]
          std,2 %dr3, 0x8, %dr1
        }
        {
          call  %ctpr2, wbs = 0x2a
        }
        {
          nop 4
          disp  %ctpr1, printf
          addd,0,sm     0x0, [ _f64,_lts0 .LC.22 ], %db[0]
          std,2 %dr3, 0x0, %dr8
        }
        {
          call  %ctpr1, wbs = 0x2a
        }
        {
          nop 4
          disp  %ctpr3, printf
          ldw,0 0x0, [ _f64,_lts0 Arr_2_Glob +1628 ], %r1
        }
        {
          nop 1
          cmpesb,0      %r1, %r7, %pred0
        }
        {
          addd,0,sm     0x0, [ _f64,_lts0 .LC.13 ], %db[0] ? ~%pred0
          addd,1,sm     0x0, [ _f64,_lts2 .LC.12 ], %db[0] ? %pred0
          std,2 %dr3, 0x0, %dr9 ? ~%pred0
          std,5 %dr3, 0x0, %dr10 ? %pred0
        }
        {
          call  %ctpr3, wbs = 0x2a ? ~%pred0
        }
        {
          call  %ctpr3, wbs = 0x2a ? %pred0
        }
        {
          nop 4
        }
        {
          disp  %ctpr2, printf
          ldw,0 0x0, [ _f64,_lts0 Arr_2_Glob +1628 ], %r1
          addd,1        0x0, [ _f64,_lts2 .LC.23 ], %dr7
          addd,2,sm     0x0, [ _f64,_lts2 .LC.23 ], %db[0]
        }
        {
          addd,1        0x0, [ _f64,_lts0 .LC.24 ], %dr7
          std,2 %dr3, 0x0, %dr7
          addd,3        0x0, [ _f64,_lts2 .LC.25 ], %dr8
        }
        {
          addd,0        0x0, [ _f64,_lts0 .LC.26 ], %dr11
          addd,1,sm     0x0, [ _f64,_lts2 .LC.13 ], %dr9
        }
        {
          nop 1
          addd,0,sm     0x0, [ _f64,_lts0 .LC.12 ], %dr10
        }
        {
          sxt,0 0x2, %r1, %dr1
        }
        {
          addd,0,sm     0x0, %dr1, %db[1]
          std,2 %dr3, 0x8, %dr1
        }
        {
          call  %ctpr2, wbs = 0x2a
        }
        {
          nop 4
          disp  %ctpr1, printf
          addd,0,sm     0x0, [ _f64,_lts0 .LC.24 ], %db[0]
          std,2 %dr3, 0x0, %dr7
        }
        {
          call  %ctpr1, wbs = 0x2a
        }
        {
          nop 4
          disp  %ctpr3, printf
          ldd,0 0x0, [ _f64,_lts0 Ptr_Glob ], %dr1
          addd,1,sm     0x0, [ _f64,_lts2 .LC.25 ], %db[0]
        }
        {
          nop 4
          ldd,0 %dr1, 0x0, %dr1
          std,2 %dr3, 0x0, %dr8
        }
        {
          sxt,0 0x2, %r1, %dr1
        }
        {
          addd,0,sm     0x0, %dr1, %db[1]
          std,2 %dr3, 0x8, %dr1
        }
        {
          call  %ctpr3, wbs = 0x2a
        }
        {
          nop 4
          disp  %ctpr2, printf
          addd,0,sm     0x0, [ _f64,_lts0 .LC.26 ], %db[0]
          std,2 %dr3, 0x0, %dr11
        }
        {
          call  %ctpr2, wbs = 0x2a
        }
        {
          nop 4
          disp  %ctpr1, printf
          ldd,0 0x0, [ _f64,_lts0 Ptr_Glob ], %dr1
        }
        {
          nop 4
          ldw,0 %dr1, 0x8, %r1
        }
        {
          nop 1
          cmpesb,0      %r1, 0x0, %pred0
        }
        {
          addd,0,sm     0x0, [ _f64,_lts0 .LC.13 ], %db[0] ? ~%pred0
          addd,1,sm     0x0, [ _f64,_lts2 .LC.12 ], %db[0] ? %pred0
          std,2 %dr3, 0x0, %dr9 ? ~%pred0
          std,5 %dr3, 0x0, %dr10 ? %pred0
        }
        {
          call  %ctpr1, wbs = 0x2a ? ~%pred0
        }
        {
          call  %ctpr1, wbs = 0x2a ? %pred0
        }
        {
          nop 4
        }
        {
          disp  %ctpr2, printf
          ldd,0 0x0, [ _f64,_lts0 Ptr_Glob ], %dr1
          addd,1,sm     0x0, [ _f64,_lts2 .LC.14 ], %db[0]
        }
        {
          addd,1        0x0, [ _f64,_lts0 .LC.27 ], %dr10
          addd,2,sm     0x0, [ _f64,_lts2 .LC.13 ], %dr7
        }
        {
          nop 2
          addd,0,sm     0x0, [ _f64,_lts0 .LC.12 ], %dr8
        }
        {
          nop 4
          ldw,0 %dr1, 0x8, %r1
          std,2 %dr3, 0x0, %dr0
        }
        {
          sxt,0 0x2, %r1, %dr1
        }
        {
          addd,0,sm     0x0, %dr1, %db[1]
          std,2 %dr3, 0x8, %dr1
        }
        {
          call  %ctpr2, wbs = 0x2a
        }
        {
          nop 4
          disp  %ctpr1, printf
          addd,0,sm     0x0, [ _f64,_lts0 .LC.27 ], %db[0]
          std,2 %dr3, 0x0, %dr10
        }
        {
          call  %ctpr1, wbs = 0x2a
        }
        {
          nop 4
          disp  %ctpr3, printf
          ldd,0 0x0, [ _f64,_lts0 Ptr_Glob ], %dr1
        }
        {
          nop 4
          ldw,0 %dr1, 0xc, %r1
        }
        {
          nop 1
          cmpesb,0      %r1, 0x2, %pred0
        }
        {
          addd,0,sm     0x0, [ _f64,_lts0 .LC.13 ], %db[0] ? ~%pred0
          addd,1,sm     0x0, [ _f64,_lts2 .LC.12 ], %db[0] ? %pred0
          std,2 %dr3, 0x0, %dr7 ? ~%pred0
          std,5 %dr3, 0x0, %dr8 ? %pred0
        }
        {
          call  %ctpr3, wbs = 0x2a ? ~%pred0
        }
        {
          call  %ctpr3, wbs = 0x2a ? %pred0
        }
        {
          nop 4
        }
        {
          disp  %ctpr2, printf
          ldd,0 0x0, [ _f64,_lts0 Ptr_Glob ], %dr1
          addd,1,sm     0x0, [ _f64,_lts2 .LC.16 ], %db[0]
        }
        {
          addd,1        0x0, [ _f64,_lts0 .LC.28 ], %dr9
          addd,2,sm     0x0, [ _f64,_lts2 .LC.13 ], %dr7
        }
        {
          nop 2
          addd,0,sm     0x0, [ _f64,_lts0 .LC.12 ], %dr8
        }
        {
          nop 4
          ldw,0 %dr1, 0xc, %r1
          std,2 %dr3, 0x0, %dr4
        }
        {
          sxt,0 0x2, %r1, %dr1
        }
        {
          addd,0,sm     0x0, %dr1, %db[1]
          std,2 %dr3, 0x8, %dr1
        }
        {
          call  %ctpr2, wbs = 0x2a
        }
        {
          nop 4
          disp  %ctpr1, printf
          addd,0,sm     0x0, [ _f64,_lts0 .LC.28 ], %db[0]
          std,2 %dr3, 0x0, %dr9
        }
        {
          call  %ctpr1, wbs = 0x2a
        }
        {
          nop 4
          disp  %ctpr3, printf
          ldd,0 0x0, [ _f64,_lts0 Ptr_Glob ], %dr1
        }
        {
          nop 4
          ldw,0 0x10, %dr1, %r1
        }
        {
          nop 1
          cmpesb,0      0x11, %r1, %pred0
        }
        {
          addd,0,sm     0x0, [ _f64,_lts0 .LC.13 ], %db[0] ? ~%pred0
          addd,1,sm     0x0, [ _f64,_lts2 .LC.12 ], %db[0] ? %pred0
          std,2 %dr3, 0x0, %dr7 ? ~%pred0
          std,5 %dr3, 0x0, %dr8 ? %pred0
        }
        {
          call  %ctpr3, wbs = 0x2a ? ~%pred0
        }
        {
          call  %ctpr3, wbs = 0x2a ? %pred0
        }
        {
          nop 4
        }
        {
          disp  %ctpr2, printf
          ldd,0 0x0, [ _f64,_lts0 Ptr_Glob ], %dr1
          addd,1        0x0, [ _f64,_lts2 .LC.29 ], %dr8
          addd,2,sm     0x0, [ _f64,_lts2 .LC.29 ], %db[0]
        }
        {
          addd,1        0x0, [ _f64,_lts0 .LC.30 ], %dr7
          addd,2,sm     0x0, [ _f64,_lts2 .LC.12 ], %dr12
        }
        {
          nop 2
          addd,0,sm     0x0, [ _f64,_lts0 .LC.13 ], %dr13
        }
        {
          nop 4
          ldw,0 0x10, %dr1, %r1
          std,2 %dr3, 0x0, %dr8
        }
        {
          sxt,0 0x2, %r1, %dr1
        }
        {
          addd,0,sm     0x0, %dr1, %db[1]
          std,2 %dr3, 0x8, %dr1
        }
        {
          call  %ctpr2, wbs = 0x2a
        }
        {
          nop 4
          disp  %ctpr1, printf
          addd,0,sm     0x0, [ _f64,_lts0 .LC.30 ], %db[0]
          std,2 %dr3, 0x0, %dr7
        }
        {
          call  %ctpr1, wbs = 0x2a
        }
        {
          nop 4
          disp  %ctpr3, strcmp
          ldd,0 0x0, [ _f64,_lts0 Ptr_Glob ], %dr1
          addd,1,sm     0x0, [ _f64,_lts2 .LC.2 ], %db[1]
        }
        {
          addd,0        0x14, %dr1, %db[0]
        }
        {
          call  %ctpr3, wbs = 0x2a
        }
        {
          nop 1
          disp  %ctpr1, printf
          cmpesb,3      %b[0], 0x0, %pred0
        }
        {
          addd,0,sm     0x0, [ _f64,_lts0 .LC.12 ], %db[0] ? %pred0
          addd,1,sm     0x0, [ _f64,_lts2 .LC.13 ], %db[0] ? ~%pred0
          std,2 %dr3, 0x0, %dr12 ? %pred0
          std,5 %dr3, 0x0, %dr13 ? ~%pred0
        }
        {
          call  %ctpr1, wbs = 0x2a ? ~%pred0
        }
        nop
        {
          call  %ctpr1, wbs = 0x2a ? %pred0
        }
        {
          nop 5
        }
        {
          disp  %ctpr2, printf
          ldd,0 0x0, [ _f64,_lts0 Ptr_Glob ], %dr12
          addd,1        0x0, [ _f64,_lts2 .LC.31 ], %dr1
          addd,2,sm     0x0, [ _f64,_lts2 .LC.31 ], %db[0]
        }
        {
          addd,1        0x0, [ _f64,_lts0 .LC.32 ], %dr13
          std,2 %dr3, 0x0, %dr1
          addd,3        0x0, [ _f64,_lts2 .LC.33 ], %dr14
        }
        {
          nop 2
          addd,0,sm     0x0, [ _f64,_lts0 .LC.13 ], %dr15
        }
        {
          addd,0        0x14, %dr12, %dr12
        }
        {
          addd,0,sm     0x0, %dr12, %db[1]
          std,2 %dr3, 0x8, %dr12
        }
        {
          call  %ctpr2, wbs = 0x2a
        }
        {
          nop 4
          disp  %ctpr1, printf
          addd,0,sm     0x0, [ _f64,_lts0 .LC.32 ], %db[0]
          std,2 %dr3, 0x0, %dr13
        }
        {
          call  %ctpr1, wbs = 0x2a
        }
        {
          nop 4
          disp  %ctpr3, printf
          ldd,0 0x0, [ _f64,_lts0 Next_Ptr_Glob ], %dr12
          addd,1,sm     0x0, [ _f64,_lts2 .LC.33 ], %db[0]
        }
        {
          nop 4
          ldd,0 %dr12, 0x0, %dr12
          std,2 %dr3, 0x0, %dr14
        }
        {
          sxt,0 0x2, %r12, %dr12
        }
        {
          addd,0,sm     0x0, %dr12, %db[1]
          std,2 %dr3, 0x8, %dr12
        }
        {
          call  %ctpr3, wbs = 0x2a
        }
        {
          nop 4
          disp  %ctpr2, puts
          addd,0        0x0, [ _f64,_lts0 .LC.54.1 ], %db[0]
        }
        {
          call  %ctpr2, wbs = 0x2a
        }
        {
          nop 4
          disp  %ctpr1, printf
          addd,0,sm     0x0, [ _f64,_lts0 .LC.26 ], %db[0]
          std,2 %dr3, 0x0, %dr11
        }
        {
          call  %ctpr1, wbs = 0x2a
        }
        {
          disp  %ctpr3, printf
          ldd,0 0x0, [ _f64,_lts0 Next_Ptr_Glob ], %dr11
        }
        {
          nop 3
          disp  %ctpr2, .L1439
        }
        {
          nop 4
          ldw,0 %dr11, 0x8, %r11
        }
        {
          nop 1
          cmpesb,0      %r11, 0x0, %pred0
        }
        {
          addd,0,sm     0x0, [ _f64,_lts0 .LC.13 ], %db[0] ? ~%pred0
          std,2 %dr3, 0x0, %dr15 ? ~%pred0
        }
        {
          call  %ctpr3, wbs = 0x2a ? ~%pred0
        }
        {
          ct    %ctpr2 ? %pred0
        }
.L1460:
        {
          disp  %ctpr2, printf
          ldd,0 0x0, [ _f64,_lts0 Next_Ptr_Glob ], %dr11
          addd,1,sm     0x0, [ _f64,_lts2 .LC.14 ], %db[0]
        }
        {
          nop 3
          addd,1,sm     0x0, [ _f64,_lts0 .LC.13 ], %dr12
          addd,2,sm     0x0, [ _f64,_lts2 .LC.12 ], %dr13
        }
        {
          nop 4
          ldw,0 %dr11, 0x8, %r11
          std,2 %dr3, 0x0, %dr0
        }
        {
          sxt,0 0x2, %r11, %dr11
        }
        {
          addd,0,sm     0x0, %dr11, %db[1]
          std,2 %dr3, 0x8, %dr11
        }
        {
          call  %ctpr2, wbs = 0x2a
        }
        {
          nop 4
          disp  %ctpr1, printf
          addd,0,sm     0x0, [ _f64,_lts0 .LC.27 ], %db[0]
          std,2 %dr3, 0x0, %dr10
        }
        {
          call  %ctpr1, wbs = 0x2a
        }
        {
          nop 4
          disp  %ctpr3, printf
          ldd,0 0x0, [ _f64,_lts0 Next_Ptr_Glob ], %dr10
        }
        {
          nop 4
          ldw,0 %dr10, 0xc, %r10
        }
        {
          nop 1
          cmpesb,0      %r10, 0x1, %pred0
        }
        {
          addd,0,sm     0x0, [ _f64,_lts0 .LC.13 ], %db[0] ? ~%pred0
          addd,1,sm     0x0, [ _f64,_lts2 .LC.12 ], %db[0] ? %pred0
          std,2 %dr3, 0x0, %dr12 ? ~%pred0
          std,5 %dr3, 0x0, %dr13 ? %pred0
        }
        {
          call  %ctpr3, wbs = 0x2a ? ~%pred0
        }
        {
          call  %ctpr3, wbs = 0x2a ? %pred0
        }
        {
          nop 4
        }
        {
          disp  %ctpr2, printf
          ldd,0 0x0, [ _f64,_lts0 Next_Ptr_Glob ], %dr10
          addd,1,sm     0x0, [ _f64,_lts2 .LC.16 ], %db[0]
        }
        {
          nop 3
          addd,1,sm     0x0, [ _f64,_lts0 .LC.13 ], %dr11
          addd,2,sm     0x0, [ _f64,_lts2 .LC.12 ], %dr12
        }
        {
          nop 4
          ldw,0 %dr10, 0xc, %r10
          std,2 %dr3, 0x0, %dr4
        }
        {
          sxt,0 0x2, %r10, %dr10
        }
        {
          addd,0,sm     0x0, %dr10, %db[1]
          std,2 %dr3, 0x8, %dr10
        }
        {
          call  %ctpr2, wbs = 0x2a
        }
        {
          nop 4
          disp  %ctpr1, printf
          addd,0,sm     0x0, [ _f64,_lts0 .LC.28 ], %db[0]
          std,2 %dr3, 0x0, %dr9
        }
        {
          call  %ctpr1, wbs = 0x2a
        }
        {
          nop 4
          disp  %ctpr3, printf
          ldd,0 0x0, [ _f64,_lts0 Next_Ptr_Glob ], %dr9
        }
        {
          nop 4
          ldw,0 0x10, %dr9, %r9
        }
        {
          nop 1
          cmpesb,0      0x12, %r9, %pred0
        }
        {
          addd,0,sm     0x0, [ _f64,_lts0 .LC.13 ], %db[0] ? ~%pred0
          addd,1,sm     0x0, [ _f64,_lts2 .LC.12 ], %db[0] ? %pred0
          std,2 %dr3, 0x0, %dr11 ? ~%pred0
          std,5 %dr3, 0x0, %dr12 ? %pred0
        }
        {
          call  %ctpr3, wbs = 0x2a ? ~%pred0
        }
        {
          call  %ctpr3, wbs = 0x2a ? %pred0
        }
        {
          nop 4
        }
        {
          disp  %ctpr2, printf
          ldd,0 0x0, [ _f64,_lts0 Next_Ptr_Glob ], %dr9
          addd,1,sm     0x0, [ _f64,_lts2 .LC.29 ], %db[0]
        }
        {
          nop 3
          addd,1,sm     0x0, [ _f64,_lts0 .LC.12 ], %dr10
          addd,2,sm     0x0, [ _f64,_lts2 .LC.13 ], %dr11
        }
        {
          nop 4
          ldw,0 0x10, %dr9, %r9
          std,2 %dr3, 0x0, %dr8
        }
        {
          sxt,0 0x2, %r9, %dr8
        }
        {
          addd,0,sm     0x0, %dr8, %db[1]
          std,2 %dr3, 0x8, %dr8
        }
        {
          call  %ctpr2, wbs = 0x2a
        }
        {
          nop 4
          disp  %ctpr1, printf
          addd,0,sm     0x0, [ _f64,_lts0 .LC.30 ], %db[0]
          std,2 %dr3, 0x0, %dr7
        }
        {
          call  %ctpr1, wbs = 0x2a
        }
        {
          nop 4
          disp  %ctpr3, strcmp
          ldd,0 0x0, [ _f64,_lts0 Next_Ptr_Glob ], %dr7
          addd,1,sm     0x0, [ _f64,_lts2 .LC.2 ], %db[1]
        }
        {
          addd,0        0x14, %dr7, %db[0]
        }
        {
          call  %ctpr3, wbs = 0x2a
        }
        {
          nop 1
          disp  %ctpr1, printf
          cmpesb,3      %b[0], 0x0, %pred0
        }
        {
          addd,0,sm     0x0, [ _f64,_lts0 .LC.12 ], %db[0] ? %pred0
          addd,1,sm     0x0, [ _f64,_lts2 .LC.13 ], %db[0] ? ~%pred0
          std,2 %dr3, 0x0, %dr10 ? %pred0
          std,5 %dr3, 0x0, %dr11 ? ~%pred0
        }
        {
          call  %ctpr1, wbs = 0x2a ? ~%pred0
        }
        nop
        {
          call  %ctpr1, wbs = 0x2a ? %pred0
        }
        {
          nop 5
        }
        {
          disp  %ctpr2, printf
          addd,0,sm     0x0, [ _f64,_lts2 .LC.31 ], %db[0]
          cmpesb,1      %r6, 0x5, %pred0
          ldd,2 0x0, [ _f64,_lts0 Next_Ptr_Glob ], %dr7
          std,5 %dr3, 0x0, %dr1
        }
        {
          nop 3
          addd,0        0x0, [ _f64,_lts0 .LC.35 ], %dr8
          addd,1,sm     0x0, [ _f64,_lts2 .LC.13 ], %dr9
        }
        {
          addd,0        0x14, %dr7, %dr7
        }
        {
          addd,0,sm     0x0, %dr7, %db[1]
          std,2 %dr3, 0x8, %dr7
        }
        {
          call  %ctpr2, wbs = 0x2a
        }
        {
          nop 4
          disp  %ctpr1, printf
          addd,0,sm     0x0, [ _f64,_lts0 .LC.35 ], %db[0]
          std,2 %dr3, 0x0, %dr8
        }
        {
          call  %ctpr1, wbs = 0x2a
        }
        {
          disp  %ctpr2, printf
          addd,0,sm     0x0, [ _f64,_lts0 .LC.13 ], %db[0] ? ~%pred0
          std,2 %dr3, 0x0, %dr9 ? ~%pred0
        }
        {
          nop 1
          disp  %ctpr3, .L1640
        }
        {
          ct    %ctpr3 ? %pred0
        }
        nop
        {
          call  %ctpr2, wbs = 0x2a ? ~%pred0
        }
.L1661:
        {
          disp  %ctpr2, printf
          sxt,0 0x2, %r6, %dr6
          addd,1        0x0, [ _f64,_lts2 .LC.36 ], %dr7
          std,2 %dr3, 0x0, %dr0
          cmpesb,3      %r5, 0xd, %pred0
          addd,5,sm     0x0, [ _f64,_lts0 .LC.14 ], %db[0]
        }
        {
          nop 3
          addd,0,sm     0x0, %dr6, %db[1]
          addd,1,sm     0x0, [ _f64,_lts0 .LC.13 ], %dr6
          std,2 %dr3, 0x8, %dr6
        }
        {
          call  %ctpr2, wbs = 0x2a
        }
        {
          nop 4
          disp  %ctpr1, printf
          addd,0,sm     0x0, [ _f64,_lts0 .LC.36 ], %db[0]
          std,2 %dr3, 0x0, %dr7
        }
        {
          call  %ctpr1, wbs = 0x2a
        }
        {
          disp  %ctpr2, printf
          addd,0,sm     0x0, [ _f64,_lts0 .LC.13 ], %db[0] ? ~%pred0
          std,2 %dr3, 0x0, %dr6 ? ~%pred0
        }
        {
          nop 1
          disp  %ctpr3, .L1686
        }
        {
          ct    %ctpr3 ? %pred0
        }
        nop
        {
          call  %ctpr2, wbs = 0x2a ? ~%pred0
        }
.L1707:
        {
          disp  %ctpr2, printf
          sxt,0 0x2, %r5, %dr5
          addd,1        0x0, [ _f64,_lts2 .LC.37 ], %dr4
          std,2 %dr3, 0x0, %dr4
          cmpesb,3      %r32, 0x7, %pred0
          addd,5,sm     0x0, [ _f64,_lts0 .LC.16 ], %db[0]
        }
        {
          nop 3
          addd,0,sm     0x0, %dr5, %db[1]
          addd,1,sm     0x0, [ _f64,_lts0 .LC.13 ], %dr5
          std,2 %dr3, 0x8, %dr5
        }
        {
          call  %ctpr2, wbs = 0x2a
        }
        {
          nop 4
          disp  %ctpr1, printf
          addd,0,sm     0x0, [ _f64,_lts0 .LC.37 ], %db[0]
          std,2 %dr3, 0x0, %dr4
        }
        {
          call  %ctpr1, wbs = 0x2a
        }
        {
          disp  %ctpr2, printf
          addd,0,sm     0x0, [ _f64,_lts0 .LC.13 ], %db[0] ? ~%pred0
          std,2 %dr3, 0x0, %dr5 ? ~%pred0
        }
        {
          nop 1
          disp  %ctpr3, .L1732
        }
        {
          ct    %ctpr3 ? %pred0
        }
        nop
        {
          call  %ctpr2, wbs = 0x2a ? ~%pred0
        }
.L1753:
        {
          disp  %ctpr2, printf
          sxt,0 0x2, %r32, %dr4
          addd,1        0x0, [ _f64,_lts2 .LC.38 ], %dr0
          std,2 %dr3, 0x0, %dr0
          cmpesb,3      %r26, 0x1, %pred0
          addd,5,sm     0x0, [ _f64,_lts0 .LC.14 ], %db[0]
        }
        {
          nop 3
          addd,0,sm     0x0, %dr4, %db[1]
          addd,1,sm     0x0, [ _f64,_lts0 .LC.13 ], %dr4
          std,2 %dr3, 0x8, %dr4
          addd,3,sm     0x0, [ _f64,_lts2 .LC.12 ], %dr5
        }
        {
          call  %ctpr2, wbs = 0x2a
        }
        {
          nop 4
          disp  %ctpr1, printf
          addd,0,sm     0x0, [ _f64,_lts0 .LC.38 ], %db[0]
          std,2 %dr3, 0x0, %dr0
        }
        {
          call  %ctpr1, wbs = 0x2a
        }
        {
          nop 1
          disp  %ctpr2, printf
          addd,0,sm     0x0, [ _f64,_lts0 .LC.13 ], %db[0] ? ~%pred0
          addd,1,sm     0x0, [ _f64,_lts2 .LC.12 ], %db[0] ? %pred0
          std,2 %dr3, 0x0, %dr4 ? ~%pred0
          std,5 %dr3, 0x0, %dr5 ? %pred0
        }
        {
          call  %ctpr2, wbs = 0x2a ? %pred0
        }
        {
          nop 1
        }
        {
          call  %ctpr2, wbs = 0x2a ? ~%pred0
        }
        {
          disp  %ctpr1, .L1799
        }
        {
          nop 3
          disp  %ctpr3, printf
        }
        {
          ct    %ctpr1 ? ~%pred0
        }
        {
          nop 2
          disp  %ctpr3, printf
        }
.L1799:
        {
          sxt,0 0x2, %r26, %dr0
          addd,1        0x0, [ _f64,_lts0 .LC.39 ], %dr4
          addd,2,sm     0x0, [ _f64,_lts0 .LC.39 ], %db[0]
          addd,3        0x0, [ _f64,_lts2 .LC.40 ], %dr5
        }
        {
          addd,0,sm     0x0, %dr0, %db[1]
          addd,1,sm     0x0, [ _f64,_lts0 .LC.12 ], %dr0
          std,2 %dr3, 0x0, %dr4
          addd,3,sm     0x0, [ _f64,_lts2 .LC.13 ], %dr4
          std,5 %dr3, 0x8, %dr0
        }
        {
          call  %ctpr3, wbs = 0x2a
        }
        {
          nop 4
          disp  %ctpr1, printf
          addd,0,sm     0x0, [ _f64,_lts0 .LC.40 ], %db[0]
          std,2 %dr3, 0x0, %dr5
        }
        {
          call  %ctpr1, wbs = 0x2a
        }
        {
          nop 4
          disp  %ctpr3, strcmp
          addd,0,sm     0x0, %dr25, %db[0]
          addd,1        0x0, [ _f64,_lts0 .LC.3 ], %db[1]
        }
        {
          call  %ctpr3, wbs = 0x2a
        }
        {
          nop 1
          disp  %ctpr1, printf
          cmpesb,3      %b[0], 0x0, %pred0
        }
        {
          addd,0,sm     0x0, [ _f64,_lts0 .LC.12 ], %db[0] ? %pred0
          addd,1,sm     0x0, [ _f64,_lts2 .LC.13 ], %db[0] ? ~%pred0
          std,2 %dr3, 0x0, %dr0 ? %pred0
          std,5 %dr3, 0x0, %dr4 ? ~%pred0
        }
        {
          call  %ctpr1, wbs = 0x2a ? ~%pred0
        }
        nop
        {
          call  %ctpr1, wbs = 0x2a ? %pred0
        }
        nop
        {
          nop 4
          disp  %ctpr2, printf
        }
        {
          addd,0,sm     0x0, %dr25, %db[1]
          addd,1,sm     0x0, [ _f64,_lts0 .LC.31 ], %db[0]
          std,2 %dr3, 0x0, %dr1
          addd,3        0x0, [ _f64,_lts2 .LC.41 ], %dr0
          std,5 %dr3, 0x8, %dr25
        }
        {
          call  %ctpr2, wbs = 0x2a
          addd,0,sm     0x0, [ _f64,_lts0 .LC.12 ], %dr4
          addd,1,sm     0x0, [ _f64,_lts2 .LC.13 ], %dr5
        }
        {
          nop 4
          disp  %ctpr1, printf
          addd,0,sm     0x0, [ _f64,_lts0 .LC.41 ], %db[0]
          std,2 %dr3, 0x0, %dr0
        }
        {
          call  %ctpr1, wbs = 0x2a
        }
        {
          nop 4
          disp  %ctpr3, strcmp
          addd,0,sm     0x0, %dr33, %db[0]
          addd,1        0x0, [ _f64,_lts0 .LC.7 ], %db[1]
        }
        {
          call  %ctpr3, wbs = 0x2a
        }
        {
          nop 1
          disp  %ctpr1, printf
          cmpesb,3      %b[0], 0x0, %pred0
        }
        {
          addd,0,sm     0x0, [ _f64,_lts0 .LC.12 ], %db[0] ? %pred0
          addd,1,sm     0x0, [ _f64,_lts2 .LC.13 ], %db[0] ? ~%pred0
          std,2 %dr3, 0x0, %dr4 ? %pred0
          std,5 %dr3, 0x0, %dr5 ? ~%pred0
        }
        {
          call  %ctpr1, wbs = 0x2a ? ~%pred0
        }
        nop
        {
          call  %ctpr1, wbs = 0x2a ? %pred0
        }
        nop
        {
          nop 4
          disp  %ctpr1, printf
        }
        {
          addd,0,sm     0x0, %dr33, %db[1]
          addd,1,sm     0x0, [ _f64,_lts0 .LC.31 ], %db[0]
          std,2 %dr3, 0x0, %dr1
          std,5 %dr3, 0x8, %dr33
        }
        {
          call  %ctpr1, wbs = 0x2a
        }
        {
          nop 4
          disp  %ctpr1, puts
          addd,0        0x0, [ _f64,_lts0 .LC.53.1 ], %db[0]
        }
        {
          call  %ctpr1, wbs = 0x2a
        }
        {
          disp  %ctpr3, .L1958
          ldd,0 0x0, [ _f64,_lts0 User_Time ], %dr1
        }
        {
          nop 3
          disp  %ctpr2, puts
        }
        {
          fcmpltdb,0    %dr1, _f64,_lts0 0x4000000000000000, %pred0
        }
        {
          nop 2
        }
        {
          addd,0,sm     0x0, [ _f64,_lts0 .LC.52.1 ], %db[0] ? %pred0
        }
        {
          ct    %ctpr3 ? ~%pred0
        }
        {
          call  %ctpr2, wbs = 0x2a ? %pred0
        }
        {
          nop 4
          disp  %ctpr1, puts
          addd,0,sm     0x0, [ _f64,_lts0 .LC.51.1 ], %db[0] ? %pred0
        }
        {
          call  %ctpr1, wbs = 0x2a ? %pred0
        }
        {
          nop 4
          disp  %ctpr3, puts
          addd,0,sm     0x0, [ _f64,_lts0 .LC.50.1 ], %db[0] ? %pred0
        }
        {
          call  %ctpr3, wbs = 0x2a ? %pred0
        }
        {
          nop 4
          disp  %ctpr2, puts
          addd,3,sm     0x0, [ _f64,_lts0 .LC.48.1 ], %dr0 ? %pred0
        }
        {
          ct    %ctpr2 ? %pred0
        }
.L1958:
        {
          disp  %ctpr2, printf
          addd,0        0x0, [ _f64,_lts2 .LC.44 ], %dr5
          addd,1,sm     0x0, [ _f64,_lts2 .LC.44 ], %db[0]
          istofd,3      %r31, %dr0
          fmuld,4       %dr1, _f64,_lts0 0x412e848000000000, %dr4
        }
        {
          addd,0        0x0, [ _f64,_lts0 .LC.45 ], %dr6
          addd,1        0x0, [ _f64,_lts2 .LC.46 ], %dr7
        }
        {
          nop 1
          addd,0        0x0, [ _f64,_lts0 .LC.1 ], %dr8
        }
        {
          nop 1
          fdivd,5       %dr4, %dr0, %dr4
        }
        {
          nop 7
          fdivd,5       %dr0, %dr1, %dr0
        }
        {
          nop 3
        }
        {
          nop 1
          fmuld,3       %dr4, _f64,_lts0 0x408f400000000000, %dr1
          std,5 0x0, [ _f64,_lts2 Microseconds ], %dr4
        }
        {
          nop 3
          fmuld,3       %dr0, _f64,_lts0 0x3f42a66488f5f24e, %dr4
          std,5 0x0, [ _f64,_lts2 Dhrystones_Per_Second ], %dr0
        }
        {
          addd,0,sm     0x0, %dr1, %db[1]
          std,5 0x0, [ _f64,_lts0 Vax_Mips ], %dr4
        }
        {
          std,2 %dr3, 0x0, %dr5
          std,5 %dr3, 0x8, %dr1
        }
        {
          call  %ctpr2, wbs = 0x2a
        }
        {
          nop 4
          disp  %ctpr1, printf
          ldd,0 0x0, [ _f64,_lts0 Dhrystones_Per_Second ], %dr0
          addd,1,sm     0x0, [ _f64,_lts2 .LC.45 ], %db[0]
          std,2 %dr3, 0x0, %dr6
        }
        {
          addd,0,sm     0x0, %dr0, %db[1]
          std,2 %dr3, 0x8, %dr0
        }
        {
          call  %ctpr1, wbs = 0x2a
        }
        {
          nop 4
          disp  %ctpr1, printf
          ldd,0 0x0, [ _f64,_lts0 Vax_Mips ], %dr0
          addd,1,sm     0x0, [ _f64,_lts2 .LC.46 ], %db[0]
          std,2 %dr3, 0x0, %dr7
        }
        {
          addd,0,sm     0x0, %dr0, %db[1]
          std,2 %dr3, 0x8, %dr0
        }
        {
          call  %ctpr1, wbs = 0x2a
        }
        {
          nop 4
          disp  %ctpr1, puts
          addd,0        0x0, [ _f64,_lts0 .LC.49.1 ], %db[0]
        }
        {
          call  %ctpr1, wbs = 0x2a
        }
        {
          nop 4
          disp  %ctpr1, time
          addd,0,sm     0x0, 0x0, %db[0]
        }
        {
          call  %ctpr1, wbs = 0x2a
        }
        {
          nop 4
          disp  %ctpr1, localtime
          addd,0        %dr2, _f16s,_lts0lo 0xffb8, %db[0]
          std,5 %dr2, _f16s,_lts0lo 0xffb8, %db[0]
        }
        {
          call  %ctpr1, wbs = 0x2a
        }
        {
          nop 4
          disp  %ctpr1, asctime
        }
        {
          call  %ctpr1, wbs = 0x2a
        }
        {
          disp  %ctpr1, sprintf
          addd,0,sm     0x0, [ _f64,_lts0 .LC.1 ], %db[1]
          addd,1        0x0, [ _f64,_lts2 timeday ], %db[0]
          std,2 %dr3, 0x8, %dr8
          addd,3        0x0, %db[0], %dr0
        }
        {
          nop 3
          std,2 0x10, %dr3, %dr0
          addd,3,sm     0x0, %dr0, %db[2]
        }
        {
          call  %ctpr1, wbs = 0x2a
        }
        {
          nop 4
          disp  %ctpr1, puts
          addd,3        0x0, [ _f64,_lts0 .LC.48.1 ], %dr0
        }
        {
          ct    %ctpr1
        }
.L1732:
        {
          addd,0        0x0, [ _f64,_lts0 .LC.12 ], %dr4
          addd,1,sm     0x0, [ _f64,_lts0 .LC.12 ], %db[0]
        }
        {
          std,2 %dr3, 0x0, %dr4
        }
        {
          call  %ctpr2, wbs = 0x2a
        }
        {
          nop 4
          disp  %ctpr1, .L1753
        }
        {
          ct    %ctpr1
        }
.L1686:
        {
          addd,0        0x0, [ _f64,_lts0 .LC.12 ], %dr6
          addd,1,sm     0x0, [ _f64,_lts0 .LC.12 ], %db[0]
        }
        {
          std,2 %dr3, 0x0, %dr6
        }
        {
          call  %ctpr2, wbs = 0x2a
        }
        {
          nop 4
          disp  %ctpr1, .L1707
        }
        {
          ct    %ctpr1
        }
.L1640:
        {
          addd,0        0x0, [ _f64,_lts0 .LC.12 ], %dr7
          addd,1,sm     0x0, [ _f64,_lts0 .LC.12 ], %db[0]
        }
        {
          std,2 %dr3, 0x0, %dr7
        }
        {
          call  %ctpr2, wbs = 0x2a
        }
        {
          nop 4
          disp  %ctpr1, .L1661
        }
        {
          ct    %ctpr1
        }
.L1439:
        {
          addd,0        0x0, [ _f64,_lts0 .LC.12 ], %dr11
          addd,1,sm     0x0, [ _f64,_lts0 .LC.12 ], %db[0]
        }
        {
          std,2 %dr3, 0x0, %dr11
        }
        {
          call  %ctpr3, wbs = 0x2a
        }
        {
          nop 4
          disp  %ctpr1, .L1460
        }
        {
          ct    %ctpr1
        }
Proc_1(record*):
        {
          setwd wsz = 0x1b, nfx = 0x1, dbl = 0x0
          disp  %ctpr2, .L2586
          addd,1,sm     0x5, 0x0, %dg16
          ldd,2 0x0, [ _f64,_lts2 Ptr_Glob ], %dr21
          addd,3,sm     0x0, [ _f64,_lts2 Ptr_Glob ], %dg17
          adds,4,sm     0x5, 0x0, %g18
          ldd,5 %dr0, 0x0, %dr5
        }
        {
          disp  %ctpr1, .L2492
          ldd,0,sm      0x0, [ _f64,_lts0 Ptr_Glob ], %dr4, mas=0x4
          ldd,3,sm      %dr0, 0x0, %dr3, mas=0x4
        }
        {
          nop 2
          return        %ctpr3
        }
        {
          addd,0        %dr5, _f16s,_lts0hi 0x38, %dg21
          addd,1        %dr0, _f16s,_lts0lo 0x14, %dg19
          ldd,2,sm      0x10, %dr21, %dg22
          ldd,3,sm      0x18, %dr21, %dg23
          addd,4        %dr21, _f16s,_lts0hi 0x38, %dg20
          ldd,5,sm      %dr21, 0x8, %dg24
        }
        {
          cmpledb,0     %dg19, %dr5, %pred15
          cmpledb,1     %dg19, %dr21, %pred16
          ldd,2,sm      %dr21, _f16s,_lts0lo 0x30, %dg19
          ldd,3,sm      %dr21, _f16s,_lts1lo 0x20, %dg26
          cmpledb,4     %dg20, %dr0, %pred17
          ldd,5,sm      %dr21, _f16s,_lts0hi 0x28, %dg25
        }
        {
          cmpledb,0     %dg21, %dr0, %pred18
          cmpledb,1     %dg20, %dr5, %pred17
          cmpledb,3     %dg21, %dr21, %pred19
          addd,4,sm     %dr5, 0x0, %dg20
          pass  %pred16, @p0
          pass  %pred17, @p1
          landp ~@p0, ~@p1, @p4
          pass  @p4, %pred16
        }
        {
          cmpesb,0,sm   0x0, 0x0, %pred18
          addd,1,sm     %dr0, 0x8, %dr40
          addd,2,sm     %dr0, 0x8, %dr41
          addd,3,sm     %dr0, 0x8, %dr42
          addd,4,sm     %dr0, 0x8, %dr43
          addd,5,sm     %dr0, 0xc, %dg21
          pass  %pred15, @p0
          pass  %pred18, @p1
          landp ~@p0, ~@p1, @p4
          pass  @p4, %pred15
          pass  %pred16, @p2
          landp ~@p4, ~@p2, @p5
          pass  @p5, %pred16
        }
        {
          addd,0,sm     %dr0, 0x0, %dr44
          addd,1,sm     %dr0, 0x0, %dr45
          addd,2,sm     %dr0, 0x0, %dr46
          addd,3,sm     %dr0, 0x0, %dr47
          addd,4,sm     %dr0, 0x0, %dr48
          addd,5,sm     %dr0, 0x0, %dr49
          pass  %pred17, @p0
          pass  %pred19, @p1
          landp ~@p0, ~@p1, @p4
          pass  @p4, %pred15
          pass  %pred16, @p2
          landp ~@p4, @p2, @p5
          pass  @p5, %pred0
        }
        {
          addd,0,sm     0x10, %dr5, %dg27
          addd,1,sm     0x10, %dr3, %dg28
          merged,2,sm   0x0, %dg22, %dg22, %pred18
          addd,3,sm     0x18, %dr3, %dg29
          addd,4,sm     %dr3, _f16s,_lts0lo 0x20, %dg30
          addd,5,sm     %dr3, _f16s,_lts0hi 0x28, %dg31
        }
        {
          cmpedb,0,sm   %dr4, 0x0, %pred15
          insfd,1,sm    %dg22, _f16s,_lts0lo 0x800, %dg16, %dg16
          std,2 %dr5, 0x8, %dg24 ? %pred0
          addd,3,sm     %dr3, 0x8, %dg22
          addd,4,sm     0x10, %dr3, %dg24
          std,5 %dr5, _f16s,_lts0hi 0x20, %dg26 ? %pred0
        }
        {
          cmpedb,0,sm   %dg20, %dg17, %pred14
          addd,1,sm     0x18, %dr3, %dg17
          std,2 0x18, %dr5, %dg23 ? %pred0
          addd,3,sm     %dr3, _f16s,_lts0lo 0x20, %dg19
          addd,4,sm     %dr3, _f16s,_lts1lo 0x28, %dg20
          std,5 %dr5, _f16s,_lts0hi 0x30, %dg19 ? %pred0
          pass  %pred0, @p0
          pass  %pred15, @p1
          landp @p0, ~@p1, @p4
          pass  @p4, %pred13
        }
        {
          addd,0,sm     %dr3, _f16s,_lts0hi 0x30, %dg23
          cmpedb,1,sm   %dg27, %dg21, %pred6
          std,2 %dr5, _f16s,_lts0lo 0x28, %dg25 ? %pred0
          cmpedb,3,sm   %dr42, %dg29, %pred4
          cmpedb,4,sm   %dr43, %dg28, %pred5
          std,5 %dr5, 0x0, %dr5 ? %pred0
          pass  %pred13, @p0
          pass  %pred14, @p1
          landp @p0, @p1, @p4
          pass  @p4, %pred1
        }
        {
          ct    %ctpr2 ? ~%pred0
          cmpedb,0,sm   %dr0, %dg22, %pred12
          cmpedb,1,sm   %dr41, %dg30, %pred3
          stw,2 0x10, %dr0, %g18 ? %pred0
          cmpedb,3,sm   %dr0, %dg24, %pred11
          cmpedb,4,sm   %dr40, %dg31, %pred2
          std,5 0x10, %dr5, %dg16 ? %pred0
        }
        {
          cmpedb,0,sm   %dr0, %dg20, %pred8
          cmpedb,1,sm   %dr0, %dg17, %pred10
          ldd,2,sm      0x0, [ _f64,_lts0 Ptr_Glob ], %dr8
          cmpedb,3,sm   %dr0, %dg23, %pred7
          cmpedb,4,sm   %dr0, %dg19, %pred9
          ldd,5,sm      %dr4, 0x0, %dr7
        }
        {
          ldw,0,sm      0x0, [ _f64,_lts0 Int_Glob ], %r6
          addd,1,sm     0x18, %dr0, %dr14
          addd,3,sm     0x10, %dr0, %dr16
          addd,4,sm     0x18, %dr0, %dr15
        }
        {
          addd,1,sm     0x10, %dr0, %dr17
          addd,2,sm     0x10, %dr0, %dr19
          addd,3,sm     %dr0, 0x8, %dr20
          addd,4,sm     0x10, %dr0, %dr18
          addd,5,sm     0x18, %dr3, %dr12
        }
        {
          rbranch       .L3383
          addd,0,sm     %dr3, _f16s,_lts0lo 0x30, %dr9
          addd,1,sm     %dr3, _f16s,_lts0hi 0x20, %dr11
          addd,2,sm     %dr3, _f16s,_lts0lo 0x30, %dr13
          addd,4,sm     %dr3, _f16s,_lts1lo 0x28, %dr10
          ldd,5 0x0, [ _f64,_lts2 Ptr_Glob ], %dr4, mas=0x3 ? %pred0
        }
.L3389:
        {
          ldw,0,sm      %dr5, 0x8, %r2, mas=0x4
          addd,1,sm     %dr3, _f16s,_lts0lo 0x30, %dg16
          addd,2,sm     %dr0, _f16s,_lts0hi 0x20, %dr51
          addd,3,sm     %dr3, _f16s,_lts1lo 0x28, %dg17
          addd,4,sm     %dr0, _f16s,_lts0hi 0x20, %dr52
          addd,5,sm     %dr3, _f16s,_lts0lo 0x30, %dg18
        }
        {
          addd,1,sm     0x18, %dr0, %dr53
          addd,2,sm     %dr3, _f16s,_lts0lo 0x28, %dg19
          addd,3,sm     0x10, %dr5, %dg21
          addd,4,sm     0x0, [ _f64,_lts1 Int_Glob ], %dg22
          addd,5,sm     %dr3, _f16s,_lts0hi 0x20, %dg20
        }
        {
          merged,0,sm   %dr8, %dr7, %dg23, %pred1
          adds,1,sm     %r6, 0xc, %g24
          std,2 %dr5, 0x0, %dr7 ? %pred13
          addd,3,sm     %dr0, _f16s,_lts0hi 0x28, %dr50
          adds,4,sm     0x2, 0x0, %r29
          addd,5,sm     %dr3, _f16s,_lts0lo 0x30, %dg25
        }
        {
          adds,1,sm     0x1, 0x0, %r30
          stw,2 0x10, %dg23, %g24 ? %pred0
          adds,4,sm     0x6, 0x0, %r35
          ldd,5,sm      %dr3, 0x8, %dr26
        }
        {
          ldd,0,sm      0x10, %dr3, %dr25
          ldd,2,sm      0x18, %dr3, %dr24
          ldd,3,sm      %dr3, _f16s,_lts0lo 0x20, %dr23
        }
        {
          cmpedb,0,sm   %dr16, %dr9, %pred13
          cmpedb,1,sm   %dr17, %dr10, %pred14
          cmpedb,3,sm   %dr18, %dr11, %pred15
          cmpedb,4,sm   %dr19, %dr12, %pred16
          addd,5,sm     %dr5, 0xc, %dr9
        }
        {
          cmpedb,0,sm   %dr20, %dr13, %pred17
          cmpedb,1,sm   %dr51, %dg16, %pred18
          addd,2,sm     0x0, [ _f64,_lts0 Int_Glob ], %dr10
          cmpedb,3,sm   %dr52, %dg17, %pred24
          cmpedb,4,sm   %dr14, %dg19, %pred25
        }
        {
          cmpedb,0,sm   %dr15, %dg20, %pred13
          merges,1,sm   0x0, 0x1, %r34, %pred13
          merges,2,sm   0x0, 0x1, %r36, %pred14
          cmpedb,3,sm   %dr53, %dg18, %pred14
          merges,4,sm   0x0, 0x1, %r38, %pred16
          merges,5,sm   0x0, 0x1, %r37, %pred15
        }
        {
          cmpesb,0,sm   %r2, 0x0, %pred23
          merges,1,sm   0x0, 0x1, %r39, %pred17
          merges,2,sm   0x0, 0x1, %r27, %pred18
          cmpedb,3,sm   %dg21, %dg22, %pred19
          merges,4,sm   0x0, 0x1, %r32, %pred25
          merges,5,sm   0x0, 0x1, %r28, %pred24
        }
        {
          merges,1,sm   0x0, 0x1, %r33, %pred13
          merges,2,sm   0x0, 0x1, %r31, %pred14
          cmpedb,4,sm   %dr50, %dg25, %pred22
          pass  %pred0, @p0
          pass  %pred23, @p1
          landp @p0, ~@p1, @p4
          pass  @p4, %pred1
          pass  %pred7, @p2
          landp @p4, @p2, @p5
          pass  @p5, %pred21
          pass  %pred8, @p3
          landp @p4, @p3, @p6
          pass  @p6, %pred20
        }
        {
          rbranch       .L3392
          ldw,2 %dr5, 0x8, %r2, mas=0x3 ? %pred0
        }
.L3398:
        {
          ldw,0,sm      %dr0, 0xc, %r7
          adds,1,sm     0x0, 0x0, %r2
          ldw,2,sm      0x0, [ _f64,_lts1 Int_Glob ], %r4
          ldd,3,sm      %dr3, 0x0, %dr8
          adds,4,sm     0x3, 0x0, %r6
          ldd,5,sm      %dr3, _f16s,_lts0lo 0x30, %dr21
        }
        {
          ldd,0,sm      %dr3, _f16s,_lts0lo 0x28, %dr22
          cmpedb,1,sm   %dr9, %dr10, %pred15
          pass  %pred0, @p0
          pass  %pred23, @p1
          landp @p0, @p1, @p4
          pass  @p4, %pred13
          pass  %pred1, @p2
          pass  %pred9, @p3
          landp @p2, @p3, @p5
          pass  @p5, %pred14
        }
        {
          pass  %pred1, @p0
          pass  %pred12, @p1
          landp @p0, @p1, @p4
          pass  @p4, %pred18
          pass  %pred11, @p2
          landp @p0, @p2, @p5
          pass  @p5, %pred17
          pass  %pred10, @p3
          landp @p0, @p3, @p6
          pass  @p6, %pred16
        }
        {
          rbranch       .L3401
          ldd,5 %dr0, 0x0, %dr3, mas=0x3 ? %pred1
        }
.L3458:
        {
          cmpesb,0,sm   0x1, %r39, %pred0
          stw,2 0x10, %dr5, %r35 ? %pred13
          pass  %pred13, @p0
          pass  %pred6, @p1
          landp @p0, @p1, @p4
          pass  @p4, %pred6
          pass  %pred19, @p2
          landp @p0, @p2, @p5
          pass  @p5, %pred7
          pass  %pred15, @p3
          landp @p0, @p3, @p6
          pass  @p6, %pred8
        }
        {
          cmpesb,0,sm   0x1, %r38, %pred9
          cmpesb,1,sm   0x1, %r37, %pred10
          cmpesb,3,sm   0x1, %r36, %pred11
          cmpesb,4,sm   0x1, %r34, %pred12
          merged,5,sm   %dr23, %dr8, %dg16, %pred14
          pass  %pred1, @p0
          pass  %pred0, @p1
          landp @p0, @p1, @p4
          pass  @p4, %pred0
          pass  %pred4, @p2
          landp @p0, @p2, @p5
          pass  @p5, %pred4
          pass  %pred3, @p3
          landp @p0, @p3, @p6
          pass  @p6, %pred3
        }
        {
          cmpesb,0,sm   0x1, %r33, %pred14
          cmpesb,1,sm   0x1, %r32, %pred15
          merged,2,sm   %dr26, %dr8, %dg17, %pred18
          cmpesb,3,sm   0x1, %r31, %pred19
          merged,4,sm   %dr24, %dr8, %dg18, %pred16
          merged,5,sm   %dr25, %dr8, %dg19, %pred17
          pass  %pred1, @p0
          pass  %pred5, @p1
          landp @p0, @p1, @p4
          pass  @p4, %pred5
          pass  %pred2, @p2
          landp @p0, @p2, @p5
          pass  @p5, %pred2
          pass  %pred9, @p3
          landp @p0, @p3, @p6
          pass  @p6, %pred9
        }
        {
          cmpesb,0,sm   0x1, %r28, %pred16
          cmpesb,1,sm   0x1, %r27, %pred17
          merges,2,sm   %r7, %r35, %g22, %pred6
          merged,3,sm   %dr21, %dr8, %dg20, %pred21
          merged,4,sm   %dr22, %dr8, %dg21, %pred20
          std,5 %dr0, 0x0, %dr8 ? %pred1
          pass  %pred1, @p0
          pass  %pred12, @p1
          landp @p0, @p1, @p4
          pass  @p4, %pred12
          pass  %pred11, @p2
          landp @p0, @p2, @p5
          pass  @p5, %pred11
          pass  %pred10, @p3
          landp @p0, @p3, @p6
          pass  @p6, %pred10
        }
        {
          cmpesb,0,sm   %g22, 0x0, %pred18
          cmpesb,1,sm   %g22, 0x2, %pred19
          merged,2,sm   %dg16, %dg17, %dg16, %pred3
          merged,3,sm   %dg18, %dg17, %dg18, %pred4
          merged,4,sm   %dg20, %dg17, %dg20, %pred0
          merged,5,sm   %dg19, %dg17, %dg19, %pred5
          pass  %pred1, @p0
          pass  %pred19, @p1
          landp @p0, @p1, @p4
          pass  @p4, %pred6
          pass  %pred15, @p2
          landp @p0, @p2, @p5
          pass  @p5, %pred15
          pass  %pred14, @p3
          landp @p0, @p3, @p6
          pass  @p6, %pred14
        }
        {
          cmpesb,0,sm   %g22, 0x1, %pred0
          cmpesb,1,sm   %g22, 0x3, %pred5
          merged,2,sm   %dg21, %dg17, %dg21, %pred2
          merged,3,sm   %dg18, %dg19, %dg18, %pred9
          merged,4,sm   %dg20, %dg19, %dg20, %pred12
          std,5 %dr0, 0x8, %dg17 ? %pred1
          pass  %pred13, @p0
          pass  %pred18, @p1
          landp @p0, @p1, @p4
          pass  @p4, %pred2
          pass  %pred1, @p2
          pass  %pred17, @p3
          landp @p2, @p3, @p5
          pass  @p5, %pred3
          landp @p0, ~@p1, @p6
          pass  @p6, %pred4
        }
        {
          merged,0,sm   %dg16, %dg19, %dg16, %pred10
          merged,1,sm   %dg21, %dg19, %dg17, %pred11
          std,2 0x10, %dr0, %dg19 ? %pred1
          merges,3,sm   %g22, 0x3, %g21, ~%pred19
          merged,4,sm   %dg20, %dg18, %dg20, %pred6
          std,5 0x18, %dr0, %dg18 ? %pred1
          pass  %pred1, @p0
          pass  %pred16, @p1
          landp @p0, @p1, @p4
          pass  @p4, %pred9
          pass  %pred4, @p2
          pass  %pred0, @p3
          landp @p2, ~@p3, @p5
          pass  @p5, %pred10
        }
        {
          merged,0,sm   %dg17, %dg18, %dg17, %pred15
          cmpesb,1,sm   %g22, 0x4, %pred12
          merged,2,sm   %dg16, %dg18, %dg16, %pred14
          merges,3,sm   %r4, %r35, %g19, %pred7
          merges,5,sm   %g21, 0x0, %g18, %pred2
          pass  %pred1, @p0
          pass  %pred22, @p1
          landp @p0, @p1, @p4
          pass  @p4, %pred6
          pass  %pred10, @p2
          pass  %pred19, @p3
          landp @p2, ~@p3, @p5
          pass  @p5, %pred11
          landp @p2, @p3, @p6
          pass  @p6, %pred10
        }
        {
          ct    %ctpr1 ? %pred2
          merged,0,sm   %dg20, %dg16, %dg20, %pred3
          merged,1,sm   %dg17, %dg16, %dg17, %pred9
          stw,2 %dr5, 0xc, %g18 ? %pred13
          merges,3,sm   %g19, %g18, %g16, %pred8
          std,5 %dr0, _f16s,_lts0lo 0x20, %dg16 ? %pred1
          pass  %pred11, @p0
          pass  %pred5, @p1
          landp @p0, @p1, @p4
          pass  @p4, %pred7
          landp @p0, ~@p1, @p5
          pass  @p5, %pred3
          pass  %pred12, @p2
          landp @p5, @p2, @p6
          pass  @p6, %pred5
        }
        {
          merged,0,sm   %dg20, %dg17, %dg18, %pred6
          std,2 %dr0, _f16s,_lts0lo 0x28, %dg17 ? %pred1
          cmplesb,3,sm  %g16, _f16s,_lts0hi 0x64, %pred2
          stw,5 %dr5, 0xc, %r30 ? %pred10
          pass  %pred4, @p0
          pass  %pred0, @p1
          landp @p0, @p1, @p4
          pass  @p4, %pred0
        }
        {
          ct    %ctpr3 ? %pred1
          std,2 %dr0, _f16s,_lts0lo 0x30, %dg18 ? %pred1
          stw,5 %dr5, 0xc, %r29 ? %pred5
          pass  %pred0, @p0
          pass  %pred2, @p1
          landp @p0, ~@p1, @p4
          pass  @p4, %pred1
          landp @p0, @p1, @p5
          pass  @p5, %pred0
        }
        {
          ct    %ctpr1 ? %pred10
        }
        {
          ct    %ctpr1 ? %pred7
          stw,2 %dr5, 0xc, %r2 ? %pred1
          stw,5 %dr5, 0xc, %r6 ? %pred0
        }
        nop
.L2492:
        {
          nop 4
          return        %ctpr3
          ldd,0 0x0, [ _f64,_lts0 Ptr_Glob ], %dg16
          adds,1        0x12, 0x0, %g17
        }
        {
          nop 4
          ldd,0 %dg16, 0x0, %dg16
          stw,2 0x10, %dr5, %g17
        }
        {
          ct    %ctpr3
          std,2 %dr5, 0x0, %dg16
        }
.L2586:
        {
          return        %ctpr3
          ldd,0 %dr21, 0x0, %dg16
          addd,1        %dr21, 0x8, %dg18
          ldd,2,sm      %dr21, 0x8, %dg17
          ldd,3,sm      0x10, %dr21, %dg20, mas=0x4
          addd,4        %dr5, 0x0, %dg19
          addd,5        0x10, %dr21, %dg21
        }
        {
          disp  %ctpr2, .L2492
          ldd,0,sm      0x18, %dr21, %dg22, mas=0x4
          addd,1        %dr5, 0x8, %dg23
          ldd,3,sm      %dr0, 0x0, %dr3, mas=0x4
          addd,4        0x18, %dr21, %dg24
          addd,5        0x10, %dr5, %dg25
        }
        {
          ldd,0,sm      0x0, [ _f64,_lts1 Ptr_Glob ], %dr6, mas=0x4
          addd,1        %dr21, _f16s,_lts0lo 0x28, %dg26
          addd,2        %dr5, _f16s,_lts0hi 0x20, %dg27
          ldd,3,sm      0x0, [ _f64,_lts1 Ptr_Glob ], %dr2, mas=0x4
          addd,4        %dr21, _f16s,_lts0hi 0x20, %dg28
          addd,5        0x18, %dr5, %dg29
        }
        {
          addd,1,sm     0x18, %dr5, %dg31
          addd,2,sm     %dr21, _f16s,_lts0lo 0x28, %dg30
          addd,4,sm     0x10, %dr5, %dr8
          addd,5,sm     %dr21, _f16s,_lts0hi 0x20, %dr7
        }
        {
          cmpedb,0,sm   %dg19, %dg18, %pred7
          addd,1        %dr21, _f16s,_lts0lo 0x30, %dg18
          addd,2        %dr5, _f16s,_lts0hi 0x28, %dg19
          addd,3,sm     %dr21, _f16s,_lts0lo 0x30, %dr9
          addd,4,sm     %dr5, _f16s,_lts1lo 0x20, %dr10
          addd,5,sm     %dr21, _f16s,_lts0lo 0x30, %dr11
        }
        {
          addd,0,sm     %dr21, _f16s,_lts0lo 0x28, %dr34
          addd,1,sm     0x10, %dr5, %dr35
          std,2 %dr5, 0x0, %dg16
          addd,3,sm     %dr21, _f16s,_lts0hi 0x30, %dr36
          addd,4,sm     0x10, %dr5, %dr37
          addd,5,sm     0x18, %dr5, %dr33
        }
        {
          merged,0,sm   %dg17, %dg16, %dg16, %pred7
          addd,1        0x0, [ _f64,_lts0 Ptr_Glob ], %dg17
          ldd,2 0x10, %dr21, %dg20, mas=0x3
          addd,3        %dr5, 0x0, %dr38
          addd,4,sm     0x0, [ _f64,_lts2 Int_Glob ], %dr39
          addd,5,sm     %dr5, 0xc, %dr40
        }
        {
          addd,0,sm     %dr0, 0xc, %dr42
          addd,1,sm     0x10, %dr5, %dr43
          std,2 %dr5, 0x8, %dg16
          adds,3        0x5, 0x0, %r44
          addd,4,sm     %dr0, _f16s,_lts0lo 0x20, %dr12
          ldd,5,sm      %dr21, _f16s,_lts0lo 0x20, %dr41
        }
        {
          ldd,0,sm      %dr21, _f16s,_lts0lo 0x30, %dg23
          cmpedb,1,sm   %dg23, %dg21, %pred7
          ldd,2,sm      %dr21, _f16s,_lts0hi 0x28, %dg21
          ldw,3,sm      %dr5, 0x8, %r4, mas=0x4
          addd,4,sm     %dr0, _f16s,_lts1lo 0x18, %dr15
          ldd,5 0x18, %dr21, %dg22, mas=0x3
        }
        {
          cmpedb,0,sm   %dg25, %dg24, %pred8
          addd,1,sm     %dr0, _f16s,_lts0lo 0x18, %dr14
          addd,4,sm     %dr0, _f16s,_lts0lo 0x18, %dr13
        }
        {
          cmpedb,0,sm   %dg27, %dg26, %pred9
          cmpedb,1,sm   %dg29, %dg28, %pred10
          merged,2,sm   %dg20, %dg16, %dg16, %pred7
          cmpedb,3,sm   %dg31, %dg30, %pred11
          cmpedb,4,sm   %dr8, %dr7, %pred12
          addd,5,sm     %dr0, _f16s,_lts0lo 0x10, %dr19
        }
        {
          cmpedb,0,sm   %dg19, %dg18, %pred13
          cmpedb,1,sm   %dr10, %dr9, %pred14
          merged,2,sm   %dg22, %dg16, %dg18, %pred8
          cmpedb,3,sm   %dr33, %dr11, %pred15
          cmpedb,4,sm   %dr35, %dr34, %pred16
          std,5 0x10, %dr5, %dg16
          pass  %pred9, @p0
          pass  %pred11, @p1
          landp ~@p0, ~@p1, @p4
          pass  @p4, %pred7
          landp ~@p0, @p1, @p5
          pass  @p5, %pred11
        }
        {
          cmpedb,0,sm   %dr37, %dr36, %pred18
          merged,1,sm   %dg16, %dr41, %dg19, ~%pred12 ? ~%pred10
          addd,2,sm     0x0, %dg18, %dg19 ? %pred10
          addd,3,sm     %dr0, _f16s,_lts0lo 0x10, %dr17
          addd,4,sm     %dr0, _f16s,_lts0lo 0x10, %dr18
          std,5 0x18, %dr5, %dg18
          pass  %pred13, @p0
          pass  %pred14, @p1
          landp ~@p0, ~@p1, @p4
          pass  @p4, %pred8
          pass  %pred15, @p2
          landp @p4, @p2, @p5
          pass  @p5, %pred17
          landp @p4, ~@p2, @p6
          pass  @p6, %pred15
        }
        {
          cmpedb,0,sm   %dr38, %dg17, %pred6
          addd,1,sm     %dr0, _f16s,_lts0lo 0x10, %dr16
          addd,2,sm     0x0, %dg18, %dg17 ? %pred11
          addd,3,sm     %dr0, 0x8, %dr23
          addd,4,sm     %dr0, 0x8, %dr24
          merged,5,sm   %dg16, %dg21, %dg17, ~%pred16 ? %pred7
          pass  %pred13, @p0
          pass  %pred14, @p1
          landp ~@p0, @p1, @p4
          pass  @p4, %pred8
        }
        {
          addd,0,sm     %dr0, 0x0, %dr30
          addd,1,sm     %dr0, 0x8, %dr22
          addd,2,sm     0x0, %dg19, %dg17 ? %pred9
          addd,3,sm     %dr0, 0x0, %dr29
          addd,4,sm     %dr0, 0x8, %dr20
          std,5 %dr5, _f16s,_lts0lo 0x20, %dg19
        }
        {
          cmpedb,0,sm   %dr40, %dr39, %pred4
          cmpedb,1,sm   %dr43, %dr42, %pred5
          addd,2,sm     0x0, %dg18, %dg19 ? %pred17
          cmpesb,3,sm   %r4, 0x0, %pred2
          merged,4,sm   %dr6, %dr3, %dr32, %pred6
          merged,5,sm   %dg16, %dg23, %dg19, ~%pred18 ? %pred15
        }
        {
          addd,0,sm     0x0, %dg17, %dg19 ? %pred13
          addd,1,sm     %dr0, 0x0, %dr28
          std,2 %dr5, _f16s,_lts0lo 0x28, %dg17
          addd,3,sm     %dr0, 0x0, %dr27
          cmpedb,4,sm   %dr32, 0x0, %pred3
          addd,5,sm     %dr0, 0x0, %dr26
          pass  %pred2, @p0
          pass  %pred4, @p1
          landp @p0, @p1, @p4
          pass  @p4, %pred0
          pass  %pred5, @p2
          landp @p0, @p2, @p5
          pass  @p5, %pred1
        }
        {
          addd,0,sm     %dr0, 0x8, %dr21
          addd,1,sm     %dr0, 0x0, %dr25
          std,2 %dr5, _f16s,_lts0lo 0x30, %dg19
          adds,4,sm     0x6, 0x0, %r31
          stw,5 %dr0, _f16s,_lts0hi 0x10, %r44
        }
        {
          stw,2 0x10, %dr5, %r44
        }
        {
          rbranch       .L3465
          ldd,5 0x0, [ _f64,_lts0 Ptr_Glob ], %dr6, mas=0x3
        }
.L3469:
        {
          rbranch       .L3472
          addd,0,sm     %dr0, _f16s,_lts0lo 0x28, %dr9
          adds,1,sm     0x3, 0x0, %r7
          adds,2,sm     0x1, 0x0, %r10
          addd,3,sm     %dr0, _f16s,_lts0hi 0x20, %dr11
          adds,4,sm     0x2, 0x0, %r8
          ldd,5 %dr0, 0x0, %dr3, mas=0x3
        }
.L3476:
        {
          adds,1,sm     0x0, 0x0, %r6
          std,2 %dr5, 0x0, %dr3
          ldd,5,sm      %dr32, 0x0, %dg16
        }
        {
          nop 3
          ldw,0 0x0, [ _f64,_lts0 Int_Glob ], %g17
        }
        {
          std,2 %dr5, 0x0, %dg16 ? ~%pred3
        }
        {
          adds,0        %g17, 0xc, %g16
          ldd,2 0x0, [ _f64,_lts0 Ptr_Glob ], %dr2, mas=0x3
        }
        {
          stw,2 0x10, %dr2, %g16
          ldd,5,sm      %dr0, 0x0, %dr3
        }
        {
          rbranch       .L3481
          ldw,0,sm      %dr0, 0xc, %r2
          ldw,2 %dr5, 0x8, %r4, mas=0x3
        }
.L3486:
        {
          ldd,0,sm      %dr3, 0x0, %dg16
          addd,1,sm     %dr3, _f16s,_lts0lo 0x30, %dg18
          stw,2 0x10, %dr5, %r31 ? %pred2
          addd,3,sm     %dr3, _f16s,_lts0hi 0x28, %dg19
          addd,4,sm     %dr3, _f16s,_lts1lo 0x20, %dg20
          ldd,5,sm      %dr3, _f16s,_lts0lo 0x30, %dg17
        }
        {
          ldd,0,sm      %dr3, _f16s,_lts0lo 0x28, %dg21
          addd,1,sm     0x18, %dr3, %dg25
          ldd,2,sm      %dr3, _f16s,_lts0hi 0x20, %dg22
          ldd,3,sm      0x18, %dr3, %dg23
          addd,4,sm     0x10, %dr3, %dg26
          ldd,5,sm      0x10, %dr3, %dg24
        }
        {
          cmpedb,0,sm   %dr25, %dg18, %pred3
          addd,1,sm     %dr3, 0x8, %dg29
          ldd,2,sm      %dr3, 0x8, %dg27
          cmpedb,3,sm   %dr26, %dg19, %pred4
          cmpedb,4,sm   %dr27, %dg20, %pred5
          ldw,5,sm      0x0, [ _f64,_lts0 Int_Glob ], %g28
        }
        {
          cmpedb,0,sm   %dr28, %dg25, %pred6
          cmpedb,1,sm   %dr29, %dg26, %pred7
          addd,3,sm     %dr3, _f16s,_lts0lo 0x30, %dg18
          addd,4,sm     %dr3, _f16s,_lts0hi 0x28, %dg19
          pass  %pred2, @p0
          pass  %pred3, @p1
          landp ~@p0, @p1, @p4
          pass  @p4, %pred3
          pass  %pred4, @p2
          landp ~@p0, @p2, @p5
          pass  @p5, %pred4
          pass  %pred5, @p3
          landp ~@p0, @p3, @p6
          pass  @p6, %pred5
        }
        {
          cmpedb,0,sm   %dr30, %dg29, %pred1
          addd,1,sm     0x18, %dr3, %dg26
          merges,2,sm   %r2, %r31, %g20, %pred1
          addd,3,sm     0x10, %dr3, %dg29
          cmpedb,4,sm   %dr20, %dg18, %pred8
          addd,5,sm     %dr3, _f16s,_lts0lo 0x20, %dg25
          pass  %pred2, @p0
          pass  %pred6, @p1
          landp ~@p0, @p1, @p4
          pass  @p4, %pred6
          pass  %pred7, @p2
          landp ~@p0, @p2, @p5
          pass  @p5, %pred7
        }
        {
          cmpesb,0,sm   %g20, 0x1, %pred9
          cmpesb,1,sm   %g20, 0x0, %pred10
          addd,2,sm     %dr3, _f16s,_lts0lo 0x30, %dg18
          cmpedb,3,sm   %dr21, %dg19, %pred11
          cmpedb,4,sm   %dr22, %dg25, %pred12
          addd,5,sm     %dr3, _f16s,_lts0hi 0x28, %dg19
          pass  %pred2, @p0
          pass  %pred1, @p1
          landp ~@p0, @p1, @p4
          pass  @p4, %pred1
          pass  %pred8, @p2
          landp ~@p0, @p2, @p5
          pass  @p5, %pred8
        }
        {
          cmpesb,0,sm   %g20, 0x2, %pred13
          cmpesb,1,sm   %g20, 0x3, %pred16
          addd,2,sm     %dr3, _f16s,_lts0lo 0x20, %dg25
          cmpesb,3,sm   %g20, 0x4, %pred17
          cmpedb,4,sm   %dr23, %dg26, %pred18
          addd,5,sm     0x18, %dr3, %dg26
          pass  %pred2, @p0
          pass  %pred10, @p1
          landp @p0, ~@p1, @p4
          pass  @p4, %pred14
          pass  %pred9, @p2
          landp @p4, ~@p2, @p5
          pass  @p5, %pred15
          landp @p0, @p1, @p6
          pass  @p6, %pred10
        }
        {
          cmpedb,0,sm   %dr24, %dg29, %pred21
          cmpedb,1,sm   %dr16, %dg18, %pred22
          addd,2,sm     %dr3, _f16s,_lts0lo 0x30, %dg18
          cmpedb,3,sm   %dr17, %dg19, %pred23
          cmpedb,4,sm   %dr19, %dg26, %pred24
          addd,5,sm     %dr3, _f16s,_lts0hi 0x28, %dg19
          pass  %pred15, @p0
          pass  %pred13, @p1
          landp @p0, ~@p1, @p4
          pass  @p4, %pred19
          pass  %pred16, @p2
          landp @p4, @p2, @p5
          pass  @p5, %pred20
          landp @p4, ~@p2, @p6
          pass  @p6, %pred16
        }
        {
          cmpedb,0,sm   %dr18, %dg25, %pred17
          cmpedb,1,sm   %dr13, %dg18, %pred19
          merges,2,sm   %g20, 0x3, %g20, ~%pred13
          cmpedb,3,sm   %dr14, %dg19, %pred25
          addd,4,sm     %dr3, _f16s,_lts0hi 0x30, %dg18
          addd,5,sm     %dr3, _f16s,_lts0lo 0x20, %dg25
          pass  %pred15, @p0
          pass  %pred13, @p1
          landp @p0, @p1, @p4
          pass  @p4, %pred15
          pass  %pred16, @p2
          pass  %pred17, @p3
          landp @p2, ~@p3, @p5
          pass  @p5, %pred13
          landp @p2, @p3, @p6
          pass  @p6, %pred16
        }
        {
          addd,0,sm     %dr3, _f16s,_lts0lo 0x28, %dg20
          merged,1,sm   %dg17, %dg16, %dg17, %pred3
          merges,2,sm   %g20, 0x0, %g19, %pred10
          cmpedb,3,sm   %dr15, %dg25, %pred26
          merged,4,sm   %dg21, %dg16, %dg21, %pred4
          merged,5,sm   %dg22, %dg16, %dg22, %pred5
          pass  %pred2, @p0
          pass  %pred18, @p1
          landp ~@p0, @p1, @p4
          pass  @p4, %pred18
          pass  %pred12, @p2
          landp ~@p0, @p2, @p5
          pass  @p5, %pred12
          pass  %pred11, @p3
          landp ~@p0, @p3, @p6
          pass  @p6, %pred11
        }
        {
          ct    %ctpr2 ? %pred10
          merged,0,sm   %dg23, %dg16, %dg23, %pred6
          merged,1,sm   %dg24, %dg16, %dg24, %pred7
          stw,2 %dr5, 0xc, %g19 ? %pred2
          cmpedb,3,sm   %dr11, %dg18, %pred1
          addd,4,sm     %dr3, _f16s,_lts0lo 0x30, %dg18
          merged,5,sm   %dg27, %dg16, %dg25, %pred1
          pass  %pred16, @p0
          pass  %pred13, @p1
          landp ~@p0, ~@p1, @p4
          pass  @p4, %pred3
          pass  %pred2, @p2
          pass  %pred21, @p3
          landp ~@p2, @p3, @p5
          pass  @p5, %pred4
        }
        {
          ct    %ctpr2 ? %pred20
          merges,0,sm   %g28, %g19, %g19, %pred0
          cmpedb,1,sm   %dr12, %dg20, %pred0
          stw,2 %dr5, 0xc, %r10 ? %pred15
          merged,3,sm   %dg22, %dg25, %dg20, %pred12
          merged,4,sm   %dg21, %dg25, %dg21, %pred11
          merged,5,sm   %dg17, %dg25, %dg17, %pred8
          pass  %pred2, @p0
          pass  %pred22, @p1
          landp ~@p0, @p1, @p4
          pass  @p4, %pred5
          pass  %pred23, @p2
          landp ~@p0, @p2, @p5
          pass  @p5, %pred6
          pass  %pred24, @p3
          landp ~@p0, @p3, @p6
          pass  @p6, %pred7
        }
        {
          ct    %ctpr2 ? %pred15
          cmplesb,0,sm  %g19, _f16s,_lts0lo 0x64, %pred12
          merged,1,sm   %dg24, %dg25, %dg19, %pred4
          merged,2,sm   %dg23, %dg25, %dg22, %pred18
          cmpedb,3,sm   %dr9, %dg18, %pred4
          stw,5 %dr5, 0xc, %r8 ? %pred16
          pass  %pred2, @p0
          pass  %pred17, @p1
          landp ~@p0, @p1, @p4
          pass  @p4, %pred8
          pass  %pred19, @p2
          landp ~@p0, @p2, @p5
          pass  @p5, %pred10
          pass  %pred25, @p3
          landp ~@p0, @p3, @p6
          pass  @p6, %pred11
        }
        {
          ct    %ctpr2 ? ~%pred3
          merged,0,sm   %dg22, %dg19, %dg18, %pred7
          merged,1,sm   %dg21, %dg19, %dg21, %pred6
          merged,2,sm   %dg17, %dg19, %dg17, %pred5
          std,5 %dr0, 0x0, %dg16 ? ~%pred2
          pass  %pred2, @p0
          pass  %pred26, @p1
          landp ~@p0, @p1, @p4
          pass  @p4, %pred13
          pass  %pred1, @p2
          landp ~@p0, @p2, @p5
          pass  @p5, %pred1
          pass  %pred0, @p3
          landp ~@p0, @p3, @p6
          pass  @p6, %pred0
        }
        {
          merged,0,sm   %dg20, %dg19, %dg16, %pred8
          merged,1,sm   %dg21, %dg18, %dg20, %pred11
          merged,2,sm   %dg17, %dg18, %dg17, %pred10
          std,5 %dr0, 0x8, %dg25 ? ~%pred2
          pass  %pred14, @p0
          pass  %pred9, @p1
          landp @p0, @p1, @p4
          pass  @p4, %pred3
          pass  %pred12, @p2
          landp @p4, @p2, @p5
          pass  @p5, %pred5
          landp @p4, ~@p2, @p6
          pass  @p6, %pred6
        }
        {
          merged,0,sm   %dg16, %dg18, %dg16, %pred13
          std,2 %dr0, _f16s,_lts0lo 0x10, %dg19 ? ~%pred2
          std,5 %dr0, _f16s,_lts0hi 0x18, %dg18 ? ~%pred2
          pass  %pred2, @p0
          pass  %pred4, @p1
          landp ~@p0, @p1, @p4
          pass  @p4, %pred3
        }
        {
          merged,0,sm   %dg20, %dg16, %dg18, %pred0
          merged,1,sm   %dg17, %dg16, %dg17, %pred1
          stw,2 %dr5, 0xc, %r7 ? %pred5
          stw,5 %dr5, 0xc, %r6 ? %pred6
        }
        {
          ct    %ctpr2 ? %pred5
          merged,0,sm   %dg17, %dg18, %dg17, %pred3
          std,2 %dr0, _f16s,_lts0lo 0x20, %dg16 ? ~%pred2
          std,5 %dr0, _f16s,_lts0hi 0x28, %dg18 ? ~%pred2
        }
        {
          ct    %ctpr2 ? %pred6
          std,2 %dr0, _f16s,_lts0lo 0x30, %dg17 ? ~%pred2
        }
        {
          ct    %ctpr3 ? ~%pred2
        }
.L3383:
        {
          ldd,0,sm      %dr4, 0x0, %dr7
          cmpedb,1,sm   %dr4, 0x0, %pred15
        }
        {
          pass  %pred0, @p0
          pass  %pred15, @p1
          landp @p0, ~@p1, @p4
          pass  @p4, %pred13
          pass  %pred14, @p2
          landp @p4, @p2, @p5
          pass  @p5, %pred1
        }
        {
          ibranch       .L3389
        }
.L3392:
        {
          cmpesb,0,sm   %r2, 0x0, %pred23
        }
        {
          ibranch       .L3398
          pass  %pred0, @p0
          pass  %pred23, @p1
          landp @p0, ~@p1, @p4
          pass  @p4, %pred1
          pass  %pred7, @p2
          landp @p4, @p2, @p5
          pass  @p5, %pred21
          pass  %pred8, @p3
          landp @p4, @p3, @p6
          pass  @p6, %pred20
        }
.L3401:
        {
          addd,0,sm     %dr3, _f16s,_lts0lo 0x20, %dr11
          addd,1,sm     %dr3, _f16s,_lts0hi 0x28, %dr10
          addd,2,sm     %dr3, _f16s,_lts1lo 0x30, %dr9
          addd,3,sm     %dr3, _f16s,_lts1lo 0x30, %dr13
          addd,4,sm     %dr3, _f16s,_lts0hi 0x28, %dg16
          addd,5,sm     %dr3, _f16s,_lts1lo 0x30, %dg17
        }
        {
          cmpedb,0,sm   %dr18, %dr11, %pred0
          cmpedb,1,sm   %dr17, %dr10, %pred23
          addd,2,sm     0x18, %dr3, %dr12
          cmpedb,3,sm   %dr20, %dr13, %pred24
          addd,4,sm     %dr3, _f16s,_lts0lo 0x28, %dg18
          addd,5,sm     %dr3, _f16s,_lts0hi 0x30, %dg19
        }
        {
          cmpedb,0,sm   %dr16, %dr9, %pred25
          cmpedb,1,sm   %dr14, %dg16, %pred26
          addd,2,sm     %dr3, _f16s,_lts0lo 0x20, %dg16
          cmpedb,3,sm   %dr53, %dg17, %pred27
          addd,4,sm     %dr3, _f16s,_lts0lo 0x20, %dg17
          addd,5,sm     %dr3, _f16s,_lts0hi 0x28, %dg20
        }
        {
          merges,0,sm   0x0, 0x1, %r39, %pred24
          cmpedb,1,sm   %dr19, %dr12, %pred0
          merges,2,sm   0x0, 0x1, %r37, %pred0
          cmpedb,3,sm   %dr52, %dg18, %pred23
          cmpedb,4,sm   %dr51, %dg19, %pred24
          merges,5,sm   0x0, 0x1, %r36, %pred23
        }
        {
          merges,0,sm   0x0, 0x1, %r31, %pred27
          cmpedb,1,sm   %dr15, %dg16, %pred25
          merges,2,sm   0x0, 0x1, %r34, %pred25
          addd,3,sm     %dr3, _f16s,_lts0lo 0x30, %dg16
          addd,4,sm     %dr3, 0x8, %dg18
          merges,5,sm   0x0, 0x1, %r32, %pred26
        }
        {
          merges,0,sm   0x0, 0x1, %r27, %pred24
          cmpedb,1,sm   %dr46, %dg17, %pred9
          merges,2,sm   0x0, 0x1, %r38, %pred0
          cmpedb,3,sm   %dr45, %dg20, %pred8
          cmpedb,4,sm   %dr44, %dg16, %pred7
          merges,5,sm   0x0, 0x1, %r28, %pred23
        }
        {
          addd,0,sm     0x18, %dr3, %dg17
          cmpedb,1,sm   %dr49, %dg18, %pred12
          merges,2,sm   0x0, 0x1, %r33, %pred25
          addd,3,sm     0x18, %dr3, %dg18
          addd,4,sm     %dr3, _f16s,_lts0lo 0x20, %dg19
          addd,5,sm     0x10, %dr3, %dg16
          pass  %pred1, @p0
          pass  %pred9, @p1
          landp @p0, @p1, @p4
          pass  @p4, %pred14
          pass  %pred8, @p2
          landp @p0, @p2, @p5
          pass  @p5, %pred20
          pass  %pred7, @p3
          landp @p0, @p3, @p6
          pass  @p6, %pred21
        }
        {
          cmpedb,0,sm   %dr47, %dg17, %pred10
          addd,1,sm     %dr3, _f16s,_lts0hi 0x30, %dg17
          addd,2,sm     %dr3, _f16s,_lts0lo 0x28, %dg16
          cmpedb,3,sm   %dr48, %dg16, %pred11
          addd,4,sm     0x10, %dr3, %dg20
          ldd,5,sm      %dr3, 0x0, %dr8
          pass  %pred1, @p0
          pass  %pred12, @p1
          landp @p0, @p1, @p4
          pass  @p4, %pred18
        }
        {
          cmpedb,0,sm   %dr40, %dg16, %pred2
          cmpedb,1,sm   %dr42, %dg18, %pred4
          ldd,2,sm      %dr3, _f16s,_lts0lo 0x20, %dr23
          ldd,3,sm      %dr3, _f16s,_lts0hi 0x28, %dr22
          cmpedb,4,sm   %dr41, %dg19, %pred3
          ldd,5,sm      %dr3, _f16s,_lts1lo 0x30, %dr21
          pass  %pred1, @p0
          pass  %pred11, @p1
          landp @p0, @p1, @p4
          pass  @p4, %pred17
          pass  %pred10, @p2
          landp @p0, @p2, @p5
          pass  @p5, %pred16
        }
        {
          nop 1
          ldd,0,sm      %dr3, 0x8, %dr26
          cmpedb,1,sm   %dr50, %dg17, %pred22
          ldd,2,sm      0x10, %dr3, %dr25
          ldd,3,sm      0x18, %dr3, %dr24
          cmpedb,4,sm   %dr43, %dg20, %pred5
        }
        {
          ibranch       .L3458
        }
.L3465:
        {
          merged,0,sm   %dr6, %dr3, %dr32, %pred6
        }
        {
          ibranch       .L3469
          cmpedb,0,sm   %dr32, 0x0, %pred3
        }
.L3472:
        {
          merged,0,sm   %dr6, %dr3, %dr32, %pred6
        }
        {
          ibranch       .L3476
          cmpedb,0,sm   %dr32, 0x0, %pred3
        }
.L3481:
        {
          cmpesb,0,sm   %r4, 0x0, %pred2
        }
        {
          ibranch       .L3486
          pass  %pred2, @p0
          pass  %pred4, @p1
          landp @p0, @p1, @p4
          pass  @p4, %pred0
          pass  %pred5, @p2
          landp @p0, @p2, @p5
          pass  @p5, %pred1
        }
Proc_2(int*):
        {
          setwd wsz = 0x4, nfx = 0x1, dbl = 0x0
          return        %ctpr3
          ldb,0 0x0, [ _f64,_lts1 Ch_1_Glob ], %g16
          ldw,3 %dr0, 0x0, %g17
        }
        {
          nop 3
          ldw,0,sm      0x0, [ _f64,_lts0 Int_Glob ], %g18
        }
        {
          cmpesb,0      %g16, _f16s,_lts0lo 0x41, %pred0
        }
        {
          subs,0,sm     0x9, %g18, %g16
        }
        {
          adds,0,sm     %g17, %g16, %g16
        }
        {
          ct    %ctpr3
          stw,2 %dr0, 0x0, %g16 ? %pred0
        }
Proc_3(record**):
        {
          setwd wsz = 0x4, nfx = 0x1, dbl = 0x0
          return        %ctpr3
          ldd,0 0x0, [ _f64,_lts1 Ptr_Glob ], %dg16
        }
        {
          nop 3
          ldw,0 0x0, [ _f64,_lts0 Int_Glob ], %g17
          ldd,3,sm      0x0, [ _f64,_lts2 Ptr_Glob ], %dg18, mas=0x4
        }
        {
          cmpedb,0      %dg16, 0x0, %pred0
          ldd,2,sm      %dg16, 0x0, %dg19
        }
        {
          nop 3
          adds,0        %g17, 0xc, %g16
        }
        {
          std,2 %dr0, 0x0, %dg19 ? ~%pred0
        }
        {
          ldd,2 0x0, [ _f64,_lts0 Ptr_Glob ], %dg18, mas=0x3
        }
        {
          ct    %ctpr3
          stw,2 0x10, %dg18, %g16
        }
Proc_4():
        {
          setwd wsz = 0x4, nfx = 0x1, dbl = 0x0
          return        %ctpr3
          ldb,0 0x0, [ _f64,_lts2 Ch_1_Glob ], %g16
          adds,1        0x0, _f16s,_lts1lo 0x42, %g17
        }
        {
          nop 3
          ldw,0 0x0, [ _f64,_lts0 Bool_Glob ], %g18
          stb,2 0x0, [ _f64,_lts2 Ch_2_Glob ], %g17
        }
        {
          nop 1
          cmpesb,0      %g16, _f16s,_lts0lo 0x41, %pred0
        }
        {
          ors,0,sm      0x0, %g18, %g16 ? ~%pred0
          ors,1,sm      0x1, %g18, %g16 ? %pred0
        }
        {
          ct    %ctpr3
          stw,2 0x0, [ _f64,_lts0 Bool_Glob ], %g16
        }
Proc_5():
        {
          setwd wsz = 0x4, nfx = 0x1, dbl = 0x0
          return        %ctpr3
          adds,0        0x0, 0x0, %g16
          adds,1        0x0, _f16s,_lts1lo 0x41, %g17
        }
        {
          nop 4
          stw,2 0x0, [ _f64,_lts0 Bool_Glob ], %g16
          stb,5 0x0, [ _f64,_lts2 Ch_1_Glob ], %g17
        }
        {
          ct    %ctpr3
        }
Proc_6(Enumeration, Enumeration*):
        {
          setwd wsz = 0x4, nfx = 0x1, dbl = 0x0
          return        %ctpr3
          addd,0,sm     0x0, [ _f64,_lts1 Int_Glob ], %dg17
          adds,1,sm     0x0, 0x0, %g18
          ldw,2,sm      0x0, [ _f64,_lts1 Int_Glob ], %g16
          adds,3,sm     0x3, 0x0, %g19
        }
        {
          cmpesb,0,sm   %r0, 0x1, %pred0
          cmpesb,1      %r0, 0x0, %pred1
          cmpesb,3      %r0, 0x2, %pred2
          cmpesb,4,sm   %r0, 0x3, %pred3
        }
        {
          cmpesb,0,sm   %r0, 0x4, %pred7
          pass  %pred1, @p0
          pass  %pred0, @p1
          landp ~@p0, ~@p1, @p4
          pass  @p4, %pred4
          pass  %pred2, @p2
          landp @p4, @p2, @p5
          pass  @p5, %pred5
          landp @p4, ~@p2, @p6
          pass  @p6, %pred6
        }
        {
          adds,2        0x3, 0x0, %r0 ? ~%pred2
          pass  %pred6, @p0
          pass  %pred3, @p1
          landp @p0, ~@p1, @p4
          pass  @p4, %pred4
          pass  %pred5, @p2
          pass  %pred1, @p3
          landp ~@p2, ~@p3, @p5
          pass  @p5, %pred2
          landp @p0, @p1, @p6
          pass  @p6, %pred3
        }
        {
          cmpedb,0,sm   %dr1, %dg17, %pred8
          merges,2,sm   %r0, 0x0, %g20, %pred1
          pass  %pred4, @p0
          pass  %pred7, @p1
          landp @p0, @p1, @p4
          pass  @p4, %pred6
          pass  %pred3, @p2
          pass  %pred2, @p3
          landp ~@p2, @p3, @p5
          pass  @p5, %pred2
          landp ~@p4, @p5, @p6
          pass  @p6, %pred3
        }
        {
          merges,0,sm   %g20, 0x1, %g17, %pred5
          pass  %pred4, @p0
          pass  %pred7, @p1
          landp @p0, ~@p1, @p4
          pass  @p4, %pred2
          pass  %pred1, @p2
          pass  %pred0, @p3
          landp ~@p2, @p3, @p5
          pass  @p5, %pred0
        }
        {
          merges,0,sm   %g17, 0x2, %g17, %pred6
        }
        {
          ct    %ctpr3 ? ~%pred3
          merges,0,sm   %g16, %g17, %g16, %pred8
          stw,2 %dr1, 0x0, %g17
        }
        {
          ct    %ctpr3 ? %pred2
          cmplesb,0,sm  %g16, _f16s,_lts0lo 0x64, %pred1
        }
        {
          nop 1
          pass  %pred0, @p0
          pass  %pred1, @p1
          landp @p0, ~@p1, @p4
          pass  @p4, %pred2
          landp @p0, @p1, @p5
          pass  @p5, %pred0
        }
        {
          stw,2 %dr1, 0x0, %g18 ? %pred2
          stw,5 %dr1, 0x0, %g19 ? %pred0
        }
        {
          ct    %ctpr3 ? %pred2
        }
        {
          ct    %ctpr3 ? %pred0
        }
Proc_7(int, int, int*):
        {
          nop 3
          setwd wsz = 0x4, nfx = 0x1, dbl = 0x0
          return        %ctpr3
        }
        {
          adds,0        %r0, 0x2, %g16
        }
        {
          adds,0        %r1, %g16, %g16
        }
        {
          ct    %ctpr3
          stw,2 %dr2, 0x0, %g16
        }
Proc_8(int*, int (*) [50], int, int):
        {
          setwd wsz = 0x7, nfx = 0x1, dbl = 0x0
          disp  %ctpr2, .L3567
          addd,0,sm     0x1, 0x0, %dr9
          addd,1,sm     0x2, 0x0, %dr10
          addd,2,sm     0x0, _f64,_lts1 0x20ff2000000000, %dr13
          adds,3        %r2, 0x5, %r5
        }
        {
          adds,0        %r2, 0x6, %g16
          sxt,3,sm      0x2, %r5, %dg17
          sxt,4,sm      0x2, %r5, %dg18
        }
        {
          cmplesb,0     %r5, %g16, %pred1
          sxt,1 0x2, %r2, %dg16
          shld,3,sm     %dg17, 0x2, %dr7
          shld,4,sm     %dg17, 0x3, %dr8
          shld,5,sm     %dg18, 0x3, %dg19
        }
        {
          shld,0,sm     %dg18, 0x7, %dg20
          shld,1,sm     %dg17, 0x7, %dg21
          shld,2,sm     %dg17, 0x6, %dr6
          addd,3,sm     %dr7, %dr8, %dg22
          shld,4,sm     %dg18, 0x6, %dg17
        }
        {
          shld,0        %dg16, 0x2, %dg16
          addd,1,sm     %dg20, %dg19, %dg19
          adds,2,sm     0x7, %r2, %g20
        }
        {
          addd,0,sm     %dg21, %dg22, %dg22
          addd,1,sm     %dg16, %dr0, %dg16
          subd,2,sm     %dr6, 0x4, %dg23
          shld,3,sm     %dg18, 0x2, %dr11
        }
        {
          addd,0,sm     %dg17, %dg19, %dg17
          addd,1,sm     %dg23, %dg22, %dr2
          stw,2 %dg16, _f16s,_lts0lo 0x14, %r3
          cmplsb,3,sm   %r5, %g20, %pred0
        }
        {
          ct    %ctpr2 ? ~%pred1
          addd,0,sm     %dg21, %dr7, %dr3
          addd,1,sm     %dr1, %dg17, %dr12
          stw,2 %dg16, _f16s,_lts0lo 0x18, %r3
          stw,5 %dg16, _f16s,_lts0hi 0x8c, %r5
        }
        {
          disp  %ctpr1, .L3709
          insfd,0,sm    %dr13, _f32s,_lts0 0x8800, %dr9, %dg16 ? ~%pred0
          insfd,1,sm    %dr13, _f32s,_lts0 0x8800, %dr10, %dg16 ? %pred0
          addd,2        0x0, 0x0, %dg17
        }
        {
          rwd,0 %dg16, %lsr
          addd,1        %dr12, %dr11, %dg17
          aaurwd,2      %dg17, %aasti1
        }
        {
          nop 3
          aaurwd,2      %dg17, %aad0
        }
.L3709:
        {
          loop_mode
          alc   alcf=1, alct=1
          ct    %ctpr1 ? %NOT_LOOP_END
          staaw,5       %r5, %aad0[ %aasti1 ]
          incr,5        %aaincr0
        }
        {
          sxt,0 0x2, %r5, %dg16
          adds,1        0x0, 0x0, %g17
        }
        {
          shld,0        %dg16, 0x2, %dr7
          shld,1        %dg16, 0x3, %dr8
          aaurw,2       %g17, %aabf0
        }
        {
          shld,0        %dg16, 0x7, %dg17
          addd,1        %dr7, %dr8, %dg18
          shld,2        %dg16, 0x6, %dr6
        }
        {
          addd,0        %dg17, %dg18, %dg16
          subd,1        %dr6, 0x4, %dg18
          addd,2        %dg17, %dr7, %dr3
        }
        {
          addd,0        %dg18, %dg16, %dr2
        }
.L3567:
        {
          return        %ctpr3
          ldw,0 %dr1, %dr2, %g16
          addd,1        %dr1, %dr2, %dg18
          ldw,2,sm      %dr0, %dr7, %g17
          addd,3        %dr0, %dr7, %dg19
          addd,4        %dr6, _f16s,_lts0lo 0xfa0, %dg20
          adds,5        0x5, 0x0, %g21
        }
        {
          addd,1        %dr8, %dr3, %dg22
        }
        {
          nop 2
          cmpedb,0,sm   %dg18, %dg19, %pred0
          addd,1        %dg20, %dg22, %dg18
        }
        {
          adds,0        %g16, 0x1, %g16
        }
        {
          merges,0,sm   %g17, %g16, %g17, %pred0
          stw,2 %dr1, %dr2, %g16
        }
        {
          ct    %ctpr3
          stw,2 %dr1, %dg18, %g17
          stw,5 0x0, [ _f64,_lts0 Int_Glob ], %g21
        }
Func_1(char, char):
        {
          nop 2
          setwd wsz = 0x4, nfx = 0x1, dbl = 0x0
          return        %ctpr3
        }
        {
          getfs,0       %r0, _f16s,_lts0lo 0x1200, %g16
          getfs,1       %r1, _f16s,_lts0lo 0x1200, %g17
        }
        {
          nop 1
          cmpesb,0      %g16, %g17, %pred0
        }
        {
          ct    %ctpr3
          stb,2 0x0, [ _f64,_lts0 Ch_1_Glob ], %r0 ? %pred0
          merged,3      0x0, 0x1, %dr0, %pred0
        }
Func_2(char*, char*):
        {
          setwd wsz = 0xc, nfx = 0x1, dbl = 0x0
          setbn rsz = 0x7, rbs = 0x4, rcur = 0x4
          setbp psz = 0x0
          disp  %ctpr1, .L3724
          getsp,0       _f32s,_lts2 0xfffffff0, %dr3
          adds,1        0x0, _f16s,_lts1lo 0x41, %r6
          adds,2,sm     0x0, 0x0, %r5
          addd,3,sm     0x0, %dr0, %dr4
        }
        {
          setwd wsz = 0xc, nfx = 0x1, dbl = 0x0
          setbn rsz = 0x3, rbs = 0x4, rcur = 0x0
          setbp psz = 0x1
          addd,1        %dr1, 0x1, %dr0
          addd,2        0x0, [ _f64,_lts1 Ch_1_Glob ], %dr7
        }
        {
          rwd,0 _f64,_lts0 0x20ff0000000000, %lsr
          addd,1,sm     0x2, 0x0, %db[5]
          adds,2,sm     0x2, 0x0, %b[4]
        }
        {
          ldb,0,sm      %dr0, %db[5], %b[7], mas=0x4
        }
        {
          nop 2
          ldb,0,sm      %dr4, %db[5], %b[6], mas=0x4
        }
.L3724:
        {
          loop_mode
          ldb,2 %dr0, %db[5], %b[7], mas=0x3 ? %pcnt0
          ldb,5 %dr4, %db[5], %b[6], mas=0x3 ? %pcnt0
        }
        {
          loop_mode
        }
        {
          loop_mode
          nop 1
          cmpesb,4,sm   %b[6], %b[7], %pred0
        }
        {
          loop_mode
          addd,2,sm     %db[5], 0x1, %db[3] ? ~%pred0
          addd,3,sm     0x0, %db[5], %db[3] ? %pred0
          adds,4,sm     0x0, %b[4], %b[2] ? %pred0
          adds,5,sm     %b[4], 0x1, %b[2] ? ~%pred0
        }
        {
          loop_mode
          cmplesb,4,sm  %b[2], 0x2, %pred1
        }
        {
          loop_mode
          nop 1
          ldb,0,sm      %dr0, %db[3], %b[5], mas=0x4
          ldb,3,sm      %dr4, %db[3], %b[4], mas=0x4
        }
        {
          loop_mode
          alc   alcf=1, alct=1
          abn   abnf=1, abnt=1
          abp   abpf=1, abpt=1
          ct    %ctpr1 ? %pred1
          merges,4,sm   %r5, %r6, %r5, ~%pred0
          stb,5 0x0, %dr7, %b[6] ? %pred0
        }
        {
          setwd wsz = 0xc, nfx = 0x1, dbl = 0x0
          setbn rsz = 0x7, rbs = 0x4, rcur = 0x4
          setbp psz = 0x0
          disp  %ctpr2, strcmp
          adds,0,sm     0x0, %b[4], %r3
          addd,1        0x0, 0x0, %dr6
        }
        {
          addd,0,sm     0x0, %dr4, %db[0]
          cmplsb,1,sm   %r5, _f16s,_lts0lo 0x5a, %pred2
          mmurw,2       %dr6, %dam_inv
          cmplsb,3      %r5, _f16s,_lts0hi 0x57, %pred3
          addd,5,sm     0x0, %dr1, %db[1]
        }
        {
          nop 1
          pass  %pred3, @p0
          pass  %pred2, @p1
          landp ~@p0, @p1, @p4
          pass  @p4, %pred0
        }
        {
          adds,0        0x7, 0x0, %r3 ? %pred0
        }
        {
          call  %ctpr2, wbs = 0x8
          adds,0,sm     %r3, 0x7, %r1
        }
        {
          nop 1
          return        %ctpr3
          cmplesb,3     %b[0], 0x0, %pred0
        }
        {
          nop 3
          stw,2 0x0, [ _f64,_lts0 Int_Glob ], %r1 ? ~%pred0
          merged,3      0x0, 0x1, %dr0, ~%pred0
        }
        {
          ct    %ctpr3
        }
Func_3(Enumeration):
        {
          nop 2
          setwd wsz = 0x4, nfx = 0x1, dbl = 0x0
          return        %ctpr3
        }
        {
          nop 1
          cmpesb,0      %r0, 0x2, %pred0
        }
        {
          addd,3        0x0, 0x0, %dr0 ? ~%pred0
          addd,4        0x1, 0x0, %dr0 ? %pred0
        }
        {
          ct    %ctpr3 ? ~%pred0
        }
        {
          ct    %ctpr3
        }
Ptr_Glob:
Next_Ptr_Glob:
Int_Glob:
Bool_Glob:
Ch_1_Glob:
Ch_2_Glob:
Arr_1_Glob:
Arr_2_Glob:
Reg_Define:
User_Time:
Microseconds:
Dhrystones_Per_Second:
Vax_Mips:
theseSecs:
startSecs:
secs:
tp1:
millisecs:
timeday:
.LC.1:
        .ascii  "%s\000"
.LC.2:
        .ascii  "DHRYSTONE PROGRAM, SOME STRING\000"
.LC.3:
        .ascii  "DHRYSTONE PROGRAM, 1'ST STRING\000"
.LC.7:
        .ascii  "DHRYSTONE PROGRAM, 2'ND STRING\000"
.LC.8:
        .ascii  "DHRYSTONE PROGRAM, 3'RD STRING\000"
.LC.9:
        .ascii  "%12.0f runs %6.2f seconds \n\000"
.LC.11:
        .ascii  "Int_Glob:      \000"
.LC.12:
        .ascii  "O.K.  \000"
.LC.13:
        .ascii  "WRONG \000"
.LC.14:
        .ascii  "%d  \000"
.LC.15:
        .ascii  "Bool_Glob:     \000"
.LC.16:
        .ascii  "%d\n\000"
.LC.17:
        .ascii  "Ch_1_Glob:     \000"
.LC.18:
        .ascii  "%c  \000"
.LC.19:
        .ascii  "Ch_2_Glob:     \000"
.LC.20:
        .ascii  "%c\n\000"
.LC.21:
        .ascii  "Arr_1_Glob[8]: \000"
.LC.22:
        .ascii  "Arr_2_Glob8/7: \000"
.LC.23:
        .ascii  "%10d\n\000"
.LC.24:
        .ascii  "Ptr_Glob->            \000"
.LC.25:
        .ascii  "  Ptr_Comp:       *    %d\n\000"
.LC.26:
        .ascii  "  Discr:       \000"
.LC.27:
        .ascii  "Enum_Comp:     \000"
.LC.28:
        .ascii  "  Int_Comp:    \000"
.LC.29:
        .ascii  "%d \000"
.LC.30:
        .ascii  "Str_Comp:      \000"
.LC.31:
        .ascii  "%s\n\000"
.LC.32:
        .ascii  "Next_Ptr_Glob->       \000"
.LC.33:
        .ascii  "  Ptr_Comp:       *    %d\000"
.LC.35:
        .ascii  "Int_1_Loc:     \000"
.LC.36:
        .ascii  "Int_2_Loc:     \000"
.LC.37:
        .ascii  "Int_3_Loc:     \000"
.LC.38:
        .ascii  "Enum_Loc:      \000"
.LC.39:
        .ascii  "%d  \n\000"
.LC.40:
        .ascii  "Str_1_Loc:                      "
        .ascii  "       \000"
.LC.41:
        .ascii  "Str_2_Loc:                      "
        .ascii  "       \000"
.LC.44:
        .ascii  "Nanoseconds one Dhrystone run: %"
        .ascii  "12.2lf\n\000"
.LC.45:
        .ascii  "Dhrystones per Second:         %"
        .ascii  "12.0lf\n\000"
.LC.46:
        .ascii  "VAX  MIPS rating =             %"
        .ascii  "12.2lf\n\000"
.LC.48.1:
        .ascii  "Type additional information to i"
        .ascii  "nclude in Dhry.txt - Press Enter"
        .ascii  "\000"
.LC.49.1:
        .ascii  "\000"
.LC.50.1:
        .ascii  "\000"
.LC.51.1:
        .ascii  "Please increase number of runs\000"
.LC.52.1:
        .ascii  "Measured time too small to obtai"
        .ascii  "n meaningful results\000"
.LC.53.1:
        .ascii  "\000"
.LC.54.1:
        .ascii  " same as above\000"
.LC.55.1:
        .ascii  "\000"
.LC.56.1:
        .ascii  "Final values (* implementation-d"
        .ascii  "ependent):\000"
.LC.57.1:
        .ascii  "\000"
.LC.58.1:
        .ascii  "\000"
.LC.59.1:
        .ascii  "Dhrystone Benchmark, Version 2.1"
        .ascii  " (Language: C or C++)\000"
.LC.60.1:
        .ascii  "\000"
.LC.61.1:
        .ascii  "################################"
        .ascii  "##########\000"

        elbrus_optimizing_compiler_v1.25.12_Jan_13_2021 = 0x0
