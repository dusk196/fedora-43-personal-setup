# 03 – Multimedia Codecs

This file exists because Fedora is intentionally conservative.
That’s fine philosophically, but inconvenient practically.

If audio, video, screen recording, or hardware acceleration behaves oddly, this is usually the missing piece.

> [!NOTE]
> **Why this step matters:**
> I always notice missing codecs indirectly (videos don't play, browser CPU usage spikes).
> When that happens, I end up here anyway. So do it properly upfront.

## 1. Enable full multimedia support (RPM Fusion)

Install the standard codec groups:

```bash
sudo dnf groupupdate -y multimedia --setop="install_weak_deps=False" --exclude=PackageKit-gstreamer-plugin
sudo dnf groupupdate -y sound-and-video
```

This covers:

- GStreamer plugins
- Common audio/video formats
- Practical desktop media support

## 2. Additional codecs I always end up needing

```bash
sudo dnf install -y gstreamer1-plugins-bad-freeworld gstreamer1-plugins-ugly gstreamer1-libav ffmpeg ffmpeg-libs
```

**Why explicitly install these?**
Because at some point a video editor, browser, or random file will need them, and I don’t want to debug that later.

## 3. Hardware acceleration expectations

With proper codecs installed:

- Video playback should be smooth
- CPU usage should stay reasonable
- Laptop fans should not scream during playback

If that doesn’t happen, check drivers (VA-API / NVDEC), not just codecs.

> [!TIP]
> **Legal / philosophical note:**
> Fedora doesn’t ship these by default for legal reasons. I am knowingly opting into practical usability to avoid lost time.

## 4. Reboot checkpoint

```bash
sudo reboot
```

After reboot:

- Test video playback
- Test audio
- Test browser media

If media works normally, this step is complete.

---

**Next file:** `04-nvidia-drivers.md`
