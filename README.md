# ktrace

kernel tracing and language runtime profiling scripts ;D [WIP]

## BPF Portability
since epbf-related tracers may have a problem to be able to run on multiple kernel versions without modification, this repository adopts the CO-RE (Compile Once - Run Everywhere) approach to write scripts that

BPF CO-RE (Compile Once – Run Everywhere) is a modern approach to writing portable BPF applications that can run on multiple kernel versions and configurations without modifications and runtime source code compilation on the target machine

## Tracers

Main tracers
- ebpf
- ftrace (bpf-tools)
- perf (bpf-tools)

Languages
- bpftrace
- libbpf [on-hold]
- BCC [on-hold]

### oci-cri directory

OCI-CRI directory is for tracing and profiling scripts aimed to run inside an OCI containers managed by k8s CRI.

## cenv directory
cenv directory is for tracing and profiling scripts aimed to run in constrained environments such as embedded systems or lightweight containers and microVMs. Busybox OS and musl libc are expected.

### OC glossary

glossary of scripts under oci-cri directory. There are language-specific for JIT-compiled environments such as JVM, where third-party scripts inject symbols and replace the missing symbol table that is not available statically in the ELF (usually a shared object), since its generation is done in pseudo-random dynamic time.

[jvm-sp001](): Stack Profile of hotspot java virtual machine

## References
- [BPF CO-RE (Compile Once – Run Everywhere](https://nakryiko.com/posts/bpf-portability-and-co-re/)
