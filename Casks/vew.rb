cask "vew" do
  arch arm: "arm64", intel: "x64"
  version "0.4.3"

  if Hardware::CPU.arm?
    sha256 "31d7f164ea7b1f872d2d20a589a73b8f6ee746973d60b2e91a208831d5c35dde"
  else
    sha256 "2535fcff64804ddd1cf5b17c67e97e725e7e0c6eab58850942722485ce6101da"
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
