r"""Generator of first-dispatch skeletons along s-chains (handler positions).

At a handler position (frame roles F, j-tax base jb, pending stack S whose
first items are 'bit','r' because s applied the handler), the handler is
  \^ph. w X1..Xl   (w a bit variable; ph <= 2 leading lambdas binding S[0], S[1])
  \^ph. s X1..Xl   (nested s: X1 becomes the next handler position)
The run is resolved symbolically on each branch (bit = K / F, r on unary =
second-cell dispatch, s = cons) into skel.py's zero / unary heads.
"""
from skel import run
def resolve(items, branch, holes):
    items = list(items)
    for _ in range(20):
        h, rest = items[0], items[1:]
        if h in holes or h.startswith('T'): return (h, rest)
        if h == 'bit':
            if len(rest) < 2: return None
            items = [rest[0]] + rest[2:] if branch == 'z' else [rest[1]] + rest[2:]
        elif h == 'r':
            if branch == 'z': return ('R', rest)
            if not rest: return None
            if rest[0] == 'r': return None        # r' r' = K N: N-headed or a lambda
            items = [rest[0], 'bit2', 'r2'] + rest[1:]
        elif h == 's':
            if not rest: return None
            items = [rest[0], 'bit', 'r'] + rest[1:]
        elif h == 'r2': return None                # n = 1: r'' = N, a rigid N head
        elif h == 'bit2': return ('UNH', rest)
        else: return None                     # c: rigid
    return ('UNH', [])
def tohole(name, holes):
    if name.startswith('T') and name not in holes:
        holes[name + '_h'] = {'frame': ['s', 'c'], 'jbase': 0, 'max': 40}
        return name + '_h'
    return name
def make(items, holes, ov, q, name, out, unh):
    z = resolve(items, 'z', holes); u = resolve(items, 'u', holes)
    if z is None or u is None: return
    if z[0] == 'UNH' or u[0] == 'UNH': unh.append(name); return
    holes = dict(holes); zt = None
    zh, za = z
    if zh == 'R':
        if len(za) != 1: return
        if za[0] not in holes and not za[0].startswith('T'): return   # r applied to a role: never r j
        zh, za, zt = za[0], [], 'j'
    uh, ua = u
    ren = {}
    for x in [zh, uh] + za + ua:
        if x.startswith('T') and x not in holes and x in (zh, uh): ren[x] = tohole(x, holes)
    # if a T became a head, every occurrence of it becomes that hole; renumber the other T's
    Tleft = [t for t in ['T%d' % i for i in range(1, q + 1)] if t not in ren]
    tmap = {t: 'T%d' % (i + 1) for i, t in enumerate(Tleft)}
    f = lambda x: ren.get(x, tmap.get(x, x))
    sk = {'name': name, 'q': len(Tleft), 'overhead': ov, 'zbound': 40, 'holes': holes,
          'zhead': f(zh), 'zargs': [f(x) for x in za], 'uhead': f(uh), 'uargs': [f(x) for x in ua]}
    if zt: sk['ztarget'] = 'j'
    if sk['zhead'] not in holes or sk['uhead'] not in holes: unh.append(name + ' (head not a hole: %s %s)' % (sk['zhead'], sk['uhead'])); return
    if 45 - ov - 2 * len(holes) < 0: return
    out.append(sk)
def handlers(F, jb, S, ov, holes, q, name, out, unh, depth=0, lmax=8, dmax=3, phmax=4):
    for ph in range(0, phmax + 1):
        if ph > len(S): continue
        if any(x in ('s', 'c', 'bit2', 'r2') for x in S[:ph]): continue
        bind = [x if x in ('bit', 'r') or x.startswith('T') else 'H:' + x for x in S[:ph]]
        F2 = list(reversed(bind)) + F          # innermost first
        jb2 = jb + 4 * ph; S2 = S[ph:]
        for l in range(0, lmax + 1):
            Xs = ['X%d_%d' % (depth, i) for i in range(1, l + 1)]
            hs = dict(holes); hs.update({x: {'frame': F2, 'jbase': jb2, 'max': 40} for x in Xs})
            for i, role in enumerate(F2):
                if role in ('bit', 'r') or role.startswith('T') or role.startswith('H:'):
                    hd = role[2:] if role.startswith('H:') else role
                    if role.startswith('H:') or role.startswith('T'):
                        if l == 0 and not S2: continue
                    make([hd] + Xs + S2, hs, ov + 2 * ph + 2 * l + 2 + i, q,
                         f'{name} | ph{ph} {role}@{i} l{l}', out, unh)
            if 's' in F2 and l >= 1 and depth < dmax and 45 - ov - 2 * ph - 2 * l - 4 - 2 * len(holes) - 2 * (l - 1) >= 4:
                i = F2.index('s')
                hs2 = dict(holes); hs2.update({x: {'frame': F2, 'jbase': jb2, 'max': 40} for x in Xs[1:]})
                handlers(F2, jb2, ['bit', 'r'] + Xs[1:] + S2, ov + 2 * ph + 2 * l + 2 + i, hs2, q,
                         f'{name} | ph{ph} s@{i} l{l}', out, unh, depth + 1, lmax, dmax, phmax)
def run_all(out, verbose=False):
    hits = []; mx = 0
    for sk in out:
        h, us, nt = run(sk, verbose); hits += h; mx = max(mx, nt)
        if h: print('HITS in', sk['name'], h[:3])
    return hits, mx
