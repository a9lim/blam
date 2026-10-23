/-
A source-level shallow-occurrence invariant. Every binder in the source
must have at least one use outside all inner lambdas of its own body.
Such a source may contain arbitrary captured heads, nonlinear sharing,
and head redexes. Every beta step preserves the property and cannot
decrease any shallow free occurrence. Hence a reader's shallow j cannot
be suspended beneath the lambda needed to receive its stream.

This is an unbounded source-family exclusion. It makes no claim that all
remaining coarse root-let cells satisfy its binder premise.
-/
import Blc.SelfintRootLetBudgetDelay
namespace Blc.SelfintRound6ReaderShallow
open Term SelfintClass SelfintLowerBound SelfintWireCost SelfintFloor
open SelfintSourceCost SelfintLocalCost SelfintDispatchAudit SelfintWidenHoist SelfintControl
open SelfintFlatMinimum SelfintRootFlat SelfintSourceFront SelfintNeededHead
open SelfintLambdaSink SelfintNestedLets WeakHeadClock
open SelfintRootLetPowers (reader_betas)
open SelfintRootLetOrbit (count_fn count_spine_fn)
open SelfintRootLetRigidPrefix (shallowOcc)
open SelfintRootLetForcing (count_endpoint)
set_option maxRecDepth 10000
set_option maxHeartbeats 3000000

/-- Every source lambda has a use of its binder at lambda-depth zero in
    its own body. All subterms satisfy the same condition. -/
inductive Live : Term → Prop where
  | var (n : Nat) : Live (.var n)
  | app {f a : Term} : Live f → Live a → Live (.app f a)
  | lam {b : Term} : Live b → 0<shallowOcc 0 b → Live (.lam b)

theorem shallow_shift_below (t : Term) (d c k : Nat) (hk : k<c) :
    shallowOcc k (shift d c t)=shallowOcc k t := by
  induction t with
  | var n =>
    simp only [shift,shallowOcc]
    split
    · rename_i hn
      have hn' : n≠k := by omega
      have hn'' : n+d≠k := by omega
      simp [shallowOcc,hn',hn'']
    · rfl
  | lam b ih => rfl
  | app f a ihf iha => simp only [shift,shallowOcc,ihf,iha]

theorem shallow_subst_below (t s : Term) (j k : Nat) (hk : k<j) :
    shallowOcc k t ≤ shallowOcc k (substDec j s t) := by
  induction t with
  | var n =>
    by_cases he : n=j
    · subst n; simp [shallowOcc,substDec,show j≠k by omega]
    · by_cases hgt : j<n
      · have hn : n≠k := by omega
        simp [shallowOcc,substDec,he,hgt,hn]
      · simp [substDec,he,hgt]
  | lam b ih => exact Nat.le_refl 0
  | app f a ihf iha => exact Nat.add_le_add ihf iha

/-- Every shallow use of the substituted variable makes a shallow copy
    of each free leaf in its argument. Internal lambdas can only add more
    copies; they do not contribute to this lower estimate. -/
theorem shallow_subst_copies (t s : Term) (j k : Nat) :
    shallowOcc j t * shallowOcc k s ≤ shallowOcc k (substDec j s t) := by
  induction t with
  | var n =>
    by_cases he : n=j
    · subst n; simp [shallowOcc,substDec]
    · simp [shallowOcc,he]
  | lam b ih => simp [shallowOcc,substDec]
  | app f a ihf iha =>
    simpa only [shallowOcc,substDec,Nat.add_mul] using Nat.add_le_add ihf iha

theorem live_shift {t : Term} (ht : Live t) (d c : Nat) : Live (shift d c t) := by
  induction ht generalizing c with
  | var n => simp only [shift]; split <;> exact .var _
  | app hf ha ihf iha => exact .app (ihf c) (iha c)
  | @lam b hb hh ih =>
    exact .lam (ih (c+1)) (by simpa only [shallow_shift_below b d (c+1) 0 (by omega)] using hh)

theorem live_subst {t s : Term} (ht : Live t) (hs : Live s) (j : Nat) :
    Live (substDec j s t) := by
  induction ht generalizing j s with
  | var n =>
    simp only [substDec]
    split
    · exact hs
    · split <;> exact .var _
  | app hf ha ihf iha => exact .app (ihf hs j) (iha hs j)
  | lam hb hh ih =>
    exact .lam (ih (live_shift hs 1 0) (j+1))
      (Nat.lt_of_lt_of_le hh (shallow_subst_below _ _ (j+1) 0 (by omega)))

/-- Unlike the earlier head-forcing invariant, no syntactic condition on
    the head of any lambda body is used here. -/
theorem live_beta_shallow {t u : Term} (hb : Beta t u) (ht : Live t) (j : Nat) :
    shallowOcc j t ≤ shallowOcc j u := by
  induction hb with
  | beta b a =>
    cases ht with
    | app hf ha => cases hf with
      | lam hbody hh =>
        have hc := shallow_subst_copies b a 0 j
        have hm : shallowOcc j a≤shallowOcc 0 b*shallowOcc j a := by
          exact Nat.le_mul_of_pos_left _ hh
        simpa only [shallowOcc,Nat.zero_add,contract] using Nat.le_trans hm hc
  | lam hb ih => exact Nat.le_refl _
  | appL a hb ih => cases ht with | app hf ha => exact Nat.add_le_add_right (ih hf) _
  | appR f hb ih => cases ht with | app hf ha => exact Nat.add_le_add_left (ih ha) _

theorem live_beta {t u : Term} (hb : Beta t u) (ht : Live t) : Live u := by
  induction hb with
  | beta b a => cases ht with
    | app hf ha => cases hf with | lam hbody hh => exact live_subst hbody ha 0
  | lam hb ih => cases ht with
    | lam hbody hh => exact .lam (ih hbody) (Nat.lt_of_lt_of_le hh (live_beta_shallow hb hbody 0))
  | appL a hb ih => cases ht with | app hf ha => exact .app (ih hf) ha
  | appR f hb ih => cases ht with | app hf ha => exact .app hf (ih ha)

theorem live_betas_shallow {t u : Term} (hb : Betas t u) (ht : Live t) (j : Nat) :
    shallowOcc j t≤shallowOcc j u := by
  induction hb with
  | refl => exact Nat.le_refl _
  | head hs hr ih =>
    exact Nat.le_trans (live_beta_shallow hs ht j) (ih (live_beta hs ht))

theorem live_betas {t u : Term} (hb : Betas t u) (ht : Live t) : Live u := by
  induction hb with
  | refl => exact ht
  | head hs hr ih => exact ih (live_beta hs ht)

/-- A shallow free occurrence cannot cross into the stream lambda of a
    reader, even through unbounded nonlinear source computation. -/
theorem live_shallow_not_reader {t : Term} (ht : Live t) (j : Nat)
    (hj : 0<shallowOcc j t) : ¬ Reader t := by
  intro hr
  obtain ⟨n,hcn⟩ := hasNormalForm_count ⟨zeroOut,hr.zero_red,zeroOut_normal⟩
  obtain ⟨m,hm,hcm⟩ := count_fn n hcn
  obtain ⟨u,hu,hs⟩ := count_endpoint hcm
  have hle := live_betas_shallow hu ht j
  have hr' := reader_betas hr hu
  cases u with
  | var v => exact reader_not_rigid hr' (.var v)
  | app f a => exact reader_not_rigid hr' (weakStep_none_rigid hs (fun h => h))
  | lam b => change shallowOcc j t≤0 at hle; omega

theorem live_depth_zero_not_reader {t : Term} (ht : Live t) (hd : depth t=0) :
    ¬ Reader t := by
  intro hr
  have he := SelfintRootLetRigidPrefix.occ_eq_shallow_of_depth_zero t 1 hd
  have hj := reader_j hr
  exact live_shallow_not_reader ht 1 (by omega) hr

/-- No lambda captures an enclosing source binder. Vacuous lambdas and
    captures of ambient free parameters are permitted. -/
def Uncaptured : Nat → Term → Prop
  | _, .var _ => True
  | d, .app f a => Uncaptured d f ∧ Uncaptured d a
  | d, .lam b => Uncaptured (d+1) b ∧ ∀ i, i<d → occ (i+1) b=0

theorem uncaptured_shift (t : Term) (d c : Nat) (hc : c≤d)
    (ht : Uncaptured d t) : Uncaptured (d+1) (shift 1 c t) := by
  induction t generalizing d c with
  | var n => simp only [shift]; split <;> trivial
  | app f a ihf iha => exact ⟨ihf d c hc ht.1,iha d c hc ht.2⟩
  | lam b ih =>
    refine ⟨ih (d+1) (c+1) (by omega) ht.1,?_⟩
    intro i hi
    by_cases hlt : i+1<c+1
    · rw [occ_shift_lt b (i+1) (c+1) hlt]
      exact ht.2 i (by omega)
    · by_cases heq : i+1=c+1
      · rw [heq,occ_shift_eq]
      · have he : i+1=(i-1)+1+1 := by omega
        rw [he,occ_shift_ge b ((i-1)+1) (c+1) (by omega)]
        exact ht.2 (i-1) (by omega)

theorem uncaptured_subst (t a : Term) (d j : Nat) (hj : j≤d)
    (ht : Uncaptured (d+1) t) (ha : Uncaptured d a) :
    Uncaptured d (substDec j a t) := by
  induction t generalizing a d j with
  | var n =>
    simp only [substDec]
    split
    · exact ha
    · split <;> trivial
  | app f x ihf ihx => exact ⟨ihf a d j hj ht.1 ha,ihx a d j hj ht.2 ha⟩
  | lam b ih =>
    refine ⟨ih (shift 1 0 a) (d+1) (j+1) (by omega) ht.1
      (uncaptured_shift a d 0 (by omega) ha),?_⟩
    intro i hi
    have hcut : occ (j+1) b=0 := ht.2 j (by omega)
    by_cases hlt : i+1<j+1
    · rw [occ_substDec_lt b (shift 1 0 a) (i+1) (j+1) hlt,hcut,Nat.zero_mul,Nat.add_zero]
      exact ht.2 i (by omega)
    · rw [occ_substDec_ge b (shift 1 0 a) (i+1) (j+1) (by omega),hcut,Nat.zero_mul,Nat.add_zero]
      exact ht.2 (i+1) (by omega)

theorem uncaptured_beta {t u : Term} (h : Beta t u) (d : Nat)
    (ht : Uncaptured d t) : Uncaptured d u := by
  induction h generalizing d with
  | beta b a => exact uncaptured_subst b a d 0 (by omega) ht.1.1 ht.2
  | appL a h ih => exact ⟨ih d ht.1,ht.2⟩
  | appR f h ih => exact ⟨ht.1,ih d ht.2⟩
  | lam h ih =>
    refine ⟨ih (d+1) ht.1,?_⟩
    intro i hi
    exact SelfintCapture.occ_beta_zero h (i+1) (ht.2 i hi)

theorem uncaptured_betas {t u : Term} (h : Betas t u) (d : Nat)
    (ht : Uncaptured d t) : Uncaptured d u := by
  induction h with
  | refl => exact ht
  | head hb hr ih => exact ih (uncaptured_beta hb d ht)

/-- An enclosing binder has no use below a lambda in this grammar. -/
theorem uncaptured_local_depth (t : Term) (d j : Nat) (hj : j<d)
    (ht : Uncaptured d t) : occDepth j t=0 := by
  induction t with
  | var n => rfl
  | app f a ihf iha => simp only [occDepth,ihf ht.1,iha ht.2,Nat.zero_add]
  | lam b ih =>
    have ho := ht.2 j hj
    simp only [occDepth,occDepth_zero ho,ho,Nat.zero_add]

/-- Without a captured source binder, a beta step cannot create the first
    hidden occurrence of an ambient parameter. Erasure is allowed. -/
theorem uncaptured_beta_depth_zero {t u : Term} (hb : Beta t u)
    (d j : Nat) (ht : Uncaptured d t) (hd : occDepth j t=0) : occDepth j u=0 := by
  induction hb generalizing d j with
  | beta b a =>
    have hbind := uncaptured_local_depth b (d+1) 0 (by omega) ht.1.1
    have hz : occDepth (j+1) b=0 ∧ occDepth j a=0 := by
      simp only [occDepth] at hd
      omega
    simp only [contract,occDepth_subst_ge b a j 0 (by omega),hz.1,hz.2,hbind,
      Nat.mul_zero,Nat.zero_add]
  | @appL f f' a hb ih =>
    have hz : occDepth j f=0 ∧ occDepth j a=0 := by
      simp only [occDepth] at hd; omega
    simp only [occDepth,ih d j ht.1 hz.1,hz.2,Nat.zero_add]
  | @appR f a a' hb ih =>
    have hz : occDepth j f=0 ∧ occDepth j a=0 := by
      simp only [occDepth] at hd; omega
    simp only [occDepth,hz.1,ih d j ht.2 hz.2,Nat.zero_add]
  | @lam b b' hb ih =>
    have hz : occDepth (j+1) b=0 ∧ occ (j+1) b=0 := by
      simp only [occDepth] at hd; omega
    simp only [occDepth,ih (d+1) (j+1) ht.1 hz.1,
      SelfintCapture.occ_beta_zero hb (j+1) hz.2,Nat.zero_add]

theorem uncaptured_betas_depth_zero {t u : Term} (hb : Betas t u)
    (d j : Nat) (ht : Uncaptured d t) (hd : occDepth j t=0) : occDepth j u=0 := by
  induction hb with
  | refl => exact hd
  | head hs hr ih => exact ih (uncaptured_beta hs d ht) (uncaptured_beta_depth_zero hs d j ht hd)

/-- Vacuous binders alone cannot transport the shallow hole into the
    eventual stream lambda. A source capture is necessary even when other
    j copies may be erased along the run. -/
theorem uncaptured_depth_zero_not_reader {t : Term} (ht : Uncaptured 0 t)
    (hd : depth t=0) : ¬ Reader t := by
  intro hr
  obtain ⟨n,hcn⟩ := hasNormalForm_count ⟨zeroOut,hr.zero_red,zeroOut_normal⟩
  obtain ⟨m,hm,hcm⟩ := count_fn n hcn
  obtain ⟨u,hu,hs⟩ := count_endpoint hcm
  have hdu := uncaptured_betas_depth_zero hu 0 1 ht hd
  have hr' := reader_betas hr hu
  cases u with
  | var v => exact reader_not_rigid hr' (.var v)
  | app f a => exact reader_not_rigid hr' (weakStep_none_rigid hs (fun h => h))
  | lam b =>
    have hj := reader_j hr'
    simp only [occDepth,Nat.reduceAdd] at hdu
    change 1≤occ 2 b at hj
    omega

/-- A literal source witness: a lambda captures one of the local binders
    surrounding it. The captured binder is therefore live. It may have
    shallow uses too; this statement does not erase those uses. -/
theorem not_uncaptured_witness {d : Nat} {t : Term} (ht : ¬ Uncaptured d t) :
    ∃ C b i, t=C.fill (.lam b) ∧ i<d+ctxDepth C ∧ 0<occ (i+1) b := by
  classical
  induction t generalizing d with
  | var n => exact (ht trivial).elim
  | app f a ihf iha =>
    by_cases hf : Uncaptured d f
    · obtain ⟨C,b,i,he,hi,ho⟩ := iha (fun ha => ht ⟨hf,ha⟩)
      exact ⟨.appR f C,b,i,by simp [Context.fill,he],hi,ho⟩
    · obtain ⟨C,b,i,he,hi,ho⟩ := ihf hf
      exact ⟨.appL C a,b,i,by simp [Context.fill,he],hi,ho⟩
  | lam b ih =>
    by_cases hb : Uncaptured (d+1) b
    · have hn : ¬ ∀ i, i<d → occ (i+1) b=0 := fun h => ht ⟨hb,h⟩
      obtain ⟨i,hi⟩ := Classical.not_forall.mp hn
      have hil : i<d := by
        by_cases h : i<d
        · exact h
        · exact (hi (fun hh => (h hh).elim)).elim
      have ho : 0<occ (i+1) b := by
        by_cases h : 0<occ (i+1) b
        · exact h
        · exact (hi (fun _ => by omega)).elim
      exact ⟨.hole,b,i,rfl,by simpa only [ctxDepth,Nat.add_zero] using hil,ho⟩
    · obtain ⟨C,q,i,he,hi,ho⟩ := ih hb
      refine ⟨.lam C,q,i,by simp [Context.fill,he],?_,ho⟩
      simp only [ctxDepth]; omega

theorem reader_depth_zero_capture {t : Term} (hr : Reader t) (hd : depth t=0) :
    ∃ C b i, t=C.fill (.lam b) ∧ i<ctxDepth C ∧ 0<occ (i+1) b := by
  simpa only [Nat.zero_add] using
    not_uncaptured_witness (fun ht => uncaptured_depth_zero_not_reader ht hd hr)



/-- No live lambda captures the designated ambient parameter. A vacuous
    lambda may contain it; the relevant endpoint binder must be live. -/
def Guard (j : Nat) : Term → Prop
  | .var _ => True
  | .app f a => Guard j f ∧ Guard j a
  | .lam b => Guard (j+1) b ∧ (0<occ 0 b → occ (j+1) b=0)

theorem guard_absent (t : Term) (j : Nat) (ho : occ j t=0) : Guard j t := by
  induction t generalizing j with
  | var n => trivial
  | app f a ihf iha =>
    have hz : occ j f=0 ∧ occ j a=0 := by change occ j f+occ j a=0 at ho; omega
    exact ⟨ihf j hz.1,iha j hz.2⟩
  | lam b ih => exact ⟨ih (j+1) ho,fun _ => ho⟩

theorem guard_depth_zero (t : Term) (j : Nat) (hd : occDepth j t=0) : Guard j t := by
  induction t with
  | var n => trivial
  | app f a ihf iha =>
    have hz : occDepth j f=0 ∧ occDepth j a=0 := by
      change occDepth j f+occDepth j a=0 at hd; omega
    exact ⟨ihf hz.1,iha hz.2⟩
  | lam b ih =>
    have ho : occ (j+1) b=0 := by change occDepth (j+1) b+occ (j+1) b=0 at hd; omega
    exact ⟨guard_absent b (j+1) ho,fun _ => ho⟩

theorem guard_shift (t : Term) (j c : Nat) (hc : c≤j) (ht : Guard j t) :
    Guard (j+1) (shift 1 c t) := by
  induction t generalizing j c with
  | var n => simp only [shift]; split <;> trivial
  | app f a ihf iha => exact ⟨ihf j c hc ht.1,iha j c hc ht.2⟩
  | lam b ih =>
    refine ⟨ih (j+1) (c+1) (by omega) ht.1,?_⟩
    intro hl
    rw [occ_shift_lt b 0 (c+1) (by omega)] at hl
    rw [occ_shift_ge b (j+1) (c+1) (by omega)]
    exact ht.2 hl

/-- A live inner lambda cannot receive the substituted argument because
    separation prohibits its capture of the substituted source binder. -/
theorem guard_subst (t a : Term) (d k j : Nat) (hk : k≤d) (hj : d≤j)
    (hs : SelfintCapture.Separated (d+1) t) (ht : Guard (j+1) t) (ha : Guard j a) :
    Guard j (substDec k a t) := by
  induction t generalizing a d k j with
  | var n =>
    simp only [substDec]
    split
    · exact ha
    · split <;> trivial
  | app f x ihf ihx => exact ⟨ihf a d k j hk hj hs.1 ht.1 ha,ihx a d k j hk hj hs.2 ht.2 ha⟩
  | lam b ih =>
    refine ⟨ih (shift 1 0 a) (d+1) (k+1) (j+1) (by omega) (by omega) hs.1 ht.1
      (guard_shift a j 0 (by omega) ha),?_⟩
    intro hl
    rw [occ_substDec_lt b (shift 1 0 a) 0 (k+1) (by omega),
      occ_shift_eq,Nat.mul_zero,Nat.add_zero] at hl
    have hcut : occ (k+1) b=0 := hs.2 hl k (by omega)
    rw [occ_substDec_ge b (shift 1 0 a) (j+1) (k+1) (by omega),
      hcut,Nat.zero_mul,Nat.add_zero]
    exact ht.2 hl

theorem guard_beta {t u : Term} (hb : Beta t u) (d j : Nat) (hj : d≤j)
    (hs : SelfintCapture.Separated d t) (ht : Guard j t) : Guard j u := by
  induction hb generalizing d j with
  | beta b a => exact guard_subst b a d 0 j (by omega) hj hs.1.1 ht.1.1 ht.2
  | appL a hb ih => exact ⟨ih d j hj hs.1 ht.1,ht.2⟩
  | appR f hb ih => exact ⟨ht.1,ih d j hj hs.2 ht.2⟩
  | @lam b b' hb ih =>
    refine ⟨ih (d+1) (j+1) (by omega) hs.1 ht.1,?_⟩
    intro hl
    have hol : 0<occ 0 b := by
      by_cases hz : occ 0 b=0
      · have hh := SelfintCapture.occ_beta_zero hb 0 hz; omega
      · omega
    exact SelfintCapture.occ_beta_zero hb (j+1) (ht.2 hol)

theorem guard_betas {t u : Term} (hb : Betas t u) (d j : Nat) (hj : d≤j)
    (hs : SelfintCapture.Separated d t) (ht : Guard j t) : Guard j u := by
  induction hb with
  | refl => exact ht
  | head hstep hrest ih =>
    exact ih (SelfintCapture.separated_beta hstep d hs) (guard_beta hstep d j hj hs ht)

/-- The endpoint of every reader has a live stream binder and retains j.
    Hence vacuous-only source captures cannot implement a depth-zero
    reader, even if those vacuous lambdas conceal or erase j transiently. -/
theorem separated_depth_zero_not_reader {t : Term}
    (hs : SelfintCapture.Separated 0 t) (hd : depth t=0) : ¬ Reader t := by
  intro hr
  obtain ⟨n,hcn⟩ := hasNormalForm_count ⟨zeroOut,hr.zero_red,zeroOut_normal⟩
  obtain ⟨m,hm,hcm⟩ := count_fn n hcn
  obtain ⟨u,hu,hstop⟩ := count_endpoint hcm
  have hgu := guard_betas hu 0 1 (by omega) hs (guard_depth_zero t 1 hd)
  have hr' := reader_betas hr hu
  cases u with
  | var v => exact reader_not_rigid hr' (.var v)
  | app f a => exact reader_not_rigid hr' (weakStep_none_rigid hstop (fun h => h))
  | lam b =>
    have hl := reader_root_live hr'
    have hj := reader_j hr'
    have hz := hgu.2 (by omega)
    change 1≤occ 2 b at hj
    change occ 2 b=0 at hz
    omega

/-- Every depth-zero reader contains a live lambda that captures an
    enclosing source binder. No size or minimum-source premise is used. -/
theorem reader_depth_zero_live_capture {t : Term} (hr : Reader t) (hd : depth t=0) :
    SelfintCapture.HasLiveCapture 0 t :=
  SelfintCapture.hasLiveCapture_of_not_separated t 0
    (fun hs => separated_depth_zero_not_reader hs hd hr)

#print axioms live_beta
#print axioms live_betas_shallow
#print axioms live_depth_zero_not_reader
#print axioms uncaptured_depth_zero_not_reader
#print axioms guard_beta
#print axioms separated_depth_zero_not_reader
#print axioms reader_depth_zero_live_capture
end Blc.SelfintRound6ReaderShallow
