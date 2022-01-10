# Anybench benchmarks set

## Generic benchmarks

### Content and description

* Dhrystone v 2.1
* Whetstone
* Whetstone MP - multi-thread version of classic Whetstone benchmark
* Memspeed - simple single-threaded memory speed test
* Linpack - classical computational benchmark, this is classic C version on small arrays (100x100).
* [Lloops](https://www.netlib.org/benchmark/livermorec) - Livermore loops, classic benchmark for supercomputers for late 80-s.
* [Busspeed](http://www.roylongbottom.org.uk/#anchorBusSpd2K)
* [MP MFlops](http://www.roylongbottom.org.uk/#anchorMPGFLOPS) - syntethic benchmark that tries to achieve peak FP performance on CPU. Significantly benefits from SIMD and it's highly recommended that you **modify march/mtune flag for your CPU and recompile it**
* [Coremark](https://github.com/eembc/coremark) - industry standard benchmark that stresses CPU Pipeline
* [Scimark 2](https://math.nist.gov/scimark2/index.html) - C version of classic Java scientific/computational benchmark
* [SuperPI](https://en.wikipedia.org/wiki/Super_PI) - classic software that computes Pi up to N digits.
* [STREAM](https://www.cs.virginia.edu/stream/) - multicore memory bandwidth benchmark
* [GSynth](https://github.com/EntityFX/anybench/pull/17) - contributed benchmark that evaluates CPU on audio synthesis tasks, code was taken from real-world software.

### Running

There are some already precompiled binaries in `bin/` directory.
So you can just

```sh
cd src/
./run.sh
```

However, it's highly recommended compiling your own binaries with platform-specific flags set and run them.

### Build

This repo uses git submodules, if cloning:

```shell
git clone --recurse-submodules https://github.com/EntityFX/anybench.git
```

Alternatively:
```shell
git clone https://github.com/EntityFX/anybench.git
cd anybench
git submodule update --init --recursive
```

If you want to modify compile flags, please edit corresponding `make-<arch>.sh` script and add them to corresponding parameter:
 * `targetToFlags` - script will iterate over each flag specified there and compile a single version.
 * `targetToFPU` - for the same key specified in `targetToFlags` all the flags will be used

There are separate scripts that set some optimization specific flags for particular CPU architecture. Some examples are:

#### For **arm** architecture (non-MacOS)

```shell
cd src/
./make-arm.sh
```

#### For **arm** architecture (MacOS)

```shell
cd src/
./make-mac-arm.sh
```

#### For **amd64** architecture (using default CC)
**NOTE:** By default it will try to compile binary optimized for AMD Zen2, so if your CPU is different please modify script. That might still be ok for any other modern AMD CPU (it must support AVX2) and Intel CPUs that doesn't support AVX-512.
```shell
cd src/
./make-amd64.sh
```

#### For **amd64** architecture (forcing clang)
**NOTE:** By default it will try to compile binary optimized for AMD Zen2, so if your CPU is different please modify script. That might still be ok for any other modern AMD CPU (it must support AVX2) and Intel CPUs that doesn't support AVX-512.
```shell
cd src/
./make-amd64_clang.sh
```


For **e2k** architecture

```shell
cd src/
./make-e2k.sh
```

### Results

You can see results in `results/<your-arch>` direcotry.

Please rename them to some identifiable thing before submitting. Recommended format: `<cpu-vendor>-<cpu-architecture>-<cpu-model>[-<optional-identifiers>]`

Some examples:

* `apple-arm-m1-max-perf-auto` - contains results from Apple M1 Max CPU on OSX with performance mode set to `auto`.
* `intel-x86-core_i7_2600-clang` - contains results from Intel Core i7 2600, compiled with clang.
* `nvidia-arm-tegra_xavier_t194-jetson_agx` - contains results obtained on NVidia ARM CPU Tegra T194, board Xavier AGX.


## Advanced benchmarks

Those benchmarks requires certain software or libraries installed and might be hard to run on devices like smartphones

* [HashTableBenchmark](https://github.com/unum-cloud/HashTableBenchmark) - benchmark that tries to simulate typical in-memory database patterns. Basically it benchmarks performance of several hash table implementations, like `std::unordered_map`, `tsl::sparse_map` and others.

Currently there is no pre-build binaries for advanced benchmarks, as well as currently there is no single script to build them.

### Building

#### HashTableBenchmark
This benchmark requires CMake 3.x installed and it also require internet connection to fetch it's dependencies (it uses particular commits of gtest and gbenchmark libraries).

```shell
cd src/benchmarks/advanced/HashTableBenchmark
mkdir -p build && cmake -DCMAKE_BUILD_TYPE=Release -B ./build && make -j4 -C ./build
```

### Running

#### HashTableBenchmark

You must be in repository root

```shell
mkdir -p results/$(uname -m)
src/benchmarks/advanced/HashTableBenchmark/build/build/bin/mixed_ops 2>&1 | tee results/$(uname -m)/HashTableBenchmark-mixed_ops.log
src/benchmarks/advanced/HashTableBenchmark/build/build/bin/ram_speed 2>&1 | tee results/$(uname -m)/HashTableBenchmark-ram_speed.log
```



