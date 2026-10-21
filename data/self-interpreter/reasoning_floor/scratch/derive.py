"""First-principles scratch-lane designs; no external interpreter inputs."""
from dataclasses import dataclass
from pathlib import Path

ROOT = Path(__file__).resolve().parent

@dataclass(frozen=True)
class V:
    name: str

@dataclass(frozen=True)
class A:
    f: object
    x: object

@dataclass(frozen=True)
class L:
    name: str
    body: object

def v(name): return V(name)
def app(f, *xs):
    if isinstance(f, str): f = v(f)
    for x in xs:
        if isinstance(x, str): x = v(x)
        f = A(f, x)
    return f
def lam(names, body):
    for name in reversed(names.split()): body = L(name, body)
    return body
def let(name, value, body): return app(lam(name, body), value)
def lets(bindings, body):
    for name, value in reversed(bindings): body = let(name, value, body)
    return body
def render(t):
    if isinstance(t, V): return t.name
    if isinstance(t, L): return f"(\\{t.name}. {render(t.body)})"
    return f"({render(t.f)} {render(t.x)})"
def bits(t, ctx=()):
    if isinstance(t, V): return "1" * (ctx.index(t.name) + 1) + "0"
    if isinstance(t, L): return "00" + bits(t.body, (t.name,) + ctx)
    return "01" + bits(t.f, ctx) + bits(t.x, ctx)
def decode(code):
    pos = 0
    count = 0
    def go(ctx):
        nonlocal pos, count
        if code[pos] == '1':
            end = code.index('0', pos)
            n = end - pos
            pos = end + 1
            return V(ctx[n - 1])
        tag = code[pos:pos + 2]
        pos += 2
        if tag == '00':
            name = f'v{count}'
            count += 1
            return L(name, go((name,) + ctx))
        return A(go(ctx), go(ctx))
    term = go(())
    assert pos == len(code)
    assert bits(term) == code
    return term
def save(name, t):
    code = bits(t)
    (ROOT / (name + '.lam')).write_text(render(t) + '\n')
    (ROOT / (name + '.blc')).write_text(code + '\n')
    print(name, len(code))

K = lam('a b', v('a'))
F = lam('a b', v('b'))
I = lam('a', v('a'))
PAIR = lam('x e h', app('h', 'x', 'e'))
def pp(k, s): return app('p', 'p', k, s)

# A. CPS parsing into functions of a Scott environment.
u_a = lam('u k s', app('s', lam('b t', app('b',
    app('k', lam('e', app('e', K)), 't'),
    app('u', 'u', lam('d r', app('k', lam('e', app('d', app('e', F))), 'r')), 't')))))
lam_a = pp(lam('d r', app('k', lam('e x', app('d', lam('h', app('h', 'x', 'e')))), 'r')), 'w')
app_a = pp(lam('f r', pp(lam('g q', app('k', lam('e', app(app('f', 'e'), app('g', 'e'))), 'q')), 'r')), 'w')
p_a = lam('p k s', app('s', lam('b t', app('b',
    app('t', lam('c w', app('c', lam_a, app_a))),
    app('u', 'u', 'k', 't')))))
design_a = let('u', u_a, app(lam('p', app('p', 'p')), p_a))

# B. Parse a Church-fold syntax tree, then interpret its constructors.
# Variables retain a compiled unary selector as their leaf payload.
lam_tree = lam('l a v', app('l', app('d', 'l', 'a', 'v')))
app_tree = lam('l a v', app('a', app('f', 'l', 'a', 'v'), app('g', 'l', 'a', 'v')))
var_tree = lam('l a v', app('v', 'd'))
lam_b = pp(lam('d r', app('k', lam_tree, 'r')), 'w')
app_b = pp(lam('f r', pp(lam('g q', app('k', app_tree, 'q')), 'r')), 'w')
p_b = lam('p k s', app('s', lam('b t', app('b',
    app('t', lam('c w', app('c', lam_b, app_b))),
    app('u', 'u', lam('d r', app('k', var_tree, 'r')), 't')))))
eval_l = lam('d e x', app('d', lam('h', app('h', 'x', 'e'))))
eval_a = lam('f g e', app(app('f', 'e'), app('g', 'e')))
design_b = lets([('u', u_a), ('p', p_b)], lam('k s', pp(lam('t r', app('k', app('t', eval_l, eval_a, I), 'r')), 's')))

# C. Direct environment evaluator returning Scott (value, remainder) pairs.
# Abstraction obtains the remainder through a discarded-value invocation;
# its value reparses the same body under the actual argument environment.
def ppe(e, s): return app('p', 'p', e, s)
def pair(x, e): return app('pair', x, e)
u_c = lam('u e s', app('s', lam('b t', app('b',
    pair(app('e', 'head'), 't'),
    app('u', 'u', app('e', 'tail'), 't')))))
lam_c = pair(lam('x', app(ppe(pair('x', 'e'), 'w'), 'head')), app(ppe('e', 'w'), 'tail'))
app_c = app(ppe('e', 'w'), lam('f r', app(ppe('e', 'r'), lam('g q', pair(app('f', 'g'), 'q')))))
p_c = lam('p e s', app('s', lam('b t', app('b',
    app('t', lam('c w', app('c', lam_c, app_c))),
    app('u', 'u', 'e', 't')))))
design_c = lets([('pair', PAIR), ('head', K), ('tail', F), ('u', u_c), ('p', p_c)],
    lam('k s', app(ppe(I, 's'), lam('m r', app('k', lam('z', v('m')), 'r')))))

# A2. Factor the common first-child parse and select stream consumers before
# applying them to the unread tail. CPS continuation tails eta-contract.
u_a2 = lam('u k s', app('s', lam('b', app('b',
    app('k', lam('e', app('e', K))),
    app('u', 'u', lam('d', app('k', lam('e', app('d', app('e', F))))))))))
kl_a2 = lam('d', app('k', lam('e x', app('d', lam('h', app('h', 'x', 'e'))))))
ka_a2 = lam('f', app('p', 'p', lam('g', app('k', lam('e', app(app('f', 'e'), app('g', 'e')))))))
zero_a2 = lam('t', app('t', lam('c', app('p', 'p', app('c', kl_a2, ka_a2)))))
p_a2 = lam('p k s', app('s', lam('b', app('b', zero_a2, app('u', 'u', 'k')))))
design_a2 = let('u', u_a2, app(lam('p', app('p', 'p')), p_a2))

# D. A trie serves both as the grammar and as the environment. Its node
# consumes one Scott bit and sends the remaining stream to the selected arm.
NODE = lam('h t s', app('s', lam('b', app('b', 'h', 't'))))
ABS = lam('f', pair(lam('x', app('f', 'x', K)), app('f', 'f', F)))
lam_d = lam('w', app('abs', lam('x', ppe(app('node', app('pair', 'x'), 'e'), 'w'))))
# The final result's remainder is supplied to partial pair by the parser.
app_d = lam('w', app(ppe('e', 'w'), lam('f r', app(ppe('e', 'r'), lam('g', app('pair', app('f', 'g')))))))
p_d = lam('p e', app('node', app('node', lam_d, app_d), 'e'))
design_d = lets([('pair', PAIR), ('node', NODE), ('abs', ABS), ('p', p_d)],
    lam('k s', app(ppe('k', 's'), lam('m', app('k', lam('z', v('m')))))))

# A3. Reading a Scott cell is the same transposition in all three places.
READ = lam('h s', app('s', 'h'))
u_a3 = lam('u k', app('read', lam('b', app('b',
    app('k', lam('e', app('e', K))),
    app('u', 'u', lam('d', app('k', lam('e', app('d', app('e', F))))))))))
zero_a3 = app('read', lam('c', app('p', 'p', app('c', kl_a2, ka_a2))))
p_a3 = lam('p k', app('read', lam('b', app('b', zero_a3, app('u', 'u', 'k')))))
design_a3 = lets([('read', READ), ('u', u_a3)], app(lam('p', app('p', 'p')), p_a3))

# A4. The unary fixed point has one syntactic use. Place its binding there,
# eliminating the distant free variable references in the main parser.
ufix = app(lam('u', app('u', 'u')), u_a2)
p_a4 = lam('p k s', app('s', lam('b', app('b', zero_a2, app(ufix, 'k')))))
design_a4 = app(lam('p', app('p', 'p')), p_a4)

# A5. Share the two uses of the main recursive parser after the knot unfolds.
ka_a5 = lam('f', app('r', lam('g', app('k', lam('e', app(app('f', 'e'), app('g', 'e')))))))
zero_a5 = lam('t', app('t', lam('c', app('r', app('c', kl_a2, ka_a5)))))
p_a5 = lam('p', let('r', app('p', 'p'),
    lam('k s', app('s', lam('b', app('b', zero_a5, app(ufix, 'k')))))))
design_a5 = app(lam('p', app('p', 'p')), p_a5)

# E. A single recursive decoder, with a boolean mode selecting term parsing
# (false) or unary-index parsing (true). The first 1 changes modes without
# shifting; later 1s compose the environment-tail projection.
ka_e = lam('f', app('p', lam('g', app('k', lam('e', app(app('f', 'e'), app('g', 'e')))))))
zero_e = lam('t', app('t', lam('c', app('p', app('c', kl_a2, ka_e)))))
shift_k = lam('d', app('k', lam('e', app('d', app('e', F)))))
e_loop = lam('r', lets([('q', app('r', 'r')), ('p', app('q', F))],
    lam('m k s', app('s', lam('b', app('b',
        app('m', app('k', lam('e', app('e', K))), zero_e),
        app('q', K, app('m', shift_k, 'k'))))))))
design_e = app(app(lam('r', app('r', 'r')), e_loop), F)

# A6. Every input bit doubles as the required environment selector: the
# terminating zero is head/K, while every preceding one is tail/F.
u_a6 = lam('u k s', app('s', lam('b', app('b',
    app('k', lam('e', app('e', 'b'))),
    app('u', 'u', lam('d', app('k', lam('e', app('d', app('e', 'b'))))))))))

def small_parser(unary):
    uf = app(lam('u', app('u', 'u')), unary)
    body = lam('p', let('r', app('p', 'p'),
        lam('k', let('tag', lam('c', app('r', app('c', kl_a2, ka_a5))),
            lam('s', app('s', lam('b', app('b', lam('t', app('t', 'tag')), app(uf, 'k')))))))))
    return app(lam('p', app('p', 'p')), body)

design_a6 = small_parser(u_a6)

# A7. Both branches now use one continuation update. On zero, its recursive
# result is I; on one, obtain that result by decoding the remaining unary.
u_a7 = lam('u k s', app('s', lam('b', app(
    app('b', lam('j', app('j', I)), app('u', 'u')),
    lam('d', app('k', lam('e', app('d', app('e', 'b')))))))))
design_a7 = small_parser(u_a7)

if __name__ == '__main__':
    save('a_env_cps', design_a)
    save('b_tree_fold', design_b)
    save('c_direct_pair', design_c)
    save('a2_shared_parse', design_a2)
    save('d_trie_environment', design_d)
    save('a3_shared_read', design_a3)
    save('a4_local_unary', design_a4)
    save('a5_shared_recursion', design_a5)
    save('e_unified_decoder', design_e)
    save('a6_input_selectors', design_a6)
    save('a7_shared_unary_update', design_a7)
    save('a5_polished', small_parser(u_a2))
    save('best', design_a7)
