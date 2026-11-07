import sys
sys.path.insert(0, '/Users/a9lim/Work/blam/tmp/round4/shared')
import cert
def show(t, names=None):
    names = names or []
    k = t[0]
    if k == 'V': return names[t[1]] if t[1] < len(names) else '?%d' % t[1]
    if k == 'C': return t[1]
    if k == 'L':
        n = 'abcdefghijklmnopqrstuvwxyz'[len(names) % 26] + ('' if len(names) < 26 else str(len(names)))
        return '\\%s.%s' % (n, show(t[1], [n] + names))
    return '(%s %s)' % (show(t[1], names), show(t[2], names))
def trace(src, steps, named):
    t = cert.parse_show(src)
    head = t; stack = []
    for i in range(steps):
        while head[0] == 'A': stack.append(head[2]); head = head[1]
        if head[0] != 'L' or not stack: print('HNF', show(head)); return
        for j in range(len(stack)):
            n = cert.try_nf(stack[j], 300)
            if n is not None: stack[j] = n
        def nm(x):
            s = show(x)
            for k, v in named.items(): s = s.replace(v, k)
            return s
        print(i, nm(head), '|', ' ; '.join(nm(x) for x in stack[::-1]))
        a = stack.pop(); head = cert.beta(head, a)
src = sys.argv[1]; steps = int(sys.argv[2])
named = {}
for kv in sys.argv[3:]:
    k, v = kv.split('=', 1); named[k] = show(cert.parse_show(v))
trace(src, steps, named)
