// swift-tools-version: 5.9
import PackageDescription

let package = Package(
    name: "Networking",
    platforms: [.iOS(.v17)],
    products: [.library(name: "Networking", targets: ["Networking"])],
    dependencies: [
        .package(name: "Entity", path: "../Entity"),
        .package(name: "LocalStore", path: "../LocalStore"),
        .package(url: "https://github.com/apollographql/apollo-ios.git", from: "1.7.0")
    ],
    targets: [
        .target(
            name: "Networking",
            dependencies: [
                "Entity",
                "LocalStore",
                .product(name: "Apollo", package: "apollo-ios")
            ],
            path: "Sources/"
        ),
        .testTarget(
            name: "NetworkingTests",
            dependencies: ["Networking"]
        ),
    ]
)
