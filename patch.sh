#!/bin/sh

git clone --depth 1 --branch 20231128 https://github.com/mstorsjo/llvm-mingw.git && \
  cp Function.h.patch Utils.cpp.patch llvm-mingw && \
  cd llvm-mingw && \
  patch -p1 < ../build-llvm.sh.patch
