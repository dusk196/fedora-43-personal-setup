Fedora 43 – Personal Setup

This repository documents how I set up my Fedora 43 system, step by step, after a fresh install.

It exists for a simple reason:
I forget details over time, and rediscovering them under pressure is exhausting.

This repo is my single source of truth for:

What I install

Why I install it

What breaks if I rush

How I recover calmly when something goes wrong

It is not a generic Fedora guide.
It is written by me, for future me.

Everything here reflects real decisions, real fixes, and lessons learned the slow way.

How to use this repository

Follow the files in order, starting from a clean Fedora install.
Each file builds on the previous one and assumes nothing was skipped.

Take it slow.
If something feels boring, that’s usually a good sign.


Philosophy

This setup stays intentionally minimal.

Not because I enjoy deprivation,
but because complexity has a cost I’ve already paid too many times.

Every tool here exists for a reason:

It solved a real problem

It stayed useful over time

It didn’t demand constant attention

I avoid clever setups that require:

Frequent tuning

Deep dependency chains

Remembering why something was done a certain way

If a system needs ongoing babysitting, it eventually becomes noise.

This setup prioritizes:

Predictability over novelty

Familiarity over optimization

Calm recovery over clever tricks

When something breaks, I want to understand it—not rediscover it.

That’s why this repo exists.

Final note to future me

If you’re reading this during a reinstall, something already went right:
you stopped guessing and came back here.

Take it slowly.
Follow the files in order.
Don’t improvise unless you’re willing to document why.

This setup has carried you before.
It will do so again.

When everything feels boring and stable,
you’re done.


Appendix: Things I Deliberately Don’t Install

This list exists to prevent impulse installs.

Everything below has been tried before.
Everything below caused more friction than value for my workflow.

If I’m tempted to install any of these again,
pause and remember why they’re not here.

Heavy shell frameworks

Examples:

Oh My Zsh

Large plugin managers

Auto-magic shell layers

Why not:

They hide behavior behind abstractions

Startup time slowly degrades

Debugging becomes guesswork

I prefer knowing exactly what my shell is doing.

If I want a feature, I add it explicitly.

Prompt systems that require constant tuning

Examples:

Powerlevel10k-style mega-prompts

Prompts that require configuration wizards

Why not:

They feel great initially

They age poorly

They demand attention after updates

Starship gives me:

Consistency

Portability

Zero drama

That’s enough.

Multiple version managers by default

Examples:

Node version managers installed “just in case”

Python version managers on the base system

Why not:

They add cognitive overhead

They complicate PATH resolution

They obscure what’s actually running

If I need multiple versions:

I install a manager intentionally

For a specific project

And document it

Not preemptively.

Desktop environments and window manager experiments

Examples:

Switching DEs frequently

Layering tiling WMs on top of GNOME

Why not:

Context switching has a mental cost

Muscle memory matters more than novelty

GNOME is predictable and boring in a good way

I value stability over aesthetic experimentation.

System-wide tweaks I don’t fully understand

Examples:

Random sysctl changes

Performance “boost” scripts

One-liner tweaks from the internet

Why not:

They’re hard to reason about later

They break silently

Undoing them is rarely documented

If I can’t explain a tweak calmly to myself,
it doesn’t belong on my system.

Installing tools without immediate intent

Examples:

“Might need this someday”

“Everyone uses this”

“This looks cool”

Why not:

Tools accumulate mental weight

Unused tools rot

Minimal systems stay understandable

If I don’t need it now,
I probably won’t need it later either.

Final reminder to future me

Restraint is part of the setup.

Every time I don’t install something,
I’m choosing:

Less maintenance

Less noise

More clarity

This system is calm because it is selective.

If I’m bored,
that means it’s working.

Addendum: When to Break These Rules

This setup is intentionally conservative.
That does not mean it is rigid.

Rules exist to protect focus — not to block progress.

It is acceptable to break them only under the following conditions.

Break the rules when there is a clear, immediate need

Examples:

A project requires a specific toolchain

A client mandates a version manager

A workflow genuinely improves with a new tool

The key word is immediate.

If the reason starts with:

“I might need this later”

“Everyone seems to use this”

“I’m just curious”

That’s not a reason. That’s a distraction.

Break the rules when the cost of not breaking them is higher

Sometimes minimalism becomes friction.

If I find myself:

Repeating manual steps daily

Fighting the system instead of using it

Working around a missing tool constantly

Then the system is no longer serving me.

At that point, installing the tool is not indulgence — it’s correction.

Break the rules when I document the decision

This is the most important part.

If I break a rule:

I write down what

I write down why

I write down when to remove it

Undocumented exceptions are how systems rot.

Documented exceptions become part of the system.

Do not break the rules impulsively

Never break rules:

Late at night

When tired or frustrated

After reading a single blog post

That’s when bad decisions feel clever.

If it still feels like a good idea the next day,
it probably is.

Final reminder

This setup is calm because it is intentional.

Breaking the rules is allowed.
Breaking them carelessly is not.



One-Page Reinstall Cheat Sheet

This is the compressed version of the entire repository.
Use it when you already trust the process and just need momentum.

Do not use this if you’re tired or unsure — use the full files instead.

1. Base system

Fresh Fedora install

Update immediately

Reboot

2. RPM Fusion

Enable Free + Non-Free

Refresh DNF metadata

3. Multimedia codecs

Install multimedia groups

Install ffmpeg + GStreamer extras

Reboot

Test media playback

4. NVIDIA drivers

Check Secure Boot state

Install akmod-nvidia + CUDA

Generate MOK key if needed

Enroll MOK on reboot

Wait for akmods

Verify with nvidia-smi

Do not rush this step.

5. Shell & prompt

Install Zsh

Set as default shell

Copy .zshrc

Install Starship

Copy starship.toml

Verify prompt loads cleanly

6. Fonts

Install Nerd Fonts

Set terminal font manually

Verify icons render correctly

If something looks wrong, stop here and fix fonts.

7. Dev & CLI sanity

Git defaults set

Tools feel familiar

No obvious friction

8. Final check

If the system feels:

Boring

Predictable

Quiet

You’re done.

Last line (read this)

If you followed the cheat sheet and something feels off,
go back to the full files.

Speed is earned.
Clarity comes first.
