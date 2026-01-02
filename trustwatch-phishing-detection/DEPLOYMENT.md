# 🚀 TrustWatch - Vercel Deployment Guide

This guide will help you deploy TrustWatch to Vercel and get a live demo link.

## 📋 Prerequisites

1. **Git** - Download and install from: https://git-scm.com/download/win
2. **GitHub Account** - Create one at: https://github.com
3. **Vercel Account** - Sign up at: https://vercel.com (use your GitHub account)

## 🔧 Step 1: Install Git

1. Download Git for Windows: https://git-scm.com/download/win
2. Run the installer with default settings
3. Restart your terminal/PowerShell after installation
4. Verify installation:
   ```bash
   git --version
   ```

## 📦 Step 2: Initialize Git Repository

Open PowerShell in the project directory and run:

```bash
cd C:\Users\lake\.gemini\antigravity\scratch\trustwatch-phishing-detection

# Initialize Git
git init

# Configure Git (use your own name and email)
git config user.name "Your Name"
git config user.email "your.email@example.com"

# Add all files
git add .

# Commit
git commit -m "Initial commit: TrustWatch Phishing Detection System"
```

## 🌐 Step 3: Create GitHub Repository

### Option A: Using GitHub Desktop (Easier)
1. Download GitHub Desktop: https://desktop.github.com/
2. Install and sign in with your GitHub account
3. Click "Add" → "Add Existing Repository"
4. Select: `C:\Users\lake\.gemini\antigravity\scratch\trustwatch-phishing-detection`
5. Click "Publish repository"
6. Name it: `trustwatch-phishing-detection`
7. Make it Public (so Vercel can access it)
8. Click "Publish repository"

### Option B: Using Command Line
1. Go to https://github.com/new
2. Repository name: `trustwatch-phishing-detection`
3. Make it Public
4. Don't initialize with README
5. Click "Create repository"
6. Run these commands:

```bash
git remote add origin https://github.com/YOUR_USERNAME/trustwatch-phishing-detection.git
git branch -M main
git push -u origin main
```

## ☁️ Step 4: Deploy to Vercel

### Method 1: Vercel Dashboard (Recommended)

1. Go to https://vercel.com
2. Click "Sign Up" and use your GitHub account
3. Click "Add New..." → "Project"
4. Import your `trustwatch-phishing-detection` repository
5. Configure:
   - **Framework Preset**: Other
   - **Root Directory**: `./`
   - **Build Command**: Leave empty
   - **Output Directory**: `frontend`
6. Click "Deploy"
7. Wait 2-3 minutes for deployment
8. You'll get a URL like: `https://trustwatch-phishing-detection.vercel.app`

### Method 2: Vercel CLI

```bash
# Install Vercel CLI
npm install -g vercel

# Login to Vercel
vercel login

# Deploy
vercel

# Follow the prompts:
# - Set up and deploy? Yes
# - Which scope? Your account
# - Link to existing project? No
# - Project name? trustwatch-phishing-detection
# - Directory? ./
# - Override settings? No

# Deploy to production
vercel --prod
```

## ⚠️ Important Notes

### Database Limitation
- SQLite doesn't work on Vercel (serverless environment)
- For production, you need to:
  1. Use a cloud database (PostgreSQL, MongoDB, etc.)
  2. Or use Vercel's built-in storage options

### Quick Fix for Demo
The current setup will work for the frontend, but backend features requiring database will need modification.

**For a working demo without database:**
1. The authentication pages will display
2. The UI will be fully functional
3. Backend API calls may fail (expected)

**For full functionality:**
- Replace SQLite with Vercel Postgres or Supabase
- Update `backend/database/db.py` to use the new database

## 🎨 What Will Work on Vercel

✅ **Frontend (Fully Functional):**
- Splash screen
- Login page UI
- Signup page UI
- Verification page UI
- Home dashboard UI
- Settings page UI
- Subscription page UI
- Notifications page UI
- All animations and styling

⚠️ **Backend (Needs Database Update):**
- API endpoints are deployed
- Database operations need cloud database

## 🔄 Alternative: Deploy Frontend Only

If you want a quick demo of just the UI:

1. Create a new `vercel.json`:
```json
{
  "version": 2,
  "builds": [
    {
      "src": "frontend/**",
      "use": "@vercel/static"
    }
  ],
  "routes": [
    {
      "src": "/(.*)",
      "dest": "frontend/$1"
    }
  ]
}
```

2. Deploy with Vercel
3. The UI will work perfectly (without backend functionality)

## 📱 After Deployment

Once deployed, you'll get a URL like:
```
https://trustwatch-phishing-detection-xyz123.vercel.app
```

Share this link to show the demo!

## 🐛 Troubleshooting

**Issue: Git not found**
- Install Git from https://git-scm.com/download/win
- Restart terminal after installation

**Issue: Vercel deployment fails**
- Check `vercel.json` is in root directory
- Ensure all files are committed to Git
- Check Vercel build logs for errors

**Issue: Backend not working**
- Expected with SQLite on Vercel
- Need to migrate to cloud database for full functionality

## 🎯 Quick Demo Steps

For the fastest demo:

1. **Install Git** (if not installed)
2. **Push to GitHub** using GitHub Desktop
3. **Deploy to Vercel** via dashboard
4. **Share the link!**

The UI will be fully functional and beautiful, showing off the teal design and all pages!

## 📞 Need Help?

- Vercel Docs: https://vercel.com/docs
- GitHub Docs: https://docs.github.com
- Git Docs: https://git-scm.com/doc

---

**Ready to deploy?** Start with Step 1! 🚀
