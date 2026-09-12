cask "dubscribe" do
  version "0.7.3"
  sha256 "29b6cc3cdb72ea2e781563bc496711f48a47f5717e1f85f97cdf9480936a18a1"

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
