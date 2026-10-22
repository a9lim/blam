# named (rd.py) -> de Bruijn (dbn.py) with c, j rigid constants; plus row signature
import rd
def to_db(t, env=()):
    if t[0] == 'V':
        if t[1] in env: return ('v', env.index(t[1]))
        return ('k', t[1].split('#')[0])
    if t[0] == 'L': return ('l', to_db(t[2], (t[1],) + env))
    return ('a', to_db(t[1], env), to_db(t[2], env))
def sig(src):
    t = rd.parse(src); w = rd.weight(t)
    # w, cost, d, L, V, X, f, jcount
    return dict(w=w[0], d=w[2], L=w[3], V=w[4], X=w[5], f=w[6], root='lam' if t[0]=='L' else 'app')
def db(src): return to_db(rd.parse(src))
