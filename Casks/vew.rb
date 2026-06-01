cask "vew" do
  arch arm: "arm64", intel: "x64"
  version "0.1.4"

  if Hardware::CPU.arm?
    sha256 "ad6de90eb53b7f219a49f194fbb9537b523cf9f3e323a0a7796e293def96ec17"
  else
    sha256 "cee987bf62238601047976706db2472013f83b78d9d78b85c309eb521f433a3c"
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
