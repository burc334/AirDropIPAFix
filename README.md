<p align="center">
  <img src="docs/icon.png" width="160" alt="AirDrop IPA Fix icon">
</p>

<h1 align="center">AirDrop IPA Fix</h1>

<p align="center"><strong>AirDrop IPA Fix is a rootless iOS jailbreak tweak that stops AirDrop from installing `.ipa` files automatically. Received IPAs are saved as regular files.</strong></p>

- Package: `com.burc334.airdropipafix`
- Version: `1.0.0`
- Builds: rootless (`iphoneos-arm64`) and RootHide (`iphoneos-arm64e`)
- License: MIT

## Compatibility

| Build | Architecture | Compatibility |
|---|---|---|
| RootHide | `iphoneos-arm64e` | Tested on iOS 16 (palera1n, RootHide) and iOS 18 (Dopamine 3, RootHide) |
| Rootless | `iphoneos-arm64` | Expected to work on iOS 16+ rootless jailbreaks |

## What it does

- Stops AirDrop from installing `.ipa` files automatically.
- Saves received IPAs as regular files.
- Leaves normal AirDrop for PDFs, photos, and other files unchanged.

## What it does not do

- No preference pane.
- No “Open With” picker.
- No changes to your download location.
- No changes to how IPAs are opened from Files or Safari.

## Install

1. Download the matching deb:
   - RootHide: `iphoneos-arm64e`
   - Rootless: `iphoneos-arm64`
2. Install with Sileo, Zebra, or Filza.
3. Respring if `sharingd` does not reload automatically.

## Verification

SHA-256 checksums are published in `SHA256SUMS.txt` with the GitHub release.

## How it works

`sharingd` asks `MCProfileConnection` whether AirDrop is allowed to install apps. The tweak returns `NO` for `isAirDropAppInstallationAllowed`, so AirDrop does not hand `.ipa` files to the installation service.

## Build

```sh
export THEOS=$HOME/theos
make package FINALPACKAGE=1
./tools/make-roothide.sh
```

## License

MIT

AI-assisted development with DeepSeek-V4.1-Flash-1017.
