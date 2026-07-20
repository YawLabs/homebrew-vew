cask "vew" do
  version "0.9.8"

  # mac-x64 (Intel) was deprecated in the v0.8 series; the cask now ships
  # the arm64 binary to every Mac. Intel users get it via Rosetta 2.
    sha256 "7f05a8d28efe5444dbdc8e3b2df057337f1bd501c57591939f34d7f83aba45b7"

  url "https://downloads.vew.sh/vew-darwin-arm64-#{version}.zip"
  name "vew"
  desc "vew -- a browser, with an agent built in"
  homepage "https://vew.sh"

  app "vew.app"

  # Tolerate upgrades from a half-installed / manually-removed previous
  # version. `brew upgrade` errors with "It seems the App source
  # '/Applications/vew.app' is not there" when the previous install is gone
  # (user trashed it, antivirus quarantined it, a prior interrupted upgrade
  # left .app.inProgress around, etc.). Clean BOTH the live target AND any
  # leftover staging dir before the install/upgrade, so cask sees a clean
  # slate and proceeds. `preflight` runs before BOTH install AND upgrade;
  # the `uninstall_*` variants only fire on `brew uninstall --zap`.
  # No sudo: the homebrew process moves files in /Applications without it,
  # and a password prompt here would break scripted installs.
  preflight do
    system_command "/bin/rm",
                   args: ["-rf", "#{appdir}/vew.app",
                          "#{appdir}/vew.app.inProgress"],
                   must_succeed: false
  end

  # vew is ad-hoc signed, not notarized, so Homebrew's download-quarantine bit
  # trips Gatekeeper -- and `brew upgrade --cask vew` re-applies the bit on EVERY
  # upgrade, not just first install. Strip it after each install/upgrade so the
  # app launches without a manual `xattr -cr`. Remove this once the app is
  # notarized (the real fix; see install/release notes). Mirrors the postflight
  # in homebrew-yaw/Casks/yaw.rb.
  postflight do
    system_command "/usr/bin/xattr",
                   args: ["-r", "-d", "com.apple.quarantine", "#{appdir}/vew.app"],
                   must_succeed: false
  end

  zap trash: [
    "~/Library/Application Support/vew",
    "~/Library/Preferences/com.vew.app.plist",
  ]
end
