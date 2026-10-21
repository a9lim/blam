#!/usr/bin/env python3
"""Fixed NEXT identities, nine proved normal forms, and explicit witnesses.

No candidate enumeration. All generated files stay beside this script.
Batteries explicitly use two workers; fixed equations use one process.
"""
from pathlib import Path
import json
import re
import subprocess
import sys
import time

sys.dont_write_bytecode = True
LANE = Path(__file__).resolve().parent
ROOT = LANE.parents[2]
sys.path[:0] = [str(ROOT / "tools"), str(ROOT / "tools/self-interpreter")]
import blcc
import battery
import lc


def parse(src, frame=()):
    src = re.sub(r"\\([A-Za-z_]\w*(?:\s+[A-Za-z_]\w*)+)\.",
                 lambda m: "\\" + "\\".join(m[1].split()) + ".", src)
    parser = blcc.P(blcc.strip_comments(src))
    named = blcc.p_lc(parser)
    parser.ws()
    assert parser.i == len(parser.t), (parser.i, parser.t[parser.i:])
    return blcc.to_db(named, frame)


def app(f, *xs):
    for x in xs:
        f = ("A", f, x)
    return f


def counts(t):
    if t[0] == "V":
        return (0, 0, t[1])
    if t[0] == "L":
        l, a, x = counts(t[1])
        return l + 1, a, x
    left, right = counts(t[1]), counts(t[2])
    return (left[0] + right[0], left[1] + right[1] + 1, left[2] + right[2])


def fixed_nf(t):
    return lc.nf(t, [30000])


def head_nf(t):
    def step(u):
        if u[0] == "V":
            return None
        if u[0] == "L":
            v = step(u[1])
            return None if v is None else ("L", v)
        if u[1][0] == "L":
            return lc.beta(u[1], u[2])
        v = step(u[1])
        return None if v is None else ("A", v, u[2])
    for _ in range(1000):
        u = step(t)
        if u is None:
            return t
        t = u
    raise AssertionError("head normalization cap")


def rust_nf(t):
    result = subprocess.run(
        [battery.BLAM, "normalize", lc.enc(t), "--beta", "30000"],
        text=True, capture_output=True, timeout=5,
    )
    fields = result.stdout.split()
    assert result.returncode == 0 and fields and set(fields[0]) <= {"0", "1"}, result.stderr
    return fields[0]


CHECKS = []


def equation(label, lhs, rhs, equal=True):
    left, right = parse(lhs), parse(rhs)
    equation_terms(label, left, right, equal)


def equation_terms(label, left, right, equal=True):
    left_nf, right_nf = fixed_nf(left), fixed_nf(right)
    assert (left_nf == right_nf) == equal, label
    assert rust_nf(left) == lc.enc(left_nf), label + " Rust lhs"
    assert rust_nf(right) == lc.enc(right_nf), label + " Rust rhs"
    CHECKS.append({"label": label, "equal": equal})


K = r"(\u v.u)"
F = r"(\u v.v)"
I = r"(\u.u)"
A = r"(\e a.f (\u r.u a (r e)))"
B = r"(\g.c (\e.f e (g e)))"
KA = rf"(\f.c {A})"
KB = rf"(\f.p {B})"
T0 = rf"(p {KA})"
T1 = rf"(p {KB})"
NEXT = rf"\b.p (\f.b (c {A}) (p {B}))"
FRAME = ("c", "p", "x")


def machine(nxt):
    return rf"""(\x.x x) (\x.(\p.\c.
      (\j.\s.s (\b0.b0 (\u r.r j) c) (s s s))
      ({nxt})) (x x))"""


def reader(j, c, s):
    return rf"({s}) (\b0.b0 (\u r.r ({j})) ({c})) (({s}) ({s}) ({s}))"


def cons(b, s):
    return rf"(\h.h ({b}) ({s}))"


def unary(n, tail="t"):
    s = cons(K, tail)
    for _ in range(n):
        s = cons(F, s)
    return s


def main():
    started = time.monotonic()
    ref = parse(machine(NEXT))
    canonical = parse((ROOT / "data/self-interpreter/machines/int165.lam").read_text())
    assert ref == canonical and lc.size(ref) == 165
    assert counts(parse(NEXT, FRAME)) == (8, 13, 22)
    # Substitute the actual knot values, then expose only the head form.
    # The reference NEXT is tail-headed, not rigid-p-headed, after this.
    generator = ref[2]
    parser = app(generator, generator)
    actual_j = app(parse(rf"\x p c.{NEXT}"), generator, parser, ("V", 0))
    h = head_nf(actual_j)
    lambdas = 0
    while h[0] == "L":
        lambdas += 1
        h = h[1]
    hargs = []
    while h[0] == "A":
        hargs.append(h[2])
        h = h[1]
    assert (lambdas, h, len(hargs)) == (2, ("V", 0), 2)

    # Exactly the nine forms in the conditional theorem; no search.
    forms = {
        "00_root": rf"\b.b {T0} {T1}",
        "00_continuation": rf"\b.p (b {KA} {KB})",
        "00_after_first_parse": NEXT,
        "01_root": rf"\b.b {T0} (\r.{T1} r)",
        "10_root": rf"\b.b (\r.{T0} r) {T1}",
        "11_root": rf"\b.b (\r.{T0} r) (\r.{T1} r)",
        "11_after_tail_binder": rf"\b r.b ({T0} r) ({T1} r)",
        "11_continuation": rf"\b r.p (b {KA} {KB}) r",
        "11_after_first_parse": rf"\b r.p (\f.b (c {A}) (p {B})) r",
    }
    sizes = {}
    for label, source in forms.items():
        t = parse(source, FRAME)
        assert fixed_nf(t) == t, label
        sizes[label] = {"bits": lc.size(t), "LAX": counts(t)}
        for bit, target in [(K, T0), (F, T1)]:
            equation(label + (" K" if bit == K else " F"),
                     rf"\x p c t.({source}) {bit} t",
                     rf"\x p c t.{target} t")
    assert min(v["bits"] for v in sizes.values()) == 92

    # Fixed reader laws are independent of NEXT, not an opaque-parser axiom.
    for n in [1, 2, 4]:
        equation(f"raw variable n={n}",
                 rf"\j c t.{reader('j', 'c', unary(n))}",
                 rf"\j c t.c ({unary(n - 1)}) t")
    for b in [K, F, "b"]:
        equation("constructor handoff " + b,
                 rf"\j c b t.{reader('j', 'c', cons(K, cons(b, 't')))}",
                 rf"\j c b t.j ({b}) t")
    equation("constant-stream return, arbitrary NEXT",
             rf"\j c v.{reader('j', 'c', r'(\u w.v)')}",
             r"\j c v.v")
    equation("reader on K", rf"\j c.{reader('j', 'c', K)}",
             r"\j c.\b.b (\u r.r j) c")
    equation("reader on F", rf"\j c.{reader('j', 'c', F)}", rf"\j c.{F}")
    equation("reader on I", rf"\j c.{reader('j', 'c', I)}", r"\j c.\r.r j")

    # A legal shared packet: the review's counterexample, now priced as NEXT.
    X = rf"(\z.c (z {K}))"
    Y = rf"(\z.p (z {F}))"
    Z = rf"(\h.h {A} {B})"
    packed = rf"\b.p (\f.b {X} {Y} {Z})"
    for bit, target in [(K, T0), (F, T1)]:
        equation("packet " + ("K" if bit == K else "F"),
                 rf"\x p c t.({packed}) {bit} t",
                 rf"\x p c t.{target} t")

    # The two single-shared-argument shapes with a bare branch head.
    # The report proves that these exact erasing adapters are forced
    # under its normal-source / tag-independent-payload hypotheses.
    bare_c = rf"\b.p (\f.b c (\z.p {B}) {A})"
    bare_p = rf"\b.p (\f.b (\z.c {A}) p {B})"
    bare_sizes = {"bare_c": lc.size(parse(bare_c, FRAME)),
                  "bare_p": lc.size(parse(bare_p, FRAME))}
    assert bare_sizes == {"bare_c": 97, "bare_p": 96}, bare_sizes
    for label, source in [("bare_c", bare_c), ("bare_p", bare_p)]:
        for bit, target in [(K, T0), (F, T1)]:
            equation(label + (" K" if bit == K else " F"),
                     rf"\x p c t.({source}) {bit} t",
                     rf"\x p c t.{target} t")

    # The concrete parser implements a constant-stream return. This is
    # intentionally NOT equal to the rigid-p branch law.
    actual_return = rf"\b.p (\f.b (p f (\u v.c {A})) (p {B}))"
    equation("actual return fails rigid-p K law",
             rf"\x p c t.({actual_return}) {K} t",
             rf"\x p c t.{T0} t", equal=False)
    actual_machine = machine(actual_return)
    equation("actual modified parser returns constants",
             rf"\c v.({actual_machine}) c (\u w.v)",
             r"\c v.v")

    # An arbitrary closed self-interpreter Q embeds in NEXT with 44 extra bits.
    reference_src = machine(NEXT)
    embedded = rf"\b t.({reference_src}) c {cons(K, cons('b', 't'))}"
    embedded_n = parse(embedded, FRAME)
    assert lc.size(embedded_n) == lc.size(ref) + 44
    # Symbolic proof of the adapter, for either actual tag, all tails and Q.
    adapter = rf"(\b t.q c {cons(K, cons('b', 't'))})"
    for bit in [K, F]:
        equation("embedded interpreter forwarding " + ("K" if bit == K else "F"),
                 rf"\q c t.{adapter} {bit} t",
                 rf"\q c t.q c {cons(K, cons(bit, 't'))}")

    witnesses = {
        "reference165": NEXT,
        "pair_packet": packed,
        "actual_parser_return": actual_return,
        "embedded_reference": embedded,
    }
    batteries = {}
    for label, nsrc in witnesses.items():
        src = machine(nsrc)
        term = parse(src)
        (LANE / (label + ".lam")).write_text(src + "\n")
        (LANE / (label + ".blc")).write_text(lc.enc(term) + "\n")
        if "--fixed-only" in sys.argv:
            continue
        then = time.monotonic()
        ok, skip, bad = battery.check(term, threads=2)
        line = f"{lc.size(term)} bits  ok={ok} skip={skip} fail={len(bad)}  {label}.lam"
        print(line, flush=True)
        assert not bad, (label, bad)
        batteries[label] = {
            "line": line, "seconds": time.monotonic() - then,
            "NEXT_bits": lc.size(parse(nsrc, FRAME)), "LAX": counts(term),
        }

    # The ordinary battery skips Omega's full output. Check exact suffix
    # extraction on Omega and lambda-Omega separately, with a rigid tail.
    omega = parse(r"(\u.u u) (\u.u u)")
    for label, nsrc in witnesses.items():
        term = parse(machine(nsrc))
        for program_name, program in [("Omega", omega), ("lambda Omega", ("L", omega))]:
            stream = lc.bitlist(lc.enc(program), ("V", 0))
            probe = ("L", app(term, parse(F), stream))
            equation_terms(label + " suffix " + program_name, probe, parse(I))

    # A fixed affine contraction increases BLC size by two bits.
    grow_before = r"\f g h.(\q.\a b c d.q a b c d) (f g h)"
    grow_after = r"\f g h a b c d.f g h a b c d"
    equation("size-growing affine contraction",
             grow_before, grow_after)
    growth_sizes = [lc.size(parse(grow_before)), lc.size(parse(grow_after))]
    assert growth_sizes[1] - growth_sizes[0] == 2, growth_sizes
    result = {
        "normal_fragment_forms": sizes, "batteries": batteries,
        "bare_head_shared_argument_sizes": bare_sizes,
        "equations": CHECKS, "seconds": time.monotonic() - started,
        "actual_NEXT_head": {"lambdas": lambdas, "head_index": h[1], "arguments": len(hargs)},
        "affine_growth_sizes": growth_sizes,
        "status": "Finite identities and measurements only; no general lower bound machine-checked.",
    }
    output = "fixed_checks.json" if "--fixed-only" in sys.argv else "checks.json"
    (LANE / output).write_text(json.dumps(result, indent=2) + "\n")
    print(json.dumps(sizes, indent=2))
    print(f"PASS {len(CHECKS)} dual-normalizer comparisons; {result['seconds']:.3f}s", flush=True)


if __name__ == "__main__":
    main()
