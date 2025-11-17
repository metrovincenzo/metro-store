#!/usr/bin/env bash
# Setup custom domain for Metro Store

set -euo pipefail

cd "$(dirname "$0")"

if [ $# -eq 0 ]; then
  echo "Usage: ./setup_custom_domain.sh yourdomain.com"
  echo "Example: ./setup_custom_domain.sh metrovincenzo.com"
  exit 1
fi

DOMAIN="$1"

# Create CNAME file
echo "$DOMAIN" > CNAME
echo "✅ Created CNAME file with: $DOMAIN"

# Add to git
git add CNAME
git commit -m "Add custom domain: $DOMAIN"
git push

echo ""
echo "✅ CNAME file pushed to GitHub!"
echo ""
echo "📋 Next steps:"
echo "1. Go to: https://github.com/metrovincenzo/metro-store/settings/pages"
echo "2. Under 'Custom domain', enter: $DOMAIN"
echo "3. Check 'Enforce HTTPS' (after DNS propagates)"
echo ""
echo "🌐 DNS Configuration:"
echo "Add these records at your domain registrar:"
echo ""
echo "Type: A"
echo "Name: @"
echo "Value: 185.199.108.153"
echo ""
echo "Type: A"
echo "Name: @"
echo "Value: 185.199.109.153"
echo ""
echo "Type: A"
echo "Name: @"
echo "Value: 185.199.110.153"
echo ""
echo "Type: A"
echo "Name: @"
echo "Value: 185.199.111.153"
echo ""
echo "Or use CNAME (easier):"
echo "Type: CNAME"
echo "Name: @"
echo "Value: metrovincenzo.github.io"
echo ""
echo "⏱️  DNS changes take 5-60 minutes to propagate"
echo "🔒 After DNS works, enable HTTPS in GitHub Pages settings"

