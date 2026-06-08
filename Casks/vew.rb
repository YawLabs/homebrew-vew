cask "vew" do
  arch arm: "arm64", intel: "x64"
  version "0.4.17"

  if Hardware::CPU.arm?
    sha256 "b4e8fe42d2ad5d39cf3028ad734760769b4495fb2102e80be6fb770afc6a233d"
  else
    sha256 "5e029e7b0d6422e9a13f0ad18527d1fcb0b3658be6fcfc8aaf97b83f83be6e49"
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
