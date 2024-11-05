# GoogleTest CMake Examples

## Introduction

This repository contains examples of how to build GoogleTest examples using CMake and how to run GoogleTest examples using CTest.

## Usages

### Build Docker Images

To build the custom Docker image, please run the following command.

```bash
$ GOOGLETEST_VERSION=1.15.2
$ docker build -f docker/googletest.Dockerfile --build-arg GOOGLETEST_VERSION=${GOOGLETEST_VERSION} --tag googletest:${GOOGLETEST_VERSION} .
```

### Run Docker Container

To run the custom Docker container, please run the following command.

```bash
$ GOOGLETEST_VERSION=1.15.2
$ docker run -it --rm --gpus device=0 -v $(pwd):/mnt googletest:${GOOGLETEST_VERSION}
```

### Build GoogleTest Examples

To build the GoogleTest examples, please run the following command.

```bash
$ cmake -B build
$ cmake --build build --config Release --parallel
```

### Run GoogleTest Examples

To run the GoogleTest examples, please run the following command.

```bash
$ ctest --test-dir build/ --verbose
```
