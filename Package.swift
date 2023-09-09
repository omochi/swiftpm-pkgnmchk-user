// swift-tools-version: 5.9

import PackageDescription

let package = Package(
    name: "swiftpm-pkgnmchk-user",
    products: [
        .executable(
            name: "App",
            targets: ["AppModule"]
        ),
    ],
    dependencies: [
        .package(url: "https://github.com/omochi/swiftpm-package-name-check", branch: "main")
    ],
    targets: [
        .executableTarget(
            name: "AppModule",
            dependencies: [
//                .product(name: "ZooModule", package: "zoo-package"),
                .product(name: "ZooModule", package: "swiftpm-package-name-check"),
            ]
        ),
    ]
)
