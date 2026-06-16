cask "vew" do
  arch arm: "arm64", intel: "x64"
  version "0.5.1"

  if Hardware::CPU.arm?
    sha256 "e232d48ca7209fd6d06d2660f1b8e9e992342544e8f9d67f3a17cdba4a092a50"
  else
    sha256 "59d3fc9a0bc1cb8fe8217120c126818f70d1a664b488d81cfbe4e1738a212247"
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
