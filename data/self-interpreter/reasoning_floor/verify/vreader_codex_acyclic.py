#!/usr/bin/env python3
"""A finite, nonrecursive expansion exceeds the proposed linear threshold."""
import json
import sys
import time
from pathlib import Path

sys.dont_write_bytecode = True
from vreader_codex_checks import (A, L, V, F, P, s, size, counts, db, FRAME,
    RIGID, syntactic_redex_deltas, tagged_stream_subst, tagged_nf, strip)

D = L('f', 't', A(V('f'), A(V('f'), V('t'))))
G = L('r', A(V('r'), F))
term = G
k = 10
for _ in range(k):
    term = A(D, term)
term = A(term, s)
n = 2**k - 1
l, a, x = counts(db(term, FRAME))
assert n > 3 * size(term)
start = time.perf_counter()
res, events = tagged_nf(tagged_stream_subst(term, P(n)), fuel=20000)
assert strip(res) == db(V('N'), FRAME + RIGID)
row = {'k': k, 'n': n, 'source_bits': size(term), 'source_nodes': l+2*a+1,
       'source_lambdas': l, 'source_redex_deltas': syntactic_redex_deltas(term),
       'result': 'N', 'beta_steps': len(events),
       'seconds': round(time.perf_counter()-start, 3)}
Path(__file__).with_suffix('.json').write_text(json.dumps(row, indent=2)+'\n')
print(json.dumps(row, indent=2))
