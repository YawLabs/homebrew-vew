cask "vew" do
  arch arm: "arm64", intel: "x64"
  version "0.4.3"

  if Hardware::CPU.arm?
    sha256 "5b355b3c5cf3d34ee576d00f819879e2d383c1752fb800b48a23fc70ddf33eb5"
  else
    sha256 "87595c507ec65b894103abdc0e6b33efdc7f961d78d2e0d359fbdef44f84e2da"
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
