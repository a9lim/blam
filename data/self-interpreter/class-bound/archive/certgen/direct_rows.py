"""Bound elaborator memory by checking each state separately, then compose its block."""
import json,re
from pathlib import Path
H=Path(__file__).resolve().parent
mods=json.loads((H/'modules.json').read_text())
for name in mods:
 if not (name.startswith('Case04Block') and int(name[11:13])>=23):continue
 p=H/name;s=p.read_text();matches=re.findall(r'theorem (block\d+) : checkRange P V K states hints (\d+) (\d+)=true := by decide',s)
 if not matches:continue
 head=s[:s.index('theorem block')];out=[]
 for th,lo,n in matches:
  lo=int(lo);n=int(n)
  for i in range(lo,lo+n):
   out.append(f'theorem row{i} : (match states[{i}]? with | none => false | some s => goodb P V K states s (hints[{i}]?.getD []))=true := by decide +kernel')
  cases=' ∨ '.join(f'j={i}' for i in range(n))
  branches=' | '.join('rfl' for _ in range(n))
  out.append(f'''theorem {th} : checkRange P V K states hints {lo} {n}=true := by
 apply List.all_eq_true.mpr
 intro j hj
 have hlt : j<{n} := List.mem_range.mp hj
 have hcases : {cases} := by omega
 rcases hcases with {branches}''')
  for i in range(lo,lo+n):out.append(f' · exact row{i}')
 p.write_text(head+'\n'.join(out)+'\nend Certgen.Case04\n')
