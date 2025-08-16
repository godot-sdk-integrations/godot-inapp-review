<p align="center">
	<img width="256" height="256" src="demo/assets/inappreview-android.png">
	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	<img width="256" height="256" src="demo/assets/inappreview-ios.png">
</p>

---

# <img src="addon/icon.png" width="24"> Godot In-app Review Plugin

In-app Review Plugin provides access to in-app review functionality for Google Play Store on the Android platform and Apple App Store on the iOS platform through a unified GDScript interface.

**Features:**
- Enable in-app review for Google Play
- Enable in-app review for App Store

---

## <img src="addon/icon.png" width="20"> Table of Contents
- [Installation](#installation)
- [Usage](#usage)
- [Demo](#demo)
- [Signals](#signals)
- [Platform-Specific Notes](#platform-specific-notes)
- [Links](#links)
- [All Plugins](#all-plugins)
- [Credits](#credits)
- [Contributing](#contributing)

---

<a name="installation">

## <img src="addon/icon.png" width="20"> Installation

**Uninstall previous versions** before installing.
If using both Android & iOS, ensure **same addon interface version**.

**Options:**
1. **AssetLib**
	- Search for `In-app Review`
	- Click `Download` → `Install`
	- Install to project root, `Ignore asset root` checked
	- Enable via **Project → Project Settings → Plugins**
	- Ignore file conflict warnings when installing both versions
2. **Manual**
	- Download release from GitHub
	- Unzip to project root
	- Enable via **Plugins** tab

---

<a name="usage">

## <img src="addon/icon.png" width="20"> Usage
Add an `InappReview` node to your scene and follow the following steps:
- register listeners for the [all signals](#signals) emitted from the `InappReview` node
- call the `generate_review_info()` method of the `InappReview` node
- when the `review_info_generated` signal is received, call the `launch_review_flow()` of the `InappReview` node
	- Depending on platform Google Play or App Store API will display a review dialog
	- Dialog may not be displayed if the review flow was launched recently
- normal app functionality can resume when `review_flow_launched` signal is received

---

<a name="demo">

## <img src="addon/icon.png" width="20"> Demo
The demo app's only purpose is to provide sample code. Since the demo app is not registered with the Google Play store or App Store, the in-app review dialog will not be displayed.
	
---

<a name="signals">

## <img src="addon/icon.png" width="20"> Signals

- `review_info_generated`: Emitted when info generation succeeded.
- `review_info_generation_failed`: Emitted when info generation failed.
- `review_flow_launched`: Emitted when review flow launched.
- `review_flow_launch_failed`: Emitted when review flow launch failed.

---

<a name="platform-specific-notes">

## <img src="addon/icon.png" width="20"> Platform-Specific Notes

### Android
- **Build:** [Create custom Android gradle build](https://docs.godotengine.org/en/stable/tutorials/export/android_gradle_build.html).
- **Registration:** App must be registered with the Google Play.
- **Troubleshooting:**
  - Logs: `adb logcat | grep 'godot'` (Linux), `adb.exe logcat | select-string "godot"` (Windows)
  - _No review dialog shown_: Check [Google Play quotas](https://developer.android.com/guide/playcore/in-app-review#quotas)

### iOS
- **Registration:** App must be registered with the App Store.
- **Troubleshooting:**
	- View XCode logs while running the game for troubleshooting.
	- See [Godot iOS Export Troubleshooting](https://docs.godotengine.org/en/stable/tutorials/export/exporting_for_ios.html#troubleshooting).

---

<a name="links">

# <img src="addon/icon.png" width="20"> Links

- [AssetLib Entry Android](https://godotengine.org/asset-library/asset/2549)
- [AssetLib Entry iOS](https://godotengine.org/asset-library/asset/2906)

---

<a name="all-plugins">

# <img src="addon/icon.png" width="24"> All Plugins

| Plugin | Android | iOS |
| :---: | :--- | :--- |
| [Notification Scheduler](https://github.com/godot-sdk-integrations/godot-notification-scheduler) | ✅ | ✅ |
| [Admob](https://github.com/godot-sdk-integrations/godot-admob) | ✅ | ✅ |
| [Deeplink](https://github.com/godot-sdk-integrations/godot-deeplink) | ✅ | ✅ |
| [Share](https://github.com/godot-sdk-integrations/godot-share) | ✅ | ✅ |
| [In-App Review](https://github.com/godot-sdk-integrations/godot-inapp-review) | ✅ | ✅ |

---

<a name="credits">

# <img src="addon/icon.png" width="24"> Credits

Developed by [Cengiz](https://github.com/cengiz-pz)

iOS part is based on [DrMoriarty](https://github.com/DrMoriarty)'s [Godot iOS Plugin Template](https://github.com/DrMoriarty/godot_ios_plugin_template)

Original repository: [Godot In-app Review Plugin](godot-sdk-integrations/godot-inapp-review)

---

<a name="contributing">

# <img src="addon/icon.png" width="24"> Contributing

This section provides information on how to build the plugin for contributors.

---

## <img src="addon/icon.png" width="20"> iOS

### Prerequisites

- [Install SCons](https://scons.org/doc/production/HTML/scons-user/ch01s02.html)
- [Install CocoaPods](https://guides.cocoapods.org/using/getting-started.html)

---

### Build

- Run `./script/build.sh -A <godot version>` initially to run a full build
- Run `./script/build.sh -cgA <godot version>` to clean, redownload Godot, and rebuild
- Run `./script/build.sh -ca` to clean and build without redownloading Godot
- Run `./script/build.sh -cb -z4.0` to clean and build plugin without redownloading Godot and package in a zip archive as version 4.0
- Run `./script/build.sh -h` for more information on the build script

___

## <img src="addon/icon.png" width="20"> Install Script

- Run `./script/install.sh -t <target directory> -z <path to zip file>` install plugin to a Godot project.
- Example `./script/install.sh -t demo -z build/release/DeeplinkPlugin-v4.0.zip` to install to demo app.

___

## <img src="addon/icon.png" width="20"> Libraries

Library archives will be created in the `build/release` directory.

---

## <img src="addon/icon.png" width="20"> Android

### Build

**Options:**
1. Use [Android Studio](https://developer.android.com/studio) to build via **Build->Assemble Project** menu
	- Switch **Active Build Variant** to **release** and repeat
	- Run **packageDistribution** task to create release archive
2. Use project-root-level **build.sh** script
	- `./script/build.sh -ca` - clean existing build, do a debug build for Android
	- `./script/build.sh -carz` - clean existing build, do a release build for Android, and create archive
