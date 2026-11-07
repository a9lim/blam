# completeness check: generator output == {unfiltered rowgen terms accepted by the local filters}
import rowgen, gen, gen2, gen3, conv
def accepts(t, mod, k=0, top=True):
    tag = t[0]
    if tag == 'l': return accepts(t[1], mod, k + 1, False)
    if tag == 'a':
        if not mod.ok_app(k, t[1], t[2]): return False
        return accepts(t[1], mod, k, False) and accepts(t[2], mod, k, False)
    return True
def lamroot_stream(mod, X, L, V, f, D):
    return mod.stream_lam_root(X, L, V, f, D) if mod is gen else mod.stream_root(X, L, V, f, D, 'lam')
for (D, L, V, X, f) in [(2, 3, 6, 3, 1), (2, 4, 6, 2, 1), (3, 3, 6, 4, 2), (2, 3, 7, 1, 1)]:
    allt = [t for t in rowgen.T(0, X, L, V, f, 1, D) if t[0] == 'l' and t[1][0] != 'l']
    for mod in (gen3,):
        want = sorted(map(repr, (t for t in allt if accepts(t, mod))))
        got = sorted(map(repr, lamroot_stream(mod, X, L, V, f, D)))
        print((D, L, V, X, f), mod.__name__, 'unfiltered', len(allt), 'accepted', len(want), 'generated', len(got), 'equal', want == got)
gen.MODE[0] = 'star'
for (D, L, V, X, f) in [(3, 3, 6, 4, 2), (4, 4, 6, 1, 1)]:
    allt = [t for t in rowgen.T(0, X, L, V, f, 1, D) if t[0] == 'l' and t[1][0] != 'l']
    want = sorted(map(repr, (t for t in allt if accepts(t, gen))))
    got = sorted(map(repr, gen.stream_lam_root(X, L, V, f, D)))
    print((D, L, V, X, f), 'gen', 'unfiltered', len(allt), 'accepted', len(want), 'generated', len(got), 'equal', want == got)
for src in [r'\s. s K (\t. t j) (s (\q.c)) (s s s)', r'\s. s I (\u. s (\q. c) (s s u)) j']:
    print('accepts known reader', accepts(conv.db(src), gen3), src)
