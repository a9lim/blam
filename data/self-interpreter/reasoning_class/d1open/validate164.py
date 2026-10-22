r"""Positive control for the generator + checker: the record's 164 reader
\s. s (\b. b F c) (s I (s s) j) (w = 48) must be found in the generated
skeleton 'e q1 | ph0 bit@0 l2' when wmax = 48 and the hole caps are those
of its pieces (X <= 6, Y <= 4, T <= 18)."""
from hskel import handlers
from skel import run
B3 = ['bit', 's', 'c']
out = []; unh = []
handlers(B3, 4, ['r', 'T1'], 14, {}, 1, 'e q1', out, unh, 0, 8, 8, 8)
for sk in out:
    if sk['name'] == 'e q1 | ph0 bit@0 l2':
        sk['wmax'] = 48; sk['tmax'] = 18; sk['zbound'] = 6
        sk['holes'][sk['uhead']]['max'] = 4
        print(sk['zhead'], sk['zargs'], sk['uhead'], sk['uargs'], sk['overhead'])
        h, us, nt = run(sk)
