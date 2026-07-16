cask "hotkeyclash" do
  version "0.4.0"
  sha256 "d18bc5e3087520e7a37e0a132ca6dd225a80fdd3ffc3e6351c2dfb29ae06ea2f"

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
