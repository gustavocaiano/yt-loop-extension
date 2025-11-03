// Background service worker for YouTube Playlist Loop Enabler
// Currently minimal - can be extended for future features

chrome.runtime.onInstalled.addListener(() => {
  console.log('YouTube Playlist Loop Enabler installed');
});

