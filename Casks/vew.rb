cask "vew" do
  arch arm: "arm64", intel: "x64"
  version "0.6.1"

  if Hardware::CPU.arm?
    sha256 "f2b0054f0ef2f35071f92e0a2b9e2cfdec71dcd9252fd88a0316d1b38860cd46"
  else
    sha256 "beb33b74497740b87658410cbca42be1392b363148c0ae914c84d6e3cec50731"
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
