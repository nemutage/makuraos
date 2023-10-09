all: BOOTX64.EFI

BOOTX64.EFI: main.o
	lld-link -subsystem:efi_application -entry:efi_main -out:$@ $<

%.o: %.c
	clang -target x86_64-pc-win32-coff -o $@ -c $<

.PHONY: run
run: BOOTX64.EFI
	../dev/run_qemu.sh

clean:
	rm -f *.o
	rm -f BOOTX64.EFI
	rm -f disk.img
	rm -rf mnt
