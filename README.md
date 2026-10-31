# stressmon-ng

A lightweight Linux utility for CPU stress testing and thermal throttling analysis.

`stressmon-ng` combines **stress-ng** with a live monitoring interface. While the CPU is under full load, it continuously displays temperature, clock frequency and CPU usage, while recording the **highest temperature** and the **lowest frequency under load** to help identify thermal throttling.

---

## Features

- 🔥 Starts a CPU stress test using `stress-ng`
- 📈 Live CPU usage
- 🌡️ Live CPU temperature
- ⚡ Live CPU frequency
- 🥶 Records the lowest CPU frequency under full load
- 🌡️ Records the highest CPU temperature reached
- ⏱ Live progress indicator
- ✅ Keeps recorded values visible after the stress test has finished
- 🖥 Automatically detects and uses the available terminal emulator
- 🧹 Automatically stops the stress test when the monitor is closed

---

## Requirements

The following packages are required:

- bash
- stress-ng
- lm_sensors
- One of the following terminal emulators:
  - Konsole
  - XFCE Terminal
  - GNOME Terminal
  - xterm

---

## Project Structure

```text
stressmon-ng/
├── LICENSE
├── README.md
├── install.sh
├── stressmon-ng
└── scripts/
    ├── stresscpu
    └── stressmon
```

---

## Installation

Clone the repository:

```bash
git clone https://github.com/DaveBTownLab/stressmon-ng.git
cd stressmon-ng
```

Install the project:

```bash
sudo ./install.sh
```

The installer copies the launcher and helper scripts to `/usr/bin`, making `stressmon-ng` available system-wide.

---

## Running

Start a 60 second stress test:

```bash
stressmon-ng
```

Start a custom duration:

```bash
stressmon-ng 180
```

Example:

```bash
stressmon-ng 300
```

Runs a 5 minute CPU stress test.

The CPU stress test runs in the background while a single monitoring window is opened automatically.

Closing the monitor also terminates the running stress test.

---

## Example Output

```text
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

```text
Status:   Complete

Freq:     4.20 GHz      Min: 3.98 GHz @ 81s
Temp:     +39.0°C       Max: 74.5°C @ 96s
```

The minimum frequency and maximum temperature remain visible after the stress test has finished, making it easy to determine whether thermal throttling occurred.

---

## Typical Workflow

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

## Future Ideas

- Thermal throttling detection
- Colored warnings
- CSV export
- Log file support
- Support for additional terminal emulators (kitty, Alacritty, WezTerm, etc.)

---

## License

MIT License

Copyright (c) 2026 DaveBTownLab