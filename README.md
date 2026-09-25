# UserLOst

Self-contained, offline Android application project — source, build
inputs, pre-built distribution/application assets, extraction artifacts,
and captured device state, all in one repository.

- **Package identifier:** `tech.ula`
- **Version:** 26.09.05 (`versionCode` 22920247)
- **Target / min SDK:** 35 / 24
- **Primary ABI:** `arm64-v8a`
- **Snapshot date:** 2026-09-24
- **Attribution and licensing:** see `CREDITS.md`

## Layout

```
app/                 Main Android application source (Gradle project).
                     Includes the CustomLibrary sourceset and the
                     UserLOstLibrary submodule content merged in-tree.

assets/              Pre-built asset tarballs. Each subdirectory is a
                     distinct asset (distro rootfs, DE variant, or
                     bundled application) with its own build inputs
                     and packaged outputs (per architecture).
  Alpine/            Alpine Linux rootfs
  Alpine_LXQt/       Alpine + LXQt desktop
  Alpine_XFCE/       Alpine + XFCE desktop
  Arch/              Arch Linux rootfs
  Arch_LXDE/         Arch + LXDE desktop
  Arch_XFCE/         Arch + XFCE desktop
  CentOS/            (placeholder, no built assets)
  Debian/            Debian rootfs
  Debian_LXDE/       Debian + LXDE
  Debian_XFCE/       Debian + XFCE
  Fedora/            Fedora rootfs
  Kali/              Kali rootfs
  Kali_LXDE/         Kali + LXDE
  Kali_XFCE/         Kali + XFCE
  Ubuntu/            Ubuntu rootfs
  Ubuntu_LXDE/       Ubuntu + LXDE
  Ubuntu_XFCE/       Ubuntu + XFCE
  Support/           Support binaries (busybox, proot, ld.so.preload)
  AiCLI/             Bundled command-line AI tools
  Andacity/          Audacity port
  deVStudio/         Visual Studio Code-style IDE bundle
  Gimp/              GIMP
  Gnuplot/           Gnuplot
  IDLE/              Python IDLE
  Inkscape/          Inkscape
  LibreDocs/         LibreOffice components
  Octave/            GNU Octave
  R/                 GNU R
  Termux/            Termux integration
  Thunderbird/       Thunderbird mail client

ecosystem/           Adjacent project components (not part of the APK).
  site/              Marketing / documentation website
  releases/          Release artifacts + release notes
  cloud/             Cloud/infrastructure code

reference/           Extraction artifacts from the installed APK.
  apk/               Raw APKs (base + arm64_v8a split + xxhdpi split)
  decoded/           apktool 3.0.3 decode of each APK (smali + resources)
  jadx/base/         jadx 1.5.6 Java decompile of base.apk
  data/              On-device app data tarballs (private, DE, external,
                     both Kali rootfs trees at time of snapshot)
  meta/              Device metadata: dumpsys, pm dump, getprop, sha256,
                     manifest, filesystem listings, shared_prefs snapshot

CREDITS.md           Attribution and licensing of all upstream sources.
                     This is the only file that references upstream by
                     name; the rest of the repository has been rebranded
                     to UserLOst.
README.md            This file.
.gitignore           Excludes build outputs and IDE state.
.gitattributes       Line-ending policy + binary designations.
```

## Building the app

The Android app source lives in `app/`. Standard Gradle:

```bash
cd app
./gradlew build
```

Prerequisites:
- JDK 17 or later
- Android SDK (SDK Platform 35, Build-Tools 34+)

The `settings.gradle` has been patched to disable the `:adbndk` module
(no local source was available for it). All other submodule content is
present in-tree under `app/UserLOstLibrary/`.

## Restoring on-device state

The rootfs tarballs under `reference/data/` preserve Linux permissions,
symlinks, and ownership. Extract on Linux (not Windows) for a working
copy of the rootfs:

```bash
cd reference
mkdir restored && cd restored
tar -xzf ../data/app-state.tar.gz
mkdir files/2 files/kali
tar -xzf ../data/rootfs-session2.tar.gz -C files/2
tar -xzf ../data/rootfs-kali-support.tar.gz -C files/kali
```

Socket files under `/run` and `/tmp` inside the rootfs were skipped
during archive creation — they recreate at runtime.

## Toolchain that produced `reference/`

- Android platform-tools 37.0.1-15733141 (`adb` 1.0.41)
- apktool 3.0.3
- jadx 1.5.6 (invoked with `-Xmx6g --no-res --show-bad-code`)
