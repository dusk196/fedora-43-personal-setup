01 – System Basics

Fresh Fedora install.  
No customization yet.  
This file sets the foundation so nothing breaks later.

---

Update the system

Always do this first.  
I have caused issues in the past by skipping or delaying this step.

COMMANDS:
sudo dnf upgrade --refresh  
sudo reboot

If a reboot feels unnecessary, it isn’t.

---

Verify base system health (optional but grounding)

COMMANDS:
uname -r  
cat /etc/fedora-release

Just sanity checks.  
If something already looks off here, stop and fix it first.

---

Essential base tools

These should exist before I start configuring anything else.

COMMANDS:
sudo dnf install -y git curl wget unzip tar

Notes to self:
- If git isn’t installed, nothing else matters  
- These tools are assumed in later steps and scripts

---

Enable faster DNF (quality-of-life tweak)

Optional, but I always appreciate it later.

Edit config:
sudo nano /etc/dnf/dnf.conf

Add or ensure the following lines exist:
max_parallel_downloads=10  
fastestmirror=True

---

Reboot checkpoint

Before moving on:

COMMANDS:
sudo reboot

After reboot, confirm:
- System boots cleanly  
- No update errors  
- Network works

Only then proceed.

---

Next file:
02-repositories-and-packages.txt
