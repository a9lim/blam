from w45finish import check_modules
from w45cert import *
def fix():
 xs=json.loads((D/'extras.json').read_text());p=json.loads((D/'natplans.json').read_text())
 plans={}
 for n in p['modules']:
  key=n.removeprefix('Slice45Nat')
  if key in xs or (D/f'regular{key}.json').exists():continue
  log=(D/(n+'.log')).read_text();f=proofs/(n+'.lean');s=f.read_text();ls=s.splitlines()
  locations=[int(a)-1 for a in re.findall(r'\.lean:(\d+):\d+: error: omega could not prove',log)]
  for lineno in sorted(set(locations),reverse=True):
   if ls[lineno]!=' all_goals omega':continue
   # Split the zero case of each grade before asking omega to solve the
   # linear inequalities.  Closed numeral comparisons are decided by simp.
   start=lineno-2;assert ls[start]==' simp only [flow]'
   vars_=sorted(set(re.findall(r'\b(?:arg|v\d+)\b',ls[start-1])))
   replacement=[' '+(' <;> '.join(f'by_cases hz{j} : {v}=0' for j,v in enumerate(vars_)))+' <;> simp [flow, *] <;> try omega',
                " all_goals (repeat' first | split <;> simp_all <;> try omega)",' all_goals omega']
   ls[start:lineno+1]=replacement
  f.write_text('\n'.join(ls)+'\n');plans[key]=('unbounded arity grades',n)
 check_modules(plans,'arityfix')
if __name__=='__main__':fix()
