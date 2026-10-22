# combinatory simulation of cut-off 103: H y = y A y ; A z w = w (z w); start H H C
import sys
def app(*xs):
    t = xs[0]
    for x in xs[1:]: t = (t, x)
    return t
def run(start, steps):
    head = start; stack = []  # top at end
    mins = []
    for i in range(steps):
        while isinstance(head, tuple): stack.append(head[1]); head = head[0]
        if head == 'C': return ('NEED', i)
        if head == 'H':
            if len(stack) < 1 or stack[-1] == 'C' and False: pass
            y = stack.pop()
            if y == 'C' and not stack: pass
            head = app(y, 'A', y)
        elif head == 'A':
            z = stack.pop(); w = stack.pop()
            head = app(w, (z, w))
        mins.append(len(stack))
    return ('RUN', steps, mins)
r = run(app('H', 'H', 'C'), int(sys.argv[1]))
if r[0] == 'NEED': print(r)
else:
    m = r[2]
    for k in range(0, len(m), len(m)//20): print(k, min(m[k:]), m[k])
