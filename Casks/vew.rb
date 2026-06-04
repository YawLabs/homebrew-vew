cask "vew" do
  arch arm: "arm64", intel: "x64"
  version "0.4.0"

  if Hardware::CPU.arm?
    sha256 "3116a09e7454ea14f250ceb34028dc022cf45e59a2a35d8e4a2e6eea7897aa71"
  else
    sha256 "05dc68362be7852e23c617cf53f6c96d549cacf24769b05cd1656cce3949ea85"
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
