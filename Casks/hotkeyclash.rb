cask "hotkeyclash" do
  version "0.3.0"
  sha256 "44a37e21f474a9e2d180a8a7ba36ce0bd9c32c64ac9cf1ff3acfa6d982760b71"

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
