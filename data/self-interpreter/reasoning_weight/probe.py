from count import P,f,limit
from table import rows,closed
import sys,pickle,collections,json,hashlib,resource
import generate as g,check as ck,dbn as d
def main(w,profile=None):
    limit()
    expected=sum(h[w] for c,h in rows.items() if c!=closed and (profile is None or c[:2]==profile))
    assert expected<=100000
    bad=[];stats=collections.Counter();seen=set()
    for file in sorted(P.glob(f'blocks_*_{w}.pkl')):
        _,ks,ds,_=file.stem.split('_');f.K,f.JD=int(ks),int(ds)
        if profile is not None and (f.K,f.JD)!=profile:continue
        for fn in (f.count,f.forest,g.gen,g.forest):fn.cache_clear()
        with file.open('rb') as fp:
            while True:
                try:key,n,m=pickle.load(fp)
                except EOFError:break
                cell=(f.K,f.JD,*f.cell(key))
                if cell==closed:continue
                L,T,b,a,cs,bf,af,t=key
                # All retained lambda cells have no pending arguments.
                assert not bf[5] or not t
                assert n==m
                emitted=0
                for B in g.gen(b,bf):
                    for A in g.gen(a,af):
                        for Cs in g.forest(cs,t):
                            R=d.A(d.L(B),A)
                            for C in Cs:R=d.A(R,C)
                            assert ck.weight(R)==w and R not in seen
                            seen.add(R);emitted+=1
                            for q in range(4):
                                arg=d.Z() if q==0 else d.U(q)
                                target=d.A(d.Kc('r'),d.Kc('j')) if q==0 else d.A(d.A(d.Kc('c'),d.U(q-1)),d.Kc('N'))
                                try:ok=ck.matches(d.A(d.subst(R,0,d.Kc('c')),arg),target,[120])
                                except (ck.hc.Cutoff,ck.hc.Cycle,RecursionError) as e:
                                    bad.append(dict(source=R,cell=cell,q=q,reason=type(e).__name__));break
                                if not ok:stats[q]+=1;break
                            else:
                                (P/'HIT.json').write_text(json.dumps([R,cell,w]));sys.exit('ALL PROBES PASSED')
                assert emitted==m
    assert expected==len(seen)
    rec=dict(w=w,total=expected,mismatch=stats,exceptions=bad,rss=resource.getrusage(resource.RUSAGE_SELF).ru_maxrss)
    suffix='' if profile is None else '_%d_%d'%profile
    (P/f'probe{w}{suffix}.json').write_text(json.dumps(rec,separators=(',',':')))
    print(w,expected,stats,len(bad))
if __name__=='__main__':main(int(sys.argv[1]),tuple(map(int,sys.argv[2:])) or None)
