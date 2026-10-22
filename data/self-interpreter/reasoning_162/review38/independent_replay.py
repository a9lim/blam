"""Replay the 615 positive certificates with an independent reducer.

This does not enumerate candidates or infer anything from a resource cap.
The reducer contracts in one pass, unlike the supplied shift/subst/shift code.
"""
from collections import Counter
import json
from pathlib import Path
import time

HERE = Path(__file__).resolve().parent
ROOT = HERE.parents[3]
FLOOR = ROOT / 'tmp/round3/floor'
V = lambda n: ('v', n)
L = lambda b: ('l', b)
A = lambda f, a: ('a', f, a)
I = L(V(0))


def decode(bits, i=0):
    if bits[i:i+2] == '00':
        b, j = decode(bits, i+2)
        return L(b), j
    if bits[i:i+2] == '01':
        f, j = decode(bits, i+2)
        a, k = decode(bits, j)
        return A(f, a), k
    j = bits.index('0', i)
    assert j > i
    return V(j-i-1), j+1


def read(bits):
    t, j = decode(bits)
    assert j == len(bits)
    return t


def wire(t):
    if t[0] == 'v':
        return '1' * (t[1]+1) + '0'
    if t[0] == 'l':
        return '00' + wire(t[1])
    return '01' + wire(t[1]) + wire(t[2])


def lift(t, amount, cutoff=0):
    if t[0] == 'v':
        return V(t[1] + amount) if t[1] >= cutoff else t
    if t[0] == 'l':
        return L(lift(t[1], amount, cutoff+1))
    return A(lift(t[1], amount, cutoff), lift(t[2], amount, cutoff))


def contract(body, arg, depth=0):
    if body[0] == 'v':
        n = body[1]
        if n == depth:
            return lift(arg, depth)
        return V(n-1) if n > depth else body
    if body[0] == 'l':
        return L(contract(body[1], arg, depth+1))
    return A(contract(body[1], arg, depth), contract(body[2], arg, depth))


def head(t):
    if t[0] == 'v':
        return None
    if t[0] == 'l':
        u = head(t[1])
        return None if u is None else L(u)
    if t[1][0] == 'l':
        return contract(t[1][1], t[2])
    u = head(t[1])
    return None if u is None else A(u, t[2])


def full_step(t):
    if t[0] == 'v':
        return None
    if t[0] == 'l':
        u = full_step(t[1])
        return None if u is None else L(u)
    if t[1][0] == 'l':
        return contract(t[1][1], t[2])
    u = full_step(t[1])
    if u is not None:
        return A(u, t[2])
    u = full_step(t[2])
    return None if u is None else A(t[1], u)


def normal(t):
    for n in range(301):
        u = full_step(t)
        if u is None:
            return t, n
        t = u
    raise AssertionError('No positive normal-form certificate within the supplied bound')


def steps(t, n):
    for _ in range(n):
        t = head(t)
        assert t is not None
    return t


def spine(t):
    b = 0
    while t[0] == 'l':
        b, t = b+1, t[1]
    args = []
    while t[0] == 'a':
        args.insert(0, t[2])
        t = t[1]
    return b, t, args


def binder_facts(t):
    """Count uses with unique binder paths; compare nonlinear ancestry."""
    uses = Counter()
    def walk(t, env, path):
        if t[0] == 'v':
            assert t[1] < len(env), 'Expected a closed term'
            uses[env[t[1]]] += 1
        elif t[0] == 'l':
            uses[path] += 0
            walk(t[1], [path] + env, path + (0,))
        else:
            walk(t[1], env, path + (1,))
            walk(t[2], env, path + (2,))
    walk(t, [], ())
    nonlinear = [p for p, n in uses.items() if n > 1]
    is_chain = all(p[:len(q)] == q or q[:len(p)] == p
                   for p in nonlinear for q in nonlinear)
    return uses, is_chain


def pair(x, y):
    return L(A(A(V(0), lift(x, 1)), lift(y, 1)))


def invocation(e):
    stream = V(0)
    for bit in reversed('0010'):
        stream = pair(L(L(V(1 if bit == '0' else 0))), stream)
    return L(L(A(A(lift(e, 2), V(1)), stream)))


def main():
    start = time.monotonic()
    checked = Counter()
    max_payload_steps = 0
    for name in ['four_lambda.json', 'five_lambda.json']:
        rows = json.loads((FLOOR / name).read_text())
        for i, row in enumerate(rows):
            k = row['kind']
            if k.startswith('unresolved'):
                continue
            e = read(row['wire'])
            assert len(row['wire']) == 37
            binder_facts(e)
            if k in ('exact_cycle', 'identity_cycle'):
                base = invocation(e) if k.startswith('identity') else e
                t = steps(base, row['prefix'])
                assert row['period'] > 0
                assert steps(t, row['period']) == t
            else:
                t = steps(invocation(e) if k.startswith('identity') else e, row['steps'])
                if 'final' in row:
                    assert wire(t) == row['final'], (name, i)
                b, h, args = spine(t)
                if k == 'nonlinear_chain':
                    assert binder_facts(t)[1]
                elif k == 'smaller_than_37':
                    assert len(wire(t)) < 37
                elif k == 'three_lambdas':
                    assert b >= 3
                elif k == 'wrong_hnf':
                    assert head(t) is None
                    assert b != 2 or (h == V(1) and len(args) != 2)
                elif k == 'identity_wrong_hnf':
                    assert head(t) is None
                    assert (b, h, len(args)) != (2, V(1), 2)
                elif k == 'identity_wrong_payload':
                    assert head(t) is None and (b, h, len(args)) == (2, V(1), 2)
                    j = row['payload']
                    nf, n = normal(args[j])
                    max_payload_steps = max(max_payload_steps, n)
                    assert wire(nf) == row['nf']
                    assert nf != [L(I), V(0)][j]
                else:
                    raise AssertionError((name, i, k))
            checked[k] += 1
    assert sum(checked.values()) == 615
    result = {'verified': 615, 'kinds': dict(checked),
              'largest_payload_normalization_steps': max_payload_steps,
              'seconds': time.monotonic()-start}
    (HERE / 'independent-replay.json').write_text(json.dumps(result, indent=2)+'\n')
    print(json.dumps(result, indent=2))


if __name__ == '__main__':
    main()
