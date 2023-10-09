#!/bin/sh -ex

DEV_DIR=$(dirname "$0")

$DEV_DIR/make_image.sh
qemu-system-x86_64 -drive if=pflash,file=$DEV_DIR/OVMF.fd -hda disk.img
