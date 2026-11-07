"""Specific algebraic witnesses only; no enumeration. Run with -B.

rd checks zero and unary lengths 1..8. The all-length proof is in REPORT.
The large compressed examples are priced as sources only, never expanded.
"""
import json
import resource
import sys
import time
from pathlib import Path

LANE = Path(__file__).resolve().parent
sys.path.insert(0, str(LANE.parent / 'coord'))
import rd

F = r'(\p x. p (x x))'
H = r'(\v n s. s v (\u. s (\q. c) (s s u)) n)'
TWO = r'(\f p. f (f p))'
CANON = r'\s. s I (\u. s (\q. c) (s s u)) j'


def numeral(n):
    t = 'p'
    for _ in range(n):
        t = f'f ({t})'
    return rf'(\f p. {t})'


def source(n):
    return f'{numeral(n)} {F} {H} I j'


def compressed(k):
    return '(' + r'\x. ' + ' '.join(['x'] * k) + f') {TWO} {F} {H} I j'


def payload(n):
    t = rd.parse('I')
    for _ in range(n):
        t = ('A', t, t)
    return t


def endpoint(n):
    template = rd.parse(r'\s. s v (\u. s (\q. c) (s s u)) j')
    return rd.subst(template, 'v', payload(n))


def support_payload(t):
    """Every node of this specific closed tree is needed to get I.

    Check the small payloads by replacing one node at a time by a rigid
    atom. This is an implementation check of the inductive proof only.
    """
    paths = []

    def collect(t, p=()):
        paths.append(p)
        if t[0] == 'L':
            collect(t[2], p + (2,))
        elif t[0] == 'A':
            collect(t[1], p + (1,))
            collect(t[2], p + (2,))

    def replace(t, p):
        if not p:
            return ('V', 'rigid')
        xs = list(t)
        xs[p[0]] = replace(t[p[0]], p[1:])
        return tuple(xs)

    collect(t)
    I = rd.parse('I')
    return len(paths), all(
        not rd.alpha_eq(rd.normalize(replace(t, p)), I) for p in paths
    )


def main():
    start = time.monotonic()
    rows = []
    assert rd.check(CANON, nmax=8, verbose=False) == (
        True, (46, 42, 1, 4, 8, 6, 1, 1)
    )
    for n in range(5):
        src = source(n)
        ok, w = rd.check(src, nmax=8, verbose=False)
        assert ok and w[0] == 84 + 5*n and w[2] == 0 and w[7] == 1
        fuel = [20000]
        wh = rd.whnf(rd.parse(src), fuel)
        assert rd.alpha_eq(wh, endpoint(n))
        ew = rd.weight(wh)
        assert ew[0] == 40 + 6 * (2**n)
        count, supported = support_payload(payload(n))
        assert supported
        rows.append(dict(kind='literal', n=n, source=src, laws_zero_U1_U8=ok,
                         source_weight=w[0], endpoint_weight=ew[0],
                         net_expansion=ew[0]-w[0],
                         head_steps=20000-fuel[0], payload_nodes_checked=count))
    for k, n in [(2, 4), (3, 16), (4, 65536)]:
        src = compressed(k)
        w = rd.weight(rd.parse(src))
        assert w[0] == 96 + 4*k and w[2] == 0 and w[7] == 1
        row = dict(kind='compressed', k=k, n=n, source=src,
                   source_weight=w[0], endpoint_formula=f'40 + 6*2^{n}',
                   expanded=False)
        if k == 2:
            ok, _ = rd.check(src, nmax=8, verbose=False)
            fuel = [20000]
            wh = rd.whnf(rd.parse(src), fuel)
            assert ok and rd.alpha_eq(wh, endpoint(n))
            row.update(laws_zero_U1_U8=ok, endpoint_weight=rd.weight(wh)[0],
                       expanded=True, head_steps=20000-fuel[0])
        rows.append(row)
    result = dict(rows=rows, seconds=time.monotonic()-start,
                  peak_rss_bytes=resource.getrusage(resource.RUSAGE_SELF).ru_maxrss)
    (LANE / 'witnesses.json').write_text(json.dumps(result, indent=2) + '\n')
    print(json.dumps(result, indent=2))


if __name__ == '__main__':
    main()
