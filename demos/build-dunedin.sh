#!/bin/bash
set -eu

# BUILD DUNEDIN

export TCL=/home/wozniak/sfw/tcl-8.6.8-global
export PYBIND=/home/wozniak/proj/pybind11

source python-settings.sh

make $*
