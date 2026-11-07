import sys, time
import rowgen
from validate_rowgen import count
def rows(d, f, Vs, roots, wmax=45, Lmin=3):
    out = []
    for V in Vs:
        for L in range(max(Lmin, d), 20):
            for X in range(0, 60):
                w = 2*L + 4*V - 4 + X + 4*d
                if w > wmax: break
                for root in roots:
                    if root == 'lam' and X < f: continue
                    out.append((d, L, V, X, f, root))
    return out
if __name__ == '__main__':
    d = int(sys.argv[1]); f = int(sys.argv[2]); Vs = list(map(int, sys.argv[3].split(',')))
    roots = sys.argv[4].split(','); mode = sys.argv[5] if len(sys.argv) > 5 else 'count'
    tot = 0
    for r in rows(d, f, Vs, roots):
        n = count(*r); tot += n
        if mode == 'count': print(r, n); continue
        if n == 0: continue
        t0 = time.time(); m, st, hits, caps = rowgen.run(*r)
        print(r, 'w=%d' % (2*r[1]+4*r[2]-4+r[3]+4*r[0]), m, dict(st), 'hits', len(hits), 'caps', len(caps), '%.1fs' % (time.time()-t0), flush=True)
        for h in hits: print('   HIT', rowgen.show(rowgen.close_c(h)))
        for c in caps[:5]: print('   cap', rowgen.show(rowgen.close_c(c)))
    print('total terms', tot)
