// swift-tools-version: 5.6
import PackageDescription

let package = Package(
    name: "VLCUI",
    platforms: [
        .iOS(.v13),
        .tvOS(.v13),
        .macOS(.v10_15),
    ],
    products: [
        .library(
            name: "VLCUI",
            targets: ["VLCUI"]
        ),
    ],
    dependencies: [
        .package(url: "https://github.com/tylerjonesio/vlckit-spm.git", from: "3.6.0"),
    ],
    targets: [
        .target(
            name: "VLCUI",
            dependencies: [
                .product(name: "VLCKit", package: "vlckit-spm")
            ]
        ),
    ]
)
