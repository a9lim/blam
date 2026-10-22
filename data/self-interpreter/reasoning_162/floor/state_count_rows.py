"""Arithmetic inventory only: no lambda terms are generated or evaluated."""
from collections import defaultdict
from pathlib import Path

HERE = Path(__file__).resolve().parent
groups = defaultdict(list)
for d in range(3):
    for root in ("lambda", "application"):
        if d == 0 and root == "lambda":
            continue
        for f in range(1, 7):
            for L in range(3, 23):
                vmin = f + (4 if root == "lambda" else 5)
                if d == 0 and L == 3:
                    vmin = f + 6
                for V in range(vmin, 13):
                    kept = []
                    for X in range(f if root == "lambda" else 0, 46):
                        w = 2 * L + 4 * V - 4 + X + 4 * d
                        if not 30 <= w <= 45:
                            continue
                        if d == 2 and (f > 3 or w + f <= 45):
                            continue
                        if d == 2 and root == "lambda" and f == 3:
                            if (L, V, X) in ((4, 7, 3), (5, 7, 3)):
                                continue
                        kept.append((X, w))
                    if kept:
                        groups[(d, root, f)].append((L, V, kept))

out = ["# Remaining arithmetic count rows\n",
       "This is a necessary-condition inventory for a minimum-weight reader",
       "below 46 (fewest lambdas breaks weight ties), not a term inventory.",
       "Depth two lists only the additional strip w+f>=46. All other depth-two",
       "cases hoist to depth zero. Semantic existence of a count row is open.",
       "The source proofs and parameterized formulas are in STATE46.md.\n",
       "Each integer X in a displayed range is one count row; w follows",
       "w=2L+4V-4+X+4d. No ASTs, reductions, or candidate sweeps are used.\n"]
summary = []
for (d, root, f), rows in groups.items():
    n = sum(len(kept) for _, _, kept in rows)
    summary.append((d, root, f, n))
    out += [f"## d={d}, root={root}, f={f}: {n} count rows\n",
            "| L | V | X | w |", "|---:|---:|---:|---:|"]
    for L, V, kept in rows:
        def span(seq):
            return str(seq[0]) if seq[0] == seq[-1] else f"{seq[0]}..{seq[-1]}"
        out.append(f"| {L} | {V} | {span([x for x, _ in kept])} | {span([w for _, w in kept])} |")
    out.append("")
(HERE / "STATE46-counts.md").write_text("\n".join(out) + "\n")
for row in summary:
    print(*row)
print("total arithmetic rows", sum(row[-1] for row in summary))
