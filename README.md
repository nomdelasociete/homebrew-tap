# Nom de la société's Homebrew tap

```sh
brew install --cask nomdelasociete/tap/skilli
brew install --cask nomdelasociete/tap/git-island
```

- **skilli**: [skil.li](https://skil.li), a native macOS launcher and assistant with your own SI (macOS 26 or later). It updates itself.

- **git-island**: [gitis.land](https://gitis.land), a native GitHub PR inbox beside the MacBook notch (macOS 26 or later). Update with `brew update && brew upgrade --cask nomdelasociete/tap/git-island`; it has no built-in automatic updater.

The Git Island cask must be bumped with the version and SHA-256 of each new DMG release.

The skilli cask is updated by each release (`script/release/publish.sh` in [nomdelasociete/skilli](https://github.com/nomdelasociete/skilli)).
