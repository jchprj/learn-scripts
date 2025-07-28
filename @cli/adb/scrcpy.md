# https://github.com/Genymobile/scrcpy

This application provides display and control of Android devices connected on USB (or over TCP/IP). It does not require any root access.

```
scrcpy --serial 0123456789abcdef 
scrcpy -s 0123456789abcdef # short
```

## Shortcut

- Switch fullscreen mode -> Alt+f
- Click on HOME -> Alt+h | Middle-click
- Click on BACK -> Alt+b | Right-click²
- Click on VOLUME_UP -> Alt+↑ (up)
- Click on VOLUME_DOWN -> Alt+↓ (down)
- Click on POWER -> Alt+p
- Power on -> Right-click²
- Turn device screen off (keep mirroring) -> Alt+o
- Turn device screen on -> Alt+Shift+o
- Synchronize clipboards and paste⁵ -> Alt+v


## Full shorcut

- Switch fullscreen mode -> Alt+f
- Rotate display left -> Alt+← (left)
- Rotate display right -> Alt+→ (right)
- Resize window to 1:1 (pixel-perfect) -> Alt+g
- Resize window to remove black borders -> Alt+w | Double-left-click¹
- Click on HOME -> Alt+h | Middle-click
- Click on BACK -> Alt+b | Right-click²
- Click on APP_SWITCH -> Alt+s | 4th-click³
- Click on MENU (unlock screen)⁴ -> Alt+m
- Click on VOLUME_UP -> Alt+↑ (up)
- Click on VOLUME_DOWN -> Alt+↓ (down)
- Click on POWER -> Alt+p
- Power on -> Right-click²
- Turn device screen off (keep mirroring) -> Alt+o
- Turn device screen on -> Alt+Shift+o
- Rotate device screen -> Alt+r
- Expand notification panel -> Alt+n | 5th-click³
- Expand settings panel -> Alt+n+n | Double-5th-click³
- Collapse panels -> Alt+Shift+n
- Copy to clipboard⁵ -> Alt+c
- Cut to clipboard⁵ -> Alt+x
- Synchronize clipboards and paste⁵ -> Alt+v
- Inject computer clipboard text -> Alt+Shift+v
- Enable/disable FPS counter (on stdout) -> Alt+i
- Pinch-to-zoom -> Ctrl+click-and-move
- Drag & drop APK file -> Install APK from computer
- Drag & drop non-APK file -> Push file to device


## Issues
[adb server version (41) doesn't match this client (40) #527](https://github.com/Genymobile/scrcpy/issues/527)
```
ADB=/path/to/some/adb scrcpy
```