## Astrix (Arman's Strix or maybe just Arch Strix)

```text
                   A
                  /#\
                 /###\
                /#####\
               /#######\
              _ "=######\
             /##=,_\#####\
            /#############\
           /###############\
          /#################\
         /###################\
        /########*"""*########\
       /#######/       \#######\
      /########         ########\
     /#########         ######m=,_
    /##########         ##########\
   /######***             ***######\
  /###**                       **###\
 /**                               **\\
```

### ASUS ROG Strix G614JV | Arch Linux Configurations

## Overview

This repository contains critical system-level configurations to ensure hardware compatibility, stability, and power efficiency for the G614JV. It focuses on:
- Stable NVIDIA driver performance and sleep/resume functionality.
- Power-efficient wireless and audio settings.
- Optimized GNOME Desktop Environment behavior.

## ASUS ROG STRIX G614JV Hardware Specs
- **Model:** ASUS ROG Strix G16 (2023)
- **GPU:** NVIDIA GeForce RTX 4060 (Laptop)
- **Init:** `systemd` / `mkinitcpio`
- **Bootloader:** `systemd-boot`

---

## Repository Structure

### `boot/`
- `loader/entries/arch-g14.conf`: Boot entries with specific kernel parameters for hardware compatibility.
> [!WARNING]
> Don't forget to replace {...} with your actual UUID.

### `etc/modprobe.d/`
- `nvidia.conf`: High-performance NVIDIA settings, including:
    - S0ix Power Management support.
    - Video memory preservation for reliable sleep/resume.
    - Backlight handler enabling.
- `supergfxd.conf`: Integration for `supergfxd` graphics switching.
- `audio_powersave.conf`: Aggressive audio power management.
- `iwlwifi.conf`: Optimized Intel Wi-Fi parameters.
- `bluetooth-fix-deepsleep.conf`: Fixes for Bluetooth connectivity after deep sleep.

### `etc/mkinitcpio.conf`
Configured to early-load NVIDIA modules (`nvidia`, `nvidia_modeset`, `nvidia_uvm`, `nvidia_drm`) and provides a robust set of hooks for LUKS/LVM setups.

### GNOME Configs (optional)
- `gsettings.sh`: A shell script to apply GNOME desktop preferences (Super key window management, titlebar optimizations, etc.).

---

## Installation / Application

> [!WARNING]
> These are system-level configuration files. Back up your existing `/etc/` and `/boot/` configs before applying.

### 1. Modprobe Configs
Copy files to `/etc/modprobe.d/`:
```bash
sudo cp etc/modprobe.d/*.conf /etc/modprobe.d/
```

### 2. Initramfs
After updating `modprobe` and `mkinitcpio.conf`, regenerate your initramfs:
```bash
sudo mkinitcpio -P
```

### 3. GNOME Tweaks (optional)
Apply desktop preferences:
```bash
chmod +x gsettings.sh
./gsettings.sh
```
---
