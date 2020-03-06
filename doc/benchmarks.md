## Список бенчмарков

* Dhrystone
* Whetstone 
* LINPACK
* Coremark
* Memspeed
* LLoops
* MP MFLOPS
* Scimark 2

### Dhrystone

> Dhrystone - синтетический бенчмарк, который был написан Reinhold P. Weicker в 1984 году.
> Данный бенчмарк не использует операции с плавающей запятой, а версия 2.1 написана так, чтобы исключить возможность сильных оптимизаций при компиляции.
> Бенчмарк выдаёт результаты в VAX Dhrystones в секунду, где 1 VAX DMIPS = Dhrystones в секунду делить на 1757.

### Whetstone

> Whetstone - синтетический бенчмарк, который был написан Harold Curnow в 1972 году на языке Fortran.
> Позже был переписан на языке C Roy Longbottom. Данныей бенчмарк выдаёт результаты в MWIPS,
> также промежуточные результаты в MOPS (Миллионов операций в секунду) и MFLOPS (Миллионы вещественных операций с плавующей запятой в секунду).
> Данный бенчмарк производит различне подсчёты: производительность целочисленных и операций с плавующей запятой,
> производительность операций с массивами, с условным оператором, производительность тригонометрических функций и функций возвдения в степень, логарифмов и извлечения корня.

Также мной был написан бенчмарк Whetstone на языках JS (Для тестирования браузера и NodeJS) и C# (Для тестирования Mono, .Net Framework и Dotnet Core), а также я нашёл реализацию на Java.

> Whetstone MP - многопоточный вариант Whetstone.

### LINPACK

> LINPACK бенчмарк, который был написан Jack Dongarra на языке Fortran в 70х годах, позже переписан на язык C.
> Данный бенчмарк считает ситемы линейных уравнений, делает различные операции над двумерными (матрицами) и одномерными (векторами).
> Используется реализация Linpack 100x100 с числами типа float. Реализация бенчмарка хорошо используется для оценки производительности
> различных суперкомпьютеров.

### Coremark

### Memspeed

### LLoops

### MP MFLOPS


### Scimark 2

## Участники

Машины на процессорах x86 (i386) х86-64 (amd64):

* Core i7-2600
* AMD A6-3650
* Atom Z8350
* Core 2 Duo T9400

Машины на процессорах armv6 (armel), armv7 (armhf), armv8 (aarch64):

* Odroid N2 (Amlogic S922X)
* Odroid X2 (Samsung Exynos 4412)
* Orange Pi PC2 (Allwinner H5)
* Orange Pi Win (Allwinner A64)
* Raspberry PI 3 (Broadcom BCM2837B0)
* Raspberry PI (Broadcom BCM2835)
* AWS Graviton (Alpine AL73400)

Машины на процессорах e2k (Elbrus 2000) [v3, v4, v5]:

* E8C-SWTX (Elbrus 8C)
* E8C-E8C4 (Elbrus 8C x4)
* E8C2 (Elbrus 8C2)
* E2S-EL2S4 (Elbrus 4C x4)
* E2S-PC401 (Elbrus 4C)
* MBE1C-PC (Elbrus 1C+)

Машины на процессорах  mips :

* Baikal T1 BFK 

### Таблица со всеми участниками

| Платформа        | Модель процессора                               | Всего ядер (потоков) | Частота (МГц) | Архитектура |
| ---------------- | ----------------------------------------------- | -------------------- | ------------- | ----------- |
| Core i7-2600     | Intel(R) Core(TM) i7-2600 CPU @ 3.40GHz         | 8 (4/8)              | 3,400.00      | amd64       |
| Core 2 Duo T9400 | Intel(R) Core(TM) 2 Duo CPU    T9400  @ 2.53GHz | 2                    | 2,530.00      | amd64       |
| AMD A6-3650      | AMD A6-3650 APU with Radeon(tm) HD Graphics     | 4                    | 2,600.00      | amd64       |
| Atom Z8350       | Intel(R) Atom(TM) x5-Z8350 CPU @ 1.44GHz        | 4                    | 1,440.00      | amd64       |
| Raspberry PI     | Broadcom BCM2835                                | 1                    | 700.00        | amd64       |
| AWS Graviton     | Alpine AL73400                                  | 16                   | 2,300.00      | arm         |
| Odroid N2        | Amlogic S922X                                   | 6                    | 1,800.00      | arm         |
| Odroid X2        | Samsung Exynos 4412 (armv7l)                    | 4                    | 1,700.00      | arm         |
| Orange Pi PC2    | Allwinner H5 (aarch64)                          | 4                    | 1,152.00      | arm         |
| Raspberry PI 3   | Broadcom BCM2837B0 (armv8)                      | 4                    | 1,200.00      | arm         |
| Orange Pi Win    | Allwinner A64 (aarch64)                         | 4                    | 1,344.00      | arm         |
| E8C-SWTX         | Elbrus 8C (E8C-SWTX)                            | 8                    | 1,300.00      | e2k         |
| E8C-E8C4         | Elbrus 8C (4 CPU)                               | 32                   | 1,300.00      | e2k         |
| E8C2             | Elbrus 8C2 (E8C2)                               | 8                    | 1,500.00      | e2k         |
| E2S-EL2S4        | Elbrus 4C [EL2S4] (4 CPU)                       | 16                   | 750.00        | e2k         |
| E2S-PC401        | Elbrus 4C [E2S] (pc401)                         | 4                    | 800.00        | e2k         |
| MBE1C-PC         | Elbrus 1C+ (MBE1C-PC)                           | 1                    | 985.00        | e2k         |
| Pentium 4        | Intel(R) Pentium(TM) 4 CPU                      | 1                    | 3,066.00      | i386        |
| Pentium III      | Intel(R) Pentium(TM) III CPU                    | 1                    | 1,000.00      | i386        |
| Baikal T1 BFK    | Baikal-T1 (MIPS P5600 V3.0)                     | 2                    | 1,200.00      | mips        |


## Результаты бенчмарков

### Dhrystone

| Platform         | Dhrystones (VAX MIPS rating) |
| ---------------- | ---------------------------- |
| Core i7-2600     | 22076.97                     |
| Core 2 Duo T9400 | 13308                        |
| AMD A6-3650      | 11455.81                     |
| Atom Z8350       | 4677.3                       |
| Raspberry PI     | 847                          |
| AWS Graviton     | 11377.63                     |
| Odroid N2        | 8230                         |
| Odroid X2        | 4495.03                      |
| Orange Pi PC2    | 2949.12                      |
| Raspberry PI 3   | 2469                         |
| Orange Pi Win    | 2370                         |
| E8C-SWTX         | 5865.19                      |
| E8C-E8C4         | 5844.82                      |
| E8C2             | 5357.4528                    |
| E8C2-LOW         | 3554.46                      |
| E2S-EL2S4        | 3329.51                      |
| E2S-PC401        | 3548.8                       |
| MBE1C-PC         | 4302.53                      |
| Pentium 4        | 4012                         |
| Pentium III      | 1595                         |
| Baikal T1 BFK    | 3650                         |



Dhrystone Benchmark, все процессоры
![Dhrystone Benchmark, Version 2.1](charts/dhrystone_all_cpu.svg "Dhrystone Benchmark, Version 2.1")

Dhrystone Benchmark, x86-64 и e2k процессоры
![Dhrystone Benchmark, Version 2.1](charts/dhrystone_x86_e2k_cpu.svg "Dhrystone Benchmark, Version 2.1")

### Whetsone

| Platform         | MWIPS   | MWIPS (multicore) |
| ---------------- | ------- | ----------------- |
| Core i7-2600     | 5729.52 | 31319.00          |
| Core 2 Duo T9400 | 2910.33 | 5195.00           |
| AMD A6-3650      | 3718.16 | 12113.00          |
| Atom Z8350       | 2085.24 | 6636.00           |
| Raspberry PI     | 270.50  | 270.50            |
| AWS Graviton     | 2851.80 | 44741.00          |
| Odroid N2        | 2136.98 | 9931.00           |
| Odroid X2        | 1305.16 | 4291.00           |
| Orange Pi PC2    | 980.26  | 3798.00           |
| Raspberry PI 3   | 997.20  | 2779.80           |
| Orange Pi Win    | 700.60  | 1854.00           |
| E8C-SWTX         | 1517.62 | 12980.00          |
| E8C-E8C4         | 1647.51 | 53563.00          |
| E8C2             | 1703.75 | 14571.94          |
| E8C2-LOW         | 1545.92 | 12420.00          |
| E2S-EL2S4        | 970.80  | 15790.00          |
| E2S-PC401        | 938.12  | 2455.00           |
| MBE1C-PC         | 1277.55 | 1312.00           |
| Pentium 4        | 1119.00 | 1119.00           |
| Pentium III      | 816.00  | 816.00            |
| Baikal T1 BFK    | 613.50  | 1227.00           |


Whetstone Single Precision, все процессоры
![Whetstone Single Precision](charts/whetstone_all_cpu.svg "Whetstone Single Precision")

Whetstone Single Precision, x86-64 и e2k процессоры
![Whetstone Single Precision](charts/whetstone_some_cpu.svg "Whetstone Single Precision")

Whetstone Single Precision, однопоточные результаты, x86-64 и e2k процессоры
![Whetstone Single Precision](charts/whetstone_some_cpu_singlecore.svg "Whetstone Single Precision Single Thread")

Whetstone Single Precision, многопоточные результаты, x86-64 и e2k процессоры
![MP Whetstone Precision Multi Core](charts/whetstone_some_cpu_multicore.svg "MP Whetstone Precision Multi Thread")

### LINPACK

| Platform         | Mflops    | 
|------------------|-----------| 
| Core i7-2600     | 4302.89   | 
| Core 2 Duo T9400 | 1816.02   | 
| AMD A6-3650      | 1750.03   | 
| Atom Z8350       | 1021.44   | 
| Raspberry PI     | 42        | 
| AWS Graviton     | 1548.65   | 
| Odroid N2        | 845.09    | 
| Odroid X2        | 268.73    | 
| Orange Pi PC2    | 163.44    | 
| Raspberry PI 3   | 180       | 
| Orange Pi Win    | 174.04    | 
| E8C-SWTX         | 1075.27   | 
| E8C-E8C4         | 1089.02   | 
| E8C2             | 1257.2375 | 
| E8C2-LOW         | 1005.79   | 
| E2S-EL2S4        | 632.51    | 
| E2S-PC401        | 674.67    | 
| MBE1C-PC         | 814.76    | 
| Pentium 4        | 840.27    | 
| Pentium III      | 316.67    | 


LINPACK 100x100 Double Precision, все процессоры
![Linpack  100x100 Double Precision](charts/linpack_100_dp_all_cpu.svg "Linpack  100x100 Double Precision")

### Coremark

| Platform         | Coremark (single thread) | Coremark (multi thread) | 
|------------------|--------------------------|-------------------------| 
| Core i7-2600     | 22692.889561             | 119670.905011           | 
| Core 2 Duo T9400 | 12481.278083             | 23950.661637            | 
| AMD A6-3650      | 11810.558639             | 41666.666667            | 
| Atom Z8350       | 6893.094373              | 23814.678502            | 
| Raspberry PI     | 1303.78                  | 1303.78                 | 
| Odroid X2        | 6109.074753              | 24162.548051            | 
| Orange Pi PC2    | 3869.719445              | 14901.279026            | 
| Raspberry PI 3   | 3841                     | 15363.93                | 
| Orange Pi Win    | 3840.983292              | 15370.821058            | 
| E8C-SWTX         | 3711                     | 28846.153846            | 
| E8C-E8C4         | 3813.640119              | 117885.430096           | 
| E8C2             | 4266.7                   | 33165.69                | 
| E8C2-LOW         | 3413.357606              | 26396.83238             | 
| E2S-EL2S4        | 2216.475803              | 34457.87231474          | 
| E2S-PC401        | 2364.24                  | 36755.06                | 
| MBE1C-PC         | 2901.49427               | 2848.318157             | 
| Pentium 4        | 5941.45                  | 5941.45                 | 
| Pentium III      | 2246.570438799           | 2246.570438799          | 
| Baikal T1        | 6182                     | 12364                   | 


Coremark, все процессоры
![Coremark](charts/coremark_all_cpu.svg "Coremark")

Coremark, однопоточные результаты, все процессоры
![Coremark Single Thread](charts/coremark_all_cpu_singlecore.svg "Coremark Single Thread")

Coremark, многопоточные результаты, все процессоры
![Coremark Multi Thread](charts/coremark_all_cpu_multicore.svg "Coremark Multi Thread")

### Memspeed

```c
(x[i] = x[i] + a * y[i])
```

```c
(x[i] = x[i] + y[i])
```

```c
(x[i] = y[i])
```


| Platform         | 16 KB `(x[i] = x[i] + a * y[i])` | 512 KB `(x[i] = x[i] + a * y[i])` | 8192 KB `(x[i] = x[i] + a * y[i])` | 16 KB `(x[i] = x[i] + y[i])` | 512 KB `(x[i] = x[i] + y[i])` | 8192 KB `(x[i] = x[i] + y[i])` | 16 KB `(x[i] = y[i])` | 512 KB `(x[i] = y[i])` | 8192 KB `(x[i] = y[i])` |
| ---------------- | -------------------------------- | --------------------------------- | ---------------------------------- | ---------------------------- | ----------------------------- | ------------------------------ | --------------------- | ---------------------- | ----------------------- |
| Core i7-2600     | 73499                            | 53366                             | 32794                              | 75334                        | 54605                         | 32432                          | 26348                 | 16541                  | 8317                    |
| Core 2 Duo T9400 | 9737                             | 14189                             | 8249                               | 18113                        | 9344                          | 8153                           | 3232                  | 5196                   | 2131                    |
| AMD A6-3650      | 40930                            | 37749                             | 8578                               | 40988                        | 36529                         | 8523                           | 13655                 | 9154                   | 2154                    |
| Raspberry PI     | 602                              | 127                               | 127                                | 731                          | 127                           | 127                            | 426                   | 111                    | 111                     |
| AWS Graviton     | 21353                            | 17418                             | 7336                               | 7344                         | 18328                         | 21796                          | 12118                 | 12120                  | 4422                    |
| Odroid N2        | 8452                             | 8214                              | 3888                               | 9876                         | 8463                          | 3966                           | 8261                  | 7260                   | 3582                    |
| Odroid X2        | 2403                             | 1464                              | 1261                               | 2543                         | 1472                          | 1271                           | 3856                  | 1324                   | 627                     |
| Orange Pi PC2    | 3490                             | 1224                              | 1039                               | 2872                         | 1179                          | 1009                           | 4902                  | 2284                   | 1261                    |
| Raspberry PI 3   | 1814                             | 1598                              | 1019                               | 2240                         | 1906                          | 954                            | 3136                  | 2783                   | 871                     |
| Orange Pi Win    | 2672                             | 1752                              | 1019                               | 2771                         | 1787                          | 1028                           | 3483                  | 3146                   | 1374                    |
| E8C-SWTX         | 37160                            | 29195                             | 24130                              | 37806                        | 29193                         | 24114                          | 19096                 | 17431                  | 14045                   |
| E8C-E8C4         | 35377                            | 27882                             | 23315                              | 35758                        | 27681                         | 23172                          | 18273                 | 16898                  | 13798                   |
| E8C2             | 41032                            | 41708                             | 33881                              | 19815                        | 12399                         | 9617                           | 6124                  | 4376                   | 3318                    |
| E8C2-LOW         | 29062                            | 34168                             | 28890                              | 30016                        | 34232                         | 28920                          | 16709                 | 18654                  | 17513                   |
| E2S-EL2S4        | 20404                            | 22714                             | 7975                               | 20662                        | 23032                         | 7809                           | 10535                 | 11483                  | 4263                    |
| E2S-PC401        | 20721                            | 22106                             | 8491                               | 10053                        | 6591                          | 2092                           | 8415                  | 6145                   | 1468                    |
| MBE1C-PC         | 28070                            | 31305                             | 5856                               | 10999                        | 11421                         | 9663                           | 5073                  | 10442                  | 1163                    |


Memspeed, Умножение-сложение с присвоением, все процессоры
![Memspeed Multiply Add Assign](charts/memspeed_mul_add_assign.svg "Memspeed Multiply Add Assign")

Memspeed, Сложение с присвоением, все процессоры
![Memspeed Add Assign](charts/memspeed_add_assign.svg "Memspeed Add Assign")

Memspeed, Присвоение, все процессоры
![Memspeed Assign](charts/memspeed_assign.svg "Memspeed  Assign")

### MP MFLOPS

2 операции
```c
x[i] = (x[i]+a)*b;
```

8 операций
```c
x[i] = (x[i]+a)*b-(x[i]+c)*d+(x[i]+e)*f;
```

32 операции
```c
x[i] = (x[i]+a)*b-(x[i]+c)*d+(x[i]+e)*f-(x[i]+g)*h+(x[i]+j)*k-(x[i]+l)*m+(x[i]+o)*p-(x[i]+q)*r+(x[i]+s)*t-(x[i]+u)*v+(x[i]+w)*y;
```

MP MFLOPS, 2 операции, все процессоры
![MP MFLOPS 2 ops/w](charts/mpmlops_all_cpu_2ops.svg "MP MFLOPS 2 ops/w")

MP MFLOPS, 8 операций, все процессоры
![MP MFLOPS 8 ops/w](charts/mpmlops_all_cpu_8ops.svg "MP MFLOPS 8 ops/w")

MP MFLOPS, 32 операции, все процессоры
![MP MFLOPS 32 ops/w](charts/mpmlops_all_cpu_32ops.svg "MP MFLOPS 32 ops/w")

