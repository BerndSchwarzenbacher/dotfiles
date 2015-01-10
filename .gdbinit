#
#.gdinit : GDB Config file
#

python
import sys
sys.path.insert(0, '/opt/gdb/stlPrettyPrinter')
from libstdcxx.v6.printers import register_libstdcxx_printers
register_libstdcxx_printers (None)
end
