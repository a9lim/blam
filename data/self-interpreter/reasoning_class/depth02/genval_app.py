import rowgen, gen2, gen3
from genval import accepts
from gen import head
for mod in (gen3, gen2):
    for (D, L, V, X, f) in [(2, 3, 6, 2, 1), (2, 4, 6, 0, 1), (3, 3, 6, 1, 1), (3, 4, 6, 0, 2)]:
        allt = [t for t in rowgen.T(0, X, L, V, f, 1, D) if t[0] == 'a' and head(t)[0] == 'l']
        want = sorted(map(repr, (t for t in allt if accepts(t, mod))))
        st = mod.stream_root(X, L, V, f, D, 'app') if mod is gen3 else mod.stream_app_root(X, L, V, f, D)
        got = sorted(map(repr, st))
        print(mod.__name__, (D, L, V, X, f), 'unfiltered', len(allt), 'accepted', len(want), 'generated', len(got), 'equal', want == got)
