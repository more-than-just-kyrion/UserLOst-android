# Credits and Attribution

UserLOst is a fork/derivative of the **UserLAnd** Android application and
its associated asset repositories. This file records the upstream project,
its authors, and the exact versions this snapshot was taken from.

## Original project

- **Name:** UserLAnd
- **Original organization:** CypherpunkArmory
- **Primary repository:** https://github.com/CypherpunkArmory/UserLAnd
- **Play Store package:** `tech.ula`
- **Snapshotted version:** 26.09.05 (`versionCode` 22920247)
- **F-Droid page:** https://f-droid.org/packages/tech.ula

Credit for the original conception, design, and code goes to the
UserLAnd authors and contributors. All copyright notices, license
headers, and per-file attribution present in `sources/`, `decoded/`,
`jadx/`, `apk/`, and `data/` are retained unchanged from the upstream
projects.

## Licensing

The main `UserLAnd` repository does not carry an explicit license file
at snapshot time. Downstream package metadata (F-Droid) lists it as
**GNU General Public License v3.0 or later**.

The asset repositories (`UserLAnd-Assets-*`) are licensed under the
**MIT License**, Copyright (c) 2018 CypherpunkArmory. The full MIT
license text is present at the root of each cloned asset repo under
`sources/UserLAnd-Assets-*/LICENSE`.

Bundled third-party rootfs contents (Alpine, Arch, Debian, Kali, Ubuntu,
Fedora, CentOS, and the extracted rootfs archives in `data/`) are
distributions of upstream Linux projects and carry their own licenses;
see the respective distribution documentation. Bundled application
tarballs (Gimp, Inkscape, Octave, R, LibreOffice components, etc.) are
covered by their respective upstream licenses.

Anyone redistributing or building on UserLOst is expected to honor the
license terms of every upstream component. Consult the individual
license files inside each `sources/*/` directory before redistribution.

## Upstream source snapshot

The following repositories were cloned from
`https://github.com/CypherpunkArmory` on 2026-09-24. The commit SHA
listed is the exact revision this snapshot depends on.

| Repository | Branch | Commit |
|---|---|---|
| UserLAnd | master | `ec6e53c84b74473c7e97fd781ee9809408812dc3` |
| UserLAnd-Assets-Support | staging | `007b4e2ab2c273d04bc2277479a877b5ad95d2b8` |
| UserLAnd-Assets-Alpine | master | `e783c9f5fa20d1e96aab4992f8500f6909e73399` |
| UserLAnd-Assets-Alpine_LXQt | master | `89f81ccac3d5c566cd0d68f8d09afd7ff1e028e7` |
| UserLAnd-Assets-Alpine_XFCE | master | `14c3465441fa0b5b93833ba253d1e47612f02f11` |
| UserLAnd-Assets-Arch | master | `faac6fb2a4f973650fc86142d52e0f99dd6779bf` |
| UserLAnd-Assets-Arch_LXDE | master | `bf64e201c786bc5bce0ae6555d90575665d3e3ca` |
| UserLAnd-Assets-Arch_XFCE | master | `50d03f17b78c5b989ce6fe3ac12d6aa38c8daf13` |
| UserLAnd-Assets-CentOS | master | `7a69b0f422deea0e017ea9038f62f5eaa89ec45c` |
| UserLAnd-Assets-Debian | master | `536ee73c3a88e6ce0409d8d6dbfcb65dc4c67b17` |
| UserLAnd-Assets-Debian_LXDE | master | `1527217003e2c111493c369e0f7b02a87ca67060` |
| UserLAnd-Assets-Debian_XFCE | master | `a6d8f8883208d296e2f136e3fbf0ecf796593f38` |
| UserLAnd-Assets-Fedora | master | `80b8727a49a69f4e49bd77aa1234f6d39b5a063f` |
| UserLAnd-Assets-Kali | master | `753cd0b95fcd228d73c566763dac221acffc20ff` |
| UserLAnd-Assets-Kali_LXDE | master | `467172bf39f55562750fface03b60fc14a0fdf84` |
| UserLAnd-Assets-Kali_XFCE | master | `3bda4ffe14e2b18421cad1521986c2b8a7480f12` |
| UserLAnd-Assets-Ubuntu | master | `4f47df40838fb01d98d2358e534a574fbed8707e` |
| UserLAnd-Assets-Ubuntu_LXDE | master | `7dcfea638681a7dec6c9baaa226e0276959ced87` |
| UserLAnd-Assets-Ubuntu_XFCE | master | `2b19ca43c4024495e6c6eccb2c2ca17b8a1a227a` |
| UserLAnd-Assets-AiCLI | main | `ea9b28f3114eb43a77591990c5ce67623aeae3d5` |
| UserLAnd-Assets-Andacity | master | `af8b7cad80ced4935af9f81a8d0c8f662b22cb73` |
| UserLAnd-Assets-Gimp | master | `c832fb65370184316d444b2f141e9c8e782e313c` |
| UserLAnd-Assets-Gnuplot | master | `a1fb07720fdfb900a9881cb3e5dd53b515f4dd68` |
| UserLAnd-Assets-IDLE | master | `d8ae287898c43829748aaf4e763373188a67ea0d` |
| UserLAnd-Assets-Inkscape | master | `f3a0b13ee6c80abf3f03eb27a0ae4248b364a8a0` |
| UserLAnd-Assets-LibreDocs | master | `6a79f95c877899951d6fceca43bffa3862449b6a` |
| UserLAnd-Assets-Octave | master | `ff16328ac3091d138f20a87223b7d2f28764a241` |
| UserLAnd-Assets-R | master | `991ae2e411184ccc11b77adcc69a3b340ca2619d` |
| UserLAnd-Assets-Termux | master | `cf0fb1bf7b46df98bb65260075f3ea3fb0141f84` |
| UserLAnd-Assets-Thunderbird | master | `9ecb31b2086952eb6fc53fe5a006f09871ebcb78` |
| UserLAnd-Assets-deVStudio | master | `a3dbd72dc8e9bcd22b62a1add418b6136945b9c8` |
| userland-cloud | master | `041035ce4d723b2ab4f80caf5a9cdc166a9f6457` |
| UserLAnd-Releases | main | `7f13fd2b9428f61de25f3bdbb2957d06891baf68` |
| UserLAnd-Site | develop | `b4ee2cb6acba0e059627d658ea23ea2a582da84a` |

The `UserLAndLibrary` submodule was fetched from the community fork at
`RakhithJK/UserLAndLibrary` (the original CypherpunkArmory repository is
no longer available). The `remote-desktop-clients` module was fetched
from `CypherpunkArmory/remote-desktop-clients`. Both were merged in-tree
into `app/UserLOstLibrary/`.

Upstream commit history for each cloned repository is no longer
retained locally; the `.git` metadata was removed after cloning to
reduce disk usage. The SHAs above pin each snapshot to its exact
upstream state at the time of the fork so authorship can be traced by
re-cloning the corresponding upstream repository.

## Toolchain

Snapshotting and decoding was performed using open-source software:

- **Android platform-tools** (`adb`) — Google, Apache 2.0
- **apktool** — Ryszard Wiśniewski, Connor Tumbleson, Apache 2.0
- **jadx** — Skylot, Apache 2.0

These tools are not redistributed in this repository.

## Scope note

`app/`, `assets/`, `ecosystem/`, and `reference/` derive from upstream
material that has been rebranded in-place: brand names in text content
(`UserLAnd` -> `UserLOst`) have been rewritten and top-level directory
names carry the fork name. Java package identifiers (`tech.ula`,
`tech.userland.adbndk`) are retained because they are load-bearing
technical identifiers and changing them would break the code.

This CREDITS file is the only in-repo document that references upstream
projects or authors by name.
