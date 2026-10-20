import os
from pathlib import Path
import sys
import re
ROOT = Path('/Users/a9lim/Work/blam')
HERE = Path(__file__).resolve().parent
os.environ['TMPDIR'] = str(HERE)
os.environ['RAYON_NUM_THREADS'] = '2'
sys.path.insert(0, str(ROOT / 'tools/self-interpreter'))
import battery as bt
K = '(\\x y. x)'
F = '(\\x y. y)'
I = '(\\x. x)'
def pair(a, b):
    return f'(\\h. h ({a}) ({b}))'
def unary(n, tail):
    out = pair(K, tail)
    for _ in range(n):
        out = pair(F, out)
    return out
def z(q):
    return f'(\\unused localrest. localrest ({q}))'
def h(c, q):
    return f'(\\b. b {z(q)} ({c}))'
def p(c, q):
    return f'(\\s. s {h(c,q)} (s s s))'
def cell(a, e):
    return f'(\\x y. x ({a}) (y ({e})))'
count = 0
def check(name, lhs, rhs):
    global count
    # All otherwise free identifiers are kept rigid under these lambdas.
    prefix = '\\a b c d e n m q v r t. '
    def norm(src):
        src = prefix + '(' + src + ')'
        src = re.sub(r'\\([A-Za-z_]+(?: [A-Za-z_]+)+)\.', lambda m: ''.join('\\' + n + '.' for n in m[1].split()), src)
        term = bt.compile_lam(src)
        out = bt.normalize(bt.enc(term), 16384)
        assert out is not None, ('not normalized', name, src)
        return out
    assert norm(lhs) == norm(rhs), (name, lhs, rhs)
    count += 1
    print('PASS', name)

check('cross-stream', f'{pair("b", "r")} {pair("d", "t")}', 'b d t r')
s = pair('b', 'r')
check('bit-projection', f'{s} {K}', 'b')
check('tail-projection', f'{s} {F}', 'r')
check('nested-bit-projection', f'{s} ({s} {K})', 'b b r')
check('00-arity-selector', f'{pair(K, pair(K,"t"))} ({pair(K, pair(K,"t"))} {F})', f'{K} {pair(K,"t")}')
check('01-arity-selector', f'{pair(K, pair(F,"t"))} ({pair(K, pair(F,"t"))} {F})', I)
for k in range(7):
    u, w = unary(k,'n'), unary(k,'m')
    check(f'equal-unary-cross-{k}', f'{u} {w}', f'{K} ' + ('n' if k % 2 == 0 else 'm'))
    check(f'balanced-skip-{k}', f'({u} {u}) ({u} {u})', 'n')
for i, j in [(0,1),(1,0),(1,2),(2,1),(2,3),(3,2),(0,3),(3,0),(2,5),(5,2)]:
    u, w = unary(i,'n'), unary(j,'m')
    if i < j:
        rhs = I if i % 2 == 0 else f'n {unary(j-i-1,"m")}'
    else:
        rhs = f'm {unary(i-j-1,"n")}' if j % 2 == 0 else I
    check(f'unequal-unary-cross-{i}-{j}', f'{u} {w}', rhs)
check('cons-prime-cross', f'{cell("a","e")} {cell("b","d")}', '\\t. a b (t e d)')
check('reader-K', f'{p("c","q")} {K}', h('c','q'))
check('reader-F', f'{p("c","q")} {F}', F)
check('reader-I', f'{p("c","q")} {I}', '(\\r. r q)')
check('reader-constant-thunk', f'{p("c","q")} ({K} a)', f'a (a ({K} a))')
check('handler-handler', f'{h("c","q")} {h("d","v")}', 'd q c')
check('reader-handler', f'{p("c","q")} {h("d","v")}', f'c v d (d v d {h("d","v")})')
check('handler-reader', f'{h("c","q")} {p("d","v")}', 'q q c')
print(f'{count} targeted normal-form equalities passed; no enumeration; unoptimized terms.')
