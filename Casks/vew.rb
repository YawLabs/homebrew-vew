cask "vew" do
  version "0.9.3"

  # mac-x64 (Intel) was deprecated in the v0.8 series; the cask now ships
  # the arm64 binary to every Mac. Intel users get it via Rosetta 2.
  sha256 "5fd897312743e4822ff6d3d369b2f58c1f50feecbb025b6ece3459444ccbf180"

  url "https://downloads.vew.sh/vew-darwin-arm64-#{version}.zip"
  name "vew"
  desc "vew -- a browser, with an agent built in"
  homepage "https://vew.sh"

  app "vew.app"

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
