#! /usr/bin/env bash
docker run -it --privileged --net=host --device /dev/dri -e DISPLAY=$DISPLAY \
-v /dev/bus/usb --rm braismtnez/dlstreamer /bin/bash

# Old version for debugging (NOT FOR USE)
# docker run -it --privileged --net=host --device /dev/dri -v ~/.Xauthority:/home/dlstreamer/.Xauthority -v /tmp/.X11-unix -e DISPLAY=$DISPLAY \
# -v /dev/bus/usb -u 0 --rm -v /home/bmartinez/workspace/dlstreamer:/home/dlstreamer intel/dlstreamer:devel /bin/bash