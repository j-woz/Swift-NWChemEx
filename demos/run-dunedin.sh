#!/bin/bash
set -eu

# RUN DUNEDIN

PATH=$HOME/sfw/swift-t-anaconda3/stc/bin:$PATH

# Only needed to find e.g. Tcl/C++ -based packages
export SWIFT_PATH=$PWD

export PYTHONPATH=$PWD
export LD_LIBRARY_PATH=$HOME/sfw/anaconda3/lib

which python swift-t
swift-t  -v

# ls $LD_LIBRARY_PATH

swift-t $*
