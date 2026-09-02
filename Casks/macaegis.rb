cask "macaegis" do
  version "0.2.0"
  sha256 "0019dfc4b32d63c1392aa264aed2253c1e0c2fb09216f8e2cc269bbfb8bb49b5"

  url "https://github.com/meowvia/MacAegis/releases/download/v#{version}/MacAegis-v#{version}.dmg"
  name "MacAegis"
  desc "Pure native Swift Mac privacy vault, disk cleaner and deep uninstaller"
  homepage "https://github.com/meowvia/MacAegis"

  depends_on macos: ">= :ventura"

  app "MacAegis.app"

  zap trash: [
    "~/Library/Application Support/MacAegis",
    "~/Library/Preferences/com.macaegis.app.plist",
    "~/Library/Caches/com.macaegis.app",
    "~/Library/WebKit/com.macaegis.app",
  ]
end
