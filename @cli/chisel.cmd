echo https://github.com/jpillora/chisel/
echo https://superuser.com/questions/1675599/how-to-make-tunnels-in-linux-without-using-ssh


chisel --help
chisel server --help
chisel client --help


echo listens on 80, proxy web requests to http://example.com
chisel server --port 80 --proxy http://example.com


echo connects to chisel server at https://chisel-demo.herokuapp.com, tunnels your localhost:3000 to the server's localhost:3000
chisel client https://chisel-demo.herokuapp.com 3000