#!/bin/bash
set -eu

# RUN LOCAL

PATH=/home/wozniak/Public/sfw/bebop/login/swift-t-2018-05-16/stc/bin:$PATH

nice swift-t $*
