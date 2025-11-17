# Metro Store - Editing & Publishing Guide

## Quick Edit Workflow

1. **Edit files locally:**
   ```bash
   cd ~/metro_store
   nano index.html    # or use any editor
   nano styles.css
   ```

2. **Preview changes:**
   ```bash
   ./run_local.sh
   # Visit http://localhost:8080
   ```

3. **Deploy to live site:**
   ```bash
   git add .
   git commit -m "Describe your changes"
   git push
   ```
   Site updates automatically in ~1 minute at:
   https://metrovincenzo.github.io/metro-store/

## Adding Custom Domain

1. Buy domain (Namecheap, Google Domains, etc.)
2. In GitHub repo: Settings → Pages → Custom domain
3. Add DNS records as shown in GitHub
4. Create `CNAME` file in repo root with your domain

## Selling the Site

### Option A: Sell the Code
- Transfer GitHub repo to buyer
- Include all assets and documentation
- Price: $50-$500+ depending on complexity

### Option B: Sell Domain + Site
- Transfer domain registration
- Transfer GitHub repo
- Price: Domain value + site value

### Option C: Sell as Service
- Keep ownership, charge for hosting/maintenance
- Monthly fee: $10-$50/month

## File Structure
```
metro_store/
├── index.html      # Main page content
├── styles.css      # All styling
├── run_local.sh    # Local preview script
└── .git/          # Git repository
```

## Common Edits

**Change logo text:** Edit `<span class="logo">Metro Vincenzo</span>` in index.html

**Change colors:** Edit CSS variables in styles.css:
```css
:root {
  --accent: #76ffe1;  /* Change this */
}
```

**Add new beat/merch item:** Copy an existing card in index.html and modify

**Update images:** Replace Unsplash URLs with your own image URLs

