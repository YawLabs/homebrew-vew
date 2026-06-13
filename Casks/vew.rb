cask "vew" do
  arch arm: "arm64", intel: "x64"
  version "0.4.27"

  if Hardware::CPU.arm?
    sha256 "ab06952ec44c2bf2205b47630086909ccb610083fff5d2a931fa197dc4cdb3bc"
  else
    sha256 "da8843bf86262846c76943f3ba882aac4609170c28078899aaaec28afa6f2284"
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
