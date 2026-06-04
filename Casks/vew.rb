cask "vew" do
  arch arm: "arm64", intel: "x64"
  version "0.4.0"

  if Hardware::CPU.arm?
    sha256 "91e425f4aac53da2981843f802a71a13ddeddc8667e46a261a1c5e6def11f0a8"
  else
    sha256 "86be1db0cf87461eabebf26f4de6afc6c0ce8ca3a582fbaf50d9642c8e0db15b"
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
