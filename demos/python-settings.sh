
# PYTHON SETTINGS
# System-independent Python settings detection

which python

PY_VERSION=$( python -c 'import sys;print(sys.version_info[0])' )

if [[ $PY_VERSION == 2 ]]
then
  PY_CONFIG=python-config
else
  PY_CONFIG=python3-config
fi

which $PY_CONFIG

export PY_INCLUDE=$( $PY_CONFIG --includes )
export PY_LIB=$(     $PY_CONFIG --libs )
