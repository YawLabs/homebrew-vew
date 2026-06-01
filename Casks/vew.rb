cask "vew" do
  arch arm: "arm64", intel: "x64"
  version "0.0.9"

  if Hardware::CPU.arm?
    sha256 "2c8b12b2b89b247642bb9ffa27142f9b8483485e684555109356b96a41ec9bf0"
  else
    sha256 "51067f2c9f37c96cd1027ea897bccf63309138e098631c9f1be30da41c9e2ae5"
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
