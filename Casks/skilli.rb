cask "skilli" do
  version "0.1.3,738"
  sha256 "0060513a02cee508dfa48dbaa28dc7f37cb32823e50a82a78f47e603711af05b"

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
