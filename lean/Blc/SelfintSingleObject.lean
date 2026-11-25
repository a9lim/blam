import Blc.SelfintProbe
import Blc.SelfintValues
import Blc.WeakHeadClock

/-! A one-object abstraction is an instance of a lambda template with one
external slot. A dead abstraction is included by taking its entire body
as the external object. Slots use ordinary capture-avoiding substitution. -/
namespace Blc.SelfintSingleObject
open Term SelfintLowerBound SelfintControl SelfintProbe WeakHeadClock

inductive SO : Term → Prop where
  | var (i) : SO (.var i)
  | app {f a} : SO f → SO a → SO (.app f a)
  | lam {b r g} : SO b → SO r → FreeUnder 1 (.lam g) →
      .lam b = substDec 0 r (.lam g) → SO (.lam b)

theorem so_shift {t} (h : SO t) (j : Nat) : SO (shift 1 j t) := by
  induction h generalizing j with
  | var i => simp only [shift]; split <;> constructor
  | app hf ha ihf iha => exact .app (ihf j) (iha j)
  | @lam b r g hb hr hg he ihb ihr =>
    refine .lam (ihb (j+1)) (ihr j) hg ?_
    change shift 1 j (.lam b) = _
    rw [he, shift_substDec _ _ _ _ (Nat.zero_le _),
      shift_of_freeUnder 1 _ (j+1) 1 hg (by omega)]

theorem so_subst {t s} (h : SO t) (hs : SO s) (j : Nat) : SO (substDec j s t) := by
  induction h generalizing s j with
  | var i => simp only [substDec]; split <;> first | exact hs | split <;> constructor
  | app hf ha ihf iha => exact .app (ihf hs j) (iha hs j)
  | @lam b r g hb hr hg he ihb ihr =>
    refine .lam (ihb (so_shift hs 0) (j+1)) (ihr hs j) hg ?_
    change substDec j s (.lam b) = _
    rw [he, substDec_substDec _ _ _ _ _ (Nat.zero_le _),
      substDec_of_freeUnder _ _ _ (freeUnder_mono (by omega : 1 ≤ j+1) hg)]

theorem so_weak {t u} (h : SO t) (hw : weakStep t = some u) : SO u := by
  induction t generalizing u with
  | var | lam => simp [weakStep] at hw
  | app f a ih _ =>
    cases h with
    | app hf ha =>
      cases f with
      | var i => simp [weakStep] at hw
      | lam b =>
        simp only [weakStep, Option.some.injEq] at hw
        cases hf with
        | lam hb _ _ _ => exact hw ▸ so_subst hb ha 0
      | app p q =>
        obtain ⟨v, hv, rfl⟩ := Option.map_eq_some_iff.mp hw
        exact .app (ih hf hv) ha

theorem so_closed_lam {b} (hc : Closed (.lam b)) (hb : SO b) : SO (.lam b) :=
  .lam hb (.var 0) (closed_freeUnder hc 1) (substDec_closed 0 _ hc).symm

theorem so_dead {b} (hz : occ 0 b = 0) (hb : SO b) : SO (.lam b) := by
  refine SO.lam (g := .var 1) hb (so_subst hb (.var 0) 0) (by decide) ?_
  exact congrArg Term.lam (SelfintClassNext.shift_subst_absent b 0 _ hz).symm

private theorem weak_subst {t u} (hw : weakStep t = some u) (z : Term) :
    weakStep (substDec 0 z t) = some (substDec 0 z u) := by
  induction t generalizing u with
  | var | lam => simp [weakStep] at hw
  | app f a ih _ =>
    cases f with
    | var => simp [weakStep] at hw
    | lam b =>
      simp only [weakStep, Option.some.injEq] at hw
      subst u
      rw [substDec_contract]
      rfl
    | app g b =>
      obtain ⟨v, hv, rfl⟩ := Option.map_eq_some_iff.mp hw
      exact weak_app (ih hv) _

/-- The object is the only source of rigid results. The observation keeps
its weak-head cost as well as its beta result. -/
private structure Obs (t : Term) (i n : Nat) : Prop where
  clock : Count t n
  result : BetaJoin t (.var i)

private theorem Obs.next {t u i n} (h : Obs t i n) (w : weakStep t = some u) :
    ∃ m < n, Obs u i m := by
  obtain ⟨m, hm, hc⟩ := head_decreases h.clock w
  exact ⟨m, hm, hc, join_after_betas (.head (weakStep_beta w) (.refl _)) h.result⟩

private theorem Obs.reduce {t u i n} (h : Obs t i n) (r : Betas t u) :
    ∃ m ≤ n, Obs u i m := by
  obtain ⟨m, hm, hc⟩ := count_reduct n h.clock r
  exact ⟨m, hm, hc, join_after_betas r h.result⟩

private theorem scope_apps {f : Term} {as : List Term} {d}
    (h : FreeUnder d (apps f as)) : FreeUnder d f ∧ ∀ a ∈ as, FreeUnder d a := by
  induction as generalizing f with
  | nil => exact ⟨h, by simp⟩
  | cons a as ih =>
    obtain ⟨⟨hf, ha⟩, hs⟩ := ih (f := .app f a) h
    exact ⟨hf, by simpa using And.intro ha hs⟩

private theorem weak_apps {f g} (hw : weakStep f = some g) (as : List Term) :
    weakStep (apps f as) = some (apps g as) := by
  induction as generalizing f g with
  | nil => exact hw
  | cons a as ih => exact ih (weak_app hw a)

private theorem expose {z g : Term} {i n} (hg : FreeUnder 1 g)
    (h : Obs (substDec 0 z g) i n) :
    ∃ as m, m ≤ n ∧ FreeUnder 1 (apps (.var 0) as) ∧
      Obs (apps z (as.map (substDec 0 z))) i m := by
  induction n using Nat.strongRecOn generalizing g with
  | ind n ih =>
    cases hw : weakStep g with
    | some v =>
      obtain ⟨m, hm, h'⟩ := h.next (weak_subst hw z)
      obtain ⟨as, k, hk, hs, ho⟩ := ih m hm
        (SelfintValues.betas_freeUnder (.head (weakStep_beta hw) (.refl _)) 1 hg) h'
      exact ⟨as, k, by omega, hs, ho⟩
    | none =>
      by_cases hl : IsLam g
      · cases g with
        | lam b => exact (lam_not_join_rigid (.var i) h.result).elim
        | var | app => cases hl
      · obtain ⟨j, as, rfl⟩ := rigid_view (weakStep_none_rigid hw hl)
        have hj : j < 1 := (scope_apps hg).1
        have : j = 0 := by omega
        subst j
        exact ⟨as, n, Nat.le_refl _, hg, by simpa [subst_apps, substDec] using h⟩


private def Sees (z : Term) (i n : Nat) : Prop :=
  ∃ g, FreeUnder 1 g ∧ Obs (substDec 0 z g) i n

private theorem apps_headIndex (f : Term) (as : List Term) :
    (shape (apps f as)).1 = (shape f).1 := by
  induction as generalizing f with
  | nil => rfl
  | cons a as ih => exact ih (.app f a)

private theorem rigid_unique {z i n} (hr : Rigid z) (h : Sees z i n) :
    (shape z).1 = i := by
  obtain ⟨g, hg, ho⟩ := h
  obtain ⟨as, _, _, _, ho⟩ := expose hg ho
  exact (apps_headIndex z _).symm.trans
    (congrArg Prod.fst (rigid_join_shape (apps_rigid hr _) (.var _) ho.result))

private theorem args_reduce {z u} (w : weakStep z = some u) (f : Term) (as : List Term) :
    Betas (apps f (as.map (substDec 0 z))) (apps f (as.map (substDec 0 u))) := by
  induction as generalizing f with
  | nil => exact .refl _
  | cons a as ih =>
    let hb := betas_appR f (WeakHeadClock.subst_arg (weakStep_beta w) a)
    have liftArgs {f g : Term} (hs : Betas f g) (args : List Term) :
        Betas (apps f args) (apps g args) := by
      induction args generalizing f g with
      | nil => exact hs
      | cons a args ih => exact ih (betas_appL a hs)
    exact betas_trans (liftArgs hb _) (ih _)

private theorem sees_weak {z u i n} (w : weakStep z = some u) (h : Sees z i n) :
    ∃ k < n, Sees u i k := by
  obtain ⟨g, hg, ho⟩ := h
  obtain ⟨as, m, hm, hscope, ho⟩ := expose hg ho
  obtain ⟨l, hl, h'⟩ := ho.next (weak_apps w _)
  obtain ⟨k, hk, h''⟩ := h'.reduce (args_reduce w u as)
  exact ⟨k, by omega, _, hscope, by simpa [subst_apps, substDec] using h''⟩

private theorem sees_lam {b r g i n} (hs : FreeUnder 1 (.lam g))
    (he : .lam b = substDec 0 r (.lam g)) (h : Sees (.lam b) i n) :
    ∃ k < n, Sees r i k := by
  obtain ⟨G, hG, ho⟩ := h
  obtain ⟨as, m, hm, hscope, ho⟩ := expose hG ho
  cases as with
  | nil => exact (lam_not_join_rigid (.var i) ho.result).elim
  | cons a as =>
    let args := as.map (substDec 0 (.lam g))
    let call := apps (.app (.lam g) (substDec 0 (.lam g) a)) args
    let q := apps (contract g (substDec 0 (.lam g) a)) args
    have hw : weakStep call = some q := weak_apps (f := .app (.lam g) _) rfl _
    let ctx := apps (.var 0) (a::as)
    have hc : call = substDec 0 (.lam g) ctx := by simp [ctx, call, args, substDec]
    have hscope' : FreeUnder 1 call := hc ▸ SelfintValues.freeUnder_substDec
      ctx (.lam g) 1 0 (by decide) (freeUnder_mono (by decide : 1 ≤ 2) hscope) hs
    have eqn : substDec 0 r call = substDec 0 (.lam b) ctx := by
      rw [hc, substDec_substDec _ _ _ _ _ (Nat.le_refl 0),
        substDec_of_freeUnder _ 1 _ hscope, ← he]
    have hcall : Obs (substDec 0 r call) i m := by
      rw [eqn]
      simpa only [ctx, subst_apps, substDec, if_true] using ho
    obtain ⟨k, hk, h'⟩ := hcall.next (weak_subst hw r)
    exact ⟨k, by omega, q,
      SelfintValues.betas_freeUnder (.head (weakStep_beta hw) (.refl _)) 1 hscope', h'⟩

private theorem unique_cost (k : Nat) {z : Term} {i j n m : Nat}
    (hk : n+m = k) (hz : SO z) (h : Sees z i n) (h' : Sees z j m) : i = j := by
  induction k using Nat.strongRecOn generalizing z i j n m with
  | ind k ih =>
    cases hw : weakStep z with
    | some u =>
      obtain ⟨p, hp, ha⟩ := sees_weak hw h
      obtain ⟨q, hq, hb⟩ := sees_weak hw h'
      exact ih (p+q) (by omega) rfl (so_weak hz hw) ha hb
    | none =>
      by_cases hl : IsLam z
      · cases hz with
        | var | app => cases hl
        | lam _ hr hs he =>
          obtain ⟨p, hp, ha⟩ := sees_lam hs he h
          obtain ⟨q, hq, hb⟩ := sees_lam hs he h'
          exact ih (p+q) (by omega) rfl hr ha hb
      · have hr := weakStep_none_rigid hw hl
        exact (rigid_unique hr h).symm.trans (rigid_unique hr h')

private theorem sees_of_join {z g i} (hs : FreeUnder 1 g)
    (h : BetaJoin (substDec 0 z g) (.var i)) : ∃ n, Sees z i n := by
  obtain ⟨w, hw, hv⟩ := h
  have he := normalForm_betas_eq (t := .var i) (by intro u hu; cases hu) hv
  subst w
  obtain ⟨n, hn⟩ := hasNormalForm_count ⟨.var i, hw, by intro u hu; cases hu⟩
  exact ⟨n, g, hs, hn, join_of_betas hw⟩

/-- The proposition of SINGLE_OBJECT, generalized to arbitrary open objects
and beta-join observations. The contexts have one external slot. -/
theorem single_object_unique {z g h : Term} {i j : Nat} (hz : SO z)
    (hg : FreeUnder 1 g) (hh : FreeUnder 1 h)
    (hi : BetaJoin (substDec 0 z g) (.var i))
    (hj : BetaJoin (substDec 0 z h) (.var j)) : i = j := by
  obtain ⟨n, hn⟩ := sees_of_join hg hi
  obtain ⟨m, hm⟩ := sees_of_join hh hj
  exact unique_cost _ rfl hz hn hm

/-- The two rigid projections of Theorem R. Closedness of T is unnecessary. -/
theorem theoremR {T : Term} (hT : SO T) :
    ¬ (BetaJoin (.app (.app (.app T (.var 0)) (.var 1)) churchTrue) (.var 0) ∧
       BetaJoin (.app (.app (.app T (.var 0)) (.var 1)) churchFalse) (.var 1)) := by
  rintro ⟨h, h'⟩
  have he := single_object_unique (g := .app (.var 0) churchTrue)
    (h := .app (.var 0) churchFalse) (.app (.app hT (.var 0)) (.var 1))
    (by decide) (by decide) h h'
  cases he

private theorem so_bool (b : Bool) : SO (churchBit b) := by
  cases b
  · exact so_closed_lam (by decide) (so_dead (by decide) (.var 1))
  · exact so_closed_lam (by decide) (so_closed_lam (by decide) (.var 0))

private theorem so_stream (bs : List Bool) {s} (hc : Closed s) (hs : SO s) :
    SO (streamOf bs s) := by
  induction bs with
  | nil => exact hs
  | cons b bs ih =>
    rw [streamOf_cons, pairT_of_closed (churchBit_closed b) (streamOf_closed bs hc)]
    apply so_closed_lam
    · rw [← pairT_of_closed (churchBit_closed b) (streamOf_closed bs hc)]
      exact pairT_closed (churchBit_closed b) (streamOf_closed bs hc)
    · exact .app (.app (.var 0) (so_bool b)) ih

/-- Church pairing, λa b f. f a b. -/
def pairCombinator := Term.lam (.lam (.lam (.app (.app (.var 0) (.var 2)) (.var 1))))

/-- A single-object term cannot be beta-convertible to Church pairing. -/
theorem not_join_pair {T : Term} (ht : SO T) : ¬ BetaJoin T pairCombinator := by
  intro hP
  have rel := join_appL (.var 1) (join_appL (.var 0) hP)
  apply theoremR ht
  exact ⟨join_trans (join_appL churchTrue rel)
      (join_of_betas (betas_of_spineReds (spineReds_of_spineSteps 5 (by decide)))),
    join_trans (join_appL churchFalse rel)
      (join_of_betas (betas_of_spineReds (spineReds_of_spineSteps 5 (by decide))))⟩

/-- Specializing the continuation to true already produces an object
outside SO. This form also applies to a reduct of that specialization. -/
theorem specialized_not_so {E f} (hE : IsSelfInterpreter E)
    (hf : Betas (.app E churchTrue) f) : ¬ SO f := by
  intro he
  let P := pairCombinator
  let T := Term.app (.app f (streamOf (blcCode P) identity)) identity
  have hi : SO identity := so_closed_lam (by decide) (.var 0)
  have ht : SO T := .app (.app he (so_stream _ (by decide) hi)) hi
  have h := join_appL identity (join_after_betas (betas_appL _ hf)
    (contract_join hE (M := P) (by decide) churchTrue identity))
  have hP : BetaJoin T P := join_trans h
    (join_of_betas (betas_of_spineReds (spineReds_of_spineSteps 3 (by decide))))
  exact not_join_pair ht hP

theorem selfInterpreter_not_so {E} (hE : IsSelfInterpreter E) : ¬ SO E :=
  fun he => specialized_not_so hE (.refl _) (.app he (so_bool false))

#print axioms single_object_unique
#print axioms theoremR
#print axioms selfInterpreter_not_so
end Blc.SelfintSingleObject
