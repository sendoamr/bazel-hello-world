Bazel example to develop applications with multiple programming languages.

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

## Python
Build a executable  bazel-bin/python/helloWorld
```bash
bazel build //python:helloWorld
```
Run HelloWorl in python
```bash
bazel run //python:helloWorld
```




## TESTS
Build all tests
```bash
bazel test //...:all --test_output=all
```
Run Spific test
```bash
bazel test //{java|python}:helloWorldTest --test_output=all
```
