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
            url: "https://github.com/geniee-ssp/googleads-mobile-ios-mediation-admanager/releases/download/13.7.1/GoogleMobileAdsMediationAdManager.13.7.0.1.zip",
            checksum: "4fe4cbd87e65e6262e9de2d955910ea8b979768094265749caf1e2228e54b9b4"
        )
    ]
)
