#!/bin/sh

# Success: It should return a version number (e.g., GSP Firmware Version : 590.xx.xx).

# Fail: If it says N/A, the firmware isn't loading, which usually means the nvidia-open module didn't bind correctly. Ensure `nvidia-utils` and `linux-firmware` packages are installed and up-to-date, also ensure the system is not loading the `nouveau` driver.

nvidia-smi -q | grep -i gsp
