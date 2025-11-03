# YouTube Playlist Loop Enabler

A Chrome extension that automatically enables "Loop Playlist" mode on YouTube playlist pages.

## Features

- Automatically enables loop playlist mode when a playlist is loaded
- Works when playlist items are selected or skipped
- Activates on page refresh
- Runs silently in the background

## Installation in Arc Browser

Arc browser is built on Chromium, so Chrome extensions work seamlessly. Here's how to install:

### Method 1: Load Unpacked Extension (Recommended)

1. **Open Arc Browser** and navigate to:
   ```
   arc://extensions/
   ```
   Or go to **Arc Settings** → **Extensions** → **Manage Extensions**

2. **Enable Developer Mode**:
   - Toggle the "Developer mode" switch in the top-right corner

3. **Load the Extension**:
   - Click "Load unpacked" button
   - Navigate to and select the folder containing this extension:
     ```
     /Users/gustavocaiano/docs/github/yt-loop-extension
     ```

4. **Verify Installation**:
   - You should see "YouTube Playlist Loop Enabler" in your extensions list
   - The extension icon should appear in your toolbar

### Method 2: Using Arc's Extension Menu

1. Open Arc browser
2. Click the extensions icon in the toolbar (or press `Cmd+Shift+E`)
3. Click "Manage Extensions"
4. Enable Developer Mode
5. Click "Load unpacked" and select the extension folder

## Usage

1. Navigate to any YouTube playlist (URL contains `list=`)
2. The extension will automatically enable loop mode
3. No configuration needed - it works automatically!

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

- **Extension disappeared after restart?**
  - This is normal for unpacked extensions
  - Simply reload it using "Load unpacked" again

## Files

- `manifest.json` - Extension configuration
- `content.js` - Main script that enables loop mode
- `background.js` - Service worker (minimal, for future features)

## Development

To modify the extension:
1. Make changes to the files
2. Go to `arc://extensions/`
3. Click the refresh icon on the extension card
4. Reload the YouTube page to test changes

