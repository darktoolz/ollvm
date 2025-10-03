#!/bin/sh

set -x

git clone --depth 1 --branch 20240619 https://github.com/mstorsjo/llvm-mingw && \
  git clone -b main https://github.com/sr-tream/obfuscator && \
  cp *.patch obfuscator/obfuscator.patch llvm-mingw && \
  cd llvm-mingw && \
  patch -p1 < Dockerfile.patch && \
  patch -p1 < build-llvm.sh.patch
