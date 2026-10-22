#!/usr/bin/env python3
"""Fixed review checks only; no candidate enumeration and no file writes."""
import hashlib
import json
import sys
import time
from collections import Counter
from pathlib import Path

sys.dont_write_bytecode = True
ROOT = Path(__file__).resolve().parents[4]
sys.path.insert(0, str(ROOT / 'tmp/round3/floor'))
import checks


def replace(t, needle, value):
    if t == needle:
        return value
    if t[0] == 'var':
        return t
    if t[0] == 'lam':
        return ('lam', t[1], replace(t[2], needle, value))
    return ('app', replace(t[1], needle, value), replace(t[2], needle, value))


def hole_cost(t, frame, hole):
    if t[0] == 'var':
        return 0 if t[1] == hole else frame.index(t[1]) + 2
    if t[0] == 'lam':
        return 2 + hole_cost(t[2], (t[1],) + frame, hole)
    return 2 + hole_cost(t[1], frame, hole) + hole_cost(t[2], frame, hole)


def free_counts(t, depth=0):
    if t[0] == 'V':
        return Counter({t[1] - depth: 1}) if t[1] >= depth else Counter()
    if t[0] == 'L':
        return free_counts(t[1], depth + 1)
    return free_counts(t[1], depth) + free_counts(t[2], depth)


def hole_depths(t, hole, depth=0):
    if t[0] == 'var':
        return [depth] if t[1] == hole else []
    if t[0] == 'lam':
        assert t[1] != hole
        return hole_depths(t[2], hole, depth + 1)
    return hole_depths(t[1], hole, depth) + hole_depths(t[2], hole, depth)


def tag_two_arms(t, index=0):
    if t[0] == 'L':
        return tag_two_arms(t[1], index + 1)
    args = []
    head = t
    while head[0] == 'A':
        args.append(head[2])
        head = head[1]
    assert head[0] == 'V'
    return (head[1] != index or len(args) == 2) and all(
        tag_two_arms(a, index) for a in args
    )


def main():
    start = time.monotonic()
    rows = checks.collect()  # Import/collect avoids the writer in __main__.
    generated = checks.PREAMBLE
    for label, t, k, u in checks.FACTS:
        generated += (
            f'theorem {label} : Betas {checks.lean(t)} {checks.lean(u)} :=\n'
            f'  normalSteps_sound (by decide : normalSteps {k} {checks.lean(t)}'
            f' = some {checks.lean(u)})\n\n'
        )
    for label, t, size, occs in checks.WIRE_FACTS:
        generated += f'theorem {label}_size : (blcCode {checks.lean(t)}).length = {size} := by decide\n'
        generated += f'theorem {label}_free : SelfintLowerBound.freeLeaves 0 {checks.lean(t)} = {occs} := by decide\n\n'
    generated += 'end Blc.Round3Floor\n'
    assert generated == (ROOT / 'tmp/round3/floor/Facts.lean').read_text()

    knot = checks.op(r'(\x.x x) (\x.h (x x))', ('h',))
    q0 = checks.op(
        r'\b.p (\f.b (c (\e\a.f (\d\r.d a (r e)))) (p (\g.c (\e.f e (g e)))))',
        ('c', 'p'),
    )
    memberships = []
    for size in (162, 165):
        whole = checks.named((ROOT / f'data/self-interpreter/machines/int{size}.lam').read_text())
        h = whole[2][2][1]
        q = checks.find_next(h)
        t = replace(whole, h, ('var', 'opaque_h'))
        assert checks.blcc.to_db(t, ('opaque_h',)) == knot
        assert hole_depths(t, 'opaque_h') == [1]
        assert hole_cost(t, ('opaque_h',), 'opaque_h') == 20
        assert not free_counts(checks.blcc.to_db(h))
        assert checks.blcc.to_db(q, ('cont', 'intL')) == q0
        r = replace(h[2][2], q, ('var', 'opaque_j'))
        depths = hole_depths(r, 'opaque_j')
        assert len(depths) == 1
        d = depths[0]
        cost = hole_cost(r, ('cont', 'intL'), 'opaque_j')
        assert (cost, d) == ((42, 1) if size == 162 else (49, 0))
        assert size == 116 + cost + 4 * d
        memberships.append(dict(size=size, cost=cost, depth=d, weight=cost + 4 * d))

    forms = []
    for label, q, size, total in checks.WIRE_FACTS:
        counts = free_counts(q)
        assert set(counts) == {0, 1} and counts[0] >= 2 and counts[1] >= 2
        assert q[0] == 'L' and tag_two_arms(q[1])
        assert checks.lc.size(checks.lc.shift(1, 0, q)) == size + total
        forms.append(dict(name=label, size=size, c=counts[0], p=counts[1]))

    paths = [
        'tmp/round3/floor/floor138.md', 'tmp/round3/floor/literal-interface.md',
        'tmp/round3/floor/REPORT.md', 'tmp/round3/floor/checks.py',
        'tmp/round3/floor/Facts.lean',
    ]
    print(json.dumps(dict(
        fixed_beta_traces=len(checks.FACTS), wire_facts=2 * len(forms),
        generated_facts_match=True, accounting=rows, membership=memberships,
        next_forms=forms,
        sha256={p: hashlib.sha256((ROOT / p).read_bytes()).hexdigest() for p in paths},
        seconds=time.monotonic() - start,
    ), indent=2))


if __name__ == '__main__':
    main()
