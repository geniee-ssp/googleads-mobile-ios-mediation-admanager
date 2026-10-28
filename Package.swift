// swift-tools-version: 5.9
import PackageDescription

let package = Package(
    name: "GoogleMobileAdsMediationAdManager",
    platforms: [.iOS(.v13)],
    products: [
        .library(
            name: "GoogleMobileAdsMediationAdManager",
            targets: ["GoogleMobileAdsMediationAdManagerTarget"]
        )
    ],
    dependencies: [
        .package(
            url: "https://github.com/googleads/swift-package-manager-google-mobile-ads.git",
            from: "13.7.0"
        )
    ],
    targets: [
        .target(
            name: "GoogleMobileAdsMediationAdManagerTarget",
            dependencies: [
                "GoogleMobileAdsMediationAdManager",
                .product(name: "GoogleMobileAds", package: "swift-package-manager-google-mobile-ads")
            ],
            path: "Sources/GoogleMobileAdsMediationAdManagerTarget"
        ),
        .binaryTarget(
            name: "GoogleMobileAdsMediationAdManager",
            url: "https://github.com/geniee-ssp/googleads-mobile-ios-mediation-admanager/releases/download/13.7.3/GoogleMobileAdsMediationAdManager.13.7.0.3.zip",
            checksum: "14aff5e89957aa8883bbe27e04e668f5a56b9a1a0e5b2c9315cff1b3d301ecba"
        )
    ]
)
