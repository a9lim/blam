from w43grade import *
def render(i,tab,peers):
 n=f'Slice43Grade{i}';p=P.parents[2]/'lean/Blc/SelfintRound6ReaderBinary.lean';s=p.read_text()
 s=s[s.index('import Blc.'):s.index('theorem rigid_typed {')].replace('namespace Blc.SelfintRound6ReaderBinary','namespace Blc.'+n)
 names=['rigid','pending','clear'];lines=[f'  | .{a}, .{b} => .{names[tab[j][k]]}' for j,a in enumerate(names) for k,b in enumerate(names)]
 s=s[:s.index('  | .rigid, _ =>')]+ '\n'.join(lines)+'\n\n'+s[s.index('theorem flow_mono_left'):]
 def gen(t,e=()):
  a=evaluate(t,tab,e)
  assert a<3
  if t[0] in ('v','k'):return '(.var _ _ (by decide))'
  if t[0]=='a':
   h=gen(t[1],e);k=evaluate(t[1],tab,e)
   if k==0:return f'(.rigidApp {h})'
   m=evaluate(t[2],tab,e)
   return f'(.app (kf := .{names[k]}) (ka := .{names[m]}) {h} {gen(t[2],e)} (by decide))'
  arms=[]
  for j,nm in enumerate(names):
   sub=(j,)+e;v=evaluate(t[1],tab,sub)
   arms.append(f'| .{nm} => (show Typed _ _ .{names[v]} from {gen(t[1],sub)}).weaken _ (by decide)')
  return '(.lam (by decide) (fun '+' '.join(arms)+'))'
 for j in peers:
  t=ad.tup(sources()[str(j)]['source']);assert evaluate(t,tab)==0
  s+=f'def r{j} : Term := {ex.lean(t)}\ntheorem reject{j} : ¬ Reader r{j} := by\n exact rigid_typed_not_reader (e := rigidEnv) {gen(t)}\n#print axioms reject{j}\n'
 (proofs/(n+'.lean')).write_text(s+'end Blc.'+n+'\n');return n
if __name__=='__main__':
 plans=[(i,json.loads((D/f'grade{i}.json').read_text()),[i,i+1]) for i in (8935,9436)]
 mods={i:render(k,t,peers) for k,t,peers in plans for i in peers}
 save(D/'extras.json',{i:['finite grade table',m] for i,m in mods.items()})
 supervise(leanjobs(list(dict.fromkeys(mods.values()))),'grades')
