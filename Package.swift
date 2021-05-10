// swift-tools-version:5.3
import PackageDescription
let package = Package(
    name: "DodochaProfile",
    platforms: [.macOS(.v11)],
    products: [
        .executable(name: "DodochaProfile", targets: ["DodochaProfile"])
    ],
    dependencies: [
        .package(name: "Tokamak",
                 url: "https://github.com/TokamakUI/Tokamak",
                 Version(0,6,1) ..< Version(0,7,0)),
    ],
    targets: [
        .target(
            name: "DodochaProfile",
            dependencies: [
                .product(name: "TokamakShim", package: "Tokamak")
            ]),
        .testTarget(
            name: "DodochaProfileTests",
            dependencies: ["DodochaProfile"]),
    ]
)
