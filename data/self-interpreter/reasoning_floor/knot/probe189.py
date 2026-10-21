#!/usr/bin/env python3
"""Bounded symbolic head trace of the previously unresolved 189-bit carrier."""
from checks import *


def head_step(t):
    if t[0] != 'A':
        return None
    if t[1][0] == 'L':
        return lc.beta(t[1], t[2])
    u = head_step(t[1])
    return None if u is None else ('A', u, t[2])


def run():
    src = (ROOT / 'data/self-interpreter/reasoning_165/knot/one_binder_carrier.lam').read_text()
    t = parse(src)
    seen = {}
    history = []
    start = time.monotonic()
    for i in range(600):
        f = t
        while True:
            if f in seen:
                out = dict(kind='head_prefix_loop', step=i, prior_step=seen[f],
                           bits=lc.size(t), seconds=time.monotonic()-start)
                (HERE / 'probe189.json').write_text(json.dumps(out, indent=2)+'\n')
                (HERE / 'probe189_trace.json').write_text(json.dumps(history+[t])+'\n')
                print(out)
                return
            if f[0] != 'A':
                break
            f = f[1]
        seen[t] = i
        history.append(t)
        u = head_step(t)
        if u is None:
            print(dict(kind='head_normal_form', step=i, bits=lc.size(t),
                       seconds=time.monotonic()-start))
            return
        t = u
        if i % 20 == 0 and lc.size(t) > 100000:
            print(dict(kind='size_cap', step=i, bits=lc.size(t),
                       seconds=time.monotonic()-start))
            return
    print(dict(kind='step_cap', step=600, bits=lc.size(t),
               seconds=time.monotonic()-start))


if __name__ == '__main__':
    run()
