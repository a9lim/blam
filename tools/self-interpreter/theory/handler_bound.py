#!/usr/bin/env python3
"""Check explicit witnesses in the handler-bound and normal-interpreter notes.

This is not a term search or a mechanical proof of the universal bound.
The reductions use small open terms with independent rigid neighbours or
the explicitly stated stream correlations.
"""
from pathlib import Path
import sys

sys.dont_write_bytecode = True
ROOT = Path(__file__).resolve().parents[3]
sys.path.insert(0, str(ROOT / "tools" / "self-interpreter"))
import battery
import lc


def app(f, *args):
    for arg in args:
        f = ("A", f, arg)
    return f


def handler(source):
    term = battery.compile_lam("\\x.\\p.\\c.\\j.\\s." + source)
    for _ in range(5):
        assert term[0] == "L"
        term = term[1]
    return term


def normal(term):
    return lc.nf(term, [256])


def counts(term):
    if term[0] == "V":
        return 0, 0, term[1]
    if term[0] == "L":
        l, a, x = counts(term[1])
        return l + 1, a, x
    lf, af, xf = counts(term[1])
    la, aa, xa = counts(term[2])
    return lf + la, af + aa + 1, xf + xa


def laws(term):
    # Frame [s,j,c,p,x,R,T]. R and T are independent rigid free variables.
    r, t = ("V", 5), ("V", 6)
    zero = normal(app(term, lc.TRUE, r, r)) == app(r, ("V", 1))
    one = normal(app(term, lc.FALSE, r, t)) == app(("V", 2), r, t)
    return zero, one


examples = [
    ("minimum", r"\b. b (\u.\v. v j) c", 27, (True, True)),
    ("first-copy zero arm", r"\b. b (\u.\v. u j) c", 28, (True, True)),
    ("known-K erasure", r"\b. b (b (\v. v j)) c", 28, (True, True)),
    # This was an audit counterexample to an intermediate claim, not to
    # the theorem: a zero-application F arm need not literally be c.
    ("vacuous-chain audit", r"\b. b s (\u. c) j", 25, (False, True)),
]
for name, source, size, wanted in examples:
    term = handler(source)
    l, a, x = counts(term)
    assert lc.size(term) == size == 2 * l + 4 * a + 2 + x
    got = laws(term)
    assert got == wanted, (name, got, wanted)
    print(f"{name}: {size} bits; L={l}, A={a}, X={x}; laws={got}")

# Access to the whole stream invalidates the independent-law proof's L >= 2
# lemma. This explicit 40-bit handler has one lambda; it is not competitive
# with 27 bits. The zero equation below is symbolic in its arbitrary tail.
# Its F arm reduces to c for arbitrary other operands, covering every unary
# selector; the three small concrete selectors additionally check substitution.
correlated = handler(r"\b. b (b (b (s s s j))) c")
assert counts(correlated) == (1, 7, 8)
assert lc.size(correlated) == 40
assert laws(correlated) == (False, True)
r, n = ("V", 5), ("V", 6)
zero_stream = lc.pair(lc.TRUE, r)
assert normal(app(lc.subst(0, zero_stream, correlated), lc.TRUE, r, r)) == app(
    r, ("V", 1)
)
for k in (0, 1, 2):
    tail = lc.bitlist("1" * k + "0", n)
    stream = lc.pair(lc.FALSE, tail)
    assert normal(app(lc.subst(0, stream, correlated), lc.FALSE, tail, n)) == app(
        ("V", 2), tail, n
    )
print("whole-stream audit: 40 bits; L=1, A=7, X=8; correlated laws pass")

# These are the nine displayed callback equations in the whole-stream proof.
# The list is fixed: it checks no other syntax and proves no quantified bound.
j = ("V", 1)
c = ("V", 2)
identity = handler(r"\i. i")
delta = handler(r"\v. v v")
constant_k = handler(r"\u.\a.\b. a")
callback_equations = [
    ("a I j", r"\a. a (\i.i) j", 16, r),
    ("a j I", r"\a. a j (\i.i)", 16, app(j, r)),
    ("a (j I)", r"\a. a (j (\i.i))", 16, app(j, identity)),
    ("j (a I)", r"\a. j (a (\i.i))", 16,
     app(j, app(lc.TRUE, identity), r)),
    ("j a I", r"\a. j a (\i.i)", 16, app(j, lc.TRUE, identity, r)),
    ("j I a", r"\a. j (\i.i) a", 16, app(j, identity, lc.TRUE, r)),
    ("constant delta", r"\u.\v. v v", 10, app(r, r)),
    ("nested constant", r"\v. v (\u.v)", 11, constant_k),
    ("constant j delta", r"\u. j (\v.v v)", 16, app(j, delta, r)),
]
for name, source, size, expected in callback_equations:
    term = handler(source)
    l, a, x = counts(term)
    assert lc.size(term) == size == 2 * l + 4 * a + 2 + x, name
    assert normal(app(zero_stream, term)) == normal(expected), name

# The head-value relation uses precisely this first variable stream.
terminal = lc.pair(lc.TRUE, n)
one_stream = lc.pair(lc.FALSE, terminal)
data_equations = [
    ("P P", app(zero_stream, zero_stream), app(lc.TRUE, r)),
    ("Q Q", app(one_stream, one_stream), app(lc.TRUE, n)),
    ("P R", app(zero_stream, r), app(r, lc.TRUE, r)),
    ("Q T", app(one_stream, terminal), app(n, terminal)),
    ("P delta", app(zero_stream, delta), lc.TRUE),
    # A compound pending j/c argument leaves bare K in the nonlinear case.
    ("K K R R", app(lc.TRUE, lc.TRUE, r, r), app(lc.TRUE, r)),
]
for name, term, expected in data_equations:
    assert normal(term) == normal(expected), name

# These are the two exact zero-compatible A=3 tag-return shapes.
tag_return_shapes = [
    r"\a.\b.\d. s (\u.u) c j",
    r"\a.\b.\d. s (\u.a) c j",
]
for source in tag_return_shapes:
    term = handler(source)
    assert normal(app(lc.subst(0, zero_stream, term), lc.TRUE, r, r)) == app(r, j)
    assert normal(
        app(lc.subst(0, one_stream, term), lc.FALSE, terminal, n)
    ) == app(c, j)

print("whole-stream proof audit: nine callback sizes/equations, six data equations, "
      "two tag-return shapes pass")
print("PASS: five explicit witnesses and fixed proof equations; no enumeration")
