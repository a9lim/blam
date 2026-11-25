import Blc.SelfintWidthPrice
import Blc.SelfintSourceRefutations

namespace Blc.SelfintSingleObject.Saturated
open Term SelfintLowerBound SelfintFloor SelfintWireCost SelfintCapture SelfintNonlinearChain SelfintControl
open SourceRefutations

inductive Shell where
  | hole
  | left (k : Shell) (a : Term)
  | right (f : Term) (k : Shell)
  deriving DecidableEq, Repr

def Shell.fill : Shell → Term → Term
  | .hole, t => t
  | .left k a, t => .app (k.fill t) a
  | .right f k, t => .app f (k.fill t)

def Shell.mass (p : Term → Nat) : Shell → Nat
  | .hole => 0
  | .left k a => k.mass p + p a
  | .right f k => p f + k.mass p

theorem Shell.additive (k : Shell) (p : Term → Nat) (t : Term)
    (hp : ∀ f a, p (.app f a) = p f + p a) : p (k.fill t) = k.mass p + p t := by
  induction k with
  | hole => simp [Shell.fill,Shell.mass]
  | left k a ih => simp only [Shell.fill,Shell.mass,hp,ih]; omega
  | right f k ih => simp only [Shell.fill,Shell.mass,hp,ih]; omega

theorem Shell.lam_mass_le (k : Shell) : k.mass live ≤ k.mass lamCount := by
  induction k with
  | hole => exact Nat.le_refl _
  | left k a ih => exact Nat.add_le_add ih (live_le_lamCount a)
  | right f k ih => exact Nat.add_le_add (live_le_lamCount f) ih

def Shell.scope (d : Nat) : Shell → Prop
  | .hole => True
  | .left k a => k.scope d ∧ FreeUnder d a
  | .right f k => FreeUnder d f ∧ k.scope d

private theorem Shell.scope_of_fill (k : Shell) (d : Nat) (t : Term) (hc : FreeUnder d (k.fill t)) :
    k.scope d := by
  induction k with
  | hole => trivial
  | left _ _ ih => exact ⟨ih hc.1,hc.2⟩
  | right _ _ ih => exact ⟨hc.1,ih hc.2⟩

private theorem first_lambda (t : Term) (hw : Witness 0 t) :
    ∃ k : Shell, ∃ b, t = k.fill (.lam b) ∧ Witness 0 (.lam b) := by
  induction t with
  | var => cases hw
  | lam b => exact ⟨.hole,b,rfl,hw⟩
  | app f a hf ha =>
    rcases hw with h | h
    · obtain ⟨k,b,rfl,hh⟩ := hf h; exact ⟨.left k a,b,rfl,hh⟩
    · obtain ⟨k,b,rfl,hh⟩ := ha h; exact ⟨.right f k,b,rfl,hh⟩

private theorem no_side (k : Shell) (h : k.mass leafCount = 0) : k = .hole := by
  cases k with
  | hole => rfl
  | left k a => have := leafCount_pos a; simp only [Shell.mass] at h; omega
  | right f k => have := leafCount_pos f; simp only [Shell.mass] at h; omega

private theorem one_side (k : Shell) (h : k.mass leafCount ≤ 1) :
    k = .hole ∨ ∃ s, leafCount s = 1 ∧ (k = .left .hole s ∨ k = .right s .hole) := by
  cases k with
  | hole => exact .inl rfl
  | left k a =>
    have := leafCount_pos a; simp only [Shell.mass] at h
    exact .inr ⟨a,by omega,.inl (by rw [no_side k (by omega)])⟩
  | right f k =>
    have := leafCount_pos f; simp only [Shell.mass] at h
    exact .inr ⟨f,by omega,.inr (by rw [no_side k (by omega)])⟩

private theorem one_leaf (s : Term) (hv : leafCount s = 1) (hi : indexSum s = 0)
    (hl : live s = lamCount s) : s = .var 0 ∨ s = identity := by
  induction s with
  | var i => exact .inl (by change i = 0 at hi; rw [hi])
  | app f a =>
    have := leafCount_pos f; have := leafCount_pos a; simp only [leafCount] at hv; omega
  | lam b ih =>
    have := live_le_lamCount b
    simp only [live,lamCount] at hl
    split at hl
    · rcases ih hv hi (by omega) with rfl | rfl
      · exact .inr rfl
      · contradiction
    · omega

def wrap (literal : Bool) (t : Term) := if literal then t.lam else t

private theorem constant_excluded (p : Term) (hc : Closed p) :
    ¬ IsSelfInterpreter (.lam (.app (.var 0) p)) := by
  intro h
  have hs : Beta (.app (.lam (.app (.var 0) p)) (.var 0)) (.app (.var 0) p) := by
    simpa [contract, substDec, substDec_closed _ _ hc] using (Beta.beta (.app (.var 0) p) (.var 0))
  have hr := betas_preserve_nf (.head (.appL _ hs) (.refl _)) (interpreter_idCall_betas h) idOutput_normal
  obtain ⟨g,v,he,_,hv⟩ := rigid_betas_shape (Rigid.app p (Rigid.var 0)) hr
  change .app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1) = Term.app g v at he
  cases he
  obtain ⟨_,hv',_⟩ := lam_betas_shape hv
  cases hv' 

private theorem eta_excluded (p : Term) (hc : Closed p) :
    ¬ MinimalInterpreter (.lam (.app p (.var 0))) := by
  intro hm
  have he : IsSelfInterpreter p := by
    refine ⟨hc,fun m h => ?_⟩
    have hs : Beta (.app (.lam (.app p (.var 0))) (.var 0)) (.app p (.var 0)) := by
      simpa [contract, substDec, substDec_closed _ _ hc] using (Beta.beta (.app p (.var 0)) (.var 0))
    exact SelfintControl.join_trans (join_symm (join_of_betas (.head (.appL _ hs) (.refl _)))) (hm.1.2 m h)
  have h := hm.2 p he
  simp only [wire_lam,wire_app] at h; omega

private theorem closed_body_impossible {b} (hc : Closed b) (he : IsSelfInterpreter (.lam b)) : False := by
  have := SelfintRound6BoundLiteral.one_lambda_public_occ he
  have := occ_of_freeUnder b 0 0 hc (Nat.zero_le _)
  omega

private theorem identity_arg {b} (hm : MinimalInterpreter (.app (.lam b) identity))
    (hk : occ 0 b ≤ 3) : False := by
  have h := minimal_beta_nonshrinking hm (.beta b identity)
  have hd := wire_beta_delta b identity
  rw [show wire identity = 4 by decide,show freeLeaves 0 identity = 0 by decide] at hd
  change _ = ((occ 0 b : Int) - 1) * 4 + (-1 : Int) * occDepth 0 b - _ - _ - _ at hd
  simp only [Int.neg_mul,Int.one_mul] at hd
  omega

private theorem big_atom {literal : Bool} {k : Shell} {b : Term} (hw : Witness 0 (.lam b)) (closedW : Closed (.lam b))
    (hi : IsSelfInterpreter (wrap literal (k.fill (.lam b))))
    (hm : MinimalInterpreter (wrap literal (k.fill (.lam b))))
    (root : literal = false → ∃ f a, k.fill (.lam b) = .app f a)
    (hl : live (k.fill (.lam b)) = lamCount (k.fill (.lam b)))
    (hsize : leafCount (k.fill (.lam b)) = 7)
    (hL : lamCount (k.fill (.lam b)) + (if literal then 1 else 0) = 5)
    (hx : k.mass indexSum = 0) : leafCount b ≤ 5 := by
  by_cases hv : leafCount b ≤ 5
  · exact hv
  exfalso
  have vk := k.additive leafCount (.lam b) (fun _ _ => rfl)
  have lk := k.additive lamCount (.lam b) (fun _ _ => rfl)
  have ak := k.additive live (.lam b) (fun _ _ => rfl)
  have v0 : leafCount (.lam b) = leafCount b := rfl
  rcases one_side k (by omega) with rfl | ⟨s,hs,hk⟩
  · cases literal with
    | false => obtain ⟨_,_,he⟩ := root rfl; cases he
    | true => exact closed_body_impossible closedW hi
  · have cs : s = .var 0 ∨ s = identity := by
      apply one_leaf s hs
      · rcases hk with rfl | rfl <;> simpa [Shell.mass] using hx
      · have := live_le_lamCount s
        have := live_le_lamCount (.lam b)
        rcases hk with rfl | rfl <;> simp only [Shell.mass,Nat.zero_add,Nat.add_zero] at lk ak <;> omega
    rcases hk with rfl | rfl
    · rcases cs with rfl | rfl
      · cases literal with
        | false => exact Nat.not_lt_zero 0 hi.1.2
        | true => exact eta_excluded _ closedW hm
      · cases literal with
        | true => exact closed_body_impossible (b := .app (.lam b) identity) ⟨closedW,by decide⟩ hi
        | false =>
          apply identity_arg hm
          have hb := leaves_bound b
          have hf := freeLeaves_split b 0
          have hlb := live_le_lamCount b
          change live (.lam b) + 1 = lamCount (.lam b) + 1 at hl
          change lamCount b + 1 + 1 + 0 = 5 at hL
          change leafCount b + 1 = 7 at hsize
          simp only [live,lamCount] at hl
          split at hl <;> omega
    · rcases cs with rfl | rfl
      · cases literal with
        | false => exact Nat.not_lt_zero 0 hi.1.1
        | true => exact constant_excluded _ closedW hi
      · cases literal with
        | true => exact closed_body_impossible (b := .app identity (.lam b)) ⟨by decide,closedW⟩ hi
        | false =>
          have bad := minimal_head_nonlinear (B' := .var 0) hm closedW
          contradiction

/-- At 39 bits, every five-live minimum has a closed lambda component
carrying the entire index sum. Its body has at most five leaves. The
surrounding application context uses only index-zero leaves. -/
theorem five_live_shell {e} (hm : MinimalInterpreter e) (hn : wire e = 39) (h5 : live e = 5) :
    ∃ (literal : Bool) (k : Shell) (b : Term), e = wrap literal (k.fill (.lam b)) ∧ Witness 0 (.lam b) ∧
      Closed (.lam b) ∧ indexSum b = 3 ∧ k.mass indexSum = 0 ∧
      2 ≤ lamCount b ∧ lamCount b ≤ 3 ∧ leafCount b ≤ 5 ∧
      k.mass lamCount + (lamCount b+1) + (if literal then 1 else 0) = 5 ∧
      k.mass leafCount + leafCount b = 7 ∧ k.scope (if literal then 1 else 0) := by
  have ⟨_,_,hx⟩ := interpreter_counts hm.1
  have := leaves_bound e
  have := live_le_lamCount e
  have := selfInterpreter_two_nonlinear hm.1
  have := wire_identity e
  have counts : lamCount e = 5 ∧ leafCount e = 7 ∧ indexSum e = 3 := by omega
  obtain ⟨lit,t,eqt,hw,rt⟩ : ∃ (lit : Bool) (t : Term), e = wrap lit t ∧ Witness 0 t ∧
      (lit = false → ∃ f a, t = .app f a) := by
    cases e with
    | var i => exact (Nat.not_lt_zero i hm.1.1).elim
    | lam b => exact ⟨true,b,rfl,one_lambda_width hm.1,by simp⟩
    | app f a => exact ⟨false,.app f a,rfl,selfInterpreter_width hm.1,fun _ => ⟨_,_,rfl⟩⟩
  obtain ⟨k,b,rfl,hw'⟩ := first_lambda t hw
  subst e
  let p := k.fill (.lam b)
  have vp : leafCount p = 7 := by cases lit <;> exact counts.2.1
  have xp : indexSum p = 3 := by cases lit <;> exact counts.2.2
  have lp : lamCount p + (if lit then 1 else 0) = 5 := by cases lit <;> exact counts.1
  have ap : live p = lamCount p := by
    cases lit with
    | false => exact h5.trans counts.1.symm
    | true =>
      change live p + (if 0 < occ 0 p then 1 else 0) = 5 at h5
      change lamCount p + 1 = 5 at lp
      have := live_le_lamCount p
      split at h5 <;> omega
  have ha := k.additive indexSum (.lam b) (fun _ _ => rfl)
  have hl := k.additive lamCount (.lam b) (fun _ _ => rfl)
  have hv := k.additive leafCount (.lam b) (fun _ _ => rfl)
  have ax := width_price _ _ hw'
  change indexSum p = k.mass indexSum + indexSum b at ha
  change 3 ≤ indexSum b at ax
  change lamCount p = k.mass lamCount + (lamCount b+1) at hl
  change leafCount p = k.mass leafCount + leafCount b at hv
  have xb : indexSum b = 3 := by omega
  have cost : k.mass indexSum = 0 := by omega
  have cw := closed_of_saturated_width hw' xb
  have bv := big_atom hw' cw hm.1 hm rt ap vp lp cost
  have bl := width_live _ _ hw'
  simp only [outerLive,Nat.add_zero] at bl
  have le := live_le_lamCount (.lam b)
  change live (.lam b) ≤ lamCount b + 1 at le
  have sc : FreeUnder (if lit then 1 else 0) p := by cases lit <;> exact hm.1.1
  have sk := k.scope_of_fill _ _ sc
  refine ⟨lit,k,b,rfl,hw',cw,xb,cost,by omega,?_,bv,by omega,by omega,sk⟩
  cases lit with
  | true => simp at lp; omega
  | false =>
    have ⟨f,a,he⟩ := rt rfl
    have pos : 0 < k.mass lamCount := by
      cases k with
      | hole => cases he
      | left k a =>
        have liveA := SelfintRound6BoundGlobal.closed_live_pos a sk.2
        have := live_le_lamCount a; simp only [Shell.mass]; omega
      | right f k =>
        have liveF := SelfintRound6BoundGlobal.closed_live_pos f sk.1
        have := live_le_lamCount f; simp only [Shell.mass]; omega
    simp at lp; omega

#print axioms five_live_shell
end Blc.SelfintSingleObject.Saturated
