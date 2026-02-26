## [4.0.0]
- `s_packages` dependency upgraded to ^3.0.0

## 3.0.2
- `s_packages` package dependency upgraded

## 3.0.1
- `s_packages` package dependency upgraded

## 3.0.0
- package no longer holds the source code for it, but exports/exposes the `s_packages` package instead, which will hold this package's latest source code.
- The only future changes to this package will be made via `s_packages` package dependency upgrades, in order to bring the new fixes or changes to this package
- dependent on `s_packages`: ^1.1.2


## 2.0.1

* Documentation updated

## 2.0.0

* **BREAKING CHANGE**: Removed `overlay_support` package dependency
  * Now uses native Flutter overlay system
  * **Automatic Setup**: No manual wrapper required! PopThis automatically sets up the overlay system when first used
  * Simply remove `OverlaySupport.global` wrapper from your MaterialApp - everything works automatically
  * **Migration**: Remove the `OverlaySupport.global` wrapper from your code
* Improved performance by using direct overlay management
* Simplified package dependencies
* Fixed: Automatically wraps overlay content with `Sizer` package to ensure responsive sizing

## 1.0.1

* Updated `s_button` dependancy  

## 1.0.0

* Initial release of `pop_this` package.
* Core features:
  * **Easy Popup Management**: Show any widget as a popup with a single function call
  * **Stacked Popups**: Open multiple popups on top of each other with automatic navigation history
  * **Auto-Dismissal**: Built-in timer support with optional visual countdown timer
  * **Animated Transitions**: Customizable entry and exit animations with configurable duration and curves
  * **Success/Error Overlays**: Pre-styled overlay presets for quick user feedback
  * **Custom Styling**: Extensive customization options for colors, shadows, borders, and background effects
  * **Background Blur**: Optional blur effect for overlay backgrounds
  * **Keyboard Support**: ESC key to dismiss popups
  * **Flexible Positioning**: Custom popup positioning with offset support
  * **State Management**: Built-in methods to check popup state and dismiss programmatically

