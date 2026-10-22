"""Extra cut-off certificate (handwritten lemma W5, review_types §5 generalized):
if A = \\a b. b H b W1..Wn (any H, W, holes allowed), then A X A Y.. ->h A H' A W'.. Y.. with the
same head A and second argument A again, so A X A Y.. has no hnf for every filling.
This script head-reduces the zero-law probe R Z (holes as rigid constants, every step lifts to
every filling) and reports 'W5' when such a state is reached.  usage: certw5.py DUMP.json"""
import sys, json, signal
sys.path.insert(0, '/Users/a9lim/Work/blam/tmp/round4/shared')
import cert
def isW5(h):
    if h[0] != 'L' or h[1][0] != 'L': return False
    t = h[1][1]
    args = []
    while t[0] == 'A': args.append(t[2]); t = t[1]
    args.reverse()
    return t == ('V', 0) and len(args) >= 2 and args[1] == ('V', 0)
def w5(R, inp, steps=3000):
    head = ('A', R, inp); stack = []
    for _ in range(steps):
        while head[0] == 'A': stack.append(head[2]); head = head[1]
        if head[0] != 'L' or not stack: return False
        if isW5(head) and len(stack) >= 2 and stack[-2] == head: return True
        a = stack.pop(); head = cert.beta(head, a)
        if cert.size(head) + sum(map(cert.size, stack)) > 20000: return False
    return False
class TO(Exception): pass
def hd(*a): raise TO()
signal.signal(signal.SIGALRM, hd)
if __name__ == '__main__':
    d = json.load(open(sys.argv[1])); left = []
    for lb, s in d['cut']:
        R = cert.parse_show(s); inp, _ = cert.law_io(0)
        signal.alarm(4)
        try: ok = w5(R, inp)
        except TO: ok = False
        finally: signal.alarm(0)
        if not ok:
            signal.alarm(3)
            try: res = cert.certify(s, fuel=2000); ok = any(v == 'fail' for v in res.values())
            except TO: ok = False
            finally: signal.alarm(0)
        if not ok: left.append((lb, s))
    for x in left: print('UNCERT', *x)
    print(f"{len(d['cut'])} cut-offs, {len(d['cut']) - len(left)} certified (W5 or cert.py), {len(left)} left")
