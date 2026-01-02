# Quick Deploy Commands - Copy & Paste

## After Installing Git:

```bash
# Navigate to project
cd C:\Users\lake\.gemini\antigravity\scratch\trustwatch-phishing-detection

# Initialize Git
git init

# Configure Git (replace with your info)
git config user.name "Your Name"
git config user.email "your@email.com"

# Add all files
git add .

# Commit
git commit -m "TrustWatch Full Stack - Ready for deployment"
```

## Then:

1. **GitHub Desktop Method (Easiest)**:
   - Download: https://desktop.github.com/
   - Add repository
   - Publish to GitHub

2. **Or Command Line**:
   ```bash
   # Create repo at https://github.com/new first, then:
   git remote add origin https://github.com/YOUR_USERNAME/trustwatch-phishing-detection.git
   git branch -M main
   git push -u origin main
   ```

## Finally - Deploy to Railway:

1. Go to: https://railway.app
2. Sign in with GitHub
3. New Project → Deploy from GitHub
4. Select: trustwatch-phishing-detection
5. Add PostgreSQL database
6. Done! Get your URL

**Your live app:** `https://trustwatch-production.up.railway.app`
