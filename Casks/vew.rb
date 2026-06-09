cask "vew" do
  arch arm: "arm64", intel: "x64"
  version "0.4.23"

  if Hardware::CPU.arm?
    sha256 "88faa17e2d78946e7e2a9e2696523740d63ed3635870c004cb5d40d5d710a36d"
  else
    sha256 "c698f748123daeac90eff0e6f82a834ac2bb4a994b5911d51ed01c5aeeac3550"
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
