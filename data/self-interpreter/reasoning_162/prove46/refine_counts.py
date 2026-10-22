#!/usr/bin/env python3
"""Apply a proved arithmetic filter to the supplied count inventory.

No terms, ASTs, candidate programs, or reductions are generated.
Every write is beside this file.
"""
import hashlib
import json
import re
from collections import Counter, defaultdict
from pathlib import Path

HERE = Path(__file__).resolve().parent
SOURCE = HERE.parent / "floor" / "STATE46-counts.md"
raw = SOURCE.read_text()
rows = []
group = None
for line in raw.splitlines():
    head = re.fullmatch(r"## d=(\d), root=(lambda|application), f=(\d+): (\d+) count rows", line)
    if head:
        group = (int(head[1]), head[2], int(head[3]))
        continue
    row = re.fullmatch(r"\| (\d+) \| (\d+) \| (\d+)(?:\.\.(\d+))? \| [\d.]+ \|", line)
    if not row:
        continue
    assert group is not None
    d, root, f = group
    L, V, lo = map(int, row.group(1, 2, 3))
    hi = int(row[4]) if row[4] else lo
    for X in range(lo, hi + 1):
        w = 2 * L + 4 * V - 4 + X + 4 * d
        assert 30 <= w <= 45
        reasons = []
        bounds = None
        if root == "application" and V == f + 5:
            # For j outside A, D <= min(X,L-1) and F_A <= f.
            # For j in A, A contains d lambdas, D <= min(X,L-1-d),
            # and F_A <= f+4. The combined contraction/hoist bound is
            # f*(D+1)-3*d. Every statement is proved in REPORT.md;
            # this script only applies the integer inequalities.
            assert L >= d + 1
            outside = (f - 1) * min(X, L - 1) - 6
            inside = (f + 3) * min(X, L - 1 - d) - 6
            hoisted = f * (min(X, L - 1 - d) + 1) - 3 * d
            bounds = dict(outside=outside, inside=inside, hoisted=hoisted)
            if outside <= 0 and inside <= 0:
                reasons.append("linear contraction")
            if outside <= 0 and d > 0 and hoisted <= 0:
                reasons.append("linear contraction then hole hoist")
            if L == 3 and w + max(outside, inside) < 50:
                reasons.append("two-lambda reduct below its 50 floor")
        rows.append(dict(d=d, root=root, f=f, L=L, V=V, X=X, w=w,
                         delta_bounds=bounds, reasons=reasons))

removed = [r for r in rows if r["reasons"]]
kept = [r for r in rows if not r["reasons"]]
counts = Counter((r["d"], r["root"], r["f"]) for r in removed)
assert len(rows) == 1098, len(rows)
assert len(removed) == 151, len(removed)
assert not any(r["d"] == 2 and r["root"] == "application" and r["f"] == 3 for r in kept)
assert not any(r["d"] == 2 and r["root"] == "application" and r["V"] == r["f"]+5 for r in kept)
assert not any(r["d"] == 1 and r["root"] == "application" and r["L"] == 3 and r["V"] == r["f"]+5 for r in kept)

result = dict(
    source=str(SOURCE), source_sha256=hashlib.sha256(raw.encode()).hexdigest(),
    original_rows=len(rows), removed_rows=len(removed), remaining_rows=len(kept),
    removed=removed, remaining=kept,
)
(HERE / "count-refinement.json").write_text(json.dumps(result, indent=2) + "\n")

out = [
    "# Count refinement after the minimum-leaf contraction lemma", "",
    "These are arithmetic count rows, never a term inventory. The source",
    "minimality argument and its evidence boundary are in REPORT.md.", "",
    "Minimize weight, then source lambdas, then hole depth. The last choice",
    "justifies equality in the contraction-followed-by-hoist cases.", "",
    f"Input: {len(rows)} rows. Removed: {len(removed)}. Remaining: {len(kept)}.", "",
    "| Depth | Root | c leaves | Removed rows |", "|---:|---|---:|---:|",
]
for (d, root, f), number in sorted(counts.items()):
    out.append(f"| {d} | {root} | {f} | {number} |")
out += ["", "## Remaining rows", ""]
grouped = defaultdict(list)
for r in kept:
    grouped[(r["d"], r["root"], r["f"], r["L"], r["V"])].append(r["X"])
prev = None
for key, xs in sorted(grouped.items()):
    d, root, f, L, V = key
    if (d, root, f) != prev:
        out += ["", f"### d={d}, root={root}, f={f}", "", "| L | V | X |", "|---:|---:|---|"]
        prev = d, root, f
    spans = []
    start = last = xs[0]
    for x in xs[1:]:
        if x == last + 1:
            last = x
        else:
            spans.append(str(start) if start == last else f"{start}..{last}")
            start = last = x
    spans.append(str(start) if start == last else f"{start}..{last}")
    out.append(f"| {L} | {V} | {', '.join(spans)} |")
(HERE / "COUNTS.md").write_text("\n".join(out) + "\n")
print(json.dumps({k: result[k] for k in ("original_rows", "removed_rows", "remaining_rows")}, sort_keys=True))
print(json.dumps({f"d={d},{root},f={f}": v for (d, root, f), v in sorted(counts.items())}, sort_keys=True))
