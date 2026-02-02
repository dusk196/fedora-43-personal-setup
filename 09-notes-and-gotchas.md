# 09 – Notes & Gotchas

This file exists because experience is expensive.
Everything here was learned the slow way.

> [!TIP]
> If something breaks and I feel frustrated, pause and read this first.

## 1. SELinux (respect it first)

**SELinux is not the enemy.** It is doing exactly what it was designed to do.

If something fails silently:

- Check logs
- Check audit messages
- Understand the denial

> [!WARNING]
> Do not disable SELinux as a reflex. That always creates worse problems later.

## 2. Kernel updates and NVIDIA (inevitable)

At some point Fedora will update the kernel, NVIDIA will need to rebuild, and something will feel broken.
**This is normal.**

**What to do:**

1. Reboot
2. Wait
3. Let akmods do its job

**If it still fails:**

- Boot an older kernel
- Rebuild akmods manually
- Verify Secure Boot state

Panic never helps here.

## 3. Black screen after update

This has happened before. It will probably happen again.

**Steps:**

1. Select older kernel at boot
2. Log in
3. Fix drivers calmly
4. Reboot

**Do not reinstall the OS over this.**

## 4. Fonts and terminal weirdness

If symbols look wrong, it’s almost always fonts—not Zsh, not Starship.
**Check terminal font settings first.**

## 5. DNF behaving strangely

If installs or updates feel inconsistent:

- Check network
- Check mirrors
- Clear metadata if needed

Usually, something external is flaky. Rarely is Fedora actually broken.

## 6. Backups

Before major changes (kernel experiments, driver changes, system-wide tweaks), back up:

- Home directory
- Configs
- This repo

**Future me will thank present me.** Present me usually forgets.

## 7. Final note to future me

You have already made this system work. This document is proof of that.

If things feel overwhelming:

1. Slow down
2. Read carefully
3. Trust what you already learned

This setup is calm for a reason.

---

**End of setup.**
If you reached this file, you’re home.
