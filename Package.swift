// swift-tools-version: 6.0
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let commonSwiftSettings: [SwiftSetting] = [
    .define("DEBUG", .when(configuration: .debug)),
    .define("RELEASE", .when(configuration: .release)),
    .enableUpcomingFeature("ExistentialAny", .when(configuration: .debug)),
    .enableUpcomingFeature("ForwardTrailingClosures", .when(configuration: .debug)),
    .enableUpcomingFeature("ConciseMagicFile", .when(configuration: .debug)),
    .enableUpcomingFeature("ImportObjcForwardDeclarations", .when(configuration: .debug)),
    .enableUpcomingFeature("DisableOutwardActorInference", .when(configuration: .debug)),
    .enableUpcomingFeature("GlobalConcurrency", .when(configuration: .debug)),
    .enableUpcomingFeature("InferSendableFromCaptures", .when(configuration: .debug)),
    .enableUpcomingFeature("IsolatedDefaultValues", .when(configuration: .debug)),
    .enableUpcomingFeature("DynamicActorIsolation", .when(configuration: .debug)),
    .enableUpcomingFeature("GlobalActorIsolatedTypesUsability", .when(configuration: .debug)),
    .enableUpcomingFeature("RegionBasedIsolation", .when(configuration: .debug)),
    .enableUpcomingFeature("BareSlashRegexLiterals", .when(configuration: .debug)),
    .enableUpcomingFeature("ImplicitOpenExistentials", .when(configuration: .debug)),
    .enableUpcomingFeature("ConciseMagicFile", .when(configuration: .debug)),
//    .enableUpcomingFeature("InternalImportsByDefault", .when(configuration: .debug)),
    .enableExperimentalFeature("StrictConcurrency"),
    .enableUpcomingFeature("StrictConcurrency"),
]

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
            name: "SwiftLocation",
            swiftSettings: commonSwiftSettings
        ),
        .testTarget(
            name: "SwiftLocationTests",
            dependencies: ["SwiftLocation"]),
    ],
    swiftLanguageModes: [.v5]
)
