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
            url: "https://github.com/geniee-ssp/googleads-mobile-ios-mediation-admanager/releases/download/13.7.2/GoogleMobileAdsMediationAdManager.13.7.0.2.zip",
            checksum: "8b2513baf4f18ab9ea51ab30284a0e9bc94c0f2baa33dfe3c8b9b27074831f56"
        )
    ]
)
