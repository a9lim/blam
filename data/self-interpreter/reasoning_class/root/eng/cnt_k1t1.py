from cnt_full import T
# k=1,t=1: R = (λx. x B1) (λz a s. Σ) j, w = 16 + |B1| + |Σ| <= 45
# B1 over [x,c] (x idx0, c idx1) containing x; Σ over [s,a,z,c] needs s,a,z, and c unless c in B1
budget = 29; tot = 0; rows = []
for nb in range(2, budget):
    bx_c = sum(c for m, c in T(nb, 0, 2).items() if m & 1 and m & 2)
    bx_noc = sum(c for m, c in T(nb, 0, 2).items() if m == 1)
    ns = budget - nb
    s_noc_ok = sum(c for n in range(2, ns + 1) for m, c in T(n, 0, 4).items() if m & 7 == 7)
    s_c = sum(c for n in range(2, ns + 1) for m, c in T(n, 0, 4).items() if m & 15 == 15)
    sub = bx_c * s_noc_ok + bx_noc * s_c
    tot += sub; rows.append((nb, bx_c, bx_noc, s_noc_ok, s_c, sub))
for r in rows: print(r)
print('total', tot)
