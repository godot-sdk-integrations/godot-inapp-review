<p align="center">
	<img width="256" height="256" src="../demo/assets/inappreview-ios.png">
</p>

---
# <img src="addon/icon.png" width="24"> In-app Review Plugin for iOS
Godot In-app Review Plugin enables access to Apple App Store's in-app review functionality.

<br/>

## <img src="addon/icon.png" width="20"> Export to iOS
Follow instructions on the following page to export your project and run on an iOS device:
- [Exporting for iOS](https://docs.godotengine.org/en/stable/tutorials/export/exporting_for_ios.html)

<br/><br/>

## <img src="../addon/icon.png" width="20"> Troubleshooting

### XCode logs
XCode logs are one of the best tools for troubleshooting unexpected behavior. View XCode logs while running your game to troubleshoot any issues.

### Troubleshooting guide
Refer to Godot's [Troubleshooting Guide](https://docs.godotengine.org/en/stable/tutorials/export/exporting_for_ios.html#troubleshooting).

<br/><br/>

___

# <img src="addon/icon.png" width="24"> Contribution

This section provides information on how to build the plugin for contributors.

<br/>

___

## <img src="addon/icon.png" width="20"> Prerequisites

- [Install SCons](https://scons.org/doc/production/HTML/scons-user/ch01s02.html)
- [Install CocoaPods](https://guides.cocoapods.org/using/getting-started.html)

<br/>

___

## <img src="addon/icon.png" width="20"> Build

- Run `./script/build.sh -A <godot version>` initially to run a full build
- Run `./script/build.sh -cgA <godot version>` to clean, redownload Godot, and rebuild
- Run `./script/build.sh -ca` to clean and build without redownloading Godot
- Run `./script/build.sh -h` for more information on the build script

<br/>

___

## <img src="addon/icon.png" width="20"> Libraries

Library archives will be created in the `bin/release` directory.
