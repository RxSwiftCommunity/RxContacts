# RxContacts

RxContacts is a [RxSwift](https://github.com/ReactiveX/RxSwift) wrapper around the [Contacts Framework](https://developer.apple.com/documentation/contacts).

[![Language: Swift 4](https://img.shields.io/badge/language-swift4-f48041.svg?style=flat-square)](https://developer.apple.com/swift)
[![Version](https://img.shields.io/cocoapods/v/RxContacts.svg?style=flat-square)](http://cocoapods.org/pods/RxContacts)
[![License](https://img.shields.io/cocoapods/l/RxContacts.svg?style=flat-square)](http://cocoapods.org/pods/RxContacts)
[![Platform](https://img.shields.io/cocoapods/p/RxContacts.svg?style=flat-square)](http://cocoapods.org/pods/RxContacts)
[![Swift Package Manager](https://img.shields.io/badge/Swift%20Package%20Manager-compatible-brightgreen.svg?style=flat-square)](https://github.com/apple/swift-package-manager)
[![Carthage compatible](https://img.shields.io/badge/Carthage-compatible-4BC51D.svg?style=flat-square)](https://github.com/Carthage/Carthage)

## Requirements

- iOS 9.0+ / Mac OS X 10.12+ /  watchOS 3.0+
- Xcode 9.0+

## Installation

### CocoaPods

[CocoaPods](http://cocoapods.org) is a dependency manager for Cocoa projects. You can install it with the following command:

```bash
$ gem install cocoapods
```

To integrate RxContacts into your Xcode project using CocoaPods, specify it in your `Podfile`:

```ruby
source 'https://github.com/CocoaPods/Specs.git'
platform :ios, '8.0'
use_frameworks!

pod 'RxContacts'

```

Then, run the following command:

```bash
$ pod install
```

### Carthage

[Carthage](https://github.com/Carthage/Carthage) is a decentralized dependency manager that automates the process of adding frameworks to your Cocoa application.

You can install Carthage with [Homebrew](http://brew.sh/) using the following command:

```bash
$ brew update
$ brew install carthage
```

To integrate RxContacts into your Xcode project using Carthage, specify it in your `Cartfile`:

```ogdl
github "SwiftyContacts/RxContacts" ~> 0.1
```
### Swift Package Manager

To use RxContacts as a [Swift Package Manager](https://swift.org/package-manager/) package just add the following in your Package.swift file.

``` swift
import PackageDescription

let package = Package(
    name: "HelloContacts",
    dependencies: [
        .Package(url: "https://github.com/satishbabariya/RxContacts", "0.1")
    ]
)
```

### Manually

If you prefer not to use either of the aforementioned dependency managers, you can integrate RxContacts into your project manually.


#### Embeded Binaries

- Download the latest release from https://github.com/satishbabariya/RxContacts/releases
- Next, select your application project in the Project Navigator (blue project icon) to navigate to the target configuration window and select the application target under the "Targets" heading in the sidebar.
- In the tab bar at the top of that window, open the "General" panel.
- Click on the `+` button under the "Embedded Binaries" section.
- Add the downloaded `RxContacts.framework`.
- And that's it!


## Get started

