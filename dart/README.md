# Dart

[Dart is a client-optimized language for developing fast apps on any platform.](https://dart.dev/overview)

## Install

https://dart.dev/get-dart

As of Flutter 1.21, the Flutter SDK includes the full Dart SDK.


# Flutter

[Flutter is Google’s mobile UI framework for crafting high-quality native interfaces on iOS and Android in record time.](https://flutter.io/) 

## Run Flutter/Dart codes this folder in VS Code(target device is Chrome, need Chrome installed)

1. Open any `.dart` file in `dart/flutter/lib`
2. Run task `flutter clean & run`

## Install

https://flutter.dev/docs/get-started/install

```
git clone https://github.com/flutter/flutter.git -b stable
```

Add `flutter/bin` to path

## New project

Create
```
flutter create --org com.example flutter_application_1
```

For web
```
flutter config --enable-web
flutter build web --release
```
## Run project

```
flutter run
```

```
flutter run -d chrome
```


## flutter doctor

```
flutter doctor
```

## Issues

- [run flutter web with error, FormatException: Unexpected character (at character 1) <html>](https://stackoverflow.com/questions/61726420/run-flutter-web-with-error-formatexception-unexpected-character-at-character)  
  ```
  set no_proxy=localhost,127.0.0.1
  ```

- [dart - Flutter run stuck on white screen - Stack Overflow](https://stackoverflow.com/questions/63287615/flutter-run-stuck-on-white-screen)  
  
  Try
  ```
  flutter clean
  ```

- [android - Visual Studio Code - Target of URI doesn't exist 'package:flutter/material.dart' - Stack Overflow](https://stackoverflow.com/questions/44909653/visual-studio-code-target-of-uri-doesnt-exist-packageflutter-material-dart)

  ```
  flutter clean

  flutter packages get

  flutter packages upgrade ( Optional - use if you want to upgrade packages )

  Restart Android Studio or Visual Studio
  ```

- [flutter - Cannot run with sound null safety because dependencies don't support null safety - Stack Overflow](https://stackoverflow.com/questions/64917744/cannot-run-with-sound-null-safety-because-dependencies-dont-support-null-safety)
  ```
  flutter run --no-sound-null-safety
  ```
## Resources

- [Flutter Gems - A Curated Package Guide for Flutter](https://fluttergems.dev/)
- [Icons packages by Flutter Gems - A Curated Package Guide for Flutter](https://fluttergems.dev/icons/)
- [FlutterIcon - Flutter custom icons generator](https://www.fluttericon.com/)

## Common packages
- [intl | Dart Package](https://pub.dev/packages/intl)
- [flutter_launcher_icons | Dart Package](https://pub.dev/packages/flutter_launcher_icons)
- [introduction_screen | Flutter Package](https://pub.dev/packages/introduction_screen)
- [fl_chart | Flutter Package](https://pub.dev/packages/fl_chart)

# References

- [Awesome Flutter](https://github.com/Solido/awesome-flutter)
- [android studio - How can I run a different dart file in Flutter? - Stack Overflow](https://stackoverflow.com/questions/51419998/how-can-i-run-a-different-dart-file-in-flutter)
- [Kotlin vs. Flutter for Android development - LogRocket Blog](https://blog.logrocket.com/kotlin-vs-flutter-android-development/)
  > Setting up the project above for Flutter took less than 10 minutes on an unsophisticated machine with a ram of 8GB and a core i3 processor. Setting up the Kotlin project and completing it took more than 30 minutes on the same machine.
- [Moving to Visual Studio Code from Android Studio | by Suragch | Flutter Community | Medium](https://medium.com/flutter-community/moving-to-visual-studio-code-from-android-studio-a-guide-for-flutter-developers-8ce506406faf)
  > To show a context menu with lots of useful options(like wrap with widget), the way to get that in Visual Studio Code is to do the following:
    Mac: Command+. (period key)
    Linux/Windows: Ctrl+.
- [Void safety - Wikipedia](https://en.wikipedia.org/wiki/Void_safety)
  > Other languages that use null-safe types by default include JetBrains' Kotlin, Rust, Google's Dart, and Apple's Swift.
- [Deploy and maintain your Flutter Web build exclusively in GitHub Pages. | by Karthikeyan S | ITNEXT](https://itnext.io/deploy-and-maintain-your-flutter-web-build-in-github-pages-exclusively-6dfc3c3ec9cc)
- [Kotlin vs Flutter: Which Framework to Choose in 2021?](https://appinventiv.com/blog/kotlin-vs-flutter-cross-platform-app-development/)
  > If you check Google Trends, Flutter is showing a steep rise in its popularity when compared to Kotlin. Likewise, if you compare Kotlin and Flutter based on their GitHub presence, the former has 28.3K stars and 3.29K forks while the latter has 69.5K stars and 8.11 forks.  
  This indicates that Flutter is getting a huge momentum in the market, compared to Kotlin.