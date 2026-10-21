#!/usr/bin/env python3
"""Targeted, single-threaded symbolic checks for the overnight knot lane."""
from pathlib import Path
import json
import os
import sys
import time

HERE = Path(__file__).resolve().parent
ROOT = HERE.parents[2]
sys.dont_write_bytecode = True
os.environ['TMPDIR'] = str(HERE)
os.environ['RAYON_NUM_THREADS'] = '2'
sys.path[:0] = [str(ROOT / 'tools'), str(ROOT / 'tools/self-interpreter')]
import blcc
import lc
import battery


def parse(src, free=()):
    p = blcc.P(blcc.strip_comments(src))
    named = blcc.p_lc(p)
    p.ws()
    assert p.i == len(p.t)
    return blcc.to_db(named, tuple(free))


def counters(t):
    if t[0] == 'V':
        return 0, 0, t[1]
    if t[0] == 'L':
        l, a, x = counters(t[1])
        return l + 1, a, x
    l, a, x = counters(t[1])
    m, b, y = counters(t[2])
    return l + m, a + b + 1, x + y


def normal(t, cap=10000):
    return lc.nf(t, [cap])


def equation(lhs, rhs, free):
    got, want = normal(parse(lhs, free)), normal(parse(rhs, free))
    assert got == want, (lhs, lc.show(got), rhs, lc.show(want))


def compile_and_check(path, max_bits=18):
    src = path.read_text()
    term = parse(src)
    bits = lc.enc(term)
    path.with_suffix('.blc').write_text(bits + '\n')
    before = time.monotonic()
    ok, skip, bad = battery.check(term, threads=2, max_bits=max_bits)
    record = dict(file=path.name, bits=len(bits), LAX=counters(term), ok=ok,
                  skip=skip, fail=len(bad), failures=bad,
                  elapsed_seconds=time.monotonic()-before)
    print(f"{len(bits)} bits  ok={ok} skip={skip} fail={len(bad)}  {path.name}", flush=True)
    return record


def small_carriers():
    # All terms in the single-free-variable frame [t], through the proposed
    # 12-bit optimum. Exactly this delimited small hole, not interpreter search.
    reader = parse(r'\q.\c.\s.s (\b.b (\u.\r.r q) c) (s s s)')
    t, q, c = ('V', 0), ('V', 1), ('V', 2)
    want = ('A', t, t)
    reports = []
    for size in range(2, 13):
        count = 0
        winners = []
        capped = []
        absent = 0
        for carrier in battery.closed_terms(size, 1):
            count += 1
            if not blcc.occurs(0, carrier):
                # Neither reader nor carrier then contains rigid t; beta
                # reduction cannot introduce it. This is a refutation,
                # independent of whether the probe normalizes.
                absent += 1
                continue
            probe = ('A', ('A', ('A', reader, q), c), carrier)
            try:
                got = normal(probe, cap=1000)
            except lc.Fuel:
                capped.append(lc.show(carrier, names=['t']))
                continue
            if got == want:
                winners.append(lc.show(carrier, names=['t']))
        reports.append(dict(bits=size, count=count, rejected_absent_t=absent,
                            winners=winners, capped=capped))
    (HERE / 'carrier_check.json').write_text(json.dumps(reports, indent=2)+'\n')
    print(json.dumps(reports, indent=2))


if __name__ == '__main__':
    if sys.argv[1:] == ['carriers']:
        small_carriers()
    else:
        records = [compile_and_check(HERE / f) for f in sys.argv[1:]]
        (HERE / 'battery.json').write_text(json.dumps(records, indent=2)+'\n')
