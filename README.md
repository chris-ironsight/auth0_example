# Auth0 Example

## Setup

1. Fill in `AUTH0_DOMAIN`, `AUTH0_CLIENT_ID` and `AUDIENCE` in `/assets/cfg/app_settings.json`
2. Fill in `manifestPlaceholders` in `android/app/build.gradle` with the correct domain

## Testing
Happy path:
1. Set Chrome as the default browser
2. Run the app on an Android emulator
3. Hit the login button and follow the login flow

Result: Log in is successful, the app is redirected back to the home screen, and the `idToken` is printed below the log in button

Unhappy path:
1. Download Firefox browser from the Play Store.
2. Set Firefox as the default browser.
3. Run the app on an Android emulator.
4. Hit the login button and follow the login flow

Result: Browser is redirected to a screen that says `Not found.`

## Flutter doctor output for reproduction
```
[✓] Flutter (Channel stable, 3.22.1, on macOS 14.5 23F79 darwin-arm64, locale en-CA)
    • Flutter version 3.22.1 on channel stable
    • Upstream repository https://github.com/flutter/flutter.git
    • Framework revision a14f74ff3a (2 weeks ago), 2024-05-22 11:08:21 -0500
    • Engine revision 55eae6864b
    • Dart version 3.4.1
    • DevTools version 2.34.3

[✓] Android toolchain - develop for Android devices (Android SDK version 34.0.0)
    • Platform android-34, build-tools 34.0.0
    • Java binary at: /Applications/Android Studio.app/Contents/jbr/Contents/Home/bin/java
    • Java version OpenJDK Runtime Environment (build 17.0.9+0-17.0.9b1087.7-11185874)
    • All Android licenses accepted.

[✓] Xcode - develop for iOS and macOS (Xcode 15.4)
    • Xcode at /Applications/Xcode.app/Contents/Developer
    • Build 15F31d
    • CocoaPods version 1.15.2

[✓] Chrome - develop for the web
    • Chrome at /Applications/Google Chrome.app/Contents/MacOS/Google Chrome

[✓] Android Studio (version 2023.2)
    • Android Studio at /Applications/Android Studio.app/Contents
    • Flutter plugin can be installed from:
      🔨 https://plugins.jetbrains.com/plugin/9212-flutter
    • Dart plugin can be installed from:
      🔨 https://plugins.jetbrains.com/plugin/6351-dart
    • Java version OpenJDK Runtime Environment (build 17.0.9+0-17.0.9b1087.7-11185874)

[✓] IntelliJ IDEA Community Edition (version 2021.2.3)
    • IntelliJ at /Applications/IntelliJ IDEA CE.app
    • Flutter plugin version 61.2.4
    • Dart plugin version 212.5486

[✓] VS Code (version 1.89.1)
    • VS Code at /Applications/Visual Studio Code.app/Contents
    • Flutter extension version 3.90.0

[✓] Connected device (5 available)
    • sdk gphone64 arm64 (mobile)     • emulator-5554             • android-arm64  • Android 14 (API 34) (emulator)
    • Chrome (web)                    • chrome                    • web-javascript • Google Chrome 125.0.6422.142

[✓] Network resources
    • All expected network resources are available.

• No issues found!
```