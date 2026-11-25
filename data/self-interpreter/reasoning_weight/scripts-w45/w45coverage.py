"""Reconcile the observed per-check block hashes to the four coefficient files."""
from w45run import *
from count import f,limit
import pickle
def verify():
 limit()
 spans=collections.defaultdict(list)
 for part in parts():
  cell=cells[part['cell']]
  assert part['lo']==(spans[cell][-1]['hi'] if spans[cell] else 0)
  assert 0<part['total']<=100000 and part['lo']<part['hi']
  rec=json.loads(partfile(part).read_text())
  assert part==rec['part'] and part['total']==rec['total'] and list(cell)==rec['cell']
  spans[cell].append(part)
 assert set(spans)==set(cells)
 tallies={};splits=[]
 for k,j in sorted(set(c[:2] for c in cells)):
  f.K,f.JD=k,j;pieces={};seen=set()
  with (P/f'blocks_{k}_{j}_45.pkl').open('rb') as fp:
   while True:
    try:key,n,m=pickle.load(fp)
    except EOFError:break
    cell=(k,j,*f.cell(key))
    if cell==closed:continue
    assert cell in spans
    ordinal,piece,count,h=pieces.get(cell,(0,0,0,None))
    assert piece<len(spans[cell]);part=spans[cell][piece]
    assert part['lo']<=ordinal<part['hi']
    uid=hashlib.sha256(repr(key).encode()).digest();assert uid not in seen;seen.add(uid)
    if h is None:h=hashlib.sha256()
    assert n==m;h.update((repr((key,n,m))+'\n').encode());count+=m;ordinal+=1
    if ordinal==part['hi']:
     assert count==part['total'] and h.hexdigest()==part['block_sha256']
     tallies[part['key']]=count;piece+=1;count=0;h=None
    pieces[cell]=ordinal,piece,count,h
  for cell,(ordinal,piece,count,h) in pieces.items():
   assert piece==len(spans[cell]) and count==0 and h is None
   if piece>1:splits.append(dict(cell=cell,blocks=ordinal,parts=spans[cell]))
 assert sum(tallies.values())==1544876 and len(tallies)==len(parts())
 save(D/'coverage.json',dict(checks=len(tallies),sources=sum(tallies.values()),splits=splits))
if __name__=='__main__':verify()
