import sys
sys.dont_write_bytecode = True
from pathlib import Path
import json, hashlib, resource, time, re, itertools
from collections import Counter
H = Path(__file__).resolve().parent
mode = sys.argv[1]
lane = H.parent / ('bodylin' if mode == 'linear' else 'bodylet')
sys.path.insert(0, str(lane))
import check as ck
import minimum as ct
sys.path.insert(0, str(H.parent / 'coord'))
import rd
d = ck.d
start = time.monotonic()
states = 0

def occ(t, i):
    if t[0] == 'v': return int(t[1] == i)
    if t[0] == 'k': return 0
    if t[0] == 'l': return occ(t[1], i+1)
    return occ(t[1], i)+occ(t[2], i)

def holes(t):
    if t[0] == 'k': return int(t[1] == 'j')
    if t[0] == 'v': return 0
    if t[0] == 'l': return holes(t[1])
    return holes(t[1])+holes(t[2])

def wire(t):
    if t[0] == 'v': return t[1]+2
    if t[0] == 'l': return 2+wire(t[1])
    if t[0] == 'a': return 2+wire(t[1])+wire(t[2])
    raise AssertionError('body contains a rigid marker')

def named_to_db(t, env):
    if t[0] == 'V': return d.V(env.index(t[1]))
    if t[0] == 'L': return d.L(named_to_db(t[2], (t[1],)+env))
    return d.A(named_to_db(t[1], env), named_to_db(t[2], env))

if mode == 'linear':
    manifest = json.loads((lane/'body-manifest.json').read_text())
    bodies = {}
    replacements = []
    for row in manifest:
        b = named_to_db(rd.parse(row['body']), ('x','s','c'))
        u = named_to_db(rd.parse(row['replacement']), ('x','s','c'))
        assert d.normalize(b,32) == u
        assert (wire(b),wire(u)) == (row['body_cost'],row['replacement_cost'])
        assert wire(u)<wire(b) and holes(b)==holes(u)==0
        assert rd.alpha_eq(rd.normalize(rd.parse(row['body']),fuel=32),rd.parse(row['replacement']))
        bodies[b] = (u,row)
        replacements.append(dict(index=row['index'],old_x=occ(b,0),new_x=occ(u,0),saving=wire(b)-wire(u)))
    count = 0
    counts = Counter()
    source_set = set()
    archived = (lane/'Cases.lean').read_text()
    archive_manifest = json.loads((lane/'manifest.json').read_text())
    def parse_lean(text):
        toks = iter(re.findall(r'\(|\)|\.\w+|\d+',text))
        def parse():
            assert next(toks)=='('
            tag=next(toks)
            if tag=='.var': t=d.V(int(next(toks)))
            elif tag=='.lam': t=d.L(parse())
            else:
                assert tag=='.app'
                t=d.A(parse(),parse())
            assert next(toks)==')'
            return t
        t=parse()
        assert next(toks,None) is None
        return t
    def recover_hole(t,depth=0):
        if t[0]=='v': return d.Kc('j') if t[1]==depth+1 else t
        if t[0]=='l': return d.L(recover_hole(t[1],depth+1))
        return d.A(recover_hole(t[1],depth),recover_hole(t[2],depth))
    records=re.findall(r'^def r(\d+) : Term := (.+)$',archived,re.M)
    for loc in ('A','B','C'):
        digest=hashlib.sha256()
        nc=0
        for number,text in records:
            entry=archive_manifest['sources'][int(number)]
            if entry['cell']!=loc: continue
            R=recover_hole(parse_lean(text))
            assert hashlib.sha256((repr(R)+'\n').encode()).hexdigest()==entry['source_sha256']
            assert R[0]=='l'
            t=R[1]; args=[]
            while t[0]=='a':args.append(t[2]);t=t[1]
            assert t[0]=='l'
            args.reverse()
            B=t[1]; A=args[0]; Cs=args[1:]
            count += 1
            nc += 1
            assert count+states<100000
            assert R not in source_set
            source_set.add(R)
            digest.update((repr(R)+'\n').encode())
            assert B in bodies
            u,row = bodies[B]
            counts[row['index']] += 1
            t = d.A(d.L(u),A)
            for c in Cs: t = d.A(t,c)
            T = d.L(t)
            assert holes(R)==holes(T)==1
            assert ck.price(R)-ck.price(T)==wire(B)-wire(u)>0
            named = rd.parse(d.show(R,['c']))
            normal = rd.normalize(('A',named,rd.Z('r')),fuel=300)
            assert not rd.alpha_eq(normal,rd.parse('r j'))
        old = json.loads((lane/f'check-1-redex-A-{loc}.json').read_text())
        assert (nc,digest.hexdigest())==(old['sources'],old['source_digest'])
    assert count==569 and len(counts)==11
    assert all(counts[row['index']]==row['sources'] for row in manifest)
    out = dict(sources=count,bodies=11,independent_zero_refutations=count,replacements=replacements)
else:
    # A separate exact grammar derived from the cell's saturated 45-bit budget.
    # B=lambda y.D, D has two x, two y and one c; A=j I; pending=[s].
    cell=(2,'lam','A','B')
    old=json.loads((lane/'check-2-lam-A-B.json').read_text())
    trees_count=0
    def trees(leaves):
        global trees_count
        if len(leaves)==1:
            trees_count+=1
            assert trees_count<100000
            yield d.V(leaves[0])
        else:
            for cut in range(1,len(leaves)):
                for f in trees(leaves[:cut]):
                    for a in trees(leaves[cut:]):
                        trees_count+=1
                        assert trees_count<100000
                        yield d.A(f,a)
    seen=set();counts=Counter()
    A=d.A(d.Kc('j'),d.I)
    for leaves in sorted(set(itertools.permutations((1,1,0,0,3)))):
        for D in trees(leaves):
            B=d.L(D)
            R=d.L(d.A(d.A(d.L(B),A),d.V(0)))
            assert R not in seen
            seen.add(R)
            assert ck.price(R)==45 and occ(B,0)==2 and holes(R)==1
            assert wire(B)==25
            target=d.A(d.Kc('r'),d.Kc('j'))
            assert not ck.matches(d.inst(R[1],d.Z()),target,[200])
            named=rd.parse(d.show(R,['c']))
            normal=rd.normalize(('A',named,rd.Z('r')),fuel=300)
            assert not rd.alpha_eq(normal,rd.parse('r j'))
            counts['wrongzero']+=1
    assert len(seen)==old['sources']==420 and dict(counts)==old['counts']
    assert not old['exceptions'] and not old['hits']
    digest=hashlib.sha256(''.join(sorted(repr(t)+'\n' for t in seen)).encode()).hexdigest()
    out=dict(cell=cell,sources=len(seen),sorted_source_digest=digest,independent_counts=dict(counts),constructor_yields=trees_count,component_prices=dict(a=6,b=25,p=4))
out.update(feature_states=states,seconds=time.monotonic()-start,rss=resource.getrusage(resource.RUSAGE_SELF).ru_maxrss)
(H/(mode+'.json')).write_text(json.dumps(out,indent=2)+'\n')
print(json.dumps(out,indent=2))
