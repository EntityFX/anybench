# Anybench benchmarks set

**`Benchmarks:`**

* Dhrystone v 2.1
* Whetstone
* Whetstone MP
* Memspeed
* Linpack
* Lloops
* Busspeed
* MP MFlops

Already contains precompiled binaries in `bin/` directory.
So you can just 

```sh
cd src/
./run-<your_arch>.sh
```

## Configure

You can generate build and run scripts:

```sh
cd src/
./configure.sh
```

## Compile

For **arm** architecture

```sh
cd src/
./make-arm.sh
```

For **amd64** architecture

```sh
cd src/
./make-amd64.sh
```

For **e2k** architecture

```sh
cd src/
./make-e2k.sh
```

## Run

```sh
cd src/
./run-arm.sh
```

For **amd64** architecture

```sh
cd src/
./run-amd64.sh
```

For **e2k** architecture

```sh
cd src/
./run-e2k.sh
```

## Results

You can see results in `results/<your-os>/<your-arch>` direcotry.
Additional results in `src\` direcotry.


## Other benchmarks

### Whetstone Java

```sh
cd src/java
java whetstc
```

### Whetstone JavaScript (nodejs or web browser)

```sh
cd src/js
node whetstone.js
```

### Whetstone C# (mono, net framework, dotnet core)

```sh
cd bin/dotnet/mono/
mono WhetstoneNetFramework.exe
```

### Coremark for E2k (Elbrus)

```sh
cd bin/linux/e2k/
./coremark_elbrus-<your_cpu>
```
