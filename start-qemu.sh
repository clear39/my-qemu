#!/bin/sh


../qemu/build/qemu-system-aarch64 \
	-machine virt \
        -cpu cortex-a72 \
        -M type=virt \
        -m 2048 \
        -smp 2 \
        -kernel ../linux/arch/arm64/boot/Image \
        -initrd ../linux/rootfs.cpio.gz \
        -append "rdinit=/linuxrc console=ttyAMA0" \
        -qmp tcp:localhost:4444,server,wait=off \
        -display none \
 	-device virtio-balloon 
