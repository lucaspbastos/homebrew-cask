cask "cemu-emu" do
  version "2.5"
  sha256 "3503cb24002b50fdfe26d0e0e0f7bbe47fd33a22968a959c09facfd449ff7ded"

  url "https://github.com/cemu-project/Cemu/releases/download/v#{version}/cemu-#{version}-macos-12-x64.dmg",
      verified: "github.com/cemu-project/Cemu/"
  name "Cemu"
  desc "Nintendo Wii U emulator"
  homepage "https://cemu.info/"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "Cemu.app"

  uninstall delete: "/Applications/Cemu"

  zap trash: [
    "~/Library/Application Support/Cemu",
    "~/Library/Caches/Cemu",
    "~/Library/Preferences/info.cemu.Cemu.plist",
    "~/Library/Saved Application State/info.cemu.Cemu.savedState",
  ]
end
