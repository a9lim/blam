#!/usr/bin/env python3
"""Pack and recheck a size's exclusion (the floor lane's working directory).

  pack.py pack SIZE SRCDIR     write sizeSIZE.tar.xz from the lane's directory:
                               its Lean modules (the import closure of the
                               ledger's modules), scripts, enumerators,
                               ledgers and certificates; no build products
  pack.py check SIZE           unpack into <repo>/tmp/recheck/sizeSIZE/ and run
                               the lane's three checks there:
                                 recheck_inventory.py  both enumerators again,
                                     byte-identical to the recorded inventory,
                                     and the comparison by explicit contraction
                                 verify_ledger.py      every Lean literal, wire
                                     and certificate against the ledger
                                 recheck.py            every module recompiled
                                     from source into an empty directory, one
                                     Lean process at a time (-j2 -M 900), and
                                     the axioms of each complete exclusion

The lane's scripts find the repository two levels above their own directory
and import the floor38 archive (data/self-interpreter/reasoning_162/floor38),
so the check runs from tmp/recheck/, which is ignored by git. `lake build Blc`
must be current.
"""
import io
import json
import re
import subprocess
import sys
import tarfile
import time
from pathlib import Path

HERE = Path(__file__).resolve().parent
REPO = HERE.parents[2]
KEEP_SUFFIX = {".py", ".cpp", ".rs", ".json", ".txt", ".tsv", ".md", ".in"}
DROP = {"build.jsonl"}


def closure(src):
    rows = json.loads((src / "ledger.json").read_text())
    roots = ["Residuals"] + sorted({r["module"] for r in rows})
    seen, order = set(), []

    def visit(m):
        if m in seen:
            return
        seen.add(m)
        for name in re.findall(r"^import ([\w.]+)", (src / (m + ".lean")).read_text(), re.M):
            if (src / (name + ".lean")).is_file():
                visit(name)
        order.append(m)

    for r in roots:
        visit(r)
    return order


def pack(size, src):
    src = Path(src).resolve()
    names = [m + ".lean" for m in closure(src)]
    for p in sorted(src.iterdir()):
        if p.is_file() and p.suffix in KEEP_SUFFIX and p.name not in DROP:
            names.append(p.name)
    names = sorted(set(names))
    out = HERE / f"size{size}.tar.xz"
    with tarfile.open(out, "w:xz", preset=9) as tar:
        for name in names:
            data = (src / name).read_bytes()
            info = tarfile.TarInfo(name)
            info.size, info.mtime, info.mode = len(data), 0, 0o644
            tar.addfile(info, io.BytesIO(data))
    lean = sum(1 for n in names if n.endswith(".lean"))
    print(f"{out.name}: {len(names)} files ({lean} Lean modules), {out.stat().st_size} bytes")


def check(size):
    dest = REPO / "tmp" / "recheck" / f"size{size}"
    if dest.exists():
        sys.exit(f"{dest} exists; remove it first")
    dest.mkdir(parents=True)
    with tarfile.open(HERE / f"size{size}.tar.xz") as tar:
        tar.extractall(dest, filter="data")
    for script in ("recheck_inventory.py", "verify_ledger.py", "recheck.py"):
        t = time.monotonic()
        p = subprocess.run([sys.executable, script], cwd=dest, text=True,
                           capture_output=True, timeout=1800)
        tail = (p.stdout + p.stderr).strip().splitlines()[-3:]
        print(f"{script}: exit {p.returncode}, {time.monotonic() - t:.0f} s")
        for line in tail:
            print("   ", line[:300])
        if p.returncode:
            sys.exit(1)
    print(f"size {size}: all three checks pass (files left in {dest})")


if __name__ == "__main__":
    if sys.argv[1] == "pack":
        pack(sys.argv[2], sys.argv[3])
    elif sys.argv[1] == "check":
        check(sys.argv[2])
    else:
        sys.exit(__doc__)
