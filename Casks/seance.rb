cask "seance" do
  version "0.5.0"
  sha256 "b034ae688f3d783fc37ef136dff8861fd1bd1aa12f8c8dab801870799e994dc4"

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
