cask "vew" do
  arch arm: "arm64", intel: "x64"
  version "0.4.18"

  if Hardware::CPU.arm?
    sha256 "16c1289d32680490bea5f2d3155c32c02a19e8ea1a2325ef51d5c3ef09a151fc"
  else
    sha256 "831f542603979642fea3c0eb69e2e55653e75aed09a685fabbe170403a30505b"
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
