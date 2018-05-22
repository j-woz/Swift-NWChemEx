
import python;

f()
{
  python("""
import python_wrapper
python_wrapper.f()
""",
         "repr(0)");
}

f();
