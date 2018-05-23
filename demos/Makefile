
## Usage message

all:
	@echo "Run this from a build script to get environment variables"
	@echo "Provide tcl or python"

## Compiler settings
# Convention: Variables with braces ${V} should be in the environment

CXX = g++

INCLUDES = -I ${TCL}/include
LIBS     = -L ${TCL}/lib -l tcl8.6 \
		-Wl,-rpath ${TCL}/lib

CXXFLAGS = -Wall -fPIC -std=c++11 $(INCLUDES)

## Tcl Section

tcl: pkgIndex.tcl libtcllibrary.so

libtcllibrary.so: library_wrap_tcl.o library.o
	$(CXX) -shared -o $(@) $(^) \
		$(LIBS)

# SWIG-Tcl binding generation
library_wrap_tcl.cxx: library.i library.h Makefile
	swig -o $(@) $(<)
	sed -i s/Library_Init/Tcllibrary_Init/ $(@)

# Tcl package generation
pkgIndex.tcl: make-package.tcl
	${TCL}/bin/tclsh $(<) > $(@)

## End Tcl section

## Python section

python: libpylibrary.so

# pybind generation
libpylibrary.so: library_wrap_py.cxx Makefile
	$(CXX) -shared -o $(@) \
		$(CXXFLAGS) \
		-I ${PYBIND}/include \
		${PY_INCLUDE} \
		$(<)

## End Python section

## Standard Makefile settings

%.o: %.cxx Makefile
	$(CXX) -c $(CXXFLAGS) $(<)

clean:
	rm -fv *.so *.o library_wrap_tcl.cxx pkgIndex.tcl *.tic

.PHONY: clean tcl python

.DELETE_ON_ERROR:
