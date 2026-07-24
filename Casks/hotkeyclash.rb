cask "hotkeyclash" do
  version "0.5.0"
  sha256 "6a9fbc1d3c3fd6e869a0a7347adb748a34b86b109db5e629ddad3f4251379665"

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
