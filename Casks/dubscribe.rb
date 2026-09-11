cask "dubscribe" do
  version "0.7.0"
  sha256 "4aff576a4ffa2a74263f2b3f0eff9e1d727b415cc401771ed355f401bd53f3c2"

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
