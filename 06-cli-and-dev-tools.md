05 – CLI & Development Tools

This file documents the tools I reach for without thinking.  
If any of these are missing, I notice immediately.

The goal here is not to install everything under the sun,  
but to restore muscle memory.

---

Git configuration (do this once)

Git is always there.  
Even when I think I won’t need it.

Set sane global defaults:

COMMANDS:
git config --global init.defaultBranch main  
git config --global pull.rebase false

Optional but useful:

COMMANDS:
git config --global fetch.prune true

---

CLI utilities I rely on

These are tools I end up using even when I try not to.

Examples:
- Better file listing  
- Cleaner output  
- Faster searching

If they’re already in user-packages.txt, they’ll be installed already.  
If something feels missing later, check that list first.

This file assumes:
- The tools exist  
- I know how to use them  
- I don’t need to re-learn flags during a reinstall

---

Node / JavaScript tooling

If Node.js is installed on this system,  
it was done intentionally for real work.

I prefer:
- System packages when possible  
- Fewer moving parts  
- Less version juggling

If future me needs multiple Node versions:
- Use a version manager  
- Document the reason here  
- Don’t silently change this setup

---

Containers and virtualization

If Podman or Docker is present:
- It’s because I needed containers  
- Not because it was “nice to have”

If something breaks:
- Check permissions  
- Check groups  
- Check services before reinstalling anything

---

Python and scripting

Fedora’s system Python is not a playground.  
Use it respectfully.

For projects:
- Use virtual environments  
- Do not pollute system Python  
- Do not fight the package manager

If I break Python, I break Fedora.

---

Personal note to future me

Tooling comfort comes from:
- Familiar commands  
- Predictable behavior  
- Fewer clever tricks

If I’m spending hours customizing tools,  
I’m probably avoiding real work.

---

Checkpoint

At this point:
- Shell feels familiar  
- Commands behave as expected  
- Development doesn’t feel blocked

If that’s true, the setup is essentially complete.

---

Next file:
06-notes-and-gotchas.txt
