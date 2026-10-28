cask "git-island" do
  version "0.17"
  sha256 "77c3ed59c7b18a30be1517c6d3e1579d3b298b29babc867e131e179c8a57e4a0"

  url "https://github.com/nomdelasociete/git-island/releases/download/v#{version}/Git-Island-#{version}.dmg"
  name "Git Island"
  desc "GitHub pull request inbox beside your MacBook notch"
  homepage "https://gitis.land/"

  auto_updates true
  depends_on macos: :tahoe

  app "Git Island.app"

  caveats "The island requires a MacBook with a notch. Menu-bar controls work on other displays."
end
