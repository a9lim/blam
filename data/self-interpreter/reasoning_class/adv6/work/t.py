import sys
sys.path.insert(0, '/Users/a9lim/Work/blam/tmp/round4/coord')
import rd
def chk(r, nmax=6):
    ok, w = rd.check(r, nmax=nmax, verbose=False)
    z = None
    try:
        z = rd.show(rd.normalize(('A', rd.parse(r), rd.Z('r')), 3000))
    except Exception as e: z = repr(e)[:30]
    us = []
    for n in (1,2):
        try: us.append(rd.show(rd.normalize(('A', rd.parse(r), rd.U(n,'N')), 3000)))
        except Exception as e: us.append(repr(e)[:30])
    print(('PASS' if ok else 'fail'), 'w=%d cost=%d d=%d L=%d V=%d X=%d f=%d j=%d' % w, '::', r)
    if not ok: print('    Z ->', z, '| U1 ->', us[0], '| U2 ->', us[1])
    return ok, w
if __name__ == '__main__':
    for a in sys.argv[1:]: chk(a)
