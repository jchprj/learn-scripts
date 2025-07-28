# https://stackoverflow.com/questions/2331339/piping-output-of-subprocess-popen-to-files
# https://stackoverflow.com/questions/5772873/python-spawn-off-a-child-subprocess-detach-and-exit

import subprocess
import shlex

with open("temp_test.out", "wb") as out, open("temp_test.err", "wb") as err:
    process = subprocess.Popen(["ls"], cwd="/", stdout=out, stderr=err)
    process = subprocess.Popen(["ls", "--foo"], cwd="/", stdout=out, stderr=err)
    stdout, stderr = process.communicate()


# https://www.endpointdev.com/blog/2015/01/getting-realtime-output-using-python/
def run_command(command):
    process = subprocess.Popen(shlex.split(command), stdout=subprocess.PIPE)
    while True:
        output = process.stdout.readline()
        if output == '' and process.poll() is not None:
            break
        if output:
            print(output.strip())
    rc = process.poll()
    return rc


# https://stackoverflow.com/questions/163542/how-do-i-pass-a-string-into-subprocess-popen-using-the-stdin-argument

def popen_stdin():
    p = subprocess.Popen('Your Command Here',
                    stdout=subprocess.PIPE,
                    stderr=subprocess.STDOUT,
                    stdin=subprocess.PIPE,
                    shell=True,
                    bufsize=0)
    p.stdin.write('START\n')
    out = p.stdout.readline()
    while out:
        line = out
        line = line.rstrip("\n")

        if "WHATEVER1" in line:
            pr = 1
            p.stdin.write('DO 1\n')
            out = p.stdout.readline()
            continue

        if "WHATEVER2" in line:
            pr = 2
            p.stdin.write('DO 2\n')
            out = p.stdout.readline()
            continue
    out = p.stdout.readline()
    p.wait()


# https://stackoverflow.com/questions/52545512/realtime-output-from-a-shell-command-in-jupyter-notebook
from subprocess import Popen, PIPE, STDOUT
from IPython.core.magic import register_line_magic

@register_line_magic
def runrealcmd(command):
    process = Popen(command, stdout=PIPE, shell=True, stderr=STDOUT, bufsize=1, close_fds=True)
    for line in iter(process.stdout.readline, b''):
        print(line.rstrip().decode('utf-8'))
    process.stdout.close()
    process.wait()