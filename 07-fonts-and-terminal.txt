07 – Fonts & Terminal Setup

This file exists because broken fonts make a good system feel wrong.  
And because I always forget which fonts I actually like.

This is not about aesthetics.  
It’s about readability, symbols, and mental comfort.

---

Why fonts matter (note to self)

If the terminal feels “off”:
- Icons don’t render  
- Prompt spacing looks weird  
- Symbols look misaligned

The problem is almost never:
- Zsh  
- Starship  
- Shell config

It is fonts.

Always check fonts first.

---

Nerd Fonts (required for Starship)

Starship relies on Nerd Font symbols.  
Without them, the prompt degrades silently.

Install Nerd Fonts:

COMMANDS:
sudo dnf install -y nerd-fonts

This provides a wide set of patched fonts.  
No manual downloads needed.

---

Preferred fonts (what usually works best)

These fonts have consistently worked well for me:

- JetBrainsMono Nerd Font  
- FiraCode Nerd Font  
- Hack Nerd Font  

I don’t need all of them.  
I just need one that feels right.

---

Verify installed fonts

To confirm fonts are installed:

COMMANDS:
fc-list | grep -i nerd

If nothing appears, something went wrong.  
Do not continue until this works.

---

Terminal configuration (GNOME Terminal)

Open terminal preferences manually.

Set:
- Custom font: enabled  
- Font: one Nerd Font (JetBrainsMono preferred)  
- Size: whatever feels comfortable  
- Disable system monospace if needed

This step is intentionally manual.  
I want to see what I’m choosing.

---

Font rendering sanity check

After setting the font:
- Open a new terminal  
- Prompt icons should appear  
- Spacing should feel even

If it looks wrong:
- Try a different Nerd Font  
- Restart terminal  
- Do not tweak shell configs yet

---

Personal note to future me

I’ve wasted hours debugging:
- Prompts  
- Icons  
- Alignment

It was fonts.  
It was always fonts.

If something looks ugly or broken,  
start here.

---

Optional: system-wide monospace font

If I want consistency everywhere:

Settings → Appearance → Fonts  
Set Monospace to the same Nerd Font.

Optional, not required.  
Do this only if it feels right.

---

End of bonus file.

If fonts are correct,  
the system finally feels complete.
