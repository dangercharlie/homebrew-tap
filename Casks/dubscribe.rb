cask "dubscribe" do
  version "0.7.1"
  sha256 "acb2dd7b46055ad9caf9a3901ad052a473bd4aee62a1ee02e155d7f274cd4002"

  url "https://github.com/dangercharlie/DubScribe/releases/download/v#{version}/DubScribe-macOS-arm64.dmg"
  name "DubScribe"
  desc "Low-friction hotkey audio capture utility"
  homepage "https://github.com/dangercharlie/DubScribe"

  depends_on arch: :arm64
  depends_on macos: :ventura

  app "DubScribe.app"

  zap trash: [
    "~/Library/Application Support/DubScribe",
    "~/Library/Caches/com.dubscribe.app",
    "~/Library/Containers/com.dubscribe.app",
    "~/Library/HTTPStorages/com.dubscribe.app",
    "~/Library/Preferences/com.dubscribe.app.plist",
    "~/Library/Saved Application State/com.dubscribe.app.savedState",
  ]
end
