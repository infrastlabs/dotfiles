#!/bin/bash
cur=$(cd "$(dirname "$0")"; pwd)
cd $cur

# bargeErr>> docker: Error response from daemon: cgroups: cannot find cgroup mount destination: unknown.
  # sudo mkdir /sys/fs/cgroup/systemd
  # sudo mount -t cgroup -o none,name=systemd cgroup /sys/fs/cgroup/systemd

test -z "$IMG" && IMG=x11-base:app-alpine-3.1 #app-alpine-3.13 
test -z "$VNC_OFFSET" && VNC_OFFSET=65
test -z "$SESSION" && SESSION=xfce4-session
IMG=registry.cn-shenzhen.aliyuncs.com/infrastlabs/$IMG

# -e VNC_OFFSET: barge's docker not supported
docker pull $IMG
# ubt2204/2404: --privileged
docker run -it --rm --net=host --privileged \
  -e VNC_OFFSET=$VNC_OFFSET -e START_SESSION=$SESSION \
  -v $cur:/mnt/dotfiles $IMG bash -c "bash /mnt/dotfiles/refresh.sh; bash /entry.sh"



exit 0
# usage
export TAG=app-alpine-3.2 #app-ubuntu-20.04
export SESSION=openbox-session
bash debug.sh
