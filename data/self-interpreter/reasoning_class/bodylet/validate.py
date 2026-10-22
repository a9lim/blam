import sys
sys.dont_write_bytecode=True
from pathlib import Path
H=Path(__file__).resolve().parent
sys.path.insert(0,str(H.parent/'coord'))
import rd
sys.path.insert(0,str(H))
import check as ck
import minimum as ct
import json,time,resource,signal,hashlib
from functools import lru_cache
signal.alarm(110);start=time.monotonic();d=ck.d

def convert(t,env=()):
 if t[0]=='V':
  if t[1]=='j':return d.Kc('j')
  return d.V(env.index(t[1]) if t[1] in env else len(env))
 if t[0]=='L':return d.L(convert(t[2],(t[1],)+env))
 return d.A(convert(t[1],env),convert(t[2],env))
controls=[r'\s. s I (\u. s (\q. c) (s s u)) j',
 r'\s. s (\b. (\x.x x) (\x.b)) (\u. s (\q.c) (s s u)) j',
 r'\s. s I (\u. s (\q.c) (s s ((\x.x x)(\x.x x)))) j',
 r'\s. (\x. s (\b t. b (x t) (c t x))) (s (\b t. b (\a k.k a) (t t)) j)']
positives=[]
for text in controls:
 named=rd.parse(text);R=convert(named);assert R[0]=='l'
 assert ck.price(R)==rd.weight(named)[0]
 for n in range(9):
  target=d.A(d.Kc('r'),d.Kc('j')) if n==0 else d.A(d.A(d.Kc('c'),d.U(n-1)),d.Kc('N'))
  assert ck.matches(d.inst(R[1],d.Z() if not n else d.U(n)),target,[2000])
 assert rd.check(text,nmax=8,verbose=False)[0]
 positives.append(dict(source=text,weight=ck.price(R),probes=9))

def occ(t,i=0):
 if t[0]=='v':return int(t[1]==i)
 if t[0]=='k':return 0
 if t[0]=='l':return occ(t[1],i+1)
 return occ(t[1],i)+occ(t[2],i)
def free(t,cut=0):
 if t[0]=='v':return int(t[1]>=cut)
 if t[0]=='k':return 0
 if t[0]=='l':return free(t[1],cut+1)
 return free(t[1],cut)+free(t[2],cut)
def lams(t):return 1+lams(t[1]) if t[0]=='l' else lams(t[1])+lams(t[2]) if t[0]=='a' else 0
def sunk(t):
 if t[0]!='a':return 0
 f,a=t[1:];u,v=occ(f),occ(a)
 if u and not v:return sunk(f)+free(a,1)
 if v and not u:return sunk(a)+free(f,1)
 return 0
def direct_ok(t,nf,depth=0):
 if t[0] in ('v','k'):return True
 if t[0]=='l':return direct_ok(t[1],nf,depth+1)
 f,a=t[1:]
 if not direct_ok(f,nf,depth) or not direct_ok(a,nf,depth):return False
 if f==d.V(depth+nf-2) and a==d.I:return False
 if a==d.Kc('j') and (f[0]=='l' or free(f)==0):return False
 if f[0]=='l':
  b=f[1]
  if not occ(b) or sunk(b):return False
  if 'j' not in d.consts_of(t):
   u=d.beta(b,a);delta=ck.price(u)-ck.price(t)
   if delta<0 or (delta==0 and lams(u)<lams(t)):return False
 return True
counted=0;kept=0
for nf,j in ((2,0),(2,1),(3,0)):
 bycost={n:0 for n in range(15)}
 for n,t in d.enum_terms(14,nf,'top' if j else None):
  counted+=1;assert counted<=100000
  if direct_ok(t,nf):bycost[n]+=1;kept+=1
 for n,v in bycost.items():assert v==sum(ct.terms(n,nf,j).values()),(nf,j,n,v,sum(ct.terms(n,nf,j).values()))

# Independent named normalizer and direct beta prices on 3 selected blocks per cell.
samples=0;semantic=0;skips=0;hoists=0

def bindj(t,depth=0):
 if t[0]=='k':return d.V(depth)
 if t[0]=='v':return d.V(t[1]+int(t[1]>=depth))
 if t[0]=='l':return d.L(bindj(t[1],depth+1))
 return d.A(bindj(t[1],depth),bindj(t[2],depth))
for m in (2,3,4):
 cells=json.loads((H/f'minimum{m}.json').read_text())['cells']
 for label in cells:
  cell=(m,)+tuple(label.split(':')[1:])
  for _,(a,ka,b,kb,p,kp,ja),num in list(ct.blocks(m,cell))[:3]:
   A=ck.gen(a,2,ja,ka)[0];B=ck.gen(b,3,0,kb)[0];Cs=ck.pgen(p,1-ja,kp)[0]
   body=d.A(d.L(B),A);red=d.beta(B,A)
   for C in Cs:body=d.A(body,C);red=d.A(red,C)
   R=d.L(body);T=d.L(red);named=rd.parse(d.show(R,['c']));assert rd.weight(named)[0]==ck.price(R)==10+a+b+p
   (sa,ca),_,la,_,_,_,_,_=ka;(mm,sb,cb),Ms,_,_,_,_,_,_=kb;sp,cp,lp,_=kp
   if ja:
    Ho=d.A(d.L(bindj(T)),d.Kc('j'));delta=ck.price(Ho)-ck.price(R)
    assert delta==(m-1)*a+(sa+ca)*Ms[0]+m-4-sb+m*ca+cp
    assert lams(Ho)-lams(R)==(m-1)*la;hoists+=1
   else:assert ck.price(T)-ck.price(R)==(m-1)*a+(sa+ca-1)*Ms[0]-2*m-4-sb-cb
   for n in (0,1):
    nt=rd.Z('r') if n==0 else rd.U(n,'N');want=rd.parse('r j') if not n else ('A',('A',('V','c'),rd.U(n-1,'N')),('V','N'))
    target=d.A(d.Kc('r'),d.Kc('j')) if not n else d.A(d.A(d.Kc('c'),d.U(n-1)),d.Kc('N'))
    try:namednf=rd.normalize(('A',named,nt),fuel=300)
    except (rd.Fuel,RecursionError):skips+=1;continue
    assert ck.matches(d.inst(body,d.Z() if not n else d.U(n)),target,[1000])==rd.alpha_eq(namednf,want);semantic+=1
   samples+=1
rec=dict(positive_controls=positives,independent_unfiltered_components=counted,admissible_components=kept,sampled_sources=samples,named_probe_agreements=semantic,named_probe_cutoffs=skips,exact_hoist_controls=hoists,seconds=time.monotonic()-start,rss=resource.getrusage(resource.RUSAGE_SELF).ru_maxrss)
(H/'validation.json').write_text(json.dumps(rec,indent=2)+'\n');print(json.dumps(rec,indent=2))
