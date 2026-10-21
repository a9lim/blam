#!/usr/bin/env python3
"""Build and measure 165-frame variants: python3 build.py  (writes v_*.lam, prints size/battery)."""
import sys
from pathlib import Path
HERE = Path(__file__).resolve().parent
sys.path.insert(0, str(HERE))
import h

KNOT = r"(\x. x x) (\x. (\intL. \cont. (\next. \list. list (\bit0. bit0 (\unused \r. r next) cont) (list list list)) NEXT) (x x))"
CELL = r"(\zx \zy. zx arg (zy args))"
VABS = rf"(\args \arg. exp {CELL})"
LIFT = r"(\args. exp args (exp2 args))"
KAPP = rf"(\exp2. cont {LIFT})"

VARIANTS = {
    "sharedZ_vabs":    rf"(\bit1. intL (\exp. bit1 cont (\v. intL {KAPP}) {VABS}))",
    "sharedZ_kapp":    rf"(\bit1. intL (\exp. bit1 (\k. cont {VABS}) intL {KAPP}))",
    "dispatch_first":  rf"(\bit1. bit1 (intL (\exp. cont {VABS})) (intL (\exp. intL {KAPP})))",
    "optional_parse":  r"(\bit1. intL (\exp. bit1 (\k. k k) intL (\exp2. cont (\args. bit1 (\arg. exp (\zx \zy. zx arg (zy args))) (exp args (exp2 args))))))",
}

def run(names=None, reader=None):
    for name, nxt in VARIANTS.items():
        if names and name not in names:
            continue
        src = KNOT.replace("NEXT", nxt)
        p = HERE / f"v_{name}.lam"
        p.write_text(src + "\n")
        line, bad = h.bat(str(p))
        print(line)
        for b in bad:
            print("    ", *b)

if __name__ == "__main__":
    run(sys.argv[1:] or None)
