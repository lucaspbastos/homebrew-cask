cask "touche" do
  version "1.1.6"
  sha256 "3375ddea98abe00209d3be6bc135dde3c4447157de46e2a2222bee23aeb1a677"

  url "https://redsweater.com/touche/Touche#{version}.zip"
  name "Touché"
  desc "Touch Bar for everyone"
  homepage "https://redsweater.com/touche/"

  depends_on macos: ">= :sierra"

  app "Touché.app"

  uninstall delete: "/Applications/Touché"
end
