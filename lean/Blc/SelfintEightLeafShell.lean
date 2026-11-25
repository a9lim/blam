import Blc.SelfintGrammar43

namespace Blc.SelfintSingleObject
open Term SelfintFloor SelfintLowerBound SelfintCapture SelfintWireCost SelfintNonlinearChain

def OccBound (limit : Nat) : Term → Prop
  | .var _ => True
  | .lam b => occ 0 b ≤ limit ∧ OccBound limit b
  | .app f a => OccBound limit f ∧ OccBound limit a

/-- Each leaf beyond the live, duplicated and free occurrences can add at most
one occurrence to any individual binder, at any nesting depth. -/
theorem occBound_of_slack (t : Term) (q : Nat)
    (h : leafCount t ≤ nonlinear t + live t + freeLeaves 0 t + q) : OccBound (2+q) t := by
  induction t with
  | var => trivial
  | app f a hf ha =>
    have := leaves_bound f; have := leaves_bound a
    simp only [leafCount,nonlinear,live,freeLeaves] at h
    exact ⟨hf (by omega),ha (by omega)⟩
  | lam b ih =>
    have := leaves_bound b; have := freeLeaves_split b 0
    simp only [leafCount,live,nonlinear,freeLeaves,Nat.zero_add] at h
    simp only [Nat.zero_add] at *
    constructor
    · split at h <;> split at h <;> omega
    · apply ih; split at h <;> split at h <;> omega

namespace EightLeaf
open Saturated FiveLive SourceRefutations SelfintControl
private theorem thin (k : Shell) (hv : k.mass leafCount ≤ 1) :
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

private theorem singleton (t : Term) (hs : FreeUnder 1 t) (hv : leafCount t = 1)
    (hl : live t = lamCount t) : t = .var 0 ∨ t = identity := by
  have h := leaves_bound t
  have bound : lamCount t ≤ 1 := by omega
  cases t with
  | var i => exact .inl (by change i < 1 at hs; rw [show i = 0 by omega])
  | app f a => have := leafCount_pos f; have := leafCount_pos a; simp only [leafCount] at hv; omega
  | lam b =>
    cases b with
    | var i =>
      simp only [live,lamCount,occ] at hl
      split at hl <;> simp_all [identity]
    | lam _ => simp only [lamCount] at bound; omega
    | app f a => have := leafCount_pos f; have := leafCount_pos a; simp only [leafCount] at hv; omega

private def context (lit : Bool) : Context := if lit then .lam .hole else .hole

private theorem apply_id {lit : Bool} {b : Term} (hm : MinimalInterpreter (wrap lit (.app (.lam b) identity)))
    (h : occ 0 b ≤ 3) : False := by
  have hw := minimal_redex_nonshrinking (context lit) b identity (by cases lit <;> exact hm)
  have hd := wire_beta_delta b identity
  rw [show wire identity = 4 by decide,show freeLeaves 0 identity = 0 by decide] at hd
  change _ = ((occ 0 b : Int) - 1) * 4 + (-1 : Int) * occDepth 0 b - _ - _ - _ at hd
  simp only [Int.neg_mul,Int.one_mul] at hd
  omega

private theorem id_apply {lit : Bool} {s : Term} (hm : MinimalInterpreter (wrap lit (.app identity s))) : False := by
  have hw := minimal_redex_nonshrinking (context lit) (.var 0) s (by cases lit <;> exact hm)
  change wire (.app identity s) ≤ wire s at hw
  rw [wire_app] at hw; omega

private theorem public_head {p : Term} (he : IsSelfInterpreter (.lam (.app (.var 0) p))) : False := by
  refine SelfintRound8GlobalOuterSpine.prestream_rigid_not_selfInterpreter
    (v := contract (.app (.var 0) p) (.var 0)) ?_ ?_ he
  · exact .head (.beta _ _) (.refl _)
  · exact .app _ (.var 0)

/-- A variable operand always makes this redex shrink, independently of
the multiplicity of the binder. -/
theorem var_operand_shrinks (b : Term) : wire (contract b (.var 0)) < wire (.app (.lam b) (.var 0)) := by
  have hd := wire_beta_delta b (.var 0)
  have h0 : freeLeaves 0 (.var 0) = 1 := rfl
  rw [h0,show wire (.var 0) = 2 by decide] at hd
  change _ = ((occ 0 b : Int) - 1) * 2 + 0 * (occDepth 0 b : Int) - _ - _ - _ at hd
  rw [Int.zero_mul] at hd
  omega

/-- When all binders are live and each binds at most three occurrences,
an exposed abstraction needs two exterior leaves in a nonempty shell. -/
theorem exterior {lit : Bool} {k : Shell} {b : Term}
    (hm : MinimalInterpreter (wrap lit (k.fill (.lam b)))) (hk : k ≠ .hole)
    (hs : k.scope (if lit then 1 else 0))
    (hl : live (k.fill (.lam b)) = lamCount (k.fill (.lam b)))
    (hb : OccBound 3 (k.fill (.lam b))) : 2 ≤ k.mass leafCount := by
  apply Classical.byContradiction; intro low
  rcases thin k (by omega) with eq | ⟨s,vs,side⟩
  · exact hk eq
  · have allS : live s = lamCount s := by
      have ls := live_le_lamCount s; have lb := live_le_lamCount (.lam b)
      rcases side with rfl | rfl <;> simp only [Shell.fill,live,lamCount] at hl lb ⊢ <;> omega
    have scopeS : FreeUnder 1 s := by
      rcases side with rfl | rfl
      · exact freeUnder_mono (by cases lit <;> decide : (if lit then 1 else 0) ≤ 1) hs.2
      · exact freeUnder_mono (by cases lit <;> decide : (if lit then 1 else 0) ≤ 1) hs.1
    rcases singleton s scopeS vs allS with rfl | rfl
    · rcases side with rfl | rfl
      · exact (Nat.not_lt_of_le (minimal_redex_nonshrinking (context lit) b (.var 0)
            (by cases lit <;> exact hm))) (var_operand_shrinks b)
      · cases lit with
        | false => exact Nat.not_lt_zero 0 hm.1.1.1
        | true => exact public_head hm.1
    · rcases side with rfl | rfl
      · exact apply_id hm hb.1.1
      · exact id_apply hm

end EightLeaf
end Blc.SelfintSingleObject
