#!/usr/bin/env python3
"""One fixed 196-bit normal interpreter: source/wire pin and bounded probes.

No candidate generation or search. The all-source beta-join proof is
Blc/SelfintRound5BoundNormal196.lean; this script checks its named transcription
and the existing 667-case battery, preserving the battery's skip distinction.
"""
from pathlib import Path
import json
import re
import shutil
import sys
import tempfile
import time

HERE = Path(__file__).resolve().parent
ROOT = HERE.parents[2]
sys.path.insert(0, str(ROOT / "tools/self-interpreter"))
import battery as bt
import db

SOURCE = r"""\cont\list.
 list (\bit0.bit0 (\unused\x.x x) bit0)
  (\x\cont\list.
   list (\a.a) (\u.list (\q.cont) (list list u))
    (\bit1.(x x) (\exp.bit1
      (cont (\args\arg.exp (\zx\zy.zx arg (zy args))))
      ((x x) (\exp2.cont (\args.exp args (exp2 args)))))))
  cont list
"""


def normal(t):
    if t[0] == "V":
        return True
    if t[0] == "L":
        return normal(t[1])
    return t[1][0] != "L" and normal(t[1]) and normal(t[2])


def stats(t):
    if t[0] == "V":
        return 0, 0, t[1]
    if t[0] == "L":
        l, a, x = stats(t[1])
        return l + 1, a, x
    l, a, x = stats(t[1])
    ll, aa, xx = stats(t[2])
    return l + ll, a + aa + 1, x + xx


def main():
    start = time.monotonic()
    term = bt.compile_lam(SOURCE)
    bits = bt.enc(term)
    proof = (ROOT / "lean/Blc/SelfintRound5BoundNormal196.lean").read_text()
    proof_bits = re.search(r'def intL196Bits : String :=\s*"([01]+)"', proof)[1]
    assert bits == proof_bits
    assert len(bits) == 196 and normal(term)
    # A fresh filename avoids macOS cached-code-signature issues and freezes
    # the executable against concurrent release builds in this shared tree.
    with tempfile.TemporaryDirectory(prefix="blam-normal196-") as tmp:
        binary = Path(tmp) / "blam"
        shutil.copy2(bt.BLAM, binary)
        bt.BLAM = str(binary)
        ok, skipped, failures = bt.check(term, threads=2)
        assert (ok, skipped, len(failures)) == (667, 1, 0), failures
        suffix = {}
        for name, source in [("omega", r"(\1 1) (\1 1)"),
                             ("lambda_omega", r"\(\1 1) (\1 1)")]:
            program = db.parse(source)
            probe = ("L", ("A", ("A", bt.shift(term, 1), bt.FALSE),
                           bt.bitlist(bt.enc(program), ("V", 0))))
            result = bt.normalize(bt.enc(probe), 1 << 20)
            assert result == "0010", (name, result)
            suffix[name] = "exact rigid tail"
    report = dict(bits=len(bits), L_A_X=stats(term), beta_normal=True,
                  battery=dict(ok=ok, skipped=skipped, failures=len(failures)),
                  suffix_probes=suffix,
                  seconds=round(time.monotonic() - start, 4))
    machines = ROOT / "data/self-interpreter/machines"
    (machines / "int196_normal.lam").write_text(SOURCE)
    (machines / "int196_normal.blc").write_text(bits + "\n")
    output = json.dumps(report, indent=2) + "\n"
    (ROOT / "data/self-interpreter/theory/normal196.json").write_text(output)
    print(output, end="")


if __name__ == "__main__":
    main()
