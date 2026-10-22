r"""Symbolic evaluation of E_B C (<M> ++ N) with the knot unfolded on demand.

Scope of symbolic terms (free de Bruijn indices): 0 = N (rigid tail),
1 = C (rigid root continuation), 2 = P (the parser p = x x), 3 = G (the
generator x).  P and G are rigid leaves that the head reducer unfolds
only when they stand at the head with enough arguments:

    P X Y rest      ->  B[list := Y, cont := X, intL := P, x := G] rest
    G X Y Z rest    ->  B[list := Z, cont := Y, intL := X X, x := G] rest

which is exactly what p = (\x. x x) G and G do, so a head reduction here
is a head reduction of the real closed probe, with the knot's syntactic
unfolding replaced by a single substitution into the reader body B.

B is given as an open de Bruijn term over the frame [list, cont, intL, x]
(indices 0..3).  Results: ('rigid', i, args) | ('abs', term) |
('fuel', None) | ('big', None).
"""
import sys
from pathlib import Path

HERE = Path(__file__).resolve().parent
sys.path.insert(0, str(HERE))
from frame import *  # noqa
import lc

N_, C_, P_, G_ = ("V", 0), ("V", 1), ("V", 2), ("V", 3)


def nodes(t):
    if t[0] == "V":
        return 1
    if t[0] == "L":
        return 1 + nodes(t[1])
    return 1 + nodes(t[1]) + nodes(t[2])


def inst4(B, s, k, p, g):
    """B[list := s, cont := k, intL := p, x := g], all in the symbolic scope."""
    return inst(B, [s, k, p, g])


class Sym:
    def __init__(self, B, cap=40000):
        self.B = B
        self.cap = cap
        self.unfolds = 0

    def whnf(self, t, fuel):
        """Head-reduce with on-demand unfolding.  Returns (kind, payload, args, steps)."""
        steps = 0
        spine = []
        while True:
            if t[0] == "A":
                spine.append(t[2])
                t = t[1]
                continue
            if t[0] == "L":
                if not spine:
                    return ("abs", t, [], steps)
                if steps >= fuel:
                    return ("fuel", None, None, steps)
                a = spine.pop()
                t = lc.beta(t, a)
                steps += 1
                if nodes(t) > self.cap:
                    return ("big", None, None, steps)
                continue
            # variable head
            i = t[1]
            if i == 2 and len(spine) >= 2:          # P X Y
                if steps >= fuel:
                    return ("fuel", None, None, steps)
                X = spine.pop()
                Y = spine.pop()
                t = inst4(self.B, Y, X, P_, G_)
                steps += 1
                self.unfolds += 1
                continue
            if i == 3 and len(spine) >= 3:          # G X Y Z
                if steps >= fuel:
                    return ("fuel", None, None, steps)
                X = spine.pop()
                Y = spine.pop()
                Z = spine.pop()
                t = inst4(self.B, Z, Y, ("A", X, X), G_)
                steps += 1
                self.unfolds += 1
                continue
            return ("rigid", i, list(reversed(spine)), steps)

    def nf(self, t, fuel):
        """Full normal form with unfolding; None on fuel/size exhaustion."""
        kind, h, args, steps = self.whnf(t, fuel[0])
        fuel[0] -= steps
        if kind in ("fuel", "big"):
            return None
        if kind == "abs":
            b = self.nf(h[1], fuel)
            return None if b is None else ("L", b)
        r = ("V", h)
        for a in args:
            na = self.nf(a, fuel)
            if na is None:
                return None
            r = ("A", r, na)
        return r


def probe_sym(B, M, fuel_head=600, fuel_nf=3000, cap=40000):
    """Run E_B C (<M> ++ N) symbolically.  Returns one of
    'ok' | 'WRONG:<why>' | 'fuel' | 'big'."""
    S = Sym(B, cap)
    stream = bits(code(M), N_)
    t = inst4(B, stream, C_, P_, G_)
    kind, h, args, steps = S.whnf(t, fuel_head)
    if kind == "fuel":
        return "fuel"
    if kind == "big":
        return "big"
    if kind == "abs":
        return "WRONG:abs"
    if h != 1:
        return "WRONG:head%d" % h
    if len(args) != 2:
        return "WRONG:arity%d" % len(args)
    want_val = lc.nf(("L", shift(1, 0, M)), [fuel_nf])   # \z. M in the scope (M closed)
    f = [fuel_nf]
    v = S.nf(args[0], f)
    if v is None:
        return "fuel"
    if v != want_val:
        return "WRONG:value"
    r = S.nf(args[1], f)
    if r is None:
        return "fuel"
    if r != N_:
        return "WRONG:rest"
    return "ok"


PROGS_SYM = [r"\x. x", r"\x \y. x", r"(\x. x) (\x. x)", r"\x. x x", r"\x \y. y x",
             r"\x. (\y. y) x"]


def check_B(B, progs=PROGS_SYM, **kw):
    out = []
    for p in progs:
        M = parse(p)
        r = probe_sym(B, M, **kw)
        out.append(r)
        if r.startswith("WRONG"):
            break
    return out


if __name__ == "__main__":
    import time
    B162 = B_term(r"list (\a. a) (\u. list (\q. cont) (list list u)) NEXT")
    t0 = time.time()
    print("162:", check_B(B162), time.time() - t0)
    Bbad = B_term(r"list (\a. a) NEXT")
    print("list I NEXT:", check_B(Bbad))
    B164 = B_term(r"list (\b. b (\x \y. y) cont) (list (\a. a) (list list) NEXT)")
    print("164:", check_B(B164))
    # the 157 refuted (NEXT in place of K cont) and 161 (NEXT NEXT)
    B157 = B_term(r"list (\a. a) (\u. list NEXT (list list u)) NEXT")
    print("157:", check_B(B157))
    Bloop = B_term(r"list (\a. a) (\u. intL cont list) NEXT")
    print("loop:", check_B(Bloop))
