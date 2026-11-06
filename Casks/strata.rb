cask "strata" do
  version "1.0.37"
  sha256 "518201149e170299cdc8c1acf33a9f0d853c35c1d1c09a11860930a40587bc08"

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
