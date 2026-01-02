@echo off
echo ========================================
echo TrustWatch - Frontend Server
echo ========================================
echo.
echo Starting Frontend on http://localhost:8000
echo.
echo Open your browser and navigate to:
echo http://localhost:8000
echo.

cd frontend
python -m http.server 8000

pause
