from count import P,limit
import sys,json,collections
A=P/'archive'
sys.path.insert(0,str(A/'rootnl'))
import families as fam, prefix, mixed
from families import d,ad,au
import export as ex
sys.path.insert(0,str(A/'rootcert2'))
from flow import cfa
def funcs(path,marker):
    glob={'__file__':str(path)}
    exec(compile(path.read_text().split(marker)[0],str(path),'exec'),glob)
    return glob
flowexport=funcs(A/'rootcert2/export_flow.py','rows=json.loads')['export']
more=funcs(A/'pending/export_nested.py','items=[]')['proof']
def solve(R,q):
    for b in dict.fromkeys([q,1,0]):
        if b not in (0,1):continue
        t=d.A(d.subst(R,0,d.Kc('c')),d.Z() if not b else d.U(1))
        want=d.A(d.Kc('r'),d.Kc('j')) if not b else d.A(d.A(d.Kc('c'),d.U(0)),d.Kc('N'))
        c=au.cert(t,want)
        if c and c['kind'] in ('loop','missing','head'):
            return c['kind'],ex.proof(c,str(not b).lower())
    t=d.A(d.subst(R,0,d.Kc('c')),d.Z())
    prefix.STATES=0
    try:c=prefix.find(t)
    except prefix.Cap:c=None
    if c:return c.get('certificate',{}).get('kind',c['kind']),more(R,c)
    mixed.COUNT=0
    try:c=mixed.find(t,False)
    except mixed.Cap:c=None
    if c:return 'mixed',more(R,c)
    fam.COUNT=0
    try:c=fam.discover(R)
    except fam.Cap:c=None
    if c:return c['kind'],more(R,c)
    prep=[]
    for _ in range(14):
        if d.size(t)>240:break
        if 'r' not in cfa(t)[0]:
            D,C,ann=flowexport(t)
            return 'flow',f' exact Rootcert2Flow.reject {ex.ps(prep)} {D} {C} {ann} (by decide) (by decide) (by decide)\n'
        p=fam.weakpath(t)
        if p is None:break
        t=fam.mx.rewrite(t,p);prep.append(p)
    return None
def main(w):
    limit()
    es=json.loads((P/f'probe{w}.json').read_text())['exceptions'];sol=[];opens=[];m=collections.Counter()
    for i,e in enumerate(es):
        R=ad.tup(e['source']);hit=solve(R,e['q'])
        if hit is None:opens.append(i);continue
        kind,pf=hit;sol.append((i,kind,pf));m[kind]+=1
    proofdir=P/'proofs';mods=[]
    for off in range(0,len(sol),48):
        name=f'Slice{w}G{off//48}';mods.append(name)
        s=f'import Flow\nimport Extras\nimport Recursor\nimport Lark\nimport Owl\nimport Strict\nnamespace Blc.HandlerLet.{name}\nopen Term SelfintClass SelfintLowerBound SelfintStreamSpecializer SelfintSourceCost\nset_option maxRecDepth 20000\nset_option maxHeartbeats 4000000\n'
        for i,kind,pf in sol[off:off+48]:
            s+=f'def r{i} : Term := {ex.lean(ad.tup(es[i]["source"]))}\ntheorem reject{i} : ¬ Reader r{i} := by\n'+pf.replace('RPLACE',f'r{i}')+f'#print axioms reject{i}\n'
        (proofdir/f'{name}.lean').write_text(s+f'end Blc.HandlerLet.{name}\n')
    (P/f'cert{w}.json').write_text(json.dumps(dict(kinds=m,open=opens,modules=mods,by_index={i:k for i,k,_ in sol})))
    print(w,m,'open',opens[:15],len(opens))
if __name__=='__main__':main(int(sys.argv[1]))
