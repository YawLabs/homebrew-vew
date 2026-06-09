cask "vew" do
  arch arm: "arm64", intel: "x64"
  version "0.4.25"

  if Hardware::CPU.arm?
    sha256 "6ba97b9b7f7dff34db0dfea98a1d607d0b6b1d32375e9eeb075fa639aa0790f3"
  else
    sha256 "874c5fe4e5637849c631f315e09a7dd714ab2b29e3f2e0a1e670209021faf9bc"
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
