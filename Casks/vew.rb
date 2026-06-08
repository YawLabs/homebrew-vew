cask "vew" do
  arch arm: "arm64", intel: "x64"
  version "0.4.16"

  if Hardware::CPU.arm?
    sha256 "8c8cfc0e191e6b74e086ee92ece43ace4c491b4a9824b3d7ee8bcefbf00eb634"
  else
    sha256 "f5b44c18799d64db26abe6a3524e7ea912bced6dae8499db53a3826803c1a7e5"
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
