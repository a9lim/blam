import Blc.SelfintResidual45.MultiTypes

set_option Elab.async false
namespace Blc.Floor45.Atom9692449588186
open Term SelfintLowerBound SelfintControl SelfintSharp Round3Floor38 MultiTypes
set_option maxRecDepth 30000
set_option maxHeartbeats 6000000
def ars0 : List (Arrow 4) := []
def ars1 : List (Arrow 4) := [⟨[0,1,3],0⟩,⟨[0,1,3],1⟩,⟨[0,2],0⟩,⟨[0,2],2⟩]
def ars2 : List (Arrow 4) := [⟨[],1⟩,⟨[],3⟩]
def ars3 : List (Arrow 4) := [⟨[0,1,3],1⟩,⟨[0,1,3],3⟩,⟨[0,2],1⟩,⟨[0,2],3⟩]
def graph (i : Fin 4) : Option (List (Arrow 4)) := match i.val with
  | 0 => some ars0
  | 1 => some ars1
  | 2 => some ars2
  | 3 => some ars3
  | _ => none
def env (i : Nat) : List (Fin 4) := if i=1 then [0,2] else [0,3]
def lit0 : Term := .var 0
def lit1 : Term := .app lit0 lit0
def lit2 : Term := .lam lit1
def lit3 : Term := .var 2
def lit4 : Term := .var 1
def lit5 : Term := .app lit3 lit4
def lit6 : Term := .lam lit5
def lit7 : Term := .app lit3 lit6
def lit8 : Term := .lam lit7
def lit9 : Term := .lam lit8
def lit10 : Term := .app lit0 lit9
def lit11 : Term := .app lit0 lit10
def lit12 : Term := .app lit11 lit0
def lit13 : Term := .lam lit12
def lit14 : Term := .app lit2 lit13
def lit15 : Term := .app lit14 lit4
def lit16 : Term := .lam lit4
def lit17 : Term := .lam lit16
def lit18 : Term := .app lit0 lit17
def lit19 : Term := .lam lit0
def lit20 : Term := .lam lit19
def lit21 : Term := .app lit0 lit20
def lit22 : Term := .var 4
def lit23 : Term := .app lit18 lit22
def lit24 : Term := .lam lit23
def lit25 : Term := .app lit21 lit24
def lit26 : Term := .lam lit25
def lit27 : Term := .app lit18 lit26
def lit28 : Term := .lam lit27
def lit29 : Term := .app lit18 lit28
def lit30 : Term := .lam lit29
def lit31 : Term := .app lit15 lit30
theorem q0 (e : Env 4) (h1 : e 1 = [0,2]) : Ty graph e lit4 0 := .var (by rw [h1]; decide)
theorem q1 (e : Env 4) (h1 : e 1 = [0,2]) : Ty graph e lit4 2 := .var (by rw [h1]; decide)
theorem q2 (e : Env 4)  : Ty graph e lit13 0 := .lam (ars := ars0) (by rfl) allNil
theorem q3 (e : Env 4) (h0 : e 0 = [0,1,3]) : Ty graph e lit0 0 := .var (by rw [h0]; decide)
theorem q4 (e : Env 4) (h0 : e 0 = [0,1,3]) : Ty graph e lit0 1 := .var (by rw [h0]; decide)
theorem q5 (e : Env 4) (h0 : e 0 = [0,1,3]) : Ty graph e lit0 3 := .var (by rw [h0]; decide)
theorem q6 (e : Env 4) (h0 : e 0 = [0,1,3]) : Ty graph e lit9 0 := .lam (ars := ars0) (by rfl) allNil
theorem q7 (e : Env 4) (h0 : e 0 = [0,1,3]) (h1 : e 1 = [0,1,3]) : Ty graph e lit8 0 := .lam (ars := ars0) (by rfl) allNil
theorem q8 (e : Env 4) (h0 : e 0 = [0,1,3]) (h1 : e 1 = [0,1,3]) : Ty graph e lit6 0 := .lam (ars := ars0) (by rfl) allNil
theorem q9 (e : Env 4) (h1 : e 1 = [0,1,3]) : Ty graph e lit4 0 := .var (by rw [h1]; decide)
theorem q10 (e : Env 4) (h1 : e 1 = [0,1,3]) : Ty graph e lit4 1 := .var (by rw [h1]; decide)
theorem q11 (e : Env 4) (h1 : e 1 = [0,1,3]) : Ty graph e lit4 3 := .var (by rw [h1]; decide)
theorem q12 (e : Env 4) (h2 : e 2 = [0,1,3]) : Ty graph e lit3 1 := .var (by rw [h2]; decide)
theorem q13 (e : Env 4) (h1 : e 1 = [0,1,3]) (h2 : e 2 = [0,1,3]) : Ty graph e lit5 1 := .app (z := 1) (ars := ars1) (a := ⟨[0,1,3],1⟩) (by rfl) (by decide) (q12 e h2) (allCons (q9 e h1) (allCons (q10 e h1) (allCons (q11 e h1) allNil)))
theorem q14 (e : Env 4) (h2 : e 2 = [0,1,3]) : Ty graph e lit3 3 := .var (by rw [h2]; decide)
theorem q15 (e : Env 4) (h1 : e 1 = [0,1,3]) (h2 : e 2 = [0,1,3]) : Ty graph e lit5 3 := .app (z := 3) (ars := ars3) (a := ⟨[0,1,3],3⟩) (by rfl) (by decide) (q14 e h2) (allCons (q9 e h1) (allCons (q10 e h1) (allCons (q11 e h1) allNil)))
theorem q16 (e : Env 4) (h0 : e 0 = [0,1,3]) (h1 : e 1 = [0,1,3]) : Ty graph e lit6 2 := .lam (ars := ars2) (by rfl) (allCons (q13 (push [] e) h0 h1) (allCons (q15 (push [] e) h0 h1) allNil))
theorem q17 (e : Env 4) (h0 : e 0 = [0,1,3]) (h1 : e 1 = [0,1,3]) (h2 : e 2 = [0,1,3]) : Ty graph e lit7 0 := .app (z := 1) (ars := ars1) (a := ⟨[0,2],0⟩) (by rfl) (by decide) (q12 e h2) (allCons (q8 e h0 h1) (allCons (q16 e h0 h1) allNil))
theorem q18 (e : Env 4) (h0 : e 0 = [0,1,3]) (h1 : e 1 = [0,1,3]) (h2 : e 2 = [0,1,3]) : Ty graph e lit7 1 := .app (z := 3) (ars := ars3) (a := ⟨[0,2],1⟩) (by rfl) (by decide) (q14 e h2) (allCons (q8 e h0 h1) (allCons (q16 e h0 h1) allNil))
theorem q19 (e : Env 4) (h0 : e 0 = [0,2]) (h1 : e 1 = [0,1,3]) : Ty graph e lit6 0 := .lam (ars := ars0) (by rfl) allNil
theorem q20 (e : Env 4) (h1 : e 1 = [0,2]) (h2 : e 2 = [0,1,3]) : Ty graph e lit5 1 := .app (z := 3) (ars := ars3) (a := ⟨[0,2],1⟩) (by rfl) (by decide) (q14 e h2) (allCons (q0 e h1) (allCons (q1 e h1) allNil))
theorem q21 (e : Env 4) (h1 : e 1 = [0,2]) (h2 : e 2 = [0,1,3]) : Ty graph e lit5 3 := .app (z := 3) (ars := ars3) (a := ⟨[0,2],3⟩) (by rfl) (by decide) (q14 e h2) (allCons (q0 e h1) (allCons (q1 e h1) allNil))
theorem q22 (e : Env 4) (h0 : e 0 = [0,2]) (h1 : e 1 = [0,1,3]) : Ty graph e lit6 2 := .lam (ars := ars2) (by rfl) (allCons (q20 (push [] e) h0 h1) (allCons (q21 (push [] e) h0 h1) allNil))
theorem q23 (e : Env 4) (h0 : e 0 = [0,2]) (h1 : e 1 = [0,1,3]) (h2 : e 2 = [0,1,3]) : Ty graph e lit7 0 := .app (z := 1) (ars := ars1) (a := ⟨[0,2],0⟩) (by rfl) (by decide) (q12 e h2) (allCons (q19 e h0 h1) (allCons (q22 e h0 h1) allNil))
theorem q24 (e : Env 4) (h0 : e 0 = [0,2]) (h1 : e 1 = [0,1,3]) (h2 : e 2 = [0,1,3]) : Ty graph e lit7 2 := .app (z := 1) (ars := ars1) (a := ⟨[0,2],2⟩) (by rfl) (by decide) (q12 e h2) (allCons (q19 e h0 h1) (allCons (q22 e h0 h1) allNil))
theorem q25 (e : Env 4) (h0 : e 0 = [0,1,3]) (h1 : e 1 = [0,1,3]) : Ty graph e lit8 1 := .lam (ars := ars1) (by rfl) (allCons (q17 (push [0,1,3] e) rfl h0 h1) (allCons (q18 (push [0,1,3] e) rfl h0 h1) (allCons (q23 (push [0,2] e) rfl h0 h1) (allCons (q24 (push [0,2] e) rfl h0 h1) allNil))))
theorem q26 (e : Env 4) (h0 : e 0 = [0,2]) (h1 : e 1 = [0,1,3]) : Ty graph e lit8 0 := .lam (ars := ars0) (by rfl) allNil
theorem q27 (e : Env 4) (h0 : e 0 = []) (h1 : e 1 = [0,2]) : Ty graph e lit6 0 := .lam (ars := ars0) (by rfl) allNil
theorem q28 (e : Env 4) (h2 : e 2 = [0,2]) : Ty graph e lit3 2 := .var (by rw [h2]; decide)
theorem q29 (e : Env 4) (h1 : e 1 = []) (h2 : e 2 = [0,2]) : Ty graph e lit5 1 := .app (z := 2) (ars := ars2) (a := ⟨[],1⟩) (by rfl) (by decide) (q28 e h2) allNil
theorem q30 (e : Env 4) (h1 : e 1 = []) (h2 : e 2 = [0,2]) : Ty graph e lit5 3 := .app (z := 2) (ars := ars2) (a := ⟨[],3⟩) (by rfl) (by decide) (q28 e h2) allNil
theorem q31 (e : Env 4) (h0 : e 0 = []) (h1 : e 1 = [0,2]) : Ty graph e lit6 2 := .lam (ars := ars2) (by rfl) (allCons (q29 (push [] e) h0 h1) (allCons (q30 (push [] e) h0 h1) allNil))
theorem q32 (e : Env 4) (h0 : e 0 = []) (h1 : e 1 = [0,2]) (h2 : e 2 = [0,1,3]) : Ty graph e lit7 1 := .app (z := 3) (ars := ars3) (a := ⟨[0,2],1⟩) (by rfl) (by decide) (q14 e h2) (allCons (q27 e h0 h1) (allCons (q31 e h0 h1) allNil))
theorem q33 (e : Env 4) (h0 : e 0 = []) (h1 : e 1 = [0,2]) (h2 : e 2 = [0,1,3]) : Ty graph e lit7 3 := .app (z := 3) (ars := ars3) (a := ⟨[0,2],3⟩) (by rfl) (by decide) (q14 e h2) (allCons (q27 e h0 h1) (allCons (q31 e h0 h1) allNil))
theorem q34 (e : Env 4) (h0 : e 0 = [0,2]) (h1 : e 1 = [0,1,3]) : Ty graph e lit8 2 := .lam (ars := ars2) (by rfl) (allCons (q32 (push [] e) rfl h0 h1) (allCons (q33 (push [] e) rfl h0 h1) allNil))
theorem q35 (e : Env 4) (h0 : e 0 = [0,1,3]) : Ty graph e lit9 1 := .lam (ars := ars1) (by rfl) (allCons (q7 (push [0,1,3] e) rfl h0) (allCons (q25 (push [0,1,3] e) rfl h0) (allCons (q26 (push [0,2] e) rfl h0) (allCons (q34 (push [0,2] e) rfl h0) allNil))))
theorem q36 (e : Env 4) (h0 : e 0 = [0,1,3]) (h1 : e 1 = [0,1,3]) (h2 : e 2 = [0,1,3]) : Ty graph e lit7 3 := .app (z := 3) (ars := ars3) (a := ⟨[0,2],3⟩) (by rfl) (by decide) (q14 e h2) (allCons (q8 e h0 h1) (allCons (q16 e h0 h1) allNil))
theorem q37 (e : Env 4) (h0 : e 0 = [0,2]) (h1 : e 1 = [0,1,3]) (h2 : e 2 = [0,1,3]) : Ty graph e lit7 1 := .app (z := 3) (ars := ars3) (a := ⟨[0,2],1⟩) (by rfl) (by decide) (q14 e h2) (allCons (q19 e h0 h1) (allCons (q22 e h0 h1) allNil))
theorem q38 (e : Env 4) (h0 : e 0 = [0,2]) (h1 : e 1 = [0,1,3]) (h2 : e 2 = [0,1,3]) : Ty graph e lit7 3 := .app (z := 3) (ars := ars3) (a := ⟨[0,2],3⟩) (by rfl) (by decide) (q14 e h2) (allCons (q19 e h0 h1) (allCons (q22 e h0 h1) allNil))
theorem q39 (e : Env 4) (h0 : e 0 = [0,1,3]) (h1 : e 1 = [0,1,3]) : Ty graph e lit8 3 := .lam (ars := ars3) (by rfl) (allCons (q18 (push [0,1,3] e) rfl h0 h1) (allCons (q36 (push [0,1,3] e) rfl h0 h1) (allCons (q37 (push [0,2] e) rfl h0 h1) (allCons (q38 (push [0,2] e) rfl h0 h1) allNil))))
theorem q40 (e : Env 4) (h0 : e 0 = [0,1,3]) (h1 : e 1 = [0,2]) : Ty graph e lit6 0 := .lam (ars := ars0) (by rfl) allNil
theorem q41 (e : Env 4) (h1 : e 1 = [0,1,3]) (h2 : e 2 = [0,2]) : Ty graph e lit5 1 := .app (z := 2) (ars := ars2) (a := ⟨[],1⟩) (by rfl) (by decide) (q28 e h2) allNil
theorem q42 (e : Env 4) (h1 : e 1 = [0,1,3]) (h2 : e 2 = [0,2]) : Ty graph e lit5 3 := .app (z := 2) (ars := ars2) (a := ⟨[],3⟩) (by rfl) (by decide) (q28 e h2) allNil
theorem q43 (e : Env 4) (h0 : e 0 = [0,1,3]) (h1 : e 1 = [0,2]) : Ty graph e lit6 2 := .lam (ars := ars2) (by rfl) (allCons (q41 (push [] e) h0 h1) (allCons (q42 (push [] e) h0 h1) allNil))
theorem q44 (e : Env 4) (h0 : e 0 = [0,1,3]) (h1 : e 1 = [0,2]) (h2 : e 2 = [0,1,3]) : Ty graph e lit7 0 := .app (z := 1) (ars := ars1) (a := ⟨[0,2],0⟩) (by rfl) (by decide) (q12 e h2) (allCons (q40 e h0 h1) (allCons (q43 e h0 h1) allNil))
theorem q45 (e : Env 4) (h0 : e 0 = [0,1,3]) (h1 : e 1 = [0,2]) (h2 : e 2 = [0,1,3]) : Ty graph e lit7 1 := .app (z := 3) (ars := ars3) (a := ⟨[0,2],1⟩) (by rfl) (by decide) (q14 e h2) (allCons (q40 e h0 h1) (allCons (q43 e h0 h1) allNil))
theorem q46 (e : Env 4) (h0 : e 0 = [0,2]) (h1 : e 1 = [0,2]) : Ty graph e lit6 0 := .lam (ars := ars0) (by rfl) allNil
theorem q47 (e : Env 4) (h1 : e 1 = [0,2]) (h2 : e 2 = [0,2]) : Ty graph e lit5 1 := .app (z := 2) (ars := ars2) (a := ⟨[],1⟩) (by rfl) (by decide) (q28 e h2) allNil
theorem q48 (e : Env 4) (h1 : e 1 = [0,2]) (h2 : e 2 = [0,2]) : Ty graph e lit5 3 := .app (z := 2) (ars := ars2) (a := ⟨[],3⟩) (by rfl) (by decide) (q28 e h2) allNil
theorem q49 (e : Env 4) (h0 : e 0 = [0,2]) (h1 : e 1 = [0,2]) : Ty graph e lit6 2 := .lam (ars := ars2) (by rfl) (allCons (q47 (push [] e) h0 h1) (allCons (q48 (push [] e) h0 h1) allNil))
theorem q50 (e : Env 4) (h0 : e 0 = [0,2]) (h1 : e 1 = [0,2]) (h2 : e 2 = [0,1,3]) : Ty graph e lit7 0 := .app (z := 1) (ars := ars1) (a := ⟨[0,2],0⟩) (by rfl) (by decide) (q12 e h2) (allCons (q46 e h0 h1) (allCons (q49 e h0 h1) allNil))
theorem q51 (e : Env 4) (h0 : e 0 = [0,2]) (h1 : e 1 = [0,2]) (h2 : e 2 = [0,1,3]) : Ty graph e lit7 2 := .app (z := 1) (ars := ars1) (a := ⟨[0,2],2⟩) (by rfl) (by decide) (q12 e h2) (allCons (q46 e h0 h1) (allCons (q49 e h0 h1) allNil))
theorem q52 (e : Env 4) (h0 : e 0 = [0,2]) (h1 : e 1 = [0,1,3]) : Ty graph e lit8 1 := .lam (ars := ars1) (by rfl) (allCons (q44 (push [0,1,3] e) rfl h0 h1) (allCons (q45 (push [0,1,3] e) rfl h0 h1) (allCons (q50 (push [0,2] e) rfl h0 h1) (allCons (q51 (push [0,2] e) rfl h0 h1) allNil))))
theorem q53 (e : Env 4) (h0 : e 0 = [0,1,3]) (h1 : e 1 = [0,2]) (h2 : e 2 = [0,1,3]) : Ty graph e lit7 3 := .app (z := 3) (ars := ars3) (a := ⟨[0,2],3⟩) (by rfl) (by decide) (q14 e h2) (allCons (q40 e h0 h1) (allCons (q43 e h0 h1) allNil))
theorem q54 (e : Env 4) (h0 : e 0 = [0,2]) (h1 : e 1 = [0,2]) (h2 : e 2 = [0,1,3]) : Ty graph e lit7 1 := .app (z := 3) (ars := ars3) (a := ⟨[0,2],1⟩) (by rfl) (by decide) (q14 e h2) (allCons (q46 e h0 h1) (allCons (q49 e h0 h1) allNil))
theorem q55 (e : Env 4) (h0 : e 0 = [0,2]) (h1 : e 1 = [0,2]) (h2 : e 2 = [0,1,3]) : Ty graph e lit7 3 := .app (z := 3) (ars := ars3) (a := ⟨[0,2],3⟩) (by rfl) (by decide) (q14 e h2) (allCons (q46 e h0 h1) (allCons (q49 e h0 h1) allNil))
theorem q56 (e : Env 4) (h0 : e 0 = [0,2]) (h1 : e 1 = [0,1,3]) : Ty graph e lit8 3 := .lam (ars := ars3) (by rfl) (allCons (q45 (push [0,1,3] e) rfl h0 h1) (allCons (q53 (push [0,1,3] e) rfl h0 h1) (allCons (q54 (push [0,2] e) rfl h0 h1) (allCons (q55 (push [0,2] e) rfl h0 h1) allNil))))
theorem q57 (e : Env 4) (h0 : e 0 = [0,1,3]) : Ty graph e lit9 3 := .lam (ars := ars3) (by rfl) (allCons (q25 (push [0,1,3] e) rfl h0) (allCons (q39 (push [0,1,3] e) rfl h0) (allCons (q52 (push [0,2] e) rfl h0) (allCons (q56 (push [0,2] e) rfl h0) allNil))))
theorem q58 (e : Env 4) (h0 : e 0 = [0,1,3]) : Ty graph e lit10 0 := .app (z := 1) (ars := ars1) (a := ⟨[0,1,3],0⟩) (by rfl) (by decide) (q4 e h0) (allCons (q6 e h0) (allCons (q35 e h0) (allCons (q57 e h0) allNil)))
theorem q59 (e : Env 4) (h0 : e 0 = [0,1,3]) : Ty graph e lit10 1 := .app (z := 1) (ars := ars1) (a := ⟨[0,1,3],1⟩) (by rfl) (by decide) (q4 e h0) (allCons (q6 e h0) (allCons (q35 e h0) (allCons (q57 e h0) allNil)))
theorem q60 (e : Env 4) (h0 : e 0 = [0,1,3]) : Ty graph e lit10 3 := .app (z := 3) (ars := ars3) (a := ⟨[0,1,3],3⟩) (by rfl) (by decide) (q5 e h0) (allCons (q6 e h0) (allCons (q35 e h0) (allCons (q57 e h0) allNil)))
theorem q61 (e : Env 4) (h0 : e 0 = [0,1,3]) : Ty graph e lit11 1 := .app (z := 1) (ars := ars1) (a := ⟨[0,1,3],1⟩) (by rfl) (by decide) (q4 e h0) (allCons (q58 e h0) (allCons (q59 e h0) (allCons (q60 e h0) allNil)))
theorem q62 (e : Env 4) (h0 : e 0 = [0,1,3]) : Ty graph e lit12 0 := .app (z := 1) (ars := ars1) (a := ⟨[0,1,3],0⟩) (by rfl) (by decide) (q61 e h0) (allCons (q3 e h0) (allCons (q4 e h0) (allCons (q5 e h0) allNil)))
theorem q63 (e : Env 4) (h0 : e 0 = [0,1,3]) : Ty graph e lit12 1 := .app (z := 1) (ars := ars1) (a := ⟨[0,1,3],1⟩) (by rfl) (by decide) (q61 e h0) (allCons (q3 e h0) (allCons (q4 e h0) (allCons (q5 e h0) allNil)))
theorem q64 (e : Env 4) (h0 : e 0 = [0,2]) : Ty graph e lit0 0 := .var (by rw [h0]; decide)
theorem q65 (e : Env 4) (h0 : e 0 = [0,2]) : Ty graph e lit0 2 := .var (by rw [h0]; decide)
theorem q66 (e : Env 4) (h0 : e 0 = [0,2]) : Ty graph e lit11 1 := .app (z := 2) (ars := ars2) (a := ⟨[],1⟩) (by rfl) (by decide) (q65 e h0) allNil
theorem q67 (e : Env 4) (h0 : e 0 = [0,2]) : Ty graph e lit12 0 := .app (z := 1) (ars := ars1) (a := ⟨[0,2],0⟩) (by rfl) (by decide) (q66 e h0) (allCons (q64 e h0) (allCons (q65 e h0) allNil))
theorem q68 (e : Env 4) (h0 : e 0 = [0,2]) : Ty graph e lit12 2 := .app (z := 1) (ars := ars1) (a := ⟨[0,2],2⟩) (by rfl) (by decide) (q66 e h0) (allCons (q64 e h0) (allCons (q65 e h0) allNil))
theorem q69 (e : Env 4)  : Ty graph e lit13 1 := .lam (ars := ars1) (by rfl) (allCons (q62 (push [0,1,3] e) rfl) (allCons (q63 (push [0,1,3] e) rfl) (allCons (q67 (push [0,2] e) rfl) (allCons (q68 (push [0,2] e) rfl) allNil))))
theorem q70 (e : Env 4) (h0 : e 0 = [0,1,3]) : Ty graph e lit11 3 := .app (z := 3) (ars := ars3) (a := ⟨[0,1,3],3⟩) (by rfl) (by decide) (q5 e h0) (allCons (q58 e h0) (allCons (q59 e h0) (allCons (q60 e h0) allNil)))
theorem q71 (e : Env 4) (h0 : e 0 = [0,1,3]) : Ty graph e lit12 3 := .app (z := 3) (ars := ars3) (a := ⟨[0,1,3],3⟩) (by rfl) (by decide) (q70 e h0) (allCons (q3 e h0) (allCons (q4 e h0) (allCons (q5 e h0) allNil)))
theorem q72 (e : Env 4) (h0 : e 0 = [0,2]) : Ty graph e lit11 3 := .app (z := 2) (ars := ars2) (a := ⟨[],3⟩) (by rfl) (by decide) (q65 e h0) allNil
theorem q73 (e : Env 4) (h0 : e 0 = [0,2]) : Ty graph e lit12 1 := .app (z := 3) (ars := ars3) (a := ⟨[0,2],1⟩) (by rfl) (by decide) (q72 e h0) (allCons (q64 e h0) (allCons (q65 e h0) allNil))
theorem q74 (e : Env 4) (h0 : e 0 = [0,2]) : Ty graph e lit12 3 := .app (z := 3) (ars := ars3) (a := ⟨[0,2],3⟩) (by rfl) (by decide) (q72 e h0) (allCons (q64 e h0) (allCons (q65 e h0) allNil))
theorem q75 (e : Env 4)  : Ty graph e lit13 3 := .lam (ars := ars3) (by rfl) (allCons (q63 (push [0,1,3] e) rfl) (allCons (q71 (push [0,1,3] e) rfl) (allCons (q73 (push [0,2] e) rfl) (allCons (q74 (push [0,2] e) rfl) allNil))))
theorem q76 (e : Env 4) (h0 : e 0 = [0,1,3]) : Ty graph e lit1 1 := .app (z := 1) (ars := ars1) (a := ⟨[0,1,3],1⟩) (by rfl) (by decide) (q4 e h0) (allCons (q3 e h0) (allCons (q4 e h0) (allCons (q5 e h0) allNil)))
theorem q77 (e : Env 4) (h0 : e 0 = [0,1,3]) : Ty graph e lit1 3 := .app (z := 3) (ars := ars3) (a := ⟨[0,1,3],3⟩) (by rfl) (by decide) (q5 e h0) (allCons (q3 e h0) (allCons (q4 e h0) (allCons (q5 e h0) allNil)))
theorem q78 (e : Env 4) (h0 : e 0 = [0,2]) : Ty graph e lit1 1 := .app (z := 2) (ars := ars2) (a := ⟨[],1⟩) (by rfl) (by decide) (q65 e h0) allNil
theorem q79 (e : Env 4) (h0 : e 0 = [0,2]) : Ty graph e lit1 3 := .app (z := 2) (ars := ars2) (a := ⟨[],3⟩) (by rfl) (by decide) (q65 e h0) allNil
theorem q80 (e : Env 4)  : Ty graph e lit2 3 := .lam (ars := ars3) (by rfl) (allCons (q76 (push [0,1,3] e) rfl) (allCons (q77 (push [0,1,3] e) rfl) (allCons (q78 (push [0,2] e) rfl) (allCons (q79 (push [0,2] e) rfl) allNil))))
theorem q81 (e : Env 4)  : Ty graph e lit14 1 := .app (z := 3) (ars := ars3) (a := ⟨[0,1,3],1⟩) (by rfl) (by decide) (q80 e) (allCons (q2 e) (allCons (q69 e) (allCons (q75 e) allNil)))
theorem q82 (e : Env 4) (h1 : e 1 = [0,2]) : Ty graph e lit15 2 := .app (z := 1) (ars := ars1) (a := ⟨[0,2],2⟩) (by rfl) (by decide) (q81 e) (allCons (q0 e h1) (allCons (q1 e h1) allNil))
theorem q83 (e : Env 4) (h0 : e 0 = [0,3]) (h1 : e 1 = [0,2]) : Ty graph e lit31 1 := .app (z := 2) (ars := ars2) (a := ⟨[],1⟩) (by rfl) (by decide) (q82 e h1) allNil
end Blc.Floor45.Atom9692449588186
