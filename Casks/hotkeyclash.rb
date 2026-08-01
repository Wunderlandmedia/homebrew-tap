cask "hotkeyclash" do
  version "0.6.0"
  sha256 "89f2a367951f817029b71a64a67f91f6fa6e616da919708a8cdbc17f1fb9750b"

  url "https://github.com/Wunderlandmedia/HotkeyClash/releases/download/v#{version}/HotkeyClash-#{version}.dmg",
      verified: "github.com/Wunderlandmedia/HotkeyClash/"
  name "HotkeyClash"
  desc "Menu bar app that detects keyboard shortcut conflicts"
  homepage "https://hotkeyclash.com/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :sonoma

  app "HotkeyClash.app"

  zap trash: [
    "~/Library/Application Support/HotkeyClash",
    "~/Library/Preferences/com.hotkeyclash.app.plist",
  ]
end
