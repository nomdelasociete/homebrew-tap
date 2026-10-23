cask "git-island" do
  version "0.13"
  sha256 "515d2c4bf2a234bd911fcc90de1efe6381286ded361b58125621947f6c4b6916"

  url "https://github.com/nomdelasociete/git-island/releases/download/v#{version}/Git-Island-#{version}.dmg"
  name "Git Island"
  desc "GitHub pull request inbox beside your MacBook notch"
  homepage "https://gitis.land/"

  depends_on macos: :tahoe

  app "Git Island.app"

  caveats "The island requires a MacBook with a notch. Menu-bar controls work on other displays."
end
