cask "macaegis" do
  version "0.2.1"
  sha256 "7da2d7c1de1744afc51a184ac675c41141d565149f52a28217ea5316d9c20782"

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
