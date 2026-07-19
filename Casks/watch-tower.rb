cask "watch-tower" do
  version "0.1.1"
  sha256 "032a33b7e182af86a37f65a8b6961ceccd7126f3a494cd27f0ce7bbba338a94b"

  url "https://github.com/srikxcipher/watch-tower-releases/releases/download/v#{version}/WatchTower.zip"
  name "Watch Tower"
  desc "Native macOS menu-bar command center"
  homepage "https://github.com/srikxcipher/watch-tower-releases"

  app "WatchTower.app"

  caveats <<~EOS
    Watch Tower is signed but not notarized. On first launch, either
    right-click WatchTower.app in Finder and choose Open, or run:

      xattr -dr com.apple.quarantine "#{appdir}/WatchTower.app"

    Then grant Accessibility and Screen Recording in
    System Settings → Privacy & Security so it can list and switch windows.
  EOS
end
