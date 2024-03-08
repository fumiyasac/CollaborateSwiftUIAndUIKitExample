// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "Components",
    products: [
        .library(
            name: "Components",
            targets: ["Components"]),
    ],
    dependencies: [
        .package(url: "https://github.com/kean/Nuke.git", from: "12.4.0")
    ],
    targets: [
        .target(
            name: "Components"),
        .testTarget(
            name: "ComponentsTests",
            dependencies: ["Components"]),
    ]
)
