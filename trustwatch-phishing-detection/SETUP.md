# TrustWatch - Setup Instructions

## Prerequisites
- Python 3.8+
- Node.js (for frontend development server, optional)
- SendGrid Account (for email OTP)

## Backend Setup

### 1. Install Dependencies
```bash
cd backend
pip install -r requirements.txt
```

### 2. Configure SendGrid Email Service

1. **Create a SendGrid Account**
   - Go to [SendGrid](https://sendgrid.com/)
   - Sign up for a free account (100 emails/day)

2. **Get Your API Key**
   - Navigate to Settings → API Keys
   - Click "Create API Key"
   - Give it a name (e.g., "TrustWatch")
   - Select "Full Access" or "Restricted Access" with Mail Send permissions
   - Copy the API key (you won't see it again!)

3. **Create .env File**
   - Copy `.env.example` to `.env`:
     ```bash
     cp .env.example .env
     ```
   - Edit `.env` and add your SendGrid API key:
     ```
     SENDGRID_API_KEY=your_actual_api_key_here
     SENDGRID_FROM_EMAIL=noreply@trustwatch.com
     SENDGRID_FROM_NAME=TrustWatch Security
     APP_NAME=TrustWatch
     APP_URL=http://localhost:3000
     ```

   > **Note**: You can use any email address for `SENDGRID_FROM_EMAIL`. SendGrid will verify it.

### 3. Start Backend Server
```bash
cd backend
python app.py
```

The backend will run on `http://localhost:5000`

## Frontend Setup

### Option 1: Simple HTTP Server (Recommended)
```bash
cd frontend
python -m http.server 3000
```

### Option 2: Live Server (VS Code Extension)
- Install "Live Server" extension in VS Code
- Right-click on `index.html` → "Open with Live Server"

The frontend will run on `http://localhost:3000`

## Testing the Features

### 1. Test Email OTP Verification

1. Open `http://localhost:3000/signup.html`
2. Fill in the signup form with your real email address
3. Click "Create Account"
4. Check your email inbox for the OTP code
5. Enter the OTP on the verification page
6. You should receive a welcome email after verification

### 2. Test Enhanced Scan Page

1. Open `http://localhost:3000/scan.html`
2. Notice the vibrant gradient background with animations
3. Test URL scanning:
   - Enter a URL (e.g., `https://google.com`)
   - Watch the animated progress bar
   - See the results with smooth animations
   - If safe, enjoy the confetti celebration! 🎉

4. Test Email scanning:
   - Click the "Email" tab
   - Read the "How to Share Suspicious Emails" guide
   - Paste an email content
   - Click "Scan Email"

5. Test SMS scanning:
   - Click the "SMS" tab
   - Paste an SMS message
   - Click "Scan SMS"

### 3. Visual Features to Notice

- **Glassmorphism effects** on cards and tabs
- **Animated gradient background** that shifts colors
- **Smooth tab transitions** with hover effects
- **Progress bar animation** during scanning
- **Score counter animation** that counts up
- **Confetti celebration** for safe/low-risk results
- **Micro-animations** on indicators and badges
- **Responsive design** on mobile devices

## Troubleshooting

### Email Not Sending
- Check that `SENDGRID_API_KEY` is correctly set in `.env`
- Verify your SendGrid account is active
- Check backend console for error messages
- The app will still work without email (shows OTP in response)

### Backend Connection Error
- Ensure backend is running on port 5000
- Check for port conflicts
- Verify CORS is enabled in `app.py`

### Animations Not Working
- Clear browser cache
- Ensure `scan-enhanced.css` is loaded
- Check browser console for errors
- Try a different browser (Chrome/Firefox recommended)

## Production Deployment

For production deployment:
1. Set up proper environment variables
2. Use a production-grade WSGI server (e.g., Gunicorn)
3. Configure proper email domain verification in SendGrid
4. Enable HTTPS
5. Set appropriate CORS origins

See `DEPLOYMENT.md` for detailed deployment instructions.

## Support

For issues or questions:
- Check the console logs (browser and backend)
- Review the implementation plan
- Test with different browsers
- Ensure all dependencies are installed
