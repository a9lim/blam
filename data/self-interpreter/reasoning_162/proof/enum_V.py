r"""Exhaustive check of the variable arm in the shape  list I V NEXT.

Every de Bruijn term V of <= SMAX bits over the frame [list, cont, intL, x]
(all four names allowed, arbitrary internal binders, not restricted to
beta-normal) is spliced into

    B = list (\a. a) V NEXT

and tested against necessary consequences of the contract.

Stage 1 (symbolic, sound filter).  On the program \x.x the root call is
  E C (0010 N) ->* NEXT K (10 N) ->* B[p, k1, 10 N] ->* V' NEXT'
with k1 = \e. C (\args \arg. e (cell arg args)), s = 10 N, and the real
parser p.  We head-reduce V' NEXT' with intL := P and x := G *rigid*
(every step is also a step of the real term, since substitution preserves
reduction), and with N, C rigid.  The required value is C (\z \a. a) N.
  - hnf head N, or an abstraction, or head C with != 2 arguments: refuted
    (a rigid head / abstraction / arity survives substitution of p, G).
  - head C with 2 arguments: pass to stage 2.
  - head P or G, or fuel exhausted: pass to stage 2 (unknown).
Stage 2 (exact).  Full probe E_B C (<M> ++ N) with the Python normalizer on
\x.x, \x\y.x, (\x.x)(\x.x), \x.x x; fuel-outs are reported as capped.

    enum_V.py SMAX [SMIN]      sizes SMIN..SMAX (default 2..SMAX)
"""
import sys, time, functools
sys.path.insert(0, "/Users/a9lim/Work/blam/tmp/round3/proof")
from frame import *
import lc

SMAX = int(sys.argv[1]) if len(sys.argv) > 1 else 21
SMIN = int(sys.argv[2]) if len(sys.argv) > 2 else 2
FUEL1 = int(sys.argv[3]) if len(sys.argv) > 3 else 120

sys.setrecursionlimit(100000)


@functools.lru_cache(None)
def terms(n, k):
    """DB terms of exactly n bits with free indices < k."""
    res = []
    if n >= 2 and n - 2 < k:
        res.append(("V", n - 2))
    if n >= 4:
        res += [("L", b) for b in terms(n - 2, k + 1)]
        for i in range(2, n - 3):
            res += [("A", f, a) for f in terms(i, k) for a in terms(n - 2 - i, k)]
    return tuple(res)


# outer rigid scope for stage 1: [N, C, P, G] = indices 0,1,2,3
RIG = ("N", "C", "P", "G")
k1 = parse(r"\e. C (\args \arg. e (\zx \zy. zx arg (zy args)))", free=RIG)
Pr = parse("P", free=RIG)
Gr = parse("G", free=RIG)
Nr = parse("N", free=RIG)
S1 = var_stream(1, Nr)                       # 1 0 N
ENV1 = [S1, k1, Pr, Gr]                      # list, cont, intL, x
NEXT_open = parse(NEXT_SRC, free=FRAME)      # over [list, cont, intL, x]
NEXT1 = inst(NEXT_open, ENV1)                # NEXT with cont := k1, intL := P

want_val = parse(r"\z \a. a")                # normal form of the value


def stage1(V):
    Vp = inst(V, ENV1)
    T = ("A", Vp, NEXT1)
    h, args, steps = head_form(T, FUEL1)
    if h is None:
        return "fuel"
    if h[0] == "L":
        return "abs"
    i = h[1]
    if i == 0:                               # N
        return "headN"
    if i == 1:                               # C
        return "C2" if len(args) == 2 else "Carity"
    return "stuck"                           # P or G headed


from sym import check_B
def stage2(V):
    B = ("A", ("A", ("A", ("V", 0), I), V), NEXT_open)
    return check_B(B, fuel_head=400, fuel_nf=2000, cap=20000)


if __name__ == "__main__":
    t0 = time.time()
    total = 0
    tally = {}
    survivors = []
    capped = []
    for n in range(SMIN, SMAX + 1):
        for V in terms(n, 4):
            total += 1
            r = stage1(V)
            tally[r] = tally.get(r, 0) + 1
            if r in ("C2", "stuck", "fuel"):
                r2 = stage2(V)
                if any(x.startswith("WRONG") for x in r2):
                    tally["s2wrong"] = tally.get("s2wrong", 0) + 1
                elif any(x in ("fuel", "big") for x in r2):
                    capped.append((n, V, r, r2))
                else:
                    survivors.append((n, V, r, r2))
        print(f"size {n} done: total {total} tally {tally} "
              f"survivors {len(survivors)} capped {len(capped)} "
              f"t={time.time()-t0:.1f}s", flush=True)
    print("== survivors (pass all stage-2 probes):")
    for n, V, r, r2 in survivors:
        print(n, show(V, free=FRAME), r, r2)
    print("== capped (fuel in stage 2):")
    for n, V, r, r2 in capped:
        print(n, show(V, free=FRAME), r, r2)
    print(f"total {total}  time {time.time()-t0:.1f}s")
