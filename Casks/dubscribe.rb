cask "dubscribe" do
  version "0.6.4"
  sha256 "e3975a82fd7c20f8b0c0c008c70bebd0b2cdfdcd69482777fe84134f016595b5"

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
