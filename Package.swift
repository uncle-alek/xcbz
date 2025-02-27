// swift-tools-version: 6.0

import PackageDescription

let package = Package(
    name: "xcbz",
    dependencies: [
        .package(url: "https://github.com/apple/swift-argument-parser.git", exact: "1.5.0"),
    ],
    targets: [
        .executableTarget(
            name: "xcbz_main",
            dependencies: [
                "xcbz_lib",
                .product(name: "ArgumentParser", package: "swift-argument-parser")
            ],
            path: "Sources/Main"
        ),
        .target(
            name: "xcbz_lib",
            path: "Sources/Lib"
        ),
        .testTarget(
            name: "xcbz_lib_tests",
            dependencies: [
                "xcbz_lib"
            ],
            path: "Tests/Lib"
        )
    ]
)
