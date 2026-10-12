#!/usr/bin/env python3
"""Golf every program in tromp/AIT with the β-only optimizers.

For each .lam under ref/AIT (or the ones matching --only):

1. compile it with tools/blcc.py, which reproduces Tromp's own toolchain
   (`optimize 57 2 1`), and take that as the reference size;
2. `blam golf letopt` over its let-free core, at the largest k the candidate
   count allows (falling back to --no-inline when inlining runs away);
3. `blam golf component --descend --no-eta` from the original and from the
   letopt result;
4. `blam golf check` on the smallest term found: a common reduct proves it
   β-convertible to the original.

Every move both optimizers make is β, so a result has the original's normal
form under every argument; the certificate checks that independently.
Writes one TSV row per program (--out, default data/golf/sweep.tsv) and
prints progress.

    sweep.py [--only SUBSTR] [--slack S] [--step-timeout SEC] [--out FILE]
"""
import os
from pathlib import Path
import re
import subprocess
import sys
import time

ROOT = Path(__file__).resolve().parents[2]
sys.path.insert(0, str(ROOT / "tools"))
sys.setrecursionlimit(100000)
import blcc  # noqa: E402

BLAM = str(ROOT / "target" / "release" / "blam")

# Files whose `in` term applies the artifact to sample data: reducing it
# toward its normal form is shorter but not a smaller program.
DEMOS = {
    "numerals/SK_numerals.lam",
    "numerals/tuple_numerals.lam",
    "rosetta/exp00.lam",
    "rosetta/facY.lam",
    "rosetta/forloops.lam",
    "rosetta/variadicY.lam",
    "ait/binary_better.lam",  # an example term for the BLC2 comparison
}


def blam(args, timeout):
    """Run blam; returns (stdout, timed_out)."""
    try:
        r = subprocess.run([BLAM, *args], capture_output=True, text=True, timeout=timeout)
        return r.stdout + r.stderr, False
    except subprocess.TimeoutExpired as e:
        out = e.stdout.decode() if isinstance(e.stdout, bytes) else (e.stdout or "")
        return out, True


def best_line(out):
    m = re.search(r"^best (\d+) ([01]+)$", out, re.M)
    return (int(m.group(1)), m.group(2)) if m else None


def choose_k(n_cuts, nodes, budget):
    """Largest k whose C(n, k) renders fit the budget at the measured rate
    (2.5M configurations/s on a 127-node core, linear in nodes)."""
    from math import comb
    rate = 2.5e6 * 127 / max(nodes, 1)
    k = 1
    while k < 3 and comb(n_cuts, k + 1) / rate < budget:
        k += 1
    return k


def letopt(bits, timeout):
    """Best letopt rendering over both core modes, and how it was found."""
    best, how = None, "failed"
    for mode in ([], ["--no-inline"]):
        out, _ = blam(["golf", "letopt", "--bits", bits, "--max-cuts", "1", *mode], timeout)
        m = re.search(r"\((\d+) nodes\); (\d+) candidate cuts", out)
        if not m:
            continue
        k = choose_k(int(m.group(2)), int(m.group(1)), timeout * 0.4)
        b, late = best_line(out), False
        if k > 1:
            out, late = blam(["golf", "letopt", "--bits", bits, "--max-cuts", str(k), *mode], timeout)
            b = best_line(out) or b
            if late:
                k = 1
        if b and (best is None or b[0] < best[0]):
            best, how = b, f"k{k}{'-noinline' if mode else ''}{'-late' if late else ''}"
    return best, how


def descend(bits, slack, timeout):
    """Best term and its move path (start excluded), plus a note."""
    out, late = blam(["golf", "component", "--bits", bits, "--slack", str(slack),
                      "--no-eta", "--descend", "--max-states", "400000"], timeout)
    path = re.findall(r"^path ([01]+)$", out, re.M)
    b = best_line(out)
    if b:
        return b, path, ""
    if path:  # timed out mid-descent: keep the best term reached so far
        return (len(path[-1]), path[-1]), path, "descent timed out"
    return None, [], "descent timed out" if late else "descent failed"


def certify(orig, cand, path, timeout):
    """`beta` if the whole term inlines to a common reduct with the original
    or, failing that, every step of the move path does."""
    if orig == cand:
        return "same"
    out, late = blam(["golf", "check", orig, cand], timeout)
    if "beta-convertible" in out:
        return "beta"
    if path:
        f = Path("/tmp") / f"golf-path-{os.getpid()}.txt"
        f.write_text("\n".join(path) + "\n")
        out, late = blam(["golf", "check", "--path", str(f)], timeout)
        f.unlink()
        if "beta-convertible" in out:
            return "beta-path"
    return "TIMEOUT" if late else "UNCERTIFIED"


def claimed_sizes(path):
    """Sizes the source's own comments state (`size N`, `N bits`)."""
    txt = path.read_text(errors="replace")
    found = re.findall(r"(?:size\s+(\d+)|(\d+)\s+bits)", txt)
    return sorted({int(a or b) for a, b in found})


def main():
    args = sys.argv[1:]

    def opt(name, default):
        if name in args:
            i = args.index(name)
            v = args[i + 1]
            del args[i:i + 2]
            return v
        return default

    only = opt("--only", "")
    slack = int(opt("--slack", "8"))
    step = int(opt("--step-timeout", "600"))
    resume = "--resume" in args
    out_path = Path(opt("--out", str(ROOT / "data" / "golf" / "sweep.tsv")))
    progs = sorted(p for p in (ROOT / "ref" / "AIT").rglob("*.lam") if only in str(p))
    out_path.parent.mkdir(parents=True, exist_ok=True)
    rows = []
    done = set()
    if resume and out_path.exists():
        for line in out_path.read_text().splitlines()[1:]:
            rows.append(line.split("\t"))
            done.add(rows[-1][0])
    for p in progs:
        rel = p.relative_to(ROOT / "ref" / "AIT")
        if str(rel) in done:
            continue
        t0 = time.time()
        bits, _, _ = blcc.compile_lam(str(p))
        ref = len(bits)
        lo, lmode = letopt(bits, step)
        cands = [(ref, bits, "ref")]
        if lo:
            cands.append((lo[0], lo[1], "letopt"))
        starts = {bits: []}
        if lo and lo[1] != bits:
            starts[lo[1]] = None  # letopt's own result: certified as a whole
        dnote = []
        paths = {}
        sl = slack if ref <= 600 else min(slack, 4)
        for s in starts:
            d, path, note = descend(s, sl, step)
            if note:
                dnote.append(note)
            if d:
                cands.append((d[0], d[1], "descend"))
                paths[d[1]] = [s] + path if starts[s] is not None else None
        size, best, how = min(cands, key=lambda c: (c[0], c[2] != "ref"))
        path = paths.get(best)
        if path is not None and path[0] != bits:
            path = None
        cert = certify(bits, best, path, step)
        claims = claimed_sizes(p)
        if str(rel) in DEMOS:
            dnote.insert(0, "demo")
        row = [str(rel), ref, lo[0] if lo else "", lmode, size, ref - size, how, cert,
               ",".join(map(str, claims)), "; ".join(dnote), best]
        rows.append(row)
        print(f"{str(rel):48s} ref {ref:5d}  letopt {row[2]!s:>5} ({lmode})  best {size:5d} "
              f"(-{ref - size}) {how:8s} {cert:11s} claims [{row[8]}] {row[9]}  {time.time() - t0:.0f}s",
              flush=True)
        with out_path.open("w") as f:
            f.write("program\tref_bits\tletopt_bits\tletopt_mode\tbest_bits\tsaved\tfound_by\t"
                    "certificate\tclaimed_in_source\tnotes\tbest\n")
            for r in rows:
                f.write("\t".join(map(str, r)) + "\n")


if __name__ == "__main__":
    main()
