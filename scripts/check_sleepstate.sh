#!/bin/sh

# [s2idle] (Software Idle): A lightweight "freeze." The CPU stays powered on in a low-power state. It wakes up instantly, but it drains battery much faster.

# [deep] (Suspend-to-RAM / S3): The traditional sleep mode. The CPU powers off, and only the RAM stays powered. This saves much more battery but takes a second longer to wake up.

cat /sys/power/mem_sleep
