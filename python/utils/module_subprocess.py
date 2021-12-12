# https://stackoverflow.com/questions/2331339/piping-output-of-subprocess-popen-to-files
# https://stackoverflow.com/questions/5772873/python-spawn-off-a-child-subprocess-detach-and-exit

import subprocess

with open("temp_test.out", "wb") as out, open("temp_test.err", "wb") as err:
    process = subprocess.Popen(["ls"], cwd="/", stdout=out, stderr=err)
    process = subprocess.Popen(["ls", "--foo"], cwd="/", stdout=out, stderr=err)
    stdout, stderr = process.communicate()