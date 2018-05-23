#!/bin/bash -l
set -eu

export TCL=/home/wozniak/Public/sfw/bebop/login/tcl-8.6.5-g

PATH=/soft/anaconda3/5.0.0/envs/tensorflow/bin:$PATH

source python-settings.sh

export PYBIND=/home/wozniak/proj/pybind11

make $*
