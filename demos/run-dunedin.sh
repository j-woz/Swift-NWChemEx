#!/bin/bash
set -eu

# RUN DUNEDIN

PATH=$HOME/sfw/swift-t-anaconda3/stc/bin:$PATH

# Only needed to find e.g. Tcl/C++ -based packages
export SWIFT_PATH=$PWD

# Only needed to find e.g. Python/C++ -based modules
export PYTHONPATH=$PWD

# Report settings
which python swift-t
swift-t -v

# Run it
swift-t -p $*
