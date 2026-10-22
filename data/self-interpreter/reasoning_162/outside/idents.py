"""Rigid-variable checks of identities used in this lane's arguments.
Run from this directory: python3 idents.py"""
import sys; sys.path.insert(0, '.')
from lab import *
free = ["N", "c", "intL", "X", "Y", "Z"]      # rigid: N (tail), c (cont), intL (parser, opaque), X Y Z probes
NEXT = r'(\bit1. intL (\exp. bit1 (c (\args \arg. exp (\zx \zy. zx arg (zy args)))) (intL (\exp2. c (\args. exp args (exp2 args))))))'
P = r'(\c. \list. list (\a. a) (\u. list (\q. c) (list list u)) ' + NEXT + ')'
NEXT1 = NEXT.replace('intL (\\exp.', P + ' (\\exp.', 1)   # one unfolding of the header's intL
def T(src): return parse(src, free=free)
def U(n, tail='N'):
    return ''.join('(\\f. f (\\a \\b. b) ' for _ in range(n)) + '(\\f. f (\\a \\b. a) ' + tail + ')' + ')' * n
Z = '(\\f. f (\\a \\b. a) N)'            # cons K N  (a 0-tag stream with tail N)
checks = []
def chk(name, lhs, rhs):
    a, b = nf(T(lhs)), nf(T(rhs))
    ok = a is not None and a == b
    checks.append((name, ok)); print(('ok  ' if ok else 'BAD ') + name)
    if not ok: print('   lhs', show(a, free) if a else None); print('   rhs', show(b, free) if b else None)
ABSV = lambda e: f'(\\args \\arg. {e} (\\zx \\zy. zx arg (zy args)))'
# I1/I2: NEXT applied to the I-stream returns the selected continuation (via P c I = c)
chk('NEXT K I = \\e. c (absval e)', f'{NEXT1} (\\a \\b. a) (\\a. a)', f'\\exp. c {ABSV("exp")}')
chk('NEXT F I = \\e. intL (\\e2. c (lift e e2))', f'{NEXT1} (\\a \\b. b) (\\a. a)', r'\exp. intL (\exp2. c (\args. exp args (exp2 args)))')
# I3: on a variable stream, NEXT K s = c (absval r) N  (one unfolding; inner intL rigid is never reached)
for n in (1, 2):
    chk(f'NEXT K U_{n} = c (absval U_{n-1}) N', f'{NEXT1} (\\a \\b. a) {U(n)}', f'c {ABSV(U(n-1))} N')
# I4: s K = b  (first bit as a bare selector)
chk('Z K = K', f'{Z} (\\a \\b. a)', r'\a \b. a')
for n in (1, 2, 3):
    chk(f'U_{n} K = F', f'{U(n)} (\\a \\b. a)', r'\a \b. b')
# I5: s F = r
chk('Z F = N', f'{Z} (\\a \\b. b)', 'N')
chk('U_2 F = U_1', f'{U(2)} (\\a \\b. b)', U(1))
# I6: s (s s) : zero -> N N ; var -> N r   (adversary's correction of Grok I5)
chk('Z (Z Z) = N N', f'{Z} ({Z} {Z})', 'N N')
chk('U_2 (U_2 U_2) = N U_1', f'{U(2)} ({U(2)} {U(2)})', f'N {U(1)}')
# I7: handler-form reader `\b \r. b (r X) (c r (r r r))` applied by the stream (h166.lam, measured 170)
H = r'(\b. \r. b (r X) (c r (r r r)))'
chk('Z H = N X', f'{Z} {H}', 'N X')
for n in (1, 2, 3):
    chk(f'U_{n} H = c U_{n-1} N', f'{U(n)} {H}', f'c {U(n-1)} N')
# I8: a function-env variable value built by the reader: s (\q \r \e. e r) = \e. e r  (18 bits, not 16)
chk('U_2 (\\q \\r \\e. e r) = \\e. e U_1', f'{U(2)} (\\q \\r \\e. e r)', f'\\e. e {U(1)}')
# I9: off-domain identities of the 162 parser (rigid inner intL)
chk('P c K = NEXT_c', f'{P} c (\\a \\b. a)', NEXT)
chk('P c F = NEXT_c', f'{P} c (\\a \\b. b)', NEXT)
chk('P c I = c', f'{P} c (\\a. a)', 'c')
chk('P c (K (K X)) = X NEXT_c', f'{P} c (\\a \\b. X)', f'X {NEXT}')
chk('P c J = c NEXT_c  (J = \\f. f I)', f'{P} c (\\f. f (\\a. a))', f'c {NEXT}')
print(sum(ok for _, ok in checks), 'of', len(checks), 'ok')
