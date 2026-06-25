cask "vew" do
  arch arm: "arm64", intel: "x64"
  version "0.6.3"

  if Hardware::CPU.arm?
    sha256 "667a3c6a4e33bd43344fec7ce63356412a084749b0eb03c66cce9684a060ae25"
  else
    sha256 "244f274ad04ad1d2c016cd850ff043a12bd4902e3c9b473fb7b1eb5b4b28eda4"
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
