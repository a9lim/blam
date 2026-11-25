import sys
sys.dont_write_bytecode=True
from pathlib import Path
H=Path(__file__).resolve().parent
sys.path.insert(0,str(H.parent/'coord'));import rd
from arity_flow import cfa,d
import json,signal,time,resource
signal.alarm(110);start=time.monotonic()
def conv(t,env=()):
 if t[0]=='V':return d.V(env.index(t[1])) if t[1] in env else d.Kc(t[1])
 if t[0]=='L':return d.L(conv(t[2],(t[1],)+env))
 return d.A(conv(t[1],env),conv(t[2],env))
checks=[]
for name,src,want in [('162',r'\s. s I (\u. s (\q. c) (s s u)) j',46),('165',r'(\n s. s (\b. b (\u r. r n) c) (s s s)) j',49)]:
 ok,w=rd.check(src,nmax=8,verbose=False);assert ok and w[0]==want
 R=conv(rd.parse(src));zero=cfa(d.A(R,d.Z()),3)[0];one=cfa(d.A(R,d.U(1)),3)[0]
 assert ('r',1) in zero and ('c',2) in one
 checks.append(dict(name=name,reader_laws_zero_through_8=ok,weight=w[0],zero_flow_includes_target=True,one_flow_includes_target=True))
(H/'controls.json').write_text(json.dumps(dict(checks=checks,seconds=time.monotonic()-start,rss_bytes=resource.getrusage(resource.RUSAGE_SELF).ru_maxrss),indent=2)+'\n');print(checks)
