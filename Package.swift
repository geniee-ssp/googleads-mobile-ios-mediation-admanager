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
            url: "https://github.com/geniee-ssp/googleads-mobile-ios-mediation-admanager/releases/download/13.7.0/GoogleMobileAdsMediationAdManager.13.7.0.0.zip",
            checksum: "b1801c7e0d88d200a89266847992d6ee0dd41eeb5606983c98885e02021bd011"
        )
    ]
)
