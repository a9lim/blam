# x-headed full-chain family B:
#   R = (λx. x B1..Bk) (λz1..zk y1..yt s. Σ) C1..Ct,  C_i = j,  w = 8+4k+4t+Σ|B|+Σ|C≠j|+|Σ| <= W
# necessary conditions (see NOTES): N1 s∈Σ, N2 y_i∈Σ, N3 c somewhere, N4 x∈some B,
# N5 z_l∉Σ ⇒ B_l = x, N6 y_q∉Σ ⇒ C_q = c, N7 ∃l: x∈B_l ∧ z_l∈Σ.
import sys, time, pickle, itertools, signal
from genk import make
from dbe import *
W = 45
def conv(t, cidx, d=0):
    tag = t[0]
    if tag == 'v': return Kc('c') if t[1] == d + cidx else t
    if tag == 'l': return ('l', conv(t[1], cidx, d + 1))
    return ('a', conv(t[1], cidx, d), conv(t[2], cidx, d))
gen2 = make(2); gen1 = make(1)
def pool_B(n):  # over [x, c]: x idx0, c idx1; returns (term, has_x, has_c)
    return [(t, bool(m & 1), bool(m & 2)) for t, m in gen2(n, 0, 0)]
def pool_C(n):  # over [c] at root
    return [(t, bool(m & 1)) for t, m in gen1(n, 0, 0)]
def shapes(k, t, budget):
    """yield (i, Bs, Cs, need, sbudget, n7mask) ; Bs/Cs are lists of (term, flags)"""
    for i in range(1, t + 1):
        # size distributions
        for bsz in itertools.product(range(2, budget + 1), repeat=k):
            if sum(bsz) > budget - 7: continue
            for csz in itertools.product(range(2, budget + 1), repeat=t - 1):
                if sum(bsz) + sum(csz) > budget - 7: continue
                for Bs in itertools.product(*[pool_B(n) for n in bsz]):
                    if not any(b[1] for b in Bs): continue          # N4
                    for Cs in itertools.product(*[pool_C(n) for n in csz]):
                        yield i, Bs, Cs, budget - sum(bsz) - sum(csz)
def idx_y(q, t): return t - q + 1
def idx_z(l, t, k): return t + k - l + 1
def instances(k, t, budget):
    K = t + k + 2; gS = make(K); cbit = 1 << (t + k + 1)
    for i, Bs, Cs, sb in shapes(k, t, budget):
        need = 1 | (1 << idx_y(i, t))
        for l, b in enumerate(Bs, 1):
            if b[0] != ('v', 0): need |= 1 << idx_z(l, t, k)          # N5
        others = [q for q in range(1, t + 1) if q != i]
        for q, cc in zip(others, Cs):
            if cc[0] != ('v', 0): need |= 1 << idx_y(q, t)           # N6
        c_else = any(b[2] for b in Bs) or any(cc[1] for cc in Cs)
        if not c_else: need |= cbit                                    # N3
        n7 = 0
        for l, b in enumerate(Bs, 1):
            if b[1]: n7 |= 1 << idx_z(l, t, k)
        for n in range(2, sb + 1):
            for sig, m in gS(n, 0, need):
                if not (m & n7): continue                              # N7
                yield i, Bs, Cs, sig, 8 + 4*k + 4*t + sum(size_of(b[0]) for b in Bs) + sum(size_of(cc[0]) for cc in Cs) + n
def size_of(t, d=0):
    if t[0] == 'v': return t[1] + 2
    if t[0] == 'l': return 2 + size_of(t[1])
    return 2 + size_of(t[1]) + size_of(t[2])
def build(k, t, i, Bs, Cs, sig):
    body = V(0)
    for b in Bs: body = A(body, conv(b[0], 1))
    lamx = L(body)
    Aterm = conv(sig, t + k + 1)
    for _ in range(k + t + 1): Aterm = L(Aterm)
    args = []; it = iter(Cs)
    for q in range(1, t + 1): args.append(Kc('j') if q == i else conv(next(it)[0], 0))
    return A(lamx, Aterm, *args)
