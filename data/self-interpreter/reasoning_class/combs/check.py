# Mechanical check of the four invariants at the lambda level (de Bruijn, exact syntactic equality).
import sys, time
sys.path.insert(0, '/Users/a9lim/Work/blam/tmp/round4/combs')
from lam import *
K = int(sys.argv[1]) if len(sys.argv) > 1 else 12
r1, r2 = V(1), V(2)          # free variables standing for an arbitrary trailing R
ok = True
def report(name, got, want):
    global ok
    good = got is not None and got == want
    ok &= good
    print('  %-34s steps=%s expected=%s %s' % (name, got, want, 'OK' if good else 'FAIL'))
def free_run(name, t, n):
    t0 = time.time(); i = 0
    for i in range(n):
        t2 = hstep(t)
        if t2 is None: print('  %s: HNF after %d steps' % (name, i)); return
        t = t2
    print('  %s: %d head steps, no hnf, final size %d (%.1fs)' % (name, n, t.sz, time.time() - t0))

# ---- H1 = \y. y (\z w. w (z w)) y
print('H1')
H = parse(r'\y. y (\z w. w (z w)) y'); Ac = parse(r'\z w. w (z w)')
assert eq(spine(H.a)[1][0], Ac)
N = [H]
for _ in range(K + 3): N.append(A(Ac, N[-1]))
X = lambda k, *rest: A(H, Ac, N[k], *rest)
report('H H -> X_1 R0', run_to(A(H, H), X(1, A(H, A(H, Ac, N[1])), Ac, A(Ac, Ac, H)), 100), 16)
for k in range(1, K + 1):
    Q = [A(N[k], A(N[j - 1], Ac, N[k + 1])) for j in range(1, k + 2)]
    P = [A(N[k], A(N[j - 1], N[k + 1])) for j in range(1, k + 1)]
    last = A(N[k - 1], A(Ac, Ac, N[k]))
    report('X_%d r1 r2 -> X_%d Q P last r1 r2' % (k, k + 1), run_to(X(k, r1, r2), X(k + 1, *Q, *P, last, r1, r2), 10 ** 4), 10 * k + 16)
free_run('H1 H1', A(H, H), 3000)

# ---- H2 = \y. y I (\z. z (y z))
print('H2')
H = parse(r'\y. y (\x. x) (\z. z (y z))'); I = parse(r'\x. x')
D = lambda X: L(A(V(1), A(shift(X, 1), V(1))))
M = [H]; Lk = []
for _ in range(K + 3): Lk.append(D(M[-1])); M.append(A(I, Lk[-1]))
X = lambda k, *rest: A(H, I, Lk[k], *rest)
report('H H -> X_0', run_to(A(H, H), X(0), 10), 1)
for k in range(0, K + 1):
    P = [A(M[k], A(M[j - 1], M[k + 1])) for j in range(1, k + 1)]
    last = A(M[k], A(M[k], M[k + 1]))
    report('X_%d r1 r2 -> X_%d P last r1 r2' % (k, k + 1), run_to(X(k, r1, r2), X(k + 1, *P, last, r1, r2), 10 ** 4), 7 * k + 11)
free_run('H2 H2', A(H, H), 3000)

# ---- H3 = \y. y (\z w. z (w z)) y
print('H3')
H = parse(r'\y. y (\z w. z (w z)) y'); B = parse(r'\z w. z (w z)')
assert eq(spine(H.a)[1][0], B)
P = A(B, A(B, B), B); Y0 = A(B, B, A(B, B, B, B))
R1 = A(B, A(B, B, A(B, B, B), A(B, B), B)); R2 = A(B, A(B, B, A(B, B), B), A(B, A(B, B, B), A(B, B), B))
w = V(1)
target = L(A(B, P, Y0, B, R1, R2, A(w, A(H, A(B, B), B))))
report('H H -> \\w. B P Y0 B R1 R2 (w (H (B B) B))', run_to(A(H, H), target, 200), 50)
y = V(1); r = V(2)
report('B P y B r -> B P (y P) B r  (y, r free)', run_to(A(B, P, y, B, r), A(B, P, A(y, P), B, r), 100), 6)
free_run('H3 H3', A(H, H), 3000)

# ---- H4 = \y. y (y (\z. y)) (\z. z y)
print('H4')
H = parse(r'\y. y (y (\z. y)) (\z. z y)')
U = [L(H)]
for _ in range(K + 3): U.append(L(A(V(1), U[-1])))
HU0 = A(H, U[0])
report('H H -> H U_1 R0', run_to(A(H, H), A(H, U[1], A(HU0, L(HU0)), L(A(V(1), HU0)), L(A(V(1), H))), 50), 4)
for n in range(1, K + 1):
    report('H U_%d r1 r2 -> H U_%d r1 r2' % (n, n + 1), run_to(A(H, U[n], r1, r2), A(H, U[n + 1], r1, r2), 10 ** 4), 2 * n + 4)
free_run('H4 H4', A(H, H), 3000)
print('ALL OK' if ok else 'SOME FAIL')
