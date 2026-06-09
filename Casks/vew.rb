cask "vew" do
  arch arm: "arm64", intel: "x64"
  version "0.4.24"

  if Hardware::CPU.arm?
    sha256 "67cbd2e6e4b7cef41a8985a2a170d902d4ac05bdf5f986fdca545de16345b3cc"
  else
    sha256 "30e645a02b7f38cf06ec16fc0467b3587e1f32a7ad12b65d04659a9dfe7f7d0c"
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
