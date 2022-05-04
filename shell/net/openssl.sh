# https://computingforgeeks.com/how-to-check-ssl-certificate-expiration-with-openssl/
# https://stackoverflow.com/questions/5164804/get-certificate-fingerprint-of-https-server-from-command-line

echo ----------------------------
openssl s_client -connect ifconfig.co:443 < /dev/null 2>/dev/null
echo ----------------------------
openssl s_client -connect ifconfig.co:443 < /dev/null 2>/dev/null | openssl x509 -fingerprint -noout -in /dev/stdin
echo ----------------------------
openssl s_client -connect ifconfig.co:443 < /dev/null 2>/dev/null | openssl x509 -dates -noout -in /dev/stdin


# https://superuser.com/questions/522553/using-chrome-remote-desktop-can-i-transfer-files-between-computers
## encode to base64
openssl base64 -in metrics -output temp_test.b64
## OR on some systems `-out` should be used instead of `-output`
openssl base64 -in metrics -out temp_test.b64

## decode from base64
openssl base64 -d -in temp_test.b64 -output temp_test
## OR on some systems `-out` should be used instead of `-output`
openssl base64 -d -in temp_test.b64 -out temp_test