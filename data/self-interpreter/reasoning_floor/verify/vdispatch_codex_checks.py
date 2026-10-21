#!/usr/bin/env python3
"""Fixed reduction checks for vdispatch_codex.md; no enumeration."""
from pathlib import Path
import sys
import time
import re

ROOT = Path(__file__).resolve().parents[3]
sys.path.insert(0, str(ROOT / "tmp/overnight/dispatch"))
from lab import parse as parse_raw, nf, enc, size, blam_nf, probe, app, bits, K
import lc


def parse(source, free=()):
    source = re.sub(r"\\([A-Za-z_]\w*(?:\s+[A-Za-z_]\w*)+)\.",
                    lambda m: "\\" + "\\".join(m[1].split()) + ".", source)
    return parse_raw(source, free=free)

started = time.perf_counter()
count = 0


def check(label, left, right, equal=True):
    global count
    a, b = parse(left), parse(right)
    na, nb = nf(a, 20000), nf(b, 20000)
    assert na is not None and nb is not None, label
    assert (na == nb) == equal, label
    ra, rb = blam_nf(a, 20000), blam_nf(b, 20000)
    assert ra is not None and rb is not None, label
    assert ra == enc(na) and rb == enc(nb), label
    assert (ra == rb) == equal, label
    count += 1
    print(f"PASS {label}")


ks = r"(\a b.a)"
fs = r"(\a b.b)"
cons = lambda b, r: rf"(\h.h {b} {r})"
s0 = cons(ks, "N")
s1 = cons(fs, s0)
check("s0 s0 = K N", rf"\N.{s0} {s0}", rf"\N.{ks} N")
check("s1 s1 = K N", rf"\N.{s1} {s1}", rf"\N.{ks} N")
check("s0 (K N) = N N", rf"\N.{s0} ({ks} N)", r"\N.N N")
check("s1 (K N) = N s0", rf"\N.{s1} ({ks} N)", rf"\N.N {s0}")

A = r"(\e a.f (\b r.b a (r e)))"
B = r"(\g.C (\e.f e (g e)))"
H = r"(\b r t.b (t next) (C r (r r t)))"
check("correlated H: zero law", rf"\C next R.{H} {ks} R R", r"\C next R.R next")
check("correlated H: variable 1", rf"\C next N.{H} {fs} {s0} N", rf"\C next N.C {s0} N")
r3 = cons(fs, cons(fs, s0))
check("correlated H: variable 3", rf"\C next N.{H} {fs} {r3} N", rf"\C next N.C {r3} N")
check("correlated H fails independent rigid variable law",
      rf"\C next R T.{H} {fs} R T", r"\C next R T.C R T", False)

av = r"(\e a.v (\b r.b a (r e)))"
trailing = rf"\C N T.(\v.C {av}) {s0} N T"
check("trailing argument reaches C on I", trailing, rf"\C N T.C {fs} N T")
check("trailing argument violates contract", trailing, rf"\C N T.C {fs} N", False)

Z = rf"(\h.h {A} {B})"
X = rf"(\z.C (z {ks}))"
Y = rf"(\z.P (z {fs}))"
check("shared pair: ABS", rf"\C P f rest.{ks} {X} {Y} {Z} rest", rf"\C P f rest.C {A} rest")
check("shared pair: APP", rf"\C P f rest.{fs} {X} {Y} {Z} rest", rf"\C P f rest.P {B} rest")
check("shared pair: X uses its payload", rf"\C P u v.{X} (\h.h u v)", r"\C P u v.C u")
check("shared pair: Y uses its payload", rf"\C P u v.{Y} (\h.h u v)", r"\C P u v.P v")

V = r"(\a b c d e f g h i.i)"  # V_8, nine lambdas.
check("one-binder T is not forced to two binders by two-argument output",
      rf"\C R.(\k v.k v) C {V} R", rf"\C R.C {V} R")
check("general q=2,p=1 tower law",
      rf"\C R.(\t x y.t C) ((\t x y.t R) {V})",
      r"\C R.\a b c d e f g h i j k.k")

next_src = r"\bit1.intL (\exp.bit1 (cont (\args arg.exp (\zx zy.zx arg (zy args)))) (intL (\exp2.cont (\args.exp args (exp2 args)))))"
assert size(parse(next_src, free=("cont", "intL", "x"))) == 92
print("PASS literal NEXT has size 92 in frame [cont,intL,x]")

source = (ROOT / "data/self-interpreter/machines/int165.lam").read_text()
# E K (01 t) is an actual application-value extractor with zero initial
# lambdas and rigid head t. Only expose its weak head, never normalize
# recursive functions stored in the arguments.
head = app(parse(source), K, bits("01", ("V", 0)))
stack = []
for _ in range(20000):
    if head[0] == "A":
        stack.append(head[2])
        head = head[1]
    elif head[0] == "L" and stack:
        head = lc.beta(head, stack.pop())
    else:
        break
else:
    raise AssertionError("application extractor weak-head fuel")
assert head == ("V", 0) and len(stack) == 2
print("PASS actual application-value extractor has q=0, head t")
old = r"(\bit0. bit0 (\unused \r. r next) cont)"
new = r"(\b r t. b (t next) (cont r (r r t)))"
assert source.count(old) == 1
changed = parse(source.replace(old, new))
for label, m in (("I", r"\x.x"), ("K", r"\x y.x"),
                 ("I I", r"(\x.x) (\x.x)"), ("S", r"\x y z.x z (y z)")):
    assert probe(changed, parse(m), beta=20000) == "ok", label
    print(f"PASS correlated handler in complete interpreter: {label}")
print(f"PASS {count} dual-normalizer comparisons, NEXT size, extractor head, four fixed programs; {time.perf_counter()-started:.3f}s")
