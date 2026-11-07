#!/usr/bin/env python3
"""Small, reasoned env-lane checks. No candidate enumeration."""
from pathlib import Path
import contextlib
from concurrent.futures import ThreadPoolExecutor
import functools
import io
import itertools
import json
import os
import re
import subprocess
import sys
import time

LANE = Path(__file__).resolve().parent
ROOT = LANE.parents[3]
sys.path[:0] = [str(ROOT / "tools"), str(ROOT / "tools/self-interpreter")]
sys.dont_write_bytecode = True
os.environ["TMPDIR"] = str(LANE)
import blcc
import lc
import battery
import polish

battery.BLAM = polish.BLAM = str(LANE / "blam")

def term(src, frame=()):
    p = blcc.P(blcc.strip_comments(src))
    e = blcc.p_lc(p)
    p.ws()
    assert p.i == len(p.t)
    return blcc.to_db(e, frame)

battery.compile_lam = term

def app(*xs):
    t = xs[0]
    for x in xs[1:]:
        t = ("A", t, x)
    return t

def equal(left, right, label):
    l = lc.nf(left, [100000])
    r = lc.nf(right, [100000])
    assert l == r, (label, lc.show(l), lc.show(r))
    return {"name": label, "ok": True}

def check_identities():
    frame = ("a", "e", "N", "z")
    a, e, N, z = [term(x, frame) for x in frame]
    U = lambda n: lc.bitlist("1" * n + "0", N)
    D = term(r"\u \r. r (\b. b (\d. a) (e b))", frame)
    Ds = term(r"\u \r. r (\b. b (b a) (e b))", frame)
    results = []
    for name, d in [("prefix_literal_K", D), ("prefix_own_tag", Ds)]:
        results.append(equal(app(U(1), d), a, name + "_index1"))
        for n in [1, 2, 3, 4, 7, 16, 31]:
            results.append(equal(app(U(n + 1), d), app(U(n), e),
                                 f"{name}_successor_{n}"))
    for n in [0, 1, 2, 3, 7, 16]:
        results.append(equal(app(U(n + 1), e), app(e, lc.FALSE, U(n)),
                             f"alias_successor_{n}"))
        results.append(equal(app(U(n), U(n)), app(lc.TRUE, N),
                             f"stream_diagonal_{n}"))
    # Closed input programs distinguish the arity shortcut after no adapter.
    # These are semantic constructor identities, with rigid f, g, env, arg.
    mode_frame = ("f", "g", "env", "arg")
    f, g, env, arg = [term(x, mode_frame) for x in mode_frame]
    absval = term(r"\d \e \a. f d (\b \r. b a (r e))", mode_frame)
    appval = term(r"\d \e. f d e (g d e)", mode_frame)
    cell = term(r"\b \r. b arg (r env)", mode_frame)
    results.append(equal(app(absval, lc.FALSE, env, arg), app(f, lc.FALSE, cell),
                         "phase_abs"))
    results.append(equal(app(appval, lc.FALSE, env),
                         app(app(f, lc.FALSE, env), app(g, lc.FALSE, env)),
                         "phase_app"))
    for n in [1, 2, 3, 9]:
        results.append(equal(app(U(n), lc.FALSE, e), app(U(n - 1), e),
                             f"phase_var_{n}"))
    cells = {
        "canonical": r"\b \r. b a (r e)",
        "prefix_literal_K": r"\u \r. r (\b. b (\d. a) (e b))",
        "prefix_own_tag": r"\u \r. r (\b. b (b a) (e b))",
        "prefix_borrow_ABS_tag": r"bit1 (\r. r (\b. b (\d. a) (e b)))",
    }
    costs = {k: blcc.size(term(v, ("a", "e", "exp", "bit1")))
             for k, v in cells.items()}
    return {"checks": results, "cell_bits": costs}

def generate():
    base = (ROOT / "data/self-interpreter/machines/int162.lam").read_text()
    base = blcc.strip_comments(base).strip()
    var = r"\u. list (\q. cont) (list list u)"
    whole = base.replace(var, r"\u. cont list (list list u)")
    assert whole != base
    own = whole.replace(r"\zx \zy. zx arg (zy args)",
                        r"\u \r. r (\b. b (b arg) (args b))")
    phase = whole.replace(r"\args \arg. exp (\zx \zy. zx arg (zy args))",
                          r"\mode \args \arg. exp mode (\zx \zy. zx arg (zy args))")
    phase = phase.replace(r"\args. exp args (exp2 args)",
                          r"\mode \args. exp mode args (exp2 mode args)")
    phase = "\\c. (" + phase + r") (\v. c (v (\p \q. q)))"
    assert own != whole and phase != whole
    (LANE / "prefix_own_tag.lam").write_text(own + "\n")
    (LANE / "phase_argument.lam").write_text(phase + "\n")
    return [LANE / "prefix_own_tag.lam", LANE / "phase_argument.lam"]

def check_prefix_bound():
    """Check only the <=18-bit H hole derived in the handwritten proof.

    H has mandatory free a/e at base indices 2/3. Hence 2L+4A+7<=18,
    A>=1, so only (A=1,L<=3) or (A=2,L<=1) can occur. No unrestricted
    term enumeration is performed. The checked candidate set is <400.
    """
    @functools.lru_cache(None)
    def shapes(A, L):
        out = []
        if A == L == 0:
            out.append(("V",))
        if L:
            out.extend(("L", s) for s in shapes(A, L - 1))
        if A:
            for left_A in range(A):
                for left_L in range(L + 1):
                    out.extend(("A", f, a)
                               for f in shapes(left_A, left_L)
                               for a in shapes(A - 1 - left_A, L - left_L))
        return tuple(out)

    def depths(shape, d=0):
        if shape[0] == "V":
            return [d]
        if shape[0] == "L":
            return depths(shape[1], d + 1)
        return depths(shape[1], d) + depths(shape[2], d)

    def fill(shape, indices):
        it = iter(indices)
        def go(s):
            if s[0] == "V":
                return ("V", next(it))
            if s[0] == "L":
                return ("L", go(s[1]))
            return ("A", go(s[1]), go(s[2]))
        return go(shape)

    terms = set()
    for A, max_L in [(1, 3), (2, 1)]:
        for L in range(max_L + 1):
            for shape in shapes(A, L):
                ds = depths(shape)
                for ia, ie in itertools.permutations(range(A + 1), 2):
                    free = [j for j in range(A + 1) if j not in (ia, ie)]
                    choices = (range(ds[free[0]] + 10) if free else [None])
                    for h in choices:
                        ix = [None] * (A + 1)
                        ix[ia], ix[ie] = ds[ia] + 2, ds[ie] + 3
                        if free:
                            ix[free[0]] = h
                        t = fill(shape, ix)
                        if blcc.size(t) <= 18:
                            terms.add(t)
    assert len(terms) < 400
    a, e, N = ("V", 0), ("V", 1), ("V", 8)
    U = lambda n: lc.bitlist("1" * n + "0", N)
    checks = []
    base_pass = 0
    both_pass = 0
    start = time.monotonic()
    rust_probes = []
    def close(t):
        for _ in range(9):
            t = ("L", t)
        return t
    for H in sorted(terms, key=blcc.encode):
        D = ("L", ("L", ("A", ("V", 0), H)))
        base_nf = lc.nf(app(U(1), D), [10000])
        base_ok = base_nf == a
        successor_ok = (lc.nf(app(U(2), D), [10000]) ==
                        lc.nf(app(U(1), e), [10000]))
        base_pass += base_ok
        both_pass += base_ok and successor_ok
        checks.append({"H_bits": blcc.size(H), "H_wire": blcc.encode(H),
                       "base_ok": base_ok, "successor_ok": successor_ok})
        rust_probes.append((blcc.encode(close(app(U(1), D))),
                            blcc.encode(close(base_nf))))
    python_seconds = time.monotonic() - start
    rust_start = time.monotonic()
    def rust_check(probe):
        got = battery.normalize(probe[0], 1 << 12)
        assert got == probe[1], (probe, got)
    with ThreadPoolExecutor(2) as pool:
        list(pool.map(rust_check, rust_probes))
    result = {"hypothesis": "D = lambda u r. r H; mandatory free a,e; H<=18",
              "frame": ["r", "u", "a", "e", "exp", "bit1", "list", "cont", "intL", "x"],
              "candidate_count": len(terms), "base_pass": base_pass,
              "both_pass": both_pass, "python_seconds": python_seconds,
              "rust_crosschecks": len(rust_probes),
              "rust_seconds": time.monotonic() - rust_start,
              "checks": checks}
    assert both_pass == 0
    (LANE / "prefix_bound.json").write_text(json.dumps(result, indent=2) + "\n")
    return {k: v for k, v in result.items() if k != "checks"}

def line(*args):
    if args[0] == "--bits":
        E, end = lc.decode(args[1])
        assert end == len(args[1])
        name = "bits"
    else:
        E = term(Path(args[0]).read_text())
        name = Path(args[0]).name
    start = time.monotonic()
    ok, skip, bad = battery.check(E, threads=2)
    result = f"{blcc.size(E)} bits  ok={ok} skip={skip} fail={len(bad)}  {name}"
    print(result, f"({time.monotonic()-start:.3f}s)", file=sys.__stdout__, flush=True)
    return result

def main():
    if "--proof-only" in sys.argv:
        print(json.dumps(check_prefix_bound(), indent=2))
        return
    facts = check_identities()
    paths = generate()
    (LANE / "identities.json").write_text(json.dumps(facts, indent=2) + "\n")
    print(json.dumps({"checks_passed": len(facts["checks"]),
                      "cell_bits": facts["cell_bits"]}), flush=True)
    # Invoke the actual polish workflow with only its battery worker count,
    # binary path and per-process wall limit changed.
    polish.battery_line = line
    original_run = subprocess.run
    def bounded_run(*args, **kwargs):
        kwargs["timeout"] = min(kwargs.get("timeout", 100), 100)
        return original_run(*args, **kwargs)
    subprocess.run = bounded_run
    sys.argv = [str(ROOT / "tools/self-interpreter/polish.py"), *map(str, paths)]
    capture = io.StringIO()
    with contextlib.redirect_stdout(capture):
        polish.main()
    (LANE / "polish.log").write_text(capture.getvalue())
    print(capture.getvalue(), end="", flush=True)
    # Materialize the minima above polish.py's fixed reporting threshold.
    records = []
    for path in paths:
        E = term(path.read_text())
        bits = blcc.encode(E)
        cuts = "3" if len(bits) <= 175 else "2"
        run = subprocess.run([str(LANE / "blam"), "golf", "letopt", "--bits", bits,
                              "--report-le", str(len(bits)), "--threads", "2",
                              "--max-cuts", cuts], capture_output=True, text=True)
        (LANE / (path.stem + ".letopt.log")).write_text(run.stdout + run.stderr)
        best = re.search(r"best (\d+) ([01]+)", run.stdout)
        assert best, path
        wire = best.group(2)
        (LANE / (path.stem + ".blc")).write_text(wire + "\n")
        optimized, _ = lc.decode(wire)
        (LANE / (path.stem + ".optimized.lam")).write_text(lc.show(optimized) + "\n")
        battery_line = line("--bits", wire)
        records.append({"file": path.name, "bits_written": len(bits),
                        "bits_polished": int(best.group(1)),
                        "optimized_battery": battery_line})
    (LANE / "results.json").write_text(json.dumps(records, indent=2) + "\n")
    print(json.dumps(records, indent=2), flush=True)

if __name__ == "__main__":
    main()
