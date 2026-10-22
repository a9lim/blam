"""Independently replay the nine supplied residual traces, without search."""
import sys
sys.dont_write_bytecode = True
import json
import re
import time
from run_checks import HERE, SRC, lam, app, lean_term, paths, replay, invocation, decode, spine, reduce_at

def list_terms(s):
    assert s[0] == '[' and s[-1] == ']'
    inner = s[1:-1].strip()
    if not inner: return []
    chunks = []; depth = 0; start = 0
    for i, c in enumerate(inner):
        if c == '(': depth += 1
        elif c == ')': depth -= 1
        elif c == ',' and depth == 0:
            chunks.append(inner[start:i].strip()); start = i + 1
    assert depth == 0
    chunks.append(inner[start:].strip())
    return [lean_term(x) for x in chunks]

def apps(t, args):
    for a in args: t = app(t, a)
    return t

def weak_path(t):
    if isinstance(t, int) or t[0] == 'l': return None
    if not isinstance(t[1], int) and t[1][0] == 'l': return []
    p = weak_path(t[1]); return None if p is None else ['left'] + p

def size_nodes(t):
    return 1 if isinstance(t, int) else 1 + sum(size_nodes(u) for u in t[1:])

def main():
    start = time.monotonic()
    text = (SRC / 'Residuals39.lean').read_text()
    terms = {n: lean_term(t) for n, t in re.findall(r'^def (\w+) : Term := (.*)$', text, re.M)}
    lists = {n: list_terms(t) for n, t in re.findall(r'^def (\w+) : List Term := (.*)$', text, re.M)
             if n != 'initialResiduals'}
    es = {}
    for part in ['literal', 'four', 'five']:
        for r in json.loads((SRC / f'size39-{part}.json').read_text())['rows']:
            es[part + str(r['id'])] = decode(r['wire'])
    prefix = {n: paths(p) for n, p in re.findall(r'^theorem prefix(\w+) : replay (\[.*\])\n', text, re.M)}
    result = {}
    for key in ['literal276', 'four376', 'four399', 'four1000', 'five312', 'five553']:
        core, first = terms['core' + key], terms['first' + key]
        extra, tail = lists['extra' + key], lists['tail' + key]
        p = weak_path(core); assert p is not None and reduce_at(core, p) == first
        ps = paths(re.search(fr'^theorem cycle{key} : replay (\[.*\]) first{key} =', text, re.M)[1])
        assert replay(first, ps) == apps(core, extra)
        assert replay(invocation(es[key]), prefix[key]) == apps(core, tail)
        result[key] = dict(prefix_steps=len(prefix[key]), cycle_steps=1 + len(ps),
            extra_arguments=len(extra), core_nodes=size_nodes(core), first_step_is_weak_head=True)
    n = lam(app(0, lam(app(app(1, 0), 3))))
    from run_checks import stream
    assert replay(invocation(es['literal180']), prefix['literal180']) == app(app(n, n), stream('0010', 0))
    result['literal180'] = dict(prefix_steps=len(prefix['literal180']), landing='A A quoteI(R)')
    t = replay(invocation(es['four0']), prefix['four0'])
    assert t == terms['landingfour0']
    l, h, args = spine(t); assert (l, h, len(args)) == (0, 1, 7)
    result['four0'] = dict(prefix_steps=len(prefix['four0']), head='C', arguments=7)
    t = replay(invocation(es['four80']), prefix['four80'])
    assert t == app(app(1, terms['payloadfour80']), terms['restfour80'])
    ps = paths(re.search(r'^theorem payloadHeadfour80 : replay (\[.*\]) payloadfour80 =', text, re.M)[1])
    t = replay(terms['payloadfour80'], ps)
    assert t == terms['hnffour80']
    l, h, args = spine(t); assert l == 2 and isinstance(h, int) and len(args) > 0
    result['four80'] = dict(prefix_steps=len(prefix['four80']), payload_steps=len(ps),
        payload_leading_lambdas=l, payload_head_variable=h, payload_head_arguments=len(args))
    result['seconds'] = time.monotonic() - start
    (HERE / 'residual-checks.json').write_text(json.dumps(result, indent=2) + '\n')
    print(json.dumps(result, indent=2))

if __name__ == '__main__': main()
