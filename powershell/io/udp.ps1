# https://stackoverflow.com/questions/12148666/send-and-receive-data-via-udp-in-powershell

$client = new-object net.sockets.udpclient(0)

write-host "You are $(((ipconfig) -match 'IPv').split(':')[1].trim()):$($client.client.localendpoint.port)"

$peerIP = "localhost"
$peerPort = "8125"

$send = [text.encoding]::ascii.getbytes("test.metrics:25|g")
[void] $client.send($send, $send.length, $peerIP, $peerPort)

# $ipep = new-object net.ipendpoint([net.ipaddress]::any, 0)
# $receive = $client.receive([ref]$ipep)

# echo ([text.encoding]::ascii.getstring($receive))

$client.close()