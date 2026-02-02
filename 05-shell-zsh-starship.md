04 – Shell: Zsh & Starship

This file exists because the shell is where I actually live.  
If this part feels wrong, the whole system feels wrong.

The goal here is:
- A fast shell  
- Predictable behavior  
- A prompt that gives information without noise

Nothing flashy.  
Nothing fragile.

---

Install Zsh

Fedora ships with Bash by default.  
That’s fine, but I prefer Zsh for daily work.

COMMANDS:
sudo dnf install -y zsh

Make Zsh the default shell:

COMMANDS:
chsh -s $(which zsh)

This change requires a logout or reboot.

---

First Zsh login

On first Zsh login, Fedora may show a configuration prompt.  
Choose the minimal/default option.

I manage everything manually via .zshrc.  
Auto-generated configs usually get deleted later anyway.

---

Zsh configuration (.zshrc)

My .zshrc is part of this repository for a reason.  
It contains:
- Aliases I rely on  
- Environment variables  
- Starship initialization  
- Small quality-of-life tweaks

Copy it directly:

COMMANDS:
cp .zshrc ~/

If something behaves unexpectedly later,  
this file is the first place to check.

---

Install Starship prompt

I use Starship because:
- It’s fast  
- It’s consistent across systems  
- It doesn’t fight the shell

Install Starship:

COMMANDS:
sudo dnf install -y starship

Create config directory:

COMMANDS:
mkdir -p ~/.config

Copy Starship configuration:

COMMANDS:
cp starship.toml ~/.config/starship.toml

---

Initialize Starship in Zsh

This should already exist in .zshrc.

Expected line:

eval "$(starship init zsh)"

If the prompt doesn’t appear:
- Check this line exists  
- Restart the terminal  
- Do not overthink it

---

Fonts (important, easy to forget)

If the prompt looks broken:
- Missing icons  
- Misaligned symbols  
- Weird spacing

It is almost always a font issue.

Make sure a Nerd Font is installed and selected in the terminal.  
This is not Starship’s fault.

---

Personal note to future me

I have experimented with:
- Oh My Zsh  
- Powerlevel10k  
- Heavy plugin setups

I always come back to this:
- Simple  
- Fast  
- Transparent

If I’m tempted to “improve” this:  
Ask first: what problem am I actually solving?

---

Relog checkpoint

COMMANDS:
exec zsh

Confirm:
- Zsh is active  
- Prompt loads instantly  
- No errors on shell startup

If this feels calm and boring,  
it’s perfect.

---

Next file:
05-cli-and-dev-tools.txt
