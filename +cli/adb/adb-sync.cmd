echo https://github.com/google/adb-sync

adb-sync --help

echo adb-sync ~/Music /sdcard
echo adb-sync ~/Music/ /sdcard/Music

echo adb-sync --delete ~/Music /sdcard
echo adb-sync --delete ~/Music/ /sdcard/Music

echo adb-sync --reverse /sdcard/Download/ ~/Downloads