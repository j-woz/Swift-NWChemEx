#!/bin/bash
set -eu

# BUILD DUNEDIN

export PYBIND=/home/wozniak/proj/pybind11

source python-settings.sh

make $*
