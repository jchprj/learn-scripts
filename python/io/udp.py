# https://stackoverflow.com/questions/18743962/python-send-udp-packet

import socket

UDP_IP = "ping.online.net"
UDP_PORT = 5001
MESSAGE = "test"

print("UDP target IP:", UDP_IP)
print("UDP target port:", UDP_PORT)
print("message:", MESSAGE)

sock = socket.socket(socket.AF_INET, socket.SOCK_DGRAM) # UDP
sock.sendto(bytes(MESSAGE, "utf-8"), (UDP_IP, UDP_PORT))