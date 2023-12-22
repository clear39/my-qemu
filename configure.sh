#!/bin/sh

./configure \
    --target-list=x86_64-softmmu,aarch64-softmmu,riscv32-softmmu,riscv64-softmmu \
    --enable-debug \
    --enable-trace-backends=log
