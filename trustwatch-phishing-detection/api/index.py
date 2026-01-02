"""
TrustWatch - WSGI entry point for Vercel
"""
from backend.app import app

# Vercel serverless function handler
def handler(request, context):
    return app(request, context)

if __name__ == "__main__":
    app.run()
