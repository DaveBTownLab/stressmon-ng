#!/bin/bash
set -e

SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"

install -Dm755 "$SCRIPT_DIR/stressmon-ng" "/usr/bin/stressmon-ng"
install -Dm755 "$SCRIPT_DIR/scripts/stresscpu" "/usr/bin/stresscpu"
install -Dm755 "$SCRIPT_DIR/scripts/stressmon" "/usr/bin/stressmon"
install -Dm644 "$SCRIPT_DIR/README.md" "/usr/share/doc/stressmon-ng/README.md"
install -Dm644 "$SCRIPT_DIR/LICENSE" "/usr/share/licences/stressmon-ng/LICENSE"

echo "Stressmon-ng installed."