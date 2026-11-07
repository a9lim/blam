/-
An unbounded structural exclusion for pre-stream computations. A source
lambda may defer through at most m binders and then head on its newest
binder or on a rigid free parameter. This hereditary property is closed
under arbitrary beta reduction, including nonlinear sharing and capture.
Such a computation cannot pass m rigid pending operands to reach the
stream. A reader must contain a source lambda outside this grammar.

This theorem places no size, termination-fuel, or minimality bound on the
source. The source-budget application must still price the excluded
lambda shapes; the theorem alone does not close an entire weight cell.
-/
import Blc.SelfintRootLetRigidPrefix
namespace Blc.SelfintRootLetBudgetDelay
open Term SelfintClass SelfintLowerBound SelfintWireCost SelfintFloor SelfintCapture
open SelfintSourceCost SelfintLocalCost SelfintDispatchAudit SelfintWidenHoist SelfintControl
open SelfintFlatMinimum SelfintRootFlat SelfintSourceFront SelfintNeededHead
open SelfintLambdaSink SelfintNestedLets WeakHeadClock
open SelfintRootLetPowers (reader_betas)
open SelfintRootLetOrbit (count_fn count_spine_fn)
open SelfintRootLetForcing
open SelfintRootLetRigidPrefix (rigidHead_contract_rigid)
set_option maxRecDepth 10000
set_option maxHeartbeats 3000000

/-- After n further leading lambdas, the body heads on its newest binder
    or on a variable free at ambient depth d. -/
inductive HeadDelay : Nat → Nat → Term → Prop where
  | own {d b} : RigidHead 0 b → HeadDelay d 0 b
  | free {d k b} : d ≤ k → RigidHead k b → HeadDelay d 0 b
  | lam {d n b} : HeadDelay (d+1) n b → HeadDelay d (n+1) (.lam b)

/-- Every lambda has one of the preceding head shapes with total arity
    at most m. The depth counts source binders, not free parameters. -/
inductive Delayed (m : Nat) : Nat → Term → Prop where
  | var (d n) : Delayed m d (.var n)
  | app {d f a} : Delayed m d f → Delayed m d a → Delayed m d (.app f a)
  | lam {d b n} : Delayed m (d+1) b → HeadDelay (d+1) n b → n<m →
      Delayed m d (.lam b)

theorem rigidHead_rigid {k : Nat} {t : Term} (h : RigidHead k t) : Rigid t := by
  induction h with
  | var => exact .var _
  | app a h ih => exact .app _ ih

theorem rigidHead_shift_above {t : Term} {k : Nat} (h : RigidHead k t)
    (q c : Nat) (hc : c≤k) : RigidHead (k+q) (shift q c t) := by
  induction h with
  | var => simpa [shift,hc] using (RigidHead.var (j:=k+q))
  | app a h ih => exact .app _ ih

theorem rigidHead_subst_above {t : Term} {k : Nat} (h : RigidHead k t)
    (j : Nat) (s : Term) (hj : j<k) : RigidHead (k-1) (substDec j s t) := by
  induction h with
  | var => simpa [substDec,show k≠j by omega,hj] using (RigidHead.var (j:=k-1))
  | app a h ih => exact .app _ ih

theorem headDelay_shift {d n : Nat} {b : Term} (h : HeadDelay d n b)
    (q c : Nat) (hc : 0<c) (hcd : c≤d) :
    HeadDelay (d+q) n (shift q c b) := by
  induction h generalizing c with
  | own hh => exact .own (rigidHead_shift_below hh q c hc)
  | free hk hh => exact .free (by omega) (rigidHead_shift_above hh q c (by omega))
  | @lam d n b hh ih =>
    simp only [shift]
    apply HeadDelay.lam
    simpa only [show d+1+q=d+q+1 by omega] using ih (c+1) (by omega) (by omega)

theorem headDelay_subst {d n : Nat} {b : Term} (h : HeadDelay (d+1) n b)
    (j : Nat) (s : Term) (hj : 0<j) (hjd : j≤d) :
    HeadDelay d n (substDec j s b) := by
  generalize he : d+1=e at h
  induction h generalizing d j s with
  | own hh => exact .own (rigidHead_subst_below hh j s hj)
  | free hk hh => exact .free (by omega) (rigidHead_subst_above hh j s (by omega))
  | @lam e n b hh ih =>
    simp only [substDec]
    apply HeadDelay.lam
    exact ih (d:=d+1) (j:=j+1) (s:=shift 1 0 s) (by omega) (by omega) (by omega)

theorem headDelay_beta {d n : Nat} {t u : Term} (h : HeadDelay d n t)
    (hb : Beta t u) : HeadDelay d n u := by
  induction h generalizing u with
  | own hh => exact .own (rigidHead_beta hb hh)
  | free hk hh => exact .free hk (rigidHead_beta hb hh)
  | lam hh ih => cases hb with | lam hb => exact .lam (ih hb)

theorem delayed_shift {m d : Nat} {t : Term} (ht : Delayed m d t)
    (q c : Nat) (hc : c≤d) : Delayed m (d+q) (shift q c t) := by
  induction ht generalizing c with
  | var d n => simp only [shift]; split <;> exact .var _ _
  | app hf ha ihf iha => exact .app (ihf c hc) (iha c hc)
  | @lam d b n hb hh hn ih =>
    simp only [shift]
    apply Delayed.lam (n:=n)
    · simpa only [show d+1+q=d+q+1 by omega] using ih (c+1) (by omega)
    · simpa only [show d+1+q=d+q+1 by omega] using
        headDelay_shift hh q (c+1) (by omega) (by omega)
    · exact hn

theorem delayed_subst {m d : Nat} {t s : Term} (ht : Delayed m (d+1) t)
    (hs : Delayed m d s) (j : Nat) (hj : j≤d) : Delayed m d (substDec j s t) := by
  generalize he : d+1=e at ht
  induction ht generalizing d j s with
  | var e n =>
    simp only [substDec]
    split
    · exact hs
    · split <;> exact .var _ _
  | app hf ha ihf iha => exact .app (ihf hs j hj he) (iha hs j hj he)
  | @lam e b n hb hh hn ih =>
    simp only [substDec]
    apply Delayed.lam (n:=n)
    · exact ih (delayed_shift hs 1 0 (Nat.zero_le _)) (j+1) (by omega) (by omega)
    · subst e
      exact headDelay_subst hh (j+1) (shift 1 0 s) (by omega) (by omega)
    · exact hn

theorem delayed_beta {m d : Nat} {t u : Term} (hb : Beta t u)
    (ht : Delayed m d t) : Delayed m d u := by
  induction hb generalizing d with
  | beta b a =>
    cases ht with
    | app hf ha => cases hf with
      | lam hb hh hn => exact delayed_subst hb ha 0 (Nat.zero_le _)
  | lam hb ih =>
    cases ht with
    | lam ht hh hn => exact .lam (ih ht) (headDelay_beta hh hb) hn
  | appL a hb ih => cases ht with | app hf ha => exact .app (ih hf) ha
  | appR f hb ih => cases ht with | app hf ha => exact .app hf (ih ha)

theorem delayed_betas {m d : Nat} {t u : Term} (hb : Betas t u)
    (ht : Delayed m d t) : Delayed m d u := by
  induction hb with
  | refl => exact ht
  | head hb hr ih => exact ih (delayed_beta hb ht)

theorem headDelay_not_reader {n : Nat} {b : Term} (hb : HeadDelay 1 n b)
    (as : List Term) (ha : ∀ a∈as, Rigid a) (hn : n<as.length) (cs : List Term) :
    ¬ Reader (spine (.lam b) (as++cs)) := by
  induction n generalizing b as with
  | zero =>
    cases as with
    | nil => simp at hn
    | cons a as =>
      intro hr
      have hr' := hr.beta (SelfintSourceCost.spine_beta (Beta.beta b a) (as++cs))
      have ha' := ha a (by simp)
      cases hb with
      | own hh =>
        exact reader_not_rigid hr'
          (SelfintFlatPrefix.rigid_spine_of (rigidHead_contract_rigid hh ha') _)
      | free hk hh =>
        exact reader_not_rigid hr'
          (SelfintFlatPrefix.rigid_spine_of
            (rigidHead_rigid (rigidHead_subst_above hh 0 a (by omega))) _)
  | succ n ih =>
    cases as with
    | nil => simp at hn
    | cons a as =>
      intro hr
      cases hb with
      | lam hb =>
        have hr' := hr.beta (SelfintSourceCost.spine_beta (Beta.beta _ a) (as++cs))
        apply ih (headDelay_subst hb 1 (shift 1 0 a) (by omega) (by omega)) as
          (fun q hq => ha q (by simp [hq])) (by simp only [List.length_cons] at hn; omega) hr'

/-- Sharing, arbitrary internal beta computation, and arbitrary later
    operands cannot move this source class past its rigid argument block. -/
theorem delayed_not_reader {m : Nat} {t : Term} (ht : Delayed m 0 t)
    (as : List Term) (ha : ∀ a∈as, Rigid a) (hm : m≤as.length) (cs : List Term) :
    ¬ Reader (spine t (as++cs)) := by
  intro hr
  obtain ⟨n,hcn⟩ := hasNormalForm_count ⟨zeroOut,hr.zero_red,zeroOut_normal⟩
  obtain ⟨q,hq,hcq⟩ := count_fn n hcn
  obtain ⟨p,hp,hcp⟩ := count_spine_fn (as++cs) hcq
  obtain ⟨u,hu,hs⟩ := count_endpoint hcp
  have hd := delayed_betas hu ht
  have hr' := reader_betas hr (betas_spine hu (as++cs))
  cases u with
  | var v => exact reader_not_rigid hr' (SelfintFlatPrefix.rigid_spine_of (.var v) _)
  | app f a =>
    exact reader_not_rigid hr'
      (SelfintFlatPrefix.rigid_spine_of (weakStep_none_rigid hs (fun h => h)) _)
  | lam b => cases hd with
    | lam hb hh hn => exact headDelay_not_reader hh as ha (by omega) cs hr'

/-- Choose an innermost offending lambda: its body already belongs to
    the hereditary grammar, so the failure is precisely its head shape. -/
theorem not_delayed_witness {m d : Nat} {t : Term} (ht : ¬ Delayed m d t) :
    ∃ C b, t=C.fill (.lam b) ∧ Delayed m (d+ctxDepth C+1) b ∧
      ∀ n, n<m → ¬ HeadDelay (d+ctxDepth C+1) n b := by
  classical
  induction t generalizing d with
  | var v => exact (ht (.var _ _)).elim
  | app f a ihf iha =>
    by_cases hf : Delayed m d f
    · obtain ⟨C,b,he,hb,hh⟩ := iha (fun ha => ht (.app hf ha))
      exact ⟨.appR f C,b,by simp [Context.fill,he],hb,hh⟩
    · obtain ⟨C,b,he,hb,hh⟩ := ihf hf
      exact ⟨.appL C a,b,by simp [Context.fill,he],hb,hh⟩
  | lam b ih =>
    by_cases hb : Delayed m (d+1) b
    · refine ⟨.hole,b,rfl,hb,?_⟩
      intro n hn hh
      exact ht (.lam hb hh hn)
    · obtain ⟨C,q,he,hq,hh⟩ := ih hb
      refine ⟨.lam C,q,by simp [Context.fill,he],?_,?_⟩
      · simpa only [ctxDepth,show d+(ctxDepth C+1)+1=d+1+ctxDepth C+1 by omega] using hq
      · simpa only [ctxDepth,show d+(ctxDepth C+1)+1=d+1+ctxDepth C+1 by omega] using hh

/-- Every reader with m rigid operands before the stream contains such
    a literal source obstruction, even when the pre-stream run expands. -/
theorem reader_source_escape {m : Nat} {t : Term}
    (as : List Term) (ha : ∀ a∈as, Rigid a) (hm : m≤as.length) (cs : List Term)
    (hr : Reader (spine t (as++cs))) :
    ∃ C b, t=C.fill (.lam b) ∧ Delayed m (ctxDepth C+1) b ∧
      ∀ n, n<m → ¬ HeadDelay (ctxDepth C+1) n b := by
  simpa only [Nat.zero_add] using
    not_delayed_witness (fun ht => delayed_not_reader ht as ha hm cs hr)

/-- Exactly three ways for the innermost obstruction to occur: too many
    deferred binders, a captured older head, or a source head redex. -/
theorem escape_head_alternatives {m d : Nat} {b : Term} (hm : 0<m)
    (hb : Delayed m d b) (hh : ∀ n, n<m → ¬ HeadDelay d n b) :
    HeadDelay d m b ∨
    (∃ k, 0<k ∧ k<d ∧ RigidHead k b) ∨
    (∃ q a bs, b=spine (.app (.lam q) a) bs) := by
  rcases head_shape b with hl | hr | hred
  · cases b with
    | var v => exact False.elim hl
    | app f a => exact False.elim hl
    | lam q =>
      cases hb with
      | @lam _ _ n hb hd hn =>
        have he : n+1=m := by
          have hnot : ¬ n+1<m := fun h => hh (n+1) h (.lam hd)
          omega
        left
        simpa only [←he] using (HeadDelay.lam hd)
  · obtain ⟨k,hk⟩ := SelfintFlatSemantics.rigidHead_exists hr
    have hk0 : 0<k := by
      by_cases hz : k=0
      · subst k; exact (hh 0 hm (.own hk)).elim
      · omega
    have hkd : k<d := by
      by_cases hz : k<d
      · exact hz
      · exact (hh 0 hm (.free (by omega) hk)).elim
    exact .inr (.inl ⟨k,hk0,hkd,hk⟩)
  · exact .inr (.inr hred)

theorem rigidHead_other_leaf {k j : Nat} {t : Term} (hh : RigidHead k t)
    (hj : j≠k) (ho : 0<occ j t) : 2≤leafCount t := by
  cases hh with
  | var => simp [occ,Ne.symm hj] at ho
  | @app f a hh =>
    have hf := leafCount_pos f
    have ha := leafCount_pos a
    simp only [leafCount]
    omega

theorem headDelay_captured_leaves {d n j : Nat} {t : Term} (hh : HeadDelay d n t)
    (hj : 0<j) (hjd : j<d) (ho : 0<occ j t) : 2≤leafCount t := by
  induction hh generalizing j with
  | own hh => exact rigidHead_other_leaf hh (by omega) ho
  | free hk hh => exact rigidHead_other_leaf hh (by omega) ho
  | lam hh ih => exact ih (by omega) (by omega) ho

theorem occ_index_le {t : Term} {j : Nat} (ho : 0<occ j t) : j≤indexSum t := by
  induction t generalizing j with
  | var k =>
    by_cases he : k=j
    · subst k; exact Nat.le_refl _
    · simp [occ,he] at ho
  | lam b ih =>
    have hb := ih ho
    change j≤indexSum b
    omega
  | app f a ihf iha =>
    simp only [occ] at ho
    by_cases hf : 0<occ j f
    · have hh := ihf hf; change j≤indexSum f+indexSum a; omega
    · have hh := iha (j:=j) (by omega); change j≤indexSum f+indexSum a; omega

/-- Capturing a bound variable as data inside a permitted lambda needs
    a separate rigid head leaf. It costs at least nine bits, plus its
    index at the lambda's exterior. -/
theorem delayed_capture_lambda_wire {m d j : Nat} {b : Term}
    (hb : Delayed m d (.lam b)) (hj : j<d) (ho : 0<occ j (.lam b)) :
    j+9≤wire (.lam b) := by
  cases hb with
  | lam hb hh hn =>
    have hleaf := headDelay_captured_leaves hh (by omega) (by omega) ho
    have hind := occ_index_le (show 0<occ (j+1) b from ho)
    have hw := wire_identity (.lam b)
    simp only [lamCount,leafCount,indexSum] at hw
    change j+1≤indexSum b at hind
    omega

theorem rigidHead_wire {k : Nat} {t : Term} (h : RigidHead k t) : k+2≤wire t := by
  induction h with
  | var => simp [wire_var]
  | app a hh ih => simp only [wire_app]; omega

/-- A live captured-head escape that is not the eta-expansion λx.y x
    costs at least thirteen bits. The estimate is exact at y=1, with
    λx.y(x x) and λx.y x x attaining it. -/
theorem live_capture_wire {m d k : Nat} {b : Term} (hb : Delayed m d b)
    (hk : 0<k) (hkd : k<d) (hh : RigidHead k b) (ho : 0<occ 0 b)
    (hne : b≠.app (.var k) (.var 0)) : k+12≤wire (.lam b) := by
  cases hh with
  | var => simp [occ,show k≠0 by omega] at ho
  | @app f a hh =>
    cases hb with
    | app hf ha =>
      cases f with
      | var l =>
        cases hh
        have hoa : 0<occ 0 a := by
          simpa [occ,show k≠0 by omega] using ho
        cases a with
        | var v =>
          have he : v=0 := by
            by_cases hh : v=0
            · exact hh
            · simp [occ,hh] at hoa
          subst v
          exact (hne rfl).elim
        | app g q =>
          have hg := wire_positive g
          have hq := wire_positive q
          simp only [wire_lam,wire_app,wire_var]
          omega
        | lam q =>
          have hcap := delayed_capture_lambda_wire ha (by omega : 0<d) hoa
          simp only [wire_lam,wire_app,wire_var] at hcap ⊢
          omega
      | lam q => cases hh
      | app g q =>
        cases hh with
        | app q hg =>
          have hgw := rigidHead_wire hg
          have hqw := wire_positive q
          have haw := wire_positive a
          simp only [wire_lam,wire_app]
          omega

/-- Captured older heads occur below a source binder, where the weighted
    cost is at least the ordinary wire cost, even if the hole is present. -/
theorem live_capture_context_weight {m k : Nat} (C : Context) {b : Term}
    (hb : Delayed m (ctxDepth C+1) b) (hk : 0<k) (hkd : k<ctxDepth C+1)
    (hh : RigidHead k b) (ho : 0<occ 0 b)
    (hne : b≠.app (.var k) (.var 0)) :
    k+12+ctxRestWeight C 0≤weight 0 (C.fill (.lam b)) := by
  have hw := live_capture_wire hb hk hkd hh ho hne
  have hge := weight_ge_wire_positive_depth (.lam b) (ctxDepth C) (by omega)
  have hfill := weighted_fill C (.lam b) 0
  simp only [Nat.zero_add] at hfill
  omega

theorem live_capture_context_budget {m k : Nat} (C : Context) {b : Term}
    (hb : Delayed m (ctxDepth C+1) b) (hk : 0<k) (hkd : k<ctxDepth C+1)
    (hh : RigidHead k b) (ho : 0<occ 0 b)
    (hne : b≠.app (.var k) (.var 0))
    (hw : weight 0 (C.fill (.lam b))≤45) :
    ctxRestWeight C 0+k≤33 := by
  have hp := live_capture_context_weight C hb hk hkd hh ho hne
  omega

theorem forcing_delayed {m d : Nat} {t : Term} (ht : Forcing t) (hm : 0<m) :
    Delayed m d t := by
  induction ht generalizing d with
  | var n => exact .var _ _
  | app hf ha ihf iha => exact .app ihf iha
  | lam hb hh ih => exact .lam ih (.own hh) hm

/-- Direct interface for the remaining x-headed root-let shape. -/
theorem root_let_not_reader {m : Nat} {b a : Term} (hm : 0<m)
    (hb : Delayed m 1 b) (hh : RigidHead 0 b) (ha : Delayed m 0 a)
    (as : List Term) (hs : ∀ x∈as, Rigid x) (hl : m≤as.length) (cs : List Term) :
    ¬ Reader (spine (.app (.lam b) a) (as++cs)) :=
  delayed_not_reader (.app (.lam hb (.own hh) hm) ha) as hs hl cs

theorem root_let_escape {m : Nat} {b a : Term} (hm : 0<m)
    (hh : RigidHead 0 b) (as : List Term) (hs : ∀ x∈as, Rigid x)
    (hl : m≤as.length) (cs : List Term)
    (hr : Reader (spine (.app (.lam b) a) (as++cs))) :
    ¬ Delayed m 1 b ∨ ¬ Delayed m 0 a := by
  classical
  by_cases hb : Delayed m 1 b
  · exact .inr (fun ha => root_let_not_reader hm hb hh ha as hs hl cs hr)
  · exact .inl hb

/-- The 13-bit live-capture price is sharp, not a rounded count. -/
theorem live_capture_sharp :
    wire (.lam (.app (.var 1) (.app (.var 0) (.var 0))))=13 ∧
    wire (.lam (.app (.app (.var 1) (.var 0)) (.var 0)))=13 := by decide

/- A symbolic budget obstruction to using this grammar alone to close a
   whole pending cell. H_P = λx.x(λy.x(y P y)); the captured head x lies
   in a live non-eta lambda. P stays once in the source, may be any closed
   hereditary forcer, and need not be normalized to define the family. -/
def captureHelper (p : Term) : Term := .lam (.app (.var 0)
  (.lam (.app (.var 1) (.app (.app (.var 0) p) (.var 0)))))

def captureRoot (p : Term) : Term := spine
  (.app (.lam (.app (.var 0) (.var 0))) (captureHelper p)) [.var 0,.var 1]

theorem captureRoot_weight {p : Term} (hp : Closed p) :
    weight 0 (captureRoot p)=37+wire p := by
  have hz := weight_no_hole p 2 (occ_of_freeUnder p 0 3 hp (by omega))
  simp [captureRoot,captureHelper,spine,weight,hz]
  omega

theorem captureRoot_budget {p : Term} (hp : Closed p) (hw : wire p≤8) :
    weight 0 (captureRoot p)≤45 := by rw [captureRoot_weight hp]; omega

theorem captureHelper_not_delayed (p : Term) (m : Nat) :
    ¬ Delayed m 0 (captureHelper p) := by
  intro hh
  cases hh with
  | lam hb hh hn =>
    cases hb with
    | app hf ha =>
      cases ha with
      | lam hb hh hn =>
        cases hh with
        | own hh => cases hh with | app a hh => cases hh
        | free hk hh => cases hh with | app a hh => cases hh; omega

theorem captureRoot_not_delayed (p : Term) (m : Nat) :
    ¬ Delayed m 0 (captureRoot p) := by
  intro hh
  cases hh with
  | app hf ha => cases hf with
    | app hf ha => cases hf with
      | app hf ha => exact captureHelper_not_delayed p m ha

theorem captureRoot_examples :
    weight 0 (captureRoot (.lam (.var 0)))=41 ∧
    weight 0 (captureRoot (.lam (.app (.var 0) (.var 0))))=45 := by decide

#print axioms delayed_not_reader
#print axioms reader_source_escape
#print axioms escape_head_alternatives
#print axioms live_capture_wire
#print axioms live_capture_context_weight
#print axioms root_let_escape
#print axioms captureRoot_not_delayed

end Blc.SelfintRootLetBudgetDelay
