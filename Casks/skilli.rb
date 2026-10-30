cask "skilli" do
  version "0.3.1,1557"
  sha256 "5b881a9c7f2145d549f9d89aa84b8b653cd949c616a0312cec7f55dd4fdc544e"

  url "https://github.com/nomdelasociete/skilli/releases/download/v#{version.csv.first}-#{version.csv.second}/skil.li-#{version.csv.first}-#{version.csv.second}.dmg"
  name "skil.li"
  desc "Keyboard-first launcher and assistant using your own AI"
  homepage "https://skil.li/"

  livecheck do
    url "https://skil.li/appcast.xml"
    strategy :sparkle
  end

  auto_updates true
  depends_on macos: :tahoe

  app "Skilli.app"

  zap trash: [
    "~/Library/Application Support/skil.li",
    "~/Library/Caches/com.nomdelasociete.Skilli",
    "~/Library/HTTPStorages/com.nomdelasociete.Skilli",
    "~/Library/Preferences/com.nomdelasociete.Skilli.plist",
  ]
end
