#!/bin/sh
# Kernel-check the 46-bit self-interpreter floor,
# Blc.SelfintSingleObject.selfintSizeBound_46
# (docs/classical/self-interpreter/global-floor.md).
#
# The proof's per-size assemblies (lean/Blc/SelfintKernelFloor38..46.lean,
# with SelfintCover43 and SelfintSize45Cover, which import them) and their
# 9,577 generated row modules ship packed in
# data/self-interpreter/global-floor.tar.xz, outside `lake build Blc`; every
# other module they import is in the tree and in `lake build Blc`. This script
# unpacks them into lean/Blc/ (the paths are gitignored), builds
# Blc.SelfintKernelFloor46, and checks that the theorem depends on no axiom
# beyond propext, Classical.choice and Quot.sound.
#
#   scripts/global-floor.sh          unpack, build, check axioms
#   scripts/global-floor.sh clean    remove the unpacked modules
#
# A cold build is many CPU-hours (excluding size 45 alone took 454
# CPU-minutes), and single modules need up to about 2.7 GB; with a warm
# lean/.lake it is quick.
set -e
cd "$(dirname "$0")/.."
ARCHIVE=data/self-interpreter/global-floor.tar.xz

if [ "${1:-}" = clean ]; then
    tar -tJf "$ARCHIVE" | grep '\.lean$' | while read -r f; do rm -f "$f"; done
    find lean/Blc -type d -empty -delete
    echo "global-floor: unpacked modules removed"
    exit 0
fi

tar -xJf "$ARCHIVE"
echo "global-floor: unpacked $(tar -tJf "$ARCHIVE" | grep -c '\.lean$') modules"
cd lean
lake build Blc.SelfintKernelFloor46
T=$(mktemp -d)
trap 'rm -rf "$T"' EXIT
cat > "$T/Axioms.lean" <<'EOF'
import Blc.SelfintKernelFloor46
#print axioms Blc.SelfintSingleObject.selfintSizeBound_46
EOF
lake env lean "$T/Axioms.lean" > "$T/axioms.txt"
cat "$T/axioms.txt"
# The one line `... depends on axioms: [a, b, c]` must list only these three.
python3 - "$T/axioms.txt" <<'EOF'
import re, sys
text = open(sys.argv[1]).read()
m = re.search(r"depends on axioms: \[([^\]]*)\]", text)
assert m, "no axiom report"
used = {a.strip() for a in m.group(1).split(",") if a.strip()}
extra = used - {"propext", "Classical.choice", "Quot.sound"}
assert not extra, f"unexpected axioms: {sorted(extra)}"
EOF
echo "global-floor OK: selfintSizeBound_46 kernel-checked, standard axioms only"
