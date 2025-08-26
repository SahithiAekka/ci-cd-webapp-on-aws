#!/bin/bash

echo "🔻 Stopping Flask-related services..."

# Stop Gunicorn if running (production Flask)
if pgrep gunicorn > /dev/null; then
    echo "Stopping Gunicorn..."
    pkill gunicorn
else
    echo "Gunicorn is not running."
fi

# Stop Flask development server if running
if pgrep -f "flask run" > /dev/null; then
    echo "Stopping Flask dev server..."
    pkill -f "flask run"
else
    echo "Flask dev server is not running."
fi

# Optional: Stop anything using port 5000 (Flask default)
if lsof -i:5000 > /dev/null; then
    echo "Port 5000 is in use. Releasing..."
    fuser -k 5000/tcp
else
    echo "Port 5000 is free."
fi

echo "✅ Flask app services stopped."
