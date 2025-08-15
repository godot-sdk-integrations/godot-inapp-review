<p align="center">
	<img width="256" height="256" src="../demo/assets/inappreview-android.png">
</p>

---
# <img src="../addon/icon.png" width="24"> In-app Review Plugin for Android
Godot in-app review plugin enables access to Google Play Store's in-app review functionality on the Android platform.


## <img src="../addon/icon.png" width="20"> Prerequisites
Follow instructions on the following page to create a custom Android gradle build
- [Create custom Android gradle build](https://docs.godotengine.org/en/stable/tutorials/export/android_gradle_build.html)

Your app must be registered with and released on Google Play Store.

## <img src="../addon/icon.png" width="20"> Troubleshooting

### ADB logcat
`adb logcat` is one of the best tools for troubleshooting unexpected behavior
- use `$> adb logcat | grep 'godot'` on Linux
	- `adb logcat *:W` to see warnings and errors
	- `adb logcat *:E` to see only errors
	- `adb logcat | grep 'godot|somethingElse'` to filter using more than one string at the same time
- use `#> adb.exe logcat | select-string "godot"` on powershell (Windows)

Also check out:
https://docs.godotengine.org/en/stable/tutorials/platform/android/android_plugin.html#troubleshooting
