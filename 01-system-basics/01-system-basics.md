# 01 – System Basics

Fresh Fedora install. No customization yet.
This file sets the foundation so nothing breaks later.

## 1. Update the system

Always do this first. I have caused issues in the past by skipping or delaying this step.

```bash
sudo dnf upgrade --refresh
sudo reboot
```

> [!NOTE]
> If a reboot feels unnecessary, it isn’t.

## 2. Verify base system health

Optional but grounding. Just sanity checks. If something already looks off here, stop and fix it first.

```bash
uname -r
cat /etc/fedora-release
```

## 3. Essential base tools

These should exist before I start configuring anything else.

```bash
sudo dnf install -y git curl wget unzip tar
```

**Notes to self:**

- If `git` isn’t installed, nothing else matters.
- These tools are assumed in later steps and scripts.

## 4. Enable faster DNF (quality-of-life tweak)

Optional, but I always appreciate it later.

Edit config:

```bash
sudo nano /etc/dnf/dnf.conf
```

Add or ensure the following lines exist:

```ini
max_parallel_downloads=10
fastestmirror=True
```

## 5. Reboot checkpoint

Before moving on:

```bash
sudo reboot
```

After reboot, confirm:

- System boots cleanly
- No update errors
- Network works

Only then proceed.

---

**Next file:** `02-repositories-and-packages.md`
