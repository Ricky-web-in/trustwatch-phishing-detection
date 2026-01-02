# SendGrid Email Not Sending - Troubleshooting Guide

## Problem
Getting "HTTP Error 403: Forbidden" when trying to send emails via SendGrid.

## Root Cause
The 403 error indicates an authentication or permission issue with SendGrid.

## Solutions (Try in Order)

### Solution 1: Verify Sender Email in SendGrid

SendGrid requires you to verify the sender email address before you can send emails.

**Steps:**
1. Log in to your SendGrid account at https://app.sendgrid.com/
2. Go to **Settings** → **Sender Authentication**
3. Click **Verify a Single Sender**
4. Fill in the form:
   - **From Name:** TrustWatch Security
   - **From Email Address:** Use an email you own (e.g., your Gmail)
   - **Reply To:** Same as From Email
   - Fill in other required fields
5. Click **Create**
6. Check your email inbox for verification link
7. Click the verification link
8. Update your `.env` file with the verified email:
   ```
   SENDGRID_FROM_EMAIL=your-verified-email@gmail.com
   ```

### Solution 2: Check API Key Permissions

1. Go to SendGrid → **Settings** → **API Keys**
2. Find your API key (or create a new one)
3. Make sure it has **"Mail Send"** permissions
4. If creating a new key:
   - Click **Create API Key**
   - Name: "TrustWatch"
   - Select **"Full Access"** or **"Restricted Access"** with Mail Send enabled
   - Copy the new API key
   - Update `.env` file with the new key

### Solution 3: Create New API Key

If the current key is invalid:

1. Go to SendGrid → **Settings** → **API Keys**
2. Click **Create API Key**
3. Name: "TrustWatch-New"
4. Select **Full Access**
5. Click **Create & View**
6. **COPY THE KEY IMMEDIATELY** (you won't see it again!)
7. Update `.env` file:
   ```
   SENDGRID_API_KEY=your_new_api_key_here
   ```

### Solution 4: Use Your Own Email as Sender

The easiest solution for testing:

1. Verify your personal email (Gmail, etc.) in SendGrid
2. Update `.env`:
   ```
   SENDGRID_FROM_EMAIL=your-personal-email@gmail.com
   SENDGRID_FROM_NAME=Your Name
   ```

## Quick Fix for Testing

**Temporary workaround:** The app already has a fallback - it shows the OTP code on screen if email fails. You can use that code (940749 in your case) to verify your account.

## After Fixing

1. Stop the backend server (Ctrl+C)
2. Update the `.env` file with verified email/new API key
3. Restart the backend:
   ```bash
   cd backend
   python app.py
   ```
4. Try signing up again with a different email

## Need Help?

If you're still having issues:
1. Share your SendGrid account status (Free/Paid)
2. Confirm if you've verified a sender email
3. Check if your API key has Mail Send permissions

---

**Current Status:**
- ❌ Email sending failed with 403 Forbidden
- ✅ Account created successfully (OTP shown on screen as fallback)
- ⚠️ Need to verify sender email in SendGrid
