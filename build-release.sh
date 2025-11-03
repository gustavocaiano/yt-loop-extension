#!/bin/bash
# Build script for creating release ZIP file

VERSION=${1:-"1.0.0"}
ZIP_NAME="yt-loop-extension-v${VERSION}.zip"

echo "Building extension package..."
echo "Version: ${VERSION}"
echo "Output: ${ZIP_NAME}"

# Remove old zip if exists
rm -f "${ZIP_NAME}" yt-loop-extension.zip

# Create zip excluding git files and build artifacts
zip -r "${ZIP_NAME}" . \
  -x "*.git*" \
  -x "*.DS_Store" \
  -x "*.zip" \
  -x "build-release.sh" \
  -x "setup-repo.sh" \
  -x "*.log"

# Also create a generic name for convenience
cp "${ZIP_NAME}" yt-loop-extension.zip

echo ""
echo "✅ Build complete!"
echo "📦 Package: ${ZIP_NAME}"
echo "📦 Package (generic): yt-loop-extension.zip"
echo ""
echo "Next steps:"
echo "1. git add ${ZIP_NAME}"
echo "2. git commit -m 'Release v${VERSION}'"
echo "3. git tag -a v${VERSION} -m 'Version ${VERSION}'"
echo "4. git push origin main --tags"

