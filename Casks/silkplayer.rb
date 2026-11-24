cask "silkplayer" do
  version "2.1.1"
  sha256 "6f1898d75846143a711c3e8ce79e8186c276504d56f8d48629640ce0853144b8"

  url "https://github.com/meowvia/SilkPlayer/releases/download/#{version}/SilkPlayer-#{version}-universal.dmg"
  name "SilkPlayer"
  desc "Native macOS media player built with Swift and Metal"
  homepage "https://silkplayer.com/"

  depends_on macos: :sonoma

  app "SilkPlayer.app"

  zap trash: [
    "~/Library/Application Support/SilkPlayer",
    "~/Library/Caches/com.silkplayer.SilkPlayer",
    "~/Library/Preferences/com.silkplayer.SilkPlayer.plist",
    "~/Library/Saved Application State/com.silkplayer.SilkPlayer.savedState",
  ]
end
