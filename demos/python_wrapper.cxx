
#include <pybind11/pybind11.h>

namespace py = pybind11;

#include "library.cxx"

PYBIND11_MODULE(python_wrapper, m) {
    m.doc() = "pybind11 example plugin"; // optional module docstring

    m.def("f", &f, "A function which is void-void");
}
