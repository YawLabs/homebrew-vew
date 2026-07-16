# homebrew-vew

Homebrew tap for [vew](https://vew.sh) — a browser, with an agent built in.

## Usage

```
brew tap yawlabs/vew
brew install --cask vew
```

> On Homebrew older than 5.1 the `install-mac.sh` one-liner handles the
> tap automatically.

## Update

```
brew upgrade --cask vew
```

## Signing & quarantine

vew is **ad-hoc signed**, not notarized, so Homebrew's download-quarantine bit
trips Gatekeeper on every launch -- and `brew upgrade --cask vew` re-applies
the bit on EVERY upgrade, not just first install. The cask's `postflight`
strips it after each install/upgrade so the app launches without a manual
`xattr -cr`. Mirrors the `postflight` in `homebrew-yaw/Casks/yaw.rb`.

When vew ships with a Developer ID + notarization, this `postflight` (and
the matching self-signed-cert plumbing in `vew/scripts/tailnet-build-remote.sh`
+ `vew/forge.config.ts`) can be removed -- the real fix is notarization.

## Stable self-signed codesign identity (Mac build host)

The Mac build host (`kalilahs-macbook-air` on the Tailscale tailnet) signs
`vew.app` with a stable self-signed identity so macOS persists the
keychain/safeStorage "Always Allow" grant across updates instead of
re-prompting every release. Mirrors yaw's `YAW_SELFSIGN_IDENTITY` /
`YAW_SELFSIGN_NAME="Yaw Terminal"` pattern.

**One-time setup on the Mac build host:**

1. Open **Keychain Access** → Certificate Assistant → **Create a Certificate**.
2. Identity Type: **Code Signing**.
3. Certificate Type: **Self Signed Root**.
4. Name: **Vew** (must match `VEW_SELFSIGN_NAME="Vew"` in
   `vew/scripts/tailnet-build-remote.sh`).
5. Let the defaults carry through.

The next `make:mac` run on the host will auto-detect the cert via
`security find-identity -p codesigning` and sign with it. Without the
cert, the build still works -- it falls back to ad-hoc (`--sign -`),
which re-prompts each update.
