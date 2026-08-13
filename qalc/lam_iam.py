"""Authoritative Python λIAM substrate for the qALC reference machine.

Implements token.md §2's eight rules exactly, on de Bruijn terms
(1-indexed, repo convention). Positions are root paths: 'f' = app
function, 'a' = app argument, 'b' = lam body. Level of a position =
number of 'a' steps in its path. Logged position = (occ_path, log_slice)
where occ_path is the occurrence's absolute path and log_slice has
length = level(occ_path) - level(binder_path)... per the paper: the
slice covers the level of D_n (binder-to-occurrence context).

The Rust pillar must reproduce this transition surface exactly before any
optimized engine is trusted.
"""

from dataclasses import dataclass
from typing import Optional, Union, Tuple

# ---- terms ----
@dataclass(frozen=True)
class Var: i: int
@dataclass(frozen=True)
class Lam: body: object
@dataclass(frozen=True)
class App: f: object; a: object
@dataclass(frozen=True)
class Gate: name: str  # 'h' or 't' constant leaf

def show(t):
    if isinstance(t, Var): return str(t.i)
    if isinstance(t, Lam): return f"\\{show(t.body)}"
    if isinstance(t, App): return f"({show(t.f)} {show(t.a)})"
    if isinstance(t, Gate): return t.name
    raise ValueError(t)

def subterm(t, path):
    for c in path:
        if c == 'f': t = t.f
        elif c == 'a': t = t.a
        elif c == 'b': t = t.body
    return t

def level(path):
    return path.count('a')

def binder_path(term, occ_path):
    """Absolute path of the lambda binding Var(i) at occ_path."""
    i = subterm(term, occ_path).i
    p = occ_path
    seen = 0
    while True:
        parent = p[:-1]
        step = p[-1]
        if step == 'b' and isinstance(subterm(term, parent), Lam):
            seen += 1
            if seen == i:
                return parent
        p = parent
        if not p and seen < i:
            raise ValueError("free variable")

# ---- token state ----
# tape/log entries: '•' or ('L', occ_path, log_slice_tuple) or custom marks
BULLET = '•'

@dataclass(frozen=True)
class State:
    path: tuple      # position as tuple of chars
    d: str           # 'D' (down) or 'U' (up)
    log: tuple       # tuple of logged positions, head first
    tape: tuple      # tuple of entries, head first

def is_lp(e): return isinstance(e, tuple) and e and e[0] == 'L'

def step_classical(term, s: State) -> Optional[Tuple[str, State]]:
    """One λIAM step; returns (rule, state) or None (no classical rule)."""
    t = subterm(term, s.path)
    if s.d == 'D':
        if isinstance(t, App):                                   # •1
            return ('b1', State(s.path + ('f',), 'D', s.log, (BULLET,) + s.tape))
        if isinstance(t, Lam) and s.tape and s.tape[0] == BULLET:  # •2
            return ('b2', State(s.path + ('b',), 'D', s.log, s.tape[1:]))
        if isinstance(t, Var):                                   # var
            bp = binder_path(term, s.path)
            n = level(s.path) - level(bp)   # 'a'-steps between binder and occurrence
            assert len(s.log) >= n, "log too short"
            lp = ('L', s.path, s.log[:n])
            return ('var', State(bp, 'U', s.log[n:], (lp,) + s.tape))
        if isinstance(t, Lam) and s.tape and is_lp(s.tape[0]):   # bt2
            lp = s.tape[0]
            _, occ, slice_ = lp
            if binder_path(term, occ) == s.path:
                return ('bt2', State(occ, 'U', tuple(slice_) + s.log, s.tape[1:]))
            return None  # logged position not for this binder: stuck/other
        return None
    else:  # 'U'
        if not s.path:
            return None  # at root going up: boundary (driver territory)
        parent, last = s.path[:-1], s.path[-1]
        if last == 'f':
            if s.tape and s.tape[0] == BULLET:                   # •3
                return ('b3', State(parent, 'U', s.log, s.tape[1:]))
            if s.tape and is_lp(s.tape[0]):                      # arg
                lp = s.tape[0]
                return ('arg', State(parent + ('a',), 'D', (lp,) + s.log, s.tape[1:]))
            return None
        if last == 'b':                                          # •4
            return ('b4', State(parent, 'U', s.log, (BULLET,) + s.tape))
        if last == 'a':                                          # bt1
            assert s.log, "bt1 with empty log"
            lp = s.log[0]
            return ('bt1', State(parent + ('f',), 'D', s.log[1:], (lp,) + s.tape))
        return None

def run_classical(term, s: State, max_steps=10000, trace=False):
    hist = [(None, s)]
    for k in range(max_steps):
        r = step_classical(term, s)
        if r is None:
            return hist
        rule, s = r
        hist.append((rule, s))
    raise RuntimeError("step budget exceeded")

def fmt_entry(e):
    if e == BULLET: return '•'
    if is_lp(e): return f"L[{''.join(e[1]) or 'ε'}|{len(e[2])}]"
    return str(e)

def fmt(term, s: State):
    return (f"{''.join(s.path) or 'ε':12s} {s.d}  "
            f"log=[{','.join(fmt_entry(e) for e in s.log)}]  "
            f"tape=[{','.join(fmt_entry(e) for e in s.tape)}]  "
            f"code={show(subterm(term, s.path))}")

# ---- sanity: the paper's own example, I((λx.xx)I) ----
if __name__ == '__main__':
    I = Lam(Var(1))
    ex = App(I, App(Lam(App(Var(1), Var(1))), I))
    s0 = State((), 'D', (), ())
    h = run_classical(ex, s0, trace=True)
    print(f"steps: {len(h)-1}")
    for rule, st in h:
        print(f"{rule or 'init':5s} {fmt(ex, st)}")
    # expect: ends at the second I (path 'a'+'a'? the argument I),
    # direction D, at a Lam with empty tape — whnf head found
