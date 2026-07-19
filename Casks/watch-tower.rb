cask "watch-tower" do
  version "0.1.2"
  sha256 "79eb06960560ae1997dd08fa602751eb84b4769cd4200c755a00623e292867bd"

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
