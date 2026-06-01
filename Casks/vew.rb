cask "vew" do
  arch arm: "arm64", intel: "x64"
  version "0.1.0"

  if Hardware::CPU.arm?
    sha256 "0fc6a4b3fae7030acc9043b59f887d04a09bc8b2bbb85770ab354db6afacc580"
  else
    sha256 "50be7ddfa7dbe5954c76a4d5f2da4fb4bf3c25bd134cee0d81c5d3caa12ba834"
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
