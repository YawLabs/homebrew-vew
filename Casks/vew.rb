cask "vew" do
  version "0.9.3"

  # mac-x64 (Intel) was deprecated in the v0.8 series; the cask now ships
  # the arm64 binary to every Mac. Intel users get it via Rosetta 2.
  sha256 "da4c55689f625a88edc0459d80272e5867373c5f37daa7c0fa3cc991a4caad95"

  url "https://downloads.vew.sh/vew-darwin-arm64-#{version}.zip"
  name "vew"
  desc "vew -- a browser, with an agent built in"
  homepage "https://vew.sh"

  app "vew.app"

  zap trash: [
    "~/Library/Application Support/vew",
    "~/Library/Preferences/com.vew.app.plist",
  ]
end
