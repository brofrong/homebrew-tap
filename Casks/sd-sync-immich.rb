cask "sd-sync-immich" do
  version :latest
  sha256 :no_check

  url "https://github.com/brofrong/sd-sync-iimich/releases/latest/download/SD-Sync-Immich.dmg",
      verified: "github.com/brofrong/sd-sync-iimich/"
  name "SD Sync Immich"
  desc "Uploads new photos from a camera's SD card to Immich"
  homepage "https://brofrong.github.io/sd-sync-iimich/"

  auto_updates true
  depends_on macos: :ventura

  app "SD Sync Immich.app"

  uninstall launchctl: "com.sd-sync-immich",
            quit:      "com.sd-sync-immich"

  zap trash: [
    "~/.config/sd-sync-immich",
    "~/Library/Logs/sd-sync-immich",
  ]

  caveats <<~EOS
    SD Sync Immich is not signed with an Apple Developer ID, so macOS blocks
    its first launch. Open System Settings → Privacy & Security and click
    Open Anyway next to SD Sync Immich.

    The app updates itself; `brew upgrade` is not needed.
  EOS
end
