
CXX = g++

INCLUDES = -I ${TCL}/include
LIBS     = -L ${TCL}/lib -l tcl8.6 \
		-Wl,-rpath ${TCL}/lib

CXXFLAGS = -Wall -fPIC -std=c++11 $(INCLUDES)

all:

tcl: pkgIndex.tcl libtcllibrary.so

python: python_wrapper.so

libtcllibrary.so: library_wrap.o library.o
	$(CXX) -shared -o $(@) $(^) \
		$(LIBS)

%.o: %.cxx Makefile
	$(CXX) -c $(CXXFLAGS) $(<)

# SWIG-Tcl binding generation
library_wrap.cxx: library.i library.h Makefile
	swig -o $(@) $(<)
	sed -i s/Library_Init/Tcllibrary_Init/ $(@)

# pybind generation
python_wrapper.so: python_wrapper.cxx Makefile
	$(CXX) -shared -o $(@) \
		$(CXXFLAGS) \
		-I ${PYBIND}/include \
		-I /usb1/sfw/anaconda3/include/python3.6m $(<) \
		-Wl,-rpath -Wl,/usb1/sfw/anaconda3/lib

pkgIndex.tcl: make-package.tcl
	${TCL}/bin/tclsh $(<) > $(@)

clean:
	rm -fv *.so *.o *_wrap.cxx

.PHONY: clean tcl python
