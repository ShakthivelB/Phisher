# 🎣 Email Phishing Tool (Linux & Termux Compatible without root)

A phishing tool to simulate email credential harvesting for **educational and ethical hacking purposes**.

- 📡 Serves a fake email login page on `127.0.0.1:3333`
- 🌐 Uses **Cloudflare Tunnel** (`cloudflared`) to expose it publicly
- 📝 Captures credentials and saves them to `www/log.txt`

> ⚠️ **DISCLAIMER**  
> This tool is for authorized security testing and education purpose only.  
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

cloudflared tunnel --url 127.0.0.1.3333
## output

[+] Public URL: https://random-id.trycloudflare.com
[+] Waiting for credentials...
