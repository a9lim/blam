#!/usr/bin/env python3
"""Two fixed readers for Church numeral source spines; no search."""
from pathlib import Path
import json
import sys

sys.dont_write_bytecode = True
LANE = Path(__file__).resolve().parent
ROOT = LANE.parents[2]
sys.path.insert(0, str(ROOT / "tools"))
import blcc

cps = r"(\x. x x) (\x \c \s. s (\b \r. b (x x (\v. c (\f \a. f (v f a)))) (c (\f \a. a)) (r r r)))"
value = r"(\x. x x) (\x \s. s (\b \r. b (\f \a. f (x x (r r r) f a)) (\f \a. a)))"
sources = {
    "spineBody104": (104, cps),
    "spineValueBody87": (87, value),
    "churchSpine154": (154, r"\c \s. (" + cps + r") (\v. c (\z. v)) ((\q. s q q q q) (\a \b. b))"),
    "churchValue123": (123, r"\s \z. (" + value + r") ((\q. s q q q q) (\a \b. b))"),
}


def lean(t):
    if t[0] == "V": return f"(.var {t[1]})"
    if t[0] == "L": return f"(.lam {lean(t[1])})"
    return f"(.app {lean(t[1])} {lean(t[2])})"


lines, sizes = [], {}
for name, (want, source) in sources.items():
    path = LANE / f"{name}.lam"
    path.write_text(source + "\n")
    _, t, _ = blcc.compile_lam(path)
    bits = blcc.encode(t)
    assert len(bits) == want, (name, len(bits), want)
    (LANE / f"{name}.blc").write_text(bits + "\n")
    if name.startswith("spine"):
        lines.append(f"def {name}G : Term := {lean(t[2])}\n")
        lines.append(f"def {name} : Term := .app (.lam (.app (.var 0) (.var 0))) {name}G\n")
        lines.append(f"def {name}P : Term := .app {name}G {name}G\n")
        lines.append(f"theorem {name}P_closed : Closed {name}P := by decide\n")
    else:
        lines.append(f"def {name} : Term := {lean(t)}\n")
    lines.append(f"theorem {name}_closed : Closed {name} := by decide\n")
    lines.append(f"theorem {name}_size : (blcCode {name}).length = {want} := by decide\n")
    sizes[name] = want
(LANE / "spine-definitions.lean.txt").write_text("\n".join(lines))
(LANE / "spine-sizes.json").write_text(json.dumps(sizes, indent=2) + "\n")
print(json.dumps(sizes))
