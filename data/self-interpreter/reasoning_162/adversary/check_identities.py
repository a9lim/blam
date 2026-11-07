"""Fixed symbolic identities and finite closed counterexamples; no search."""
import json
from pathlib import Path
import sys

LANE = Path(__file__).resolve().parent
ROOT = LANE.parents[3]
sys.dont_write_bytecode = True
sys.path[:0] = [str(ROOT / 'tools'), str(ROOT / 'tools/self-interpreter')]
import blcc
import lc
import battery
battery.BLAM = str(LANE / 'blam-frozen')

def parse(src, frame=()):
    p = blcc.P(src)
    named = blcc.p_lc(p)
    p.ws()
    assert p.i == len(src), src[p.i:]
    return blcc.to_db(named, frame)

def app(f, *args):
    for a in args:
        f = ('A', f, a)
    return f

K, F, I = lc.TRUE, lc.FALSE, ('L', ('V', 0))
rows = []
def eq(name, left, right):
    ln = lc.nf(left, [30000])
    rn = lc.nf(right, [30000])
    assert ln == rn, (name, lc.show(ln), lc.show(rn))
    rows.append(dict(name=name, status='equal', normal=lc.show(ln)))

# Frame c,Q,R,N, with the actual stream supplied to an outer lambda.
frame = ('c','Q','R','N')
c,q,R,N = [('V',i) for i in range(4)]
readers = {
    'stream_dependent_next': r'\s.s (\a.a) (\u.u (s s u)) (s (\b.b (\r.Q) c))',
    'suffix_or_next': r'\s.s (\a.a) (s (\q.c)) (s (\b.b (\r.Q) (s s)))',
    'tail_preserving_dual': r'\s.s (\b.b (\a.a) c) (s (\b.b (b Q) (s s)))',
}
for name, src in readers.items():
    reader = parse(src, frame)
    eq(name+'/zero', app(reader,lc.pair(K,R)),app(R,q))
    for n in [1,2,3,4,8,16,31]:
        s=lc.bitlist('1'*n+'0',N)
        r=lc.bitlist('1'*(n-1)+'0',N)
        eq(name+f'/variable{n}',app(reader,s),app(c,r,N))

# The handler in the new complete tail-preserving dual reader has a
# different diagonal arity from the old 165 handler.
hc = parse(r'\b.b (\a.a) c', frame)
eq('new_handler/identity',app(hc,I),c)
eq('new_handler/diagonal',app(hc,hc),app(c,c))

for n in [0,1,2,3,4,8,16,31]:
    s=lc.bitlist('1'*n+'0',N)
    eq(f'diagonal{n}',app(s,s),app(K,N))
    if n:
        r=lc.bitlist('1'*(n-1)+'0',N)
        eq(f'right_association{n}',app(s,app(s,s)),app(N,r))

ABS = r'(c (\e \a.f (\b \r.b a (r e))))'
APP = r'(p (\g.c (\e.f e (g e))))'
Q = rf'(\b.p (\f.b {ABS} {APP}))'
Qsel = rf'(\b.p (b (\f.{ABS}) (\f.{APP})))'
Qmode = r'''(\b.p (\f.(b c p) (\y.b
    (\a.f (\x \r.x a (r y))) (c (\e.f e (y e))))))'''
Qthird = r'''(\b.b
    (\d.p (\f.d f (\e \a.f (\x \r.x a (r e)))))
    (\d.p (\f.p (\g.d g (\e.f e (g e))))) (\q.c))'''
pframe = ('p','c')
p,c = ('V',0),('V',1)
qs, qsel, qm, qt = [parse(x,pframe) for x in [Q,Qsel,Qmode,Qthird]]
for name, other in [('select_first',qsel),('shared_head',qm),('third_mode',qt)]:
    eq(name+'/K',app(other,K),app(qs,K))
    eq(name+'/F',app(other,F),app(qs,F))
T=parse(r'\a \b \d.d')
M=parse(r'\a \b \d.a')
eq('third_mode/projection',app(qt,T),app(K,c))
eq('shared_head/first_projection',app(qm,M),app(p,app(K,c)))

# One unfolding of the failed borrowed-reset reader, with p still rigid.
bad_reset = parse(rf'\s.s (\a.a) (\u.s (u (\a \b \d.a) (\a.a)) (s s u)) {Qmode}', pframe)
eq('failed_reset_unfold',app(bad_reset,I),app(p,app(K,c),I,qm))

def occurs(t,index,depth=0):
    if t[0]=='V': return t[1]==index+depth
    if t[0]=='L': return occurs(t[1],index,depth+1)
    return occurs(t[1],index,depth) or occurs(t[2],index,depth)
def eta(t):
    if t[0]=='V': return t
    if t[0]=='A': return ('A',eta(t[1]),eta(t[2]))
    b=eta(t[1])
    if b[0]=='A' and b[2]==('V',0) and not occurs(b[1],0):
        return eta(lc.shift(-1,0,b[1]))
    return ('L',b)
assert eta(lc.nf(qs,[30000])) != eta(lc.nf(qsel,[30000]))
rows.append(dict(name='select_first_not_beta_eta_equal',status='distinct beta eta normal forms'))

# Parent replay: two leading constructor cells are enough, without any
# assumptions on the child stream or the implementation of p.
replay = parse(rf'''\c \s.s (\a.a) (\u.s (\q.c) (s s u))
    (\b.(\k \t.p c s) (\f.b {ABS} (f (\g.c (\e.f e (g e))))))''',
    ('p','c','b','t'))
p,c,b,t = [('V',i) for i in range(4)]
source = lc.pair(K,lc.pair(b,t))
eq('parent_replay/constructor',app(replay,c,source),app(p,c,source))

# Closed source I, with rigid C,N. These are finite normal-form separations.
C,N = ('V',0),('V',1)
desired = app(C,('L',lc.shift(1,0,I)),N)
for name, value, suffix in [
    ('right_associated_skip',r'\e \a.a',r'N (\h.h (\a \b.a) N)'),
    ('borrowed_body_cell',r'\e \a.a (\x \y.x) N a e (\x \y.x) N',r'N'),
]:
    E=lc.decode((LANE/(name+'.blc')).read_text().strip())[0]
    got=app(E,C,lc.bitlist('0010',N))
    expected=app(C,parse(value,('C','N')),parse(suffix,('C','N')))
    eq(name+'/closed_identity',got,expected)
    assert lc.nf(expected,[30000]) != lc.nf(desired,[30000])

delta=parse(r'\x.x x')
omega=app(delta,delta)
for row in json.loads((LANE/'artifacts.json').read_text()):
    E=lc.decode(Path(row['wire']).read_text().strip())[0]
    for label, source in [('Omega',omega),('lambda_Omega',('L',omega))]:
        term=('L',app(E,F,lc.bitlist(lc.enc(source),('V',0))))
        got=battery.normalize(lc.enc(term),1<<16)
        assert got==lc.enc(I),(row['name'],label,got)
        rows.append(dict(name=row['name']+'/'+label,status='exact rigid suffix'))

(LANE/'identities.json').write_text(json.dumps(rows,indent=2)+'\n')
print(json.dumps(dict(checks=len(rows),passed=len(rows))))
