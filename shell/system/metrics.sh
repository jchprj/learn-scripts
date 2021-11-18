# https://fedingo.com/shell-script-to-get-cpu-and-memory-utilization/
# https://gist.github.com/nstielau/966835

cpu_idle=`top -b -n 1 | grep Cpu | awk '{print $8}'|cut -f 1 -d "."`
cpu_use=`expr 100 - $cpu_idle`
mem_free=`free -b | grep "Mem" | awk '{print $4+$6}'`
disk_use=`df -P | grep /\n | grep -v -E '(tmp|boot)' | awk '{print $5}' | cut -f 1 -d "%"`
prefix="prefix.$HOSTNAME.system"
echo "$prefix.cpu_idle_percentage:$cpu_idle|g" | nc -w 1 -u localhost 8125
echo "$prefix.cpu_use_percentage:$cpu_use|g" | nc -w 1 -u localhost 8125
echo "$prefix.mem_free_bytes:$mem_free|g" | nc -w 1 -u localhost 8125
echo "$prefix.disk_use_percentage:$disk_use|g" | nc -w 1 -u localhost 8125