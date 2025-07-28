# ADB

## Connect by wire
```
adb devices
```


## Connect by IP

```
adb connect 192.168.0.1:5555
```

Prepration
```
adb shell ip route
adb tcpip 5555
adb connect DEVICE_IP:5555
```

## Connect by USB

adb usb

## Shell
adb shell

adb shell ls /

adb shell ls -Ral / | grep filename


## Files

[android - How to use adb command to push a file on device without sd card - Stack Overflow](https://stackoverflow.com/questions/20834241/how-to-use-adb-command-to-push-a-file-on-device-without-sd-card)

    adb push filename.extension /sdcard/0/
    adb pull /storage/emulated/legacy/myVideoFile.mp4 
    

# References

- https://stackoverflow.com/questions/17530181/genymotion-android-emulator-adb-access

- https://blog.csdn.net/ghostsaint/article/details/44112611  
  `adb root`

- [Connect Mobile Device with Android Debug Bridge(ADB) to USB, WiFi](https://www.guru99.com/adb-connect.html)  
  Android SDK >> Platform-tools

- https://github.com/Genymobile/scrcpy