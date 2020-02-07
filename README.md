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
* Coremark
* Scimark 2

Already contains precompiled binaries in `bin/` directory.
So you can just 

```sh
cd src/
./run-<your_arch>.sh
./run-coremark-<your_arch>.sh
./run-scimark2-<your_arch>.sh
```

## Configure

You can generate build and run scripts:

```sh
cd src/
./configure.sh
```

### Configure Coremark

```sh
cd src/
./configure-coremark.sh
```

### Configure Scimark 2

```sh
cd src/
./configure-coremark.sh
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

### Compile Coremark

For **arm** architecture

```sh
cd src/
./make-coremark-arm.sh
```

For **amd64** architecture

```sh
cd src/
./make-coremark-amd64.sh
```
For **e2k** architecture

```sh
cd src/
./make-coremark-e2k.sh
```

### Compile Scimark 2

For **arm** architecture

```sh
cd src/
./make-scimark2-arm.sh
```

For **amd64** architecture

```sh
cd src/
./make-scimark2-amd64.sh
```

For **e2k** architecture

```sh
cd src/
./make-scimark2-e2k.sh
```

## Run

For **arm** architecture

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

### Run Coremark

For **arm** architecture

```sh
cd src/
./run-coremark-arm.sh
```

For **amd64** architecture

```sh
cd src/
./run-coremark-amd64.sh
```

For **e2k** architecture

```sh
cd src/
./run-coremark-e2k.sh
```

### Run Scimark2

For **arm** architecture

```sh
cd src/
./run-scimark2-arm.sh
```

For **amd64** architecture

```sh
cd src/
./run-scimark2-amd64.sh
```

For **e2k** architecture

```sh
cd src/
./run-scimark2-e2k.sh
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
