cask "vew" do
  arch arm: "arm64", intel: "x64"
  version "0.4.22"

  if Hardware::CPU.arm?
    sha256 "944bfd392a93d1f5379d9e208ca0c04af102bace1984625b28f4e42c814f07cc"
  else
    sha256 "2f4a7f9c51f9d9633a3b8b55e3b5b45aba85a6756785c4337fabd0dd66e9e050"
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
