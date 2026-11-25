import sys
sys.dont_write_bytecode=True
from pathlib import Path
H=Path(__file__).resolve().parent
from export import ad
from families import d,flat
import json,collections,hashlib

def countj(t):return int(t[0]=='k') if t[0] in ('k','v') else sum(countj(x) for x in t[1:])
def occ(t,i):
 if t[0]=='v':return int(t[1]==i)
 if t[0]=='k':return 0
 if t[0]=='l':return occ(t[1],i+1)
 return occ(t[1],i)+occ(t[2],i)
def moments(t,i,depth=0):
 if t[0]=='v':return depth if t[1]==i else 0
 if t[0]=='k':return 0
 if t[0]=='l':return moments(t[1],i+1,depth+1)
 return moments(t[1],i,depth)+moments(t[2],i,depth)
def price(t,dep=0):
 if t[0]=='v':return t[1]+2
 if t[0]=='k':return 4*dep
 if t[0]=='l':return 2+price(t[1],dep+1)
 return 2+price(t[1],dep)+price(t[2],dep)
def lams(t):return int(t[0]=='l')+sum(lams(x) for x in t[1:]) if t[0] in ('l','a') else 0
def chain(t):
 n=0
 while t[0]=='l':n+=1;t=t[1]
 return n
rows=[];group=collections.Counter()
strict_done={(r['file'],r['index']) for r in json.loads((H/'strict_manifest.json').read_text())}
for f in sorted(H.glob('mixed_4_0_*.json')):
 r=json.loads(f.read_text());es=json.loads((H/r['source_file']).read_text())['exceptions']
 for i in r['opened']:
  if (r['source_file'],i) in strict_done:continue
  e=es[i];R=ad.tup(e['source']);h,args=flat(R);assert h[0]=='l';B=h[1];A=args[0];Cs=args[1:]
  m=occ(B,0);M=moments(B,0);ca=occ(A,0);cb=occ(B,1);W=price(A)
  p=(m-1)*W+(ca-1)*M-4-2*m-cb
  assert not countj(A) and not countj(B) and m==4 and price(R)==e['w'] and p>=0
  row=dict(id=len(rows),file=r['source_file'],exception_index=i,weight=e['w'],lambda_count=lams(R),k=m,hole_depth=0,A_weight=W,A_c=ca,B_c=cb,M=M,root_contraction_delta=p,B_leading_lambdas=chain(B),A_leading_lambdas=chain(A),pending=len(Cs),source=d.show(R,['c']),helper=d.show(A,['c']),tree=R)
  rows.append(row);group[(row['A_weight'],row['helper'])]+=1
(H/'SURVIVORS.json').write_text(json.dumps(rows,separators=(',',':'))+'\n')
fields=['id','weight','lambda_count','A_weight','A_c','B_c','M','root_contraction_delta','A_leading_lambdas','pending','source','file','exception_index']
(H/'SURVIVORS.tsv').write_text('\t'.join(fields)+'\n'+''.join('\t'.join(str(r[x]) for x in fields)+'\n' for r in rows))
(H/'ARGUMENTS.tsv').write_text('A_weight\tcount\thelper\n'+''.join(f'{w}\t{n}\t{a}\n' for (w,a),n in sorted(group.items())))
print('literal unresolved sources',len(rows),'helper groups',len(group))
