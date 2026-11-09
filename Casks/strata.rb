cask "strata" do
  version "1.0.39"
  sha256 "07d28b93a359a88d0e5d81edd4abdd1ab0853f7f85f1b5bc4f0613ca6dbe586c"

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
