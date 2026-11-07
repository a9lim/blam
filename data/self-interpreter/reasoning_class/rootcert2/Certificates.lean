import Blc.SelfintNeededHead
import Blc.WeakHeadClock
import Blc.BB35Spine

namespace Blc.HandlerLet
open Term SelfintClass SelfintLowerBound SelfintStreamSpecializer
open SelfintSourceCost WeakHeadClock
set_option maxRecDepth 10000
set_option maxHeartbeats 2000000

def input (z : Bool) : Term := if z then Z else S
def output (z : Bool) : Term := if z then zeroOut else varOut

theorem output_nf (z : Bool) : NormalForm (output z) := by
  cases z <;> first | exact zeroOut_normal | exact varOut_normal

theorem reader_red {r : Term} (hr : Reader r) (z : Bool) :
    Betas (.app r (input z)) (output z) := by
  cases z <;> first | exact hr.zero_red | exact hr.one_red

theorem absent_reduct {r : Term} (z : Bool) (n j : Nat)
    (h : occ j (advance n (.app r (input z)))=0)
    (ho : 0 < occ j (output z)) : ¬ Reader r := by
  intro hr
  have red := betas_preserve_nf (advance_sound n _) (reader_red hr z) (output_nf z)
  have no := SelfintKnot.occ_betas_zero red j h
  omega

def signature : Term → Option (Nat × Nat)
  | .var j => some (j,0)
  | .lam _ => none
  | .app f _ => (signature f).map (fun p => (p.1,p.2+1))

theorem signature_beta {t u : Term} (h : Beta t u) {p : Nat × Nat}
    (hs : signature t = some p) : signature u = some p := by
  induction h generalizing p with
  | beta b a => simp [signature] at hs
  | lam hb ih => simp [signature] at hs
  | appR f hb ih => exact hs
  | appL a hb ih =>
    simp only [signature, Option.map_eq_some_iff] at hs ⊢
    obtain ⟨q,hq,hqp⟩ := hs
    exact ⟨q,ih hq,hqp⟩

theorem signature_betas {t u : Term} (h : Betas t u) {p : Nat × Nat}
    (hs : signature t = some p) : signature u = some p := by
  induction h with
  | refl => exact hs
  | head hb ht ih => exact ih (signature_beta hb hs)

theorem head_reduct {r : Term} (z : Bool) (n : Nat) (p : Nat × Nat)
    (h : signature (advance n (.app r (input z)))=some p)
    (ho : signature (output z) ≠ some p) : ¬ Reader r := by
  intro hr
  have red := betas_preserve_nf (advance_sound n _) (reader_red hr z) (output_nf z)
  exact ho (signature_betas red h)

/-- A finite weak-head clock for an application includes a clock for its head. -/
theorem count_app_reflect : ∀ n, ∀ f a, Count (.app f a) n →
    ∃ m, m ≤ n ∧ Count f m := by
  intro n
  induction n using Nat.strongRecOn with
  | ind n ih =>
    intro f a hc
    cases hf : weakStep f with
    | none => exact ⟨0,Nat.zero_le _,.stop hf⟩
    | some g =>
      have hs := weak_app hf a
      obtain ⟨m,hm,hcm⟩ := head_decreases hc hs
      obtain ⟨k,hk,hck⟩ := ih m hm g a hcm
      exact ⟨k+1,by omega,.step hf hck⟩

theorem count_spine_reflect (as : List Term) : ∀ f n, Count (spine f as) n →
    ∃ m, m ≤ n ∧ Count f m := by
  induction as with
  | nil => intro f n h; exact ⟨n,Nat.le_refl _,h⟩
  | cons a as ih =>
    intro f n hc
    obtain ⟨m,hm,hcm⟩ := ih (.app f a) n hc
    obtain ⟨k,hk,hck⟩ := count_app_reflect m f a hcm
    exact ⟨k,Nat.le_trans hk hm,hck⟩

def weakSteps : Nat → Term → Option Term
  | 0,t => some t
  | k+1,t => (weakStep t).bind (weakSteps k)

theorem weakSteps_clock (k : Nat) {t u : Term} (h : weakSteps k t=some u)
    {n : Nat} (hc : Count t n) : ∃ m, m+k ≤ n ∧ Count u m := by
  induction k generalizing t n with
  | zero => simp only [weakSteps,Option.some.injEq] at h; subst u; exact ⟨n,by omega,hc⟩
  | succ k ih =>
    simp only [weakSteps,Option.bind_eq_some_iff] at h
    obtain ⟨v,hv,hu⟩ := h
    obtain ⟨m,hm,hcm⟩ := head_decreases hc hv
    obtain ⟨l,hl,hcl⟩ := ih hu hcm
    exact ⟨l,by omega,hcl⟩

theorem prefix_cycle_no_nf (core : Term) (extra rest : List Term) (k : Nat)
    (hk : 0<k) (hc : weakSteps k core=some (spine core extra)) :
    ¬ HasNormalForm (spine core rest) := by
  intro hn
  obtain ⟨n,hcn⟩ := hasNormalForm_count hn
  obtain ⟨m,_,hcm⟩ := count_spine_reflect rest core n hcn
  obtain ⟨l,hl,hcl⟩ := weakSteps_clock k hc hcm
  obtain ⟨p,hp,hcp⟩ := count_spine_reflect extra core l hcl
  have he := count_unique hcm hcp
  omega

theorem loop_reduct {r : Term} (z : Bool) (n k : Nat)
    (core : Term) (extra rest : List Term) (hk : 0<k)
    (he : advance n (.app r (input z))=spine core rest)
    (hc : weakSteps k core=some (spine core extra)) : ¬ Reader r := by
  intro hr
  have red := betas_preserve_nf (advance_sound n _) (reader_red hr z) (output_nf z)
  rw [he] at red
  exact prefix_cycle_no_nf core extra rest k hk hc ⟨_,red,output_nf z⟩

#print axioms absent_reduct
#print axioms head_reduct
#print axioms loop_reduct
/-- A concrete ordinary beta contraction at a source-tree path.
    0 enters a lambda, 1 enters the function, 2 enters the argument. -/
def stepAt : List Nat → Term → Option Term
  | [], .app (.lam b) a => some (contract b a)
  | 0::ps, .lam b => (stepAt ps b).map Term.lam
  | 1::ps, .app f a => (stepAt ps f).map (Term.app · a)
  | 2::ps, .app f a => (stepAt ps a).map (Term.app f)
  | _, _ => none

theorem stepAt_sound (ps : List Nat) {t u : Term} (h : stepAt ps t=some u) :
    Beta t u := by
  induction ps generalizing t u with
  | nil =>
    cases t with
    | var | lam => simp [stepAt] at h
    | app f a =>
      cases f with
      | var | app => simp [stepAt] at h
      | lam b => simp only [stepAt,Option.some.injEq] at h; subst u; exact .beta _ _
  | cons p ps ih =>
    cases p with
    | zero =>
      cases t
      · cases h
      · obtain ⟨v,hv,rfl⟩ := Option.map_eq_some_iff.mp h; exact .lam (ih hv)
      · cases h
    | succ p =>
      cases p with
      | zero =>
        cases t
        · cases h
        · cases h
        · obtain ⟨v,hv,rfl⟩ := Option.map_eq_some_iff.mp h; exact .appL _ (ih hv)
      | succ p =>
        cases p with
        | zero =>
          cases t
          · cases h
          · cases h
          · obtain ⟨v,hv,rfl⟩ := Option.map_eq_some_iff.mp h; exact .appR _ (ih hv)
        | succ p => cases t <;> simp [stepAt] at h

def betaSteps : List (List Nat) → Term → Option Term
  | [], t => some t
  | p::ps, t => (stepAt p t).bind (betaSteps ps)

theorem betaSteps_sound (ps : List (List Nat)) {t u : Term}
    (h : betaSteps ps t=some u) : Betas t u := by
  induction ps generalizing t with
  | nil => simp only [betaSteps,Option.some.injEq] at h; subst u; exact .refl _
  | cons p ps ih =>
    simp only [betaSteps,Option.bind_eq_some_iff] at h
    obtain ⟨v,hv,hu⟩ := h
    exact .head (stepAt_sound p hv) (ih hu)

/-- One genuine weak-head step, then arbitrary beta reductions, returning
    the original head with extra operands: its weak-head clock cannot exist. -/
theorem mixed_cycle_no_nf (core : Term) (extra rest : List Term)
    (ps : List (List Nat))
    (hc : (weakStep core).bind (betaSteps ps)=some (spine core extra)) :
    ¬ HasNormalForm (spine core rest) := by
  intro hn
  obtain ⟨n,hcn⟩ := hasNormalForm_count hn
  obtain ⟨m,_,hcm⟩ := count_spine_reflect rest core n hcn
  obtain ⟨u,hu,he⟩ := Option.bind_eq_some_iff.mp hc
  obtain ⟨k,hk,hck⟩ := head_decreases hcm hu
  obtain ⟨l,hl,hcl⟩ := count_reduct k hck (betaSteps_sound ps he)
  obtain ⟨p,hp,hcp⟩ := count_spine_reflect extra core l hcl
  have heq := count_unique hcm hcp
  omega

theorem mixed_reduct {r : Term} (z : Bool)
    (prep ps : List (List Nat)) (core : Term) (extra rest : List Term)
    (he : betaSteps prep (.app r (input z))=some (spine core rest))
    (hc : (weakStep core).bind (betaSteps ps)=some (spine core extra)) : ¬ Reader r := by
  intro hr
  have red := betas_preserve_nf (betaSteps_sound prep he) (reader_red hr z) (output_nf z)
  exact mixed_cycle_no_nf core extra rest ps hc ⟨_,red,output_nf z⟩

#print axioms mixed_reduct
/-- Total finite beta replay; invalid path is an identity step. -/
def replay : List (List Nat) → Term → Term
  | [], t => t
  | p::ps, t => replay ps ((stepAt p t).getD t)

theorem replay_sound (ps : List (List Nat)) (t : Term) : Betas t (replay ps t) := by
  induction ps generalizing t with
  | nil => exact .refl _
  | cons p ps ih =>
    cases hs : stepAt p t with
    | none => simpa [replay, hs] using ih t
    | some u =>
      simpa [replay, hs] using Betas.head (stepAt_sound p hs) (ih u)

theorem replay_nf {r : Term} (hr : Reader r) (z : Bool)
    (ps : List (List Nat)) (n : Nat) :
    Betas (advance n (replay ps (.app r (input z)))) (output z) :=
  betas_preserve_nf (betas_trans (replay_sound ps _) (advance_sound n _))
    (reader_red hr z) (output_nf z)

theorem replay_absent {r : Term} (z : Bool) (ps : List (List Nat)) (n j : Nat)
    (h : occ j (advance n (replay ps (.app r (input z))))=0)
    (ho : 0 < occ j (output z)) : ¬ Reader r := by
  intro hr
  have no := SelfintKnot.occ_betas_zero (replay_nf hr z ps n) j h
  omega

theorem replay_head {r : Term} (z : Bool) (ps : List (List Nat)) (n : Nat)
    (p : Nat × Nat)
    (h : signature (advance n (replay ps (.app r (input z))))=some p)
    (ho : signature (output z) ≠ some p) : ¬ Reader r := by
  intro hr
  exact ho (signature_betas (replay_nf hr z ps n) h)

theorem replay_loop {r : Term} (z : Bool) (ps : List (List Nat)) (n k : Nat)
    (core : Term) (extra rest : List Term) (hk : 0<k)
    (he : advance n (replay ps (.app r (input z)))=spine core rest)
    (hc : weakSteps k core=some (spine core extra)) : ¬ Reader r := by
  intro hr
  have red := replay_nf hr z ps n
  rw [he] at red
  exact prefix_cycle_no_nf core extra rest k hk hc ⟨_,red,output_nf z⟩

#print axioms replay_head
#print axioms replay_absent
#print axioms replay_loop
def GI : Term := .lam (.var 0)
def ground4 (t : Term) : Term :=
  substDec 0 GI (substDec 0 GI (substDec 0 GI (substDec 0 GI t)))

theorem gi_nf : NormalForm GI := by
  intro u h
  cases h with
  | lam h => cases h

theorem ground_reader {r : Term} (hr : Reader r) :
    Betas (ground4 (.app r Z)) GI := by
  have h := SelfintControl.betas_subst
    (SelfintControl.betas_subst (SelfintControl.betas_subst
      (SelfintControl.betas_subst hr.zero_red 0 GI) 0 GI) 0 GI) 0 GI
  have hh : Betas (ground4 (.app r Z)) (.app GI GI) := h
  exact betas_trans hh (.head (.beta (.var 0) GI) (.refl _))

theorem ground_mixed {r : Term} (prep ps : List (List Nat))
    (core : Term) (extra rest : List Term)
    (he : betaSteps prep (ground4 (.app r Z))=some (spine core rest))
    (hc : (weakStep core).bind (betaSteps ps)=some (spine core extra)) : ¬ Reader r := by
  intro hr
  have red := betas_preserve_nf (betaSteps_sound prep he) (ground_reader hr) gi_nf
  exact mixed_cycle_no_nf core extra rest ps hc ⟨_,red,gi_nf⟩

#print axioms ground_mixed
def inst4 (c j n r t : Term) : Term :=
  substDec 0 r (substDec 0 n (substDec 0 j (substDec 0 c t)))

theorem inst4_red (c j n r : Term) {t u : Term} (h : Betas t u) :
    Betas (inst4 c j n r t) (inst4 c j n r u) :=
  SelfintControl.betas_subst (SelfintControl.betas_subst
    (SelfintControl.betas_subst (SelfintControl.betas_subst h 0 c) 0 j) 0 n) 0 r

theorem closed_probe {reader : Term} (c j n r : Term) (ps qs : List (List Nat))
    (lhs rhs : Term)
    (he : replay ps (inst4 c j n r (.app reader Z))=lhs)
    (hf : replay qs (inst4 c j n r zeroOut)=rhs)
    (hnl : NFt lhs) (hnr : NFt rhs) (hne : lhs ≠ rhs) : ¬ Reader reader := by
  intro hr
  have a := replay_sound ps (inst4 c j n r (.app reader Z))
  rw [he] at a
  have b := replay_sound qs (inst4 c j n r zeroOut)
  rw [hf] at b
  have c := betas_trans (inst4_red c j n r hr.zero_red) b
  have red := betas_preserve_nf a c (SelfintClassNext.nft_normal hnr)
  exact hne (normalForm_betas_eq (SelfintClassNext.nft_normal hnl) red).symm

theorem zero_argument_loop {r : Term} (n m k : Nat) (arg core : Term)
    (extra rest : List Term) (hk : 0<k)
    (he : advance n (.app r Z)=.app (.var 3) arg)
    (ha : advance m arg=spine core rest)
    (hc : weakSteps k core=some (spine core extra)) : ¬ Reader r := by
  intro hr
  have red := replay_nf hr true [] n
  change Betas (advance n (.app r Z)) zeroOut at red
  rw [he] at red
  have hn := (rigid_app_betas_nf red zeroOut_normal rfl (Rigid.var 3)).2
  obtain ⟨nf,hred,hnf⟩ := hn
  have red' := betas_preserve_nf (advance_sound m arg) hred hnf
  rw [ha] at red'
  exact prefix_cycle_no_nf core extra rest k hk hc ⟨_,red',hnf⟩

#print axioms closed_probe
#print axioms zero_argument_loop
theorem tower_apps_no_nf (n k : Nat) (rest : List Term) :
    ¬ HasNormalForm (apps (.app (BB35Spine.tower (n+1)) (BB35Spine.tower (k+1))) rest) := by
  apply betas_noNormalForm (BB35Spine.liftReds_betas
    (liftReds_apps rest (BB35Spine.descend n k)))
  rw [← BB35Spine.apps_append]
  exact BB35Spine.core_apps_noNormalForm k _

theorem tower_reduct {r : Term} (steps n k : Nat) (rest : List Term)
    (he : advance steps (.app r Z)=
      apps (.app (BB35Spine.tower (n+1)) (BB35Spine.tower (k+1))) rest) : ¬ Reader r := by
  intro hr
  have red := replay_nf hr true [] steps
  change Betas (advance steps (.app r Z)) zeroOut at red
  rw [he] at red
  exact tower_apps_no_nf n k rest ⟨_,red,zeroOut_normal⟩

#print axioms tower_reduct
end Blc.HandlerLet
