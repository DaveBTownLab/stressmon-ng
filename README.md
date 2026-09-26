# stressmon-ng

A lightweight Linux utility for CPU stress testing and thermal throttling analysis.

`stressmon-ng` combines **stress-ng** with a live monitoring interface. While the CPU is under full load, it continuously displays temperature, clock frequency and CPU usage, while recording the **highest temperature** and the **lowest frequency under load** to help identify thermal throttling.

---

## Features

- 🔥 Start a CPU stress test with `stress-ng`
- 📈 Live CPU usage
- 🌡️ Live CPU temperature
- ⚡ Live CPU frequency
- 🥶 Records the lowest frequency under full load
- 🌡️ Records the highest temperature reached
- ⏱ Live progress indicator
- ✅ Freezes recorded values after the stress test finishes
- 🖥 Opens separate Konsole windows for stress test and monitor

---

## Requirements

The following packages are required:

- bash
- stress-ng
- lm_sensors
- konsole

---

# Project Structure

```
stressmon-ng/
├── LICENSE
├── PKGBUILD
├── README.md
├── stressmon-ng
└── scripts/
    ├── stresscpu
    └── stressmon
```

---

# Running from the Git Repository

Clone the repository:

```bash
git clone https://github.com/DaveBTownLab/stressmon-ng.git
cd stressmon-ng
```

Start a 60 second stress test:

```bash
./stressmon-ng
```

Start a custom duration:

```bash
./stressmon-ng 180
```

Example:

```bash
./stressmon-ng 300
```

Runs a 5 minute CPU stress test.

---

# Installation (Arch Linux)

Build and install using makepkg:

```bash
makepkg -si
```

After installation the tool is available system-wide:

```bash
stressmon-ng
```

or

```bash
stressmon-ng 180
```

No need to execute it from the project directory anymore.

---

# Example Output

```
==================================================
Stress Monitor
==================================================

CPU:      AMD Ryzen 5 5600G
Usage:    100%
Freq:     4.20 GHz      Min: 3.98 GHz @ 81s
Temp:     +74.5°C       Max: 74.5°C @ 96s

Status:   Running (96/180s)

Ctrl+C to quit.
```

After the stress test:

```
Status:   Complete

Freq:     4.20 GHz      Min: 3.98 GHz @ 81s
Temp:     +39.0°C       Max: 74.5°C @ 96s
```

The minimum frequency and maximum temperature remain visible after the test has finished, making it easy to determine whether thermal throttling occurred.

---

# Typical Workflow

Test for 3 minutes:

```bash
stressmon-ng 180
```

Observe:

- Maximum temperature
- Lowest CPU frequency
- Time when both occurred

If the CPU reaches a high temperature **without reducing clock speed**, no thermal throttling occurred.

---

# Future Ideas

- Thermal throttling detection
- Colored warnings
- CSV export
- Log file support
- Support for additional terminal emulators

---

# License

MIT License

Copyright (c) 2026 DaveBTownLab