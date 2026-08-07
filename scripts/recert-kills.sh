#!/bin/sh
# Re-certify every kill in data/certificates/ratchet_kills.tsv at 4x budgets —
# the mechanical spine of the new-kill protocol (AGENTS.md): certsearch
# must reproduce the kill lines byte-identically (order-insensitive;
# discovery streams unordered), then certlean regenerates lean/Certs/
# and lake kernel-checks all of them. What stays manual: appending
# newly discovered kills to data/certificates/ratchet_kills.tsv, the frontier trim
# (scripts/census-regen.sh or a direct subtraction), the exact-fraction
# Omega trim, and the ledger entry.
set -e
cd "$(dirname "$0")/.."
# certsearch drives untrusted discovery, which lives behind the `lab`
# feature; certlean uses only the trusted checkers.
cargo build --release --features lab --bin certsearch --bin certlean
T=$(mktemp -d)
trap 'rm -rf "$T"' EXIT
cut -f2 data/certificates/ratchet_kills.tsv > "$T/bits.txt"
target/release/certsearch --steps 4000 --nodes 400000 --terms-file "$T/bits.txt" \
    > "$T/out.txt"
grep -v '^none' "$T/out.txt" | sort > "$T/got.txt"
sort data/certificates/ratchet_kills.tsv > "$T/want.txt"
diff "$T/want.txt" "$T/got.txt"
N=$(wc -l < "$T/want.txt")
echo "recert: all $N kills reproduced byte-identically at 4x budgets"
target/release/certlean
(cd lean && lake build Certs)
echo "recert OK: lean/Certs regenerated and kernel-checked"
