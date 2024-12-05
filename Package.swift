// swift-tools-version: 5.9
import PackageDescription

let package = Package(
    name: "TikTokenSwift",
    platforms: [.iOS(.v13), .macOS(.v13), .tvOS(.v16), .visionOS(.v1), .watchOS(.v6)],
    products: [
        .library(name: "TikTokenSwift", targets: ["TikTokenSwift"]),
    ],
    dependencies: [
        .package(url: "https://github.com/apple/swift-crypto.git", from: "3.10.0"),
    ],
    targets: [
        .target(
            name: "TikTokenSwift",
            dependencies: [
                .product(name: "Crypto", package: "swift-crypto"),
            ]
        ),
        .testTarget(name: "TikTokenSwiftTests", dependencies: ["TikTokenSwift"]),
    ]
)
