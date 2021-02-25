# https://computingforgeeks.com/how-to-check-ssl-certificate-expiration-with-openssl/
# https://stackoverflow.com/questions/5164804/get-certificate-fingerprint-of-https-server-from-command-line

echo ----------------------------
openssl s_client -connect ifconfig.co:443 < /dev/null 2>/dev/null
echo ----------------------------
openssl s_client -connect ifconfig.co:443 < /dev/null 2>/dev/null | openssl x509 -fingerprint -noout -in /dev/stdin
echo ----------------------------
openssl s_client -connect ifconfig.co:443 < /dev/null 2>/dev/null | openssl x509 -dates -noout -in /dev/stdin