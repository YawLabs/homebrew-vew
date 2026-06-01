cask "vew" do
  arch arm: "arm64", intel: "x64"
  version "0.1.5"

  if Hardware::CPU.arm?
    sha256 "abe34ddde05dd1a5d7634a946045eb20a1a23461a2df23a3134e8ec75b747662"
  else
    sha256 "1574154c9b0e5aa2edd5bc8c4a9e697a7e90d8b969575d2df1b68cf6e44ea972"
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
