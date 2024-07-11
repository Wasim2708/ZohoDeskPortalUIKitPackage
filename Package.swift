// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "ZohoDeskPortalUIKitPackage",
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "ZohoDeskPortalUIKitPackage",
            targets: ["ZohoDeskPortalUIKitPackage", "ZohoDeskPlatformUIKit"]),
    ],
    dependencies: [
        .package(url: "https://github.com/Wasim2708/ZDMediaPickerSDK.git", from: "1.0.0"),
        .package(url: "https://github.com/Wasim2708/ZohoDeskPlatformDataBridge.git", from: "1.0.0"),
    ],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        
        .target(
            name: "ZohoDeskPortalUIKitPackage",
            dependencies: [
                .product(name: "ZohoDeskPlatformDataBridge", package: "ZohoDeskPlatformDataBridge"),
                .product(name: "ZDMediaPickerSDK", package: "ZDMediaPickerSDK")
            ]),
        .binaryTarget(name: "ZohoDeskPlatformUIKit", url: "https://maven.zohodl.com/ZohoDesk/ZohoDeskPlatformUIKit/iOS/2.0.0-beta.3/ZDPUIBuilder.zip", checksum: "9a8a3b9cc477b602ffc532ce6730fbd41ddab4d927d49a3946ea705b7166025e")
    ]
)
