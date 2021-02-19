# https://www.cyberciti.biz/
# curl -x socks5://[user:password@]proxyhost[:port]/ url
# curl --socks5 IP:PORT


# https://www.cyberciti.biz/faq/linux-unix-curl-command-with-proxy-username-password-http-options/
# curl -x <[protocol://][user:password@]proxyhost[:port]> url
# curl --proxy <[protocol://][user:password@]proxyhost[:port]> url
# curl -x http://user:password@Your-Ip-Here:Port url
# curl --proxy http://user:password@Your-Ip-Here:Port url


# curl -X POST -d "aa=bb" url
# curl -c /path/to/cookiefile http://yourhost/
# curl -b /path/to/cookiefile  http://yourhost/
# (win exe)


# -v: verbose


# curl -X POST -H "@header.txt" -d "@data.json" https://url



# https://stackoverflow.com/questions/18215389/how-do-i-measure-request-and-response-times-at-once-using-curl
# How do I measure request and response times at once using cURL?
curl -w "@curl-format.txt" -o /dev/null -s "http://wordpress.com/"
# Or on Windows, it's...
# curl -w "@curl-format.txt" -o NUL -s "http://wordpress.com/"


# https://stackoverflow.com/questions/13339469/how-to-include-an-character-in-a-bash-curl-statement
# How to include an '&' character in a bash curl statement
# Putting the entire URL inside double quotes should take care of your problem