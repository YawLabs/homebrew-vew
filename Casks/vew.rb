cask "vew" do
  arch arm: "arm64", intel: "x64"
  version "0.8.3"

  if Hardware::CPU.arm?
    sha256 "da4c55689f625a88edc0459d80272e5867373c5f37daa7c0fa3cc991a4caad95"
  else
    sha256 "fb04251b6f7a2232bb2a96d22e49a5a2cda79c505505e039dac8b785ad046578"
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
