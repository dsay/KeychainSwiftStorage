// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "KeychainSwiftStorage",
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "KeychainSwiftStorage",
            targets: ["KeychainSwiftStorage"]),
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        .package(url: "https://github.com/dsay/SwiftRepository.git", from: "1.0.0"),
        .package(name: "KeychainSwift", url: "https://github.com/evgenyneu/keychain-swift.git", from: "19.0.0"),
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        .target(
            name: "KeychainSwiftStorage",
            dependencies: ["SwiftRepository", "KeychainSwift"]),
        .testTarget(
            name: "KeychainSwiftStorageTests",
            dependencies: ["KeychainSwiftStorage"]),
    ]
)
