# HotellookSDK

![Platform: iOS 9+](https://img.shields.io/badge/platform-iOS%209%2B-blue.svg?style=flat)
[![Carthage compatible](https://img.shields.io/badge/Carthage-compatible-4BC51D.svg?style=flat)](https://github.com/Carthage/Carthage)
[![Cocoapods compatible](https://img.shields.io/badge/Cocoapods-compatible-4BC51D.svg?style=flat)](https://cocoapods.org)

Hotellook iOS SDK is a framework integrating a hotels search engine into your app. When your user books a hotel, you get paid. [Hotellook](https://itunes.apple.com/us/app/cheap-hotels-deals-and-discounts-hotellook/id762156897) official app is based on this framework.

## Installation

**Cocoapods:**
```
use_frameworks!
pod 'HotellookSDK', :git => 'https://github.com/KosyanMedia/Hotellook-iOS-SDK-Core.git'
pod 'SwiftProtobuf', :git => 'https://github.com/apple/swift-protobuf.git', :tag => '1.0.1'
```

**Carthage:**
```
github "KosyanMedia/Hotellook-iOS-SDK-Core"
```

## Code example

```
import HotellookSDK

let config = HDKConfig(appHostName: "iphone.hotellook.sdk", lang: "en")
let sdk = HDKFacade(config: config)

sdk.loadAutocomplete(text: "Paris", limit: 10) { resp, err in
  // do something with resp or err
}

```

## More

See our open source template project: https://github.com/KosyanMedia/Aviasales-iOS-SDK
