### vmlinux prep

For BPF CO-RE, the kernel exposes all kernel types (even the ones not included in ```kernel-devel``` package [?]) for the authoritative BTF information, in a self-describing manner, with sysfs, located at ```/sys/kernel/btf/vmlinux```. Run the bashscript and get the header.
