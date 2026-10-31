# AirDrop IPA Fix 1.0.0

AirDrop IPA Fix 1.0.0 is the first public release of the AirDrop `.ipa`
compatibility tweak.

## Highlights

- Stops AirDrop from installing `.ipa` files automatically.
- Received IPAs are saved as regular files.
- No preference pane, picker, or configuration.
- Rootless and RootHide packages.

## Compatibility

| Build | Architecture | Compatibility |
|---|---|---|
| RootHide | `iphoneos-arm64e` | Tested on iOS 16 (palera1n, RootHide) and iOS 18 (Dopamine 3, RootHide) |
| Rootless | `iphoneos-arm64` | Expected to work on iOS 16+ rootless jailbreaks |

## Assets

- `com.burc334.airdropipafix_1.0.0_iphoneos-arm64e.deb`
- `com.burc334.airdropipafix_1.0.0_iphoneos-arm64.deb`
- `SHA256SUMS.txt`

## Install

1. Download the deb matching your jailbreak.
2. Install it with Sileo, Zebra, or Filza.
3. Respring.

## Verification

Verify the downloaded deb against `SHA256SUMS.txt` before installing.

## Notes

This release uses GitHub Releases and the GitHub Pages depiction. No APT
repository is required.
