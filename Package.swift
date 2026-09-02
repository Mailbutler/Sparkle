// swift-tools-version:5.7
import PackageDescription

// Sparkle.xcframework is built from this repository's own sources by the Distribution scheme.
// Editing Autoupdate/, Sparkle/ or InstallerProgress/ changes nothing a consumer links until that
// scheme is re-run and the resulting xcframework replaces the one committed here.
let package = Package(
    name: "Sparkle",
    platforms: [.macOS(.v13)],
    products: [
        .library(
            name: "Sparkle",
            targets: ["Sparkle"])
    ],
    targets: [
        .binaryTarget(
            name: "Sparkle",
            path: "Sparkle.xcframework"
        )
    ]
)
