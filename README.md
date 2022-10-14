# Fanart
A Swift Package for Fanart.TV <https://fanart.tv>

## Requirements

* Swift 5.6

## Installation

### [Swift Package Manager](https://github.com/apple/swift-package-manager)

Add the TMDb package as a dependency to your `Package.swift` file, and add it as a dependency to your target.

```swift
// swift-tools-version:5.6

import PackageDescription

let package = Package(
  name: "MyPackage",
  dependencies: [
    .package(url: "https://github.com/torcelly/Fanart.git", upToNextMajor: "1.0.0")
  ],
  targets: [
    .target(name: "MyPackage", dependencies: ["Fanart"])
  ]
)
```

## Setup

### Get an API Key

Create an API key from Fanart.TV web site [https://fanart.tv/get-an-api-key/](https://fanart.tv/get-an-api-key/).

## API Areas

### Movies

Movie related resources of the fanart.tv API.

### Music

Music related resources of the fanart.tv API.

### TV

TV related resources of the fanart.tv AP.

## Documentation

The latest documentation for the TMDb APIs is available at [https://torcelly.github.io/Fanart/documentation/fanart](https://torcelly.github.io/Fanart/documentation/fanart).

## References

* [https://fanart.tv](https://fanart.tv)
* [https://fanarttv.docs.apiary.io](https://fanarttv.docs.apiary.io)

## License

This library is licensed under the Apache License 2.0. See [LICENSE](https://github.com/adamayoung/TMDb/blob/main/LICENSE) for details.
