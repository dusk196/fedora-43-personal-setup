# 06 – CLI & Development Tools

This file documents the tools I reach for without thinking.
If any of these are missing, I notice immediately.

The goal here is not to install everything under the sun, but to restore muscle memory.

## 1. Git configuration (do this once)

Git is always there. Even when I think I won’t need it.

Set sane global defaults:

```bash
git config --global init.defaultBranch main
git config --global pull.rebase false
```

Optional but useful:

```bash
git config --global fetch.prune true
```

## 2. CLI utilities I rely on

These are tools I end up using even when I try not to (better file listing, cleaner output, faster searching).

**Note:** If they’re already in `assets/user-packages.txt`, they’ll be installed already. If something feels missing later, check that list first.

## 3. Node / JavaScript tooling

If Node.js is installed on this system, it was done intentionally for real work.

**I prefer:**

- System packages when possible
- Fewer moving parts
- Less version juggling

> [!NOTE]
> If future me needs multiple Node versions, use a version manager, document the reason here, and don’t silently change this setup.

## 4. Containers and virtualization

If Podman or Docker is present, it’s because I needed containers, not because it was "nice to have".

**If something breaks:**

- Check permissions
- Check groups
- Check services before reinstalling anything

## 5. Python and scripting

Fedora’s system Python is not a playground. Use it respectfully.

**For projects:**

- Use virtual environments
- Do not pollute system Python
- Do not fight the package manager

> [!CAUTION]
> If I break Python, I break Fedora.

## 6. Personal note to future me

Tooling comfort comes from familiar commands, predictable behavior, and fewer clever tricks.
If I’m spending hours customizing tools, I’m probably avoiding real work.

## 7. Checkpoint

**At this point:**

- Shell feels familiar
- Commands behave as expected
- Development doesn’t feel blocked

If that’s true, the setup is essentially complete.

---

**Next file:** `07-package-list.md`
