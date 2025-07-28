# https://stackoverflow.com/questions/68561211/python-set-timeout-on-popen-stdout-readline

import asyncio.subprocess

async def background(*command):
    # create subprocess via asyncio
    proc = await asyncio.create_subprocess_exec(
        *command, stdout=asyncio.subprocess.PIPE, stderr=asyncio.subprocess.PIPE
    )
    while True:
        line = await readline(proc.stdout, timeout=1)
        print("read", len(line), "characters")

# read from an async stream vvvvvvvvvvvvvvvvvv instead of a file-like object
async def readline(stream: asyncio.StreamReader, timeout: float):
    try:
        # stream.readline is a coroutine vvvvvvvvvvvv
        return await asyncio.wait_for(stream.readline(), timeout=timeout)
    except asyncio.TimeoutError:
        return ""

asyncio.run(background("cat", "/dev/random"))
