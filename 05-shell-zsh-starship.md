# 05 – Shell: Zsh & Starship

This file exists because the shell is where I actually live.
If this part feels wrong, the whole system feels wrong.

The goal here is:

- A fast shell
- Predictable behavior
- A prompt that gives information without noise

> [!NOTE]
> Nothing flashy. Nothing fragile.

## 1. Install Zsh

Fedora ships with Bash by default. That’s fine, but I prefer Zsh for daily work.

```bash
sudo dnf install -y zsh
```

Make Zsh the default shell:

```bash
chsh -s $(which zsh)
```

**Note:** This change requires a logout or reboot.

## 2. First Zsh login

On first Zsh login, Fedora may show a configuration prompt.
**Choose the minimal/default option.**

I manage everything manually via `.zshrc`. Auto-generated configs usually get deleted later anyway.

## 3. Zsh configuration (.zshrc)

My `.zshrc` is part of this repository for a reason. Copy it directly:

```bash
cp assets/.zshrc ~/
```

**It contains:**

- Aliases I rely on
- Environment variables
- Starship initialization
- Small quality-of-life tweaks

## 4. Install Starship prompt

I use Starship because it’s fast, consistent, and doesn't fight the shell.

Install Starship:

```bash
sudo dnf install -y starship
```

Create config directory and copy configuration:

```bash
mkdir -p ~/.config
cp assets/starship.toml ~/.config/starship.toml
```

## 5. Initialize Starship in Zsh

This should already exist in `.zshrc`.

Expected line:

```bash
eval "$(starship init zsh)"
```

If the prompt doesn’t appear, check this line exists and restart the terminal.

## 6. Fonts (important)

If the prompt looks broken (missing icons, weird spacing), **it is almost always a font issue.**

Make sure a Nerd Font is installed and selected in the terminal.

## 7. Relog checkpoint

```bash
exec zsh
```

**Confirm:**

- Zsh is active
- Prompt loads instantly
- No errors on shell startup

If this feels calm and boring, it’s perfect.

---

**Next file:** `06-cli-and-dev-tools.md`
