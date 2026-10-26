cask "git-island" do
  version "0.15"
  sha256 "c4a34cb0ac1a644f75ae7de823ddd80bd7616ec108a2b5f53ebc3572809a01f6"

  url "https://github.com/nomdelasociete/git-island/releases/download/v#{version}/Git-Island-#{version}.dmg"
  name "Git Island"
  desc "GitHub pull request inbox beside your MacBook notch"
  homepage "https://gitis.land/"

  depends_on macos: :tahoe

  app "Git Island.app"

  caveats "The island requires a MacBook with a notch. Menu-bar controls work on other displays."
end
