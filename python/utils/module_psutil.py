# https://stackoverflow.com/questions/276052/how-to-get-current-cpu-and-ram-usage-in-python

import psutil
cpu = dict(psutil.cpu_times_percent(interval=0.4, percpu=False)._asdict())
print(cpu)
# Windows: {'user': 4.6, 'system': 6.5, 'idle': 88.9, 'interrupt': 0.0, 'dpc': 0.0}
# Linux: {'user': 7.0, 'nice': 0.0, 'system': 2.0, 'idle': 72.0, 'iowait': 0.0, 'irq': 0.0, 'softirq': 0.0, 'steal': 0.0, 'guest': 0.0, 'guest_nice': 0.0}
mem = dict(psutil.virtual_memory()._asdict())
# Windows: {'total': 34156470272, 'available': 15544983552, 'percent': 54.5, 'used': 18611486720, 'free': 15544983552}
# Linux: {'total': 8342093824, 'available': 6309396480, 'percent': 24.4, 'used': 1540575232, 'free': 4171513856, 'active': 592187392, 'inactive': 3371098112, 'buffers': 260628480, 'cached': 2369376256, 'shared': 391262208, 'slab': 123973632}
print(mem)
