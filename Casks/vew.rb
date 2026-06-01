cask "vew" do
  arch arm: "arm64", intel: "x64"
  version "0.0.6"

  if Hardware::CPU.arm?
    sha256 "bb4f70d051e29c41047aab5a23438b6183b3228ca8de529c14dea0fcadcf62fa"
  else
    sha256 "7102bd20b76440e1c6900eb1ffc537bc9e98c4da62f615c4cdb63e294d1a9038"
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
