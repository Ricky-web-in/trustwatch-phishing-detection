# 🚀 TrustWatch - Full Stack Deployment Guide

## Deploy Complete Working App with Backend + Database

This guide will help you deploy the **full TrustWatch application** with working authentication, ML detection, and database.

---

## 🎯 **Recommended: Railway.app (Easiest!)**

Railway automatically detects Flask apps and provides PostgreSQL database.

### **Step 1: Install Git**

Download and install: https://git-scm.com/download/win

After installation, restart PowerShell and verify:
```bash
git --version
```

### **Step 2: Initialize Git Repository**

```bash
cd C:\Users\lake\.gemini\antigravity\scratch\trustwatch-phishing-detection

git init
git add .
git commit -m "TrustWatch Full Stack Application"
```

### **Step 3: Create GitHub Repository**

**Option A: GitHub Desktop (Easier)**
1. Download: https://desktop.github.com/
2. Install and sign in
3. Add existing repository: Select the trustwatch folder
4. Publish to GitHub (make it Public)

**Option B: Command Line**
1. Go to https://github.com/new
2. Create repository: `trustwatch-phishing-detection`
3. Make it **Public**
4. Run:
```bash
git remote add origin https://github.com/YOUR_USERNAME/trustwatch-phishing-detection.git
git branch -M main
git push -u origin main
```

### **Step 4: Deploy to Railway**

1. **Go to Railway**: https://railway.app

2. **Sign Up** with GitHub account (free)

3. **Create New Project**:
   - Click "New Project"
   - Select "Deploy from GitHub repo"
   - Choose `trustwatch-phishing-detection`

4. **Add PostgreSQL Database**:
   - In your project, click "New"
   - Select "Database" → "PostgreSQL"
   - Railway will automatically create and link it!

5. **Configure Environment Variables**:
   Railway auto-detects everything, but verify:
   - `PORT` - Auto-set by Railway
   - `DATABASE_URL` - Auto-set when you add PostgreSQL

6. **Deploy!**
   - Railway automatically builds and deploys
   - Wait 2-3 minutes
   - Get your URL: `https://trustwatch-production.up.railway.app`

### **Step 5: Update Frontend API URL**

After deployment, update the API URL in frontend files to point to your Railway backend.

---

## 🔄 **Alternative: Render.com**

Similar to Railway, free tier available.

### **Steps:**

1. Go to https://render.com
2. Sign up with GitHub
3. Click "New +" → "Web Service"
4. Connect your GitHub repo
5. Configure:
   - **Name**: trustwatch-backend
   - **Environment**: Python 3
   - **Build Command**: `pip install -r requirements.txt`
   - **Start Command**: `gunicorn -w 4 -b 0.0.0.0:$PORT backend.app:app`
6. Add PostgreSQL database:
   - Click "New +" → "PostgreSQL"
   - Link to your web service
7. Deploy!

Your URL: `https://trustwatch-backend.onrender.com`

---

## 📦 **What's Included:**

All files are ready for deployment:

✅ `requirements.txt` - Python dependencies with PostgreSQL
✅ `Procfile` - Railway/Heroku deployment config
✅ `runtime.txt` - Python version specification
✅ `.gitignore` - Git ignore rules
✅ Complete backend with authentication
✅ Complete frontend with teal design
✅ Database schema (auto-migrated to PostgreSQL)

---

## 🎨 **After Deployment:**

Your live app will have:

**Working Features:**
- ✅ User registration & email verification
- ✅ Login/logout with session management
- ✅ Settings with SMS/Email/Notification toggles
- ✅ Subscription plans (Free & Premium)
- ✅ ML-based phishing detection
- ✅ URL, Email, SMS scanning
- ✅ Real-time statistics
- ✅ Notifications system
- ✅ Beautiful teal UI

**Live URLs:**
- Frontend: `https://trustwatch-production.up.railway.app`
- API: `https://trustwatch-production.up.railway.app/api`

---

## 🐛 **Troubleshooting:**

**Issue: Git not found**
- Install Git from https://git-scm.com/download/win
- Restart terminal

**Issue: Railway build fails**
- Check `requirements.txt` is in root directory
- Verify `Procfile` exists
- Check Railway logs for specific errors

**Issue: Database connection fails**
- Ensure PostgreSQL is added in Railway
- Check environment variables are set
- Railway auto-configures `DATABASE_URL`

**Issue: Frontend can't reach backend**
- Update API URL in frontend JavaScript files
- Enable CORS (already configured in `app.py`)

---

## ⚡ **Quick Deployment Checklist:**

- [ ] Install Git
- [ ] Initialize Git repository
- [ ] Push to GitHub
- [ ] Sign up for Railway.app
- [ ] Deploy from GitHub
- [ ] Add PostgreSQL database
- [ ] Wait for deployment
- [ ] Get your live URL!
- [ ] Share your demo link! 🎉

---

## 🎯 **Expected Timeline:**

- Git setup: 5 minutes
- GitHub push: 2 minutes
- Railway deployment: 3-5 minutes
- **Total: ~10-15 minutes**

---

## 📱 **Your Live Demo:**

After deployment, share your link:
```
https://trustwatch-production.up.railway.app
```

**Full working app with:**
- Authentication system
- ML phishing detection
- Real-time scanning
- Beautiful teal UI
- All features functional!

🎊 **Ready to deploy? Start with Step 1!** 🚀
