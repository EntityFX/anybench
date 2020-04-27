Stacks : 

* PS (procedure arguments) 
* PCS (return chain)
* US (user data - local variables)

Registers :
* Local: %r0 .. %r63 (%dr0 .. %dr63) [%db0 .. %db63]
* Global: %g0 .. %g31
* Call: %ctpr1 ... %ctpr3
* Stack: 
    * US: %usd (.lo .hi), %usbr, %sbr, %upsr
    * PS: %pshtp, %pcsp (.lo .hi), %psr
    * PCS: %pcshtp, %cr0 (.lo .hi), %cr1 (.lo .hi)
* Interrupt: 
* MMU:
* Command: HS, ALS0, ALS1, ALS2, ALS3, ALS4, ALS5, CS0, CS1, SS, ALES0, ALES1, ALES3, ALES4, AAS0, AAS1, AAS2, AAS3, AAS4, AAS5, LTS3, LTS2, LTS1, LTS0, PLS2, PLS1, PLS0, CDS2, CDS1, CDS0.

Command bundle (VLIW):

```asm
{
    <Subcommand>
    ...
    <Subcommand>,<ALC_NUMBER>,sm  <SOURCE>, <SOURCE>, <DESTINATION> ? %PREDICATE
    ...
    <Subcommand>
}
```

Command mnemonics:

aaurw
aaurwd
aaurwq
aaurr
aaurrd
aaurrq       
aaurw        
aaurwd       
aaurwq       

abn
abp
addd
adds,0..5,''|sm   REG|VAL, REG|VAL, REG ? %predicate

subd
subs

alc
als


andd
andp
ands
andnd
andns

bap
call

cmpandedb
cmpbdb
cmpbedb
cmpedb
cmpesb
cmpbsb
cmpldb
cmplesb
cmplsb

ct
disp
sdisp


eap
elbrus_optimizing_compiler_v
faddd
fadds
fapb
fcmpeqsb
fcmpltdb
fcmpneqsb
fdivd
fdivs
fdtofs
fdtoistr

fstofd
fsubs
getfd
getsp
ibranch
incr
insfd
istofd
istofs

ipd

landp
ldb
ldd,0..5,''|sm	REG|VAL, REG|VAL, REG|VAL,_lts0lo 0xb8, REG

ldisp
ldw
loop_mode
merges


movad
movfi
movtd
movts

nop

pass
pfadds

popcntd

muld
muls

fmul_adds
fmul_rsubs
fmul_subs
fmuld
fmuls

pfmul_adds
pfmul_rsubs
pfmul_subs
pfmuls
pfsubs

return

rwd
rws
rrd
rrs

sars
sard
scld
scls
sdivs

setbn
setbp
setwd

shl_addd
shld
shls
shrd
shrs

smulx
staad
staaw

st
std
sth
strd
stw

subd
subs
sxt

xord 
xors

ord
ors

wait