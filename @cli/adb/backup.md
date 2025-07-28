# adb backup

[How to access data/data folder in Android device?](https://stackoverflow.com/questions/13006315/how-to-access-data-data-folder-in-android-device)

```
adb backup -noapk com.your.packagename
```


[How to extract or unpack an .ab file (Android Backup file) [closed]](https://stackoverflow.com/questions/18533567/how-to-extract-or-unpack-an-ab-file-android-backup-file)

```
( printf "\x1f\x8b\x08\x00\x00\x00\x00\x00" ; tail -c +25 backup.ab ) |  tar xfvz -
```

