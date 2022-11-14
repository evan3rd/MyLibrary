// swift-tools-version: 5.6
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "MyLibrary",
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "MyLibrary",
            targets: ["MyLibrary", "AuthMe"]),
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        // .package(url: /* package url */, from: "1.0.0"),
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        .target(
            name: "MyLibrary",
            dependencies: []),
        .binaryTarget(
                    name: "AuthMe",
                    // url: "https://github.com/evan3rd/AuthMe/AuthMe.xcframework.zip",
                    url: "https://github.com/evan3rd/AuthMe/blob/develop/AuthMe.xcframework.zip",
                    //checksum: "37f7e9608c6070fb3d1bd2e85f36ffcd145d34c98c368899725e463f54befecf"
                    checksum: "a942872ecb3a978ee0b2369719eaa8a430e216f76c5a59fab69b299cca20dab9"
                ),
        .testTarget(
            name: "MyLibraryTests",
            dependencies: ["MyLibrary"]),
    ]
)
