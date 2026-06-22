cask "vew" do
  arch arm: "arm64", intel: "x64"
  version "0.6.0"

  if Hardware::CPU.arm?
    sha256 "2964710c341764077b56d8e8fe6b50ac0c0d1472589de4cfc669bdd49763e707"
  else
    sha256 "cff30cd1962b947dbe6d878b0863fac2d2dea9a3a2a15e2b5ff750b84f173561"
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
