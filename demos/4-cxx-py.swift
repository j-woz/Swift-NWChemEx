
import python;

f()
{
  python("""
import libpylibrary
libpylibrary.f()
""",
         "repr(0)");
}

f();
