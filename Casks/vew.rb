cask "vew" do
  arch arm: "arm64", intel: "x64"
  version "0.5.4"

  if Hardware::CPU.arm?
    sha256 "9b0e5c962ecdc3ef0dbb3e8fbb24014a8b8a54fce4a3e493412caec142184e1c"
  else
    sha256 "f988b27ee2e8a30d2566053140dda584b1ed9621859ae7b59e7a7414d14e535b"
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
