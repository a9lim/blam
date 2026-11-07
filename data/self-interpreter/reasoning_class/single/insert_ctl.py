from insert import *
core = conv_top(rd.parse(r'\s. (\u. s (\q. c) (s s u)) j'))
print('core cost', cost(core), 'laws on core', laws(core))
n = 0; hits = []
for m in insert_sites(core, 39 - cost(core) - 2 + 1, 40):
    n += 1
    if laws(m) == 0: hits.append((cost(m), show(m)))
print('insertions', n, 'hits', hits)
tm = conv_top(rd.parse(r'\s. (\u. s (\q. c)) j (s s _)'))
print([ (cost(c), show(c)) for c, _ in expand(tm, 3)][:12])
