
CXX = g++

INCLUDES = -I ${TCL}/include
LIBS     = -L ${TCL}/lib -l tcl8.6 \
		-Wl,-rpath ${TCL}/lib

CXXFLAGS = -fPIC $(INCLUDES)

all: pkgIndex.tcl libtcllibrary.so

libtcllibrary.so: library_wrap.o library.o
	$(CXX) -shared -o $(@) $(^) \
		$(LIBS)

%.o: %.cxx Makefile
	$(CXX) -c $(CXXFLAGS) $(<)

library_wrap.cxx: library.i library.h Makefile
	swig -o $(@) $(<)
	sed -i s/Library_Init/Tcllibrary_Init/ $(@)

pkgIndex.tcl: make-package.tcl
	${TCL}/bin/tclsh $(<) > $(@)

clean:
	rm -fv *.so *.o *_wrap.cxx

.PHONY: clean
