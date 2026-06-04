cask "vew" do
  arch arm: "arm64", intel: "x64"
  version "0.4.3"

  if Hardware::CPU.arm?
    sha256 "7c2d92ed50d2d44bcc783af841d57facc9c4e2bfb113ae6a95cb7e0652bbecb0"
  else
    sha256 "d86d5e519b985087b58e6041469315e751ea49f703ff517bf912a3a8299a9a02"
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
