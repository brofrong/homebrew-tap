# brofrong/homebrew-tap

Homebrew casks for [SD Sync Immich](https://github.com/brofrong/sd-sync-immich):
insert the SD card, the photos go to Immich.

```bash
brew tap brofrong/tap
brew trust --cask brofrong/tap/sd-sync-immich
brew install --cask sd-sync-immich
```

Homebrew asks you to trust casks from taps outside Homebrew itself, hence
the second line.

The app is not signed with an Apple Developer ID, so macOS blocks its first
launch: open **System Settings → Privacy & Security** and click **Open
Anyway** next to SD Sync Immich. After that it updates itself.

`brew uninstall --cask sd-sync-immich` removes the app and its login item;
add `--zap` to also delete its settings, history and logs.

The cask follows the latest release by itself (`.github/workflows/bump.yml`).
