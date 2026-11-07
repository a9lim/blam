"""Read-only audit of SF2's fresh-argument typing bug; conservative local repair."""
import sys,json,time
from pathlib import Path
H=Path(__file__).resolve().parent
sys.path.insert(0,str(H.parent/'rootnarrow/work'));sys.path.insert(0,str(H.parent/'shared'))
import cert,certsf
class ConservativeSF2(certsf.SF2):
 def run_ok(self,start,a,steps=300):
  head=start
  # Only the first incoming argument is guaranteed to be in S.
  for i in range(a):head=('A',head,('C','#Z0' if i==0 else '$arbitrary%d'%i))
  stack=[];n=0
  while n<steps:
   while head[0]=='A':stack.append(head[2]);head=head[1]
   args=stack[::-1]
   if n>0 and args and self.base(head) and self.isS(args[0]):
    need=self.amax if head[0]=='C' else self.arity_of(head)
    if len(args)>=need:return True
   if head[0]!='L' or not stack:return False
   head=cert.beta(head,stack.pop());n+=1
  return False

def repaired(R,inp):
 head=('A',R,inp);stack=[];tried=set()
 for _ in range(100):
  while head[0]=='A':stack.append(head[2]);head=head[1]
  if head[0]!='L' or not stack:return False
  if head not in tried:
   tried.add(head);sf=ConservativeSF2(head)
   if sf.ok and sf.prep() and sf.isS(stack[-1]) and sf.valid2():return True
  head=cert.beta(head,stack.pop())
 return False
rows=[r for r in json.loads((H/'REGRESSION.json').read_text()) if r['legacy']==['SF2']]
rows.append(dict(id='soundness-counterexample',source=json.loads((H/'SF2_BUG.json').read_text())['source']))
out=[]
orig=cert.beta;calls=0;deadline=0
class Limit(Exception):pass
def counted(a,b):
 global calls
 calls+=1
 if calls>8000 or time.monotonic()>deadline:raise Limit()
 return orig(a,b)
cert.beta=counted
for r in rows:
 calls=0;deadline=time.monotonic()+3
 try:ok=repaired(cert.parse_show(r['source']),cert.law_io(0)[0])
 except (Limit,RecursionError):ok=None
 out.append(dict(id=r['id'],repaired_accepts=ok,new_regular_accepts=r.get('new_ok'),work=calls))
(H/'SF2_AUDIT.json').write_text(json.dumps(out,indent=2));print(json.dumps(out,indent=2))
