FROM ubuntu:24.04

ARG CMAKE_VERSION=3.30.5
ARG GOOGLETEST_VERSION=1.15.2
ARG NUM_JOBS=8

ENV DEBIAN_FRONTEND=noninteractive

# Install package dependencies
RUN apt-get update && apt-get install -y --no-install-recommends \
        build-essential \
        software-properties-common \
        autoconf \
        automake \
        libtool \
        pkg-config \
        ca-certificates \
        locales \
        locales-all \
        python3 \
        python3-dev \
        python3-pip \
        python3-setuptools \
        wget \
        git && \
    apt-get clean

# System locale
# Important for UTF-8
ENV LC_ALL=en_US.UTF-8
ENV LANG=en_US.UTF-8
ENV LANGUAGE=en_US.UTF-8

# Install CMake
RUN cd /tmp && \
    wget https://github.com/Kitware/CMake/releases/download/v${CMAKE_VERSION}/cmake-${CMAKE_VERSION}-linux-x86_64.sh && \
    bash cmake-${CMAKE_VERSION}-linux-x86_64.sh --prefix=/usr/local --exclude-subdir --skip-license && \
    rm -rf /tmp/*

# Install GoogleTest
RUN cd /tmp && \
    wget https://github.com/google/googletest/archive/refs/tags/v${GOOGLETEST_VERSION}.tar.gz && \
    tar -xzf v${GOOGLETEST_VERSION}.tar.gz && \
    cd googletest-${GOOGLETEST_VERSION} && \
    mkdir build && \
    cd build && \
    cmake .. && \
    make -j${NUM_JOBS} && \
    make install && \
    rm -rf /tmp/*
