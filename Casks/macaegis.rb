cask "macaegis" do
  version "0.2.0"
  sha256 "b341b707d294e24fda04b6d3bbb8d4f520700a2db478870086a8ba9bf942a2a0"

  url "https://github.com/meowvia/MacAegis/releases/download/v#{version}/MacAegis-v#{version}.zip"
  name "MacAegis"
  desc "Pure native Swift Mac privacy vault, disk cleaner and deep uninstaller"
  homepage "https://github.com/meowvia/MacAegis"

  depends_on macos: :ventura

  app "MacAegis.app"

  zap trash: [
    "~/Library/Application Support/MacAegis",
    "~/Library/Preferences/com.macaegis.app.plist",
    "~/Library/Caches/com.macaegis.app",
    "~/Library/WebKit/com.macaegis.app",
  ]
end
