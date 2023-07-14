# ktraced
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
- BCC [on-hold]

### oci-cri
For tracing and profiling scripts aimed to run inside an OCI containers managed by k8s CRI.

## co-re
CO-RE approach to BPF scripting.

- ayaya: ...rust
- constr: Directory for tracing and profiling scripts aimed to run in constrained environments such as embedded systems or lightweight containers and microVMs. Busybox OS and musl libc expected.

## jit
Aimed for jit-compiled environments.

- hotspot: jvm hotspot scripts

## References
- [BPF CO-RE (Compile Once – Run Everywhere)](https://nakryiko.com/posts/bpf-portability-and-co-re/)
