cask "strata" do
  version "1.0.34"
  sha256 "c42994d00be5e683f3d893425465fcd98217144473a779c199f8ae8c1c351122"

  url "https://stratamaccleaner.com/downloads/Strata-#{version}.dmg"
  name "Strata"
  desc "Disk space analyzer and cleaner"
  homepage "https://stratamaccleaner.com/"

  livecheck do
    url "https://stratamaccleaner.com/appcast.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: :ventura

  app "Strata.app"

  zap trash: [
    "~/Library/Application Support/Strata",
    "~/Library/Caches/com.stratamaccleaner.strata",
    "~/Library/HTTPStorages/com.stratamaccleaner.strata",
    "~/Library/Preferences/com.stratamaccleaner.strata.plist",
    "~/Library/Saved Application State/com.stratamaccleaner.strata.savedState",
    "~/Library/WebKit/com.stratamaccleaner.strata",
  ]
end
