#!/bin/sh
# scripts/gen-apk-index.sh
set -e
PKGDIR="$(dirname "$0")/../repo/packages"
cd "$PKGDIR"
# erzeugt packages.adb (apk-tools benötigt)
apk index -o packages.adb *.apk
# optional: signieren (wenn Schlüssel vorhanden)
# apk sign --key /path/to/key packages.adb
echo "Index erzeugt: $PKGDIR/packages.adb"
