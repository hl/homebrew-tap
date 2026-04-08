cask "seance" do
  version "0.2.0"
  sha256 "2c629ff9a432a106a45fdff266949423b47ff7ff52fcceb180c23d32647a1861"

  url "https://github.com/hl/seance/releases/download/v#{version}/Seance_#{version}_aarch64.dmg",
      verified: "github.com/hl/seance/"
  name "Séance"
  desc "Desktop session viewer"
  homepage "https://github.com/hl/seance"

  depends_on arch: :arm64

  app "Séance.app"

  postflight do
    system_command "/usr/bin/xattr", args: ["-cr", staged_path/"Séance.app"]
  end

  zap trash: [
    "~/Library/Application Support/com.seance.app",
    "~/Library/Caches/com.seance.app",
    "~/Library/Preferences/com.seance.app.plist",
    "~/Library/Saved Application State/com.seance.app.savedState",
  ]
end
