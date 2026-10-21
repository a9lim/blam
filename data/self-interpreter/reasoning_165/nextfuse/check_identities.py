#!/usr/bin/env python3
"""Finitely many derived identities and separating witnesses; no search."""
from pathlib import Path
import json
import sys
import time
from concurrent.futures import ThreadPoolExecutor

from investigate import HERE, ROOT, parse
import battery
import lc


def app(f, a):
    return ('A', f, a)


def lam(t):
    return ('L', t)


K = battery.TRUE
F = battery.FALSE
E = parse((ROOT / 'data/self-interpreter/machines/int165.lam').read_text())
R = ('V', 0)


def normalize(term):
    result = battery.normalize(battery.enc(term), 1 << 20)
    assert result is not None
    return result


def check(label, a, b):
    na, nb = normalize(a), normalize(b)
    assert na == nb, label
    print(f'PASS {label}', flush=True)
    return dict(label=label, normal_form=na)


def cons(b, t):
    return lc.pair(b, t)


def main():
    rows = []
    # q_n is the second-tag stream for APP(var n, right operand).
    # The arbitrary R here includes the right operand and the final tail.
    for n in [1, 2, 5]:
        q = cons(F, battery.bitlist('1' * n + '0', R))
        rows.append(check(f'q_{n} P = R', lam(app(q, E)), lam(R)))
        rows.append(check(f'q_{n} q_{n} = K R', lam(app(q, q)), lam(app(K, R))))
        rows.append(check(f'q_{n} K = F', lam(app(q, K)), lam(F)))

    # Finite symbolic equations used by the periodic-tail collision.
    q0 = cons(K, battery.bitlist('110', R))
    q1 = cons(F, battery.bitlist('11010', R))
    suffix = battery.bitlist('10', R)
    rows.append(check('q0 P = 10:R', lam(app(q0, E)), lam(suffix)))
    rows.append(check('q1 P = 10:R', lam(app(q1, E)), lam(suffix)))
    rows.append(check('q0 F = 110:R', lam(app(q0, F)), lam(battery.bitlist('110', R))))
    rows.append(check('q1 F = 11010:R', lam(app(q1, F)), lam(battery.bitlist('11010', R))))

    # An explicit R = D D with R -> cons F (cons K R).
    delta = parse(r'\x. \f. f (\a \b. b) (\g. g (\a \b. a) (x x))')
    periodic = app(delta, delta)
    assert lc.beta(delta, delta) == battery.bitlist('10', periodic)
    print('PASS exact one-step fixed-point unfolding R -> 10:R', flush=True)

    # The enclosing two ABS continuations are the same. The full closed
    # programs must nevertheless return distinct values. Project the value
    # so their common infinite tail disappears before normalization.
    m0 = parse(r'\x \y \z. y')
    m1 = parse(r'\x \y. x y')
    nfs = []
    for label, term in [('M0', m0), ('M1', m1)]:
        got = app(app(E, K), battery.bitlist(battery.enc(term), periodic))
        want = lam(battery.shift(term, 1))
        rows.append(check(f'{label} with periodic suffix returns its correct value', got, want))
        nfs.append(normalize(want))
    assert nfs[0] != nfs[1]
    print('PASS M0 and M1 required values have distinct beta normal forms', flush=True)

    # Bare Boolean behavior, with the recursive parser left rigid. This
    # checks the reader identity without normalizing an infinite knot.
    body = r'''\p \c.
      (\next. \s. s (\b. b (\u \r. r next) c) (s s s))
      (\b. p (\f. b (c (\e \a. f (\x \y. x a (y e))))
                         (p (\g. c (\e. f e (g e))))))'''
    p = parse(body)
    # Inside the abstract p,c binders, expose the source body then apply K/F.
    reader = p[1][1]
    for label, selector, want in [
        ('reader F = F', F, F),
        ('reader K = first-bit handler', K,
         parse(r'''\p \c. \b. b
           (\u \r. r (\d. p (\f. d
             (c (\e \a. f (\x \y. x a (y e))))
             (p (\g. c (\e. f e (g e))))))) c''')[1][1]),
    ]:
        rows.append(check(label, lam(lam(app(reader, selector))), lam(lam(want))))

    (HERE / 'identities.json').write_text(json.dumps(rows, indent=2) + '\n')

    # Only the five resource-capped projections probes are retried.
    prior = json.loads((HERE / 'results.json').read_text())[-1]
    from investigate import PROJECT
    candidate = parse(PROJECT)
    original = battery.normalize
    battery.normalize = lambda bits, beta: original(bits, (1 << 24) if beta == (1 << 20) else beta)
    def retry(item):
        bits, old = item
        program, end = lc.decode(bits)
        assert end == len(bits)
        start = time.monotonic()
        verdict = battery._probe(candidate, program, False)
        result = dict(program=bits, old=old, verdict=verdict,
                      beta_budget=1 << 24, seconds=time.monotonic() - start)
        print('RETRY', json.dumps(result), flush=True)
        return result
    with ThreadPoolExecutor(2) as pool:
        retries = list(pool.map(retry, prior['failures']))
    (HERE / 'projection_retries.json').write_text(json.dumps(retries, indent=2) + '\n')


if __name__ == '__main__':
    main()
