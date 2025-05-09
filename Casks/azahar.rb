cask "azahar" do
  version "2121.1"
  sha256 "7e85fb3de19e2681712d90e207851e8eb8a5a3c963924b83919a6b195715fe3d"

  url "https://github.com/azahar-emu/azahar/releases/download/#{version}/azahar-#{version}-macos-universal.zip",
      verified: "github.com/azahar-emu/azahar/"
  name "Azahar"
  desc "Nintendo 3DS emulator"
  homepage "https://azahar-emu.org/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :big_sur"

  app "azahar-#{version}-macos-universal/Azahar.app"

  uninstall delete: "/Applications/Azahar"

  zap trash: [
    "~/Library/Application Support/Azahar",
    "~/Library/Preferences/com.azahar-emu.azahar.plist",
    "~/Library/Saved Application State/com.azahar-emu.azahar.savedState",
  ]
end
