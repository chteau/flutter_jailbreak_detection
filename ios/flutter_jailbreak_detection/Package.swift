// swift-tools-version: 5.9
import PackageDescription

let package = Package(
    name: "flutter_jailbreak_detection",
    platforms: [
        .iOS("12.0"),
    ],
    products: [
        .library(name: "flutter-jailbreak-detection", targets: ["flutter_jailbreak_detection"]),
    ],
    dependencies: [
        .package(name: "FlutterFramework", path: "../FlutterFramework"),
        .package(url: "https://github.com/securing/IOSSecuritySuite.git", from: "1.9.0"),
    ],
    targets: [
        .target(
            name: "flutter_jailbreak_detection",
            dependencies: [
                .product(name: "FlutterFramework", package: "FlutterFramework"),
                .product(name: "IOSSecuritySuite", package: "IOSSecuritySuite"),
            ],
            path: "Sources/flutter_jailbreak_detection"
        ),
    ]
)
