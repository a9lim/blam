import Blc.SelfintFiveLiveProfiles
import Blc.SelfintFiveLiveRows40
namespace Blc.SelfintSingleObject.FiveLive
open Term SelfintFloor SelfintLowerBound SelfintCapture SelfintWireCost SelfintNonlinearChain Saturated

/-- With at most one free leaf and at most two substitutions a surviving
operand costs at least eight bits, even in an open redex. -/
theorem small_operand (k : Context) {b a} (hm : MinimalInterpreter (k.fill (.app (.lam b) a)))
    (hf : freeLeaves 0 a ≤ 1) (ho : occ 0 b ≤ 2) : 8 ≤ wire a := by
  have hd := wire_beta_delta b a
  have hp := minimal_redex_nonshrinking k b a hm
  have hl := minimal_no_erasing k b a hm
  rcases (show freeLeaves 0 a = 0 ∨ freeLeaves 0 a = 1 by omega) with h | h <;>
    rcases (show occ 0 b = 1 ∨ occ 0 b = 2 by omega) with z | z <;>
    simp [h,z] at hd hp <;> omega

private theorem thin_shell (k : Shell) (hv : k.mass leafCount ≤ 1) :
    k = .hole ∨ ∃ s, leafCount s = 1 ∧ (k = .left .hole s ∨ k = .right s .hole) := by
  have empty (k : Shell) (h : k.mass leafCount = 0) : k = .hole := by
    cases k with
    | hole => rfl
    | left _ a | right a _ => have := leafCount_pos a; simp only [Shell.mass] at h; omega
  cases k with
  | hole => exact .inl rfl
  | left k a =>
    have := leafCount_pos a; simp only [Shell.mass] at hv
    exact .inr ⟨a,by omega,.inl (by rw [empty k (by omega)])⟩
  | right a k =>
    have := leafCount_pos a; simp only [Shell.mass] at hv
    exact .inr ⟨a,by omega,.inr (by rw [empty k (by omega)])⟩

private theorem leaf_cost (s : Term) (sc : FreeUnder 1 s) (hv : leafCount s = 1)
    (hl : lamCount s ≤ live s + 1) : wire s ≤ 7 := by
  have := leaves_bound s
  have hL : lamCount s ≤ 2 := by omega
  cases s with
  | var i => change i < 1 at sc; simp [wire_var]; omega
  | app f a => have := leafCount_pos f; have := leafCount_pos a; simp only [leafCount] at hv; omega
  | lam b =>
    cases b with
    | var i => change i < 2 at sc; simp [wire_lam,wire_var]; omega
    | app f a => have := leafCount_pos f; have := leafCount_pos a; simp only [leafCount] at hv; omega
    | lam q =>
      cases q with
      | app f a => have := leafCount_pos f; have := leafCount_pos a; simp only [leafCount] at hv; omega
      | lam _ => simp only [lamCount] at hL; omega
      | var i =>
        change i < 3 at sc
        rcases (show i = 0 ∨ i = 1 ∨ i = 2 by omega) with rfl | rfl | rfl
        · decide
        · decide
        · simp [lamCount,live,occ] at hl

private def topContext (lit : Bool) : Context := if lit then .lam .hole else .hole

theorem small_atom {lit : Bool} {k : Shell} {b : Term}
    (hm : MinimalInterpreter (wrap lit (k.fill (.lam b))))
    (hn : wire (wrap lit (k.fill (.lam b))) < 46)
    (rt : lit = false → ∃ f a, k.fill (.lam b) = .app f a)
    (hs : k.scope (if lit then 1 else 0))
    (hl : lamCount (k.fill (.lam b)) ≤ live (k.fill (.lam b)) + 1)
    (hv : leafCount (k.fill (.lam b)) = 7)
    (hf : freeLeaves 0 (k.fill (.lam b)) ≤ 1)
    (hb : AtMostTwo (k.fill (.lam b))) : leafCount b ≤ 5 := by
  by_cases h : leafCount b ≤ 5
  · exact h
  exfalso
  have v := k.additive leafCount (.lam b) (fun _ _ => rfl)
  change _ = k.mass leafCount + leafCount b at v
  rcases thin_shell k (by omega) with rfl | ⟨s,vs,side⟩
  · cases lit with
    | false => obtain ⟨_,_,r⟩ := rt rfl; cases r
    | true => exact (Nat.not_le_of_lt hn) (two_lambda_bound_46 hm.1)
  · rcases side with rfl | rfl
    · have sc := freeUnder_mono (by cases lit <;> decide : (if lit then 1 else 0) ≤ 1) hs.2
      have le := live_le_lamCount (.lam b)
      change lamCount (.lam b) + lamCount s ≤ live (.lam b) + live s + 1 at hl
      have cost := leaf_cost s sc vs (by omega)
      have hv' := leaves_bound s
      have high := small_operand (topContext lit) (b := b) (a := s) (by cases lit <;> exact hm) (by omega) hb.1.1
      omega
    · cases s with
      | var i =>
        cases lit with
        | false => exact Nat.not_lt_zero _ hm.1.1.1
        | true =>
          have hi : i < 1 := hs.1
          have z : i = 0 := by omega
          subst i
          exact SelfintRound8GlobalOuterSpine.prestream_rigid_not_selfInterpreter
            (v := contract (.app (.var 0) (.lam b)) (.var 0))
            (.head (.beta _ _) (.refl _)) (.app _ (.var 0)) hm.1
      | app f a => have := leafCount_pos f; have := leafCount_pos a; simp only [leafCount] at vs; omega
      | lam p =>
        have hh : MinimalInterpreter ((topContext lit).fill (.app (.lam p) (.lam b))) := by cases lit <;> exact hm
        have hvp := leaves_bound p
        have hf0 := freeLeaves_split p 0
        change leafCount p = 1 at vs
        have hpos := minimal_no_erasing (topContext lit) p (.lam b) hh
        have bad := minimal_linear_free_count (topContext lit) p (.lam b) hh (by omega)
        change freeLeaves 0 (.lam p) + freeLeaves 0 (.lam b) ≤ 1 at hf
        omega

end Blc.SelfintSingleObject.FiveLive
