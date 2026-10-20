#!/usr/bin/env python3
"""Render data/golf/sweep.tsv as the markdown tables in docs/classical/golf.md.

    table.py [SWEEP_TSV]

Programs whose `in` term is not the artifact (sweep.py's DEMOS) are listed
apart: shrinking them only evaluates it.
"""
from pathlib import Path
import sys

ROOT = Path(__file__).resolve().parents[2]
sys.path.insert(0, str(Path(__file__).resolve().parent))
from sweep import DEMOS  # noqa: E402
# Results that only match a size the source already states (Tromp's
# optimizer at a larger slack, or a hand-optimized figure).
STATED = {
    "numerals/church_minimal.lam": "37 with blc -O6",
    "fast_growing_and_conjectures/laver.lam": "201 with slack 6",
}
# Programs redesigned or ported by hand: the sweep row is β-golf only.
MACHINES = {
    "ait/uni8.lam": "321 strict / 300 non-strict (vs the IOCCC 344)",
    "ait/uni28.lam": "399 / 382",
    "ait/int.lam": "165",
    "ait/uni.lam": "187 strict / 175 non-strict",
    "ait/int4.lam": "175",
    "ait/ko2kp.lam": "557",
    "ait/nf.lam": "541",
    "ait/pairupKP.lam": "771",
    "ait/pairupK_p.lam": "651 (valid inputs)",
    "ait/pairup_Kp.lam": "1325 (valid inputs)",
}


def main():
    path = Path(sys.argv[1]) if len(sys.argv) > 1 else ROOT / "data" / "golf" / "sweep.tsv"
    rows = [l.split("\t") for l in path.read_text().splitlines()[1:]]
    gains, demos, same = [], [], []
    for r in rows:
        prog, ref, _lo, _lmode, best, saved, how, cert, claims, notes = r[:10]
        if prog in DEMOS:
            demos.append((prog, ref, best, DEMOS[prog]))
        elif int(saved) > 0:
            gains.append((prog, int(ref), int(best), int(saved), how, cert, claims))
        else:
            same.append(prog)
    gains.sort(key=lambda g: (-g[3], g[0]))
    print("| program | tromp/AIT | β-golf | saved | found by | certificate | note |")
    print("|---|---:|---:|---:|---|---|---|")
    for prog, ref, best, saved, how, cert, claims in gains:
        note = ""
        if prog in STATED:
            note = f"ties the stated {STATED[prog]}"
        elif prog in MACHINES:
            note = f"by hand: {MACHINES[prog]}"
        print(f"| `{prog}` | {ref} | **{best}** | {saved} | {how} | {cert} | {note} |")
    print()
    new = [g for g in gains if g[0] not in STATED]
    print(f"{len(gains)} programs shrink under β-golf alone, by {sum(g[3] for g in gains)} bits in all; "
          f"{len(new)} of them below every size their source states. "
          f"{len(same)} do not shrink; {len(demos)} demos are excluded.")
    print()
    print("Demos (excluded):")
    print()
    for prog, ref, best, why in demos:
        print(f"- `{prog}` ({ref} → {best}): {why}")
    print()
    print("No gain from β-golf: " + ", ".join(
        f"`{p}`" + (f" (by hand: {MACHINES[p]})" if p in MACHINES else "") for p in sorted(same)) + ".")


if __name__ == "__main__":
    main()
