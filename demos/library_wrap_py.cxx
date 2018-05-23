
#include <pybind11/pybind11.h>

namespace py = pybind11;

#include "library.cxx"

// This module name must agree with the shared object filename
PYBIND11_MODULE(libpylibrary, m) {
    m.doc() = "pybind11 example plugin"; // optional module docstring

    m.def("f", &f, "A function that is void-void");
}
