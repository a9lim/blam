import sys
sys.dont_write_bytecode=True
from pathlib import Path
H=Path(__file__).resolve().parent
from probe import d,ad,weakpath,rw,flat
import json,time,resource,signal
signal.alarm(110)
r=json.loads((H/'sources.json').read_text())[208];t=d.A(d.subst(ad.tup(r['tree']),0,d.Kc('c')),d.Z());mx=0
for n in range(1001):
 mx=max(mx,d.size(t));h,args=flat(t)
 if h[0]=='k':break
 p=weakpath(t)
 if p is None:break
 t=rw(t,p)
print('head steps',n,'head',d.show(h),'arity',len(args),'max nodes',mx)
sys.path.insert(0,str(H.parent/'rootnl'));from export import lean
s=f'''import Certificates
namespace Blc.Rootcert2.Halt208
open Term SelfintClass HandlerLet
set_option maxRecDepth 10000
set_option maxHeartbeats 4000000
def r208 : Term := {lean(ad.tup(r['tree']))}
theorem reject208 : ¬ Reader r208 := head_reduct true {n} ({dict(c=0,j=1,N=2,r=3)[h[1]]},{len(args)}) (by decide) (by decide)
#print axioms reject208
end Blc.Rootcert2.Halt208
'''
(H/'Halt208.lean').write_text(s)
