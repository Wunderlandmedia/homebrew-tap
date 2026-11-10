cask "hotkeyclash" do
  version "0.9.4"
  sha256 "05167287475fcecb0e96e9ac0b355699fc98da5cb7aacee9650989065a5448a3"

  url "https://github.com/Wunderlandmedia/HotkeyClash/releases/download/v#{version}/HotkeyClash-#{version}.dmg"
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
