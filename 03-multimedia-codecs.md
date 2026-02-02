02.5 – Multimedia Codecs

This file exists because Fedora is intentionally conservative.  
That’s fine philosophically, but inconvenient practically.

If audio, video, screen recording, or hardware acceleration behaves oddly,  
this is usually the missing piece.

---

Why this step matters (note to self)

I always notice missing codecs indirectly:
- A video doesn’t play  
- Audio format fails silently  
- Screen recording exports weird files  
- Browser video eats CPU instead of GPU

When that happens, I end up here anyway.  
So do it properly upfront.

---

Enable full multimedia support (RPM Fusion)

Install the standard codec groups:

COMMANDS:
sudo dnf groupupdate -y multimedia --setop="install_weak_deps=False" --exclude=PackageKit-gstreamer-plugin  
sudo dnf groupupdate -y sound-and-video

This covers:
- GStreamer plugins  
- Common audio formats  
- Common video formats  
- Practical desktop media support

---

Additional codecs I always end up needing

COMMANDS:
sudo dnf install -y   gstreamer1-plugins-bad-freeworld   gstreamer1-plugins-ugly   gstreamer1-libav   ffmpeg   ffmpeg-libs

Why explicitly install these?

Because at some point:
- A video editor  
- A browser  
- A media player  
- Or a random file

…will need them, and I don’t want to debug that later.

---

Hardware acceleration expectations

With proper codecs installed:
- Video playback should be smooth  
- CPU usage should stay reasonable  
- Laptop fans should not scream during playback

If that doesn’t happen:
- Check drivers  
- Check VA-API / NVDEC  
- Do not immediately blame codecs

---

Legal / philosophical note (for future me)

Fedora doesn’t ship these by default for legal reasons.  
That’s fine.

I am knowingly opting into:
- Practical usability  
- Fewer surprises  
- Less time lost

This is intentional.

---

Reboot checkpoint

COMMANDS:
sudo reboot

After reboot:
- Test video playback  
- Test audio  
- Test browser media

If media works normally, this step is complete.

---

Next file:
03-nvidia-drivers.txt
