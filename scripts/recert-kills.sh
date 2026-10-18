#!/bin/sh
# Re-certify discovered ratchet kills at 4x budgets and recheck the direct
# BB proofs and their lambda closures —
# the mechanical spine of the new-kill protocol (AGENTS.md): `cert search`
# must reproduce the kill lines byte-identically (order-insensitive;
# discovery streams unordered), then `cert lean` regenerates lean/Certs/
# and lake kernel-checks all of them. What stays manual: appending
# newly discovered kills to data/certificates/ratchet_kills.tsv, the frontier trim
# (scripts/census-regen.sh --frontier-only), the exact-fraction
# Omega trim (scripts/omega-regen.sh --reuse-leaves), and the ledger entry.
set -e
cd "$(dirname "$0")/.."
# `cert search` drives untrusted discovery, which lives behind the `lab`
# feature; `cert lean` uses only the trusted checkers.
cargo build --release --features lab --bin blam
T=$(mktemp -d)
trap 'rm -rf "$T"' EXIT
cut -f2 data/certificates/ratchet_kills.tsv > "$T/bits.txt"
target/release/blam cert search --steps 4000 --nodes 400000 --file "$T/bits.txt" \
    > "$T/out.txt"
grep -v '^none' "$T/out.txt" | sort > "$T/got.txt"
sort data/certificates/ratchet_kills.tsv > "$T/want.txt"
diff "$T/want.txt" "$T/got.txt"
N=$(wc -l < "$T/want.txt")
echo "recert: all $N kills reproduced byte-identically at 4x budgets"
target/release/blam cert lean
python3 tools/certificates/bb.py
(cd lean && lake build Certs BusyBeaver)
echo "recert OK: both certificate ledgers regenerated and kernel-checked"
