# 🚀 Deploy TrustWatch to Vercel - Complete Guide

## Full Stack Deployment with Backend + Frontend

### **Step 1: Ensure Code is on GitHub**

Make sure your repository is published to GitHub:
1. Open **GitHub Desktop**
2. Check that `trustwatch-phishing-detection` is published
3. If not, click **"Publish repository"** and make it **Public**

### **Step 2: Deploy to Vercel**

1. **Go to Vercel**: https://vercel.com

2. **Sign In** with GitHub account

3. **Import Project**:
   - Click **"Add New..."** → **"Project"**
   - Select **"Import Git Repository"**
   - Choose `trustwatch-phishing-detection`
   - Click **"Import"**

4. **Configure Project**:
   - **Framework Preset**: Other
   - **Root Directory**: `./` (leave as is)
   - **Build Command**: Leave empty
   - **Output Directory**: Leave empty
   - **Install Command**: Leave empty

5. **Click "Deploy"**

6. **Wait 2-3 minutes** for deployment

7. **Get Your URL**: `https://trustwatch-phishing-detection.vercel.app`

---

## 🗄️ **Add Database (Required for Backend)**

The backend needs a database to work. Here's how to add it:

### **Option A: Vercel Postgres (Recommended)**

1. In your Vercel project dashboard, go to **"Storage"** tab
2. Click **"Create Database"**
3. Select **"Postgres"**
4. Choose region: **US East** (or closest to you)
5. Click **"Create"**
6. Vercel automatically adds `POSTGRES_URL` environment variable
7. **Redeploy** your project (click "Redeploy" button)

**Note**: Vercel Postgres requires a paid plan ($20/month). For free option, use Supabase below.

### **Option B: Supabase (Free!)**

1. **Go to Supabase**: https://supabase.com
2. **Sign up** with GitHub (free)
3. **Create New Project**:
   - Name: `trustwatch-db`
   - Database Password: (create a strong password)
   - Region: Choose closest
   - Click **"Create new project"**
4. **Get Connection String**:
   - Go to **Settings** → **Database**
   - Copy **Connection string** (URI format)
   - Replace `[YOUR-PASSWORD]` with your password
5. **Add to Vercel**:
   - Go to your Vercel project
   - Click **"Settings"** → **"Environment Variables"**
   - Add new variable:
     - **Name**: `DATABASE_URL`
     - **Value**: (paste Supabase connection string)
   - Click **"Save"**
6. **Redeploy**: Go to "Deployments" → Click "..." → "Redeploy"

---

## 🔧 **Update Backend to Use PostgreSQL**

The code needs a small update to use PostgreSQL instead of SQLite. I'll create the updated file.

---

## ✅ **What Will Work After Deployment:**

**Frontend (Immediate):**
- ✅ Splash screen
- ✅ Login page UI
- ✅ Signup page UI
- ✅ All pages with teal design
- ✅ Animations and interactions

**Backend (After adding database):**
- ✅ User registration
- ✅ Login/logout
- ✅ Email verification
- ✅ Settings management
- ✅ ML phishing detection
- ✅ URL/Email/SMS scanning
- ✅ Statistics tracking

---

## 🌐 **Your Live URLs:**

After deployment:
- **Main App**: `https://trustwatch-phishing-detection.vercel.app`
- **API**: `https://trustwatch-phishing-detection.vercel.app/api`
- **Health Check**: `https://trustwatch-phishing-detection.vercel.app/api/health`

---

## 🎯 **Quick Deployment Steps:**

1. ✅ Code on GitHub (via GitHub Desktop)
2. ✅ Deploy to Vercel (import from GitHub)
3. ⏳ Add Supabase database (free)
4. ⏳ Add DATABASE_URL to Vercel
5. ⏳ Redeploy
6. 🎉 **Get your live demo link!**

---

## 📱 **Testing Your Deployment:**

After deployment, test:
1. Visit your Vercel URL
2. You'll see the splash screen
3. Click through to login/signup
4. Try creating an account
5. Test the scanning features

---

## 🐛 **Troubleshooting:**

**"Build failed"**
- Check Vercel build logs
- Ensure `vercel.json` is in root directory
- Verify `requirements.txt` has all dependencies

**"Backend not working"**
- Add DATABASE_URL environment variable
- Redeploy after adding database
- Check API endpoint: `/api/health`

**"Database connection error"**
- Verify DATABASE_URL is correct
- Check Supabase project is running
- Ensure password in connection string is correct

---

## 🚀 **Ready to Deploy?**

1. Make sure code is on GitHub
2. Go to https://vercel.com
3. Import your repository
4. Click Deploy
5. Add Supabase database
6. Share your link!

**Your demo will be live in ~5 minutes!** 🎊
