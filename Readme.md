## Install 
Do you need install in your machine bazel <https://www.bazel.build/>

## Java
Build a jar bazel-bin/java/helloWorld.jar
```bash
bazel build executable //java:helloWorld
```
Run HelloWorl in java
```bash
bazel run //java:helloWorld
```

## Node.js
Build a executable  bazel-bin/node/helloWorld_bin.sh
```bash
bazel build //node:helloWorld
```
Run HelloWorl in node.js
```bash
bazel run //node:helloWorld
```

## Python
Build a executable  bazel-bin/python/helloWorld
```bash
bazel build //python:helloWorld
```
Run HelloWorl in python
```bash
bazel run //python:helloWorld
```

## Shell
Build a executable  bazel-bin/shell/helloWorld
```bash
bazel build //shell:helloWorld
```
Run HelloWorl in shell
```bash
bazel run //shell:helloWorld
```

## Go
Build a executable bazel-bin/go/linux_amd64_stripped/helloWorld
```bash
bazel build //go:helloWorld
```
Run HelloWorl in go
```bash
bazel run //go:helloWorld
```

## C
Build a executable bazel-bin/c/helloWorld
```bash
bazel build //c:helloWorld
```
Run HelloWorl in c
```bash
bazel run //c:helloWorld
```