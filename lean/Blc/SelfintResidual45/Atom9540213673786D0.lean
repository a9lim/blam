import Blc.SelfintResidual45.MultiTypes

set_option Elab.async false
namespace Blc.Floor45.Atom9540213673786
open Term SelfintLowerBound SelfintControl SelfintSharp Round3Floor38 MultiTypes
set_option maxRecDepth 30000
set_option maxHeartbeats 6000000
def ars0 : List (Arrow 5) := [⟨[4],4⟩,⟨[0],0⟩,⟨[2],4⟩]
def ars1 : List (Arrow 5) := [⟨[0],0⟩,⟨[2],0⟩,⟨[2],2⟩]
def ars2 : List (Arrow 5) := [⟨[4],1⟩,⟨[4],2⟩,⟨[4],3⟩,⟨[3],0⟩,⟨[3],2⟩,⟨[3],4⟩,⟨[0],0⟩,⟨[0],3⟩,⟨[0],4⟩,⟨[2],1⟩,⟨[2],2⟩]
def ars3 : List (Arrow 5) := [⟨[4],3⟩]
def ars4 : List (Arrow 5) := [⟨[4],4⟩]
def graph (i : Fin 5) : Option (List (Arrow 5)) := match i.val with
  | 0 => some ars0
  | 1 => some ars1
  | 2 => some ars2
  | 3 => some ars3
  | 4 => some ars4
  | _ => none
def env (i : Nat) : List (Fin 5) := if i=1 then [2] else [4]
def lit0 : Term := .var 0
def lit1 : Term := .var 2
def lit2 : Term := .var 1
def lit3 : Term := .app lit2 lit0
def lit4 : Term := .app lit1 lit3
def lit5 : Term := .lam lit4
def lit6 : Term := .lam lit5
def lit7 : Term := .app lit0 lit6
def lit8 : Term := .lam lit7
def lit9 : Term := .var 3
def lit10 : Term := .app lit9 lit3
def lit11 : Term := .lam lit10
def lit12 : Term := .lam lit11
def lit13 : Term := .app lit2 lit12
def lit14 : Term := .app lit13 lit0
def lit15 : Term := .app lit8 lit14
def lit16 : Term := .lam lit15
def lit17 : Term := .lam lit16
def lit18 : Term := .app lit17 lit0
def lit19 : Term := .lam lit18
def lit20 : Term := .lam lit19
def lit21 : Term := .app lit17 lit20
def lit22 : Term := .app lit8 lit21
def lit23 : Term := .app lit22 lit2
def lit24 : Term := .lam lit2
def lit25 : Term := .lam lit24
def lit26 : Term := .app lit0 lit25
def lit27 : Term := .lam lit0
def lit28 : Term := .lam lit27
def lit29 : Term := .app lit0 lit28
def lit30 : Term := .var 4
def lit31 : Term := .app lit26 lit30
def lit32 : Term := .lam lit31
def lit33 : Term := .app lit29 lit32
def lit34 : Term := .lam lit33
def lit35 : Term := .app lit26 lit34
def lit36 : Term := .lam lit35
def lit37 : Term := .app lit26 lit36
def lit38 : Term := .lam lit37
def lit39 : Term := .app lit23 lit38
theorem q0 (e : Env 5) (h4 : e 4 = [4]) : Ty graph e lit30 4 := .var (by rw [h4]; decide)
theorem q1 (e : Env 5) (h1 : e 1 = [4]) : Ty graph e lit2 4 := .var (by rw [h1]; decide)
theorem q2 (e : Env 5) (h0 : e 0 = [4]) : Ty graph e lit24 4 := .lam (ars := ars4) (by rfl) (allCons (q1 (push [4] e) h0) allNil)
theorem q3 (e : Env 5)  : Ty graph e lit25 4 := .lam (ars := ars4) (by rfl) (allCons (q2 (push [4] e) rfl) allNil)
theorem q4 (e : Env 5) (h0 : e 0 = [4]) : Ty graph e lit0 4 := .var (by rw [h0]; decide)
theorem q5 (e : Env 5) (h0 : e 0 = [4]) : Ty graph e lit26 4 := .app (z := 4) (ars := ars4) (a := ⟨[4],4⟩) (by rfl) (by decide) (q4 e h0) (allCons (q3 e) allNil)
theorem q6 (e : Env 5) (h0 : e 0 = [4]) (h4 : e 4 = [4]) : Ty graph e lit31 4 := .app (z := 4) (ars := ars4) (a := ⟨[4],4⟩) (by rfl) (by decide) (q5 e h0) (allCons (q0 e h4) allNil)
theorem q7 (e : Env 5) (h3 : e 3 = [4]) : Ty graph e lit32 4 := .lam (ars := ars4) (by rfl) (allCons (q6 (push [4] e) rfl h3) allNil)
theorem q8 (e : Env 5)  : Ty graph e lit27 4 := .lam (ars := ars4) (by rfl) (allCons (q4 (push [4] e) rfl) allNil)
theorem q9 (e : Env 5)  : Ty graph e lit28 4 := .lam (ars := ars4) (by rfl) (allCons (q8 (push [4] e)) allNil)
theorem q10 (e : Env 5) (h0 : e 0 = [4]) : Ty graph e lit29 4 := .app (z := 4) (ars := ars4) (a := ⟨[4],4⟩) (by rfl) (by decide) (q4 e h0) (allCons (q9 e) allNil)
theorem q11 (e : Env 5) (h0 : e 0 = [4]) (h3 : e 3 = [4]) : Ty graph e lit33 4 := .app (z := 4) (ars := ars4) (a := ⟨[4],4⟩) (by rfl) (by decide) (q10 e h0) (allCons (q7 e h3) allNil)
theorem q12 (e : Env 5) (h2 : e 2 = [4]) : Ty graph e lit34 4 := .lam (ars := ars4) (by rfl) (allCons (q11 (push [4] e) rfl h2) allNil)
theorem q13 (e : Env 5) (h0 : e 0 = [4]) (h2 : e 2 = [4]) : Ty graph e lit35 4 := .app (z := 4) (ars := ars4) (a := ⟨[4],4⟩) (by rfl) (by decide) (q5 e h0) (allCons (q12 e h2) allNil)
theorem q14 (e : Env 5) (h1 : e 1 = [4]) : Ty graph e lit36 4 := .lam (ars := ars4) (by rfl) (allCons (q13 (push [4] e) rfl h1) allNil)
theorem q15 (e : Env 5) (h0 : e 0 = [4]) (h1 : e 1 = [4]) : Ty graph e lit37 4 := .app (z := 4) (ars := ars4) (a := ⟨[4],4⟩) (by rfl) (by decide) (q5 e h0) (allCons (q14 e h1) allNil)
theorem q16 (e : Env 5) (h0 : e 0 = [4]) : Ty graph e lit38 4 := .lam (ars := ars4) (by rfl) (allCons (q15 (push [4] e) rfl h0) allNil)
theorem q17 (e : Env 5) (h1 : e 1 = [2]) : Ty graph e lit2 2 := .var (by rw [h1]; decide)
theorem q18 (e : Env 5) (h0 : e 0 = [4]) (h1 : e 1 = [4]) : Ty graph e lit3 4 := .app (z := 4) (ars := ars4) (a := ⟨[4],4⟩) (by rfl) (by decide) (q1 e h1) (allCons (q4 e h0) allNil)
theorem q19 (e : Env 5) (h3 : e 3 = [4]) : Ty graph e lit9 4 := .var (by rw [h3]; decide)
theorem q20 (e : Env 5) (h0 : e 0 = [4]) (h1 : e 1 = [4]) (h3 : e 3 = [4]) : Ty graph e lit10 4 := .app (z := 4) (ars := ars4) (a := ⟨[4],4⟩) (by rfl) (by decide) (q19 e h3) (allCons (q18 e h0 h1) allNil)
theorem q21 (e : Env 5) (h0 : e 0 = [4]) (h2 : e 2 = [4]) : Ty graph e lit11 4 := .lam (ars := ars4) (by rfl) (allCons (q20 (push [4] e) rfl h0 h2) allNil)
theorem q22 (e : Env 5) (h1 : e 1 = [4]) : Ty graph e lit12 4 := .lam (ars := ars4) (by rfl) (allCons (q21 (push [4] e) rfl h1) allNil)
theorem q23 (e : Env 5) (h1 : e 1 = [4]) : Ty graph e lit13 4 := .app (z := 4) (ars := ars4) (a := ⟨[4],4⟩) (by rfl) (by decide) (q1 e h1) (allCons (q22 e h1) allNil)
theorem q24 (e : Env 5) (h0 : e 0 = [4]) (h1 : e 1 = [4]) : Ty graph e lit14 4 := .app (z := 4) (ars := ars4) (a := ⟨[4],4⟩) (by rfl) (by decide) (q23 e h1) (allCons (q4 e h0) allNil)
theorem q25 (e : Env 5) (h2 : e 2 = [4]) : Ty graph e lit1 4 := .var (by rw [h2]; decide)
theorem q26 (e : Env 5) (h0 : e 0 = [4]) (h1 : e 1 = [4]) (h2 : e 2 = [4]) : Ty graph e lit4 4 := .app (z := 4) (ars := ars4) (a := ⟨[4],4⟩) (by rfl) (by decide) (q25 e h2) (allCons (q18 e h0 h1) allNil)
theorem q27 (e : Env 5) (h0 : e 0 = [4]) (h1 : e 1 = [4]) : Ty graph e lit5 4 := .lam (ars := ars4) (by rfl) (allCons (q26 (push [4] e) rfl h0 h1) allNil)
theorem q28 (e : Env 5) (h0 : e 0 = [4]) : Ty graph e lit6 4 := .lam (ars := ars4) (by rfl) (allCons (q27 (push [4] e) rfl h0) allNil)
theorem q29 (e : Env 5) (h0 : e 0 = [4]) : Ty graph e lit7 4 := .app (z := 4) (ars := ars4) (a := ⟨[4],4⟩) (by rfl) (by decide) (q4 e h0) (allCons (q28 e h0) allNil)
theorem q30 (e : Env 5) (h2 : e 2 = [0]) : Ty graph e lit1 0 := .var (by rw [h2]; decide)
theorem q31 (e : Env 5) (h0 : e 0 = [4]) (h1 : e 1 = [4]) (h2 : e 2 = [0]) : Ty graph e lit4 4 := .app (z := 0) (ars := ars0) (a := ⟨[4],4⟩) (by rfl) (by decide) (q30 e h2) (allCons (q18 e h0 h1) allNil)
theorem q32 (e : Env 5) (h0 : e 0 = [4]) (h1 : e 1 = [0]) : Ty graph e lit5 4 := .lam (ars := ars4) (by rfl) (allCons (q31 (push [4] e) rfl h0 h1) allNil)
theorem q33 (e : Env 5) (h1 : e 1 = [0]) : Ty graph e lit2 0 := .var (by rw [h1]; decide)
theorem q34 (e : Env 5) (h0 : e 0 = [4]) (h1 : e 1 = [0]) : Ty graph e lit3 4 := .app (z := 0) (ars := ars0) (a := ⟨[4],4⟩) (by rfl) (by decide) (q33 e h1) (allCons (q4 e h0) allNil)
theorem q35 (e : Env 5) (h0 : e 0 = [4]) (h1 : e 1 = [0]) (h2 : e 2 = [0]) : Ty graph e lit4 4 := .app (z := 0) (ars := ars0) (a := ⟨[4],4⟩) (by rfl) (by decide) (q30 e h2) (allCons (q34 e h0 h1) allNil)
theorem q36 (e : Env 5) (h0 : e 0 = [0]) : Ty graph e lit0 0 := .var (by rw [h0]; decide)
theorem q37 (e : Env 5) (h0 : e 0 = [0]) (h1 : e 1 = [0]) : Ty graph e lit3 0 := .app (z := 0) (ars := ars0) (a := ⟨[0],0⟩) (by rfl) (by decide) (q33 e h1) (allCons (q36 e h0) allNil)
theorem q38 (e : Env 5) (h0 : e 0 = [0]) (h1 : e 1 = [0]) (h2 : e 2 = [0]) : Ty graph e lit4 0 := .app (z := 0) (ars := ars0) (a := ⟨[0],0⟩) (by rfl) (by decide) (q30 e h2) (allCons (q37 e h0 h1) allNil)
theorem q39 (e : Env 5) (h0 : e 0 = [2]) : Ty graph e lit0 2 := .var (by rw [h0]; decide)
theorem q40 (e : Env 5) (h0 : e 0 = [2]) (h1 : e 1 = [0]) : Ty graph e lit3 4 := .app (z := 0) (ars := ars0) (a := ⟨[2],4⟩) (by rfl) (by decide) (q33 e h1) (allCons (q39 e h0) allNil)
theorem q41 (e : Env 5) (h0 : e 0 = [2]) (h1 : e 1 = [0]) (h2 : e 2 = [0]) : Ty graph e lit4 4 := .app (z := 0) (ars := ars0) (a := ⟨[4],4⟩) (by rfl) (by decide) (q30 e h2) (allCons (q40 e h0 h1) allNil)
theorem q42 (e : Env 5) (h0 : e 0 = [0]) (h1 : e 1 = [0]) : Ty graph e lit5 0 := .lam (ars := ars0) (by rfl) (allCons (q35 (push [4] e) rfl h0 h1) (allCons (q38 (push [0] e) rfl h0 h1) (allCons (q41 (push [2] e) rfl h0 h1) allNil)))
theorem q43 (e : Env 5) (h0 : e 0 = [4]) (h1 : e 1 = [2]) : Ty graph e lit3 2 := .app (z := 2) (ars := ars2) (a := ⟨[4],2⟩) (by rfl) (by decide) (q17 e h1) (allCons (q4 e h0) allNil)
theorem q44 (e : Env 5) (h0 : e 0 = [4]) (h1 : e 1 = [2]) (h2 : e 2 = [0]) : Ty graph e lit4 4 := .app (z := 0) (ars := ars0) (a := ⟨[2],4⟩) (by rfl) (by decide) (q30 e h2) (allCons (q43 e h0 h1) allNil)
theorem q45 (e : Env 5) (h0 : e 0 = [2]) (h1 : e 1 = [0]) : Ty graph e lit5 4 := .lam (ars := ars4) (by rfl) (allCons (q44 (push [4] e) rfl h0 h1) allNil)
theorem q46 (e : Env 5) (h0 : e 0 = [0]) : Ty graph e lit6 0 := .lam (ars := ars0) (by rfl) (allCons (q32 (push [4] e) rfl h0) (allCons (q42 (push [0] e) rfl h0) (allCons (q45 (push [2] e) rfl h0) allNil)))
theorem q47 (e : Env 5) (h0 : e 0 = [0]) : Ty graph e lit7 0 := .app (z := 0) (ars := ars0) (a := ⟨[0],0⟩) (by rfl) (by decide) (q36 e h0) (allCons (q46 e h0) allNil)
theorem q48 (e : Env 5) (h2 : e 2 = [2]) : Ty graph e lit1 2 := .var (by rw [h2]; decide)
theorem q49 (e : Env 5) (h0 : e 0 = [4]) (h1 : e 1 = [4]) (h2 : e 2 = [2]) : Ty graph e lit4 3 := .app (z := 2) (ars := ars2) (a := ⟨[4],3⟩) (by rfl) (by decide) (q48 e h2) (allCons (q18 e h0 h1) allNil)
theorem q50 (e : Env 5) (h0 : e 0 = [4]) (h1 : e 1 = [2]) : Ty graph e lit5 3 := .lam (ars := ars3) (by rfl) (allCons (q49 (push [4] e) rfl h0 h1) allNil)
theorem q51 (e : Env 5) (h0 : e 0 = [2]) : Ty graph e lit6 3 := .lam (ars := ars3) (by rfl) (allCons (q50 (push [4] e) rfl h0) allNil)
theorem q52 (e : Env 5) (h0 : e 0 = [2]) : Ty graph e lit7 4 := .app (z := 2) (ars := ars2) (a := ⟨[3],4⟩) (by rfl) (by decide) (q39 e h0) (allCons (q51 e h0) allNil)
theorem q53 (e : Env 5)  : Ty graph e lit8 0 := .lam (ars := ars0) (by rfl) (allCons (q29 (push [4] e) rfl) (allCons (q47 (push [0] e) rfl) (allCons (q52 (push [2] e) rfl) allNil)))
theorem q54 (e : Env 5) (h0 : e 0 = [4]) (h1 : e 1 = [4]) : Ty graph e lit15 4 := .app (z := 0) (ars := ars0) (a := ⟨[4],4⟩) (by rfl) (by decide) (q53 e) (allCons (q24 e h0 h1) allNil)
theorem q55 (e : Env 5) (h0 : e 0 = [4]) : Ty graph e lit16 4 := .lam (ars := ars4) (by rfl) (allCons (q54 (push [4] e) rfl h0) allNil)
theorem q56 (e : Env 5) (h3 : e 3 = [0]) : Ty graph e lit9 0 := .var (by rw [h3]; decide)
theorem q57 (e : Env 5) (h0 : e 0 = [4]) (h1 : e 1 = [4]) (h3 : e 3 = [0]) : Ty graph e lit10 4 := .app (z := 0) (ars := ars0) (a := ⟨[4],4⟩) (by rfl) (by decide) (q56 e h3) (allCons (q18 e h0 h1) allNil)
theorem q58 (e : Env 5) (h0 : e 0 = [4]) (h2 : e 2 = [0]) : Ty graph e lit11 4 := .lam (ars := ars4) (by rfl) (allCons (q57 (push [4] e) rfl h0 h2) allNil)
theorem q59 (e : Env 5) (h0 : e 0 = [4]) (h1 : e 1 = [0]) (h3 : e 3 = [0]) : Ty graph e lit10 4 := .app (z := 0) (ars := ars0) (a := ⟨[4],4⟩) (by rfl) (by decide) (q56 e h3) (allCons (q34 e h0 h1) allNil)
theorem q60 (e : Env 5) (h0 : e 0 = [0]) (h1 : e 1 = [0]) (h3 : e 3 = [0]) : Ty graph e lit10 0 := .app (z := 0) (ars := ars0) (a := ⟨[0],0⟩) (by rfl) (by decide) (q56 e h3) (allCons (q37 e h0 h1) allNil)
theorem q61 (e : Env 5) (h0 : e 0 = [2]) (h1 : e 1 = [0]) (h3 : e 3 = [0]) : Ty graph e lit10 4 := .app (z := 0) (ars := ars0) (a := ⟨[4],4⟩) (by rfl) (by decide) (q56 e h3) (allCons (q40 e h0 h1) allNil)
theorem q62 (e : Env 5) (h0 : e 0 = [0]) (h2 : e 2 = [0]) : Ty graph e lit11 0 := .lam (ars := ars0) (by rfl) (allCons (q59 (push [4] e) rfl h0 h2) (allCons (q60 (push [0] e) rfl h0 h2) (allCons (q61 (push [2] e) rfl h0 h2) allNil)))
theorem q63 (e : Env 5) (h0 : e 0 = [4]) (h1 : e 1 = [2]) (h3 : e 3 = [0]) : Ty graph e lit10 4 := .app (z := 0) (ars := ars0) (a := ⟨[2],4⟩) (by rfl) (by decide) (q56 e h3) (allCons (q43 e h0 h1) allNil)
theorem q64 (e : Env 5) (h0 : e 0 = [2]) (h2 : e 2 = [0]) : Ty graph e lit11 4 := .lam (ars := ars4) (by rfl) (allCons (q63 (push [4] e) rfl h0 h2) allNil)
theorem q65 (e : Env 5) (h1 : e 1 = [0]) : Ty graph e lit12 0 := .lam (ars := ars0) (by rfl) (allCons (q58 (push [4] e) rfl h1) (allCons (q62 (push [0] e) rfl h1) (allCons (q64 (push [2] e) rfl h1) allNil)))
theorem q66 (e : Env 5) (h1 : e 1 = [0]) : Ty graph e lit13 0 := .app (z := 0) (ars := ars0) (a := ⟨[0],0⟩) (by rfl) (by decide) (q33 e h1) (allCons (q65 e h1) allNil)
theorem q67 (e : Env 5) (h0 : e 0 = [4]) (h1 : e 1 = [0]) : Ty graph e lit14 4 := .app (z := 0) (ars := ars0) (a := ⟨[4],4⟩) (by rfl) (by decide) (q66 e h1) (allCons (q4 e h0) allNil)
theorem q68 (e : Env 5) (h0 : e 0 = [4]) (h1 : e 1 = [0]) : Ty graph e lit15 4 := .app (z := 0) (ars := ars0) (a := ⟨[4],4⟩) (by rfl) (by decide) (q53 e) (allCons (q67 e h0 h1) allNil)
theorem q69 (e : Env 5) (h0 : e 0 = [0]) (h1 : e 1 = [0]) : Ty graph e lit14 0 := .app (z := 0) (ars := ars0) (a := ⟨[0],0⟩) (by rfl) (by decide) (q66 e h1) (allCons (q36 e h0) allNil)
theorem q70 (e : Env 5) (h0 : e 0 = [0]) (h1 : e 1 = [0]) : Ty graph e lit15 0 := .app (z := 0) (ars := ars0) (a := ⟨[0],0⟩) (by rfl) (by decide) (q53 e) (allCons (q69 e h0 h1) allNil)
theorem q71 (e : Env 5) (h0 : e 0 = [2]) (h1 : e 1 = [0]) : Ty graph e lit14 4 := .app (z := 0) (ars := ars0) (a := ⟨[2],4⟩) (by rfl) (by decide) (q66 e h1) (allCons (q39 e h0) allNil)
theorem q72 (e : Env 5) (h0 : e 0 = [2]) (h1 : e 1 = [0]) : Ty graph e lit15 4 := .app (z := 0) (ars := ars0) (a := ⟨[4],4⟩) (by rfl) (by decide) (q53 e) (allCons (q71 e h0 h1) allNil)
theorem q73 (e : Env 5) (h0 : e 0 = [0]) : Ty graph e lit16 0 := .lam (ars := ars0) (by rfl) (allCons (q68 (push [4] e) rfl h0) (allCons (q70 (push [0] e) rfl h0) (allCons (q72 (push [2] e) rfl h0) allNil)))
theorem q74 (e : Env 5) (h3 : e 3 = [2]) : Ty graph e lit9 2 := .var (by rw [h3]; decide)
theorem q75 (e : Env 5) (h0 : e 0 = [4]) (h1 : e 1 = [4]) (h3 : e 3 = [2]) : Ty graph e lit10 3 := .app (z := 2) (ars := ars2) (a := ⟨[4],3⟩) (by rfl) (by decide) (q74 e h3) (allCons (q18 e h0 h1) allNil)
theorem q76 (e : Env 5) (h0 : e 0 = [4]) (h2 : e 2 = [2]) : Ty graph e lit11 3 := .lam (ars := ars3) (by rfl) (allCons (q75 (push [4] e) rfl h0 h2) allNil)
theorem q77 (e : Env 5) (h1 : e 1 = [2]) : Ty graph e lit12 3 := .lam (ars := ars3) (by rfl) (allCons (q76 (push [4] e) rfl h1) allNil)
theorem q78 (e : Env 5) (h1 : e 1 = [2]) : Ty graph e lit13 2 := .app (z := 2) (ars := ars2) (a := ⟨[3],2⟩) (by rfl) (by decide) (q17 e h1) (allCons (q77 e h1) allNil)
theorem q79 (e : Env 5) (h0 : e 0 = [4]) (h1 : e 1 = [2]) : Ty graph e lit14 2 := .app (z := 2) (ars := ars2) (a := ⟨[4],2⟩) (by rfl) (by decide) (q78 e h1) (allCons (q4 e h0) allNil)
theorem q80 (e : Env 5) (h0 : e 0 = [4]) (h1 : e 1 = [2]) : Ty graph e lit15 4 := .app (z := 0) (ars := ars0) (a := ⟨[2],4⟩) (by rfl) (by decide) (q53 e) (allCons (q79 e h0 h1) allNil)
theorem q81 (e : Env 5) (h0 : e 0 = [2]) : Ty graph e lit16 4 := .lam (ars := ars4) (by rfl) (allCons (q80 (push [4] e) rfl h0) allNil)
theorem q82 (e : Env 5)  : Ty graph e lit17 0 := .lam (ars := ars0) (by rfl) (allCons (q55 (push [4] e) rfl) (allCons (q73 (push [0] e) rfl) (allCons (q81 (push [2] e) rfl) allNil)))
theorem q83 (e : Env 5) (h0 : e 0 = [4]) : Ty graph e lit18 4 := .app (z := 0) (ars := ars0) (a := ⟨[4],4⟩) (by rfl) (by decide) (q82 e) (allCons (q4 e h0) allNil)
theorem q84 (e : Env 5)  : Ty graph e lit19 4 := .lam (ars := ars4) (by rfl) (allCons (q83 (push [4] e) rfl) allNil)
theorem q85 (e : Env 5) (h0 : e 0 = [0]) : Ty graph e lit18 0 := .app (z := 0) (ars := ars0) (a := ⟨[0],0⟩) (by rfl) (by decide) (q82 e) (allCons (q36 e h0) allNil)
theorem q86 (e : Env 5) (h0 : e 0 = [2]) : Ty graph e lit18 4 := .app (z := 0) (ars := ars0) (a := ⟨[2],4⟩) (by rfl) (by decide) (q82 e) (allCons (q39 e h0) allNil)
theorem q87 (e : Env 5)  : Ty graph e lit19 0 := .lam (ars := ars0) (by rfl) (allCons (q83 (push [4] e) rfl) (allCons (q85 (push [0] e) rfl) (allCons (q86 (push [2] e) rfl) allNil)))
theorem q88 (e : Env 5)  : Ty graph e lit20 0 := .lam (ars := ars0) (by rfl) (allCons (q84 (push [4] e)) (allCons (q87 (push [0] e)) (allCons (q84 (push [2] e)) allNil)))
theorem q89 (e : Env 5)  : Ty graph e lit21 0 := .app (z := 0) (ars := ars0) (a := ⟨[0],0⟩) (by rfl) (by decide) (q82 e) (allCons (q88 e) allNil)
theorem q90 (e : Env 5)  : Ty graph e lit22 0 := .app (z := 0) (ars := ars0) (a := ⟨[0],0⟩) (by rfl) (by decide) (q53 e) (allCons (q89 e) allNil)
theorem q91 (e : Env 5) (h1 : e 1 = [2]) : Ty graph e lit23 4 := .app (z := 0) (ars := ars0) (a := ⟨[2],4⟩) (by rfl) (by decide) (q90 e) (allCons (q17 e h1) allNil)
theorem q92 (e : Env 5) (h0 : e 0 = [4]) (h1 : e 1 = [2]) : Ty graph e lit39 4 := .app (z := 4) (ars := ars4) (a := ⟨[4],4⟩) (by rfl) (by decide) (q91 e h1) (allCons (q16 e h0) allNil)
end Blc.Floor45.Atom9540213673786
