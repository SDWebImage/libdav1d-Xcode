# libdav1d + Xcode

[![CI Status](http://img.shields.io/travis/SDWebImage/libdav1d-Xcode.svg?style=flat)](https://travis-ci.org/SDWebImage/libdav1d-Xcode)
[![Version](https://img.shields.io/cocoapods/v/libdav1d.svg?style=flat)](http://cocoapods.org/pods/libdav1d)
[![License](https://img.shields.io/cocoapods/l/libdav1d.svg?style=flat)](http://cocoapods.org/pods/libdav1d)
[![Platform](https://img.shields.io/cocoapods/p/libdav1d.svg?style=flat)](http://cocoapods.org/pods/libdav1d)
[![Carthage compatible](https://img.shields.io/badge/Carthage-compatible-4BC51D.svg?style=flat)](https://github.com/SDWebImage/libdav1d-Xcode)
[![SwiftPM compatible](https://img.shields.io/badge/SwiftPM-compatible-brightgreen.svg?style=flat)](https://swift.org/package-manager/)

A wrapper for [libdav1d](https://github.com/videolan/dav1d) + Xcode project.
This enables Carthage support

This repo also including the CocoaPods's spec file to use libdav1d.

## Requirements

+ iOS 8
+ macOS 10.7
+ tvOS 9.0
+ watchOS 2.0

## Note

This Carthage and CocoaPods support, disable the architecture specify assembly code, and use the pure C implementation instead. This because both the lack support for CocoaPods and Xcode NASM compiler.

If you want the best performance for specify architecture, try to read the [README](https://github.com/videolan/dav1d/blob/master/README.md) from dav1d to build the pre-built with Meson and Ninja by your own.

## Installation

### Carthage

libdav1d is (via this repo) available through [Carthage](https://github.com/Carthage/Carthage).

```
github "SDWebImage/libdav1d-Xcode"
```

### CocoaPods

libdav1d is available through [CocoaPods](https://github.com/CocoaPods/CocoaPods).

```
pod 'libdav1d'
```

#### Swift Package Manager (Xcode 11+)

libdav1d is available through [Swift Package Manager](https://swift.org/package-manager).

```swift
let package = Package(
    dependencies: [
        .package(url: "https://github.com/SDWebImage/libdav1d-Xcode.git", from: "0.6")
    ]
)
```

## Usage

Use libdav1d as you would normally, this is just a repo that adds an Xcode proj.

## License

libdav1d is available under the [BSD 2-Clause License](https://github.com/videolan/dav1d/blob/master/COPYING).


