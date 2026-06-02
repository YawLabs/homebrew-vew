cask "vew" do
  arch arm: "arm64", intel: "x64"
  version "0.2.3"

  if Hardware::CPU.arm?
    sha256 "1353d3cc60c929a1b3f9cb1cdb19972fa6162823e9465855c1192e01f72212f1"
  else
    sha256 "839c666442c00a309c3b0abb1e1e95bacffb2e40e3664a3f61c51e52dc376cbd"
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
