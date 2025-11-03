# YouTube Playlist Loop Enabler

A Chrome/Arc extension that automatically enables "Loop Playlist" mode on YouTube playlist pages. Never worry about manually enabling loop mode again!

## Features

- 🔄 Automatically enables loop playlist mode when a playlist is loaded
- ⏭️ Works when playlist items are selected or skipped
- 🔃 Activates on page refresh
- 🤫 Runs silently in the background - no configuration needed

## Installation

### Step 1: Download the Extension

1. Go to the [Releases](https://github.com/gustavocaiano/yt-loop-extension/releases) page
2. Download the latest `yt-loop-extension.zip` file
3. Extract the ZIP file to a folder on your computer (remember where you saved it!)

### Step 2: Load the Extension

Works the same way for **Arc Browser** and **Chrome** (both are Chromium-based):

1. **Open your browser** and navigate to:
   - **Arc**: `arc://extensions/` (or Arc Settings → Extensions → Manage Extensions)
   - **Chrome**: `chrome://extensions/`

2. **Enable Developer Mode**:
   - Toggle the "Developer mode" switch in the top-right corner

3. **Load the Extension**:
   - Click the **"Load unpacked"** button
   - Navigate to and select the **extracted folder** (the one containing `manifest.json`)
   - Click "Select Folder" or "Open"

4. **Verify Installation**:
   - You should see "YouTube Playlist Loop Enabler" in your extensions list
   - The extension is now active!

## Usage

1. Navigate to any YouTube playlist (URL contains `list=`)
2. The extension will **automatically enable loop mode** - no action needed!
3. Works every time you load, refresh, or skip items in a playlist

## How It Works

- The extension runs a content script on YouTube playlist pages
- It watches the DOM for changes (playlist loaded, song skipped, page refreshed)
- When the loop button appears and is not active, it automatically clicks it
- Uses a MutationObserver to detect when the playlist panel changes

## Troubleshooting

- **Extension not working?**
  - Make sure you're on a YouTube playlist page (URL should contain `list=`)
  - Check the browser console (F12) for any error messages
  - Try refreshing the YouTube page
  - Make sure you extracted the ZIP file and selected the folder (not the ZIP)

- **Extension disappeared after restart?**
  - This is normal for unpacked extensions in development
  - Simply reload it using "Load unpacked" again, or keep the extracted folder

- **Still having issues?**
  - Open an issue on [GitHub](https://github.com/gustavocaiano/yt-loop-extension/issues)

## Files

- `manifest.json` - Extension configuration
- `content.js` - Main script that enables loop mode
- `background.js` - Service worker

## Development

To modify the extension:
1. Make changes to the files
2. Go to `arc://extensions/` (Arc) or `chrome://extensions/` (Chrome)
3. Click the refresh icon on the extension card
4. Reload the YouTube page to test changes

## License

This project is open source and available for personal use.
