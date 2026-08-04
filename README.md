# GoogleMobileAdsMediationAdManager

Google Ad Manager adapter for the Google Mobile Ads mediation platform.
Developed and maintained by Geniee, Inc.

## Installation (Swift Package Manager)

Add this package to your Xcode project:

```
https://github.com/geniee-ssp/googleads-mobile-ios-mediation-admanager.git
```

## Requirements

- iOS 13.0+
- Xcode 16+
- [Google Mobile Ads SDK](https://github.com/googleads/swift-package-manager-google-mobile-ads) 13.7.0+

## Supported Ad Formats

- Banner
- Interstitial
- Rewarded
- Rewarded Interstitial
- Native
- App Open

## Versions

| Adapter version | SPM tag  | Google Mobile Ads SDK |
| --------------- | -------- | --------------------- |
| 13.7.0.0        | `13.7.0` | 13.7.0                |

The first three components of the adapter version match the Google Mobile Ads SDK
version; the fourth is the adapter-only patch number.

## Error Domain

Errors raised by this adapter use the domain
`jp.co.geniee.GoogleMobileAdsMediationAdManager`:

| Code | Meaning                  |
| ---- | ------------------------ |
| 101  | Invalid server parameters |
| 102  | Ad not ready              |
