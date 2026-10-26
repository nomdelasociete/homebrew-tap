cask "git-island" do
  version "0.14"
  sha256 "6c71c6d61bc38b58a40425911d6364b9cc09d3ddc4db3bd527b2fcefeabf4ed8"

  url "https://github.com/nomdelasociete/git-island/releases/download/v#{version}/Git-Island-#{version}.dmg"
  name "Git Island"
  desc "GitHub pull request inbox beside your MacBook notch"
  homepage "https://gitis.land/"

  depends_on macos: :tahoe

  app "Git Island.app"

  caveats "The island requires a MacBook with a notch. Menu-bar controls work on other displays."
end
