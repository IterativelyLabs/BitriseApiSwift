// swift-tools-version:5.1
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "BitriseAPI",
    platforms: [
        .iOS(.v11),
        .macOS(.v10_12),
    ],
    products: [
        // Products define the executables and libraries produced by a package, and make them visible to other packages.
        .library(
            name: "BitriseAPI",
            targets: ["BitriseAPI"]),
    ],
    dependencies: [
        .package(url: "https://github.com/Alamofire/Alamofire.git", from: "4.9.1")
    ],
    targets: [
        .target(
            name: "BitriseAPI",
            dependencies: ["Alamofire"]),
        .testTarget(
            name: "BitriseAPITests",
            dependencies: ["BitriseAPI"]),
    ]
)
