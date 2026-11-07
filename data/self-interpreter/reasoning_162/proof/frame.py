r"""Frame F162: the 162's knot and NEXT fixed, the reader body B free.

    E_B = (\x. x x) (\x. (\intL. \cont. \list. B) (x x))

B is a term over the frame [list, cont, intL, x] (innermost first) that
contains NEXT.  This module builds E_B from a context source, splices the
real NEXT, runs the exact contract probe (Python normalizer or blam), and
provides symbolic instantiation (streams for `list`, rigid names for the
rest) for cheap necessary-condition filters.

Conventions: de Bruijn terms as in tools/self-interpreter/lc.py:
('V', i) | ('L', t) | ('A', f, a).  Named sources use blcc's .lam syntax.
"""
import sys
from pathlib import Path

HERE = Path(__file__).resolve().parent
sys.path.insert(0, str(HERE))
from lab import *  # noqa: F401,F403  (parse, nf, whnf, show, size, bits, cons, K, F, I, shift, app, ...)
import lc

NEXT_SRC = (r"(\bit1. intL (\exp. bit1"
            r" (cont (\args \arg. exp (\zx \zy. zx arg (zy args))))"
            r" (intL (\exp2. cont (\args. exp args (exp2 args))))))")

KNOT = r"(\x. x x) (\x. (\intL. \cont. \list. %s) (x x))"

FRAME = ("list", "cont", "intL", "x")          # innermost first


def E_src(B_src):
    """Full .lam source of E_B for a reader body written with the names
    list, cont, intL, x and the macro NEXT."""
    return KNOT % B_src.replace("NEXT", NEXT_SRC)


def E_term(B_src):
    return parse(E_src(B_src))


def B_term(B_src, free=FRAME):
    """B as an open de Bruijn term over the frame (NEXT spliced)."""
    return parse(B_src.replace("NEXT", NEXT_SRC), free=free)


def ctx_term(C_src, free=FRAME):
    """Context with the hole named NEXT kept as a free leaf `hole`
    (index 4 in the frame [list, cont, intL, x, hole])."""
    return parse(C_src.replace("NEXT", "hole"), free=tuple(free) + ("hole",))


def hole_depth(t, hole_idx=4, depth=0):
    """Depths (number of enclosing lambdas) of each hole occurrence."""
    if t[0] == "V":
        return [depth] if t[1] == hole_idx + depth else []
    if t[0] == "L":
        return hole_depth(t[1], hole_idx, depth + 1)
    return hole_depth(t[1], hole_idx, depth) + hole_depth(t[2], hole_idx, depth)


def weighted(C_src):
    """|C| + 4d for a one-hole context (NEXT written as the macro)."""
    t = ctx_term(C_src)
    ds = hole_depth(t)
    assert len(ds) == 1, ds
    # the hole leaf costs 2 + 4 + d in ctx_term; subtract it
    return size(t) - (2 + 4 + ds[0]) + 4 * ds[0], ds[0]


def probe_py(E, Msrc, fuel=300000):
    """Exact contract on one program via the Python normalizer.
    Returns 'ok' | 'WRONG' | 'fuel'."""
    M = parse(Msrc) if isinstance(Msrc, str) else Msrc
    want = ("L", ("L", ("A", ("A", ("V", 1), ("L", shift(3, 0, M))), ("V", 0))))
    got = ("L", ("L", ("A", ("A", shift(2, 0, E), ("V", 1)), bits(code(M), ("V", 0)))))
    w = nf(want, fuel)
    g = nf(got, fuel)
    if g is None:
        return "fuel"
    return "ok" if g == w else "WRONG"


PROGS = [r"\x. x", r"\x \y. x", r"\x \y. y", r"(\x. x) (\x. x)", r"\x. x x",
         r"\x \y. y x", r"\x. (\y. y) x", r"(\x. x) (\x \y. x)"]


def quick(B_src, progs=PROGS, fuel=300000):
    E = E_term(B_src)
    return size(E), [probe_py(E, p, fuel) for p in progs]


# ---- symbolic instantiation -------------------------------------------
# Frame for symbolic work: [list, cont, intL, x] bound by the names below;
# rigid names after the frame are appended as extra free variables.

def var_stream(n, N):
    """1^n 0 ++ N as a Scott stream (N a de Bruijn term, shifted as needed)."""
    t = cons(K, N)
    for _ in range(n):
        t = cons(F, t)
    return t


def inst(B, env):
    """Substitute the frame variables of B (free indices 0..len(env)-1,
    innermost first) by the terms in env; env terms live in the outer
    scope (indices relative to the scope outside the frame)."""
    n = len(env)
    # build (\v0 ... \v_{n-1}. B) e_{n-1} ... e_0  and beta-reduce the heads
    t = B
    for _ in range(n):
        t = ("L", t)
    for e in reversed(env):
        t = ("A", t, e)
    for _ in range(n):
        t = lc.beta(t[1], t[2]) if t[0] == "A" and t[1][0] == "L" else t
    return t


def head_form(t, fuel=200):
    """Head-reduce with fuel.  Returns (head, args, steps) where head is
    ('V', i) for a rigid/free head, ('L', ...) for an abstraction, or None
    on fuel exhaustion.  args is the list of argument terms."""
    steps = 0
    spine = []
    while True:
        if t[0] == "A":
            spine.append(t[2])
            t = t[1]
            continue
        if t[0] == "L":
            if not spine:
                return (t, [], steps)
            if steps >= fuel:
                return (None, None, steps)
            a = spine.pop()
            t = lc.beta(t, a)
            steps += 1
            continue
        return (t, list(reversed(spine)), steps)
