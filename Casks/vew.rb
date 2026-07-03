cask "vew" do
  arch arm: "arm64", intel: "x64"
  version "0.8.2"

  if Hardware::CPU.arm?
    sha256 "930ab0863331d3cfe78d824d1a49537144d38ac27404a48574312b3c9f4b40a2"
  else
    sha256 "7cece67a5e7cd2e9b7791b0a4d135c384ac7c6db262f9f1c487fe78eeddf121e"
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
