


## Предисловие

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

Машины на процессорах e2k (Elbrus 2000) (v3, v4, v5):

* E8C-SWTX (Elbrus 8C)
* E8C-E8C4 (Elbrus 8C x4 cpu)
* E8C2 (Elbrus 8C2) (1200 MHz, 1550 MHz)
* E2S-EL2S4 (Elbrus 4C x4 cpu)
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
| E8C-E8C4         | Elbrus 8C (4 CPU)                               | 32 (8 x 4 cpu)       | 1,300.00      | e2k         |
| E8C2-1550        | Elbrus 8C2 (E8C2)                               | 8                    | 1,550.00      | e2k         |
| E8C2-1200        | Elbrus 8C2 (E8C2)                               | 8                    | 1,200.00      | e2k         |
| E2S-EL2S4        | Elbrus 4C (EL2S4) (4 CPU)                       | 16 (4 x 4 cpu)       | 750.00        | e2k         |
| E2S-PC401        | Elbrus 4C (E2S) (pc401)                         | 4                    | 800.00        | e2k         |
| MBE1C-PC         | Elbrus 1C+ (MBE1C-PC)                           | 1                    | 985.00        | e2k         |
| Pentium 4        | Intel(R) Pentium(TM) 4 CPU                      | 1                    | 3,066.00      | i386        |
| Pentium III      | Intel(R) Pentium(TM) III CPU                    | 1                    | 1,000.00      | i386        |
| Baikal T1 BFK    | Baikal-T1 (MIPS P5600 V3.0)                     | 2                    | 1,200.00      | mips        |

## Настройки компиляторов

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
| E8C2-1550        | 5357.4528                    |
| E8C2-1200        | 3554.46                      |
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
| E8C2-1550        | 1703.75 | 14571.94          |
| E8C2-1200        | 1545.92 | 12420.00          |
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
| ---------------- | --------- |
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
| E8C2-1550        | 1257.2375 |
| E8C2-1200        | 1005.79   |
| E2S-EL2S4        | 632.51    |
| E2S-PC401        | 674.67    |
| MBE1C-PC         | 814.76    |
| Pentium 4        | 840.27    |
| Pentium III      | 316.67    |


LINPACK 100x100 Double Precision, все процессоры
![Linpack  100x100 Double Precision](charts/linpack_100_dp_all_cpu.svg "Linpack  100x100 Double Precision")

### Coremark

| Platform         | Coremark (single thread) | Coremark (multi thread) |
| ---------------- | ------------------------ | ----------------------- |
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
| E8C2-1550        | 4266.7                   | 33165.69                |
| E8C2-1200        | 3413.357606              | 26396.83238             |
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
| E8C2-1550        | 41032                            | 41708                             | 33881                              | 19815                        | 12399                         | 9617                           | 6124                  | 4376                   | 3318                    |
| E8C2-1200        | 29062                            | 34168                             | 28890                              | 30016                        | 34232                         | 28920                          | 16709                 | 18654                  | 17513                   |
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

| Platform         | 2 ops/w – 102400 4B words | 2 ops/w – 1024000 4B words | 2 ops/w – 10240000 4B words | 8 ops/w – 102400 4B words | 8 ops/w – 1024000 4B words | 8 ops/w – 10240000 4B words | 32 ops/w – 102400 4B words | 32 ops/w – 1024000 4B words | 32 ops/w – 10240000 4B words |
| ---------------- | ------------------------- | -------------------------- | --------------------------- | ------------------------- | -------------------------- | --------------------------- | -------------------------- | --------------------------- | ---------------------------- |
| Core i7-2600     | 43,309.00                 | 35,180.00                  | 4,454.00                    | 83,624.00                 | 84,536.00                  | 17,643.00                   | 81,936.00                  | 82,606.00                   | 68,539.00                    |
| Core 2 Duo T9400 | 6,614.00                  | 6,501.00                   | 949.00                      | 16,025.00                 | 16,043.00                  | 3,813.00                    | 24,236.00                  | 24,129.00                   | 13,724.00                    |
| AMD A6-3650      | 16,325.00                 | 4,294.00                   | 2,226.00                    | 31,623.00                 | 17,883.00                  | 8,640.00                    | 42,202.00                  | 34,047.00                   | 26,819.00                    |
| Atom Z8350       | 5,725.00                  | 1,303.00                   | 1,052.00                    | 11,934.00                 | 5,077.00                   | 4,204.00                    | 10,665.00                  | 10,456.00                   | 10,419.00                    |
| AWS Graviton     | 61,397.00                 | 47,660.00                  | 5,169.00                    | 90,387.00                 | 94,494.00                  | 20,880.00                   | 113,635.00                 | 117,449.00                  | 81,767.00                    |
| Odroid N2        | 9,859.00                  | 1,360.00                   | 1,328.00                    | 23,657.00                 | 5,398.00                   | 5,318.00                    | 21,407.00                  | 18,311.00                   | 18,102.00                    |
| Odroid X2        | 893.00                    | 598.00                     | 620.00                      | 2,077.00                  | 1,987.00                   | 2,015.00                    | 3,276.00                   | 3,230.00                    | 3,224.00                     |
| Orange Pi PC2    | 2,737.00                  | 482.00                     | 475.00                      | 6,597.00                  | 1,909.00                   | 1,896.00                    | 6,033.00                   | 5,797.00                    | 5,826.00                     |
| Raspberry PI 3   | 1,375.00                  | 441.00                     | 435.00                      | 4,621.00                  | 1,699.00                   | 1,737.00                    | 2,081.00                   | 2,131.00                    | 2,141.00                     |
| E8C-SWTX         | 46,965.00                 | 65,423.00                  | 4,505.00                    | 98,423.00                 | 93,145.00                  | 17,994.00                   | 146,865.00                 | 160,334.00                  | 68,001.00                    |
| E8C-E8C4         | 134,841.00                | 121,759.00                 | 116,454.00                  | 193,019.00                | 279,431.00                 | 279,598.00                  | 402,357.00                 | 461,200.00                  | 378,806.00                   |
| E8C2-1550        | 66,331.25                 | 91,061.25                  | 11,448.75                   | 176,587.50                | 246,778.75                 | 45,366.25                   | 340,646.25                 | 378,225.00                  | 171,045.00                   |
| E8C2-APPROX      | 69,156.25                 | 102,478.75                 | 4,632.50                    | 125,915.00                | 151,962.50                 | 20,093.75                   | 145,292.50                 | 166,630.00                  | 73,411.25                    |
| E16C-APPROX      | 144,507.69                | 201,301.54                 | 13,861.54                   | 302,840.00                | 286,600.00                 | 55,366.15                   | 451,892.31                 | 493,335.38                  | 209,233.85                   |
| E8C2-LOW         | 53,065.00                 | 72,849.00                  | 9,159.00                    | 141,270.00                | 197,423.00                 | 36,293.00                   | 272,517.00                 | 302,580.00                  | 136,836.00                   |
| E2S-EL2S4        | 55,325.00                 | 81,983.00                  | 3,706.00                    | 100,732.00                | 121,570.00                 | 16,075.00                   | 116,234.00                 | 133,304.00                  | 58,729.00                    |
| E2S-PC401        | 16,319.00                 | 17,495.00                  | 2,998.00                    | 22,592.00                 | 17,738.00                  | 12,125.00                   | 35,782.00                  | 35,757.00                   | 24,169.00                    |
| MBE1C-PC         | 7,804.00                  | 2,103.00                   | 2,089.00                    | 10,453.00                 | 7,041.00                   | 7,003.00                    | 15,676.00                  | 15,626.00                   | 15,641.00                    |
| Pentium 4        | 355.81                    | 360.64                     | 328.44                      | 1,344.35                  | 1,315.37                   | 1,230.04                    | 1,867.60                   | 1,872.43                    | 1,875.65                     |


MP MFLOPS, 2 операции, все процессоры
![MP MFLOPS 2 ops/w](charts/mpmlops_all_cpu_2ops.svg "MP MFLOPS 2 ops/w")

MP MFLOPS, 8 операций, все процессоры
![MP MFLOPS 8 ops/w](charts/mpmlops_all_cpu_8ops.svg "MP MFLOPS 8 ops/w")

MP MFLOPS, 32 операции, все процессоры
![MP MFLOPS 32 ops/w](charts/mpmlops_all_cpu_32ops.svg "MP MFLOPS 32 ops/w")

