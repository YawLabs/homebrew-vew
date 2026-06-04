cask "vew" do
  arch arm: "arm64", intel: "x64"
  version "0.3.0"

  if Hardware::CPU.arm?
    sha256 "ed64b2d33d785a428fc8ac103fea6055ede25cec055a48986d56f72170519cb5"
  else
    sha256 "6d6af719ae876e2d11f9d7605210a4a84421fd6a5ffe338935c40578f515e4a0"
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
