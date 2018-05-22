#!/bin/sh
set -eu

# BUILD DUNEDIN

export PYBIND=/home/wozniak/proj/pybind11
export PYTHON=/home/wozniak/sfw/anaconda3

make $*
