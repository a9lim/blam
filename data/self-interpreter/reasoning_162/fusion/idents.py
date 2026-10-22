"""Rigid-variable checks of the identities used in this lane's arguments."""
import sys; sys.path.insert(0, '.')
from lab import *
NEXTs = r'(\bit1. intL (\exp. bit1 (cont (\args \arg. exp (\zx \zy. zx arg (zy args)))) (intL (\exp2. cont (\args. exp args (exp2 args))))))'
P = r'(\cont. \list. list (\a. a) (\u. list (\q. cont) (list list u)) ' + NEXTs + ')'
free = ["N", "c", "intL", "X", "Z", "u"]            # rigid: N, c (continuation), intL (the parser itself, kept opaque)
def T(src): return parse(src, free=free)
def U(n, tail='N'):                   # 1^n 0 ++ N as named-lambda source
    return ''.join('(\\f. f (\\a \\b. b) ' for _ in range(n)) + '(\\f. f (\\a \\b. a) ' + tail + ')' + ')' * n
checks = []
def chk(name, lhs, rhs):
    a, b = nf(T(lhs)), nf(T(rhs))
    ok = a is not None and a == b
    checks.append((name, ok)); print(('ok  ' if ok else 'BAD ') + name)
    if not ok: print('   lhs', show(a, free) if a else None); print('   rhs', show(b, free) if b else None)
Y = r'(\i \v \n \s. s i v n)'
J = r'(\f. f (\a. a))'
# P c Y = P c   (Y re-reads the next argument), on the two stream kinds
chk('P c Y Z_R = P c Z_R', P + ' c ' + Y + ' (\\f. f (\\a \\b. a) N)', P + ' c (\\f. f (\\a \\b. a) N)')
# RETRACTED claim: P c Y = P c fails on variable streams because `list` occurs inside V and NEXT.
chk('P c Y U_1 = P c U_1   (EXPECTED BAD: retracted identity)', P + ' c ' + Y + ' ' + U(1), P + ' c ' + U(1))
# P c J = c NEXT_c
chk('P c J = c NEXT_c', P + ' c ' + J, 'c ' + NEXTs.replace('cont', 'c'))
# P c I = c ; P c K = P c F = NEXT_c
chk('P c I = c', P + ' c (\\a. a)', 'c')
chk('P c K = NEXT_c', P + ' c (\\a \\b. a)', NEXTs.replace('cont', 'c'))
chk('P c F = NEXT_c', P + ' c (\\a \\b. b)', NEXTs.replace('cont', 'c'))
# cell_{a,e} f g = f a (g e); lift = \args. cell_{args,args} exp exp2
chk('cell as lift', r'\exp \exp2 \args. (\zx \zy. zx args (zy args)) exp exp2', r'\exp \exp2 \args. exp args (exp2 args)')
# s s u = N on variables, r on zero
for n in (1, 2, 3):
    chk(f's s u = N (n={n})', '(\\s. s s u) ' + U(n), 'N')
chk('s s u = r (zero)', '(\\s. s s u) (\\f. f (\\a \\b. a) N)', 'N')
print(sum(ok for _, ok in checks), 'of', len(checks), 'ok')
