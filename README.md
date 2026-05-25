# Informity Homebrew Tap

Homebrew tap for Informity desktop applications.

## Install

```bash
brew tap informity/tap
brew install --cask informity-ai
```

## Update

```bash
brew update
brew upgrade --cask informity-ai
```

## Uninstall

```bash
brew uninstall --cask informity-ai
# Optional: remove app data/config
brew uninstall --cask --zap informity-ai
```

## Maintainer Notes

- Casks use immutable, versioned artifacts and pinned `sha256` values.
- Current artifact pattern for `informity-ai`:
  - `https://www.informity.ai/download/Informity_AI_<version>_aarch64.dmg`
- `Informity_AI_latest_aarch64.dmg` is a convenience alias for non-Homebrew flows and is not used by the cask.
