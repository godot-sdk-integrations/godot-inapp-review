<p align="center">
	<img width="256" height="256" src="demo/assets/inappreview-android.png">
	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	<img width="256" height="256" src="demo/assets/inappreview-ios.png">
</p>

---

# <img src="addon/icon.png" width="24"> Godot In-app Review Plugin

Godot in-app review plugin provides access to in-app review functionality for Google Play Store on the Android platform and Apple App Store on the iOS platform through a unified GDScript interface.

_This plugin has been moved under the umbrella of [Godot SDK Integrations](https://github.com/godot-sdk-integrations) organization in Github. Previously, the plugin was placed under three separate repositories: [Android](https://github.com/cengiz-pz/godot-android-inapp-review-plugin), [iOS](https://github.com/cengiz-pz/godot-ios-inapp-review-plugin), and [addon interface](https://github.com/cengiz-pz/godot-inapp-review-addon)._

<br/>

## <img src="addon/icon.png" width="20"> Installation
_Before installing this plugin, make sure to uninstall any previous versions of the same plugin._

_If installing both Android and iOS versions of the plugin in the same project, then make sure that both versions use the same addon interface version._

There are 2 ways to install this plugin into your project:
- Through the Godot Editor's AssetLib
- Manually by downloading archives from Github

### <img src="addon/icon.png" width="18"> Installing via AssetLib
Steps:
- search for and select the `In-app Review` plugin in Godot Editor
- click `Download` button
- on the installation dialog...
	- keep `Change Install Folder` setting pointing to your project's root directory
	- keep `Ignore asset root` checkbox checked
	- click `Install` button
- enable the plugin via the `Plugins` tab of `Project->Project Settings...` menu, in the Godot Editor

#### <img src="addon/icon.png" width="16"> Installing both Android and iOS versions of the plugin in the same project
When installing via AssetLib, the installer may display a warning that states "_[x number of]_ files conflict with your project and won't be installed." You can ignore this warning since both versions use the same addon code.

### <img src="addon/icon.png" width="18"> Installing manually
Steps:
- download release archive from Github
- unzip the release archive
- copy to your Godot project's root directory
- enable the plugin via the `Plugins` tab of `Project->Project Settings...` menu, in the Godot Editor

## <img src="addon/icon.png" width="20"> Usage
Add an `InappReview` node to your scene and follow the following steps:
- register listeners for the following signals emitted from the `InappReview` node
	- `review_info_generated`
	- `review_info_generation_failed`
	- `review_flow_launched`
	- `review_flow_launch_failed`
- call the `generate_review_info()` method of the `InappReview` node
- when the `review_info_generated` signal is received, call the `launch_review_flow()` of the `InappReview` node
	- Google Play Store API will display a dialog
	- Dialog may not be displayed if the review flow was launched recently
- normal app functionality can resume when `review_flow_launched` signal is received

## <img src="addon/icon.png" width="20"> Demo
The demo app's only purpose is to provide sample code. Since the demo app is not registered with the Google Play store, the Google Play in-app review dialog will not be displayed.

<br/><br/>

---

# <img src="addon/icon.png" width="24"> Android In-app Review Plugin

<p align="center">
	<img width="256" height="256" src="demo/assets/inappreview-android.png">
</p>


## [Android-specific Documentation](android/README.md)
## [AssetLib Entry](https://godotengine.org/asset-library/asset/2549)

<br/><br/>

---

# <img src="addon/icon.png" width="24"> iOS In-app Review Plugin

<p align="center">
	<img width="256" height="256" src="demo/assets/inappreview-ios.png">
</p>

## [iOS-specific Documentation](ios/README.md)
## [AssetLib Entry](https://godotengine.org/asset-library/asset/2906)

<br/><br/>

---
# <img src="addon/icon.png" width="24"> All Plugins

| Plugin | Android | iOS |
| :--- | :---: | :---: |
| [Notification Scheduler](https://github.com/godot-sdk-integrations/godot-notification-scheduler) | ✅ | ✅ |
| [Admob](https://github.com/godot-sdk-integrations/godot-admob) | ✅ | ✅ |
| [Deeplink](https://github.com/godot-sdk-integrations/godot-deeplink) | ✅ | ✅ |
| [Share](https://github.com/godot-sdk-integrations/godot-share) | ✅ | ✅ |
| [In-App Review](https://github.com/godot-sdk-integrations/godot-inapp-review) | ✅ | ✅ |

<br/><br/>

---
# <img src="addon/icon.png" width="24"> Credits

Developed by [Cengiz](https://github.com/cengiz-pz)

iOS part is based on [DrMoriarty](https://github.com/DrMoriarty)'s [Godot iOS Plugin Template](https://github.com/DrMoriarty/godot_ios_plugin_template)

Original repository: [Godot In-app Review Plugin](godot-sdk-integrations/godot-inapp-review)
