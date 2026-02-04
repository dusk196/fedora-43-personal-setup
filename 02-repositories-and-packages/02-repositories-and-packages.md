# 02 – Repositories & Packages

This file documents how I prepare Fedora to be usable long-term.
Most problems later can be traced back to this step being rushed or skipped.

The goal here is not "install everything", but to make sure Fedora has access to the things I will inevitably need.

## 1. RPM Fusion

If something multimedia-related, driver-related, or hardware-related feels broken, the answer is usually RPM Fusion.

Enable RPM Fusion Free and Non-Free:

```bash
sudo dnf install -y https://download1.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm
sudo dnf install -y https://download1.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm
```

After enabling, refresh metadata:

```bash
sudo dnf upgrade --refresh
```

> [!NOTE]
> **Why RPM Fusion matters:**
> I have tried to "stay minimal" before. It always costs more time later.
> RPM Fusion is required for:
>
> - NVIDIA drivers
> - Hardware acceleration
> - Media codecs
> - Practical desktop usage
>
> If I’m hesitating here, I’m overthinking it.

## 2. User-installed packages

This system was not built from memory. It was built from actual usage.
The file `package-list.md` (and `assets/user-packages.txt`) is a snapshot of what I intentionally installed.

Install everything:

```bash
sudo dnf install -y $(cat assets/user-packages.txt)
```

This may take time. That’s normal.

**About this package list:**

- I needed it at the time
- It solved a real problem
- Fedora didn’t include it by default

> [!WARNING]
> Do not prune this list on a fresh install. Pruning comes later, after the system is stable.

## 3. DNF expectations

If DNF feels slow or inconsistent later:

- Check network first
- Check mirrors
- Do not blame Fedora immediately

## 4. Reboot checkpoint

Before moving on:

```bash
sudo reboot
```

After reboot, confirm:

- System boots cleanly
- No DNF errors
- No broken repos

Only proceed when this feels boring.

---

**Next file:** `03-multimedia-codecs.md`
