// swift-tools-version: 5.9
import PackageDescription

let package = Package(
    name: "MapboxNavigation",
    products: [
        .library(
            name: "MapboxNavigation",
            targets: ["MapboxNavigation"]
        ),
    ],
    dependencies: [
            .package(url: "https://github.com/mapbox/MapboxGeocoder.swift", from: "0.15.0"),
            .package(url: "https://github.com/flitsmeister/Mapbox-directions-swift", .upToNextMajor(from: "0.23.2")),
            .package(url: "https://github.com/flitsmeister/turf-swift", .upToNextMajor(from: "0.2.2")),
            .package(url: "https://github.com/ceeK/Solar", from: "3.0.1")
        ],
    targets: [
        .target(
            name: "MapboxNavigation",
            dependencies: [
                "MapboxGeocoder",
                "MapboxDirections",
                "Turf",
                "Solar"
            ]
        ),
        .testTarget(
            name: "MapboxNavigationTests",
            dependencies: ["MapboxNavigation"]),
        .testTarget(
            name: "MapboxCoreNavigationTests",
            dependencies: ["MapboxNavigation"]),
    ]
)
