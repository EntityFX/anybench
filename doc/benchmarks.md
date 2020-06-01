## Предисловие

Попытка сравнить производительность процессоров на разнородных архитектурах x86-64, e2k (Эльбрус), mips и arm.

Все тесты написаны на языке C (взяты из исходных кодов, которые я не модифицировал и не оптимизировал) и компилируются под конкретную архитектуру с использованием конкретного компилятора для данной архитектуры и тесты производятся на различных дистрибутивах операционных систем на ядре Linux. На результаты может влиять как тип так и версия компилятора, а также режим оптимизаций. Хотя даже таким способом можно примерно сравнить производительность процессоров на разных архитектурах.

P.S.: Знаю, что большинство тестов для очень старых компьютеров, но они работают везде. Что даже очень неплохо.

<cut />

## Типы архитектур сравниваемых процессоров

### CISC

CISC (Complex instruction set computing) - архитектура, в которой небольшой набор регистров, команды различной длины, операции кодируются одной командой.

### RISC

RISC (Reduced instruction set computing) - процессорная архитектура, в которой инструкции упрощены и имеют фиксированную длину (например, 32 бита), что позволяет повысить производительность. Имеет большое число регистров.

### VLIW

VLIW (very long instruction word) - архитектура процессоров с очень большой инструкцией. Одна инструкция содержит в себе много простых инструкций, которые могут исполняться разными блоками процессора. Всё это сильно упрощает архитектуру, но усложняет компилятор. Неэффективный код может порождать не полностью заполненные инструкции, что сильно снижает производительность программы.

## Описание архитектур сравниваемых процессоров

### x86-64 (ia32/x86/i386/amd64/EM64T/Intel/AMD)

x86 - [CISC](https://ru.wikipedia.org/wiki/CISC) архитектура, созданная компанией Intel, о которой знают все. Современный вариант архитектуры пошёл со времён 32-битного процессора Intel 386. Крупные игроки: Intel, AMD и VIA (а ещё тут появился какой-то Zhaoxin).

### ARM

ARM - [RISC](https://ru.wikipedia.org/wiki/RISC) архитектура разрабатываемая компанией [ARM Limited](https://ru.wikipedia.org/wiki/ARM_(%D0%BA%D0%BE%D0%BC%D0%BF%D0%B0%D0%BD%D0%B8%D1%8F)) с середины 80х годов. Текущие версии 32-битных ARM ядер: armv6 (ARM1136J(F)-S), armv7 (Cortex A9, Cortex A15), armv8 (CortexA53, CortexA57, Cortex A72 и выше). Процессоры данной архитектуры широко используются в мобильных телефонах, планшетах, встраиваемых устройствах, одноплатных компьютерах. Процессоры энергоэффективные и достаточно производительные.

### MIPS

MIPS - [RISC](https://ru.wikipedia.org/wiki/RISC) система команд и микропроцессорных архитектур, разработанных компанией MIPS Computer Systems. Процессоры данной архитектуры как и ARM используются в мобильных телефонах, планшетах, встраиваемых устройствах и т.д. Но почему-то больших объёмов устройств по сравнению с ARM она не достигла. Но процессоры на архитеткуре MIPS часто можно встретить в роутерах, ну и в медиа проигрывателях, а ещё она использовалась в процессоре приставки Play Station 1. Текущие реализации: 32-битная MIPS32 и 64-битная MIPS64.


### E2K (Elbrus 2000/Эльбрус)

[VLIW](https://ru.wikipedia.org/wiki/VLIW)

## Список тестов

* [Dhrystone](https://ru.wikipedia.org/wiki/Dhrystone)
* [Whetstone](https://ru.wikipedia.org/wiki/Whetstone) 
* [LINPACK](https://ru.wikipedia.org/wiki/Linpack)
* [Coremark](https://ru.wikipedia.org/wiki/CoreMark)
* [Memspeed](http://www.roylongbottom.org.uk/memspd2k%20results.htm)
* [Livermore Loops](http://www.roylongbottom.org.uk/classic.htm)
* [MP MFLOPS](http://www.roylongbottom.org.uk/linux%20benchmarks.htm#anchor7)
* [Scimark 2](https://math.nist.gov/scimark2/download_c.html)

### Dhrystone

> Dhrystone - синтетический тест, который был написан Reinhold P. Weicker в 1984 году.
> Данный тест не использует операции с плавающей запятой, а версия 2.1 написана так, чтобы исключить возможность сильных оптимизаций при компиляции.
> Бенчмарк выдаёт результаты в VAX Dhrystones в секунду, где 1 VAX DMIPS = Dhrystones в секунду делить на 1757.

### Whetstone

> Whetstone - синтетический тест, который был написан Harold Curnow в 1972 году на языке Fortran.
> Позже был переписан на языке C Roy Longbottom. Данный тест выдаёт результаты в MWIPS,
> также промежуточные результаты в MOPS (Миллионов операций в секунду) и MFLOPS (Миллионы вещественных операций с плавающей запятой в секунду).
> Данный тест производит различные подсчёты: производительность целочисленных и операций с плавающей запятой,
> производительность операций с массивами, с условным оператором, производительность тригонометрических функций и функций возведения в степень, логарифмов и извлечения корня.

Также мной был написан тест Whetstone на языках JS (Для тестирования браузера и NodeJS) и C# (Для тестирования Mono, .Net Framework и Dotnet Core), а также я нашёл реализацию на Java.

> Whetstone MP - многопоточный вариант Whetstone.

### LINPACK

> LINPACK - тест, который был написан Jack Dongarra на языке Fortran в 70х годах, позже переписан на язык C.
> Тест считает системы линейных уравнений, делает различные операции над двумерными (матрицами) и одномерными (векторами).
> Используется реализация Linpack 100x100 с числами типа float. Реализация теста хорошо используется для оценки производительности
> различных суперкомпьютеров.

### Coremark

> Набор тестов написанных на языке C. Создан в 2009 году Shay Gal-On из компании EEMBC 
> Содержит реализации таких алгоритмов: обработка связных списков (поиск и сортировка), обработка матриц (несколько матричных операций), машина состояний (определение, что входной символьный поток содержит действительные числа в десятичной записи), подсчет суммы CRC.

### Memspeed

> Memspeed - выполняет 3 различные операции, над 64-битными числами с плавающей запятой двойной точности, 32-битными с плавающей запятой одинарной точности and 32-битными целыми над 2мя массивами:
> * Сумма с регистром   r = r + x [m] * y[m] (Integer + y [m])
> * Сумма в память      x[m] = x[m] + y[m]                    
> * Память в память     x[m] = y[m]  

### Livermore Loops

> тест для суперкомпьютеров, появился в 1970, изначально содержал 14 тестов на языке Fortran. Далее тестов было увеличено до 24 в 1980'е. Производительность измеряется в Миллионах Операций Чисел с Плавающей Точкой в Секунду или  MFLOPS. 
> тест проверяет точно вычислений в конце. Основная цель - избежать простых операций над числами, 24 теста выполняются 3 раза в цикле Do-loop и вычисляют производительность на короткими, средними и большими последовательностями чисел.

### MP MFLOPS

> MP MFLOPS - многопоточный тест, который считает большое число операций над большими массивами. 
> Выполняет операцию вида `x[i] = (x[i] + a) * b - (x[i] + c) * d + (x[i] + e) * f` с 2, 8 или 32 на 1 инструкцию. Размер массива 0.1, 1 или 10 миллионов 4 байтовых слов с плавающей точкой с одинарной точностью.
> Грузит ваш процессор по полной.

### Scimark 2

> SciMark 2 - набор тестов на языке C измеряющий производительность кода встречающегося в научных и профессиональных приложениях. Содержит в себе 5 вычислительных тестов: FFT (быстрое преобразование Фурье), Gauss-Seidel relaxation (Метод Гаусса — Зейделя для решения СЛАУ), Sparse matrix-multiply (Умножение разреженных матриц), Monte Carlo integration (Интегрирование методом Монте-Карло), и LU factorization (LU-разложение).

## Тестовые стенды и их процессоры

Стенды на процессорах x86 (i386) х86-64 (amd64):

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


Стенды на процессорах armv6 (armel), armv7 (armhf), armv8 (aarch64):

* [Odroid N2 (Amlogic S922X)](https://wiki.odroid.com/odroid-n2/hardware)
* [Odroid X2 (Samsung Exynos 4412)](https://www.hardkernel.com/shop/odroid-x2/)
* [Orange Pi PC2 (Allwinner H5)](http://www.orangepi.org/orangepipc2/)
* [Orange Pi Win (Allwinner A64)](http://www.orangepi.org/OrangePiWinPlus/0)
* [Raspberry PI 3 (Broadcom BCM2837B0)](https://www.raspberrypi.org/products/raspberry-pi-3-model-b/)
* [Raspberry PI (Broadcom BCM2835)](https://www.raspberrypi.org/products/raspberry-pi-1-model-b-plus/)
* [AWS Graviton (Alpine AL73400)](https://en.wikichip.org/wiki/annapurna_labs/alpine/al73400)

Стенды на процессорах e2k (Elbrus 2000) (v3, v4, v5):

* [E8C-SWTX (Elbrus 8C)](http://www.mcst.ru/elbrus-8c)
* [E8C-E8C4 (Elbrus 8C x4 cpu)](http://www.ineum.ru/elbrus_804_1u0)
* [E8C2 (Elbrus 8C2) (1200 MHz, 1550 MHz)](http://www.mcst.ru/elbrus-8cb)
* [E2S-EL2S4 (Elbrus 4C x4 cpu)](http://www.ineum.ru/vk-elbrus-401pc)
* [E2S-PC401 (Elbrus 4C)](http://www.ineum.ru/vk-elbrus-401pc)
* [MBE1C-PC (Elbrus 1C+)](http://www.ineum.ru/elbrus_101-pc)

Стенды на процессорах MIPS :

* [Baikal T1 BFK](http://www.baikalelectronics.ru/products/35/) 

### Таблица с тестовыми стендами

| Стенд            | Модель процессора                                | Всего ядер (потоков) | Частота (МГц) | Архитектура |
| ---------------- | ------------------------------------------------ | -------------------- | ------------- | ----------- |
| Xeon 6128        | Intel(R) Xeon(R) Gold 6128 CPU @ 3.40GHz (2 CPU) | 12 (6/12)            | 3,400.00      | amd64       |
| Core i7-4700MQ   | Intel(R) Core(TM) i7-4700MQ CPU @ 2.40GHz        | 8 (4/8)              | 2,400.00      | amd64       |
| Core i7-2600     | Intel(R) Core(TM) i7-2600 CPU @ 3.40GHz          | 8 (4/8)              | 3,400.00      | amd64       |
| Core 2 Duo T9400 | Intel(R) Core(TM) 2 Duo CPU    T9400  @ 2.53GHz  | 2                    | 2,530.00      | amd64       |
| Core i3-m330     | Intel(R) Core(TM) i3 CPU       M 330  @ 2.13GHz  | 4   (2/4)            | 2,133.00      | amd64       |
| Atom Z8350       | Intel(R) Atom(TM) x5-Z8350 CPU @ 1.44GHz         | 4                    | 1,440.00      | amd64       |
| AMD A6-3650      | AMD A6-3650 APU with Radeon(tm) HD Graphics      | 4                    | 2,600.00      | amd64       |
| Pentium M725     | Intel(R) Pentium(TM) M 725 @ 1600                | 1                    | 1,600.00      | i386        |
| Pentium 4        | Intel(R) Pentium(TM) 4 CPU                       | 1                    | 3,066.00      | i386        |
| Pentium III      | Intel(R) Pentium(TM) III CPU                     | 1                    | 1,000.00      | i386        |
| AWS Graviton     | Alpine AL73400                                   | 16                   | 2,300.00      | aarch64     |
| Odroid N2        | Amlogic S922X                                    | 6                    | 1,800.00      | aarch64     |
| Odroid X2        | Samsung Exynos 4412 (armv7l)                     | 4                    | 1,700.00      | arm         |
| Orange Pi PC2    | Allwinner H5 (aarch64)                           | 4                    | 1,152.00      | aarch64     |
| Orange Pi Win    | Allwinner A64 (aarch64)                          | 4                    | 1,344.00      | aarch64     |
| Raspberry PI 3   | Broadcom BCM2837B0 (armv8)                       | 4                    | 1,200.00      | aarch64     |
| Raspberry PI     | Broadcom BCM2835                                 | 1                    | 700.00        | arm         |
| E16C-APPROX!     | Elbrus 16  [Планируемый]                         | 16                   | 2,000.00      | e2k         |
| E8C2-1550        | Elbrus 8C2 (E8C2)                                | 8                    | 1,550.00      | e2k         |
| E8C2-1200        | Elbrus 8C2 (E8C2)                                | 8                    | 1,200.00      | e2k         |
| E8C-SWTX         | Elbrus 8C (E8C-SWTX)                             | 8                    | 1,300.00      | e2k         |
| E8C-E8C4         | Elbrus 8C (4 CPU)                                | 32 (8 x 4 cpu)       | 1,300.00      | e2k         |
| E2S-EL2S4        | Elbrus 4C (EL2S4) (4 CPU)                        | 16 (4 x 4 cpu)       | 750.00        | e2k         |
| E2S-PC401        | Elbrus 4C (E2S) (pc401)                          | 4                    | 800.00        | e2k         |
| MBE1C-PC         | Elbrus 1C+ (MBE1C-PC)                            | 1                    | 985.00        | e2k         |
| Baikal T1 BFK    | Baikal-T1 (MIPS P5600 V3.0)                      | 2                    | 1,200.00      | mips        |

## Настройки компиляторов

Для всех тестов пробовались разные комбинации флагов, для того чтобы определить наилучшее значение тестов.

| Компилятор | Флаги                                 | Архитектура |
| ---------- | ------------------------------------- | ----------- |
| gcc        | -O2, -O3, -Ofast; -march              | X86-64      |
| gcc        | -O2, -O3, -Ofast, -mfpu=neon; -march  | ARM         |
| lcc        | -O2, -O3, -O4, -ffast -fwhole; -march | E2K         |

## Результаты тестов

### Dhrystone


Таблица с результатами Dhrystone в 1 поток:

|Platform        |CPU                                             |Cores|Frequency (MHz)|Architecture|Dhrystones (VAX)|Dhrystones на 1 Мгц|Относительно Core i7-2600|
|----------------|------------------------------------------------|-----|---------------|------------|----------------|-------------------|-------------------------|
|Orange Pi Win   |Allwinner A64 (aarch64)                         |4    |1344           |aarch64     |2370            |1.76               |0.11                     |
|Raspberry PI 3  |Broadcom BCM2837B0 (armv8)                      |4    |1200           |aarch64     |2469            |2.06               |0.11                     |
|Orange Pi PC2   |Allwinner H5 (aarch64)                          |4    |1152           |aarch64     |2949.12         |2.56               |0.13                     |
|Odroid N2       |Amlogic S922X                                   |6    |1800           |aarch64     |8230            |4.57               |0.37                     |
|AWS Graviton    |Alpine AL73400                                  |16   |2300           |aarch64     |11377.63        |4.95               |0.52                     |
|Atom Z8350      |Intel(R) Atom(TM) x5-Z8350 CPU @ 1.44GHz        |4    |1440           |amd64       |4677.3          |3.25               |0.21                     |
|Core i3-m330    |Intel(R) Core(TM) i3 CPU       M 330  @ 2.13GHz |4    |2133           |amd64       |10919.4         |5.12               |0.49                     |
|AMD A6-3650     |AMD A6-3650 APU with Radeon(tm) HD Graphics     |4    |2600           |amd64       |11455.81        |4.41               |0.52                     |
|Core 2 Duo T9400|Intel(R) Core(TM) 2 Duo CPU     T9400  @ 2.53GHz|2    |2530           |amd64       |13308.91        |5.26               |0.6                      |
|Core i7-2600    |Intel(R) Core(TM) i7-2600 CPU @ 3.40GHz         |8    |3400           |amd64       |22076.97        |6.49               |1                        |
|Core i7-4700MQ  |Intel(R) Core(TM) i7-4700MQ CPU @ 2.40GHz       |8    |2400           |amd64       |22987.48        |9.58               |1.04                     |
|Xeon 6128       |Intel(R) Xeon(R) Gold 6128 CPU @ 3.40GHz (2 CPU)|24   |3400           |amd64       |25195.31        |7.41               |1.14                     |
|Raspberry PI    |Broadcom BCM2835                                |1    |700            |arm         |847             |1.21               |0.04                     |
|Odroid X2       |Samsung Exynos 4412 (armv7l)                    |4    |1700           |arm         |4495.03         |2.64               |0.2                      |
|E8C2            |Elbrus 8C2 (E8C2)                               |8    |1500           |e2k         |8974.78         |5.98               |0.41                     |
|E2S-EL2S4       |Elbrus 4C [EL2S4] (4 CPU)                       |16   |750            |e2k         |3329.51         |4.44               |0.15                     |
|E2S-PC401       |Elbrus 4C [E2S] (pc401)                         |4    |800            |e2k         |3548.8          |4.44               |0.16                     |
|E8C2-1200       |Elbrus 8C2 (Broken 8MB Cache 1.2 GHz)           |8    |1200           |e2k         |3554.46         |2.96               |0.16                     |
|MBE1C-PC        |Elbrus 1C+ (MBE1C-PC)                           |1    |985            |e2k         |4302.53         |4.37               |0.19                     |
|E8C2-1550       |Elbrus 8C2 (E8C2 1550 MHz)                      |8    |1550           |e2k         |5357.45         |3.46               |0.24                     |
|E8C-E8C4        |Elbrus 8C (4 CPU)                               |32   |1300           |e2k         |5844.82         |4.5                |0.26                     |
|E8C-SWTX        |Elbrus 8C (E8C-SWTX)                            |8    |1300           |e2k         |7779.44         |5.98               |0.35                     |
|E16C-APPROX!    |Elbrus 16                                       |16   |2000           |e2k         |11965           |5.98               |0.54                     |
|Pentium M725    |Pentium M725                                    |1    |1600           |i386        |1085.68         |0.68               |0.05                     |
|Pentium III     |Intel(R) Pentium(TM) III CPU                    |1    |1000           |i386        |1595            |1.6                |0.07                     |
|Pentium 4       |Intel(R) Pentium(TM) 4 CPU                      |1    |3066           |i386        |4012            |1.31               |0.18                     |
|Baikal T1 BFK   |Baikal-T1 (MIPS P5600 V3.0)                     |2    |1200           |mips        |3650            |3.04               |0.17                     |


Dhrystone, все процессоры:

![Dhrystone Benchmark, Version 2.1](https://github.com/EntityFX/anybench/raw/master/doc/charts/dhrystones.png "Dhrystone Benchmark, Version 2.1")

Dhrystone, на 1 МГц:

![Dhrystone Benchmark, Version 2.1, Per 1 MHz](https://github.com/EntityFX/anybench/raw/master/doc/charts/dhrystones_per_mhz.png "Dhrystone Benchmark, Version 2.1, Per 1 MHz")

Dhrystone, относительно Core i7-2600:

![Dhrystone Benchmark, Version 2.1, Relative](https://github.com/EntityFX/anybench/raw/master/doc/charts/dhrystones_relative.png "Dhrystone Benchmark, Version 2.1, Relative")

Здесь видно, что в тесте Dhrystone процессоры x86 заметно быстрее arm и Эльбрус процессоров. Производительность 1 ядра Эльбрус 8С (E8C) сравнима с ядром Cortex A72, если сравнивать относительно Dhrystones на 1 МГц, Эльбрус 8С чуть быстрее Atom Z8350 относительно Dhrystones на 1 МГц. Производительность Baikal T1 сравнима с ядром Arm Cortex A9. Странно себя показал Эльбрус 8СВ, который с большой частотой оказался медленнее Эльбрус 8С. В МЦСТ мне ответили, что этот экземпляр тестовый и компилятор немного не доработан под данную версию, возможно с другим экземпляром тесты окажутся гораздо лучше.


### Whetstone

|Platform        |CPU                                             |Cores|Frequency (MHz)|Architecture|MWIPS   |MWIPS MP|MWIPS на 1 Мгц (однопоточный)|MWIPS на 1 Мгц (многопоточный)|Относительно Core i7-2600|Относительно Core i7-2600 (mp)|
|----------------|------------------------------------------------|-----|---------------|------------|--------|--------|-----------------------------|------------------------------|-------------------------|------------------------------|
|Orange Pi Win   |Allwinner A64 (aarch64)                         |4    |1344           |aarch64     |700.6   |1854    |0.52                         |1.38                          |0.12                     |0.06                          |
|Orange Pi PC2   |Allwinner H5 (aarch64)                          |4    |1152           |aarch64     |980.26  |3798    |0.85                         |3.3                           |0.17                     |0.12                          |
|Raspberry PI 3  |Broadcom BCM2837B0 (armv8)                      |4    |1200           |aarch64     |997.2   |2779.8  |0.83                         |2.32                          |0.17                     |0.09                          |
|Odroid N2       |Amlogic S922X                                   |6    |1800           |aarch64     |2136.98 |9931    |1.19                         |5.52                          |0.37                     |0.32                          |
|AWS Graviton    |Alpine AL73400                                  |16   |2300           |aarch64     |2851.8  |44741   |1.24                         |19.45                         |0.5                      |1.43                          |
|Atom Z8350      |Intel(R) Atom(TM) x5-Z8350 CPU @ 1.44GHz        |4    |1440           |amd64       |2085.24 |6636    |1.45                         |4.61                          |0.36                     |0.21                          |
|Core i3-m330    |Intel(R) Core(TM) i3 CPU       M 330  @ 2.13GHz |4    |2133           |amd64       |2824.97 |8837    |1.32                         |4.14                          |0.49                     |0.28                          |
|Core 2 Duo T9400|Intel(R) Core(TM) 2 Duo CPU     T9400  @ 2.53GHz|2    |2530           |amd64       |2910.33 |5195    |1.15                         |2.05                          |0.51                     |0.17                          |
|AMD A6-3650     |AMD A6-3650 APU with Radeon(tm) HD Graphics     |4    |2600           |amd64       |3718.16 |12113   |1.43                         |4.66                          |0.65                     |0.39                          |
|Core i7-4700MQ  |Intel(R) Core(TM) i7-4700MQ CPU @ 2.40GHz       |8    |2400           |amd64       |5326.9  |35234   |2.22                         |14.68                         |0.93                     |1.13                          |
|Core i7-2600    |Intel(R) Core(TM) i7-2600 CPU @ 3.40GHz         |8    |3400           |amd64       |5729.52 |31319   |1.69                         |9.21                          |1                        |1                             |
|Xeon 6128       |Intel(R) Xeon(R) Gold 6128 CPU @ 3.40GHz (2 CPU)|24   |3400           |amd64       |5850.41 |123854  |1.72                         |36.43                         |1.02                     |3.95                          |
|Raspberry PI    |Broadcom BCM2835                                |1    |700            |arm         |270.5   |270.5   |0.39                         |0.39                          |0.05                     |0.01                          |
|Odroid X2       |Samsung Exynos 4412 (armv7l)                    |4    |1700           |arm         |1305.16 |4291    |0.77                         |2.52                          |0.23                     |0.14                          |
|E2S-PC401       |Elbrus 4C [E2S] (pc401)                         |4    |800            |e2k         |938.12  |2455    |1.17                         |3.07                          |0.16                     |0.08                          |
|E2S-EL2S4       |Elbrus 4C [EL2S4] (4 CPU)                       |16   |750            |e2k         |970.8   |15790   |1.29                         |21.05                         |0.17                     |0.5                           |
|MBE1C-PC        |Elbrus 1C+ (MBE1C-PC)                           |1    |985            |e2k         |1277.55 |1312    |1.3                          |1.33                          |0.22                     |0.04                          |
|E8C-SWTX        |Elbrus 8C (E8C-SWTX)                            |8    |1300           |e2k         |1748.37 |13818   |1.34                         |10.63                         |0.31                     |0.44                          |
|E8C2-1200       |Elbrus 8C2 (Broken 8MB Cache 1.2 GHz)           |8    |1200           |e2k         |1545.92 |12420   |1.29                         |10.35                         |0.27                     |0.4                           |
|E8C-E8C4        |Elbrus 8C (4 CPU)                               |32   |1300           |e2k         |1647.51 |53563   |1.27                         |41.2                          |0.29                     |1.71                          |
|E8C2-1550       |Elbrus 8C2 (E8C2 1550 MHz)                      |8    |1550           |e2k         |1703.75 |14571.94|1.1                          |9.4                           |0.3                      |0.47                          |
|E8C2            |Elbrus 8C2 (E8C2)                               |8    |1500           |e2k         |2037.62 |16194   |1.36                         |10.8                          |0.36                     |0.52                          |
|E16C-APPROX!    |Elbrus 16                                       |16   |2000           |e2k         |2717    |43184   |1.36                         |21.59                         |0.47                     |1.38                          |
|Pentium M725    |Pentium M725                                    |1    |1600           |i386        |506.94  |506.94  |0.32                         |0.32                          |0.09                     |0.02                          |
|Pentium III     |Intel(R) Pentium(TM) III CPU                    |1    |1000           |i386        |816     |816     |0.82                         |0.82                          |0.14                     |0.03                          |
|Pentium 4       |Intel(R) Pentium(TM) 4 CPU                      |1    |3066           |i386        |1119    |1119    |0.36                         |0.36                          |0.2                      |0.04                          |
|Baikal T1 BFK   |Baikal-T1 (MIPS P5600 V3.0)                     |2    |1200           |mips        |613.5   |1227    |0.51                         |1.02                          |0.11                     |0.04                          |


Whetstone Single Precision, все процессоры

![Whetstone Single Precision](https://github.com/EntityFX/anybench/raw/master/doc/charts/whetstones.png "Whetstone Single Precision")

Whetstone Single Precision, многопоточные результаты

![MP Whetstone Precision Multi Core](https://github.com/EntityFX/anybench/raw/master/doc/charts/whetstones_mp.png "MP Whetstone Precision Multi Thread")

Whetstone Single Precision, на 1 МГц

![Whetstone Single Precision](https://github.com/EntityFX/anybench/raw/master/doc/charts/whetstones_per_mhz.png "Whetstone Single Precision, Per 1 MHz")

Whetstone Single Precision, многопоточные результаты, на 1 МГц

![MP Whetstone Precision Multi Core, Per 1 MHz](https://github.com/EntityFX/anybench/raw/master/doc/charts/whetstones_mp_per_mhz.png "MP Whetstone Precision Multi Thread, Per 1 MHz")

Whetstone Single Precision, относительно Core i7-2600

![Whetstone Single Precision](https://github.com/EntityFX/anybench/raw/master/doc/charts/whetstones_relative.png "Whetstone Single Precision Single Thread Relative")

Whetstone Single Precision, многопоточные результаты, относительно Core i7-2600

![MP Whetstone Precision Multi Core Relative](https://github.com/EntityFX/anybench/raw/master/doc/charts/whetstones_mp_relative.png "MP Whetstone Precision Multi Thread Relative")


Мы видим, что процессоры ARM v7 на архитектуре ядра Cortex A9 сопоставимы с процессорами Pentium III, если сравнивать частоту на 1 Мгц.
Далее, процессоры ARM v8 на архитектуре ядра Cortex A72 сравнимы с процессорами Core 2 Duo T9400 на 1 ядро и 1 МГц, но немного не дотягивают
до Atom Z8350. А ещё очень хорошо видно, что архитектура процессора Pentium 4 (NetBurst) была очень слабой и чтобы им быть более
менее производительными, нужно было иметь высокую частоту (Pentium III был более производительным на 1 МГц).
Все процессоры Эльбрус сопоставимы с Core 2 Duo T9400 на 1 ядро и относительно 1 МГц и ARM v7 Cortex A72, что уже лучше.

#### Whetstone: разные рантаймы и языки программирования

|Platform        |CPU                                             |Cores|Frequency (MHz)|Architecture|MWIPS   |MWIPS MP|MWIPS mono|MWIPS netcore|MWIPS java|MWIPS js|
|----------------|------------------------------------------------|-----|---------------|------------|--------|--------|----------|-------------|----------|--------|
|Orange Pi Win   |Allwinner A64 (aarch64)                         |4    |1344           |aarch64     |700.6   |1854    |          |359          |          |102.18  |
|Orange Pi PC2   |Allwinner H5 (aarch64)                          |4    |1152           |aarch64     |980.26  |3798    |349.357   |400.242      |          |172.81  |
|Raspberry PI 3  |Broadcom BCM2837B0 (armv8)                      |4    |1200           |aarch64     |997.2   |2779.8  |          |             |183.43    |        |
|Core 2 Duo T9400|Intel(R) Core(TM) 2 Duo CPU     T9400  @ 2.53GHz|2    |2530           |amd64       |2910.33 |5195    |1565.27   |1992.405     |          |        |
|AMD A6-3650     |AMD A6-3650 APU with Radeon(tm) HD Graphics     |4    |2600           |amd64       |3718.16 |12113   |1607.52   |1823.615     |2127.9    |2098.08 |
|Core i7-2600    |Intel(R) Core(TM) i7-2600 CPU @ 3.40GHz         |8    |3400           |amd64       |5729.52 |31319   |2751.545  |3262.258     |          |        |
|Odroid X2       |Samsung Exynos 4412 (armv7l)                    |4    |1700           |arm         |1305.16 |4291    |256.837   |650.114      |          |        |
|MBE1C-PC        |Elbrus 1C+ (MBE1C-PC)                           |1    |985            |e2k         |1277.55 |1312    |388.324   |             |390.89    |        |
|E8C-SWTX        |Elbrus 8C (E8C-SWTX)                            |8    |1300           |e2k         |1517.62 |12980   |522.988   |             |1036.59   |35.3    |
|E8C-E8C4        |Elbrus 8C (4 CPU)                               |32   |1300           |e2k         |1647.51 |53563   |521.697   |             |1022.26   |35.1    |



### LINPACK 100x100 DP (однопоточный)

Существуют LINPACK 1000x1000, High Performance LINPACK, LINPACK 100x100.
Но был выбран LINPACK 100x100 DP, почему? Причина проста: данный тест легко собирается на разных архитектурах и время тестирования очень небольшое.

И тут сразу переходим к результатам тестирования:

|Platform        |CPU                                             |Cores|Frequency (MHz)|Architecture|Linpack |На 1 Мгц|Относительно Core i7-2600 (однопоточный)|Относительно Core i7-2600 (1 Мгц)|
|----------------|------------------------------------------------|-----|---------------|------------|--------|--------|----------------------------------------|---------------------------------|
|AMD A6-3650     |AMD A6-3650 APU with Radeon(tm) HD Graphics     |4    |2600           |amd64       |1750.03 |0.67    |1.71                                    |0.95                             |
|Atom Z8350      |Intel(R) Atom(TM) x5-Z8350 CPU @ 1.44GHz        |4    |1440           |amd64       |1021.44 |0.71    |1                                       |1                                |
|AWS Graviton    |Alpine AL73400                                  |16   |2300           |aarch64     |1548.65 |0.67    |1.52                                    |0.95                             |
|Baikal T1 BFK   |Baikal-T1 (MIPS P5600 V3.0)                     |2    |1200           |mips        |0       |0       |0                                       |0                                |
|Core 2 Duo T9400|Intel(R) Core(TM) 2 Duo CPU     T9400  @ 2.53GHz|2    |2530           |amd64       |1816.02 |0.72    |1.78                                    |1.01                             |
|Core i3-m330    |Intel(R) Core(TM) i3 CPU       M 330  @ 2.13GHz |4    |2133           |amd64       |2155.62 |1.01    |2.11                                    |1.42                             |
|Core i7-2600    |Intel(R) Core(TM) i7-2600 CPU @ 3.40GHz         |8    |3400           |amd64       |4302.89 |1.27    |4.21                                    |1.78                             |
|Core i7-4700MQ  |Intel(R) Core(TM) i7-4700MQ CPU @ 2.40GHz       |8    |2400           |amd64       |4915.84 |2.05    |4.81                                    |2.89                             |
|E16C-APPROX!    |Elbrus 16                                       |16   |2000           |e2k         |1675.41538461538|0.84    |1.64                                    |1.18                             |
|E2S-EL2S4       |Elbrus 4C [EL2S4] (4 CPU)                       |16   |750            |e2k         |632.51  |0.84    |0.62                                    |1.19                             |
|E2S-PC401       |Elbrus 4C [E2S] (pc401)                         |4    |800            |e2k         |674.677333333333|0.84    |0.66                                    |1.19                             |
|E8C2            |Elbrus 8C2 (E8C2)                               |8    |1500           |e2k         |1257.2375|0.84    |1.23                                    |1.18                             |
|E8C2-1200       |Elbrus 8C2 (Broken 8MB Cache 1.2 GHz)           |8    |1200           |e2k         |1005.79 |0.84    |0.98                                    |1.18                             |
|E8C2-1550       |Elbrus 8C2 (E8C2 1550 MHz)                      |8    |1550           |e2k         |1269.79 |0.82    |1.24                                    |1.15                             |
|E8C-E8C4        |Elbrus 8C (4 CPU)                               |32   |1300           |e2k         |1089.02 |0.84    |1.07                                    |1.18                             |
|E8C-SWTX        |Elbrus 8C (E8C-SWTX)                            |8    |1300           |e2k         |1075.27 |0.83    |1.05                                    |1.17                             |
|MBE1C-PC        |Elbrus 1C+ (MBE1C-PC)                           |1    |985            |e2k         |814.76  |0.83    |0.8                                     |1.17                             |
|Odroid N2       |Amlogic S922X                                   |6    |1800           |aarch64     |845.09  |0.47    |0.83                                    |0.66                             |
|Odroid X2       |Samsung Exynos 4412 (armv7l)                    |4    |1700           |arm         |268.73  |0.16    |0.26                                    |0.22                             |
|Orange Pi PC2   |Allwinner H5 (aarch64)                          |4    |1152           |aarch64     |163.44  |0.14    |0.16                                    |0.2                              |
|Orange Pi Win   |Allwinner A64 (aarch64)                         |4    |1344           |aarch64     |174.04  |0.13    |0.17                                    |0.18                             |
|Pentium 4       |Intel(R) Pentium(TM) 4 CPU                      |1    |3066           |i386        |840.27  |0.27    |0.82                                    |0.39                             |
|Pentium III     |Intel(R) Pentium(TM) III CPU                    |1    |1000           |i386        |316.67  |0.32    |0.31                                    |0.45                             |
|Pentium M725    |Pentium M725                                    |1    |1600           |i386        |338.82  |0.21    |0.33                                    |0.3                              |
|Raspberry PI    |Broadcom BCM2835                                |1    |700            |arm         |42      |0.06    |0.04                                    |0.08                             |
|Raspberry PI 3  |Broadcom BCM2837B0 (armv8)                      |4    |1200           |aarch64     |180     |0.15    |0.18                                    |0.21                             |
|Xeon 6128       |Intel(R) Xeon(R) Gold 6128 CPU @ 3.40GHz (2 CPU)|24   |3400           |amd64       |6105.95 |1.8     |5.98                                    |2.53                             |



LINPACK 100x100 Double Precision, все процессоры
![Linpack 100x100 Double Precision](https://github.com/EntityFX/anybench/raw/master/doc/charts/linpack.png "Linpack 100x100 Double Precision")

LINPACK 100x100 Double Precision, на 1 МГц
![Linpack 100x100 Double Precision, Per 1 MHz](https://github.com/EntityFX/anybench/raw/master/doc/charts/linpack_per_mhz.png "Linpack 100x100 Double Precision, Per 1 MHz")

LINPACK 100x100 Double Precision, относительно Core i7-2600
![Linpack 100x100 Double Precision, Relative to Core i7-2600](https://github.com/EntityFX/anybench/raw/master/doc/charts/linpack_relative.png "Linpack 100x100 Double Precision, Relative to Core i7-2600")

Cнова сравним  Mflops'ы на 1 МГц на 1 ядро.

Ядра ARM v7 Cortex A9 (Odroid X2), ARM v8 Cortex A53 (Raspberry PI 3, Orange Pi Win, Orange Pi PC2 ) показывают слабый результат, даже слабее Pentium III, что даже кажется немного странным. Ядра ARM v8 Cortex A72 (Odroid N2, AWS Graviton [Alpine AL73400]) держатся почти на уровне Core 2 Duo T9400 и Atom Z8350 и это отлично. 

Эльбрусы E2K (Все модели: E1C+, E4C, E8C1, E8C2 ) показывают одинаковый результат и сильно обгоняют ARM процессоры, даже ядра Cortex A72, но проигрывают в 1,5 - 2 раза современным процессорам Intel, хотя они обгоняют AMD A6-3650 и Core 2 Duo T9400. Эльбрусам не хватает высокой тактовой частоты, чтобы приблизиться к процессорам Intel.

### Coremark

|Platform        |CPU                                             |Cores|Frequency (MHz)|Architecture|Coremark (однопоточный)|Coremark (многопоточный)|Coremark на 1 Мгц (однопоточный)|Coremark на 1 Мгц (многопоточный)|Относительно Core i7-2600 (однопоточный)|Относительно Core i7-2600 (многопоточный)|
|----------------|------------------------------------------------|-----|---------------|------------|-----------------------|------------------------|--------------------------------|---------------------------------|----------------------------------------|-----------------------------------------|
|AWS Graviton    |Alpine AL73400                                  |16   |2300           |aarch64     |0                      |0                       |0                               |0                                |0                                       |0                                        |
|Odroid N2       |Amlogic S922X                                   |6    |1800           |aarch64     |0                      |0                       |0                               |0                                |0                                       |0                                        |
|Orange Pi Win   |Allwinner A64 (aarch64)                         |4    |1344           |aarch64     |3840.98                |15370.82                |2.86                            |11.44                            |0.17                                    |0.13                                     |
|Raspberry PI 3  |Broadcom BCM2837B0 (armv8)                      |4    |1200           |aarch64     |3841                   |15363.93                |3.2                             |12.8                             |0.17                                    |0.13                                     |
|Orange Pi PC2   |Allwinner H5 (aarch64)                          |4    |1152           |aarch64     |3869.72                |14901.28                |3.36                            |12.94                            |0.17                                    |0.12                                     |
|Atom Z8350      |Intel(R) Atom(TM) x5-Z8350 CPU @ 1.44GHz        |4    |1440           |amd64       |6893.09                |23814.68                |4.79                            |16.54                            |0.3                                     |0.2                                      |
|Core i3-m330    |Intel(R) Core(TM) i3 CPU       M 330  @ 2.13GHz |4    |2133           |amd64       |9980.95                |24252.71                |4.68                            |11.37                            |0.44                                    |0.2                                      |
|AMD A6-3650     |AMD A6-3650 APU with Radeon(tm) HD Graphics     |4    |2600           |amd64       |11810.56               |41666.67                |4.54                            |16.03                            |0.52                                    |0.35                                     |
|Core 2 Duo T9400|Intel(R) Core(TM) 2 Duo CPU     T9400  @ 2.53GHz|2    |2530           |amd64       |12481.28               |23950.66                |4.93                            |9.47                             |0.55                                    |0.2                                      |
|Core i7-2600    |Intel(R) Core(TM) i7-2600 CPU @ 3.40GHz         |8    |3400           |amd64       |22692.89               |119670.91               |6.67                            |35.2                             |1                                       |1                                        |
|Core i7-4700MQ  |Intel(R) Core(TM) i7-4700MQ CPU @ 2.40GHz       |8    |2400           |amd64       |24295.43               |123260.23               |10.12                           |51.36                            |1.07                                    |1.03                                     |
|Xeon 6128       |Intel(R) Xeon(R) Gold 6128 CPU @ 3.40GHz (2 CPU)|24   |3400           |amd64       |28210.73               |670625.22               |8.3                             |197.24                           |1.24                                    |5.6                                      |
|Raspberry PI    |Broadcom BCM2835                                |1    |700            |arm         |1303.78                |1303.78                 |1.86                            |1.86                             |0.06                                    |0.01                                     |
|Odroid X2       |Samsung Exynos 4412 (armv7l)                    |4    |1700           |arm         |6109.07                |24162.55                |3.59                            |14.21                            |0.27                                    |0.2                                      |
|E2S-EL2S4       |Elbrus 4C [EL2S4] (4 CPU)                       |16   |750            |e2k         |2216.48                |34457.87                |2.96                            |45.94                            |0.1                                     |0.29                                     |
|E2S-PC401       |Elbrus 4C [E2S] (pc401)                         |4    |800            |e2k         |2364.24                |36755.06                |2.96                            |45.94                            |0.1                                     |0.31                                     |
|MBE1C-PC        |Elbrus 1C+ (MBE1C-PC)                           |1    |985            |e2k         |2901.49                |2848.32                 |2.95                            |2.89                             |0.13                                    |0.02                                     |
|E8C2-1200       |Elbrus 8C2 (Broken 8MB Cache 1.2 GHz)           |8    |1200           |e2k         |3413.36                |26396.83                |2.84                            |22                               |0.15                                    |0.22                                     |
|E8C-SWTX        |Elbrus 8C (E8C-SWTX)                            |8    |1300           |e2k         |3711                   |28846.15                |2.85                            |22.19                            |0.16                                    |0.24                                     |
|E8C-E8C4        |Elbrus 8C (4 CPU)                               |32   |1300           |e2k         |3813.64                |117885.43               |2.93                            |90.68                            |0.17                                    |0.99                                     |
|E8C2            |Elbrus 8C2 (E8C2)                               |8    |1500           |e2k         |4266.7                 |33165.69                |2.84                            |22.11                            |0.19                                    |0.28                                     |
|E8C2-1550       |Elbrus 8C2 (E8C2 1550 MHz)                      |8    |1550           |e2k         |4359.51                |34485.24                |2.81                            |22.25                            |0.19                                    |0.29                                     |
|E16C-APPROX!    |Elbrus 16                                       |16   |2000           |e2k         |5625.18                |88994.16                |2.81                            |44.5                             |0.25                                    |0.74                                     |
|Pentium M725    |Pentium M725                                    |1    |1600           |i386        |2018.44                |2018.44                 |1.26                            |1.26                             |0.09                                    |0.02                                     |
|Pentium III     |Intel(R) Pentium(TM) III CPU                    |1    |1000           |i386        |2246.57                |2246.57                 |2.25                            |2.25                             |0.1                                     |0.02                                     |
|Pentium 4       |Intel(R) Pentium(TM) 4 CPU                      |1    |3066           |i386        |5941.45                |5941.45                 |1.94                            |1.94                             |0.26                                    |0.05                                     |
|Baikal T1       |Baikal-T1 (MIPS P5600 V3.0)                     |2    |1200           |mips        |6182                   |12364                   |5.15                            |10.3                             |0.27                                    |0.1                                      |



Coremark, однопоточные результаты, все процессоры
![Coremark](https://github.com/EntityFX/anybench/raw/master/doc/charts/coremark.png "Coremark")

Coremark, многопоточные результаты, все процессоры
![Coremark Multi Thread](https://github.com/EntityFX/anybench/raw/master/doc/charts/coremark_mp.png "Coremark Multi Thread")

Coremark, однопоточные результаты, на 1 МГц
![Coremark, Per 1 MHz](https://github.com/EntityFX/anybench/raw/master/doc/charts/coremark_per_mhz.png "Coremark, Per 1 MHz")

Coremark, многопоточные результаты, на 1 МГц
![Coremark Multi Thread, Per 1 MHz](https://github.com/EntityFX/anybench/raw/master/doc/charts/coremark_mp_per_mhz.png "Coremark Multi Thread, Per 1 MHz")

Coremark, однопоточные результаты, относительно Core i7-2600
![Coremark, Relative to Core i7-2600](https://github.com/EntityFX/anybench/raw/master/doc/charts/coremark_relative.png "Coremark, Relative to Core i7-2600")

Coremark, многопоточные результаты, относительно Core i7-2600
![Coremark Multi Thread, Relative to Core i7-2600](https://github.com/EntityFX/anybench/raw/master/doc/charts/coremark_mp_relative.png "Coremark Multi Thread, Relative to Core i7-2600")

В этом тесте ядра Эльбрус на 1 МГц оказываются немного слабее ядер ARM (Cortex A9, Cortex A53) и в 3 раза слабее современных ядер Intel (Core i7-2600 ),
ядра ARM (Cortex A9, Cortex A53) почти что на уровне Atom Z8350, Core 2 Duo T9400 и AMD A6-3650. Процессор Baikal T1 немного обгоняет  Atom Z8350, Core 2 Duo T9400 и AMD A6-3650,
а в реальных частотах он на уровне Atom Z8350.

### Memspeed (однопоточный)

```c
(x[i] = x[i] + a * y[i])
```

```c
(x[i] = x[i] + y[i])
```

```c
(x[i] = y[i])
```


|Platform        |CPU                                             |Cores|Frequency (MHz)|Architecture|16 KB, x[m]=x[m]+s\*y[m] Sngl|512 KB, x[m]=x[m]+s\*y[m] Sngl|8192 KB, x[m]=x[m]+s\*y[m] Sngl|16 KB, x[m]=x[m]+y[m] Sngl|512 KB, x[m]=x[m]+y[m] Sngl|8192 KB, x[m]=x[m]+y[m] Sngl|16 KB, x[m]=y[m] Sngl|512 KB, x[m]=y[m] Sngl|8192 KB, x[m]=y[m] Sngl|
|----------------|------------------------------------------------|-----|---------------|------------|----------------------------|-----------------------------|------------------------------|--------------------------|---------------------------|----------------------------|---------------------|----------------------|-----------------------|
|Orange Pi PC2   |Allwinner H5 (aarch64)                          |4    |1152           |aarch64     |1311                        |1224                         |1039                          |2872                      |1179                       |1009                        |4902                 |2284                  |1261                   |
|Raspberry PI 3  |Broadcom BCM2837B0 (armv8)                      |4    |1200           |aarch64     |1324                        |1598                         |1019                          |2240                      |1906                       |954                         |3136                 |2783                  |871                    |
|Orange Pi Win   |Allwinner A64 (aarch64)                         |4    |1344           |aarch64     |1598                        |1752                         |1019                          |2771                      |1787                       |1028                        |3483                 |3146                  |1374                   |
|Odroid N2       |Amlogic S922X                                   |6    |1800           |aarch64     |8452                        |8214                         |3888                          |9876                      |8463                       |3966                        |8261                 |7260                  |3582                   |
|AWS Graviton    |Alpine AL73400                                  |16   |2300           |aarch64     |21353                       |17418                        |7336                          |7344                      |18328                      |21796                       |12118                |12120                 |4422                   |
|Atom Z8350      |Intel(R) Atom(TM) x5-Z8350 CPU @ 1.44GHz        |4    |1440           |amd64       |17395                       |14596                        |5208                          |17415                     |14356                      |5219                        |10075                |5598                  |1365                   |
|Core 2 Duo T9400|Intel(R) Core(TM) 2 Duo CPU     T9400  @ 2.53GHz|2    |2530           |amd64       |20403                       |14189                        |8249                          |18113                     |9344                       |8153                        |3232                 |5196                  |2131                   |
|Core i3-m330    |Intel(R) Core(TM) i3 CPU       M 330  @ 2.13GHz |4    |2133           |amd64       |22267                       |12837                        |4636                          |22396                     |13193                      |4996                        |10774                |8340                  |2387                   |
|AMD A6-3650     |AMD A6-3650 APU with Radeon(tm) HD Graphics     |4    |2600           |amd64       |40906                       |37749                        |8578                          |40988                     |36529                      |8523                        |13655                |9154                  |2154                   |
|Core i7-4700MQ  |Intel(R) Core(TM) i7-4700MQ CPU @ 2.40GHz       |8    |2400           |amd64       |52992                       |29816                        |17618                         |59299                     |30982                      |18371                       |40254                |16127                 |9605                   |
|Xeon 6128       |Intel(R) Xeon(R) Gold 6128 CPU @ 3.40GHz (2 CPU)|24   |3400           |amd64       |57653                       |51351                        |26334                         |57982                     |52292                      |26638                       |45452                |37370                 |13360                  |
|Core i7-2600    |Intel(R) Core(TM) i7-2600 CPU @ 3.40GHz         |8    |3400           |amd64       |75172                       |53366                        |32794                         |75334                     |54605                      |32432                       |26348                |16541                 |8317                   |
|Raspberry PI    |Broadcom BCM2835                                |1    |700            |arm         |127                         |127                          |127                           |731                       |127                        |127                         |426                  |111                   |111                    |
|Odroid X2       |Samsung Exynos 4412 (armv7l)                    |4    |1700           |arm         |2364                        |1464                         |1261                          |2543                      |1472                       |1271                        |3856                 |1324                  |627                    |
|E16C-APPROX!    |Elbrus 16                                       |16   |2000           |e2k         |0                           |0                            |0                             |0                         |0                          |0                           |0                    |0                     |0                      |
|MBE1C-PC        |Elbrus 1C+ (MBE1C-PC)                           |1    |985            |e2k         |13327                       |31305                        |5856                          |10999                     |11421                      |9663                        |5073                 |10442                 |1163                   |
|E2S-EL2S4       |Elbrus 4C [EL2S4] (4 CPU)                       |16   |750            |e2k         |21463                       |22714                        |7975                          |20662                     |23032                      |7809                        |10535                |11483                 |4263                   |
|E2S-PC401       |Elbrus 4C [E2S] (pc401)                         |4    |800            |e2k         |22896                       |22106                        |8491                          |10053                     |6591                       |2092                        |8415                 |6145                  |1468                   |
|E8C2-1200       |Elbrus 8C2 (Broken 8MB Cache 1.2 GHz)           |8    |1200           |e2k         |34626                       |34168                        |28890                         |30016                     |34232                      |28920                       |16709                |18654                 |17513                  |
|E8C-E8C4        |Elbrus 8C (4 CPU)                               |32   |1300           |e2k         |37065                       |27882                        |23315                         |35758                     |27681                      |23172                       |18273                |16898                 |13798                  |
|E8C-SWTX        |Elbrus 8C (E8C-SWTX)                            |8    |1300           |e2k         |37092                       |29195                        |24130                         |37806                     |29193                      |24114                       |19096                |17431                 |14045                  |
|E8C2            |Elbrus 8C2 (E8C2)                               |8    |1500           |e2k         |41032                       |41708                        |33881                         |19815                     |12399                      |9617                        |6124                 |4376                  |3318                   |
|E8C2-1550       |Elbrus 8C2 (E8C2 1550 MHz)                      |8    |1550           |e2k         |44195                       |41990                        |36299                         |39990                     |42034                      |36355                       |21901                |23589                 |21518                  |
|Pentium 4       |Intel(R) Pentium(TM) 4 CPU                      |1    |3066           |i386        |0                           |0                            |0                             |0                         |0                          |0                           |0                    |0                     |0                      |
|Pentium III     |Intel(R) Pentium(TM) III CPU                    |1    |1000           |i386        |0                           |0                            |0                             |0                         |0                          |0                           |0                    |0                     |0                      |
|Pentium M725    |Pentium M725                                    |1    |1600           |i386        |1915                        |1530                         |844                           |2348                      |1670                       |850                         |1866                 |1145                  |420                    |
|Baikal T1 BFK   |Baikal-T1 (MIPS P5600 V3.0)                     |2    |1200           |mips        |0                           |0                            |0                             |0                         |0                          |0                           |0                    |0                     |0                      |


Memspeed, Умножение-сложение с присвоением, все процессоры
![Memspeed Multiply Add Assign](https://github.com/EntityFX/anybench/raw/master/doc/charts/memspeed_mul_add_ass.png "Memspeed Multiply Add Assign")

Memspeed, Сложение с присвоением, все процессоры
![Memspeed Add Assign](https://github.com/EntityFX/anybench/raw/master/doc/charts/memspeed_add_ass.png "Memspeed Add Assign")

Memspeed, Присвоение, все процессоры
![Memspeed Assign](https://github.com/EntityFX/anybench/raw/master/doc/charts/memspeed_ass.png "Memspeed  Assign")

Как мы знаем, на скорость работы с памятью играют частота работы с памятью, размеры кеша и латентность.

Процессоры ARM (Cortex A9, Cortex A53) имеют медленную подсистему памяти, AWS Graviton обгоняет их в несколько раз (что и логично, так как это серверный процессор).
Процессоры Эльбрус немного отстают от современных процессоров Intel так как имеют намного меньшую тактовую частоту (в 3 раза). Также можно заметить что процессор Эльбрус 8СВ немного быстрее
процессора Эльбрус 8С за счёт того, что используется память DDR4-2400. 

### MP MFLOPS

Примеры операций, которые выполняет данный тест:

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

|Platform        |CPU                                             |Cores|Frequency (MHz)|Architecture|2 ops/w – 102400 4B words|2 ops/w – 1024000 4B words|2 ops/w – 10240000 4B words|8 ops/w – 102400 4B words|8 ops/w – 1024000 4B words|8 ops/w – 10240000 4B words|32 ops/w – 102400 4B words|32 ops/w – 1024000 4B words|32 ops/w – 10240000 4B words|Geom Mean|Relative geom mean|
|----------------|------------------------------------------------|-----|---------------|------------|-------------------------|--------------------------|---------------------------|-------------------------|--------------------------|---------------------------|--------------------------|---------------------------|----------------------------|---------|------------------|
|Atom Z8350      |Intel(R) Atom(TM) x5-Z8350 CPU @ 1.44GHz        |4    |1440           |amd64       |5725                     |1303                      |1052                       |11934                    |5077                      |4204                       |10665                     |10456                      |10419                       |5097.15  |0.58              |
|Core 2 Duo T9400|Intel(R) Core(TM) 2 Duo CPU     T9400  @ 2.53GHz|2    |2530           |amd64       |6614                     |6501                      |949                        |16025                    |16043                     |3813                       |24236                     |24129                      |13724                       |8813.97  |1                 |
|Core i3-m330    |Intel(R) Core(TM) i3 CPU       M 330  @ 2.13GHz |4    |2133           |amd64       |7256                     |3089                      |2177                       |22321                    |12217                     |8613                       |25115                     |23494                      |17535                       |10191.13 |1.16              |
|AMD A6-3650     |AMD A6-3650 APU with Radeon(tm) HD Graphics     |4    |2600           |amd64       |16325                    |4294                      |2226                       |31623                    |17883                     |8640                       |42202                     |34047                      |26819                       |14558.51 |1.65              |
|Core i7-2600    |Intel(R) Core(TM) i7-2600 CPU @ 3.40GHz         |8    |3400           |amd64       |43309                    |35180                     |4454                       |83624                    |84536                     |17643                      |81936                     |82606                      |68539                       |41836.45 |4.75              |
|Core i7-4700MQ  |Intel(R) Core(TM) i7-4700MQ CPU @ 2.40GHz       |8    |2400           |amd64       |44608                    |39682                     |4836                       |81235                    |80026                     |19272                      |77071                     |77474                      |72623                       |42630.84 |4.84              |
|Xeon 6128       |Intel(R) Xeon(R) Gold 6128 CPU @ 3.40GHz (2 CPU)|24   |3400           |amd64       |120605                   |141059                    |104776                     |274886                   |306624                    |283395                     |329607                    |343556                     |339301                      |227553.87|25.82             |
|Orange Pi Win   |Allwinner A64 (aarch64)                         |4    |1344           |arm         |0                        |0                         |0                          |0                        |0                         |0                          |0                         |0                          |0                           |0        |0                 |
|Raspberry PI    |Broadcom BCM2835                                |1    |700            |arm         |44                       |43                        |31                         |96                       |88                        |79.5                       |192                       |176                        |159                         |84.15    |0.01              |
|Raspberry PI 3  |Broadcom BCM2837B0 (armv8)                      |4    |1200           |arm         |1375                     |441                       |435                        |4621                     |1699                      |1737                       |2081                      |2131                       |2141                        |1480.41  |0.17              |
|Odroid X2       |Samsung Exynos 4412 (armv7l)                    |4    |1700           |arm         |893                      |598                       |620                        |2077                     |1987                      |2015                       |3276                      |3230                       |3224                        |1656.53  |0.19              |
|Orange Pi PC2   |Allwinner H5 (aarch64)                          |4    |1152           |arm         |2737                     |482                       |475                        |6597                     |1909                      |1896                       |6033                      |5797                       |5826                        |2438.51  |0.28              |
|Odroid N2       |Amlogic S922X                                   |6    |1800           |arm         |9859                     |1360                      |1328                       |23657                    |5398                      |5318                       |21407                     |18311                      |18102                       |7612.03  |0.86              |
|AWS Graviton    |Alpine AL73400                                  |16   |2300           |arm         |61397                    |47660                     |5169                       |90387                    |94494                     |20880                      |113635                    |117449                     |81767                       |52331.76 |5.94              |
|MBE1C-PC        |Elbrus 1C+ (MBE1C-PC)                           |1    |985            |e2k         |7804                     |2103                      |2089                       |10453                    |7041                      |7003                       |15676                     |15626                      |15641                       |7414.24  |0.84              |
|E2S-PC401       |Elbrus 4C [E2S] (pc401)                         |4    |800            |e2k         |16319                    |17495                     |2998                       |22592                    |17738                     |12125                      |35782                     |35757                      |24169                       |17153.89 |1.95              |
|E2S-EL2S4       |Elbrus 4C [EL2S4] (4 CPU)                       |16   |750            |e2k         |55325                    |81983                     |3706                       |100732                   |121570                    |16075                      |116234                    |133304                     |58729                       |52463.62 |5.95              |
|E8C-SWTX        |Elbrus 8C (E8C-SWTX)                            |8    |1300           |e2k         |46965                    |65423                     |4505                       |98423                    |93145                     |17994                      |146865                    |160334                     |68001                       |53607.67 |6.08              |
|E8C2-1200       |Elbrus 8C2 (Broken 8MB Cache 1.2 GHz)           |8    |1200           |e2k         |53065                    |72849                     |9159                       |141270                   |197423                    |36293                      |272517                    |302580                     |136836                      |90429.35 |10.26             |
|E8C2            |Elbrus 8C2 (E8C2)                               |8    |1500           |e2k         |78414.1935483871         |87892.2580645161          |8612.90322580645           |236270.322580645         |209708.709677419          |35186.1290322581           |319533.870967742          |325615.161290323           |136266.774193548            |104351.91|11.84             |
|E8C2-1550       |Elbrus 8C2 (E8C2 1550 MHz)                      |8    |1550           |e2k         |81028                    |90822                     |8900                       |244146                   |216699                    |36359                      |330185                    |336469                     |140809                      |107830.3 |12.23             |
|E8C-E8C4        |Elbrus 8C (4 CPU)                               |32   |1300           |e2k         |134841                   |121759                    |116454                     |193019                   |279431                    |279598                     |402357                    |461200                     |378806                      |233035.8 |26.44             |
|E16C-APPROX!     |Elbrus 16                                       |16   |2000           |e2k         |209104.516129032         |234379.35483871           |22967.7419354839           |630054.193548387         |559223.225806452          |93829.6774193548           |852090.322580645          |868307.096774194           |363378.064516129            |278271.75|31.57             |
|Pentium III     |Intel(R) Pentium(TM) III CPU                    |1    |1000           |i386        |0                        |0                         |0                          |0                        |0                         |0                          |0                         |0                          |0                           |0        |0                 |
|Pentium M725    |Pentium M725                                    |1    |1600           |i386        |309                      |304                       |243                        |309                      |304                       |243                        |408                       |409                        |406                         |320.12   |0.04              |
|Pentium 4       |Intel(R) Pentium(TM) 4 CPU                      |1    |3066           |i386        |355.81                   |360.64                    |328.44                     |1344.35                  |1315.37                   |1230.04                    |1867.6                    |1872.43                    |1875.65                     |945.04   |0.11              |
|Baikal T1 BFK   |Baikal-T1 (MIPS P5600 V3.0)                     |2    |1200           |mips        |0                        |0                         |0                          |0                        |0                         |0                          |0                         |0                          |0                           |0        |0                 |


MP MFLOPS, все процессоры
![MP MFLOPS](https://github.com/EntityFX/anybench/raw/master/doc/charts/mpmflops.png "MP MFLOPS")

MP MFLOPS, все процессоры, 2 ops/w
![MP MFLOPS, 2 ops/w](https://github.com/EntityFX/anybench/raw/master/doc/charts/mpmflops_2ops.png "MP MFLOPS, 2 ops/w")

MP MFLOPS, все процессоры, 8 ops/w
![MP MFLOPS, 8 ops/w](https://github.com/EntityFX/anybench/raw/master/doc/charts/mpmflops_8ops.png "MP MFLOPS, 8 ops/w")

MP MFLOPS, все процессоры, 32 ops/w
![MP MFLOPS, 32 ops/w](https://github.com/EntityFX/anybench/raw/master/doc/charts/mpmflops_32ops.png "MP MFLOPS, 32 ops/w")

MP MFLOPS, все процессоры, относительно Core i7-2600
![MP MFLOPS](https://github.com/EntityFX/anybench/raw/master/doc/charts/mpmflops_relative.png "MP MFLOPS")

MP MFLOPS, все процессоры, максимальные MFLOPS
![MP MFLOPS MAX](https://github.com/EntityFX/anybench/raw/master/doc/charts/mpmflops_max.png "MP MFLOPS MAX")


Вот здесь процессоры Эльбрус показывают свою превосходство над всеми другими архитектурами: способность выполнять большое число операций за такт (архитектура VLIW).
Процессор 8СВ набирает 378 ГФлопс (Теоретически 576) на 32х операциях. Core i7-2600 - 82.6 ГФлопс.
Процессоры на ARM выдают всего 23.7 ГФлопс (Для Cortex A72, Odroid N2), AWS Graviton - 117 ГФлопс, за счёт 16ти ядер.

### Scimark 2 (однопоточный)


|Platform        |Composite Score                                 |FFT|SOR |MonteCarlo|Sparse matmult|LU  |CPU |Cores|Frequency (MHz)|На 1 Мгц|Относительно Core i7-2600 (однопоточный)|Относительно Core i7-2600 (1 Мгц)|Architecture|
|----------------|------------------------------------------------|---|----|----------|--------------|----|----|-----|---------------|--------|----------------------------------------|---------------------------------|------------|
|Orange Pi Win   |169.22                                          |150.49|276.78|76.72     |166.98        |175.11|Allwinner A64 (aarch64)|4    |1344           |0.13    |0.33                                    |0.36                             |aarch64     |
|Orange Pi PC2   |191.59                                          |147.36|283.1|64.07     |185.46        |277.94|Allwinner H5 (aarch64)|4    |1152           |0.17    |0.38                                    |0.47                             |aarch64     |
|Atom Z8350      |509.44                                          |267.6|719.12|178.04    |497.19        |885.27|Intel(R) Atom(TM) x5-Z8350 CPU @ 1.44GHz|4    |1440           |0.35    |1                                       |1                                |amd64       |
|Core i3-m330    |1002.61                                         |759.27|967.15|290.85    |933.71        |2062.08|Intel(R) Core(TM) i3 CPU       M 330  @ 2.13GHz|4    |2133           |0.47    |1.97                                    |1.33                             |amd64       |
|AMD A6-3650     |1028.44                                         |775.83|989.81|344.97    |1272.17       |1759.44|AMD A6-3650 APU with Radeon(tm) HD Graphics|4    |2600           |0.4     |2.02                                    |1.12                             |amd64       |
|Core 2 Duo T9400|1051.93                                         |720.56|1201.02|307.36    |1119.72       |1911|Intel(R) Core(TM) 2 Duo CPU     T9400  @ 2.53GHz|2    |2530           |0.42    |2.06                                    |1.18                             |amd64       |
|Core i7-2600    |1800                                            |1517.97|1636.33|515.34    |1981.74       |3348.64|Intel(R) Core(TM) i7-2600 CPU @ 3.40GHz|8    |3400           |0.53    |3.53                                    |1.5                              |amd64       |
|Core i7-4700MQ  |2071.26                                         |1693.12|1599.69|568.17    |2148.4        |4346.91|Intel(R) Core(TM) i7-4700MQ CPU @ 2.40GHz|8    |2400           |0.86    |4.07                                    |2.44                             |amd64       |
|Xeon 6128       |2427.42                                         |2011.19|1564.17|753.09    |2878.47       |4930.18|Intel(R) Xeon(R) Gold 6128 CPU @ 3.40GHz (2 CPU)|24   |3400           |0.71    |4.76                                    |2.02                             |amd64       |
|MBE1C-PC        |379.23                                          |174.82|364.42|97.02     |132.92        |1126.98|Elbrus 1C+ (MBE1C-PC)|1    |985            |0.39    |0.74                                    |1.09                             |e2k         |
|E8C2-1200       |469.46                                          |212.71|446.05|118.25    |166.34        |1403.94|Elbrus 8C2 (Broken 8MB Cache 1.2 GHz)|8    |1200           |0.39    |0.92                                    |1.11                             |e2k         |
|E8C2-1550       |472.24                                          |266.7|501.81|84.95     |304.82        |1202.94|Elbrus 8C2 (E8C2 1550 MHz)|8    |1550           |0.3     |0.93                                    |0.86                             |e2k         |
|E8C-SWTX        |511.43                                          |235.71|481.74|132.23    |186.18        |1521.26|Elbrus 8C (E8C-SWTX)|8    |1300           |0.39    |1                                       |1.11                             |e2k         |



Scimark 2, однопоточные результаты, все процессоры
![Scimark 2](https://github.com/EntityFX/anybench/raw/master/doc/charts/scimark2.png "Scimark 2")

## Выводы

![Performance, Relative to Core i7-2600](https://github.com/EntityFX/anybench/raw/master/doc/charts/performance_relative.png "Общая производительность, относительно Core i7-2600")

ARM процессоры уровня Cortex A9, Cortex A53 на уровне слабого Intel Atom, Pentium 4.
ARM процессоры уровня Cortex A72 уже приближаются к процессорам Intel Core.

Процессоры Эльбрус в основном быстрее процессоров ARM, но медленнее Intel Core из-за
маленькой тактовой частоты и могут работать намного быстрее, если программа под них хорошо оптимизированна, но в будущем надеемся, что компилятор lcc будет ещё лучше доработан.

## P.S.

Спасибо команде из Телеграм чата: e2k_chat и людям с форума ixbt, которые помогли мне протестировать недостающие Эльбрусы.

Спасибо своим коллегам, которые предоставили мне некоторые одноплатные компьютеры на процессорах ARM.

[**Исходники и результаты**](https://github.com/EntityFX/anybench)

Не стесняйтесь, присылайте мне свои результаты.

### Ссылки

[Таблица ODS с результатами](https://github.com/EntityFX/anybench/raw/master/results.ods)

1. [Исходники, результаты и диаграммы](https://github.com/EntityFX/anybench) 
2. [Сайт Роя Лонгботтома, откуда было взято большинство исходников и часть результатов](http://www.roylongbottom.org.uk/)
3. [Набор ссылок на бенчмарки Эльбрусов от Михаила Шигорина](https://www.altlinux.org/%D0%AD%D0%BB%D1%8C%D0%B1%D1%80%D1%83%D1%81/%D1%82%D0%B5%D1%81%D1%82%D1%8B)
4. [Independent Tests of Baikal-T1](https://habr.com/ru/post/440888/)

### Бонус

[Код MP MFLOPS на ассемблере Эльбрус](https://github.com/EntityFX/anybench/blob/master/asm/e2k/mpmflops.S)

[Список мнемоник Эльбрус'а](https://github.com/EntityFX/anybench/blob/master/asm/e2k/mnemonics.md)