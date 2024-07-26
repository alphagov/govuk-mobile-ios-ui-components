// swift-tools-version: 5.10
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "UIComponents",
    platforms: [.iOS(.v14)],
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "UIComponents",
            targets: ["UIComponents"]
        )
    ],
    targets: [
        .target(
            name: "UIComponents",
            path: "UIComponents",
            sources: [
                "Sources"
            ]
        ),
        .testTarget(
            name: "UIComponentsTests",
            dependencies: ["UIComponents"],
            path: "UIComponents",
            sources: [
                "Tests"
            ]
        )
    ]
)
