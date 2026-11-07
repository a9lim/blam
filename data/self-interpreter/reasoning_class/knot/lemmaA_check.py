#!/usr/bin/env python3
"""Lemma A spot check: replace the first (H) or second (J) recursive head of
the 162 by a cheap head and find one program the contract fails on.
Two threads at most; stops at the first failure per variant."""
import sys
from pathlib import Path
ROOT = Path('/Users/a9lim/Work/blam')
sys.path.insert(0, str(ROOT / 'tools/self-interpreter'))
sys.path.insert(0, str(ROOT / 'tools'))
import battery
from battery import _probe, programs, enc

TEMPLATE = r"""(\x. x x) (\x. (\intL. \cont. \list.
  list (\a. a) (\u. list (\q. cont) (list list u))
    (\bit1. HH (\exp. bit1
      (cont (\args \arg. exp (\zx \zy. zx arg (zy args))))
      (JJ (\exp2. cont (\args. exp args (exp2 args)))))))
  (x x))"""
variants = [("H", h, "intL") for h in ["bit1", "list", "cont", r"(\a. a)"]] + \
           [("J", "intL", j) for j in ["exp", "bit1", "list", "cont", r"(\a. a)"]] + \
           [("ref", "intL", "intL")]
progs = programs(12)
for tag, h, j in variants:
    src = TEMPLATE.replace("HH", h).replace("JJ", j)
    E = battery.compile_lam(src)
    verdict = None
    for M in progs:
        r = _probe(E, M, False)
        if r not in ("ok", "skip"):
            verdict = (enc(M), r)
            break
    print(f"{tag} H={h:8s} J={j:8s} {len(enc(E))} bits  first failure: {verdict}")
