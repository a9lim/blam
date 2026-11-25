import Blc.SelfintRound8GlobalOuterSpine
import Blc.SelfintLiteralWidth46
import Blc.SelfintMarkedWords
import Blc.SelfintSaturatedShell

namespace Blc.SelfintSingleObject
open Term SelfintFloor SelfintLowerBound SelfintCapture SelfintNonlinearChain SelfintWireCost

/-- Every abstraction binds at most two occurrences. -/
def AtMostTwo : Term → Prop
  | .var _ => True
  | .app f a => AtMostTwo f ∧ AtMostTwo a
  | .lam b => occ 0 b ≤ 2 ∧ AtMostTwo b

/-- Equality in the live/nonlinear/free-leaf count bounds each binder
individually, at arbitrary depth and on open terms. -/
theorem atMostTwo_of_leaf_eq (t : Term)
    (h : leafCount t = nonlinear t + live t + freeLeaves 0 t) : AtMostTwo t := by
  induction t with
  | var => trivial
  | app f a ihf iha =>
    have := leaves_bound f
    have := leaves_bound a
    simp only [leafCount,live,nonlinear,freeLeaves] at h
    exact ⟨ihf (by omega),iha (by omega)⟩
  | lam b ih =>
    have := leaves_bound b
    have := freeLeaves_split b 0
    simp only [leafCount,live,nonlinear,freeLeaves,Nat.zero_add] at h
    simp only [Nat.zero_add] at *
    constructor
    · split at h <;> split at h <;> omega
    · apply ih; split at h <;> split at h <;> omega

/-- A five-live size-40 interpreter attains the leaf bound with equality. -/
theorem five_live_resources {e} (he : IsSelfInterpreter e) (h5 : live e = 5)
    (h40 : wire e = 40) :
    lamCount e = 5 ∧ leafCount e = 7 ∧ indexSum e = 4 ∧ nonlinear e = 2 ∧ AtMostTwo e := by
  have ⟨_,_,hw⟩ := interpreter_counts he
  have hv := leaves_bound e
  have hl := live_le_lamCount e
  have hn := selfInterpreter_two_nonlinear he
  have hi := wire_identity e
  refine ⟨by omega,by omega,by omega,by omega,atMostTwo_of_leaf_eq _ (by omega)⟩

namespace FiveLive
open Saturated SelfintControl SourceRefutations

/-- Expose the first abstraction on the path to the internal witness.
The application-only shell preserves its ambient scope. -/
theorem expose (t : Term) (d : Nat) (h : Witness 0 t) (sc : FreeUnder d t) :
    ∃ k : Shell, ∃ b, t = k.fill (.lam b) ∧ Witness 0 (.lam b) ∧
      k.scope d ∧ FreeUnder d (.lam b) := by
  induction t with
  | var => cases h
  | lam b => exact ⟨.hole,b,rfl,h,trivial,sc⟩
  | app f a hf ha =>
    rcases h with h | h
    · obtain ⟨k,b,rfl,hw,hs,hb⟩ := hf h sc.1
      exact ⟨.left k a,b,rfl,hw,⟨hs,sc.2⟩,hb⟩
    · obtain ⟨k,b,rfl,hw,hs,hb⟩ := ha h sc.2
      exact ⟨.right f k,b,rfl,hw,⟨sc.1,hs⟩,hb⟩

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
    (h : occ 0 b ≤ 2) : False := by
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

private theorem public_eta {p : Term} (hc : Closed p) (hm : MinimalInterpreter (.lam (.app p (.var 0)))) : False := by
  have step : Beta (.app (.lam (.app p (.var 0))) (.var 0)) (.app p (.var 0)) := by
    simpa [contract, substDec, substDec_closed _ _ hc] using (Beta.beta (.app p (.var 0)) (.var 0))
  have he : IsSelfInterpreter p := ⟨hc,fun m h => SelfintControl.join_trans
    (join_symm (join_of_betas (.head (.appL _ step) (.refl _)))) (hm.1.2 m h)⟩
  have := hm.2 _ he; simp only [wire_lam,wire_app] at this; omega

private theorem public_head {p : Term} (he : IsSelfInterpreter (.lam (.app (.var 0) p))) : False := by
  refine SelfintRound8GlobalOuterSpine.prestream_rigid_not_selfInterpreter
    (v := contract (.app (.var 0) p) (.var 0)) ?_ ?_ he
  · exact .head (.beta _ _) (.refl _)
  · exact .app _ (.var 0)

private theorem public_free {p} (he : IsSelfInterpreter (.lam p)) (hv : leafCount p = 7)
    (hl : live p = 4) : freeLeaves 0 p ≤ 1 := by
  have hc : ¬ Chain p := selfInterpreter_not_chain (E := .lam p) he
  have := not_chain_two_nonlinear _ hc; have := leaves_bound p; omega

/-- A five-lambda, seven-leaf minimum below the two-public-binder floor
has at most five leaves in its first width-bearing abstraction. -/
theorem atom_leaves {lit : Bool} {k : Shell} {b : Term}
    (hm : MinimalInterpreter (wrap lit (k.fill (.lam b))))
    (hn : wire (wrap lit (k.fill (.lam b))) < 46)
    (rt : lit = false → ∃ f a, k.fill (.lam b) = .app f a)
    (hs : k.scope (if lit then 1 else 0))
    (hl : live (k.fill (.lam b)) = lamCount (k.fill (.lam b)))
    (hlc : lamCount (k.fill (.lam b)) + (if lit then 1 else 0) = 5)
    (hv : leafCount (k.fill (.lam b)) = 7)
    (hb : AtMostTwo (k.fill (.lam b))) : leafCount b ≤ 5 := by
  by_cases small : leafCount b ≤ 5
  · exact small
  exfalso
  have v := k.additive leafCount (.lam b) (fun _ _ => rfl)
  change _ = k.mass leafCount + leafCount b at v
  rcases thin k (by omega) with rfl | ⟨s,vs,side⟩
  · cases lit with
    | false => obtain ⟨_,_,h⟩ := rt rfl; cases h
    | true => exact (Nat.not_le_of_lt hn) (two_lambda_bound_46 hm.1)
  · have allS : live s = lamCount s := by
      have ls := live_le_lamCount s; have lb := live_le_lamCount (.lam b)
      rcases side with rfl | rfl <;> simp only [Shell.fill,live,lamCount] at hl lb ⊢ <;> omega
    have scopeS : FreeUnder 1 s := by
      rcases side with rfl | rfl
      · exact freeUnder_mono (by cases lit <;> decide : (if lit then 1 else 0) ≤ 1) hs.2
      · exact freeUnder_mono (by cases lit <;> decide : (if lit then 1 else 0) ≤ 1) hs.1
    rcases singleton s scopeS vs allS with rfl | rfl
    · rcases side with rfl | rfl
      · cases lit with
        | false => exact Nat.not_lt_zero 0 hm.1.1.2
        | true =>
          have ll : live (.app (.lam b) (.var 0)) = 4 := by
            change live (.app (.lam b) (.var 0)) = lamCount (.app (.lam b) (.var 0)) at hl
            change lamCount (.app (.lam b) (.var 0)) + 1 = 5 at hlc; omega
          have hf := public_free hm.1 hv ll
          change freeLeaves 0 (.lam b) + 1 ≤ 1 at hf
          exact public_eta (SelfintProjections.freeLeaves_zero_closed (.lam b) 0 (by omega)) hm
      · cases lit with
        | false => exact Nat.not_lt_zero 0 hm.1.1.1
        | true => exact public_head hm.1
    · rcases side with rfl | rfl
      · exact apply_id hm hb.1.1
      · exact id_apply hm

/-- At forty bits an application-only shell carries at most one index unit.
The width atom has two or three body lambdas, at most five leaves, and can
capture its nearest external variable at most once. -/
theorem shell40 {e} (hm : MinimalInterpreter e) (hn : wire e = 40) (hl : live e = 5) :
    ∃ (lit : Bool) (k : Shell) (b : Term),
      e = wrap lit (k.fill (.lam b)) ∧ Witness 0 (.lam b) ∧
      2 ≤ lamCount b ∧ lamCount b ≤ 3 ∧ leafCount b ≤ 5 ∧
      3 ≤ indexSum b ∧ k.mass indexSum + indexSum b = 4 ∧
      (indexSum b = 3 → Closed (.lam b)) ∧ occ 0 (.lam b) ≤ 1 ∧
      FreeUnder (if lit then 1 else 0) (.lam b) ∧ k.scope (if lit then 1 else 0) ∧
      k.mass lamCount + (lamCount b + 1) + (if lit then 1 else 0) = 5 ∧
      k.mass leafCount + leafCount b = 7 := by
  obtain ⟨hL,hV,hX,_,hB⟩ := five_live_resources hm.1 hl hn
  obtain ⟨lit,t,rfl,hw,rt⟩ : ∃ (lit : Bool) (t : Term), e = wrap lit t ∧ Witness 0 t ∧
      (lit = false → ∃ f a, t = .app f a) := by
    cases e with
    | var i => exact (Nat.not_lt_zero i hm.1.1).elim
    | lam b => exact ⟨true,b,rfl,one_lambda_width hm.1,by simp⟩
    | app f a => exact ⟨false,.app f a,rfl,selfInterpreter_width hm.1,fun _ => ⟨_,_,rfl⟩⟩
  have sc : FreeUnder (if lit then 1 else 0) t := by cases lit <;> exact hm.1.1
  have bt : AtMostTwo t := by cases lit with | false => exact hB | true => exact hB.2
  have vt : leafCount t = 7 := by cases lit <;> exact hV
  have xt : indexSum t = 4 := by cases lit <;> exact hX
  have lt : lamCount t + (if lit then 1 else 0) = 5 := by cases lit <;> exact hL
  have al : live t = lamCount t := by
    cases lit with
    | false => exact hl.trans hL.symm
    | true =>
      change live t + (if 0 < occ 0 t then 1 else 0) = 5 at hl
      change lamCount t + 1 = 5 at lt
      have := live_le_lamCount t; split at hl <;> omega
  obtain ⟨k,b,rfl,wb,ks,bs⟩ := expose t _ hw sc
  have sx := k.additive indexSum (.lam b) (fun _ _ => rfl)
  have sl := k.additive lamCount (.lam b) (fun _ _ => rfl)
  have sv := k.additive leafCount (.lam b) (fun _ _ => rfl)
  change _ = k.mass indexSum + indexSum b at sx
  change _ = k.mass lamCount + (lamCount b+1) at sl
  change _ = k.mass leafCount + leafCount b at sv
  have vb := atom_leaves hm (by omega) rt ks al lt vt bt
  have xlo := width_price _ _ wb
  change 3 ≤ indexSum b at xlo
  have lb := width_live _ _ wb
  simp only [outerLive,Nat.add_zero] at lb
  have le := live_le_lamCount (.lam b)
  change _ ≤ lamCount b + 1 at le
  refine ⟨lit,k,b,rfl,wb,by omega,?_,vb,xlo,by omega,closed_of_saturated_width wb,
    (one_spare_capture wb (by omega)).1,bs,ks,by omega,by omega⟩
  cases lit with
  | true => simp at lt; omega
  | false =>
    obtain ⟨_,_,r⟩ := rt rfl
    have pos : 0 < k.mass lamCount := by
      cases k with
      | hole => cases r
      | left _ a =>
        have := SelfintRound6BoundGlobal.closed_live_pos a ks.2
        have := live_le_lamCount a; simp only [Shell.mass]; omega
      | right f _ =>
        have := SelfintRound6BoundGlobal.closed_live_pos f ks.1
        have := live_le_lamCount f; simp only [Shell.mass]; omega
    simp at lt; omega

#print axioms atom_leaves
#print axioms shell40
end FiveLive
end Blc.SelfintSingleObject
