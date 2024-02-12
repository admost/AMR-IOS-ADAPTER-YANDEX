// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "AMRAdapterYandex",
    platforms: [
        .iOS(.v13)
    ],
    products: [
        .library(
            name: "AMRAdapterYandex", 
            targets: ["AMRAdapterYandex"])
    ],
    targets: [
        .binaryTarget(
            name: "AMRAdapterYandex", 
            path: "./AMRAdapterYandex/Libs/AMRAdapterYandex.xcframework")
    ]
)