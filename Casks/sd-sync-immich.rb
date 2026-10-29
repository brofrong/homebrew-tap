cask "sd-sync-immich" do
  version "0.7.0"
  sha256 "06e8ec5990611da129b6f5c5283b67db8742318f70c56142c435b3715c0eaa8c"

  url "https://github.com/brofrong/sd-sync-immich/releases/download/v#{version}/SD-Sync-Immich.dmg"
  name "SD Sync Immich"
  desc "Uploads new photos from a camera's SD card to Immich"
  homepage "https://brofrong.github.io/sd-sync-immich/"

  livecheck do
    url :url
    strategy :github_latest
  end

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
