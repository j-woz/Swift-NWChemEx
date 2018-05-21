#!/bin/bash
set -eu

# RUN FELIX

PATH=$HOME/sfw/swift-t/stc/bin:$PATH

# Only needed to find e.g. C++ -based packages
export SWIFT_PATH=$PWD

swift-t $*
