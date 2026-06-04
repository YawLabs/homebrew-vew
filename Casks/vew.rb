cask "vew" do
  arch arm: "arm64", intel: "x64"
  version "0.2.9"

  if Hardware::CPU.arm?
    sha256 "4b423ecd63191c39142b9b2672480899f9306adf73a570b8aa60c63ddcec7493"
  else
    sha256 "e267190313fe840063ea4d51feab323d9698d51039c596dd020445c28df5a6ac"
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
