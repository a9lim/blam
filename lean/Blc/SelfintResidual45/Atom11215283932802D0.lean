import Blc.SelfintResidual45.MultiTypes

set_option Elab.async false
namespace Blc.Floor45.Atom11215283932802
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
def lit9 : Term := .app lit8 lit8
def lit10 : Term := .app lit9 lit0
def lit11 : Term := .app lit8 lit10
def lit12 : Term := .lam lit11
def lit13 : Term := .lam lit12
def lit14 : Term := .app lit9 lit13
def lit15 : Term := .app lit8 lit14
def lit16 : Term := .app lit15 lit2
def lit17 : Term := .lam lit2
def lit18 : Term := .lam lit17
def lit19 : Term := .app lit0 lit18
def lit20 : Term := .lam lit0
def lit21 : Term := .lam lit20
def lit22 : Term := .app lit0 lit21
def lit23 : Term := .var 4
def lit24 : Term := .app lit19 lit23
def lit25 : Term := .lam lit24
def lit26 : Term := .app lit22 lit25
def lit27 : Term := .lam lit26
def lit28 : Term := .app lit19 lit27
def lit29 : Term := .lam lit28
def lit30 : Term := .app lit19 lit29
def lit31 : Term := .lam lit30
def lit32 : Term := .app lit16 lit31
theorem q0 (e : Env 5) (h4 : e 4 = [4]) : Ty graph e lit23 4 := .var (by rw [h4]; decide)
theorem q1 (e : Env 5) (h1 : e 1 = [4]) : Ty graph e lit2 4 := .var (by rw [h1]; decide)
theorem q2 (e : Env 5) (h0 : e 0 = [4]) : Ty graph e lit17 4 := .lam (ars := ars4) (by rfl) (allCons (q1 (push [4] e) h0) allNil)
theorem q3 (e : Env 5)  : Ty graph e lit18 4 := .lam (ars := ars4) (by rfl) (allCons (q2 (push [4] e) rfl) allNil)
theorem q4 (e : Env 5) (h0 : e 0 = [4]) : Ty graph e lit0 4 := .var (by rw [h0]; decide)
theorem q5 (e : Env 5) (h0 : e 0 = [4]) : Ty graph e lit19 4 := .app (z := 4) (ars := ars4) (a := ⟨[4],4⟩) (by rfl) (by decide) (q4 e h0) (allCons (q3 e) allNil)
theorem q6 (e : Env 5) (h0 : e 0 = [4]) (h4 : e 4 = [4]) : Ty graph e lit24 4 := .app (z := 4) (ars := ars4) (a := ⟨[4],4⟩) (by rfl) (by decide) (q5 e h0) (allCons (q0 e h4) allNil)
theorem q7 (e : Env 5) (h3 : e 3 = [4]) : Ty graph e lit25 4 := .lam (ars := ars4) (by rfl) (allCons (q6 (push [4] e) rfl h3) allNil)
theorem q8 (e : Env 5)  : Ty graph e lit20 4 := .lam (ars := ars4) (by rfl) (allCons (q4 (push [4] e) rfl) allNil)
theorem q9 (e : Env 5)  : Ty graph e lit21 4 := .lam (ars := ars4) (by rfl) (allCons (q8 (push [4] e)) allNil)
theorem q10 (e : Env 5) (h0 : e 0 = [4]) : Ty graph e lit22 4 := .app (z := 4) (ars := ars4) (a := ⟨[4],4⟩) (by rfl) (by decide) (q4 e h0) (allCons (q9 e) allNil)
theorem q11 (e : Env 5) (h0 : e 0 = [4]) (h3 : e 3 = [4]) : Ty graph e lit26 4 := .app (z := 4) (ars := ars4) (a := ⟨[4],4⟩) (by rfl) (by decide) (q10 e h0) (allCons (q7 e h3) allNil)
theorem q12 (e : Env 5) (h2 : e 2 = [4]) : Ty graph e lit27 4 := .lam (ars := ars4) (by rfl) (allCons (q11 (push [4] e) rfl h2) allNil)
theorem q13 (e : Env 5) (h0 : e 0 = [4]) (h2 : e 2 = [4]) : Ty graph e lit28 4 := .app (z := 4) (ars := ars4) (a := ⟨[4],4⟩) (by rfl) (by decide) (q5 e h0) (allCons (q12 e h2) allNil)
theorem q14 (e : Env 5) (h1 : e 1 = [4]) : Ty graph e lit29 4 := .lam (ars := ars4) (by rfl) (allCons (q13 (push [4] e) rfl h1) allNil)
theorem q15 (e : Env 5) (h0 : e 0 = [4]) (h1 : e 1 = [4]) : Ty graph e lit30 4 := .app (z := 4) (ars := ars4) (a := ⟨[4],4⟩) (by rfl) (by decide) (q5 e h0) (allCons (q14 e h1) allNil)
theorem q16 (e : Env 5) (h0 : e 0 = [4]) : Ty graph e lit31 4 := .lam (ars := ars4) (by rfl) (allCons (q15 (push [4] e) rfl h0) allNil)
theorem q17 (e : Env 5) (h1 : e 1 = [2]) : Ty graph e lit2 2 := .var (by rw [h1]; decide)
theorem q18 (e : Env 5) (h0 : e 0 = [4]) (h1 : e 1 = [4]) : Ty graph e lit3 4 := .app (z := 4) (ars := ars4) (a := ⟨[4],4⟩) (by rfl) (by decide) (q1 e h1) (allCons (q4 e h0) allNil)
theorem q19 (e : Env 5) (h2 : e 2 = [4]) : Ty graph e lit1 4 := .var (by rw [h2]; decide)
theorem q20 (e : Env 5) (h0 : e 0 = [4]) (h1 : e 1 = [4]) (h2 : e 2 = [4]) : Ty graph e lit4 4 := .app (z := 4) (ars := ars4) (a := ⟨[4],4⟩) (by rfl) (by decide) (q19 e h2) (allCons (q18 e h0 h1) allNil)
theorem q21 (e : Env 5) (h0 : e 0 = [4]) (h1 : e 1 = [4]) : Ty graph e lit5 4 := .lam (ars := ars4) (by rfl) (allCons (q20 (push [4] e) rfl h0 h1) allNil)
theorem q22 (e : Env 5) (h0 : e 0 = [4]) : Ty graph e lit6 4 := .lam (ars := ars4) (by rfl) (allCons (q21 (push [4] e) rfl h0) allNil)
theorem q23 (e : Env 5) (h0 : e 0 = [4]) : Ty graph e lit7 4 := .app (z := 4) (ars := ars4) (a := ⟨[4],4⟩) (by rfl) (by decide) (q4 e h0) (allCons (q22 e h0) allNil)
theorem q24 (e : Env 5) (h2 : e 2 = [0]) : Ty graph e lit1 0 := .var (by rw [h2]; decide)
theorem q25 (e : Env 5) (h0 : e 0 = [4]) (h1 : e 1 = [4]) (h2 : e 2 = [0]) : Ty graph e lit4 4 := .app (z := 0) (ars := ars0) (a := ⟨[4],4⟩) (by rfl) (by decide) (q24 e h2) (allCons (q18 e h0 h1) allNil)
theorem q26 (e : Env 5) (h0 : e 0 = [4]) (h1 : e 1 = [0]) : Ty graph e lit5 4 := .lam (ars := ars4) (by rfl) (allCons (q25 (push [4] e) rfl h0 h1) allNil)
theorem q27 (e : Env 5) (h1 : e 1 = [0]) : Ty graph e lit2 0 := .var (by rw [h1]; decide)
theorem q28 (e : Env 5) (h0 : e 0 = [4]) (h1 : e 1 = [0]) : Ty graph e lit3 4 := .app (z := 0) (ars := ars0) (a := ⟨[4],4⟩) (by rfl) (by decide) (q27 e h1) (allCons (q4 e h0) allNil)
theorem q29 (e : Env 5) (h0 : e 0 = [4]) (h1 : e 1 = [0]) (h2 : e 2 = [0]) : Ty graph e lit4 4 := .app (z := 0) (ars := ars0) (a := ⟨[4],4⟩) (by rfl) (by decide) (q24 e h2) (allCons (q28 e h0 h1) allNil)
theorem q30 (e : Env 5) (h0 : e 0 = [0]) : Ty graph e lit0 0 := .var (by rw [h0]; decide)
theorem q31 (e : Env 5) (h0 : e 0 = [0]) (h1 : e 1 = [0]) : Ty graph e lit3 0 := .app (z := 0) (ars := ars0) (a := ⟨[0],0⟩) (by rfl) (by decide) (q27 e h1) (allCons (q30 e h0) allNil)
theorem q32 (e : Env 5) (h0 : e 0 = [0]) (h1 : e 1 = [0]) (h2 : e 2 = [0]) : Ty graph e lit4 0 := .app (z := 0) (ars := ars0) (a := ⟨[0],0⟩) (by rfl) (by decide) (q24 e h2) (allCons (q31 e h0 h1) allNil)
theorem q33 (e : Env 5) (h0 : e 0 = [2]) : Ty graph e lit0 2 := .var (by rw [h0]; decide)
theorem q34 (e : Env 5) (h0 : e 0 = [2]) (h1 : e 1 = [0]) : Ty graph e lit3 4 := .app (z := 0) (ars := ars0) (a := ⟨[2],4⟩) (by rfl) (by decide) (q27 e h1) (allCons (q33 e h0) allNil)
theorem q35 (e : Env 5) (h0 : e 0 = [2]) (h1 : e 1 = [0]) (h2 : e 2 = [0]) : Ty graph e lit4 4 := .app (z := 0) (ars := ars0) (a := ⟨[4],4⟩) (by rfl) (by decide) (q24 e h2) (allCons (q34 e h0 h1) allNil)
theorem q36 (e : Env 5) (h0 : e 0 = [0]) (h1 : e 1 = [0]) : Ty graph e lit5 0 := .lam (ars := ars0) (by rfl) (allCons (q29 (push [4] e) rfl h0 h1) (allCons (q32 (push [0] e) rfl h0 h1) (allCons (q35 (push [2] e) rfl h0 h1) allNil)))
theorem q37 (e : Env 5) (h0 : e 0 = [4]) (h1 : e 1 = [2]) : Ty graph e lit3 2 := .app (z := 2) (ars := ars2) (a := ⟨[4],2⟩) (by rfl) (by decide) (q17 e h1) (allCons (q4 e h0) allNil)
theorem q38 (e : Env 5) (h0 : e 0 = [4]) (h1 : e 1 = [2]) (h2 : e 2 = [0]) : Ty graph e lit4 4 := .app (z := 0) (ars := ars0) (a := ⟨[2],4⟩) (by rfl) (by decide) (q24 e h2) (allCons (q37 e h0 h1) allNil)
theorem q39 (e : Env 5) (h0 : e 0 = [2]) (h1 : e 1 = [0]) : Ty graph e lit5 4 := .lam (ars := ars4) (by rfl) (allCons (q38 (push [4] e) rfl h0 h1) allNil)
theorem q40 (e : Env 5) (h0 : e 0 = [0]) : Ty graph e lit6 0 := .lam (ars := ars0) (by rfl) (allCons (q26 (push [4] e) rfl h0) (allCons (q36 (push [0] e) rfl h0) (allCons (q39 (push [2] e) rfl h0) allNil)))
theorem q41 (e : Env 5) (h0 : e 0 = [0]) : Ty graph e lit7 0 := .app (z := 0) (ars := ars0) (a := ⟨[0],0⟩) (by rfl) (by decide) (q30 e h0) (allCons (q40 e h0) allNil)
theorem q42 (e : Env 5) (h2 : e 2 = [2]) : Ty graph e lit1 2 := .var (by rw [h2]; decide)
theorem q43 (e : Env 5) (h0 : e 0 = [4]) (h1 : e 1 = [4]) (h2 : e 2 = [2]) : Ty graph e lit4 3 := .app (z := 2) (ars := ars2) (a := ⟨[4],3⟩) (by rfl) (by decide) (q42 e h2) (allCons (q18 e h0 h1) allNil)
theorem q44 (e : Env 5) (h0 : e 0 = [4]) (h1 : e 1 = [2]) : Ty graph e lit5 3 := .lam (ars := ars3) (by rfl) (allCons (q43 (push [4] e) rfl h0 h1) allNil)
theorem q45 (e : Env 5) (h0 : e 0 = [2]) : Ty graph e lit6 3 := .lam (ars := ars3) (by rfl) (allCons (q44 (push [4] e) rfl h0) allNil)
theorem q46 (e : Env 5) (h0 : e 0 = [2]) : Ty graph e lit7 4 := .app (z := 2) (ars := ars2) (a := ⟨[3],4⟩) (by rfl) (by decide) (q33 e h0) (allCons (q45 e h0) allNil)
theorem q47 (e : Env 5)  : Ty graph e lit8 0 := .lam (ars := ars0) (by rfl) (allCons (q23 (push [4] e) rfl) (allCons (q41 (push [0] e) rfl) (allCons (q46 (push [2] e) rfl) allNil)))
theorem q48 (e : Env 5)  : Ty graph e lit9 0 := .app (z := 0) (ars := ars0) (a := ⟨[0],0⟩) (by rfl) (by decide) (q47 e) (allCons (q47 e) allNil)
theorem q49 (e : Env 5) (h0 : e 0 = [4]) : Ty graph e lit10 4 := .app (z := 0) (ars := ars0) (a := ⟨[4],4⟩) (by rfl) (by decide) (q48 e) (allCons (q4 e h0) allNil)
theorem q50 (e : Env 5) (h0 : e 0 = [4]) : Ty graph e lit11 4 := .app (z := 0) (ars := ars0) (a := ⟨[4],4⟩) (by rfl) (by decide) (q47 e) (allCons (q49 e h0) allNil)
theorem q51 (e : Env 5)  : Ty graph e lit12 4 := .lam (ars := ars4) (by rfl) (allCons (q50 (push [4] e) rfl) allNil)
theorem q52 (e : Env 5) (h0 : e 0 = [0]) : Ty graph e lit10 0 := .app (z := 0) (ars := ars0) (a := ⟨[0],0⟩) (by rfl) (by decide) (q48 e) (allCons (q30 e h0) allNil)
theorem q53 (e : Env 5) (h0 : e 0 = [0]) : Ty graph e lit11 0 := .app (z := 0) (ars := ars0) (a := ⟨[0],0⟩) (by rfl) (by decide) (q47 e) (allCons (q52 e h0) allNil)
theorem q54 (e : Env 5) (h0 : e 0 = [2]) : Ty graph e lit10 4 := .app (z := 0) (ars := ars0) (a := ⟨[2],4⟩) (by rfl) (by decide) (q48 e) (allCons (q33 e h0) allNil)
theorem q55 (e : Env 5) (h0 : e 0 = [2]) : Ty graph e lit11 4 := .app (z := 0) (ars := ars0) (a := ⟨[4],4⟩) (by rfl) (by decide) (q47 e) (allCons (q54 e h0) allNil)
theorem q56 (e : Env 5)  : Ty graph e lit12 0 := .lam (ars := ars0) (by rfl) (allCons (q50 (push [4] e) rfl) (allCons (q53 (push [0] e) rfl) (allCons (q55 (push [2] e) rfl) allNil)))
theorem q57 (e : Env 5)  : Ty graph e lit13 0 := .lam (ars := ars0) (by rfl) (allCons (q51 (push [4] e)) (allCons (q56 (push [0] e)) (allCons (q51 (push [2] e)) allNil)))
theorem q58 (e : Env 5)  : Ty graph e lit14 0 := .app (z := 0) (ars := ars0) (a := ⟨[0],0⟩) (by rfl) (by decide) (q48 e) (allCons (q57 e) allNil)
theorem q59 (e : Env 5)  : Ty graph e lit15 0 := .app (z := 0) (ars := ars0) (a := ⟨[0],0⟩) (by rfl) (by decide) (q47 e) (allCons (q58 e) allNil)
theorem q60 (e : Env 5) (h1 : e 1 = [2]) : Ty graph e lit16 4 := .app (z := 0) (ars := ars0) (a := ⟨[2],4⟩) (by rfl) (by decide) (q59 e) (allCons (q17 e h1) allNil)
theorem q61 (e : Env 5) (h0 : e 0 = [4]) (h1 : e 1 = [2]) : Ty graph e lit32 4 := .app (z := 4) (ars := ars4) (a := ⟨[4],4⟩) (by rfl) (by decide) (q60 e h1) (allCons (q16 e h0) allNil)
end Blc.Floor45.Atom11215283932802
