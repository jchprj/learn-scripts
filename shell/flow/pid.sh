# https://www.cyberciti.biz/faq/how-to-return-pid-of-a-last-command-in-linux-unix/
echo "Killing my Linux/Unix awesome-app...if running"
kill $(cat temp_test.pid)
echo "Starting my Linux/Unix awesome-app..."
sleep 20 &
_pid=$! 
echo "$_pid" > temp_test.pid
echo "Pid $_pid stored in temp_test.pid"