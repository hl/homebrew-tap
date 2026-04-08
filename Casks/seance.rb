cask "seance" do
  version "0.1.0"
  sha256 "27d430463e1b6f0690a28a24dcfd2e886247b898123492d044a95b319e766691"

  url "https://github.com/hl/seance/releases/download/v#{version}/Seance_#{version}_aarch64.dmg",
      verified: "github.com/hl/seance/"
  name "Séance"
  desc "Desktop session viewer"
  homepage "https://github.com/hl/seance"

  depends_on arch: :arm64

  app "Séance.app"

  zap trash: [
    "~/Library/Application Support/com.seance.app",
    "~/Library/Caches/com.seance.app",
    "~/Library/Preferences/com.seance.app.plist",
    "~/Library/Saved Application State/com.seance.app.savedState",
  ]
end
