## Preface

An attempt to compare processor performance on heterogeneous x86-64, e2k (Elbrus), mips, and arm architectures.

All tests are written in C (taken from source codes that I have not modified or optimized) and compiled for a specific architecture using a specific compiler for that architecture, and tests are performed on various distributions of operating systems running on the Linux kernel. The results can be affected by both the type and version of the compiler, as well as the optimization mode. Although even in this way, you can roughly compare the performance of processors on different architectures.

P.S.: I Know that most tests are for very old computers, but they work everywhere. Which is pretty good.

<cut />

## Architecture types of processors being compared

### CISC

CISC (Complex instruction set computing) is an architecture in which a small set of registers, commands of different lengths, and operations are encoded by a single command.

### RISC

RISC (Reduced instruction set computing) is a processor architecture where instructions are simplified and have a fixed length (for example, 32 bits), which improves performance. It has a large number of registers.

### VLIW

VLIW (very long instruction word) - processor architecture with a very large instruction. A single instruction contains many simple instructions that can be executed by different processor blocks. All this greatly simplifies the architecture, but complicates the compiler. Inefficient code can generate incomplete instructions, which greatly reduces the performance of the program.

## Description of the architectures of the compared processors

# # # x86-64 (ia32/x86/i386/amd64/EM64T/Intel/AMD)

x86 - [CISC] (https://ru.wikipedia.org/wiki/CISC) an architecture created by Intel that everyone knows about. The modern version of the architecture went from the time of the 32-bit Intel 386 processor. Major players: Intel, AMD and VIA (and then there was some Zhaoxin).

### ARM

ARM - [RISC] (https://ru.wikipedia.org/wiki/RISC) architecture developed by [ARM Limited] (https://ru.wikipedia.org/wiki/ARM_(%D0%BA%D0%BE%D0%BC%D0%BF%D0%B0%D0%BD%D0%B8%D1%8F)) since the mid-80s. Current versions of 32-bit ARM cores: armv6(ARM1136J (F)-S), armv7 (Cortex A9, Cortex A15), armv8 (CortexA53, CortexA57, Cortex A72 and higher). Processors of this architecture are widely used in mobile phones, tablets, embedded devices, and single-Board computers. Processors are energy-efficient and quite productive.

### MIPS

MIPS - [RISC] (https://ru.wikipedia.org/wiki/RISC) a system of commands and microprocessor architectures developed by MIPS Computer Systems. Processors of this architecture, like ARM, are used in mobile phones, tablets, embedded devices, etc. But for some reason, it did not achieve large volumes of devices in comparison with ARM. But processors on the MIPS architecture can often be found in routers, well, in media players, and it was also used in the processor of the Play Station 1 console. Current implementations: 32-bit MIPS32 and 64-bit MIPS64.


### E2K (Elbrus 2000/Elbrus)

[VLIW] (https://ru.wikipedia.org/wiki/VLIW)

## List of tests

* [Dhrystone](https://ru.wikipedia.org/wiki/Dhrystone)
* [Whetstone](https://ru.wikipedia.org/wiki/Whetstone)
* [LINPACK](https://ru.wikipedia.org/wiki/Linpack)
* [Coremark](https://ru.wikipedia.org/wiki/CoreMark)
* [Memspeed](http://www.roylongbottom.org.uk/memspd2k%20results.htm)
* [Livermore Loops](http://www.roylongbottom.org.uk/classic.htm)
* [MP MFLOPS](http://www.roylongbottom.org.uk/linux%20benchmarks.htm#anchor7)
* [Scimark 2](https://math.nist.gov/scimark2/download_c.html)

### Dhrystone

> Dhrystone is a synthetic test that was written by Reinhold P. Weicker in 1984.
> This test does not use floating-point operations, and version 2.1 is written to exclude the possibility of strong optimizations during compilation.
> The benchmark outputs results in VAX Dhrystones per second, where 1 VAX DMIPS = Dhrystones per second divided by 1757.

# # # Whetstone

> Whetstone is a synthetic test that was written by Harold Curnow in 1972 in Fortran.
> Was later rewritten in C by Roy Longbottom. This test outputs results in MWIPS,
> also intermediate results in MOPS (Millions of operations per second) and MFLOPS (Millions of real floating-point operations per second).
> This test performs various calculations: integer and floating-point performance,
> performance of operations with arrays, with conditional operator, performance of trigonometric functions and functions of exponentiation, logarithms and root extraction.

I also wrote the Whetstone test in JS (for testing the browser and NodeJS) and C# (for testing Mono, .Net Framework and Dotnet Core), and I also found an implementation in Java.

> Whetstone MP-multithreaded version of Whetstone.

### LINPACK

> LINPACK-a test that was written by Jack Dongarra in Fortran in the 70s, later rewritten in C.
> The test calculates systems of linear equations and performs various operations on two-dimensional (matrices) and one-dimensional (vectors).
> Used implementation of the Linpack 100x100 with numbers of type float. The test implementation is well used for evaluating performance
> various supercomputers.

### Coremark

> A set of tests written in C Created in 2009 by Shay Gal-On from EEMBC
> Contains implementations of such algorithms: connected list processing (search and sort), matrix processing (multiple matrix operations), state machine (determining that the input character stream contains real numbers in decimal notation), and counting the CRC sum.

### Memspeed

> Memspeed-performs 3 different operations on 64-bit double-precision floating-point numbers, 32-bit single-precision floating-point numbers, and 32-bit integers on 2 arrays:
> * Sum with case r = r + x [m] * y[m] (Integer + y [m])
> * Amount in memory x[m] = x[m] + y[m]
> * Memory to memory x[m] = y[m]

### Livermore Loops

> test for supercomputers, appeared in 1970, originally contained 14 tests in the Fortran language. Further tests were increased to 24 in the 1980's. Performance is measured in Millions of Floating-Point Number Operations per Second, or MFLOPS.
> the test verifies exactly the calculations at the end. The main goal is to avoid simple operations on numbers, 24 tests are performed 3 times in a Do-loop and calculate performance on short, medium, and large sequences of numbers.

### MP MFLOPS

> MP MFLOPS is a multithreaded test that counts a large number of operations on large arrays.
> Performs an operation of the form 'x[i] = (x[i] + a) * b - (x[i] + c) * d + (x[i] + e) * f' with 2, 8, or 32 per 1 instruction. The array size is 0.1, 1, or 10 million 4-byte floating-point words with single precision.
> Loads your processor to the full.

### Scimark 2

> SciMark 2-a set of tests in the C language that measures the performance of code found in scientific and professional applications. It contains 5 computational tests: FFT (fast Fourier transform), Gauss-Seidel relaxation (Gauss — Seidel Method for solving SLOUGH), Sparse matrix-multiply (multiplication of sparse matrices), Monte Carlo integration (integration by the Monte Carlo method), and LU factorization (LU-decomposition).

## Test Computers and their processors

Computers on x86 (i386) x86-64 (amd64) processors):

* [Core i7-2600](https://ark.intel.com/content/www/us/en/ark/products/52213/intel-core-i7-2600-processor-8m-cache-up-to-3-80-ghz.html)
* [AMD A6-3650](http://www.cpu-world.com/CPUs/K10/AMD-A-Series%20A6-3650%20AD3650WNZ43GX%20(AD3650WNGXBOX).html)
* [Atom Z8350](https://ark.intel.com/content/www/us/en/ark/products/93361/intel-atom-x5-z8350-processor-2m-cache-up-to-1-92-ghz.html)
* [Core 2 Duo T9400](https://ark.intel.com/content/www/us/en/ark/products/35562/intel-core-2-duo-processor-t9400-6m-cache-2-53-ghz-1066-mhz-fsb.html)
* [Core i7-4700MQ](https://ark.intel.com/content/www/us/en/ark/products/75117/intel-core-i7-4700mq-processor-6m-cache-up-to-3-40-ghz.html)
* [Core i3-m330](https://ark.intel.com/content/www/us/en/ark/products/47663/intel-core-i3-330m-processor-3m-cache-2-13-ghz.html)
* [Xeon 6128](https://ark.intel.com/content/www/us/en/ark/products/120482/intel-xeon-gold-6128-processor-19-25m-cache-3-40-ghz.html)
* [Pentium M725](https://ark.intel.com/content/www/us/en/ark/products/27584/intel-pentium-m-processor-725-2m-cache-1-60a-ghz-400-mhz-fsb.html)
* [Pentium 4 3066](https://ark.intel.com/content/www/us/en/ark/products/27499/intel-pentium-4-processor-supporting-ht-technology-3-06-ghz-512k-cache-533-mhz-fsb.html)
* [Pentium III 1000](https://ark.intel.com/content/www/us/en/ark/products/27529/intel-pentium-iii-processor-1-00-ghz-256k-cache-133-mhz-fsb.html)


Computers on armv6 (armel), armv7 (armhf), armv8 (aarch64) processors:

* [Odroid N2 (Amlogic S922X)](https://wiki.odroid.com/odroid-n2/hardware)
* [Odroid X2 (Samsung Exynos 4412)](https://www.hardkernel.com/shop/odroid-x2/)
* [Orange Pi PC2 (Allwinner H5)](http://www.orangepi.org/orangepipc2/)
* [Orange Pi Win (Allwinner A64)](http://www.orangepi.org/OrangePiWinPlus/0)
* [Raspberry PI 3 (Broadcom BCM2837B0)](https://www.raspberrypi.org/products/raspberry-pi-3-model-b/)
* [Raspberry PI (Broadcom BCM2835)](https://www.raspberrypi.org/products/raspberry-pi-1-model-b-plus/)
* [AWS Graviton (Alpine AL73400)](https://en.wikichip.org/wiki/annapurna_labs/alpine/al73400)

Computers on e2k (Elbrus 2000) processors (v3, v4, v5):

* [E8C-SWTX (Elbrus 8C)](http://www.mcst.ru/elbrus-8c)
* [E8C-E8C4 (Elbrus 8C x4 cpu)](http://www.ineum.ru/elbrus_804_1u0)
* [E8C2 (Elbrus 8C2) (1200 MHz, 1550 MHz)](http://www.mcst.ru/elbrus-8cb)
* [E2S-EL2S4 (Elbrus 4C x4 cpu)](http://www.ineum.ru/vk-elbrus-401pc)
* [E2S-PC401 (Elbrus 4C)](http://www.ineum.ru/vk-elbrus-401pc)
* [MBE1C-PC (Elbrus 1C+)](http://www.ineum.ru/elbrus_101-pc)

Computers on the MIPS processors :

