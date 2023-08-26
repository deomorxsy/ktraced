%.bpf.o: %.bpf.c vmlinux.h
	clang \
		-target bpf \
		-D __TARGET_ARCH_$(ARCH) \
		-I/user/include/$(shell uname -m) -linux-gnu \
		-Wall \
		-O2 -g \
		-c $< -o $@
	llvm-strip -g $@
