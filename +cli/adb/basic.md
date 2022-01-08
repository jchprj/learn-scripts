# ADB

## Connect by wire
```
adb devices
```


## Connect by IP

```
adb connect 192.168.0.1:5555
```

```
adb shell ip route
adb tcpip 5555
adb connect DEVICE_IP:5555
```

## Shell
adb shell

adb shell ls /

adb shell ls -Ral / | grep filename



# References

- https://stackoverflow.com/questions/17530181/genymotion-android-emulator-adb-access

- https://blog.csdn.net/ghostsaint/article/details/44112611  
  `adb root`

- [Connect Mobile Device with Android Debug Bridge(ADB) to USB, WiFi](https://www.guru99.com/adb-connect.html)  
  Android SDK >> Platform-tools

- https://github.com/Genymobile/scrcpy