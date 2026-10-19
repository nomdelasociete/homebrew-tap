cask "skilli" do
  version "0.2.0,777"
  sha256 "5d8ad3e5deea87cd1813188779ed149f59ffa671736afd158ffb6a558dda1217"

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
