
import launch;

foreach i in [0:3]
{
  string arguments[] = [ "id="+i ];
  @par=4 launch("./program.sh", arguments);
}
