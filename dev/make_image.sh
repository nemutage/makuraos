#!/bin/sh -ex

qemu-img create -f raw disk.img 200M
mkfs.fat -n 'UEFI APP' -s 2 -f 2 -R 32 -F 32 disk.img
mkdir -p mnt
sudo mount -o loop disk.img mnt
sudo mkdir -p mnt/EFI/BOOT
sudo cp BOOTX64.EFI mnt/EFI/BOOT/BOOTX64.EFI
sleep 0.5
sudo umount mnt
