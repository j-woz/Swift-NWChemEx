#!/bin/bash
set -eu

# RUN LOCAL

PATH=/home/wozniak/Public/sfw/bebop/login/swift-t-2018-05-22/stc/bin:$PATH

# Only needed to find e.g. Tcl/C++ -based packages
export SWIFT_PATH=$PWD

# Only needed to find e.g. Python/C++ -based modules
export PYTHONPATH=$PWD

PY=/soft/anaconda3/5.0.0/envs/tensorflow
PATH=$PY/bin:$PATH
export LD_LIBRARY_PATH=$PY/lib
export PYTHONHOME=$PY
# export PYTHONVERBOSE=1

nice swift-t -p $*
