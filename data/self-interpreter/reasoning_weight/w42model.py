from w42regular import *
def bound_model(t):
 ts=[]
 def go(x,dep):
  ts.append(ex.lean(x,dep))
  if x[0]=='l':go(x[1],dep+1)
  if x[0]=='a':go(x[1],dep);go(x[2],dep)
 go(t,0)
 return """
def syntaxTable : Array Term := #["""+', '.join(ts)+"""]
def termAt (i : Nat) : Term := syntaxTable[i]?.getD (.var 0)
def aligns (p : Nat) : Bool := match P p with
 | .opaque => true
 | .var i => decide (termAt p = .var i)
 | .lam b => decide (termAt p = .lam (termAt b))
 | .app f a => decide (termAt p = .app (termAt f) (termAt a))
theorem tableValidated : (List.range code.size).all aligns = true := by decide
theorem alignEvery (p : Nat) : aligns p = true := by
 by_cases hp : p < code.size
 · exact List.all_eq_true.mp tableValidated p (List.mem_range.mpr hp)
 · have hz : code[p]? = none := Array.getElem?_eq_none (by omega)
   simp [aligns,P,hz]
def model : Model P where
 term := termAt
 var_eq := by intro p i h; simpa [aligns,h] using alignEvery p
 lam_eq := by intro p b h; simpa [aligns,h] using alignEvery p
 app_eq := by intro p f a h; simpa [aligns,h] using alignEvery p
theorem literal : model.term 0 = core := rfl
"""
def replace(i,es):
 data=json.loads((D/f'regular{i}.json').read_text());R=ad.tup(es[i]['source']);t,prep,rest=list(options(R))[data['idx']]
 emit(R,i,t,prep,rest,data['certificate'])
 path=proofs/f'Slice42Regular{i}.lean';s=path.read_text()
 s=s[:s.index('theorem forward')]+bound_model(t)+s[s.index('theorem diverges'):]
 path.write_text(s)
if __name__=='__main__':
 op,es=residual()
 for i in op:replace(i,es)
