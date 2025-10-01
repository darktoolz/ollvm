#!/bin/sh

set -x

git clone --depth 1 --branch 20231128 https://github.com/mstorsjo/llvm-mingw.git && \
  cp *.patch llvm-mingw/ && \
  cd llvm-mingw && \
  patch -p1 < build-llvm.sh.patch && \
  patch -p1 < Dockerfile.patch
