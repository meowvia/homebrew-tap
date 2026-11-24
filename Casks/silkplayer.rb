cask "silkplayer" do
  version "2.1.1"
  sha256 "2e7c1a7ec45bf3b7cb1baecbe88bbbc372e6651cc936f01fe68195f06fe66292"

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
