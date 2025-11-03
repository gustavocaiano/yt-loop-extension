function enableLoopIfNeeded() {
  // Find the loop button using the actual YouTube structure
  const loopButtonRenderer = document.querySelector('ytd-playlist-loop-button-renderer');
  if (!loopButtonRenderer) {
    return; // Button not found yet
  }

  // Find the actual clickable button inside
  const loopBtn = loopButtonRenderer.querySelector('button[aria-label="Loop playlist"]');
  if (!loopBtn) {
    return; // Button not found
  }

  // Check if loop is already enabled by checking aria-pressed attribute
  const isActive = loopBtn.getAttribute('aria-pressed') === 'true';
  
  if (!isActive) {
    loopBtn.click();
    console.log("Loop playlist enabled automatically.");
  }
}

// Use a more efficient observer with debouncing
let timeoutId = null;
const observer = new MutationObserver(() => {
  // Debounce to avoid excessive checking
  clearTimeout(timeoutId);
  timeoutId = setTimeout(enableLoopIfNeeded, 100);
});

observer.observe(document.body, { childList: true, subtree: true });

// Run on page load
window.addEventListener('load', enableLoopIfNeeded);

// Also run when DOM is ready (in case load already fired)
if (document.readyState === 'loading') {
  document.addEventListener('DOMContentLoaded', enableLoopIfNeeded);
} else {
  enableLoopIfNeeded();
}

