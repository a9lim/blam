/-
Divergent-probe rigidity: Lemma A and the exact two-argument corollary.
All new infrastructure is local to this lane. The implementation uses the
existing indexed parallel-reduction head-factorization theorem, not a new
standardization axiom. De Bruijn indices are 0-based.

For Lemma A: C=0, x=1, y=2; substituting slot x removes it, so N=1.
For factorization: kappa=0, the forbidden extra C channel=1, N=2;
substituting kappa makes the public C=0 and N=1.
-/
import Blc.SelfintInert
import Blc.Selfint162

namespace Blc.DivergentProbe
open Term SelfintControl SelfintProjections QuoteOrigins SelfintLowerBound SelfintWireCost
set_option maxRecDepth 4096
set_option maxHeartbeats 800000

/-- Head normality includes reduction below leading lambdas. -/
def HNF (t : Term) : Prop := headStep t = none
def Solvable (t : Term) : Prop := ∃ k p, headSteps k t = some p ∧ HNF p

/-- Factorization works for head normal forms, without full normalization. -/
theorem headFactorizes_hnf {t p : Term} (h : Betas t p) (hp : HNF p) :
    ∃ k q, headSteps k t = some q ∧ HNF q ∧ Betas q p := by
  induction h with
  | refl => exact ⟨0, _, rfl, hp, .refl _⟩
  | head hb _ ih =>
    obtain ⟨k, q, hk, hq, hqp⟩ := ih hp
    obtain ⟨n, hn⟩ := beta_par hb
    obtain ⟨k', q', hk', hq', m, hqq⟩ := parN_head_pullback k hn hk hq
    exact ⟨k', q', hk', hq', betas_trans (parN_betas hqq) hqp⟩

theorem headReds_betas' {k : Nat} {t u : Term} (h : headSteps k t = some u) :
    Betas t u := by
  induction k generalizing t with
  | zero => simp only [headSteps, Option.some.injEq] at h; subst u; exact .refl _
  | succ k ih =>
    simp only [headSteps, Option.bind_eq_some_iff] at h
    obtain ⟨v, hv, hu⟩ := h
    exact .head (beta_of_headStep (headStep_sound hv)) (ih hu)

theorem solvable_backwards {t u : Term} (h : Betas t u) (hu : Solvable u) :
    Solvable t := by
  obtain ⟨k, p, hk, hp⟩ := hu
  obtain ⟨l, q, hq, hqn, _⟩ := headFactorizes_hnf
    (betas_trans h (headReds_betas' hk)) hp
  exact ⟨l, q, hq, hqn⟩

theorem rigid_hnf {t : Term} (h : Rigid t) : HNF t := by
  induction h with
  | var => rfl
  | app a h ih =>
    cases h <;> simp_all [HNF, headStep]

theorem hnf_app_rigid {f a : Term} (h : HNF (.app f a)) : Rigid (.app f a) := by
  induction f generalizing a with
  | var n => exact .app _ (.var n)
  | lam b => simp [HNF, headStep] at h
  | app f b ih _ =>
    exact .app _ (ih (by simpa [HNF, headStep] using h))

theorem hnf_beta {t u : Term} (ht : HNF t) (h : Beta t u) : HNF u := by
  induction h with
  | beta b a => simp [HNF, headStep] at ht
  | lam h ih =>
    simp only [HNF, headStep, Option.map_eq_none_iff] at ht ⊢
    exact ih ht
  | appR f h => exact rigid_hnf (rigid_beta (hnf_app_rigid ht) (.appR f h))
  | appL a h => exact rigid_hnf (rigid_beta (hnf_app_rigid ht) (.appL a h))

theorem hnf_betas {t u : Term} (ht : HNF t) (h : Betas t u) : HNF u := by
  induction h with
  | refl => exact ht
  | head hb hs ih => exact ih (hnf_beta ht hb)

theorem solvable_forwards {t u : Term} (h : Betas t u) (ht : Solvable t) :
    Solvable u := by
  obtain ⟨k, p, hk, hp⟩ := ht
  obtain ⟨w, huw, hpw⟩ := betas_confluent h (headReds_betas' hk)
  exact solvable_backwards huw ⟨0, w, rfl, hnf_betas hp hpw⟩

theorem solvable_join {t u : Term} (h : BetaJoin t u) : Solvable t ↔ Solvable u := by
  obtain ⟨w, htw, huw⟩ := h
  exact ⟨fun ht => solvable_backwards huw (solvable_forwards htw ht),
    fun hu => solvable_backwards htw (solvable_forwards huw hu)⟩

/-- A finite head-normalizing substituted computation bounds the original
head computation: every original head step survives substitution. -/
theorem solvable_subst_reflect (t : Term) (j : Nat) (s : Term)
    (h : Solvable (substDec j s t)) : Solvable t := by
  obtain ⟨k, p, hk, hp⟩ := h
  induction k generalizing t p with
  | zero =>
    simp only [headSteps, Option.some.injEq] at hk
    subst p
    refine ⟨0, t, rfl, ?_⟩
    cases he : headStep t with
    | none => exact he
    | some u =>
      have he' := headStep_complete (headStep_substDec (headStep_sound he) j s)
      rw [hp] at he'
      cases he'
  | succ k ih =>
    cases he : headStep t with
    | none => exact ⟨0, t, rfl, he⟩
    | some u =>
      have he' := headStep_complete (headStep_substDec (headStep_sound he) j s)
      simp only [headSteps, he', Option.bind_some] at hk
      obtain ⟨l, q, hl, hq⟩ := ih u p hk hp
      exact ⟨l + 1, q, by simp [headSteps, he, hl], hq⟩

theorem unsolvable_subst {t : Term} (h : ¬ Solvable t) (j : Nat) (s : Term) :
    ¬ Solvable (substDec j s t) := fun hs => h (solvable_subst_reflect t j s hs)


def apps (f : Term) (as : List Term) : Term := as.foldl Term.app f

@[simp] theorem apps_nil (f : Term) : apps f [] = f := rfl
@[simp] theorem apps_cons (f a : Term) (as : List Term) :
    apps f (a :: as) = apps (.app f a) as := rfl
@[simp] theorem apps_append (f : Term) (as bs : List Term) :
    apps f (as ++ bs) = apps (apps f as) bs := by simp [apps, List.foldl_append]

theorem apps_rigid {f : Term} (hf : Rigid f) (as : List Term) : Rigid (apps f as) := by
  induction as generalizing f with
  | nil => exact hf
  | cons a as ih => exact ih (.app a hf)

theorem rigid_view {t : Term} (h : Rigid t) :
    ∃ n as, t = apps (.var n) as := by
  induction h with
  | var n => exact ⟨n, [], rfl⟩
  | app a h ih =>
    obtain ⟨n, as, rfl⟩ := ih
    exact ⟨n, as ++ [a], by simp⟩

@[simp] theorem subst_apps (j : Nat) (s f : Term) (as : List Term) :
    substDec j s (apps f as) = apps (substDec j s f) (as.map (substDec j s)) := by
  induction as generalizing f with
  | nil => rfl
  | cons a as ih => simpa only [apps_cons, List.map_cons, substDec] using ih (.app f a)

theorem rigid_betas {t u : Term} (ht : Rigid t) (h : Betas t u) : Rigid u := by
  induction h with
  | refl => exact ht
  | head hb hs ih => exact ih (rigid_beta ht hb)

theorem lam_betas {b u : Term} (h : Betas (.lam b) u) : ∃ c, u = .lam c := by
  generalize he : Term.lam b = t at h
  induction h generalizing b with
  | refl => exact ⟨b, he.symm⟩
  | head hb hs ih =>
    rw [← he] at hb
    cases hb with
    | lam hb => exact ih rfl

theorem lam_not_join_rigid {b t : Term} (ht : Rigid t) : ¬ BetaJoin (.lam b) t := by
  rintro ⟨w, hw, htw⟩
  obtain ⟨c, rfl⟩ := lam_betas hw
  cases rigid_betas ht htw

/-- Precisely the head observation needed of a probe. It rules out every
rigid result at every application arity; it does not assume full normality. -/
def Blind (v : Term) : Prop :=
  ∀ as t, Rigid t → ¬ BetaJoin (apps v as) t

theorem blind_of_all_unsolvable {v : Term}
    (h : ∀ as, ¬ Solvable (apps v as)) : Blind v := by
  intro as t ht hj
  exact h as ((solvable_join hj).mpr ⟨0, t, rfl, rigid_hnf ht⟩)

theorem rigid_subst_cases {q : Term} (hq : Rigid q) (j : Nat) (v : Term) :
    (∃ as, substDec j v q = apps v as) ∨ Rigid (substDec j v q) := by
  obtain ⟨n, as, rfl⟩ := rigid_view hq
  rw [subst_apps]
  by_cases he : n = j
  · left; exact ⟨as.map (substDec j v), by simp [substDec, he]⟩
  · right
    apply apps_rigid
    simp only [substDec, he, if_false]
    split <;> exact .var _

/-- An arbitrary term whose probe instance has a rigid result itself
reduces to a rigid head; the original head cannot be the probe slot. -/
theorem reflect_rigid {t u v : Term} (j : Nat) (hv : Blind v) (hu : Rigid u)
    (h : BetaJoin (substDec j v t) u) :
    ∃ q, Betas t q ∧ Rigid q ∧ Rigid (substDec j v q) ∧
      BetaJoin (substDec j v q) u := by
  have hs : Solvable t := solvable_subst_reflect t j v
    ((solvable_join h).mpr ⟨0, u, rfl, rigid_hnf hu⟩)
  obtain ⟨k, q, hk, hq⟩ := hs
  have htq := headReds_betas' hk
  have hj : BetaJoin (substDec j v q) u :=
    join_trans (join_symm (join_of_betas (betas_subst htq j v))) h
  have hr : Rigid q := by
    cases q with
    | var n => exact .var n
    | app f a => exact hnf_app_rigid hq
    | lam b => exact (lam_not_join_rigid hu hj).elim
  rcases rigid_subst_cases hr j v with ⟨as, he⟩ | hi
  · rw [he] at hj
    exact (hv as u hu hj).elim
  · exact ⟨q, htq, hr, hi, hj⟩

/-- Head index and exact spine arity. Only used on rigid terms. -/
def shape : Term → Nat × Nat
  | .var n => (n, 0)
  | .lam _ => (0, 0)
  | .app f _ => ((shape f).1, (shape f).2 + 1)

theorem rigid_beta_shape {t u : Term} (ht : Rigid t) (h : Beta t u) : shape u = shape t := by
  induction h with
  | beta b a => cases ht with | app a hf => cases hf
  | lam hb => cases ht
  | appR f hb => rfl
  | appL a hb ih =>
    cases ht with
    | app a hf => simp only [shape, ih hf]

theorem rigid_betas_shape {t u : Term} (ht : Rigid t) (h : Betas t u) : shape u = shape t := by
  induction h with
  | refl => rfl
  | head hb hs ih => exact (ih (rigid_beta ht hb)).trans (rigid_beta_shape ht hb)

theorem rigid_join_shape {t u : Term} (ht : Rigid t) (hu : Rigid u)
    (h : BetaJoin t u) : shape t = shape u := by
  obtain ⟨w, htw, huw⟩ := h
  exact (rigid_betas_shape ht htw).symm.trans (rigid_betas_shape hu huw)

/-- Head variables and exact argument counts survive beta conversion of
head normal forms, even when all their arguments diverge. -/
theorem spineAt_beta {j n : Nat} {t u : Term} (ht : SpineAt j n t) (h : Beta t u) :
    SpineAt j n u := by
  induction ht generalizing u with
  | var => cases h
  | app a hf ih =>
    cases h with
    | beta b a => cases hf
    | appL a hb => exact .app a (ih hb)
    | appR f hb => exact .app _ hf

theorem shape_apps (f : Term) (as : List Term) :
    shape (apps f as) = ((shape f).1, (shape f).2 + as.length) := by
  induction as generalizing f with
  | nil => simp
  | cons a as ih => simp [apps_cons, ih, shape, Nat.add_assoc, Nat.add_comm]

/-- Removing a blind slot reflects a rigid variable exactly. Slot 1 is
x, slot 2 is y; after removal the latter is rigid N = var 1. -/
theorem reflect_remainder {t v : Term} (hv : Blind v)
    (h : BetaJoin (substDec 1 v t) (.var 1)) : Betas t (.var 2) := by
  obtain ⟨q, htq, hq, hi, hj⟩ := reflect_rigid 1 hv (.var 1) h
  obtain ⟨n, as, heq⟩ := rigid_view hq
  subst q
  have hnj : n ≠ 1 := by
    intro he; subst n
    have hj' := hj
    simp only [subst_apps, substDec, if_true] at hj'
    exact hv _ _ (.var 1) hj'
  have hs := rigid_join_shape hi (.var 1) hj
  simp only [subst_apps, substDec, hnj, if_false] at hs
  split at hs
  · simp only [shape_apps, shape, Nat.zero_add, Prod.mk.injEq] at hs
    have hn : n = 2 := by omega
    have ha : as = [] := by simpa using hs.2
    subst n; subst as
    exact htq
  · simp only [shape_apps, shape, Nat.zero_add, Prod.mk.injEq] at hs
    omega

/-- Lemma A in a stronger context form: t may be any term at all.
No normal-form assumption is imposed on t or on the output payload. -/
theorem lemmaA_context {t v X : Term} (hv : Blind v)
    (h : BetaJoin (substDec 1 v t) (.app (.app (.var 0) X) (.var 1))) :
    ∃ A, Betas t (.app (.app (.var 0) A) (.var 2)) := by
  obtain ⟨q, htq, hq, hi, hj⟩ := reflect_rigid 1 hv (.app _ (.app _ (.var 0))) h
  obtain ⟨n, as, heq⟩ := rigid_view hq
  subst q
  have hnj : n ≠ 1 := by
    intro he; subst n
    have hj' := hj
    simp only [subst_apps, substDec, if_true] at hj'
    exact hv _ _ (.app _ (.app _ (.var 0))) hj'
  have hs := rigid_join_shape hi (.app _ (.app _ (.var 0))) hj
  simp only [subst_apps, substDec, hnj, if_false] at hs
  have hn : n = 0 := by
    split at hs <;> simp only [shape_apps, shape, Nat.zero_add, Prod.mk.injEq] at hs <;> omega
  subst n
  have ha : as.length = 2 := by
    simpa [subst_apps, substDec, shape_apps, shape] using congrArg Prod.snd hs
  cases as with
  | nil => simp at ha
  | cons A as =>
    cases as with
    | nil => simp at ha
    | cons B as =>
      have he : as = [] := by simpa using ha
      subst as
      change BetaJoin (.app (.app (.var 0) (substDec 1 v A)) (substDec 1 v B))
        (.app (.app (.var 0) X) (.var 1)) at hj
      have hb := (rigid_app_join (.app _ (.var 0)) (.app _ (.var 0)) hj).2
      exact ⟨A, betas_trans htq (betas_appR _ (reflect_remainder hv hb))⟩


theorem solvable_lam {b : Term} (h : Solvable b) : Solvable (.lam b) := by
  obtain ⟨k, q, hk, hq⟩ := h
  apply solvable_backwards (betas_lam (headReds_betas' hk))
  exact ⟨0, .lam q, rfl, by simpa [HNF, headStep] using hq⟩

/-- Solvability of an application entails solvability of its function.
At an exposed lambda, use substitution reflection on its body. -/
theorem solvable_app_reflect (f a : Term) (h : Solvable (.app f a)) : Solvable f := by
  obtain ⟨k, p, hk, hp⟩ := h
  induction k generalizing f p with
  | zero =>
    simp only [headSteps, Option.some.injEq] at hk
    subst p
    have hr := hnf_app_rigid hp
    cases hr with
    | app a hf => exact ⟨0, f, rfl, rigid_hnf hf⟩
  | succ k ih =>
    cases f with
    | var n => simp [headSteps, headStep] at hk
    | lam b =>
      simp only [headSteps, headStep, Option.bind_some] at hk
      exact solvable_lam (solvable_subst_reflect b 0 a ⟨k, p, hk, hp⟩)
    | app f b =>
      simp only [headSteps, headStep, Option.bind_eq_some_iff,
        Option.map_eq_some_iff] at hk
      obtain ⟨u, ⟨f', hf', rfl⟩, hrest⟩ := hk
      exact solvable_backwards (.head (beta_of_headStep (headStep_sound hf')) (.refl _))
        (ih f' p hrest hp)

theorem unsolvable_app {f : Term} (h : ¬ Solvable f) (a : Term) :
    ¬ Solvable (.app f a) := fun hs => h (solvable_app_reflect f a hs)

theorem unsolvable_apps {f : Term} (h : ¬ Solvable f) (as : List Term) :
    ¬ Solvable (apps f as) := by
  induction as generalizing f with
  | nil => exact h
  | cons a as ih => exact ih (unsolvable_app h a)

theorem blind_of_unsolvable {v : Term} (h : ¬ Solvable v) : Blind v :=
  blind_of_all_unsolvable (unsolvable_apps h)

/-- Lemma A for any unsolvable value, with only the public continuation
free in kappa. C=0, x=1, y=2; the probe instance uses N=1. -/
theorem lemmaA {kappa v X : Term} (hscope : FreeUnder 1 kappa)
    (hv : ¬ Solvable v)
    (h : BetaJoin (.app (.app kappa v) (.var 1))
      (.app (.app (.var 0) X) (.var 1))) :
    ∃ A, Betas (.app (.app kappa (.var 1)) (.var 2))
      (.app (.app (.var 0) A) (.var 2)) := by
  apply lemmaA_context (blind_of_unsolvable hv)
  simpa [substDec, substDec_of_freeUnder kappa 1 v hscope] using h

/-- Beta reduction is compatible with applying a finite argument list. -/
theorem apps_betas {f g : Term} (h : Betas f g) (as : List Term) :
    Betas (apps f as) (apps g as) := by
  induction as generalizing f g with
  | nil => exact h
  | cons a as ih => exact ih (betas_appL a h)

theorem head_self_unsolvable {t : Term} (h : headStep t = some t) : ¬ Solvable t := by
  have hs : ∀ k, headSteps k t = some t := by
    intro k; induction k with
    | zero => rfl
    | succ k ih => simp [headSteps, h, ih]
  rintro ⟨k, p, hk, hp⟩
  have he := (hs k).symm.trans hk
  cases he
  rw [hp] at h
  cases h

def omega : Term := .app (.lam (.app (.var 0) (.var 0)))
  (.lam (.app (.var 0) (.var 0)))
def probe : Term := .lam (.lam omega)

theorem omega_closed : Closed omega := by decide
theorem probe_closed : Closed probe := by decide

theorem omega_unsolvable : ¬ Solvable omega := head_self_unsolvable (by decide)
theorem probe_unsolvable : ¬ Solvable probe := head_self_unsolvable (by decide)

/-- The source evaluator value for lambda-Omega is beta-convertible to
the explicit two-lambda probe, independently of code suffix and environment.
The premise Den is exactly the public parser's canonical value relation. -/
theorem canonical_probe_reduces {B : Term} (hB : Den omega B) :
    Betas (absV (.lam B)) probe := by
  unfold absV probe
  apply betas_lam
  apply betas_lam
  simp only [shift]
  apply Betas.head (.beta _ _)
  exact hB 0 2 [] (consP (.var 0) (.var 1)) (fun n => .var n)
    omega_closed (by intro i hi; omega)

theorem canonical_probe_unsolvable {B : Term} (hB : Den omega B) :
    ¬ Solvable (absV (.lam B)) :=
  fun hs => probe_unsolvable (solvable_forwards (canonical_probe_reduces hB) hs)

/-- Instantiation for every canonical 162 parser value of lambda-Omega. -/
theorem lemmaA_canonical {kappa X B : Term} (hscope : FreeUnder 1 kappa)
    (hB : Den omega B)
    (h : BetaJoin (.app (.app kappa (absV (.lam B))) (.var 1))
      (.app (.app (.var 0) X) (.var 1))) :
    ∃ A, Betas (.app (.app kappa (.var 1)) (.var 2))
      (.app (.app (.var 0) A) (.var 2)) :=
  lemmaA hscope (canonical_probe_unsolvable hB) h


/-- The three possible continuation heads; arbitrary payloads remain open. -/
def kont1 (B : Term) : Term := .lam (.app (.var 1) B)
def kont2 (B : Term) : Term := .lam (.lam (.app (.app (.var 2) B) (.var 0)))
def CanonicalHead (kappa : Term) : Prop :=
  Betas kappa (.var 0) ∨
  (∃ B, Betas kappa (kont1 B)) ∨ (∃ B, Betas kappa (kont2 B))

theorem kont1_apply (B a : Term) :
    Betas (.app (kont1 B) a) (.app (.var 0) (substDec 0 a B)) := by
  apply Betas.head (.beta _ _)
  simp only [contract, substDec]
  exact .refl _

theorem kont2_apply (B a b : Term) :
    Betas (.app (.app (kont2 B) a) b)
      (.app (.app (.var 0) (substDec 0 b (substDec 1 (shift 1 0 a) B))) b) := by
  apply Betas.head (.appL b (.beta _ _))
  apply Betas.head (.beta _ _)
  simp only [contract, substDec]
  exact .refl _

/-- Rigid-variable substitution reflects reductions, not just normality. -/
theorem inert_reflect_variable {t : Term} (j n : Nat) (s : Term)
    (hs : Rigid s) (hn : NFt s)
    (h : BetaJoin (substDec j s t) (.var n)) :
    ∃ q, Betas t q ∧ substDec j s q = .var n := by
  obtain ⟨w, htw, hnw⟩ := h
  have he := normalForm_betas_eq (fun _ hb => nft_no_beta (by trivial) hb) hnw
  subst w
  exact SelfintInert.betas_reflect htw t j s hs hn rfl

theorem betas_scope {t u : Term} (h : Betas t u) (k : Nat)
    (ht : FreeUnder k t) : FreeUnder k u := by
  induction h with
  | refl => exact ht
  | head hb hs ih => exact ih (beta_freeUnder hb k ht)

theorem reflect_two_fresh {t : Term} (ht : FreeUnder 3 t)
    (h : BetaJoin (substDec 0 (.var 2) (substDec 1 (.var 2) t)) (.var 2)) :
    Betas t (.var 0) := by
  obtain ⟨q, hq, he⟩ := inert_reflect_variable 0 2 (.var 2) (.var 2) (by trivial) h
  obtain ⟨r, hr, her⟩ := SelfintInert.betas_reflect hq t 1 (.var 2)
    (.var 2) (by trivial) rfl
  have hrt : FreeUnder 3 r := betas_scope hr 3 ht
  rw [← her] at he
  cases r with
  | var n =>
    change n < 3 at hrt
    have hn : n = 0 := by
      have hn : n = 0 ∨ n = 1 ∨ n = 2 := by omega
      rcases hn with rfl | rfl | rfl <;> simp_all [substDec]
    subst n; exact hr
  | lam b => cases he
  | app f a => cases he

theorem apps_scope_left {f : Term} (as : List Term) {k : Nat}
    (h : FreeUnder k (apps f as)) : FreeUnder k f := by
  induction as generalizing f with
  | nil => exact h
  | cons a as ih => exact (ih h).1

/-- A head-normal term that becomes rigid after two fresh arguments has
at most two leading lambdas. -/
theorem classify_continuation {kappa A : Term} (hscope : FreeUnder 1 kappa)
    (h : Betas (.app (.app kappa (.var 1)) (.var 2))
      (.app (.app (.var 0) A) (.var 2))) : CanonicalHead kappa := by
  have hs : Solvable kappa := solvable_app_reflect _ _ (solvable_app_reflect _ _
    (solvable_backwards h ⟨0, _, rfl, rigid_hnf (.app _ (.app _ (.var 0)))⟩))
  obtain ⟨k, q, hk, hqn⟩ := hs
  have hq := headReds_betas' hk
  have hqs : FreeUnder 1 q := betas_scope hq 1 hscope
  have hj : BetaJoin (.app (.app q (.var 1)) (.var 2))
      (.app (.app (.var 0) A) (.var 2)) :=
    join_trans (join_symm (join_of_betas (betas_appL _ (betas_appL _ hq)))) (join_of_betas h)
  cases q with
  | var n =>
    have hn : n = 0 := by change n < 1 at hqs; omega
    subst n
    exact Or.inl hq
  | app f a =>
    have hr := hnf_app_rigid hqn
    have he := rigid_join_shape (.app _ (.app _ hr)) (.app _ (.app _ (.var 0))) hj
    simp only [shape, Prod.mk.injEq] at he
    omega
  | lam b =>
    cases b with
    | var n =>
      have hn : n < 2 := hqs
      have hcases : n = 0 ∨ n = 1 := by omega
      rcases hcases with rfl | rfl
      · have hj' : BetaJoin (.app (.var 1) (.var 2))
          (.app (.app (.var 0) A) (.var 2)) := by
          exact join_trans (join_symm (join_of_betas (.head (.appL _ (.beta _ _)) (.refl _)))) hj
        have he := rigid_join_shape (.app _ (.var 1)) (.app _ (.app _ (.var 0))) hj'
        simp [shape] at he
      · have hj' : BetaJoin (.app (.var 0) (.var 2))
          (.app (.app (.var 0) A) (.var 2)) := by
          exact join_trans (join_symm (join_of_betas (.head (.appL _ (.beta _ _)) (.refl _)))) hj
        have he := rigid_join_shape (.app _ (.var 0)) (.app _ (.app _ (.var 0))) hj'
        simp [shape] at he
    | app f a =>
      have hbn : HNF (.app f a) := by simpa [HNF, headStep] using hqn
      obtain ⟨n, as, he⟩ := rigid_view (hnf_app_rigid hbn)
      change FreeUnder 2 (.app f a) at hqs
      have hns : n < 2 := apps_scope_left (f := .var n) as (k := 2) (he ▸ hqs)
      have hb : Betas (.app (.app (.lam (.app f a)) (.var 1)) (.var 2))
          (.app (substDec 0 (.var 1) (.app f a)) (.var 2)) :=
        .head (.appL _ (.beta _ _)) (.refl _)
      have hj' := join_trans (join_symm (join_of_betas hb)) hj
      rw [he, subst_apps] at hj'
      have hcases : n = 0 ∨ n = 1 := by omega
      rcases hcases with rfl | rfl
      · simp only [substDec, if_true] at hj'
        have hr := apps_rigid (.var 1) (as.map (substDec 0 (.var 1)))
        have hex := rigid_join_shape (.app _ hr) (.app _ (.app _ (.var 0))) hj'
        simp [shape, shape_apps] at hex
      · simp [substDec] at hj'
        have hr := apps_rigid (.var 0) (as.map (substDec 0 (.var 1)))
        have hex := rigid_join_shape (.app _ hr) (.app _ (.app _ (.var 0))) hj'
        have has : as.length = 1 := by
          have hh := congrArg Prod.snd hex
          simp [shape, shape_apps] at hh
          omega
        cases as with
        | nil => simp at has
        | cons B as =>
          have heas : as = [] := by simpa using has
          subst as
          have he' : Term.app f a = .app (.var 1) B := he
          exact Or.inr (Or.inl ⟨B, by simpa [kont1, he'] using hq⟩)
    | lam b =>
      have hb : Betas (.app (.app (.lam (.lam b)) (.var 1)) (.var 2))
          (substDec 0 (.var 2) (substDec 1 (.var 2) b)) :=
        .head (.appL _ (.beta _ _)) (.head (.beta _ _) (.refl _))
      have hj' := join_trans (join_symm (join_of_betas hb)) hj
      cases b with
      | lam c => exact (lam_not_join_rigid (.app _ (.app _ (.var 0))) hj').elim
      | var n =>
        have hn : n < 3 := hqs
        have hcases : n = 0 ∨ n = 1 ∨ n = 2 := by omega
        rcases hcases with rfl | rfl | rfl <;>
          simp [substDec] at hj' <;>
          have he := rigid_join_shape (.var _) (.app _ (.app _ (.var 0))) hj' <;>
          simp [shape] at he
      | app f a =>
        have hbn : HNF (.app f a) := by simpa [HNF, headStep] using hqn
        obtain ⟨n, as, he⟩ := rigid_view (hnf_app_rigid hbn)
        change FreeUnder 3 (.app f a) at hqs
        have hns : n < 3 := apps_scope_left (f := .var n) as (k := 3) (he ▸ hqs)
        rw [he, subst_apps, subst_apps] at hj'
        have hcases : n = 0 ∨ n = 1 ∨ n = 2 := by omega
        rcases hcases with rfl | rfl | rfl
        · simp [substDec] at hj'
          have hr := apps_rigid (.var 2) (as.map (substDec 0 (.var 2) ∘ substDec 1 (.var 2)))
          have hex := rigid_join_shape hr (.app _ (.app _ (.var 0))) hj'
          simp [shape, shape_apps] at hex
        · simp [substDec] at hj'
          have hr := apps_rigid (.var 1) (as.map (substDec 0 (.var 2) ∘ substDec 1 (.var 2)))
          have hex := rigid_join_shape hr (.app _ (.app _ (.var 0))) hj'
          simp [shape, shape_apps] at hex
        · simp [substDec] at hj'
          have hr := apps_rigid (.var 0) (as.map (substDec 0 (.var 2) ∘ substDec 1 (.var 2)))
          have hex := rigid_join_shape hr (.app _ (.app _ (.var 0))) hj'
          have has : as.length = 2 := by simpa [shape, shape_apps] using congrArg Prod.snd hex
          cases as with
          | nil => simp at has
          | cons B as =>
            cases as with
            | nil => simp at has
            | cons D as =>
              have heas : as = [] := by simpa using has
              subst as
              have he' : Term.app f a = .app (.app (.var 2) B) D := he
              have hjD : BetaJoin (substDec 0 (.var 2) (substDec 1 (.var 2) D)) (.var 2) :=
                (rigid_app_join (.app _ (.var 0)) (.app _ (.var 0)) hj').2
              have hDs : FreeUnder 3 D := by rw [he'] at hqs; exact hqs.2
              have hD := reflect_two_fresh hDs hjD
              exact Or.inr (Or.inr ⟨B, betas_trans hq
                (by simpa [kont2, he'] using betas_lam (betas_lam (betas_appR
                  (.app (.var 2) B) hD)))⟩)


theorem join_after_betas {t q u : Term} (hq : Betas t q) (h : BetaJoin t u) :
    BetaJoin q u := join_trans (join_symm (join_of_betas hq)) h

/-- Every rigid observation of a classified continuation has head C and
exactly as many arguments as were supplied to the continuation. -/
theorem channel_shape {kappa u : Term} (hh : CanonicalHead kappa)
    (as : List Term) (hu : Rigid u) (hj : BetaJoin (apps kappa as) u) :
    shape u = (0, as.length) := by
  rcases hh with h0 | ⟨B, h1⟩ | ⟨B, h2⟩
  · have hj' := join_after_betas (apps_betas h0 as) hj
    have hs := (rigid_join_shape (apps_rigid (.var 0) as) hu hj').symm
    simpa [shape_apps, shape] using hs
  · have hj' := join_after_betas (apps_betas h1 as) hj
    cases as with
    | nil => exact (lam_not_join_rigid hu hj').elim
    | cons a as =>
      have hj'' := join_after_betas (apps_betas (kont1_apply B a) as) hj'
      have hs := (rigid_join_shape (apps_rigid (.app _ (.var 0)) as) hu hj'').symm
      simpa [shape_apps, shape, Nat.add_comm] using hs
  · have hj' := join_after_betas (apps_betas h2 as) hj
    cases as with
    | nil => exact (lam_not_join_rigid hu hj').elim
    | cons a as =>
      cases as with
      | nil =>
        have hb : Betas (.app (kont2 B) a)
            (.lam (.app (.app (.var 1) (substDec 1 (shift 1 0 a) B)) (.var 0))) :=
          .head (.beta _ _) (.refl _)
        exact (lam_not_join_rigid hu (join_after_betas hb hj')).elim
      | cons b as =>
        have hj'' := join_after_betas (apps_betas (kont2_apply B a b) as) hj'
        have hs := (rigid_join_shape (apps_rigid (.app _ (.app _ (.var 0))) as) hu hj'').symm
        simpa [shape_apps, shape, Nat.add_comm, Nat.add_left_comm, Nat.add_assoc] using hs

/-- Full head signature: leading lambdas, innermost head index, arity.
The head index may denote either a bound variable or a free variable. -/
def headSignature : Term → Nat × (Nat × Nat)
  | .var n => (0, n, 0)
  | .lam b => ((headSignature b).1 + 1, (headSignature b).2)
  | .app f _ => (0, (shape f).1, (shape f).2 + 1)

theorem hnf_beta_signature {t u : Term} (ht : HNF t) (h : Beta t u) :
    headSignature u = headSignature t := by
  induction h with
  | beta b a => simp [HNF, headStep] at ht
  | lam hb ih =>
    have hi := ih (by simpa [HNF, headStep] using ht)
    simp only [headSignature, hi]
  | appR f hb => rfl
  | appL a hb =>
    have hr := hnf_app_rigid ht
    cases hr with
    | app a hf => simp only [headSignature, rigid_beta_shape hf hb]

theorem hnf_betas_signature {t u : Term} (ht : HNF t) (h : Betas t u) :
    headSignature u = headSignature t := by
  induction h with
  | refl => rfl
  | head hb hs ih => exact (ih (hnf_beta ht hb)).trans (hnf_beta_signature ht hb)

/-- Leading lambda count, bound/free head index, and spine arity are all
invariant under beta conversion between head normal forms. -/
theorem hnf_join_signature {t u : Term} (ht : HNF t) (hu : HNF u)
    (h : BetaJoin t u) : headSignature t = headSignature u := by
  obtain ⟨w, htw, huw⟩ := h
  exact (hnf_betas_signature ht htw).symm.trans (hnf_betas_signature hu huw)

theorem solvable_iff_beta_hnf (t : Term) :
    Solvable t ↔ ∃ p, Betas t p ∧ HNF p := by
  constructor
  · rintro ⟨k, p, hk, hp⟩
    exact ⟨p, headReds_betas' hk, hp⟩
  · rintro ⟨p, htp, hp⟩
    obtain ⟨k, q, hk, hq, _⟩ := headFactorizes_hnf htp hp
    exact ⟨k, q, hk, hq⟩

/-- Every actual two-argument call forwards its rest argument, regardless
of the payload or any reductions inside it. -/
theorem channel_two {kappa : Term} (hh : CanonicalHead kappa) (a b : Term) :
    ∃ P, Betas (.app (.app kappa a) b) (.app (.app (.var 0) P) b) := by
  rcases hh with h0 | ⟨B, h1⟩ | ⟨B, h2⟩
  · exact ⟨a, betas_appL b (betas_appL a h0)⟩
  · exact ⟨_, betas_trans (betas_appL b (betas_appL a h1))
      (betas_appL b (kont1_apply B a))⟩
  · exact ⟨_, betas_trans (betas_appL b (betas_appL a h2)) (kont2_apply B a b)⟩

theorem channel_two_rest {kappa a b X N : Term} (hh : CanonicalHead kappa)
    (h : BetaJoin (.app (.app kappa a) b) (.app (.app (.var 0) X) N)) :
    BetaJoin b N := by
  obtain ⟨P, hP⟩ := channel_two hh a b
  exact (rigid_app_join (.app _ (.var 0)) (.app _ (.var 0)) (join_after_betas hP h)).2

theorem rigid_landing_of_subst {t u v : Term} (j : Nat) (hu : Rigid u)
    (h : BetaJoin (substDec j v t) u) :
    ∃ k q, headSteps k t = some q ∧ Rigid q ∧ BetaJoin (substDec j v q) u := by
  have hs := solvable_subst_reflect t j v
    ((solvable_join h).mpr ⟨0, u, rfl, rigid_hnf hu⟩)
  obtain ⟨k, q, hk, hq⟩ := hs
  have hj := join_after_betas (betas_subst (headReds_betas' hk) j v) h
  refine ⟨k, q, hk, ?_, hj⟩
  cases q with
  | var n => exact .var n
  | app f a => exact hnf_app_rigid hq
  | lam b => exact (lam_not_join_rigid hu hj).elim

/-- A continuation channel can never manufacture the rigid suffix N;
if an operand becomes N after inserting kappa, it already reduces to N
with the continuation still an independent free variable. -/
theorem channel_reflect_remainder {t kappa : Term} (hh : CanonicalHead kappa)
    (h : BetaJoin (substDec 0 kappa t) (.var 1)) : Betas t (.var 2) := by
  obtain ⟨k, q, hk, hq, hj⟩ := rigid_landing_of_subst 0 (.var 1) h
  have htq := headReds_betas' hk
  obtain ⟨n, as, heq⟩ := rigid_view hq
  subst q
  rw [subst_apps] at hj
  by_cases hn : n = 0
  · subst n
    simp only [substDec, if_true] at hj
    have hs := channel_shape hh _ (.var 1) hj
    simp [shape] at hs
  · simp only [substDec, hn, if_false] at hj
    have hgt : n > 0 := by omega
    simp only [if_pos hgt] at hj
    have hs := rigid_join_shape (apps_rigid (.var (n - 1)) _) (.var 1) hj
    have hn' : n = 2 := by
      have he := congrArg Prod.fst hs
      simp [shape_apps, shape] at he
      omega
    have has : as = [] := by
      have he := congrArg Prod.snd hs
      simpa [shape_apps, shape] using he
    subst n; subst as
    exact htq

theorem occ_zero_betas {t u : Term} (h : Betas t u) (j : Nat)
    (ht : occ j t = 0) : occ j u = 0 := by
  induction h with
  | refl => exact ht
  | head hb hs ih => exact ih (occ_zero_beta hb j ht)

theorem apps_rigidAt (n : Nat) (as : List Term) : RigidAt n (apps (.var n) as) := by
  have aux : ∀ {f : Term}, RigidAt n f → RigidAt n (apps f as) := by
    intro f hf
    induction as generalizing f with
    | nil => exact hf
    | cons a as ih => exact ih (.app a hf)
  exact aux .var

/-- Full two-argument factorization corollary, with the continuation kept
free at the result. Caller slots: kappa=0, forbidden C channel=1, N=2.
After substitution the public slots are C=0 and N=1. -/
theorem two_argument_factorization {T kappa X : Term}
    (hC : occ 1 T = 0) (hh : CanonicalHead kappa)
    (h : BetaJoin (substDec 0 kappa T) (.app (.app (.var 0) X) (.var 1))) :
    ∃ k A B, headSteps k T = some (.app (.app (.var 0) A) B) ∧ Betas B (.var 2) := by
  obtain ⟨k, q, hk, hq, hj⟩ := rigid_landing_of_subst 0 (.app _ (.app _ (.var 0))) h
  have hCq := occ_zero_betas (headReds_betas' hk) 1 hC
  obtain ⟨n, as, heq⟩ := rigid_view hq
  subst q
  have hn : n = 0 := by
    by_cases hn : n = 0
    · exact hn
    · exfalso
      have hgt : n > 0 := by omega
      have hj' := hj
      simp only [subst_apps, substDec, hn, if_false, if_pos hgt] at hj'
      have hs := rigid_join_shape (apps_rigid (.var (n - 1)) _) (.app _ (.app _ (.var 0))) hj'
      have he := congrArg Prod.fst hs
      have hn' : n = 1 := by simp [shape_apps, shape] at he; omega
      subst n
      have ho := rigidAt_occ (apps_rigidAt 1 as)
      omega
  subst n
  simp only [subst_apps, substDec, if_true] at hj
  have hs := channel_shape hh _ (.app _ (.app _ (.var 0))) hj
  have has : as.length = 2 := by
    simpa [shape] using (congrArg Prod.snd hs).symm
  cases as with
  | nil => simp at has
  | cons A as =>
    cases as with
    | nil => simp at has
    | cons B as =>
      have heas : as = [] := by simpa using has
      subst as
      have hB := channel_two_rest hh hj
      exact ⟨k, A, B, hk, channel_reflect_remainder hh hB⟩

/-- A direct two-argument return must compute the actual rigid suffix. -/
theorem direct_return_remainder {kappa a b X : Term} (hh : CanonicalHead kappa)
    (h : BetaJoin (.app (.app kappa a) b) (.app (.app (.var 0) X) (.var 1))) :
    Betas b (.var 1) := by
  obtain ⟨w, hbw, hnw⟩ := channel_two_rest hh h
  have he := normalForm_betas_eq (fun _ hb => nft_no_beta (by trivial) hb) hnw
  subst w
  exact hbw

theorem nfree_direct_return_impossible {kappa a b X : Term}
    (hh : CanonicalHead kappa) (hN : occ 1 b = 0) :
    ¬ BetaJoin (.app (.app kappa a) b) (.app (.app (.var 0) X) (.var 1)) := by
  intro h
  have ho := occ_zero_betas (direct_return_remainder hh h) 1 hN
  simp [occ] at ho

theorem trailing_argument_impossible {kappa a b c X : Term}
    (hh : CanonicalHead kappa) :
    ¬ BetaJoin (.app (.app (.app kappa a) b) c)
      (.app (.app (.var 0) X) (.var 1)) := by
  intro h
  have hs := channel_shape hh [a, b, c] (.app _ (.app _ (.var 0))) h
  simp [shape] at hs

/-- The corollary directly from the divergent-probe hypothesis. H0 is
hscope, the probe call is H1, and hC is the precise single-channel H3. -/
theorem probe_two_argument_corollary {T kappa v X Y : Term}
    (hscope : FreeUnder 1 kappa) (hv : ¬ Solvable v)
    (hprobe : BetaJoin (.app (.app kappa v) (.var 1))
      (.app (.app (.var 0) X) (.var 1)))
    (hC : occ 1 T = 0)
    (hrun : BetaJoin (substDec 0 kappa T) (.app (.app (.var 0) Y) (.var 1))) :
    ∃ k A B, headSteps k T = some (.app (.app (.var 0) A) B) ∧ Betas B (.var 2) := by
  obtain ⟨A, hA⟩ := lemmaA hscope hv hprobe
  exact two_argument_factorization hC (classify_continuation hscope hA) hrun


/-- Rigid substitutions create no head redex, including below lambdas. -/
theorem rigid_subst {t s : Term} (ht : Rigid t) (hs : Rigid s) (j : Nat) :
    Rigid (substDec j s t) := by
  induction ht with
  | var n =>
    simp only [substDec]
    split
    · exact hs
    · split <;> exact .var _
  | app a hf ih => exact .app _ ih

theorem hnf_subst_rigid {t s : Term} (ht : HNF t) (hs : Rigid s) (j : Nat) :
    HNF (substDec j s t) := by
  induction t generalizing s j with
  | var n => exact rigid_hnf (rigid_subst (.var n) hs j)
  | lam b ih =>
    simp only [substDec, HNF, headStep, Option.map_eq_none_iff] at ht ⊢
    exact ih ht (SelfintInert.rigid_shift hs 0) (j + 1)
  | app f a => exact rigid_hnf (rigid_subst (hnf_app_rigid ht) hs j)

theorem solvable_app_rigid {f a : Term} (hf : Solvable f) (ha : Rigid a) :
    Solvable (.app f a) := by
  obtain ⟨k, q, hk, hq⟩ := hf
  apply solvable_backwards (betas_appL a (headReds_betas' hk))
  cases q with
  | var n => exact ⟨0, _, rfl, rigid_hnf (.app _ (.var n))⟩
  | app f b => exact ⟨0, _, rfl, rigid_hnf (.app _ (hnf_app_rigid hq))⟩
  | lam b =>
    apply solvable_backwards (.head (.beta _ _) (.refl _))
    exact ⟨0, _, rfl, hnf_subst_rigid (by simpa [HNF, headStep] using hq) ha 0⟩

/-- Thus an unsolvable observation after two arbitrary rigid arguments is
already sufficient; no separate hypothesis about underapplication is needed. -/
theorem unsolvable_of_two_rigid {v a b : Term} (ha : Rigid a) (hb : Rigid b)
    (hv : ¬ Solvable (.app (.app v a) b)) : ¬ Solvable v :=
  fun h => hv (solvable_app_rigid (solvable_app_rigid h ha) hb)

theorem lemmaA_after_two {kappa v X : Term} (hscope : FreeUnder 1 kappa)
    (hv : ¬ Solvable (.app (.app v (.var 0)) (.var 1)))
    (h : BetaJoin (.app (.app kappa v) (.var 1))
      (.app (.app (.var 0) X) (.var 1))) :
    ∃ A, Betas (.app (.app kappa (.var 1)) (.var 2))
      (.app (.app (.var 0) A) (.var 2)) :=
  lemmaA hscope (unsolvable_of_two_rigid (.var 0) (.var 1) hv) h

theorem probe_two_argument_corollary_after_two {T kappa v X Y : Term}
    (hscope : FreeUnder 1 kappa)
    (hv : ¬ Solvable (.app (.app v (.var 0)) (.var 1)))
    (hprobe : BetaJoin (.app (.app kappa v) (.var 1))
      (.app (.app (.var 0) X) (.var 1)))
    (hC : occ 1 T = 0)
    (hrun : BetaJoin (substDec 0 kappa T) (.app (.app (.var 0) Y) (.var 1))) :
    ∃ k A B, headSteps k T = some (.app (.app (.var 0) A) B) ∧ Betas B (.var 2) :=
  probe_two_argument_corollary hscope (unsolvable_of_two_rigid (.var 0) (.var 1) hv)
    hprobe hC hrun


/-- The real 162 parser returns precisely an absV(lam B) probe, for an
Omega body value Den Omega B. The actual suffix residual is retained. -/
theorem canonical162_probe_return (R K : Term) :
    ∃ B U, Den omega B ∧ SpineReds U R ∧
      SpineReds (.app (.app parser162 K) (streamOf (blcCode (.lam omega)) R))
        (.app (.app K (absV (.lam B))) U) ∧ ¬ Solvable (absV (.lam B)) := by
  obtain ⟨B, hD, hI, hP⟩ := parse162 omega R
  obtain ⟨U, hU, hK⟩ := hP _ (SpineReds.refl _) (kA162 K)
  refine ⟨B, U, hD, hU, ?_, canonical_probe_unsolvable hD⟩
  apply spineReds_trans (spine_zero162' K _ _ (SpineReds.refl _))
  apply spineReds_trans (spine_lam162 K _)
  exact spineReds_trans hK (ret_lam162 K (.lam B) U)

theorem probe_two_argument_corollary_canonical {T kappa B X Y : Term}
    (hscope : FreeUnder 1 kappa) (hB : Den omega B)
    (hprobe : BetaJoin (.app (.app kappa (absV (.lam B))) (.var 1))
      (.app (.app (.var 0) X) (.var 1)))
    (hC : occ 1 T = 0)
    (hrun : BetaJoin (substDec 0 kappa T) (.app (.app (.var 0) Y) (.var 1))) :
    ∃ k A D, headSteps k T = some (.app (.app (.var 0) A) D) ∧ Betas D (.var 2) :=
  probe_two_argument_corollary hscope (canonical_probe_unsolvable hB) hprobe hC hrun

#print axioms headFactorizes_hnf
#print axioms solvable_join
#print axioms unsolvable_subst
#print axioms blind_of_unsolvable
#print axioms hnf_join_signature
#print axioms rigid_join_shape
#print axioms lemmaA_context
#print axioms lemmaA
#print axioms lemmaA_after_two
#print axioms canonical_probe_reduces
#print axioms lemmaA_canonical
#print axioms canonical162_probe_return
#print axioms classify_continuation
#print axioms channel_shape
#print axioms channel_two_rest
#print axioms two_argument_factorization
#print axioms direct_return_remainder
#print axioms nfree_direct_return_impossible
#print axioms trailing_argument_impossible
#print axioms probe_two_argument_corollary
#print axioms probe_two_argument_corollary_after_two
#print axioms probe_two_argument_corollary_canonical
end Blc.DivergentProbe

namespace Audit1Probe
open Blc Term Blc.DivergentProbe
-- non-vacuity of probe_two_argument_corollary's hypotheses
def kap : Term := .lam (.lam (.app (.app (.var 2) (.var 1)) (.var 0)))   -- λa b. C a b
def Tid : Term := .app (.app (.var 0) (.lam (.var 0))) (.var 2)         -- kappa I N, C-free
example : FreeUnder 1 kap := by decide
example : occ 1 Tid = 0 := by decide
example : BetaJoin (.app (.app kap probe) (.var 1)) (.app (.app (.var 0) probe) (.var 1)) :=
  ⟨_, headReds_betas' (by decide : headSteps 2 (.app (.app kap probe) (.var 1)) = some (.app (.app (.var 0) probe) (.var 1))), .refl _⟩
example : BetaJoin (substDec 0 kap Tid) (.app (.app (.var 0) (.lam (.var 0))) (.var 1)) :=
  ⟨_, headReds_betas' (by decide : headSteps 2 (substDec 0 kap Tid) = some (.app (.app (.var 0) (.lam (.var 0))) (.var 1))), .refl _⟩
-- a kappa that is NOT C-only: stream-capturing kappa = λv t. C v N passes the probe (Codex's H0 example), and is excluded only by hscope
def kapBad : Term := .lam (.lam (.app (.app (.var 2) (.var 1)) (.var 3)))
example : ¬ FreeUnder 1 kapBad := by decide
end Audit1Probe
