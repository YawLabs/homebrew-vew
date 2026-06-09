cask "vew" do
  arch arm: "arm64", intel: "x64"
  version "0.4.19"

  if Hardware::CPU.arm?
    sha256 "f0d8d0ac9c4406c62588bc496c4ca63d1e4190f3fe54ea8efb4965473a8d46c5"
  else
    sha256 "7cbefca0c1e943a20fb45dba688879a5b609be07798f6329cb78c2ada825f89a"
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
