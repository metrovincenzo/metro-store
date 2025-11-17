#!/usr/bin/env bash
# Quick edit and deploy script for Metro Store

set -euo pipefail

cd "$(dirname "$0")"

echo "📝 Metro Store Editor"
echo "===================="
echo ""
echo "1. Edit files (index.html, styles.css)"
echo "2. Preview locally (./run_local.sh)"
echo "3. Deploy to live site"
echo ""
read -p "Enter commit message: " msg

if [ -z "$msg" ]; then
  msg="Update site"
fi

git add .
git commit -m "$msg"
git push

echo ""
echo "✅ Changes pushed! Site will update in ~1 minute."
echo "🌐 Live at: https://metrovincenzo.github.io/metro-store/"

