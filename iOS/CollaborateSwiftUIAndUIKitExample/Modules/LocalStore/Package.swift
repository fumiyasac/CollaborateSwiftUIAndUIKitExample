// swift-tools-version: 5.9
import PackageDescription

let package = Package(
    name: "LocalStore",
    platforms: [.iOS(.v17)],
    products: [.library(name: "LocalStore", targets: ["LocalStore"])],
    dependencies: [
        .package(url: "https://github.com/kishikawakatsumi/KeychainAccess.git", from: "4.2.2")
    ],
    targets: [
        .target(
            name: "LocalStore",
            dependencies: [
                .product(name: "KeychainAccess", package: "KeychainAccess")
            ],
            path: "Sources/"
        ),
        .testTarget(
            name: "LocalStoreTests",
            dependencies: ["LocalStore"]
        ),
    ]
)
