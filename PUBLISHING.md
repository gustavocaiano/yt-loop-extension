# Publishing Guide for YouTube Playlist Loop Enabler

## Step 1: Push to GitHub

### Option A: Using GitHub Web Interface

1. Go to https://github.com/new
2. Repository name: `yt-loop-extension`
3. Set it to **Public**
4. **DO NOT** initialize with README, .gitignore, or license (we already have these)
5. Click "Create repository"

Then run these commands:

```bash
cd /Users/gustavocaiano/docs/github/yt-loop-extension
git remote add origin https://github.com/YOUR_USERNAME/yt-loop-extension.git
git branch -M main
git push -u origin main
```

Replace `YOUR_USERNAME` with your GitHub username.

### Option B: Using GitHub CLI (if installed)

```bash
cd /Users/gustavocaiano/docs/github/yt-loop-extension
gh repo create yt-loop-extension --public --source=. --remote=origin --push
```

---

## Step 2: Publish to Chrome Web Store

### Prerequisites

1. **Chrome Web Store Developer Account**: 
   - Go to https://chrome.google.com/webstore/devconsole
   - Sign in with your Google account
   - Pay a **one-time $5 registration fee**

### Steps to Publish

1. **Prepare the Extension Package**:
   ```bash
   cd /Users/gustavocaiano/docs/github/yt-loop-extension
   zip -r yt-loop-extension.zip . -x "*.git*" -x "*.DS_Store" -x "*.zip"
   ```

2. **Go to Chrome Web Store Developer Dashboard**:
   - Visit: https://chrome.google.com/webstore/devconsole
   - Click "New Item"

3. **Upload the ZIP file**:
   - Upload `yt-loop-extension.zip`
   - Wait for processing

4. **Fill in Store Listing**:
   - **Name**: YouTube Playlist Loop Enabler
   - **Short description**: Automatically enables loop mode on YouTube playlists
   - **Detailed description**: 
     ```
     Automatically enables "Loop Playlist" mode on YouTube playlist pages. 
     Works when playlists are loaded, refreshed, or when items are selected/skipped.
     
     Features:
     - Automatic loop activation
     - Works on all YouTube playlists
     - No configuration needed
     ```
   - **Category**: Productivity or Utilities
   - **Language**: English (and others if you want)
   - **Privacy practices**: 
     - Single purpose: Yes
     - Permission justification: "Needs access to YouTube pages to enable loop mode"
   - **Screenshots**: Take 1-2 screenshots of the extension working
   - **Small tile**: 128x128 icon (create a simple icon)
   - **Large tile**: 440x280 screenshot

5. **Upload Assets** (optional but recommended):
   - Create a simple icon (128x128 PNG)
   - Add screenshots showing the extension in action

6. **Set Visibility**:
   - **Unlisted**: Only people with the link can install
   - **Public**: Anyone can find and install (requires review)

7. **Submit for Review**:
   - Click "Submit for review"
   - Review typically takes 1-3 business days

---

## Step 3: Alternative Distribution Methods

### Option A: GitHub Releases (Easier, No Fees)

1. Create a release on GitHub:
   ```bash
   git tag -a v1.0.0 -m "Version 1.0.0"
   git push origin v1.0.0
   ```

2. Go to your GitHub repo → Releases → "Draft a new release"
3. Upload the ZIP file
4. Users can download and install manually using "Load unpacked"

### Option B: Self-Hosting (Advanced)

Host the extension files on your own server and provide installation instructions.

---

## Updating the Extension

When you make changes:

1. Update `version` in `manifest.json` (e.g., "1.0.1")
2. Commit and push to GitHub
3. Create a new ZIP:
   ```bash
   zip -r yt-loop-extension.zip . -x "*.git*" -x "*.DS_Store" -x "*.zip"
   ```
4. Go to Chrome Web Store → Your extension → "Upload Updated Package"
5. Submit for review

---

## Notes

- **Chrome Web Store**: Best for discoverability, but requires $5 fee and review process
- **GitHub Releases**: Free, but users need to install manually
- **Review Process**: First-time submissions can take a few days
- **Updates**: Usually approved faster than initial submissions

