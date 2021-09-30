// swift-tools-version:5.5
import PackageDescription

let package = Package(
    name: "ZCashLC",
    products: [
        .library(
            name: "ZCashLC",
            targets: ["ZCashLC"]
        ),
    ],
    targets: [
        .binaryTarget(name: "ZCashLC", path: "ZCashLC.xcframework")
    ]
)
