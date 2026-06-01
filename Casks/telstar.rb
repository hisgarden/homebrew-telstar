# Homebrew cask for Telstar — reference copy.
#
# This file lives in a SEPARATE public tap repo named `homebrew-telstar`
# (so `brew tap hisgarden/telstar` resolves it), as `Casks/telstar.rb`.
# Install:  brew install --cask hisgarden/telstar/telstar
#
# Per release: bump `version`, and set `sha256` to the released universal DMG's
# digest:  shasum -a 256 Telstar_<version>_universal.dmg
# (or run `brew fetch --cask telstar` and copy the reported sha256).
# Because the DMG is Developer-ID-signed + notarized, no `--no-quarantine`.

cask "telstar" do
  version "0.1.0"
  sha256 "44b31bab3c4e524ead7ec6adc1d542a30f6aca93bb8956eea450c4f1ae5f45bd"

  url "https://github.com/hisgarden/telstar/releases/download/v#{version}/Telstar_#{version}_universal.dmg",
      verified: "github.com/hisgarden/telstar/"
  name "Telstar"
  desc "Local-first TV player — the world's live television on your favorite device"
  homepage "https://github.com/hisgarden/telstar"

  depends_on macos: ">= :big_sur"

  app "Telstar.app"

  zap trash: [
    "~/Library/Application Support/org.hisgarden.telstar",
    "~/Library/Caches/org.hisgarden.telstar",
    "~/Library/Preferences/org.hisgarden.telstar.plist",
    "~/Library/Saved Application State/org.hisgarden.telstar.savedState",
    "~/Library/WebKit/org.hisgarden.telstar",
  ]
end
