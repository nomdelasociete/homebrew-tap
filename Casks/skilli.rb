cask "skilli" do
  version "0.3.5,1632"
  sha256 "06b4722a0b792c8c4ac732005721dbafb6cab8c6df660b697d5f6d7adf26c58b"

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
