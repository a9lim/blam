"""Count-only positive-depth tight boundary. No term trees are constructed."""
import sys
sys.dont_write_bytecode=True
from pathlib import Path
H=Path(__file__).resolve().parent
sys.path.insert(0,str(H.parent/'rootnf'))
# Reuse grammar source in its own namespace, substituting exact hole depth.
s=(H.parent/'rootnf'/'k5_live.py').read_text()
s=s[:s.index("if __name__=='__main__':")]
s=s.replace('LIMIT=100001','LIMIT=10**100')
s=s.replace('(j and d)','(j and d>1)').replace('j==1 and d==0','j==1 and d==1')
s=s[:s.index('def roots():')]
exec(compile(s,'k4_coefficient_grammar','exec'))

def roots4():
 for z in (0,1):
  for T in range(4-2*z):
   for zb,ob,tb,cb,jb,Tb in itertools.product(range(z+1),range(2),range(2),range(2),range(2),range(T+1)):
    b=((4,),cb,jb,zb,ob,tb,Tb);nb=count(b)
    if not nb:continue
    rem=((),1-cb,1-jb,z-zb,1-ob,1-tb,T-Tb)
    for a,cs in fparts(rem):
     if not sum(a[3:6]):continue # root-flat A=j has depth0, excluded here
     na=count(a);nc=forest(cs)
     if na and nc:yield z,T,b,a,cs,nb*na*nc
rs=list(roots4());rows={}
for z,T,*_,n in rs:rows[f'L{3+z}_tax{T}']=rows.get(f'L{3+z}_tax{T}',0)+n
components={}
for i,key in ((2,'B'),(3,'A'),(4,'Cs')):
 specs={r[i] for r in rs};vals=[forest(s) if i==4 else count(s) for s in specs]
 components[key]=dict(specs=len(specs),total=sum(vals),maximum=max(vals))
rec=dict(rows=rows,total=sum(rows.values()),components=components,seconds=time.monotonic()-START,rss_bytes=resource.getrusage(resource.RUSAGE_SELF).ru_maxrss)
(H/'k4_count.json').write_text(json.dumps(rec,indent=2)+'\n');print(json.dumps(rec,indent=2))
