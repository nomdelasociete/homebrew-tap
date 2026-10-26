cask "git-island" do
  version "0.16"
  sha256 "a900a674ab5d183a806ffea4ab312d7062862dc494b9656bdc93d629cfeb70ba"

  url "https://github.com/nomdelasociete/git-island/releases/download/v#{version}/Git-Island-#{version}.dmg"
  name "Git Island"
  desc "GitHub pull request inbox beside your MacBook notch"
  homepage "https://gitis.land/"

  auto_updates true

  depends_on macos: :tahoe

  app "Git Island.app"

  caveats "The island requires a MacBook with a notch. Menu-bar controls work on other displays."
end
