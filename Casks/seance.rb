cask "seance" do
  version "0.4.0"
  sha256 "21241a256aaa61a5ad94ba49387e0bb1e4997451dd4faf9211f0d3c284a8687e"

  url "https://github.com/hl/seance/releases/download/v#{version}/Seance_#{version}_aarch64.dmg",
      verified: "github.com/hl/seance/"
  name "Séance"
  desc "Desktop session viewer"
  homepage "https://github.com/hl/seance"

  depends_on arch: :arm64

  app "Séance.app"

  postflight do
    system_command "/usr/bin/xattr", args: ["-dr", "com.apple.quarantine", "#{appdir}/Séance.app"]
  end

  zap trash: [
    "~/Library/Application Support/com.seance.app",
    "~/Library/Caches/com.seance.app",
    "~/Library/Preferences/com.seance.app.plist",
    "~/Library/Saved Application State/com.seance.app.savedState",
  ]
end
