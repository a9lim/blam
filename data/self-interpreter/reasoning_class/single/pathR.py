"""Path R (M' = X j): by the extended acheck X in {V, X29}; insert every single site E W
(E j-free, any position incl. the root and j) with |M| <= 39 and test both laws."""
from insert import *
tot = 0; hits = []
for src in [r'\s. (\u. s (\q. c) (s s u)) j', r'\s. (\u. s (\q. c) (s s s)) j']:
    core = conv_top(rd.parse(src))
    assert unary_ok(core)
    for m in insert_sites(core, 39 - cost(core) - 2, 39):
        tot += 1
        r = laws(m)
        if r == 0: hits.append(show(m))
        elif r == 'cap' and not zero_cert_fail(m): hits.append('CAP ' + show(m))
print('insertions', tot, 'hits', hits)
