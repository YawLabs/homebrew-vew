cask "vew" do
  arch arm: "arm64", intel: "x64"
  version "0.8.1"

  if Hardware::CPU.arm?
    sha256 "0a7c669f191ea45e411ef7b688a63cc6c1881fa64383016ba68bd7c6856b5243"
  else
    sha256 "8941e4de47d2a5385706bc7d67676f4f9a3d5fbc85a6210cd230e8a4811082a4"
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
