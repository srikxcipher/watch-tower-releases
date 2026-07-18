# Watch Tower — downloads

Public downloads and Homebrew cask for **Watch Tower**, a native macOS
menu-bar command center.

## Install with Homebrew

```sh
brew tap srikxcipher/watch-tower https://github.com/srikxcipher/watch-tower-releases
brew trust srikxcipher/watch-tower        # only if prompted (recent Homebrew)
brew install --cask watch-tower
```

To upgrade later: `brew upgrade --cask watch-tower`.

## Or download directly

Grab `WatchTower.zip` from the [latest release](../../releases/latest), unzip,
and drag **WatchTower.app** to `/Applications`.

## First launch

Watch Tower is code-signed but **not notarized**, so Gatekeeper blocks the
first launch. One-time unblock:

- **Right-click** WatchTower.app → **Open** → **Open**, or:

```sh
xattr -dr com.apple.quarantine /Applications/WatchTower.app
```

Then grant **Accessibility** and **Screen Recording** in
System Settings → Privacy & Security. Look for the binoculars icon in the menu
bar; press **⌃⌥W** to open the panel.
