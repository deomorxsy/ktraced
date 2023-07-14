#!/usr/bin/bash

# profile the CPU after getting the PID
../assets/prep/ap-asct/profiler.sh -e cpu -d 40 -o summary $(sudo k3s crictl ps | \
    [[ grep -q "pod-name" ]] | awk 'print{ $2}' | \
    #$(read container_id; sudo k3s crictl inspect $container_id) | [[ grep -q "pid"]] | awk '{print $2}' | )
    $(read container_id; sudo k3s crictl inspect --output go-template --template '{{.info.pid}}' $container_id))


