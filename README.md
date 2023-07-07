# ktrace
Kernel tracing and language runtime profiling scripts ;D [WIP]

## BPF Portability
Since epbf-related tracers may have a problem to be able to run on multiple kernel versions without modification, this repository adopts the CO-RE (Compile Once - Run Everywhere) approach to write some scripts.

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


## References
- [BPF CO-RE (Compile Once – Run Everywhere](https://nakryiko.com/posts/bpf-portability-and-co-re/)
