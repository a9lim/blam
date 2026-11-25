from w45finish import *
from w45split import build
def splitExpr(s):
 if s=='':return []
 ts=re.findall(r'\(|\)|\+|-|\w+',s)
 def parse():
  t=ts.pop(0)
  if t=='(':
   vals=[]
   while ts[0]!=')':vals.append(parse())
   ts.pop(0);return vals
  return t
 expr=[]
 while ts:expr.append(parse())
 return expr
def arg(s):return '('+' '.join(map(arg,s))+')' if isinstance(s,list) else s
def arithmetic(s):
 l,r=s.split(' ≤ ');rhs=splitExpr(r);assert len(rhs)==3 and rhs[0]=='flow'
 a,b=map(arg,rhs[1:]);assert b=='arg'
 o=[f' have hpos : 0 < {a} := by omega',f' have hl := Slice45Bounds.leftBound {a} arg',f' have hb := Slice45Bounds.rightBound {a} arg hpos',f' by_cases hm : 0 < flow {a} arg',' ·']
 def upper(x,dep):
  pad='  '+' '*dep
  if isinstance(x,list) and x[0]=='flow':
   return [pad+'apply Slice45Bounds.upper (by omega)',*[pad+'· '+xs[0].lstrip()+'\n'+'\n'.join(xs[1:]) for xs in [upper(x[1],dep+2),upper(x[2],dep+2)]]]
  return [pad+('exact Nat.max_le.mpr ⟨by omega, by omega⟩' if isinstance(x,list) and x[0]=='max' else 'omega')]
 o+=upper(splitExpr(l)[0],0)
 o +=[f' · have hz : flow {a} arg = 0 := by omega',f'   have eq := Slice45Bounds.zeroArg {a} arg hpos hz','   subst arg']
 vs=sorted(set(re.findall(r'\bv[0-9]+\b',s)))
 for j,v in enumerate(vs):
  # The source bound is either max 1 (v-1) or max 1 (v+1).
  o += [f'   have cases{j} : {v}=0 ∨ {v}=1 ∨ {v}=2 := by omega',f'   rcases cases{j} with h{j}|h{j}|h{j} <;> subst {v}']
 o.append('   all_goals first | decide | omega');return '\n'.join(o)
def prepare(i):
 n=f'Slice45Nat{i}';p=proofs/(n+'.lean');s=p.read_text()
 if 'import Slice45Bounds' in s:return
 s=s.replace('import Slice45Arity100B0','import Slice45Bounds')
 s=re.sub(r'^ change (.+)\n simp only \[flow\]\n repeat\' first \| split <;> try omega\n all_goals omega',lambda m:' change '+m[1]+'\n'+arithmetic(m[1]),s,flags=re.M)
 p.write_text(s)
if __name__=='__main__':
 from w45hard import sources
 build(['Slice45Bounds'],'boundslib',True)
 for i in (6774,6778,62900):prepare(i)
 plans={i:('unbounded arity grades',f'Slice45Nat{i}') for i in (6774,6778,29505,29506,62900)}
 plans.update({i:('delayed rigid arguments','Slice45Delay') for i in (31218,31219)})
 plans.update({int(i):('orbit omitting one rigid variable',n) for i,n in json.loads((D/'orbitplans.json').read_text()).items()})
 check_modules(plans,'bounds')
