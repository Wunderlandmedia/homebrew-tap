cask "hotkeyclash" do
  version "0.1.0"
  sha256 "4aae26311aa59d6a107bba153ef9a2afca6bb8f04ebea397c9ab0b6b0f8987a3"

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
