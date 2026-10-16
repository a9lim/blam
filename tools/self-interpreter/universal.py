#!/usr/bin/env python3
"""Reproduce the universal-machine protocol experiments in design.md.

The target is U (<M> ++ N) = M N for closed M, with a rigid tail N.
It is deliberately weaker than the self-interpreter's rigid-C contract.

    universal.py measure [CASE...] [--max-bits 18] [--threads 4]
    universal.py search CASE [--threads 4]
    universal.py diagonal-cell [--threads 4]

Searches use the existing lab hole instrument, without occurrence masks or
automatic escalation. Resource-capped candidates remain UNKNOWN, not rejected.
The whole-APP/output search takes several minutes; the other output searches
take seconds. Build with `cargo build --release --features lab` first.
"""
import argparse
from concurrent.futures import ThreadPoolExecutor
from itertools import permutations
from pathlib import Path
import subprocess
import sys

HERE = Path(__file__).resolve().parent
ROOT = HERE.parent.parent
sys.path[:0] = [str(HERE), str(HERE.parent)]

import blcc
from battery import check, closed_terms, compile_lam, enc, normalize
from merges import ABS, APP, INT168, VAR, knot
from sketches import bits, interp, parse

D = r"(\x.x x)"
BODY = rf"""\cont.
  (\next.\list.list (\bit0\list1.bit0 (list1 next) {VAR}))
  (\bit1.intL (\exp.bit1 {ABS} {APP}))"""

# Two alternating parsers E = B R and R = B E. The generator is also a
# universal continuation: F (\env.M) = M for closed M.
PERIOD_TWO = rf"(\f.f f f)(\x.x (\k.(\intL.{BODY})(k x)))"

RAW_SUFFIX = knot(r"""\cont.
  (\next.\list.list (\bit0\list1.bit0 (list1 next) (cont list1 list1)))
  (\bit1.intL (\exp.bit1
    (cont (\args\arg.exp (\zx\zy.zx arg (zy args))))
    (\tail.intL (\exp2.cont (\args.exp args (exp2 args)))
      (tail tail tail))))""")

# Q_d(M) abstracts all d lexical arguments. ABS only advances the context;
# the context's generalized application/lifting operations pay for that saving.
CURRIED = r"""let
  i=\x.x;
  cell=\x\y\zx\zy.zx x (zy y);
  push=\e\x.cell x e;
  zero=\c.c i i i;
  succ=\d.d (\a\k\b\c.c
    (\f\g\x.a (f x) (g x))
    (\v\x.k v)
    (a (k push) b));
  p=(\x.x x)(\x.(\p.\d\cont\list.
    d (\a\k\b.list (\bit0\list1.bit0
      (list1 (\bit1.bit1
        (p (succ d) cont)
        (p d (\exp.p d (\exp2.cont (a exp exp2))))))
      (cont (a (k list1) b) (list1 list1 list1)))))
    (x x));
in p zero i"""

# name: (source, optimized bits, expected finite-battery outcome)
VARIANTS = {
    "reference": (f"({INT168}) {D}", 178, True),
    "period-two": (PERIOD_TWO, 179, True),
    "raw-suffix": (
        rf"({RAW_SUFFIX}) (\exp\tail.exp exp (tail tail tail))", 203, True
    ),
    "curried-context": (CURRIED, 378, True),
    "leaky-cell": (
        f"({INT168.replace(r'\zx\zy. zx arg (zy args)', r'\zx. zx arg (\zy. zy args)')}) {D}",
        176, False,
    ),
    "environment-application": (
        f"({INT168.replace(r'\args.exp args (exp2 args)', r'\args.args exp exp2')}) {D}",
        174, False,
    ),
    "diagonal-native": (
        f"({INT168.replace(r'\args.exp args (exp2 args)', 'exp exp2').replace(r'\zx\zy. zx arg (zy args)', r'\zx\zy.zx (args (\a\b.b) arg) zy')}) {D}",
        165, False,
    ),
}


def output_sketch(part, max_fill, max_sum):
    src = f"({interp(**part)}) ~"
    return src, ["--max-size", str(max_fill), "--max2", "12",
                 "--max-sum", str(max_sum)]


SEARCHES = {
    "app-value-output": output_sketch({"appv": "_"}, 23, 26),
    "cell-output": output_sketch({"cell": "_"}, 28, 31),
    "variable-output": output_sketch({"var": "_"}, 26, 29),
    "app-output": output_sketch({"nexth": rf"\bit1.intL (\exp.bit1 {ABS} _)"}, 38, 42),
}
for order in permutations(("args", "exp", "exp2")):
    a, b, c = order
    for association, expression in (("left", f"{a} {b} {c}"),
                                    ("right", f"{a} ({b} {c})")):
        name = "spine-" + "-".join(order) + "-" + association
        src = f"({interp(var='cont ~ (list1 list1 list1)', cell='_', appv=rf'\args. {expression}')}) {D}"
        SEARCHES[name] = (src, ["--max-size", "27", "--max2", "27", "--max-sum", "29"])


def measure(names, max_bits, threads):
    for name in names:
        src, expected_size, should_pass = VARIANTS[name]
        raw = compile_lam(src)
        term = blcc.optimize(raw)[0][0]
        ok, skipped, bad = check(term, uni=True, max_bits=max_bits, threads=threads)
        size = len(enc(term))
        print(f"{name}: {len(enc(raw))} -> {size} bits; "
              f"ok={ok} skip={skipped} fail={len(bad)}", flush=True)
        for program, verdict in bad[:3]:
            print(f"  {verdict} {program}", flush=True)
        if size != expected_size or bool(bad) == should_pass:
            raise SystemExit(f"unexpected measurement for {name}")


def search(name, threads):
    src, flags = SEARCHES[name]
    template = bits(parse(src))
    fixed = len(template) - template.count("_") - template.count("~")
    max_sum = int(flags[flags.index("--max-sum") + 1])
    assert fixed + max_sum == 177, (name, fixed, max_sum)
    print(f"case {name}: complete machines <=177 bits", flush=True)
    subprocess.run([str(ROOT / "target/release/blam"), "selfint", "hole",
                    template, *flags, "--uni", "--threads", str(threads),
                    "--escalate", "0"], check=True)


def diagonal_cell(threads):
    """Check the cheap δ-environment conjugacy: h(e)=e e.

    VAR grows from s (2 bits) to λe.s(e e) (11). A tie at 178 therefore
    requires a replacement cell q of at most 15 bits. Even its head lookup
    law q q K N = x is impossible at that size. x and e must both occur to
    meet the complete cell law; syntactically absent variables cannot appear
    under beta reduction. Compare two independent normalizers.
    """
    from module_bound import A, K, L, V, normal

    def free(term, depth=0):
        if term[0] == "V":
            return {term[1] - depth} if term[1] >= depth else set()
        if term[0] == "L":
            return free(term[1], depth + 1)
        return free(term[1], depth) | free(term[2], depth)

    all_terms = [q for n in range(2, 16) for q in closed_terms(n, 2)]
    relevant = [q for q in all_terms if free(q) == {0, 1}]

    def judge(q):
        # q is under [x,e]. Add rigid N below those binders.
        from battery import shift
        probe = A(shift(q, 1), shift(q, 1), K, V(0))
        py = normal(probe)
        rust = normalize(enc(L(L(L(probe)))), 1 << 16)
        assert isinstance(py, tuple) and rust == enc(L(L(L(py))))
        return py == V(1)

    with ThreadPoolExecutor(threads) as pool:
        passed = sum(pool.map(judge, relevant))
    print(f"diagonal-cell <=15 bits: {len(all_terms)} terms, "
          f"{len(relevant)} relevant, {passed} head-law passes, "
          f"{len(relevant)} exact Python/Rust agreements")
    assert (len(all_terms), len(relevant), passed) == (539, 138, 0)


def main():
    ap = argparse.ArgumentParser(description=__doc__)
    sub = ap.add_subparsers(dest="command", required=True)
    p = sub.add_parser("measure")
    p.add_argument("cases", nargs="*", choices=sorted(VARIANTS))
    p.add_argument("--max-bits", type=int, default=18)
    p.add_argument("--threads", type=int, default=4)
    p = sub.add_parser("search")
    p.add_argument("case", choices=sorted(SEARCHES))
    p.add_argument("--threads", type=int, default=4)
    p = sub.add_parser("diagonal-cell")
    p.add_argument("--threads", type=int, default=4)
    args = ap.parse_args()
    if args.command == "measure":
        measure(args.cases or list(VARIANTS), args.max_bits, args.threads)
    elif args.command == "search":
        search(args.case, args.threads)
    else:
        diagonal_cell(args.threads)


if __name__ == "__main__":
    main()
