cask "watch-tower" do
  version "0.1.0"
  sha256 "20738af781967e10c2154195637b38272bb48cae52dc79da6af0cfdcb6fc56b4"

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
