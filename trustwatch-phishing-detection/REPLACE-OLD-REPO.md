# Replace Old GitHub Repository with New Version

## Option 1: Force Push (Recommended - Clean History)

### Using GitHub Desktop:

1. **Open GitHub Desktop**
   - Click "File" → "Add Local Repository"
   - Browse to: `c:\Users\lake\.gemini\antigravity\scratch\trustwatch-phishing-detection`
   - Click "Add Repository"

2. **Connect to Your Existing GitHub Repo**
   - If not already connected, click "Publish repository" or "Repository" → "Repository settings"
   - Or use command line to add remote:
   ```bash
   cd c:\Users\lake\.gemini\antigravity\scratch\trustwatch-phishing-detection
   git remote add origin https://github.com/YOUR_USERNAME/trustwatch-phishing-detection.git
   ```

3. **Force Push to Replace Old Code**
   - In GitHub Desktop, you'll see your new commit
   - Click "Push origin" button
   - If it fails due to conflicts, use command line:
   ```bash
   git push -f origin main
   ```
   **Warning:** This will completely replace the old repository!

---

## Option 2: Delete Old Repo and Create New One (Cleanest)

### Step 1: Delete Old Repository on GitHub
1. Go to https://github.com/YOUR_USERNAME/trustwatch-phishing-detection
2. Click "Settings" (at the top right)
3. Scroll to bottom → "Danger Zone"
4. Click "Delete this repository"
5. Type the repository name to confirm
6. Click "I understand, delete this repository"

### Step 2: Create New Repository
1. Go to https://github.com/new
2. Repository name: `trustwatch-phishing-detection`
3. Description: "AI-powered phishing detection system with real-time email OTP verification"
4. **Public** or **Private** (your choice)
5. **DO NOT** check "Initialize with README"
6. Click "Create repository"

### Step 3: Push New Code Using GitHub Desktop

1. **Open GitHub Desktop**
   - Click "File" → "Add Local Repository"
   - Browse to: `c:\Users\lake\.gemini\antigravity\scratch\trustwatch-phishing-detection`
   - Click "Add Repository"

2. **Publish to GitHub**
   - Click "Publish repository" button at the top
   - Uncheck "Keep this code private" if you want it public
   - Click "Publish repository"

**OR use command line:**
```bash
cd c:\Users\lake\.gemini\antigravity\scratch\trustwatch-phishing-detection
git remote add origin https://github.com/YOUR_USERNAME/trustwatch-phishing-detection.git
git branch -M main
git push -u origin main
```

---

## Option 3: Update Existing Repo (Keep History)

If you want to keep the old commits but add the new code:

1. **Clone Your Old Repo to a Different Location**
   ```bash
   cd c:\Users\lake\Desktop
   git clone https://github.com/YOUR_USERNAME/trustwatch-phishing-detection.git old-trustwatch
   ```

2. **Copy New Files Over Old Ones**
   - Delete everything in `old-trustwatch` folder EXCEPT `.git` folder
   - Copy all files from `c:\Users\lake\.gemini\antigravity\scratch\trustwatch-phishing-detection` to `old-trustwatch`
   - Don't copy the `.git` folder!

3. **Commit and Push**
   ```bash
   cd old-trustwatch
   git add .
   git commit -m "Major update: Fixed OTP system, added professional UI, production-ready"
   git push origin main
   ```

---

## ✅ Recommended: Option 2 (Delete and Recreate)

**Why?**
- Clean slate
- No conflicting history
- Easiest with GitHub Desktop
- Professional commit history

---

## After Pushing - Verify

1. Go to your GitHub repository
2. Check that files are there:
   - ✅ README.md
   - ✅ backend/ folder
   - ✅ frontend/ folder
   - ✅ SETUP.md
   - ❌ .env (should NOT be visible - protected)
   - ❌ *.db (should NOT be visible - protected)

3. Check the commit message:
   ```
   Initial commit: TrustWatch production-ready phishing detection app
   ```

---

## Need Help?

**What's your GitHub username?** I can give you the exact commands with your username filled in.

**Which option do you prefer?**
- Option 1: Force push (replace history)
- Option 2: Delete and recreate (cleanest)
- Option 3: Update existing (keep history)
