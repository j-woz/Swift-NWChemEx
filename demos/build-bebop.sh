#!/bin/bash -l
set -eu

export TCL=/home/wozniak/Public/sfw/bebop/login/tcl-8.6.5-g

PATH=/soft/anaconda3/5.0.0/envs/tensorflow/bin:$PATH

which python

PY_VERSION=$( python -c 'import sys;print(sys.version_info[0])' )

if [[ $PY_VERSION == 2 ]]
then
  PY_CONFIG=python-config
else
  PY_CONFIG=python3-config
fi

which $PY_CONFIG

export PYBIND=/home/wozniak/proj/pybind11
export PY_INCLUDE=$( $PY_CONFIG --includes )
export PY_LIB=$( $PY_CONFIG --libs )

make $*
