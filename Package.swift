// swift-tools-version:5.0
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "Blog",
    products: [
        .library(
            name: "Blog",
            targets: ["Blog"]),
    ],
    dependencies: [
    ],
    targets: [
        .target(
            name: "Blog",
            dependencies: [])
    ]
)
