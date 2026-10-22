r"""The two open (e) skeletons \s. s (\b. b X1) T1 T2 (T3), rerun under the cap.
Zero-head bound (handwritten, UR lemma): on unary s (\b. b X1) = F X1 r' = r'
= s F, so replacing it by s F (10 bits) gives a unary core of cost
|M| - |X1|; M' = s F T1 T2 (T3) is s with >= 3 operands, not one of the two
<= 22-bit cores, so |M'| >= 23 and w = 6 + |M| >= 29 + |X1|: |X1|_w <= 16.
"""
from hskel import handlers
from skel import run
from count_lib import est_skel
B3 = ['bit', 's', 'c']
for q in (2, 3):
    out = []; unh = []
    handlers(B3, 4, ['r'] + ['T%d' % i for i in range(1, q + 1)], 12 + 2 * q, {}, q, f'e q{q}', out, unh, 0, 8, 0, 8)
    for sk in out:
        if sk['name'] == f'e q{q} | ph0 bit@0 l1':
            sk['zbound'] = 16
            print(sk['name'], 'z', sk['zhead'], sk['zargs'], 'u', sk['uhead'], sk['uargs'], 'est', est_skel(sk))
            if est_skel(sk) > 100000: print('OVER CAP, not run'); continue
            h, us, nt = run(sk)
