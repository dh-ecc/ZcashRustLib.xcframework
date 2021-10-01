# Reference Implementation for SPM distribution of ZcashLightClientKit

**N.B** 

- The namings of this are a little confusing, this is very much still reference / proof of concept, but not far off distributable.
- The `Package.swift` refers to `ZCashLC.xcframework` as binaryTarget, and the rest are the sources from ZcashLightClientKit.
- `ZCashLC.xcframework` is an XCFramework construction of the `librustzcashlc.[a,h]`
- `ZCashLC.xcframework` is created from the cargo build from `ZcashLightClientKit` by building static libraries for all the architectures we want (in this case arm64-ios, arm64-ios-sim and x86_64 sim) and `lipo`-ing and `xcodebuild create-xcframework`-ing

This _should_ function for a consumer of the SDK (integrated via spm) in exactly the same way as the current cocoapods integration does. As a bonus, for contributors we now have a completely auto generated `xcodeproject` when working on this as well... Try for yourself 😁, just double-click the `Package.swift` to open it in Xcode.


### TODOs / future directions
- fix naming, something along the lines of `ZCashLC.xcframework` -> `libzashlc.xcframework` (`ZCashLC` is purely an artifact of my experimentations). The same could also be applied to the name of the repo.
- fix warnings regarding some `.proto` and `Stencil` resources
- add a proper build script / make file for creating `libzashlc.xcframework`, the one here was created by hand 😅
- add a workspace / project with an abstract build target that runs said script to build rust + swiftUI at the same time for any contributor that wants to work on both at the same time 
