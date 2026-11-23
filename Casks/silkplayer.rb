cask "silkplayer" do
  version "2.1.0"
  sha256 "bc5a9104dec70a2b3b9bff36efdfd3fe9623e92fb4709d8ca143256ecf549592"

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
