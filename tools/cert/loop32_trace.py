#!/usr/bin/env python3
r"""Independent verification of the loop32 head-reduction pattern.

Hypothesis (hand-trace): with
  A  = \x. x x (\y. y x)          (de Bruijn: \. 1 1 (\. 1 2))
  C0 = \_. A                      (K A)
  W[Z] = \y. y Z                  (Z closed)
loop32 = (\x. x (\_. x)) A  head-reduces through the milestone states
  A C0 -> A W[C0] -> A W[W[C0]] -> ...   i.e. A . tower(n) for n = 0,1,2,...
with every intermediate state NOT of the form A . <anything else>.

This is a from-scratch reducer (plain tuples, no repo code) so it can't
share a bug with the Rust engine. 1-indexed de Bruijn to match the repo.
"""

import sys
sys.setrecursionlimit(1_000_000)

BITS = "01000110001100001011010000110110"  # loop32, 32 bits

# terms: ('v', n) | ('l', body) | ('a', f, x)

def parse(bits, i=0):
    if bits[i] == '0':
        if bits[i + 1] == '0':
            b, j = parse(bits, i + 2)
            return ('l', b), j
        f, j = parse(bits, i + 2)
        x, k = parse(bits, j)
        return ('a', f, x), k
    n = 0
    while bits[i] == '1':
        n += 1
        i += 1
    return ('v', n), i + 1  # 1^n 0 = var n, 1-indexed

def shift(t, d, cutoff=0):
    tag = t[0]
    if tag == 'v':
        return ('v', t[1] + d) if t[1] > cutoff else t
    if tag == 'l':
        return ('l', shift(t[1], d, cutoff + 1))
    return ('a', shift(t[1], d, cutoff), shift(t[2], d, cutoff))

def subst(t, j, s):
    """replace Var j by s, decrement free vars > j"""
    tag = t[0]
    if tag == 'v':
        if t[1] == j:
            return s
        return ('v', t[1] - 1) if t[1] > j else t
    if tag == 'l':
        return ('l', subst(t[1], j + 1, shift(s, 1)))
    return ('a', subst(t[1], j, s), subst(t[2], j, s))

def step(t):
    """one HEAD step, None if head normal form.

    Head-only on purpose: no descent into application arguments. The
    certificate's soundness backbone is infinite *head* reduction, so
    the reference must never take a non-head step (Codex review caught
    an arg-descent branch here; it was never exercised by loop32, but
    the discipline must be head-only by construction)."""
    tag = t[0]
    if tag == 'v':
        return None
    if tag == 'l':
        b = step(t[1])
        return ('l', b) if b is not None else None
    f, x = t[1], t[2]
    if f[0] == 'l':
        return subst(f[1], 1, x)
    fs = step(f)
    if fs is not None:
        return ('a', fs, x)
    return None

A = ('l', ('a', ('a', ('v', 1), ('v', 1)), ('l', ('a', ('v', 1), ('v', 2)))))
C0 = ('l', A)  # A closed, no shift needed

def tower_index(t):
    """n if t == W^n[C0], else None"""
    k = 0
    while True:
        if t == C0:
            return k
        if t[0] == 'l' and t[1][0] == 'a' and t[1][1] == ('v', 1):
            t = t[1][2]
            k += 1
        else:
            return None

def main(nsteps=6000):
    t, consumed = parse(BITS)
    assert consumed == len(BITS), "did not consume all bits"
    # sanity: term is (F A) with F = \x. x (\_. x)
    F = ('l', ('a', ('v', 1), ('l', ('v', 2))))
    assert t == ('a', F, A), "parse does not match expected (F A)"
    print(f"parsed loop32 ok: (F A), F=\\x.x(\\_.x), A=\\x.x x(\\y.y x)")

    milestones = []   # (step_index, tower_n)
    anomalies = []    # A-headed states whose arg is not a tower
    for i in range(nsteps):
        if t[0] == 'a' and t[1] == A:
            n = tower_index(t[2])
            if n is None:
                anomalies.append(i)
            else:
                milestones.append((i, n))
        t2 = step(t)
        if t2 is None:
            print(f"HEAD NORMAL FORM at step {i} — hypothesis DEAD")
            return
        t = t2

    ns = [n for _, n in milestones]
    print(f"steps run: {nsteps}")
    print(f"milestones (A applied to tower): {len(milestones)}")
    print(f"tower indices: {ns[:12]}{' ...' if len(ns) > 12 else ''}")
    print(f"strictly consecutive from 0: {ns == list(range(len(ns)))}")
    print(f"anomalous A-headed states: {len(anomalies)}")
    gaps = [b - a for (a, _), (b, _) in zip(milestones, milestones[1:])]
    print(f"cycle lengths: {gaps[:12]}{' ...' if len(gaps) > 12 else ''}")
    pred = [2 * n + 2 for _, n in milestones[:-1]]
    print(f"cycle length == 2n+2 for all cycles: {gaps == pred}")

if __name__ == "__main__":
    main()
