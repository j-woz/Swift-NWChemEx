#!/bin/bash
set -eu

# RUN LOCAL

PATH=/home/wozniak/Public/sfw/bebop/login/swift-t-2018-05-16/stc/bin:$PATH

# Only needed to find e.g. C++ -based packages
export SWIFT_PATH=$PWD

nice swift-t $*
