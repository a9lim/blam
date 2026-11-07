"""Targeted identities only: no term enumeration; hard resource limits."""
import os
import resource
import sys
import time
import threading

os.environ['PYTHONDONTWRITEBYTECODE'] = '1'
sys.dont_write_bytecode = True
resource.setrlimit(resource.RLIMIT_CPU, (100, 110))
def watchdog():
    start = time.monotonic()
    while True:
        rss = resource.getrusage(resource.RUSAGE_SELF).ru_maxrss
        if sys.platform != 'darwin': rss *= 1024
        if rss > 900 * 1024**2 or time.monotonic() - start > 110:
            os._exit(124)
        time.sleep(0.1)

threading.Thread(target=watchdog, daemon=True).start()
sys.path.insert(0, '/Users/a9lim/Work/blam/tmp/round4/coord')
import rd

O = r'\f x. x'
SU = r'\k f x. f (k f x)'
W = rf'\g t k. t (\b r. b r (k I (g g r (({SU}) k))))'
G = rf'({W}) ({W})'
slow = rf'\s. s I (\u. s (\q. c) (({G}) s ({O}))) j'
readers = {
    '162': r'\s. s I (\u. s (\q.c) (s s u)) j',
    '47': r'\s. s I (\u. s (\q.c) (s s s)) j',
    '164': r'\s. s (\b. b F c) (s I (s s) j)',
    '165-hoisted': r'(\n s. s (\b. b (\u r. r n) c) (s s s)) j',
    '165-depth4': r'\s. s (\b. b (\u r. r j) c) (s s s)',
    'R59': r'\s. ((\a t. t a) j) (s I (\u. s (\q.c) (s s u)))',
    'R84': r'\s. (\x. s (\b t. b (x t) (c t x))) (s (\b t. b (\a k. k a) (t t)) j)',
    'R104': r'\s. (\u. (\x. s (\b t. b (x s) x)) (s (\b t. b (\a q. t u) (c t)) (s s s))) j',
    'slow': slow,
}

def run(t):
    fuel = [200000]
    n = rd.nf(t, fuel)
    return n, 200000 - fuel[0]

def app(*ts):
    out = ts[0]
    for t in ts[1:]: out = ('A', out, t)
    return out

start = time.monotonic()
for name, src in readers.items():
    ok, weight = rd.check(src, nmax=12, fuel=200000, verbose=False)
    assert ok, name
    print(f'{name}: PASS zero and n=1..12; w,cost,depth,L,V,X,f,j = {weight}')

print('G unary clock: n, measured, predicted')
gt, ot = rd.parse(G), rd.parse(O)
for n in range(17):
    nf, steps = run(app(gt, rd.U(n, 'N'), ot))
    assert rd.alpha_eq(nf, rd.parse('N'))
    assert steps == 2*n*n + 8*n + 8, (n, steps)
    print(n, steps, 2*n*n + 8*n + 8)

for n in range(13):
    nf, steps = run(app(rd.U(n, 'N'), rd.U(n, 'N'), rd.parse('j')))
    assert rd.alpha_eq(nf, rd.parse('N'))
    assert steps == 4*n + 6, (n, steps)
print('U_n U_n j: PASS n=0..12, beta clock 4n+6')

# Body costs in frame [s,c], j costs zero, inner j-depth costs four each.
def core_weight(src):
    w, cost, depth, *_ = rd.weight(rd.parse(r'\s. ' + src))
    return cost - 2 + 4*(depth-1)

for src, want in [
    (r's (\q.c) (s s j)', 20),
    (r's (\q.c) (s s s)', 22),
    (r's (\q.c) (s s c)', 23),
]:
    # No-j terms have no recorded depth; compute the unweighted body cost.
    if 'j' not in src:
        got = rd.weight(rd.parse(r'\s. '+src))[1]-2
    else:
        got = core_weight(src)
    assert got == want, (src, got)
    print(f'body price {got}: {src}')

print(f'elapsed={time.monotonic()-start:.3f}s; maxrss={resource.getrusage(resource.RUSAGE_SELF).ru_maxrss}')
