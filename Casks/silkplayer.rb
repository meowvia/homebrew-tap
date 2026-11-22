cask "silkplayer" do
  version "2.0.2"
  sha256 "7d3e2e379ad9aaf863ee5c12069afa57720b5dbe231e20362b8bd7b51c64f30d"

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
