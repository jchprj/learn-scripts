# https://blog.jourdant.me/post/3-ways-to-download-files-with-powershell
# Invoke-WebRequest -Uri $url -OutFile $output

Invoke-WebRequest -Uri http://ifconfig.co/json -OutFile temp_test.json