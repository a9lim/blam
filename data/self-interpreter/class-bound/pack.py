#!/usr/bin/env python3
"""Pack, unpack and recheck the generated proof modules.

The generated Lean modules are kept as one xz tarball per weight slice in
proofs/ (`w32-41.tar.xz`, `w42.tar.xz`, ...). Each tarball holds the modules,
the list of their SHA-256 hashes, and the manifest that names, for every
exception of the finite check, its source hash, Lean module and theorem.

  pack.py pack NAME SRCDIR LIST MANIFEST [CELLS]
                                   write proofs/NAME.tar.xz from the files
                                   LIST names under SRCDIR
  pack.py unpack [NAME ...]        extract into this directory and check
                                   every file against its hash
  pack.py recheck NAME [--jobs N]  unpack, then compile every module from
                                   source into a build directory and check
                                   each theorem's statement and axioms
  pack.py match NAME               unpack, then check by reading that the
                                   finite check covered the cells and counts
                                   of histogram.tsv and that each theorem's
                                   literal is the source the check flagged

`recheck` runs Lean on every module (N at a time, default 1, each under Lean's
own 680 MB limit); a slice of 12,000 theorems takes a few CPU-minutes. `match`
needs the slice's record of the finite check (`cells-NAME.json`: per cell the
total, the mismatches by probe, and the exception sources), which the slices
from weight 42 on carry. Neither runs a candidate interpreter.
"""
import concurrent.futures
import csv
import hashlib
import io
import json
import os
import re
import subprocess
import sys
import tarfile
import time
from pathlib import Path

P = Path(__file__).resolve().parent
REPO = P.parents[2]
ALLOWED = {"propext", "Quot.sound", "Classical.choice"}
MEMBER = re.compile(r"proofs/Slice\w+\.lean|exception-manifest[\w-]*\.tsv"
                    r"|proof-files-[\w-]+\.sha256|cells-[\w-]+\.json")
CLOSED = (2, 0, "Cs", "x", 3, 1)        # the control cell, closed whole earlier


def sha(b):
    return hashlib.sha256(b).hexdigest()


def read_list(text):
    out = {}
    for line in text.splitlines():
        h, path = line.split()
        out[path] = h
    return out


def pack(name, srcdir, listfile, manifest, cells=None):
    srcdir = Path(srcdir)
    files = read_list(Path(listfile).read_text())
    members = []
    for path in sorted(files):
        data = (srcdir / path).read_bytes()
        assert sha(data) == files[path], path
        members.append((path, data))
    listing = "".join(f"{files[p]}  {p}\n" for p in sorted(files)).encode()
    members.append((f"proof-files-{name}.sha256", listing))
    members.append((f"exception-manifest-{name}.tsv", Path(manifest).read_bytes()))
    if cells:
        members.append((f"cells-{name}.json", Path(cells).read_bytes()))
    out = P / "proofs" / f"{name}.tar.xz"
    with tarfile.open(out, "w:xz", preset=9) as tar:
        for path, data in members:
            assert MEMBER.fullmatch(path), path
            info = tarfile.TarInfo(path)
            info.size, info.mode, info.mtime = len(data), 0o644, 0
            tar.addfile(info, io.BytesIO(data))
    print(f"{out.relative_to(P)}: {len(files)} modules, {out.stat().st_size} bytes")


def unpack(name):
    """Extract one tarball here; return {module path: hash} after checking."""
    with tarfile.open(P / "proofs" / f"{name}.tar.xz", "r:xz") as tar:
        for m in tar.getmembers():
            assert m.isfile() and MEMBER.fullmatch(m.name), m.name
        tar.extractall(P, filter="data")
    files = read_list((P / f"proof-files-{name}.sha256").read_text())
    for path, h in files.items():
        assert sha((P / path).read_bytes()) == h, path
    return files


def lean_tool():
    tc = (REPO / "lean" / "lean-toolchain").read_text().strip()
    return Path.home() / ".elan/toolchains" / tc.replace("/", "--").replace(":", "---") / "bin/lean"


def compile_one(args):
    mod, build, keep = args
    src = P / "proofs" / f"{mod}.lean"
    cmd = [str(lean_tool()), f"--root={P / 'proofs'}", "-j1", "-M680"]
    if keep:
        cmd += ["-o", str(build / f"{mod}.olean")]
    env = dict(os.environ, LEAN_PATH=f"{build}:{REPO / 'lean/.lake/build/lib/lean'}")
    p = subprocess.run(cmd + [str(src)], cwd=REPO / "lean", env=env,
                       capture_output=True, text=True, timeout=600)
    return mod, p.returncode, p.stdout + p.stderr


def recheck(name, jobs=1):
    t0 = time.time()
    files = unpack(name)
    mods = sorted(Path(p).stem for p in files)
    generated = set(mods)
    build = P / "proofs" / f"build-{name}"
    build.mkdir(exist_ok=True)
    imports, needed = {}, set()
    support = set()
    for mod in mods:
        src = (P / "proofs" / f"{mod}.lean").read_text()
        deps = re.findall(r"^import (\S+)$", src, re.M)
        imports[mod] = [d for d in deps if d in generated]
        needed.update(imports[mod])
        support.update(d for d in deps if d not in generated and not d.startswith("Blc"))

    # hand-written support modules (and their own support imports) first
    done, order = set(), []

    def visit(mod):
        if mod in done:
            return
        done.add(mod)
        src = (P / "proofs" / f"{mod}.lean").read_text()
        for d in re.findall(r"^import (\S+)$", src, re.M):
            if not d.startswith("Blc"):
                visit(d)
        order.append(mod)

    for mod in sorted(support):
        visit(mod)
    for mod in order:
        _, rc, log = compile_one((mod, build, True))
        assert rc == 0 and "sorry" not in log, (mod, log[-800:])

    # generated modules in waves, so that imports are built before use
    logs, left = {}, set(mods)
    with concurrent.futures.ThreadPoolExecutor(jobs) as pool:
        while left:
            wave = sorted(m for m in left if all(d not in left for d in imports[m]))
            assert wave, "import cycle"
            for mod, rc, log in pool.map(compile_one, [(m, build, m in needed) for m in wave]):
                assert rc == 0 and "sorry" not in log and "error" not in log.lower(), (mod, log[-800:])
                logs[mod] = log
            left -= set(wave)

    man = list(csv.DictReader((P / f"exception-manifest-{name}.tsv").open(), delimiter="\t"))
    axioms = {}
    for row in man:
        mod, thm = row["module"], row["theorem"]
        src = (P / "proofs" / f"{mod}.lean").read_text()
        short = thm.rsplit(".", 1)[1]
        assert re.search(rf"^theorem {short} : ¬ Reader \w+ :=", src, re.M), thm
        hit = re.findall(r"^'" + re.escape(thm) +
                         r"' (?:depends on axioms: \[([^\]]*)\]|does not depend on any axioms)$",
                         logs[mod], re.M)
        assert len(hit) == 1, thm
        used = set(filter(None, hit[0].split(", ")))
        assert used <= ALLOWED, (thm, used)
        key = ", ".join(sorted(used)) or "(none)"
        axioms[key] = axioms.get(key, 0) + 1
    print(f"{name}: {len(man)} theorems `¬ Reader r` in {len(mods)} generated modules "
          f"recompiled from the tarball in {time.time() - t0:.0f} s; axioms {axioms}")


def to_lean(t, dep=0):
    """The finite check's source format -> the Lean term. In a source the
    rigid `c` is the free index 0 and `j` a constant; `Reader` reads a term
    with `c` = var 0 and `j` = var 1 outside all binders."""
    if t[0] == "v":
        return ("var", t[1])
    if t[0] == "k":
        assert t[1] == "j", t
        return ("var", dep + 1)
    if t[0] == "l":
        return ("lam", to_lean(t[1], dep + 1))
    return ("app", to_lean(t[1], dep), to_lean(t[2], dep))


def parse(s):
    toks = re.findall(r"\(|\)|\.var|\.lam|\.app|\d+", s)
    assert "".join(toks) == s.replace(" ", ""), s[:80]
    pos = 0

    def term():
        nonlocal pos
        assert toks[pos] == "("
        kind = toks[pos + 1]
        pos += 2
        if kind == ".var":
            out = ("var", int(toks[pos]))
            pos += 1
        elif kind == ".lam":
            out = ("lam", term())
        else:
            assert kind == ".app"
            f = term()
            out = ("app", f, term())
        assert toks[pos] == ")"
        pos += 1
        return out

    out = term()
    assert pos == len(toks)
    return out


def tup(t):
    return tuple(tup(x) if isinstance(x, list) else x for x in t)


def match(name):
    unpack(name)
    weight = int(re.fullmatch(r"w(\d+)", name).group(1))
    with (P / "histogram.tsv").open() as f:
        rows = csv.reader(f, delimiter="\t")
        col = next(rows).index(str(weight))
        want = {}
        for r in rows:
            cell = (int(r[0]), int(r[1]), r[2], r[3], int(r[4]), int(r[5]))
            if cell != CLOSED and int(r[col]):
                want[cell] = int(r[col])
    exc, mism, got, parts = [], {}, {}, {}
    for x in json.loads((P / f"cells-{name}.json").read_text()):
        cell = tuple(x["cell"])                  # a cell over the cap comes in parts
        assert cell in want and x["total"] <= 100000, cell
        got[cell] = got.get(cell, 0) + x["total"]
        if "part" in x:                          # block interval [lo, hi) of the cell
            parts.setdefault(cell, []).append((x["part"]["lo"], x["part"]["hi"]))
        assert x["total"] == sum(x["mismatch"].values()) + len(x["exceptions"]), cell
        for q, n in x["mismatch"].items():
            mism[int(q)] = mism.get(int(q), 0) + n
        exc += x["exceptions"]
    assert got == want
    # Parts are consecutive block intervals from 0. Each block holds at least
    # one source and the histogram count sums all of a cell's blocks, so
    # abutting intervals that reach that count miss no block and repeat none.
    for cell, iv in parts.items():
        iv.sort()
        assert iv[0][0] == 0 and all(a[1] == b[0] for a, b in zip(iv, iv[1:])), cell
    hashes = [sha(repr(tup(e["source"])).encode()) for e in exc]
    assert len(set(hashes)) == len(hashes)
    man = list(csv.DictReader((P / f"exception-manifest-{name}.tsv").open(), delimiter="\t"))
    assert [int(m["exception_index"]) for m in man] == list(range(len(exc)))
    texts = {}
    for m in man:
        i, mod = int(m["exception_index"]), m["module"]
        if mod not in texts:
            texts[mod] = (P / "proofs" / f"{mod}.lean").read_text()
        src = texts[mod]
        ns = re.findall(r"^namespace (\S+)$", src, re.M)
        assert len(ns) == 1 and m["theorem"] == f"{ns[0]}.reject{i}", m
        assert len(re.findall(rf"^theorem reject{i} : ¬ Reader r{i} :=", src, re.M)) == 1, m
        lit = re.findall(rf"^def r{i} : Term := (.*)$", src, re.M)
        assert len(lit) == 1 and parse(lit[0]) == to_lean(exc[i]["source"]), m
        assert m["original_ast_sha256"] == hashes[i], m
    print(f"{name}: {sum(want.values())} sources in {len(want)} cells as histogram.tsv fixes "
          f"them; mismatches by probe {dict(sorted(mism.items()))}; {len(exc)} exceptions, "
          f"each the literal of exactly one theorem `¬ Reader r`")


if __name__ == "__main__":
    cmd, args = sys.argv[1], sys.argv[2:]
    if cmd == "pack":
        pack(*args)
    elif cmd == "unpack":
        for n in args or sorted(p.name[:-7] for p in (P / "proofs").glob("*.tar.xz")):
            print(n, len(unpack(n)), "modules")
    elif cmd == "match":
        match(args[0])
    elif cmd == "recheck":
        jobs = int(args[args.index("--jobs") + 1]) if "--jobs" in args else 1
        recheck(args[0], jobs)
    else:
        sys.exit(__doc__)
