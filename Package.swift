// swift-tools-version: 6.0

import PackageDescription

let package = Package(
    name: "xcbz",
    dependencies: [
        .package(url: "https://github.com/apple/swift-argument-parser.git", exact: "1.5.0"),
        .package(url: "https://github.com/tuist/XcodeProj.git", exact: "8.12.0")
    ],
    targets: [
        .executableTarget(
            name: "xcbz-CLI",
            dependencies: [
                "xcbz",
                .product(name: "ArgumentParser", package: "swift-argument-parser")
            ],
            path: "Sources/CLI"
        ),
        .target(
            name: "xcbz",
            dependencies: ["XcodeProj"],
            path: "Sources/xcbz"
        ),
        .testTarget(
            name: "xcbz-tests",
            dependencies: [
                "xcbz"
            ],
            path: "Tests/xcbz"
        )
    ]
)
