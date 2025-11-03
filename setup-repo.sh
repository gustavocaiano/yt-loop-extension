#!/bin/bash
# Script to set up and push to GitHub repository

echo "Creating GitHub repository..."
echo ""
echo "If you haven't created the repo on GitHub yet:"
echo "1. Go to https://github.com/new"
echo "2. Repository name: yt-loop-extension"
echo "3. Set to Public"
echo "4. DO NOT initialize with README"
echo "5. Click 'Create repository'"
echo ""
read -p "Press Enter after you've created the repo on GitHub..."

read -p "Enter your GitHub username: " GITHUB_USERNAME

git remote add origin https://github.com/${GITHUB_USERNAME}/yt-loop-extension.git 2>/dev/null || git remote set-url origin https://github.com/${GITHUB_USERNAME}/yt-loop-extension.git
git branch -M main
git push -u origin main

echo ""
echo "✅ Repository pushed to GitHub!"
echo "Visit: https://github.com/${GITHUB_USERNAME}/yt-loop-extension"

