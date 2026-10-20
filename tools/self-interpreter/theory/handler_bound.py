#!/usr/bin/env python3
"""Check the explicit witnesses in docs/classical/self-interpreter/handler-bound.md.

This is not a term search or a mechanical proof of the universal bound.
The reductions are small open terms with independent rigid neighbours.
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

print("PASS: four explicit witnesses; no enumeration")
