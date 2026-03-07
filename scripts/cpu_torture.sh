#!/bin/sh

# --cpu 0: 0 doesn't mean "zero CPUs." It means "all available CPU cores.". It will start all separate processes to max out every single core to 100%.

# --timeout 60s: This ensures the test automatically stops after 60 seconds. This is a safety feature—if your CPU starts overheating, the test won't run forever and potentially damage your hardware.

# It is also useful to monitor the temperatures alongside while the CPU stress is happening:
# `$ watch -n 1 sensors`

stress-ng --cpu 0 --timeout 60s
