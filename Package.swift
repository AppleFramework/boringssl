// swift-tools-version:5.9

import PackageDescription

let package = Package(
    name: "boringssl",
    platforms: [
        .macOS(.v10_13),
        .iOS(.v12),
        .tvOS(.v12),
        .visionOS(.v1)
    ],
    products: [
        .library(
            name: "boringssl",
            targets: ["boringssl"]
        ),
        .library(
            name: "libboringssl",
            targets: ["libboringssl"]
        )
    ],
    targets: [
        .binaryTarget(
            name: "boringssl",
            url: "https://github.com/AppleFramework/boringssl/releases/download/fips-20220613/openssl.xcframework.zip",
            checksum: "3514f908850d37c7bcf210a0e80e9e5b3da33c6b5925ce6b3cdba2e401d75d3a"
        ),
        .binaryTarget(
            name: "libboringssl",
            url: "https://github.com/AppleFramework/boringssl/releases/download/fips-20220613/libopenssl.xcframework.zip",
            checksum: "d99847ea3ecf58769397e8c2083118f82d2f4b30ba8fa302b339253752d3f1ba"
        )
    ]
)
