cask "vew" do
  arch arm: "arm64", intel: "x64"
  version "0.2.5"

  if Hardware::CPU.arm?
    sha256 "5cc13a4fc61b87f1056490154d1ffea0d663aab2fddb8ffa91fc5872219b84c2"
  else
    sha256 "00fa4e84bea83a89c0bcaff46c747c767190529f22e089bc0eeac09a5a50cd62"
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
