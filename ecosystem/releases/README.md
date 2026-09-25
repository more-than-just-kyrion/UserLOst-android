# UserLOst-Releases

Distribution point for UserLOst's companion-app installers, used by the wireless-ADB install
wizard in [UserLOst]().

This repo holds no source -- only two floating-tag releases, each re-pointed at the latest build
on every publish:

- **vm-latest** -- `userland-vm.apk`, built from [UserLOst-VM]()
- **qemu-latest** -- `userland-qemu.apk`, built from [UserLOst-QEMU]()

Both source repos are private; this repo is public so the app can download the built APKs
directly over plain HTTPS without embedding any credentials.
