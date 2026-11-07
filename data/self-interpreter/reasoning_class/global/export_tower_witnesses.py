#!/usr/bin/env python3
"""Export three analytically derived terms; no candidate search."""
from pathlib import Path
import json
import sys

sys.dont_write_bytecode = True
LANE = Path(__file__).resolve().parent
ROOT = LANE.parents[2]
sys.path.insert(0, str(ROOT / "tools"))
import blcc

SOURCES = {
    "towerValue57": (57, r"(\x. x x) (\x \s. s (\a. a) (\a \b. b) (\b \r. b (x x r)))"),
    "towerBoth88": (88, r"(\x. x x) (\x \c \s. s (\b \r. b (x x (\v. c (b v))) (c (\a. a)) (r (\a \b. b))))"),
    "poisonValue84": (84, r"(\x. x x) (\x \s. s (\a. a) (\a \b. b) (\b \r. b (\z. x x r) (\z. (\a. a a) (\a. a a))))"),
}


def lean(t):
    if t[0] == "V":
        return f"(.var {t[1]})"
    if t[0] == "L":
        return f"(.lam {lean(t[1])})"
    return f"(.app {lean(t[1])} {lean(t[2])})"


def main():
    lines = []
    sizes = {}
    for name, (want, text) in SOURCES.items():
        p = LANE / f"{name}.lam"
        p.write_text(text + "\n")
        _, term, _ = blcc.compile_lam(p)
        bits = blcc.encode(term)
        assert len(bits) == want, (name, len(bits), want)
        (LANE / f"{name}.blc").write_text(bits + "\n")
        sizes[name] = len(bits)
        lines.append(f"def {name}G : Term := {lean(term[2])}\n")
        lines.append(f"def {name} : Term := .app (.lam (.app (.var 0) (.var 0))) {name}G\n")
        lines.append(f"def {name}P : Term := .app {name}G {name}G\n")
        lines.append(f"theorem {name}_closed : Closed {name} := by decide\n")
        lines.append(f"theorem {name}_size : (blcCode {name}).length = {want} := by decide\n")
        lines.append(f"theorem {name}P_closed : Closed {name}P := by decide\n")
    (LANE / "tower-definitions.lean.txt").write_text("\n".join(lines))
    (LANE / "tower-sizes.json").write_text(json.dumps(sizes, indent=2) + "\n")
    print(json.dumps(sizes))


if __name__ == "__main__":
    main()
