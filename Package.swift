// swift-tools-version:5.3
import PackageDescription
let package = Package(
    name: "dodocha169-profile",
    platforms: [.macOS(.v11)],
    products: [
        .executable(name: "dodocha169-profile", targets: ["dodocha169-profile"])
    ],
    dependencies: [
        .package(name: "Tokamak", url: "https://github.com/TokamakUI/Tokamak", from: "0.6.1")
    ],
    targets: [
        .target(
            name: "dodocha169-profile",
            dependencies: [
                .product(name: "TokamakShim", package: "Tokamak")
            ]),
        .testTarget(
            name: "dodocha169-profileTests",
            dependencies: ["dodocha169-profile"]),
    ]
)