cask "vew" do
  arch arm: "arm64", intel: "x64"
  version "0.4.14"

  if Hardware::CPU.arm?
    sha256 "62ebfeac4a05da96ddb5d6661f5a14e64f6246c35c9bf724b150969b806c8c2a"
  else
    sha256 "c0baab867a2ba7a7bdd4eefa5aab61837f70bd6ec35ccac39798953e0a6a7b16"
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
