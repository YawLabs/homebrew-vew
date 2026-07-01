cask "vew" do
  arch arm: "arm64", intel: "x64"
  version "0.7.0"

  if Hardware::CPU.arm?
    sha256 "3c5e5a4c777032c30ca6677e0f8533938bb972e3efbef4dbc90e48b4c0bfa1d5"
  else
    sha256 "d6717857dd3cf527293c1ee0e6e2e0e0f517c0d198806d4b0f9104fa857a1191"
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
