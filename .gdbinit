python import sys
python sys.path.append('~/.local/lib/python3.5/site-packages/')
source /home/vagrant/tools/peda/peda.py

set directories $cwd
set print asm-demangle on

source /home/vagrant/tools/Pwngdb/pwngdb.py
source /home/vagrant/tools/Pwngdb/angelheap/gdbinit.py

define hook-run
python
import angelheap
angelheap.init_angelheap()
end
end
