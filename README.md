# brofrong/homebrew-tap

Homebrew casks for [SD Sync Immich](https://github.com/brofrong/sd-sync-iimich):
insert the SD card, the photos go to Immich.

```bash
brew install --cask brofrong/tap/sd-sync-immich
```

The app is not signed with an Apple Developer ID, so macOS blocks its first
launch: open **System Settings → Privacy & Security** and click **Open
Anyway** next to SD Sync Immich. After that it updates itself.

`brew uninstall --cask sd-sync-immich` removes the app and its login item;
add `--zap` to also delete its settings, history and logs.
