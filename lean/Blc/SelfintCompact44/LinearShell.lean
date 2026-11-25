import Blc.SelfintCompact44.SiblingSplit

namespace Blc.SelfintSingleObject.LinearShell
open Term SelfintFloor SelfintLowerBound FiveLive Saturated OperandGrammar SourceRefutations RowReplay

private def ident : Term := .lam (.var 0)
def admissible (k : Shell) := k.mass live != 2 || chainB (k.fill ident)

private theorem chain_linear (k : Shell) {t : Term} (zero : nonlinear t = 0) (hc : chainB t = true) :
    chainB (k.fill t) = chainB (k.fill ident) := by
  induction k with
  | hole => exact hc
  | left k s ih =>
    simp only [Shell.fill,chainB,ih,k.additive nonlinear t (fun _ _ => rfl),
      k.additive nonlinear ident (fun _ _ => rfl),zero,show nonlinear ident = 0 by decide]
  | right s k ih =>
    simp only [Shell.fill,chainB,ih,k.additive nonlinear t (fun _ _ => rfl),
      k.additive nonlinear ident (fun _ _ => rfl),zero,show nonlinear ident = 0 by decide]

/-- Check one index word of the outermost sibling independently of the marked atom. -/
def wordOK (fuel d l v x r m y : Nat) (w : List Nat) : Bool :=
  (layouts (m+(r+1)) d m w).all fun s =>
    (shells fuel d (l-m) (v-(r+1)) (x-y)).all fun k =>
      admissible (.left k s) && admissible (.right s k)

abbrev WordRow (fuel d l v x r m y : Nat) :=
  Every (fun w => wordOK fuel d l v x r m y w = true) (words (y+1) (r+1) y)

theorem context_admissible (fuel d l v x : Nat)
    (checked : Every (fun r => Every (fun m => Every (WordRow fuel d l v x r m)
      (List.range (x+1))) (List.range (l+1))) (List.range v)) {k : Shell}
    (hk : k ∈ shells (fuel+1) d l v x) : admissible k = true := by
  simp only [shells,List.mem_append] at hk
  rcases hk with base | more
  · split at base
    · simp only [List.mem_singleton] at base; subst k; decide
    · cases base
  obtain ⟨r,hr,m,hm,y,hy,k',hk',s,hs,eq⟩ := by simpa only [List.mem_flatMap] using more
  obtain ⟨w,hw,hs⟩ := hs
  have proof := ((((checked.get hr).get hm).get hy).get hw)
  have both := Bool.and_eq_true_iff.mp (List.all_eq_true.mp (List.all_eq_true.mp proof s hs) k' hk')
  rcases List.mem_cons.mp eq with h | h
  · exact h ▸ both.1
  · exact (List.mem_singleton.mp h) ▸ both.2

/-- A closed three-live linear marked atom can be replaced in the chain test
by the identity. Its exterior then has exactly two live binders. -/
theorem closed_linear (V L X x l v : Nat) (w : List Nat)
    (atoms : ((SharedShell.atoms L false x l v w).filter fun b => FactorFilter.markedHere 0 (.lam b)).all
      (fun b => live (.lam b) == 3 && nonlinear (.lam b) == 0 && chainB (.lam b)) = true)
    (outside : ∀ k ∈ shells (V-v) 0 (L-(l+1)) (V-v) (X-x), admissible k = true) :
    BadRow (Grammar43.fiveRow V L X false x l v w) := by
  apply row_of_forall
  intro e he interp
  simp only [Grammar43.fiveRow] at he
  split at he
  · cases he
  · obtain ⟨b,hb,h⟩ := List.mem_flatMap.mp he
    obtain ⟨k,hk,mem⟩ := List.mem_flatMap.mp h
    have ab := List.all_eq_true.mp atoms b hb
    simp only [Bool.and_eq_true,beq_iff_eq] at ab
    split at mem
    · rename_i test
      simp only [List.mem_singleton] at mem; subst e
      have live5 : live (k.fill (.lam b)) = 5 :=
        beq_iff_eq.mp (Bool.and_eq_true_iff.mp (Bool.and_eq_true_iff.mp test).1).1
      rw [k.additive live (.lam b) (fun _ _ => rfl),ab.1.1] at live5
      have ok := outside k (List.mem_filter.mp hk).1
      simp [admissible,show k.mass live = 2 by omega] at ok
      have good := (chain_linear k ab.1.2 ab.2).trans ok
      exact chain_cut false 0 good interp
    · cases mem
end Blc.SelfintSingleObject.LinearShell
