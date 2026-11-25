from w43hard import *
s=(P.parents[2]/'lean/Blc/SelfintRound6ReaderBinary.lean').read_text();s=s[s.index('import Blc.'):s.index('theorem rigid_typed {')]
a=s.index('inductive Flavor');b=s.index('abbrev Env',a)
s=s[:a]+'''abbrev Flavor := Nat
abbrev rank (a : Nat) := a
def flow (a b : Nat) : Nat :=
 if a=0 then 0 else max (a-1) (if b=0 then 0 else max 1 (b-1))
theorem flow_mono_left {a b : Nat} (h : a≤b) (c : Nat) : flow a c ≤ flow b c := by
 by_cases ha : a=0 <;> by_cases hb : b=0 <;> simp [flow,ha,hb] <;> omega
theorem nonrigid_up {k l : Nat} (hk : k ≠ 0) (hl : k ≤ l) : l ≠ 0 := by omega
''' +s[b:]
s=s.replace('namespace Blc.SelfintRound6ReaderBinary','namespace Blc.Slice43Arity').replace('.rigidApp','__rigidApp').replace('.rigid','0').replace('__rigidApp','.rigidApp')
s=s.replace(' 0App',' .rigidApp')
s+='''
theorem ap {e f a i j} (hf : Typed e f i) (ha : Typed e a j) :
    Typed e (.app f a) (flow i j) := .app hf ha (Nat.le_refl _)
theorem liftConst (e : Env) (j : Nat) : Typed (push j e) (.lam (.var 1)) (j+1) := by
 apply Typed.lam (by omega)
 intro q
 apply Typed.var
 change j ≤ flow (j+1) q
 simp only [flow, Nat.succ_ne_zero,if_false]; omega
theorem diag (e : Env) : Typed e (.lam (.app (.var 0) (.var 0))) 1 := by
 apply Typed.lam (by decide)
 intro j
 have x : Typed (push j e) (.var 0) j := .var _ _ (Nat.le_refl _)
 apply (ap x x).weaken
 change flow j j ≤ flow 1 j
 simp only [flow]; split <;> simp_all <;> omega

def payload : Term := .lam (.app (.var 1) (.app (.app (.var 1) (.lam (.var 1))) (.var 0)))
def helper : Term := .lam (.app (.var 0) payload)
theorem payload_type (e : Env) (i : Nat) : Typed (push i e) payload (max 1 i) := by
 apply Typed.lam (by omega)
 intro j
 let E := push j (push i e)
 have x : Typed E (.var 1) i := .var _ _ (Nat.le_refl _)
 have y : Typed E (.var 0) j := .var _ _ (Nat.le_refl _)
 have ky := liftConst (push i e) j
 apply (ap x (ap (ap x ky) y)).weaken
 change flow i (flow (flow i (j+1)) j) ≤ flow (max 1 i) j
 by_cases hi : i=0 <;> by_cases hj : j=0 <;> simp [flow,hi,hj] <;> (repeat' split) <;> omega
theorem helper_type (e : Env) : Typed e helper 1 := by
 apply Typed.lam (by decide); intro j
 have x : Typed (push j e) (.var 0) j := .var _ _ (Nat.le_refl _)
 apply (ap x (payload_type e j)).weaken
 change flow j (max 1 j) ≤ flow 1 j
 by_cases h : j=0 <;> simp [flow,h] <;> omega
'''
for i in (7741,7742):
 t=ad.tup(sources()[str(i)]['source']);s+=f'def r{i} : Term := {ex.lean(t)}\ntheorem reject{i} : ¬ Reader r{i} := by\n have hh : Typed rigidEnv (.app (.lam (.app (.var 0) (.var 0))) helper) 1 := ap (diag _) (helper_type _)\n apply rigid_typed_not_reader (e:=rigidEnv)\n exact .rigidApp (ap hh (show Typed rigidEnv _ 0 from .var _ _ (Nat.le_refl _)))\n#print axioms reject{i}\n'
(proofs/'Slice43Arity.lean').write_text(s+'end Blc.Slice43Arity\n')
