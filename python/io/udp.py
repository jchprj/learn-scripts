# https://stackoverflow.com/questions/18743962/python-send-udp-packet

import socket

UDP_IP = "localhost"
UDP_PORT = 8125
MESSAGE = "foo:1|c"         # [{counter, foo, 1.000000, , }]

print("UDP target IP:", UDP_IP)
print("UDP target port:", UDP_PORT)
print("message:", MESSAGE)

sock = socket.socket(socket.AF_INET, socket.SOCK_DGRAM) # UDP
sock.sendto(bytes(MESSAGE, "utf-8"), (UDP_IP, UDP_PORT))