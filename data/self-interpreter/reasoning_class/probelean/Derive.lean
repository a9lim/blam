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
import Blc.SelfintClass

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


/-! ## Escape lane extension: value slots (generalized Lemma A)
Theorem B2 needs Lemma A with a second, abstract value slot (APP's first
operand). `reflect_remainder_k` / `lemmaA_context_k` let the rest sit at any
index k >= 1; two applications give the two-slot form. -/

theorem reflect_remainder_k {t v : Term} (k : Nat) (hk : 1 ≤ k) (hv : Blind v)
    (h : BetaJoin (substDec 1 v t) (.var k)) : Betas t (.var (k + 1)) := by
  obtain ⟨q, htq, hq, hi, hj⟩ := reflect_rigid 1 hv (.var k) h
  obtain ⟨n, as, heq⟩ := rigid_view hq
  subst q
  have hnj : n ≠ 1 := by
    intro he; subst n
    have hj' := hj
    simp only [subst_apps, substDec, if_true] at hj'
    exact hv _ _ (.var k) hj'
  have hs := rigid_join_shape hi (.var k) hj
  simp only [subst_apps, substDec, hnj, if_false] at hs
  split at hs
  · simp only [shape_apps, shape, Nat.zero_add, Prod.mk.injEq] at hs
    have hn : n = k + 1 := by omega
    have ha : as = [] := by simpa using hs.2
    subst n; subst as
    exact htq
  · simp only [shape_apps, shape, Nat.zero_add, Prod.mk.injEq] at hs
    omega

theorem lemmaA_context_k {t v X : Term} (k : Nat) (hk : 1 ≤ k) (hv : Blind v)
    (h : BetaJoin (substDec 1 v t) (.app (.app (.var 0) X) (.var k))) :
    ∃ A, Betas t (.app (.app (.var 0) A) (.var (k + 1))) := by
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
        (.app (.app (.var 0) X) (.var k)) at hj
      have hb := (rigid_app_join (.app _ (.var 0)) (.app _ (.var 0)) hj).2
      exact ⟨A, betas_trans htq (betas_appR _ (reflect_remainder_k k hk hv hb))⟩

/-- Generalized Lemma A, two value slots (Theorem B2). In t: C = 0, the
first operand's value slot x = 1, the second value z = 2, the rest w = 3.
Filling both slots with blind probe values (x first, then z) and joining
`C X N` (N = 1 after both substitutions) forces t to reduce to `C A w`. -/
theorem lemmaA_two_slots {t v1 v2 X : Term} (hv1 : Blind v1) (hv2 : Blind v2)
    (h : BetaJoin (substDec 1 v2 (substDec 1 v1 t))
      (.app (.app (.var 0) X) (.var 1))) :
    ∃ A, Betas t (.app (.app (.var 0) A) (.var 3)) := by
  obtain ⟨A', hA'⟩ := lemmaA_context hv2 h
  exact lemmaA_context_k 2 (by omega) hv1 (join_of_betas hA')

end Blc.DivergentProbe

/-
Probe-to-interface derivations, by the probelean lane. The prefix above is
pasted from escape/Slots.lean, which contains the original Probe.lean and
Claude escape's two-slot extension. No new axioms or edits to source lanes.
-/
namespace Blc.ProbeInterface
open Term SelfintControl SelfintProjections DivergentProbe
set_option maxRecDepth 8192
set_option maxHeartbeats 1500000

/-- Actual assembly, with the same hygienic source tree as the class bound. -/
def parser (T R Q : Term) : Term := SelfintClass.assemble T R Q

def body (R Q : Term) : Term := substDec 1 Q R
/-- The actual reader in its one-free-variable continuation frame. -/
def reader (T R Q : Term) : Term := substDec 1 (parser T R Q) (body R Q)
def next (T R Q : Term) : Term := substDec 1 (parser T R Q) Q
/-- Insert the actual parser into a continuation template [c,p]. -/
def actual (T R Q A : Term) : Term := substDec 1 (parser T R Q) A
def atC (A c : Term) : Term := substDec 0 c A

def run (P c s : Term) : Term := .app (.app P c) s
def output (c X N : Term) : Term := .app (.app c X) N
def quote (M N : Term) : Term := streamOf (blcCode M) N
def unary (n : Nat) (N : Term) : Term := streamOf (vbits n) N

def probeSource : Term := .lam omega

def lams : Nat → Term → Term
  | 0, M => M
  | n + 1, M => .lam (lams n M)

structure Sep (T R Q : Term) : Prop where
  knot_scope : FreeUnder 1 T
  reader_scope : FreeUnder 2 R
  next_scope : FreeUnder 2 Q
  knot : BetaJoin T (.app (.var 0) T)

theorem Sep.closed {T R Q : Term} (h : Sep T R Q) : Closed (parser T R Q) :=
  SelfintClass.subst_scope T (SelfintClass.functional R Q) 0 0 (by omega)
    h.knot_scope (SelfintClass.functional_closed h.reader_scope h.next_scope)

theorem Sep.actual_reader_scope {T R Q : Term} (h : Sep T R Q) : FreeUnder 1 (reader T R Q) := by
  apply SelfintClass.subst_scope _ _ 1 1 (by omega)
  · exact SelfintClass.subst_scope R Q 1 2 (by omega)
      (freeUnder_mono (by omega : 2 ≤ 3) h.reader_scope) h.next_scope
  · exact closed_freeUnder h.closed 1

theorem Sep.actual_scope {T R Q A : Term} (h : Sep T R Q) (hA : FreeUnder 2 A) :
    FreeUnder 1 (actual T R Q A) :=
  SelfintClass.subst_scope A (parser T R Q) 1 1 (by omega) hA
    (closed_freeUnder h.closed 1)

theorem Sep.unfold {T R Q : Term} (h : Sep T R Q) :
    BetaJoin (parser T R Q) (.app (SelfintClass.functional R Q) (parser T R Q)) := by
  have hu := join_inst [SelfintClass.functional R Q] 0 h.knot
  simpa [instN, inst_app, parser, SelfintClass.assemble, shift_zero, substDec] using hu

theorem functional_run (T R Q c s : Term) (hP : Closed (parser T R Q)) :
    Betas (run (.app (SelfintClass.functional R Q) (parser T R Q)) c s)
      (.app (atC (reader T R Q) c) s) := by
  unfold run SelfintClass.functional reader atC body
  apply Betas.head (.appL s (.appL c (.beta _ _)))
  simp only [contract, substDec, shift_closed 1 0 hP]
  exact .head (.appL s (.beta _ _)) (.refl _)

theorem Sep.run_reader {T R Q : Term} (h : Sep T R Q) (c s : Term) :
    BetaJoin (run (parser T R Q) c s) (.app (atC (reader T R Q) c) s) :=
  join_trans (join_appL s (join_appL c h.unfold))
    (join_of_betas (functional_run T R Q c s h.closed))

/-- ABS-only interface, sufficient for every unary length and ABS dataflow.
The zero equation is actual-P; the continuation is a fixed [c,p] template. -/
structure LambdaProtocol (T R Q : Term) where
  A : Term
  scopeA : FreeUnder 2 A
  zero : ∀ c (bit : Bool) r, BetaJoin
    (.app (atC (reader T R Q) c) (pairT churchTrue (pairT (churchBit bit) r)))
    (run (atC (next T R Q) c) (churchBit bit) r)
  controlA : ∀ c r, BetaJoin (run (atC (next T R Q) c) churchTrue r)
    (run (parser T R Q) (atC (actual T R Q A) c) r)

/-- APP adds its first-call template F and second-call template B. -/
structure Protocol (T R Q : Term) extends LambdaProtocol T R Q where
  F : Term
  B : Term
  scopeF : FreeUnder 2 F
  scopeB : FreeUnder 2 B
  controlF : ∀ c r, BetaJoin (run (atC (next T R Q) c) churchFalse r)
    (run (parser T R Q) (atC (actual T R Q F) c) r)
  control2 : ∀ c x y, BetaJoin
    (output (atC (actual T R Q F) c) x y)
    (run (parser T R Q) (.app (atC (actual T R Q B) c) x) y)

variable {T R Q : Term}

def kontA (h : LambdaProtocol T R Q) : Term := actual T R Q h.A
def kontF (h : Protocol T R Q) : Term := actual T R Q h.F
def kontB (h : Protocol T R Q) : Term := actual T R Q h.B

theorem parse_lam (hs : Sep T R Q) (hp : LambdaProtocol T R Q) (c M N : Term) :
    BetaJoin (run (parser T R Q) c (quote (.lam M) N))
      (run (parser T R Q) (atC (kontA hp) c) (quote M N)) := by
  apply join_trans (hs.run_reader _ _)
  apply join_trans (hp.zero c false (quote M N))
  exact hp.controlA c (quote M N)

/-- Iterating constructor continuations, with the same fixed actual parser
and no captured input or suffix at any depth. -/
def iterA (hp : LambdaProtocol T R Q) : Nat → Term → Term
  | 0, c => c
  | n + 1, c => iterA hp n (atC (kontA hp) c)

theorem iterA_scope (hs : Sep T R Q) (hp : LambdaProtocol T R Q) (n : Nat) (c : Term)
    (hc : FreeUnder 1 c) : FreeUnder 1 (iterA hp n c) := by
  induction n generalizing c with
  | zero => exact hc
  | succ n ih =>
    apply ih
    exact SelfintClass.subst_scope _ _ 0 1 (by omega)
      (freeUnder_mono (by omega : 1 ≤ 2) (hs.actual_scope hp.scopeA)) hc

theorem parse_prefix (hs : Sep T R Q) (hp : LambdaProtocol T R Q)
    (n : Nat) (c M N : Term) :
    BetaJoin (run (parser T R Q) c (quote (lams n M) N))
      (run (parser T R Q) (iterA hp n c) (quote M N)) := by
  induction n generalizing c with
  | zero => exact join_refl _
  | succ n ih =>
    exact join_trans (parse_lam hs hp c (lams n M) N) (ih (atC (kontA hp) c))

theorem lams_scope (n k : Nat) (M : Term) :
    FreeUnder k (lams n M) ↔ FreeUnder (k + n) M := by
  induction n generalizing k with
  | zero => simp [lams]
  | succ n ih => simpa [lams, FreeUnder, Nat.add_assoc, Nat.add_comm, Nat.add_left_comm] using ih (k + 1)

/-- For this literal fixed-point assembly, the public contract itself
supplies the closed unsolvable return equation. This is a conversion
statement, not an operational claim about the first returned closure. -/
theorem closed_probe_return {P : Term} (hi : IsSelfInterpreter P) (c N : Term) :
    ∃ v, Closed v ∧ ¬ Solvable (.app (.app v (.var 0)) (.var 1)) ∧
      BetaJoin (run P c (quote probeSource N)) (output c v N) := by
  refine ⟨probe, probe_closed, unsolvable_apps probe_unsolvable [.var 0, .var 1], ?_⟩
  exact contract_join hi (by decide : Closed probeSource) c N

theorem iterA_probe (hs : Sep T R Q) (hp : LambdaProtocol T R Q)
    (hi : IsSelfInterpreter (parser T R Q)) (n : Nat) :
    ∃ v X, ¬ Solvable v ∧ BetaJoin (output (iterA hp n (.var 0)) v (.var 1))
      (output (.var 0) X (.var 1)) := by
  obtain ⟨v, hv, hdiv, hret⟩ := closed_probe_return hi (iterA hp n (.var 0)) (.var 1)
  have hclosed : Closed (lams n probeSource) :=
    (lams_scope n 0 probeSource).mpr (closed_freeUnder (by decide : Closed probeSource) _)
  have hc := contract_join hi hclosed (.var 0) (.var 1)
  have hstrip := parse_prefix hs hp n (.var 0) probeSource (.var 1)
  refine ⟨v, .lam (lams n probeSource), unsolvable_of_two_rigid (.var 0) (.var 1) hdiv, ?_⟩
  exact join_trans (join_symm hret) (join_trans (join_symm hstrip) hc)

/-- No independent public-continuation channel in a parse with c abstract.
Here c=0, the forbidden extra C slot=1, and suffix N=2. -/
theorem run_no_second_C (P : Term) (hP : Closed P) (bits : List Bool) :
    occ 1 (run P (.var 0) (streamOf bits (.var 2))) = 0 := by
  have hPocc : occ 1 P = 0 := SelfintFloor.occ_of_freeUnder P 0 1 hP (by omega)
  have hstream : occ 1 (streamOf bits (.var 2)) = 0 := by
    induction bits with
    | nil => rfl
    | cons b bs ih =>
      rw [streamOf_cons]
      unfold pairT
      simp only [occ, occ_shift_ge, Nat.zero_le, ih]
      simp only [Nat.reduceAdd, reduceCtorEq, if_false, Nat.zero_add]
      have hc : occ 1 (churchBit b) = 0 :=
        SelfintFloor.occ_of_freeUnder _ 0 1 (churchBit_closed b) (by omega)
      omega
  simp [run, occ, hPocc, hstream]

/-- Every positive unary index, with c still abstract and the actual parser.
The source is lambda^(n+1).var(n); the innermost parse is U_(n+1)(N). -/
theorem variable_rest_parser (hs : Sep T R Q) (hp : LambdaProtocol T R Q)
    (hi : IsSelfInterpreter (parser T R Q)) (n : Nat) :
    ∃ X, Betas (run (parser T R Q) (.var 0) (unary (n + 1) (.var 2)))
      (output (.var 0) X (.var 2)) := by
  let kappa := iterA hp (n + 1) (.var 0)
  have hk : FreeUnder 1 kappa := iterA_scope hs hp (n + 1) (.var 0) (by decide)
  obtain ⟨v, X, hv, hpv⟩ := iterA_probe hs hp hi (n + 1)
  have hclosed : Closed (lams (n + 1) (.var n)) := by
    apply (lams_scope (n + 1) 0 (.var n)).mpr
    change n < 0 + (n + 1)
    omega
  have hc := contract_join hi hclosed (.var 0) (.var 1)
  have hstrip := parse_prefix hs hp (n + 1) (.var 0) (.var n) (.var 1)
  have hrun := join_trans (join_symm hstrip) hc
  have hinst : substDec 0 kappa (run (parser T R Q) (.var 0) (unary (n + 1) (.var 2))) =
      run (parser T R Q) kappa (quote (.var n) (.var 1)) := by
    unfold run unary quote
    rw [show substDec 0 kappa (.app (.app (parser T R Q) (.var 0))
      (streamOf (vbits (n + 1)) (.var 2))) =
      .app (.app (substDec 0 kappa (parser T R Q)) kappa)
        (streamOf (vbits (n + 1)) (.var 1)) by
      simp only [substDec, if_true, subst_streamOf]; rfl]
    rw [substDec_closed _ _ hs.closed, code_var, stream_vbits_succ, streamOf_cons]
    rfl
  have hnotC := run_no_second_C (parser T R Q) hs.closed (vbits (n + 1))
  obtain ⟨steps, A, B, hhead, hB⟩ := probe_two_argument_corollary hk hv hpv hnotC
    (by change BetaJoin (substDec 0 kappa (run (parser T R Q) (.var 0) (unary (n + 1) (.var 2)))) _; rw [hinst]; exact hrun)
  exact ⟨A, betas_trans (headReds_betas' hhead) (betas_appR _ hB)⟩


/-- Conversion to a rigid continuation result with a normal suffix gives
an actual reduction, even when the payload is not normalizing. -/
theorem output_join_reduces {t X : Term} (n : Nat)
    (h : BetaJoin t (output (.var 0) X (.var n))) :
    ∃ Y, Betas t (output (.var 0) Y (.var n)) := by
  obtain ⟨w, htw, how⟩ := h
  obtain ⟨g, b, hw, hg, hb⟩ := rigid_app_betas how rfl (.app _ (.var 0))
  have hb' := normalForm_betas_eq (fun _ hh => nft_no_beta (by trivial) hh) hb
  subst b
  obtain ⟨f, a, hg', hf, ha⟩ := rigid_app_betas hg rfl (.var 0)
  have hf' := normalForm_betas_eq (fun _ hh => nft_no_beta (by trivial) hh) hf
  subst f
  exact ⟨a, by simpa [output, hw, hg'] using htw⟩

/-- Hygienic substitution through a one-hole frame, with no extra source
variable above that frame. This identifies the real NEXT reader plug. -/
theorem plug_comp (r q p : Term) (j : Nat) (hr : FreeUnder (j + 1) r) :
    substDec j p (substDec j q r) = substDec j (substDec j p q) r := by
  induction r generalizing j q p with
  | var n =>
    change n < j + 1 at hr
    by_cases hn : n = j
    · simp [substDec, hn]
    · have hlt : ¬ n > j := by omega
      simp [substDec, hn, hlt]
  | lam b ih =>
    simp only [substDec]
    rw [ih _ _ (j + 1) hr, ← shift_substDec_lt q p j 0 (by omega)]
  | app f a ihf iha => simp only [substDec, ihf _ _ j hr.1, iha _ _ j hr.2]

theorem actual_reader_plug (hs : Sep T R Q) :
    reader T R Q = substDec 1 (next T R Q) R :=
  plug_comp R Q (parser T R Q) 1 hs.reader_scope

/-- (a) The actual-NEXT variable law's rest component for every positive
unary length, with the reader continuation independent and abstract. -/
theorem variable_rest_reader (hs : Sep T R Q) (hp : LambdaProtocol T R Q)
    (hi : IsSelfInterpreter (parser T R Q)) (n : Nat) :
    ∃ X, Betas (.app (substDec 1 (next T R Q) R) (unary (n + 1) (.var 2)))
      (output (.var 0) X (.var 2)) := by
  obtain ⟨X, hX⟩ := variable_rest_parser hs hp hi n
  have hread := hs.run_reader (.var 0) (unary (n + 1) (.var 2))
  have he : atC (reader T R Q) (.var 0) = reader T R Q :=
    subst_self _ 0 hs.actual_reader_scope
  rw [he, actual_reader_plug hs] at hread
  exact output_join_reduces 2 (join_trans (join_symm hread) (join_of_betas hX))

/-- (b) ABS returns the rest argument verbatim with the actual parser.
The payload remains allowed to depend on both abstract arguments. -/
theorem abs_dataflow (hs : Sep T R Q) (hp : LambdaProtocol T R Q)
    (hi : IsSelfInterpreter (parser T R Q)) :
    ∃ A, Betas (output (kontA hp) (.var 1) (.var 2))
      (output (.var 0) A (.var 2)) := by
  have hscope : FreeUnder 1 (kontA hp) := hs.actual_scope hp.scopeA
  obtain ⟨v, hv, hdiv, hret⟩ := closed_probe_return hi (atC (kontA hp) (.var 0)) (.var 1)
  have hparse := parse_lam hs hp (.var 0) probeSource (.var 1)
  have hclosed : Closed (.lam probeSource) := by decide
  have hc := contract_join hi hclosed (.var 0) (.var 1)
  have hjoin := join_trans (join_symm hret) (join_trans (join_symm hparse) hc)
  have he : atC (kontA hp) (.var 0) = kontA hp := subst_self _ 0 hscope
  rw [he] at hjoin
  exact lemmaA_after_two hscope hdiv hjoin

/-- APP's source header hands its first operand and its remaining stream
to the same closed parser, as required by actual Z + C1. -/
theorem parse_app (hs : Sep T R Q) (hp : Protocol T R Q) (c M L N : Term) :
    BetaJoin (run (parser T R Q) c (quote (.app M L) N))
      (run (parser T R Q) (atC (kontF hp) c) (quote M (quote L N))) := by
  apply join_trans (hs.run_reader _ _)
  have he : quote (.app M L) N = pairT churchTrue (pairT churchFalse (quote M (quote L N))) := by
    simp only [quote, blcCode, streamOf_cons, streamOf_append]
    rfl
  rw [he]
  exact join_trans (hp.zero c true (quote M (quote L N)))
    (hp.controlF c (quote M (quote L N)))

/-- (c) APP's second-operand continuation forwards the rest, with the
first value slot and second value slot both kept abstract. -/
theorem app_second_dataflow (hs : Sep T R Q) (hp : Protocol T R Q)
    (hi : IsSelfInterpreter (parser T R Q)) :
    ∃ A, Betas (output (.app (kontB hp) (.var 1)) (.var 2) (.var 3))
      (output (.var 0) A (.var 3)) := by
  have hBscope : FreeUnder 1 (kontB hp) := hs.actual_scope hp.scopeB
  have hFscope : FreeUnder 1 (kontF hp) := hs.actual_scope hp.scopeF
  let c : Term := .var 0
  let N : Term := .var 1
  let tail : Term := quote probeSource N
  have hstart := parse_app hs hp c probeSource probeSource N
  obtain ⟨v1, hv1, hd1, hr1⟩ := closed_probe_return hi (atC (kontF hp) c) tail
  have hC2 := hp.control2 c v1 tail
  obtain ⟨v2, hv2, hd2, hr2⟩ := closed_probe_return hi (.app (atC (kontB hp) c) v1) N
  have hfinish : BetaJoin
      (output (.app (atC (kontB hp) c) v1) v2 N)
      (output c (.lam (.app probeSource probeSource)) N) := by
    have hc := contract_join hi (by decide : Closed (.app probeSource probeSource)) c N
    exact join_trans (join_symm hr2)
      (join_trans (join_symm hC2) (join_trans (join_symm hr1) (join_trans (join_symm hstart) hc)))
  have he : atC (kontB hp) c = kontB hp := subst_self _ 0 hBscope
  rw [he] at hfinish
  apply lemmaA_two_slots
    (blind_of_unsolvable (unsolvable_of_two_rigid (.var 0) (.var 1) hd1))
    (blind_of_unsolvable (unsolvable_of_two_rigid (.var 0) (.var 1) hd2))
  simpa [output, substDec, substDec_of_freeUnder _ 1 v1 hBscope,
    substDec_of_freeUnder _ 1 v2 hBscope, substDec_closed 1 v2 hv1, c, N] using hfinish

#print axioms closed_probe_return
#print axioms variable_rest_parser
#print axioms variable_rest_reader
#print axioms abs_dataflow
#print axioms app_second_dataflow

/-- Source-level rigid C1/C2, before insertion of the actual parser.
Their conversion versions suffice; the stated head reductions imply them.
A/F/B are terms in the fixed [c,p] frame, with B a function of x. -/
structure RigidControls (Q A F B : Term) : Prop where
  scopeA : FreeUnder 2 A
  scopeF : FreeUnder 2 F
  scopeB : FreeUnder 2 B
  abs : BetaJoin (run Q churchTrue (.var 2)) (run (.var 1) A (.var 2))
  app : BetaJoin (run Q churchFalse (.var 2)) (run (.var 1) F (.var 2))
  second : BetaJoin (output F (.var 2) (.var 3))
    (run (.var 1) (.app B (.var 2)) (.var 3))

theorem inst3_frame (P c t A : Term) (hP : Closed P) (hA : FreeUnder 2 A) :
    instN [c, P, t] 0 A = substDec 0 c (substDec 1 P A) := by
  simp only [instN]
  rw [substDec_of_freeUnder A 2 _ hA, shift_closed 1 0 hP, shift_zero]

theorem inst4_frame (P c x y A : Term) (hP : Closed P) (hA : FreeUnder 2 A) :
    instN [c, P, x, y] 0 A = substDec 0 c (substDec 1 P A) := by
  simp only [instN]
  rw [substDec_of_freeUnder A 3 _ (freeUnder_mono (by omega : 2 ≤ 3) hA),
    substDec_of_freeUnder A 2 _ hA, shift_closed 1 0 hP, shift_zero]

theorem inst3_vars (P c t : Term) (hP : Closed P) :
    instN [c, P, t] 0 (.var 1) = P ∧ instN [c, P, t] 0 (.var 2) = t := by
  constructor
  · simp [instN, substDec, shift_closed 1 0 hP, substDec_closed _ _ hP]
  · simp [instN, substDec, substDec_shift0, shift_zero]

theorem inst4_vars (P c x y : Term) (hP : Closed P) :
    instN [c, P, x, y] 0 (.var 1) = P ∧
    instN [c, P, x, y] 0 (.var 2) = x ∧ instN [c, P, x, y] 0 (.var 3) = y := by
  constructor
  · simp [instN, substDec, shift_closed 1 0 hP, substDec_closed _ _ hP]
  · constructor <;> simp [instN, substDec, substDec_shift0, shift_zero]

theorem rigid_abs_instance {A : Term} (hs : Sep T R Q)
    (hA : FreeUnder 2 A)
    (ha : BetaJoin (run Q churchTrue (.var 2)) (run (.var 1) A (.var 2))) (c r : Term) :
    BetaJoin (run (atC (next T R Q) c) churchTrue r)
      (run (parser T R Q) (atC (actual T R Q A) c) r) := by
  have h := join_inst [c, parser T R Q, r] 0 ha
  have hv := inst3_vars (parser T R Q) c r hs.closed
  simpa only [run, inst_app, inst3_frame _ _ _ Q hs.closed hs.next_scope,
    inst3_frame _ _ _ A hs.closed hA, inst_closed _ _ (by decide : Closed churchTrue),
    hv.1, hv.2, atC, next, actual] using h

theorem rigid_app_instance {A F B : Term} (hs : Sep T R Q)
    (hc : RigidControls Q A F B) (c r : Term) :
    BetaJoin (run (atC (next T R Q) c) churchFalse r)
      (run (parser T R Q) (atC (actual T R Q F) c) r) := by
  have h := join_inst [c, parser T R Q, r] 0 hc.app
  have hv := inst3_vars (parser T R Q) c r hs.closed
  simpa only [run, inst_app, inst3_frame _ _ _ Q hs.closed hs.next_scope,
    inst3_frame _ _ _ F hs.closed hc.scopeF, inst_closed _ _ (by decide : Closed churchFalse),
    hv.1, hv.2, atC, next, actual] using h

theorem rigid_second_instance {A F B : Term} (hs : Sep T R Q)
    (hc : RigidControls Q A F B) (c x y : Term) :
    BetaJoin (output (atC (actual T R Q F) c) x y)
      (run (parser T R Q) (.app (atC (actual T R Q B) c) x) y) := by
  have h := join_inst [c, parser T R Q, x, y] 0 hc.second
  have hv := inst4_vars (parser T R Q) c x y hs.closed
  simpa only [run, output, inst_app, inst4_frame _ _ _ _ F hs.closed hc.scopeF,
    inst4_frame _ _ _ _ B hs.closed hc.scopeB, hv.1, hv.2.1, hv.2.2, atC, actual] using h

/-- The exact rigid source C1/C2 hypotheses imply the actual control
interface used by all three derived laws. No rigid dataflow law is assumed. -/
def Protocol.of_rigid {A F B : Term} (hs : Sep T R Q) (hc : RigidControls Q A F B)
    (hz : ∀ c (bit : Bool) r, BetaJoin
      (.app (atC (reader T R Q) c) (pairT churchTrue (pairT (churchBit bit) r)))
      (run (atC (next T R Q) c) (churchBit bit) r)) : Protocol T R Q where
  A := A
  F := F
  B := B
  scopeA := hc.scopeA
  scopeF := hc.scopeF
  scopeB := hc.scopeB
  zero := hz
  controlA := rigid_abs_instance hs hc.scopeA hc.abs
  controlF := rigid_app_instance hs hc
  control2 := rigid_second_instance hs hc

#print axioms rigid_abs_instance
#print axioms rigid_second_instance
#print axioms Protocol.of_rigid

/-- The three derived actual-parser laws; no value identity, rest-free
constructor, rigid-j law, or rigid-p dataflow law is asserted. -/
structure ActualLaws (T R Q A B : Term) : Prop where
  variable_rest : ∀ n, ∃ X,
    Betas (.app (substDec 1 (next T R Q) R) (unary (n + 1) (.var 2)))
      (output (.var 0) X (.var 2))
  abs_rest : ∃ X, Betas (output (actual T R Q A) (.var 1) (.var 2))
    (output (.var 0) X (.var 2))
  app_second_rest : ∃ X,
    Betas (output (.app (actual T R Q B) (.var 1)) (.var 2) (.var 3))
      (output (.var 0) X (.var 3))

/-- End-to-end source theorem: literal assembly + its full contract,
actual zero handoff, and rigid source C1/C2 imply all three laws.
The public contract supplies the closed unsolvable probe return equation. -/
theorem derive_from_assembly {A F B : Term}
    (hs : Sep T R Q) (hi : IsSelfInterpreter (SelfintClass.assemble T R Q))
    (hc : RigidControls Q A F B)
    (hz : ∀ c (bit : Bool) r, BetaJoin
      (.app (atC (reader T R Q) c) (pairT churchTrue (pairT (churchBit bit) r)))
      (run (atC (next T R Q) c) (churchBit bit) r)) : ActualLaws T R Q A B := by
  let hp := Protocol.of_rigid hs hc hz
  exact ⟨variable_rest_reader hs hp.toLambdaProtocol hi, abs_dataflow hs hp.toLambdaProtocol hi,
    app_second_dataflow hs hp hi⟩

#print axioms derive_from_assembly

/-- The report's original head-reduction C1/C2 interface, stated literally
at rigid p,c,t,x,y, with fixed stream-independent source templates. -/
structure HeadControls (Q A F B : Term) : Prop where
  scopeA : FreeUnder 2 A
  scopeF : FreeUnder 2 F
  scopeB : FreeUnder 2 B
  abs : HeadReduces (run Q churchTrue (.var 2)) (run (.var 1) A (.var 2))
  app : HeadReduces (run Q churchFalse (.var 2)) (run (.var 1) F (.var 2))
  second : HeadReduces (output F (.var 2) (.var 3))
    (run (.var 1) (.app B (.var 2)) (.var 3))

theorem head_reduces_join {t u : Term} (h : HeadReduces t u) : BetaJoin t u := by
  obtain ⟨n, hn⟩ := h
  exact join_of_betas (headReds_betas' (headSteps_of_headReds hn))

theorem HeadControls.rigid {A F B : Term} (hc : HeadControls Q A F B) :
    RigidControls Q A F B :=
  ⟨hc.scopeA, hc.scopeF, hc.scopeB, head_reduces_join hc.abs,
    head_reduces_join hc.app, head_reduces_join hc.second⟩

/-- Literal Sep + public contract + head C1/C2 + beta-reducing actual Z.
RET/VAL's semantic equations are derived, not assumed. -/
theorem derive_from_source_hypotheses {A F B : Term}
    (hs : Sep T R Q) (hi : IsSelfInterpreter (SelfintClass.assemble T R Q))
    (hc : HeadControls Q A F B)
    (hz : ∀ c (bit : Bool) r, Betas
      (.app (atC (reader T R Q) c) (pairT churchTrue (pairT (churchBit bit) r)))
      (run (atC (next T R Q) c) (churchBit bit) r)) : ActualLaws T R Q A B :=
  derive_from_assembly hs hi hc.rigid (fun c bit r => join_of_betas (hz c bit r))

#print axioms Sep.unfold
#print axioms actual_reader_plug
#print axioms iterA_scope
#print axioms parse_prefix
#print axioms iterA_probe
#print axioms HeadControls.rigid
#print axioms derive_from_source_hypotheses

/-- The exact return/value equation required by the probe method. This
is beta-conversion to a closed unsolvable returned value, uniformly in c,N;
it makes no claim about the first closure encountered by a machine. -/
def SemanticRETVAL (P : Term) : Prop :=
  ∀ c N, ∃ v, Closed v ∧ ¬ Solvable (.app (.app v (.var 0)) (.var 1)) ∧
    BetaJoin (run P c (quote probeSource N)) (output c v N)

theorem semantic_retval_from_contract {P : Term} (hi : IsSelfInterpreter P) :
    SemanticRETVAL P := closed_probe_return hi

#print axioms semantic_retval_from_contract

/-- ABS-only source hypotheses: neither APP control nor C2 is required
for the every-n variable-rest induction or the ABS rest law. -/
theorem derive_abs_from_source {A : Term}
    (hs : Sep T R Q) (hi : IsSelfInterpreter (SelfintClass.assemble T R Q))
    (hA : FreeUnder 2 A)
    (ha : HeadReduces (run Q churchTrue (.var 2)) (run (.var 1) A (.var 2)))
    (hz : ∀ c (bit : Bool) r, Betas
      (.app (atC (reader T R Q) c) (pairT churchTrue (pairT (churchBit bit) r)))
      (run (atC (next T R Q) c) (churchBit bit) r)) :
    (∀ n, ∃ X, Betas (.app (substDec 1 (next T R Q) R) (unary (n + 1) (.var 2)))
      (output (.var 0) X (.var 2))) ∧
    (∃ X, Betas (output (actual T R Q A) (.var 1) (.var 2))
      (output (.var 0) X (.var 2))) := by
  let hp : LambdaProtocol T R Q := {
    A := A
    scopeA := hA
    zero := fun c bit r => join_of_betas (hz c bit r)
    controlA := rigid_abs_instance hs hA (head_reduces_join ha) }
  exact ⟨variable_rest_reader hs hp hi, abs_dataflow hs hp hi⟩

#print axioms derive_abs_from_source
end Blc.ProbeInterface
