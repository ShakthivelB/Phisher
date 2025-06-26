# 🎣 Email Phishing Tool (Linux & Termux Compatible without root)

A phishing tool to simulate email credential harvesting for **educational and ethical hacking purposes**.

- 📡 Serves a fake email login page on `localhost:3333`
- 🌐 Uses **Cloudflare Tunnel** (`cloudflared`) to expose it publicly
- 📝 Captures credentials and saves them to `www/cred.txt`

> ⚠️ **DISCLAIMER**  
> This tool is for authorized security testing and education only.  
> Do **not** use it on real targets without **explicit written permission**.

---

---

## ⚙️ Requirements

- Termux or Linux (Ubuntu/Debian/Kali)
- `php`
- `cloudflared` (Cloudflare Tunnel)

---
```
apt update
apt install php
apt install cloudflared
```
## Start the tool 

bash phisher.sh

## Run the cloudfare tunnel in new tab

cloudflared tunnel --url http://localhost:3333

## output

[+] Public URL: https://random-id.trycloudflare.com
[+] Waiting for credentials...
