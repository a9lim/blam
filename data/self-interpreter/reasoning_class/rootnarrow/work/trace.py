import sys
sys.path.insert(0, '/Users/a9lim/Work/blam/tmp/round4/shared'); sys.path.insert(0, '/Users/a9lim/Work/blam/tmp/round4/coord')
import cert
def sh(t, names=()):
    k=t[0]
    if k=='V': return names[t[1]] if t[1] < len(names) else '?'
    if k=='C': return t[1]
    if k=='L':
        n='abdefhikmnopquvwxyz'[len(names)%19]+str(len(names)//19 or ''); return '\\%s.%s'%(n, sh(t[1],(n,)+names))
    a = sh(t[2],names); f = sh(t[1],names)
    return '%s %s' % (f if t[1][0] != 'L' else '(%s)'%f, a if t[2][0] in 'VC' else '(%s)'%a)
R = cert.parse_show(sys.argv[1]); inp, _ = cert.law_io(0)
head = ('A', R, inp); stack = []
names = {}
for i in range(int(sys.argv[2]) if len(sys.argv) > 2 else 30):
    while head[0] == 'A': stack.append(head[2]); head = head[1]
    hs = sh(head)
    if hs not in names: names[hs] = 'H%d' % len(names); print(names[hs], '=', hs[:150])
    print(i, names[hs], '|', ' , '.join((names.get(sh(a), sh(a)))[:40] for a in reversed(stack[-5:])), '| depth', len(stack))
    if head[0] != 'L' or not stack: break
    head = cert.beta(head, stack.pop())
