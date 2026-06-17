cask "vew" do
  arch arm: "arm64", intel: "x64"
  version "0.5.2"

  if Hardware::CPU.arm?
    sha256 "c78e48d7c4978283610d80cfc64599b665c7595fc1d416dca5b8d65bbaf9eaa2"
  else
    sha256 "45515c1e7f87f77c350c04961d4f04f7218ea35d54be7f5690b17f53ea798701"
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
