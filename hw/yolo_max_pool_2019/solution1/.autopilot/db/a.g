#!/bin/sh
lli=${LLVMINTERP-lli}
exec $lli \
    /home/xavier/MSc_Project/hls/yolo_conv_hls_2019/yolo_max_pool_2019/solution1/.autopilot/db/a.g.bc ${1+"$@"}
