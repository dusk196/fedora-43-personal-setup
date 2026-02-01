06 – Notes & Gotchas

This file exists because experience is expensive.  
Everything here was learned the slow way.

If something breaks and I feel frustrated,  
pause and read this first.

---

SELinux (respect it first)

SELinux is not the enemy.  
It is doing exactly what it was designed to do.

If something fails silently:
- Check logs  
- Check audit messages  
- Understand the denial

Do not disable SELinux as a reflex.  
That always creates worse problems later.

---

Kernel updates and NVIDIA (inevitable)

At some point:
- Fedora will update the kernel  
- NVIDIA will need to rebuild  
- Something will feel broken

This is normal.

What to do:
- Reboot  
- Wait  
- Let akmods do its job

If it still fails:
- Boot an older kernel  
- Rebuild akmods manually  
- Verify Secure Boot state

Panic never helps here.

---

Black screen after update

This has happened before.  
It will probably happen again.

Steps:
- Select older kernel at boot  
- Log in  
- Fix drivers calmly  
- Reboot

Do not reinstall the OS over this.

---

Fonts and terminal weirdness

If symbols look wrong:
- It’s almost always fonts  
- Not Zsh  
- Not Starship

Check terminal font settings first.

---

DNF behaving strangely

If installs or updates feel inconsistent:
- Check network  
- Check mirrors  
- Clear metadata if needed

Rarely:
- Fedora is actually broken

Usually:
- Something external is flaky

---

Backups (note I always ignore)

Before major changes:
- Kernel experiments  
- Driver changes  
- System-wide tweaks

Back up:
- Home directory  
- Configs  
- This repo

Future me will thank present me.  
Present me usually forgets.

---

Final note to future me

You have already made this system work.  
This document is proof of that.

If things feel overwhelming:
- Slow down  
- Read carefully  
- Trust what you already learned

This setup is calm for a reason.

---

End of setup.

If you reached this file,  
you’re home.
