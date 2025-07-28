[ADB port forwarding and reversing | by Godwin Joseph Kurinjikattu | Medium](https://medium.com/@godwinjoseph.k/adb-port-forwarding-and-reversing-d2bc71835d43)

    adb forward tcp:6100 tcp:7100
    adb reverse tcp:80 tcp:3000

adb forward port_local port_running_in_device
adb reverse port_running_in_local port_device