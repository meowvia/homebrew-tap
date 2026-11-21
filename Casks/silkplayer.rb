cask "silkplayer" do
  version "2.0.1"
  sha256 "0d84bca55e49d15d176be2ef22b8035b6103dc39b0f1d4a69be1b02d0a62e35b"

  url "https://github.com/meowvia/SilkPlayer/releases/download/#{version}/SilkPlayer-#{version}-universal.dmg"
  name "SilkPlayer"
  desc "Native macOS media player built with Swift and Metal"
  homepage "https://silkplayer.1999909.xyz/"

  depends_on macos: :sonoma

  app "SilkPlayer.app"

  zap trash: [
    "~/Library/Application Support/SilkPlayer",
    "~/Library/Caches/com.silkplayer.SilkPlayer",
    "~/Library/Preferences/com.silkplayer.SilkPlayer.plist",
    "~/Library/Saved Application State/com.silkplayer.SilkPlayer.savedState",
  ]
end
