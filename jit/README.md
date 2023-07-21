## ktraced-jit

ap-* based scripts under hotspot stands for async-profiler, which leverages AsyncGetCallTrace API.

For a slim image build, use the Dockerfile.slimjre at the repository root.
```
; podman build -t smalljvm:jre01 -f ./Dockerfile.slimjre
; podman tag smalljvm:jre01 localhost:5000/slimjre:01
; podman push localhost:5000/slimjre:01
; podman run --rm -it --entrypoint=/bin/sh localhost:5000/slimjre:01

```

Check image size on local registry
```
; skopeo inspect docker://localhost:5000/slimjre | jq '[ .LayersData[].Size ] | add' | numfmt --to=iec-i --suffix=B
```
