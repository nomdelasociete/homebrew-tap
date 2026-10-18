cask "skilli" do
  version "0.1.1,719"
  sha256 "cbcaacf846138a8d3945ff8ead8bbc340215cad9ce362623b9f03e326ec9fa33"

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
