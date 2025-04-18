cask "azahar" do
  version "2120.3"
  sha256 "5ee6de658b2cb3d460688b16d622ed95e24d77e605464f3ed495a842291daff0"

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
