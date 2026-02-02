# 04 – NVIDIA Drivers

This file exists because NVIDIA on Fedora can either:

- Work perfectly for years
- Or waste an entire evening if rushed

The difference is almost always Secure Boot and akmods.

> [!CAUTION]
> **Read this fully before typing commands.**

## 1. Confirm Secure Boot state

Fedora enables Secure Boot by default on many systems. This directly affects NVIDIA kernel modules.

Check Secure Boot state:

```bash
mokutil --sb-state
```

If it says:

- **SecureBoot enabled** → you MUST do MOK key enrollment
- **SecureBoot disabled** → you can skip MOK steps, but still read them

## 2. Install NVIDIA drivers (akmods)

Make sure RPM Fusion is already enabled. Do not continue if it isn’t.

```bash
sudo dnf install -y akmod-nvidia xorg-x11-drv-nvidia-cuda
```

This installs:

- NVIDIA proprietary driver
- CUDA support
- akmod build system

> [!NOTE]
> The kernel module is **NOT** active yet. That’s expected.

## 3. Secure Boot: MOK key generation (critical)

If Secure Boot is enabled, the NVIDIA module must be signed.

Generate a Machine Owner Key (MOK):

```bash
sudo kmodgenca -a
```

This creates a key pair and registers it for enrollment.

> [!IMPORTANT]
> You will be prompted for a password. **REMEMBER THIS PASSWORD.**
> You will need it on the next reboot. Do not reuse random passwords.

## 4. Enroll the MOK key

Reboot:

```bash
sudo reboot
```

**On reboot:**

1. A blue MOK manager screen appears
2. Choose "Enroll MOK"
3. Choose "Continue"
4. Enter the password you set earlier
5. Confirm enrollment
6. Reboot again when prompted

If this screen does not appear, Secure Boot may be disabled or the key was not registered.

## 5. Allow akmods to build (patience required)

After reboot, the system may feel slow. This is akmods compiling the NVIDIA module.
**Give it time.**

Optional manual check:

```bash
sudo akmods --force
sudo modprobe nvidia
```

## 6. Verify NVIDIA driver is active

```bash
nvidia-smi
```

**Expected:**

- GPU is detected
- Driver version is shown
- No error messages

If this works, stop touching things.

## 7. Common failure scenarios

1. **Black screen after install**
   - Boot older kernel
   - Re-run akmods
   - Verify Secure Boot state

2. **nvidia-smi fails** (Module not loaded)
   - Check: `lsmod | grep nvidia`

3. **Driver breaks after kernel update**
   - Reboot
   - Wait
   - `akmods` usually fixes this automatically

> [!NOTE]
> **Personal note:** If this took more than 15 minutes, you probably skipped a step or rushed Secure Boot.
> This setup does work. Go back, read slowly, and trust the process.

---

**Next file:** `05-shell-zsh-starship.md`
