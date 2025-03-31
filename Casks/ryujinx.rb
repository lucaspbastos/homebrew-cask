cask "ryujinx" do
  version "1.2.86"
  sha256 "49fcd62a6a5b484a5b4bf7f3615a12fb8c4535bf8bbe4e9424159ce69183d515"

  url "https://github.com/Ryubing/Stable-Releases/releases/download/#{version}/ryujinx-#{version}-macos_universal.app.tar.gz",
      verified: "github.com/Ryubing/Stable-Releases/"
  name "Ryujinx"
  desc "Nintendo Switch emulator"
  homepage "https://ryujinx.app/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :big_sur"

  app "Ryujinx.app"

  uninstall delete: "/Applications/Ryujinx"

  zap trash: [
    "~/Library/Application Support/Ryujinx",
    "~/Library/Logs/Ryujinx",
    "~/Library/Preferences/org.ryujinx.Ryujinx.plist",
    "~/Library/Saved Application State/org.ryujinx.Ryujinx.savedState",
  ]
end
