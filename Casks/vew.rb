cask "vew" do
  arch arm: "arm64", intel: "x64"
  version "0.4.11"

  if Hardware::CPU.arm?
    sha256 "3bb24b496427e46e309db877f1078c84e625674cd3a8da6e4aaa321ba6550cc1"
  else
    sha256 "272c3eab1bcdfa2db76c5a5a4a59a483c0976ce8caf5efa875014d782d653354"
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
