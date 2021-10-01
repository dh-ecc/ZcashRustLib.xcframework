// swift-tools-version:5.4
import PackageDescription

let package = Package(
    name: "ZcashLightClientKit",
    platforms: [
        .iOS(.v13),
        .macOS(.v10_12)
    ],
    products: [
        .library(
            name: "ZcashLightClientKit",
            targets: ["ZcashLightClientKit","ZCashLC"]
        ),
    ],
    dependencies: [
        .package(url: "https://github.com/grpc/grpc-swift.git", from: "1.0.0"),
        .package(url: "https://github.com/stephencelis/SQLite.swift.git", from: "0.13.0")
    ],
    targets: [
        .target(name: "ZcashLightClientKit", dependencies: [
            .product(name: "SQLite", package: "SQLite.swift"),
            .product(name: "GRPC", package: "grpc-swift"),
        ]),
        .binaryTarget(name: "ZCashLC", path: "ZCashLC.xcframework")
    ]
)
