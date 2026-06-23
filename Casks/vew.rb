cask "vew" do
  arch arm: "arm64", intel: "x64"
  version "0.6.2"

  if Hardware::CPU.arm?
    sha256 "d3282cc4493ba0a7a5108d2d7d997b7b83410aa04a5595abce453ae64c430493"
  else
    sha256 "adc391e6403b04a5136cf26a18c6786cab70c96795cf2f50bcd77edfb8990778"
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
