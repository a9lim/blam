import Blc.SelfintProfileGrid

namespace Blc.SelfintSingleObject.SaturatedEight
open Term SelfintFloor SelfintLowerBound SelfintCapture SelfintWireCost SelfintNonlinearChain
open Saturated FiveLive SourceRefutations SelfintControl OperandGrammar

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


def constId : Term := .lam (.lam (.var 0))

/-- An affine closed sibling leaves both incomparable nonlinear binders inside
the marked body. Three uses of its root would require an eighth body leaf. -/
theorem constId_operand {b : Term} (hm : MinimalInterpreter (.app (.lam b) constId))
    (hl : live (.app (.lam b) constId) = 5) (hv : leafCount b ≤ 7) : False := by
  have hd := wire_beta_delta b constId
  rw [show wire constId = 6 by decide,show freeLeaves 0 constId = 0 by decide] at hd
  change _ = ((occ 0 b : Int) - 1) * 6 + (-1 : Int) * occDepth 0 b - _ - _ - _ at hd
  simp only [Int.neg_mul,Int.one_mul] at hd
  have ns := minimal_redex_nonshrinking .hole b constId hm
  have ko : 3 ≤ occ 0 b := by omega
  have chain : ¬ Chain b := fun hc => selfInterpreter_not_chain hm.1
    ⟨hc,True.intro, .inr (by decide)⟩
  have nn := not_chain_two_nonlinear _ chain
  have leaves := leaves_bound b
  have free := freeLeaves_split b 0
  change live b + (if 0 < occ 0 b then 1 else 0) + 1 = 5 at hl
  rw [if_pos (show 0 < occ 0 b by omega)] at hl
  omega

private theorem left_const {lit : Bool} {s : Term} (hm : MinimalInterpreter (wrap lit (.app constId s))) : False := by
  have ns := minimal_redex_nonshrinking (context lit) (.lam (.var 0)) s (by cases lit <;> exact hm)
  change wire (.app constId s) ≤ 4 at ns
  rw [wire_app,show wire constId = 6 by decide] at ns; omega

private theorem single (s : Term) (v : leafCount s = 1) (l : lamCount s ≤ 2) (x : indexSum s = 0) :
    s = .var 0 ∨ s = identity ∨ s = constId := by
  have form (s : Term) (h : leafCount s = 1) (a : lamCount s = 0) (b : indexSum s = 0) : s = .var 0 := by
    cases s with
    | var i => change i = 0 at b; rw [b]
    | lam _ => simp [lamCount] at a
    | app f t => have := leafCount_pos f; have := leafCount_pos t; simp only [leafCount] at h; omega
  cases s with
  | var i => exact .inl (form _ v rfl x)
  | app f t => have := leafCount_pos f; have := leafCount_pos t; simp only [leafCount] at v; omega
  | lam b =>
    change lamCount b + 1 ≤ 2 at l
    cases b with
    | var i => change i = 0 at x; subst i; exact .inr (.inl rfl)
    | app f t => have := leafCount_pos f; have := leafCount_pos t; change leafCount f + leafCount t = 1 at v; omega
    | lam t => change lamCount t + 1 + 1 ≤ 2 at l; exact .inr (.inr (by rw [form t v (by omega) x]; rfl))

/-- Two leaves lie outside a marked abstraction at saturated index cost,
also when one of the six lambdas is dead. -/
theorem exterior {lit : Bool} {k : Shell} {b : Term}
    (hm : MinimalInterpreter (wrap lit (k.fill (.lam b)))) (hk : k ≠ .hole)
    (wb : Witness 0 (.lam b)) (hl : 5 ≤ live (wrap lit (k.fill (.lam b))))
    (ll : lamCount (wrap lit (k.fill (.lam b))) = 6)
    (vv : leafCount (wrap lit (k.fill (.lam b))) = 8)
    (xx : indexSum (wrap lit (k.fill (.lam b))) = 3) : 2 ≤ k.mass leafCount := by
  let t := k.fill (.lam b)
  have lams : lamCount t + (if lit then 1 else 0) = 6 := by cases lit <;> exact ll
  have lives : 5 ≤ live t + (if lit then 1 else 0) := by
    cases lit with
    | false => exact hl
    | true => change 5 ≤ live t + (if 0 < occ 0 t then 1 else 0) at hl; change 5 ≤ live t + 1; split at hl <;> omega
  have sx : indexSum t = 3 := by cases lit <;> exact xx
  have sv : leafCount t = 8 := by cases lit <;> exact vv
  have xi := width_price _ _ wb
  change 3 ≤ indexSum b at xi
  have price := k.additive indexSum (.lam b) (fun _ _ => rfl)
  change indexSum t = k.mass indexSum + indexSum b at price
  have cl : Closed (.lam b) := closed_of_saturated_width wb (by omega)
  change 5 ≤ live (wrap lit t) at hl
  change leafCount (wrap lit t) = 8 at vv
  have max3 : OccBound 3 (wrap lit t) := occBound_of_slack (wrap lit t) 1 (by have h : 2 ≤ nonlinear (wrap lit t) := selfInterpreter_two_nonlinear hm.1; omega)
  have bo : OccBound 3 t := by cases lit with | false => exact max3 | true => exact max3.2
  have al := k.additive lamCount (.lam b) (fun _ _ => rfl)
  have av := k.additive live (.lam b) (fun _ _ => rfl)
  have rem := k.additive leafCount (.lam b) (fun _ _ => rfl)
  change lamCount t = _ at al
  change live t = _ at av
  change leafCount t = k.mass leafCount + leafCount b at rem
  have bal := live_le_lamCount (.lam b)
  apply Classical.byContradiction; intro small
  rcases thin k (by omega) with h | ⟨s,one,side⟩
  · exact hk h
  have sl : k.mass live = live s := by rcases side with rfl|rfl <;> simp [Shell.mass]
  have sa : k.mass lamCount = lamCount s := by rcases side with rfl|rfl <;> simp [Shell.mass]
  have sz : k.mass indexSum = indexSum s := by rcases side with rfl|rfl <;> simp [Shell.mass]
  have v := leaves_bound s
  have seven : leafCount b = 7 := by rcases side with rfl|rfl <;> simp [Shell.mass,one] at rem <;> omega
  rcases single s one (by omega) (by omega) with rfl|rfl|rfl
  · rcases side with rfl|rfl
    · exact (Nat.not_lt_of_le (minimal_redex_nonshrinking (context lit) b (.var 0)
        (by cases lit <;> exact hm))) (EightLeaf.var_operand_shrinks b)
    · cases lit with
      | false => exact Nat.not_lt_zero _ hm.1.1.1
      | true => exact public_head hm.1
  · rcases side with rfl|rfl
    · exact apply_id hm bo.1.1
    · exact id_apply hm
  · rcases side with rfl|rfl
    · cases lit with
      | false =>
        have hp : live (.app (.lam b) constId) ≤ 5 := by
          have := live_le_lamCount (.lam b)
          change lamCount (.lam b) + 2 + 0 = 6 at lams
          change live (.lam b) + 1 ≤ 5
          omega
        exact constId_operand hm (by change 5 ≤ live (.app (.lam b) constId) at hl; omega) (by omega)
      | true =>
        have pos := SelfintRound6BoundLiteral.one_lambda_public_occ hm.1
        have no := occ_of_freeUnder (.lam b) 0 0 cl (by decide)
        change 0 < occ 0 (.lam b) + 0 at pos
        omega
    · exact left_const hm
end Blc.SelfintSingleObject.SaturatedEight
