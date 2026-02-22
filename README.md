<p align="center">
  <img src="./assets/yt-loop-badge.svg" width="96" alt="yt-loop-extension logo" />
</p>

<h1 align="center">yt-loop-extension</h1>

<p align="center">
  Keep YouTube playlists looping automatically, even after refreshes and track changes.
</p>

<p align="center">
  <a href="https://github.com/gustavocaiano/yt-loop-extension/releases/latest">Download latest release</a>
  ·
  <a href="https://github.com/gustavocaiano/yt-loop-extension/issues">Report issue</a>
</p>

## What it does

- Detects YouTube playlist pages (`list=` in URL)
- Watches player and playlist UI updates with `MutationObserver`
- Automatically enables **Loop Playlist** when it is disabled
- Runs in the background with no setup screens

## Install (Chrome / Arc)

1. Download the latest ZIP from [Releases](https://github.com/gustavocaiano/yt-loop-extension/releases/latest).
2. Extract it to a folder.
3. Open:
   - Arc: `arc://extensions/`
   - Chrome: `chrome://extensions/`
4. Enable **Developer mode**.
5. Click **Load unpacked** and select the extracted folder.

## Usage

1. Open any YouTube playlist.
2. The extension automatically activates loop mode.
3. It keeps working on refresh, skip, and playlist item changes.

## Project files

- `manifest.json` - extension manifest
- `content.js` - loop detection and auto-toggle logic
- `background.js` - service worker
- `icons/` - extension icons

## Development

1. Edit source files.
2. Reload extension in the browser extensions page.
3. Refresh YouTube playlist tab to test.

## License

Open source for personal use.
