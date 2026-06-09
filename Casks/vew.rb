cask "vew" do
  arch arm: "arm64", intel: "x64"
  version "0.4.21"

  if Hardware::CPU.arm?
    sha256 "650a6315acc5deda81638742695fba035a26443594fcbd6c1990f76fbf4222d3"
  else
    sha256 "bc67f945c15e6cf2d6f3c067da3aac0e2fa504d517ac04d472fee1c4995dd4ca"
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
