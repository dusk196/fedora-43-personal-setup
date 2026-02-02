# 08 – Fonts & Terminal Setup

This file exists because broken fonts make a good system feel wrong.
And because I always forget which fonts I actually like.

> [!NOTE]
> This is not about aesthetics. It’s about readability, symbols, and mental comfort.

## 1. Why fonts matter

If the terminal feels "off" (missing icons, weird prompt spacing, misaligned symbols), the problem is almost never the shell config.
**It is almost always fonts.** Always check fonts first.

## 2. Nerd Fonts (required for Starship)

Starship relies on Nerd Font symbols. Without them, the prompt degrades silently.

Install Nerd Fonts:

```bash
sudo dnf install -y nerd-fonts
```

This provides a wide set of patched fonts. No manual downloads needed.

## 3. Preferred fonts

These fonts have consistently worked well for me:

- JetBrainsMono Nerd Font
- FiraCode Nerd Font
- Hack Nerd Font

I don’t need all of them. I just need one that feels right.

## 4. Verify installed fonts

To confirm fonts are installed:

```bash
fc-list | grep -i nerd
```

If nothing appears, something went wrong. Do not continue until this works.

## 5. Terminal configuration (GNOME Terminal)

**Open terminal preferences manually and set:**

- Custom font: enabled
- Font: one Nerd Font (JetBrainsMono preferred)
- Size: whatever feels comfortable
- Disable system monospace if needed

This step is intentionally manual. I want to see what I’m choosing.

## 6. Font rendering sanity check

**After setting the font:**

- Open a new terminal
- Prompt icons should appear
- Spacing should feel even

If it looks wrong, try a different Nerd Font or restart the terminal. **Do not tweak shell configs yet.**

## 7. Optional: system-wide monospace font

If I want consistency everywhere:
Settings → Appearance → Fonts → Set Monospace to the same Nerd Font.

## 8. Checkpoint

If fonts are correct, the system finally feels complete.

---

**Next file:** `09-notes-and-gotchas.md`
