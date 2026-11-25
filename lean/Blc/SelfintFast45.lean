import Blc.SelfintSize45Profiles
import Blc.SelfintSplit43
import Blc.SelfintRowDeclaration

namespace Blc.SelfintSingleObject.Fast45
open Term SelfintFloor SelfintLowerBound SelfintCapture SelfintWireCost SelfintNonlinearChain
open SourceRefutations OperandGrammar FiveLive Saturated Grammar43 RowReplay

def sidesOK : Shell → Bool
  | .hole => true
  | .left k s | .right s k => sidesOK k && Layouts.nonshrinking s

private theorem sides_required (k : Shell) (a : Term) (h : Layouts.nonshrinking (k.fill a) = true) :
    sidesOK k = true := by
  induction k with
  | hole => rfl
  | left k s ih =>
    have hp := (Bool.and_eq_true_iff.mp (Bool.and_eq_true_iff.mp h).1)
    exact Bool.and_eq_true_iff.mpr ⟨ih hp.1,hp.2⟩
  | right s k ih =>
    have hp := (Bool.and_eq_true_iff.mp (Bool.and_eq_true_iff.mp h).1)
    exact Bool.and_eq_true_iff.mpr ⟨ih hp.2,hp.1⟩

def fits (both : Bool) (l v : Nat) (lit : Bool) (k : Shell) :=
  let outside := (if lit then 1 else 0) + k.mass live
  let high := if both then 6 else 5
  sidesOK k && 5 ≤ outside + l + 1 && outside + 3 ≤ high &&
    2 + 5 ≤ v + outside + k.mass nonlinear

def useAtom (both lit : Bool) (ks : List Shell) (b : Term) :=
  ks.flatMap fun k =>
    let t := k.fill (.lam b)
    let e := wrap lit t
    if (live e == 5 || (both && live e == 6)) && !chainB e && (!lit || 0 < occ 0 t) then [e] else []

def atoms (L : Nat) (lit : Bool) (x l v : Nat) (w : List Nat) :=
  (SharedShell.atoms L lit x l v w).filter fun b => FactorFilter.markedHere 0 (.lam b)

def row (both lit : Bool) (ks : List Shell) (L x l v : Nat) (w : List Nat) :=
  (atoms L lit x l v w).flatMap (useAtom both lit ks)

def original (both : Bool) := if both then Size45.eightRow else fiveRow

/-- The number of lambdas and leaves in a generated atom can also be read
from its profile. Pass their equalities from the enumerator to the context filter. -/
theorem fits_required {both lit : Bool} {k : Shell} {b : Term}
    (hm : MinimalInterpreter (wrap lit (k.fill (.lam b))))
    (hl : live (wrap lit (k.fill (.lam b))) = 5 ∨ (both = true ∧ live (wrap lit (k.fill (.lam b))) = 6))
    (ha : 3 ≤ live (.lam b)) :
    fits both (lamCount b) (leafCount b) lit k = true := by
  let t := k.fill (.lam b)
  have out : live (wrap lit t) = live t + (if lit then 1 else 0) := by
    cases lit with
    | false => rfl
    | true =>
      have pos := SelfintRound6BoundLiteral.one_lambda_public_occ hm.1
      change live t + (if 0 < occ 0 t then 1 else 0) = live t + 1
      change 0 < occ 0 t at pos; rw [if_pos pos]
  have two : 2 ≤ nonlinear t := not_chain_two_nonlinear _ (fun hc => selfInterpreter_not_chain hm.1 (by cases lit <;> exact hc))
  have nl := k.additive nonlinear (.lam b) (fun _ _ => rfl)
  change nonlinear t = _ at nl
  have lv := k.additive live (.lam b) (fun _ _ => rfl)
  change live t = _ at lv
  have la := live_le_lamCount (.lam b)
  change _ ≤ lamCount b+1 at la
  have cost := leaves_bound (.lam b)
  change _ ≤ leafCount b at cost
  change live (wrap lit t) = 5 ∨ (both = true ∧ live (wrap lit t) = 6) at hl
  have p := Layouts.minimum_passes hm (Nat.le_refl _)
  simp only [Layouts.passes,Bool.and_eq_true] at p
  have st : Layouts.nonshrinking t = true := by cases lit <;> exact p.1.1.2
  simp only [fits,Bool.and_eq_true,decide_eq_true_eq]
  refine ⟨⟨⟨sides_required k _ st,?_⟩,?_⟩,?_⟩ <;> cases both <;> simp_all <;> omega

end Blc.SelfintSingleObject.Fast45
