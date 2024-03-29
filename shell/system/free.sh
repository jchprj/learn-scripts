# https://www.linuxatemyram.com/
# A healthy Linux system with more than enough memory will, after running for a while, show the following expected and harmless behavior:
# free memory is close to 0
# used memory is close to total
# available memory (or "free + buffers/cache") has enough room (let's say, 20%+ of total)
# swap used does not change

# Warning signs of a genuine low memory situation that you may want to look into:
# available memory (or "free + buffers/cache") is close to zero
# swap used increases or fluctuates
# dmesg | grep oom-killer shows the OutOfMemory-killer at work

free