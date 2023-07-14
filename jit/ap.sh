#!/usr/bin/bash

# open permissions
## set pep to 1 allows ap to collect perf metrics
# switch to 2 to close
sudo sh -c 'echo 1 > /proc/sys/kernel/perf_event_paranoid'
## expose kernel addresses
sudo sh -c 'echo 0 > /proc/sys/kernel/kptr_restrict'

# Install async-profiler
if [! -f "../assets/prep/ap-asct/profiler.sh" ]; then
  curl -L https://github.com/async-profiler/async-profiler/releases/download/v2.9/async-profiler-2.9-linux-musl-x64.tar.gz > ../assets/prep/ap-asct/ap.tar.gz
  tar -xfvz ../assets/prep/ap-asct/ap.tar.gz
fi


# profile the CPU after getting the PID
#../assets/prep/ap-asct/profiler.sh -e cpu -d 40 -o summary $(sudo k3s crictl ps | \
#    [[ grep -q "pod-name" ]] | awk 'print{ $2}' | \
#    $(read container-id; sudo k3s crictl inspect container-id) | [[ grep -q "pid"]])

# close permissions
#sudo sh -c 'echo 2 > /proc/sys/kernel/perf_event_paranoid'
#sudo sh -c 'echo 0 > /proc/sys/kernel/kptr_restrict'
