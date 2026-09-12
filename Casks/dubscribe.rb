cask "dubscribe" do
  version "0.7.2"
  sha256 "1f111f702cb8cad7cb9f948777b6ddeb4b22016c65728002321ee7f62381887e"

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
