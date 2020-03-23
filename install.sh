#!/bin/sh

INSTALL_DIR="/opt/lenovo_fix"

mkdir -p "$INSTALL_DIR" >/dev/null 2>&1
set -e

cd "$(dirname "$0")"

echo "Building virtualenv..."
cp -n requirements.txt lenovo_fix.py mmio.py "$INSTALL_DIR"
cd "$INSTALL_DIR"
/usr/bin/python3 -m venv venv
. venv/bin/activate
pip install -r requirements.txt

echo "All done."
