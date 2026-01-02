# Quick Deployment Commands

## After Installing Git:

```bash
# Navigate to project
cd C:\Users\lake\.gemini\antigravity\scratch\trustwatch-phishing-detection

# Initialize Git
git init

# Configure Git
git config user.name "Your Name"
git config user.email "your@email.com"

# Add all files
git add .

# Commit
git commit -m "Initial commit: TrustWatch with Authentication"

# Create GitHub repo at: https://github.com/new
# Then run (replace YOUR_USERNAME):
git remote add origin https://github.com/YOUR_USERNAME/trustwatch-phishing-detection.git
git branch -M main
git push -u origin main
```

## Then Deploy to Vercel:

1. Go to https://vercel.com
2. Sign in with GitHub
3. Click "Add New Project"
4. Import your repository
5. Click "Deploy"
6. Get your live URL!

## Or use Vercel CLI:

```bash
npm install -g vercel
vercel login
vercel --prod
```

Your demo will be live at: `https://trustwatch-phishing-detection.vercel.app`
