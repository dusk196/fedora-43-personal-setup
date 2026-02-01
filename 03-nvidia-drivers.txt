03 – NVIDIA Drivers

This file exists because NVIDIA on Fedora can either:
- Work perfectly for years  
- Or waste an entire evening if rushed

The difference is almost always Secure Boot and akmods.

Read this fully before typing commands.

---

First: confirm Secure Boot state

Fedora enables Secure Boot by default on many systems.  
This directly affects NVIDIA kernel modules.

Check Secure Boot state:

COMMANDS:
mokutil --sb-state

If it says:
- SecureBoot enabled → you MUST do MOK key enrollment  
- SecureBoot disabled → you can skip MOK steps, but still read them

Do not assume.  
Always check.

---

Why akmods (note to self)

I use akmods because:
- Fedora kernels update often  
- akmods rebuild automatically  
- Less breakage long-term

I have tried kmods before.  
They always fail eventually.

This setup is intentional.

---

Install NVIDIA drivers (akmods)

Make sure RPM Fusion is already enabled.  
Do not continue if it isn’t.

COMMANDS:
sudo dnf install -y akmod-nvidia xorg-x11-drv-nvidia-cuda

This installs:
- NVIDIA proprietary driver  
- CUDA support  
- akmod build system

The kernel module is NOT active yet.  
That’s expected.

---

Secure Boot: MOK key generation (critical)

If Secure Boot is enabled, the NVIDIA module must be signed.

Generate a Machine Owner Key (MOK):

COMMANDS:
sudo kmodgenca -a

This creates a key pair and registers it for enrollment.

You will be prompted for a password.  
REMEMBER THIS PASSWORD.  
You will need it on the next reboot.

Do not reuse random passwords.  
Use something you can type calmly in firmware UI.

---

Enroll the MOK key

Reboot:

COMMANDS:
sudo reboot

On reboot:
- A blue MOK manager screen appears  
- Choose “Enroll MOK”  
- Choose “Continue”  
- Enter the password you set earlier  
- Confirm enrollment  
- Reboot again when prompted

If this screen does not appear:
- Secure Boot may be disabled  
- Or the key was not registered correctly

Do not panic.  
Re-check steps.

---

Allow akmods to build (patience required)

After reboot, the system may feel slow.  
This is akmods compiling the NVIDIA module.

Give it time.

Optional manual check:

COMMANDS:
sudo akmods --force  
sudo modprobe nvidia

If there are errors, read them carefully.  
Most failures are Secure Boot related.

---

Verify NVIDIA driver is active

COMMANDS:
nvidia-smi

Expected:
- GPU is detected  
- Driver version is shown  
- No error messages

If this works, stop touching things.

---

Common failure scenarios (read before googling)

1. Black screen after install  
   → Boot older kernel  
   → Re-run akmods  
   → Verify Secure Boot state

2. nvidia-smi fails  
   → Module not loaded  
   → Check: lsmod | grep nvidia

3. Driver breaks after kernel update  
   → Reboot  
   → Wait  
   → akmods usually fixes this automatically

---

Personal note to future me

If this took more than 15 minutes:
- You probably skipped a step  
- Or rushed Secure Boot

This setup does work.  
I’ve proven that already.

Go back, read slowly, and trust the process.

---

Next file:
04-shell-zsh-starship.txt
