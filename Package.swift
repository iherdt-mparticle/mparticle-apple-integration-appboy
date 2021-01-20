// swift-tools-version:5.3

import PackageDescription

let package = Package(
    name: "mParticle-Appboy",
    platforms: [
            .iOS("10.3"),
            .tvOS("10.2"),
        ],
    products: [
        .library(
            name: "mParticle-Appboy",
            targets: ["mParticle-Appboy"]),
    ],
    dependencies: [
        .package(name: "mParticle-Apple-SDK", url: "git@github.com:mParticle/mparticle-apple-sdk.git", from: "8.0.1"),
        .package(name: "Appboy-iOS-SDK", url: "https://github.com/Appboy/appboy-ios-sdk.git", from: "3.28.0"),
    ],
    targets: [
        .target(
            name: "mParticle-Appboy",
            dependencies: ["mParticle-Apple-SDK","Appboy-iOS-SDK"],
            path: "mParticle-Appboy",
            publicHeadersPath: "."),
    ],
    cxxLanguageStandard: .cxx11
)
