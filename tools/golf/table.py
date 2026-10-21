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
# The size of each program's readable source on the a9lim/AIT `golf` branch
# (tromp/AIT PR 13), as Tromp's compiler gives it. The sweep row is β-golf of
# the pinned original; a source may also carry a hand redesign.
SOURCES = {
    "ait/uni8.lam": "304 strict / 283 non-strict",
    "ait/uni28.lam": "390 / 370",
    "ait/uni2.lam": "332 / 321",
    "ait/int.lam": "165",
    "ait/uni.lam": "187 strict / 175 non-strict",
    "ait/int4.lam": "175",
    "ait/ko2kp.lam": "541",
    "ait/nf.lam": "538",
    "ait/pairupKP.lam": "756",
    "ait/pairupK_p.lam": "651 (valid inputs)",
    "ait/pairup_Kp.lam": "1273 (valid inputs)",
    "ait/blc.lam": "186",
    "ait/uniK.lam": "826; 599 with eager weakening",
    "ait/mpi.lam": "454",
    "ait/pi.lam": "392",
    "ait/SKint.lam": "136",
    "ait/bf.lam": "806",
    "ait/bf2.lam": "999",
    "ait/delimito.lam": "212",
    "ait/triage.lam": "259",
    "ait/delimit.lam": "325",
    "ait/pairlen.lam": "284",
    "ait/tree.lam": "222",
    "fast_growing_and_conjectures/loader.lam": "1781",
    "fast_growing_and_conjectures/tweet.lam": "2134",
    "fast_growing_and_conjectures/tree_ordinals.lam": "726",
    "fast_growing_and_conjectures/hydra.lam": "171",
    "fast_growing_and_conjectures/erdos.lam": "287",
    "fast_growing_and_conjectures/laver1.lam": "262",
    "fast_growing_and_conjectures/laver2.lam": "208",
    "fast_growing_and_conjectures/patcail.lam": "414",
    "characteristic_sequences/primes256.lam": "252",
    "characteristic_sequences/squares.lam": "301",
    "characteristic_sequences/primes2.lam": "216",
    "lists/sort2.lam": "415",
    "lists/sort.lam": "290",
    "lists/cycle.lam": "82",
    "numerals/min.lam": "49",
    "numerals/sqrt.lam": "116",
    "numerals/church.lam": "29",
}
# Gains deliberately left out of the upstream branch, and why.
KEPT_OUT = {
    "numerals/binary_numerals.lam": "kept out: the 416 inlines the library into fac",
    "lists/take4k.lam": "kept out: bin/ holds its compiled golden",
    "lists/take16k.lam": "kept out: bin/ holds its compiled golden",
    "lists/take1k.lam": "kept out: bin/ holds its compiled golden",
    "lists/take256.lam": "kept out: bin/ holds its compiled golden",
    "lists/take64k.lam": "kept out: bin/ holds its compiled golden",
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
    print("| program | tromp/AIT | β-golf | saved | found by | certificate | source | note |")
    print("|---|---:|---:|---:|---|---|---:|---|")
    for prog, ref, best, saved, how, cert, claims in gains:
        note = KEPT_OUT.get(prog, "")
        if prog in STATED:
            note = f"ties the stated {STATED[prog]}"
        print(f"| `{prog}` | {ref} | **{best}** | {saved} | {how} | {cert} | {SOURCES.get(prog, '')} | {note} |")
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
        f"`{p}`" + (f" (source: {SOURCES[p]})" if p in SOURCES else "") for p in sorted(same)) + ".")


if __name__ == "__main__":
    main()
