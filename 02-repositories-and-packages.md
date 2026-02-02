02 – Repositories & Packages

This file documents how I prepare Fedora to be usable long-term.  
Most problems later can be traced back to this step being rushed or skipped.

The goal here is not “install everything”,  
but to make sure Fedora has access to the things I will inevitably need.

---

RPM Fusion

If something multimedia-related, driver-related, or hardware-related feels broken,  
the answer is usually RPM Fusion.

Enable RPM Fusion Free and Non-Free:

COMMANDS:
sudo dnf install -y https://download1.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm  
sudo dnf install -y https://download1.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm

After enabling, refresh metadata:

COMMANDS:
sudo dnf upgrade --refresh

---

Why RPM Fusion matters (note to self)

I have tried to “stay minimal” before.  
It always costs more time later.

RPM Fusion is required for:
- NVIDIA drivers  
- Hardware acceleration  
- Media codecs  
- Practical desktop usage

If I’m hesitating here, I’m overthinking it.

---

User-installed packages

This system was not built from memory.  
It was built from actual usage.

The file user-packages.txt is a snapshot of what I intentionally installed.

Install everything:

COMMANDS:
sudo dnf install -y $(cat user-packages.txt)

This may take time.  
That’s normal.

---

About this package list (important)

Some packages will look obvious.  
Some will look confusing.  
Some will make me think: “Why did I install this?”

The answer is:
- I needed it at the time  
- It solved a real problem  
- Fedora didn’t include it by default

Do not prune this list on a fresh install.  
Pruning comes later, after the system is stable.

---

DNF expectations

If DNF feels slow or inconsistent later:
- Check network first  
- Check mirrors  
- Do not blame Fedora immediately

---

Reboot checkpoint

Before moving on:

COMMANDS:
sudo reboot

After reboot, confirm:
- System boots cleanly  
- No DNF errors  
- No broken repos

Only proceed when this feels boring.

---

Next file:
02.5-multimedia-codecs.txt
