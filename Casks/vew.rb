cask "vew" do
  arch arm: "arm64", intel: "x64"
  version "0.0.1"

  if Hardware::CPU.arm?
    sha256 "0000000000000000000000000000000000000000000000000000000000000000"
  else
    sha256 "0000000000000000000000000000000000000000000000000000000000000000"
  end

  url "https://downloads.vew.sh/vew-darwin-#{arch}-#{version}.zip"
  name "vew"
  desc "vew -- a browser, with an agent built in"
  homepage "https://vew.sh"

  app "vew.app"

  zap trash: [
    "~/Library/Application Support/vew",
    "~/Library/Preferences/com.vew.app.plist",
  ]
end
