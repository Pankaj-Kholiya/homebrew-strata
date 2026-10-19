cask "strata" do
  version "1.0.31"
  sha256 "e7215cefc2b6a88277fb6187872ff74938896858881f5b93d8307acabfd8a9a4"

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
