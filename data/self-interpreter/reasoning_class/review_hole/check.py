"""Focused review checks; no enumeration exceeds 100,000 terms."""
import sys
sys.dont_write_bytecode = True
import time
sys.path.insert(0, 'tmp/round4/coord')
import rd
sys.path.insert(0, 'tmp/round4/jn')
import dbn as d

examples = [
    r'\s. ((\a t. t a) j) (s I (\u. s (\q.c) (s s u)))',
    r'\s. (\x. s (\b t. b (x t) (c t x))) (s (\b t. b (\a k. k a) (t t)) j)',
    r'\s. (\u. (\x. s (\b t. b (x u) x)) (s (\b t. b (\q v. t v) (c t)) (s s s))) j',
    r'\s. (\u. (\x. s (\b t. b (x s) x)) (s (\b t. b (\a q. t u) (c t)) (s s s))) j',
]
for src in examples:
    print('READER', rd.check(src, nmax=8, verbose=False), src)

# Generator/cost correspondence and all capped original arm evaluations.
start = time.monotonic()
count = caps = 0
uncertified = []
hits = []
for cost, t in d.enum_terms(23, 2, None):
    count += 1
    assert count <= 100000 and time.monotonic() - start < 120
    # Lambda s costs 2; root application to j costs 2; depth tax 4.
    named = rd.parse('\\s. (' + d.show(t) + ') j')
    assert rd.weight(named)[0] == cost + 8
    good = True
    for n in (1, 2, 3):
        term = d.inst(t, d.U(n))
        target = d.normalize(d.A(d.A(d.Kc('c'), d.U(n-1)), d.Kc('N')))
        got = d.safe_nf(term)
        if got is None:
            caps += 1
            # This is an additional handwritten/Python rejection checker,
            # not a Lean certificate. Keep failures explicit.
            cert = d.no_beta_eq_cert2(term, target)
            print('ARM_CAP', cost, n, cert, d.show(t))
            if not cert:
                uncertified.append((cost, n, d.show(t)))
        if got != target:
            good = False
            break
    if good:
        hits.append((cost, d.show(t)))
print('ARMS', count, 'caps', caps, 'unresolved', uncertified, 'hits', hits,
      'seconds', time.monotonic()-start)
