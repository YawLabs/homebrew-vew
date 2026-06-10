cask "vew" do
  arch arm: "arm64", intel: "x64"
  version "0.4.26"

  if Hardware::CPU.arm?
    sha256 "d69c72bb842ca9f93bbdf08dc57756fda11d61d79c2078a283f494394505c717"
  else
    sha256 "4962e7474bdbb3ca67dbb68776a31f161dfdeffc79d91437f6e79011b4249c69"
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
