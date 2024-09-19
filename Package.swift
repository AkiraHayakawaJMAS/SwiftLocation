// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "SwiftLocation",
    platforms: [.iOS(.v16), .watchOS(.v9)],
    products: [
        .library(
            name: "SwiftLocation",
            targets: ["SwiftLocation"]),
    ],
    targets: [
        .target(
            name: "SwiftLocation"),
        .testTarget(
            name: "SwiftLocationTests",
            dependencies: ["SwiftLocation"]),
    ]
)
