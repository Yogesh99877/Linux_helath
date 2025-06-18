# 🖥️ Linux System Health Dashboard (CLI-Based)

A lightweight, color-coded system health dashboard written in Bash. It logs essential Linux infrastructure metrics like CPU load, memory usage, disk utilization, and active users — all in a clean, terminal-friendly format.

Inspired by tools like `htop` and `Nagios`, this script is designed to run automatically every 5 minutes using `cron`, with optional remote log upload support via `SCP` or `rsync`.

---

## 🚀 Features

- ✅ **Real-time system info**: CPU load, memory, disk, uptime, and logged-in users
- ✅ **Color-coded CLI output**
- ✅ **Automatic logging** in `/var/log/sys_health/`
- ✅ **Cron job integration** (runs every 5 mins)
- ✅ **Optional log push** to a remote server via SCP or rsync

---

## 🛠️ Technologies Used

- Bash
- `uptime`, `free`, `df`, `who`, `cron`, `scp`, `rsync`
- ANSI color codes for CLI formatting

---

## 📦 Installation

1. Clone this repo:
   ```bash
   git clone https://github.com/your-username/linux-sys-health-dashboard.git
   cd linux-sys-health-dashboard


chmod +x sys_health_dashboard.sh

(Optional) Move it to a system-wide path:

sudo mv sys_health_dashboard.sh /usr/local/bin/
Run it manually:

bash sys_health_dashboard.sh

** NOTE **
add this line in crontab

*/5 * * * * /usr/local/bin/sys_health_dashboard.sh
