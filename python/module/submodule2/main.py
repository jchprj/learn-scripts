# https://vegibit.com/how-to-import-module-from-parent-directory-in-python/

# Seems not working in Windows

import sys
print(sys.path)
sys.path.append("../submodule")
print(sys.path)
import module
print(module.a)