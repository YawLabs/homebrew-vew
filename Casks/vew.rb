cask "vew" do
  arch arm: "arm64", intel: "x64"
  version "0.0.5"

  if Hardware::CPU.arm?
    sha256 "3d2572ba19534eac6c3c1808e8b20c6ee31c412e73a14038f9f33fdf18ba1354"
  else
    sha256 "c195815173a8905748eba1e407ef8fef505fcc5e25a166cca354a086fade6511"
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
