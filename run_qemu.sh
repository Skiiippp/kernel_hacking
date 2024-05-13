#!/bin/bash

stty intr ^]
qemu-system-x86_64 -kernel linux/arch/x86/boot/bzImage -boot c -m 512 -hda buildroot/output/images/rootfs.ext4 -append "root=/dev/sda rw console=ttyS0" -serial stdio -display none
