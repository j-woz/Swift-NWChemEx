#!/bin/bash -l
set -eu

export TCL=/home/wozniak/Public/sfw/bebop/login/tcl-8.6.5

PATH=/soft/anaconda3/5.0.0/envs/tensorflow/bin:$PATH

which python python-config

export PYBIND=/home/wozniak/proj/pybind11
export PY_INCLUDE=$( python3-config --includes )
export PY_LIB=$( python3-config --libs )

make $*
