/-
A strictness interpretation for nonlinear pre-stream computation. A good
term preserves goodness and preserves a rigid argument; a rigid-headed
computation remains rigid after arbitrary operands. Lambda introduction
checks both interpretations of its binder. Captured older heads and
nonlinear self-application are permitted. The interpretation is preserved
by every beta step.
-/
import Blc.SelfintRootLetBudgetDelay
namespace Blc.SelfintRound6ReaderStrict
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

inductive Flavor where
  | good
  | rigid
  deriving DecidableEq
abbrev Env := Nat → Flavor

def push (k : Flavor) (e : Env) : Env
  | 0 => k
  | n+1 => e n

/-- A good function preserves either interpreted argument class. A rigid
    function requires no interpretation of its argument at all. -/
inductive Typed : Env → Term → Flavor → Prop where
  | var (e : Env) (n : Nat) : Typed e (.var n) (e n)
  | app {e f a k} : Typed e f .good → Typed e a k → Typed e (.app f a) k
  | rigidApp {e f a} : Typed e f .rigid → Typed e (.app f a) .rigid
  | lam {e b} : Typed (push .good e) b .good → Typed (push .rigid e) b .rigid →
      Typed e (.lam b) .good

def bumped (d c n : Nat) := if c≤n then n+d else n

theorem typed_shift {e : Env} {t : Term} {k : Flavor} (h : Typed e t k)
    (d c : Nat) (e' : Env) (he : ∀ n, e' (bumped d c n)=e n) :
    Typed e' (shift d c t) k := by
  induction h generalizing c e' with
  | var e n =>
    have hv := Typed.var e' (bumped d c n)
    rw [he n] at hv
    by_cases hn : c≤n <;> simpa [shift,bumped,hn] using hv
  | app hf ha ihf iha => exact .app (ihf c e' he) (iha c e' he)
  | rigidApp hf ih => exact .rigidApp (ih c e' he)
  | @lam e b hg hr ihg ihr =>
    apply Typed.lam
    · apply ihg (c+1) (push .good e')
      intro n
      cases n with
      | zero => simp [bumped,push]
      | succ n =>
        by_cases hn : c≤n
        · have hn' : c+1≤n+1 := by omega
          simpa [bumped,push,hn,hn',show n+1+d=(n+d)+1 by omega] using he n
        · have hn' : ¬ c+1≤n+1 := by omega
          simpa [bumped,push,hn,hn'] using he n
    · apply ihr (c+1) (push .rigid e')
      intro n
      cases n with
      | zero => simp [bumped,push]
      | succ n =>
        by_cases hn : c≤n
        · have hn' : c+1≤n+1 := by omega
          simpa [bumped,push,hn,hn',show n+1+d=(n+d)+1 by omega] using he n
        · have hn' : ¬ c+1≤n+1 := by omega
          simpa [bumped,push,hn,hn'] using he n

theorem typed_shift_one {e : Env} {t : Term} {k : Flavor} (h : Typed e t k)
    (l : Flavor) : Typed (push l e) (shift 1 0 t) k :=
  typed_shift h 1 0 (push l e) (by intro n; simp [bumped,push])

/-- Removing the substituted index from an environment. -/
def cutEnv (e : Env) (j : Nat) : Env := fun n => if n<j then e n else e (n+1)

theorem cutEnv_push (e : Env) (j : Nat) (k : Flavor) :
    cutEnv (push k e) (j+1)=push k (cutEnv e j) := by
  funext n
  cases n <;> simp [cutEnv,push]

theorem typed_subst {e : Env} {t s : Term} {k : Flavor} (h : Typed e t k)
    (j : Nat) (hs : Typed (cutEnv e j) s (e j)) :
    Typed (cutEnv e j) (substDec j s t) k := by
  induction h generalizing j s with
  | var e n =>
    simp only [substDec]
    split
    · rename_i hn; subst n; exact hs
    · rename_i hn
      split
      · rename_i hgt
        have he : cutEnv e j (n-1)=e n := by
          simp only [cutEnv,show ¬ n-1<j by omega,if_false]
          congr 1; omega
        simpa only [he] using Typed.var (cutEnv e j) (n-1)
      · rename_i hgt
        have he : cutEnv e j n=e n := by simp [cutEnv,show n<j by omega]
        simpa only [he] using Typed.var (cutEnv e j) n
  | app hf ha ihf iha => exact .app (ihf j hs) (iha j hs)
  | rigidApp hf ih => exact .rigidApp (ih j hs)
  | @lam e b hg hr ihg ihr =>
    simp only [substDec]
    apply Typed.lam
    · simpa only [cutEnv_push] using
        ihg (j+1) (s:=shift 1 0 s) (by
          simpa only [cutEnv_push,push] using typed_shift_one hs .good)
    · simpa only [cutEnv_push] using
        ihr (j+1) (s:=shift 1 0 s) (by
          simpa only [cutEnv_push,push] using typed_shift_one hs .rigid)

theorem typed_contract {e : Env} {b a : Term} {k : Flavor}
    (hb : Typed (push k e) b k) (ha : Typed e a k) : Typed e (contract b a) k := by
  have he : cutEnv (push k e) 0=e := by funext n; simp [cutEnv,push]
  simpa only [contract,he] using typed_subst hb 0 (by simpa only [he,push] using ha)

theorem typed_beta {e : Env} {t u : Term} {k : Flavor}
    (hb : Beta t u) (ht : Typed e t k) : Typed e u k := by
  induction hb generalizing e k with
  | beta b a =>
    cases ht with
    | app hf ha =>
      cases hf with
      | lam hg hr => cases k with
        | good => exact typed_contract hg ha
        | rigid => exact typed_contract hr ha
    | rigidApp hf => cases hf
  | lam hb ih => cases ht with | lam hg hr => exact .lam (ih hg) (ih hr)
  | appL a hb ih => cases ht with
    | app hf ha => exact .app (ih hf) ha
    | rigidApp hf => exact .rigidApp (ih hf)
  | appR f hb ih => cases ht with
    | app hf ha => exact .app hf (ih ha)
    | rigidApp hf => exact .rigidApp hf

theorem typed_betas {e : Env} {t u : Term} {k : Flavor}
    (hb : Betas t u) (ht : Typed e t k) : Typed e u k := by
  induction hb with
  | refl => exact ht
  | head hb hr ih => exact ih (typed_beta hb ht)

def rigidEnv : Env := fun _ => .rigid

/-- A term interpreted rigid cannot expose the reader's stream lambda. -/
theorem rigid_typed_not_reader {e : Env} {t : Term}
    (ht : Typed e t .rigid) : ¬ Reader t := by
  intro hr
  obtain ⟨n,hcn⟩ := hasNormalForm_count ⟨zeroOut,hr.zero_red,zeroOut_normal⟩
  obtain ⟨m,hm,hcm⟩ := count_fn n hcn
  obtain ⟨u,hu,hs⟩ := count_endpoint hcm
  have htu := typed_betas hu ht
  have hr' := reader_betas hr hu
  cases u with
  | var v => exact reader_not_rigid hr' (.var v)
  | app f a => exact reader_not_rigid hr' (weakStep_none_rigid hs (fun h => h))
  | lam b => cases htu

/-- In the all-rigid environment, a good term has no shallow free leaves.
    In particular a shallow source j forces the rigid interpretation. -/
theorem typed_good_shallow_zero {e : Env} {t : Term} {k : Flavor}
    (ht : Typed e t k) (hk : k=.good) (he : e=rigidEnv) (j : Nat) :
    shallowOcc j t=0 := by
  induction ht with
  | var e n => simp only [he,rigidEnv] at hk; cases hk
  | app hf ha ihf iha => simp only [shallowOcc,ihf rfl he,iha hk he,Nat.zero_add]
  | rigidApp hf ih => cases hk
  | lam hg hr ihg ihr => rfl

theorem good_shallow_zero {t : Term} (ht : Typed rigidEnv t .good) (j : Nat) :
    shallowOcc j t=0 := typed_good_shallow_zero ht rfl rfl j

theorem typed_depth_zero_not_reader {t : Term} {k : Flavor}
    (ht : Typed rigidEnv t k) (hd : depth t=0) : ¬ Reader t := by
  intro hr
  cases k with
  | rigid => exact rigid_typed_not_reader ht hr
  | good =>
    have hz := good_shallow_zero ht 1
    have he := SelfintRootLetRigidPrefix.occ_eq_shallow_of_depth_zero t 1 hd
    have hj := reader_j hr
    omega


/-- Closed good payloads retain their interpretation beneath new binders. -/
theorem closed_typed_push {e : Env} {p : Term} {k : Flavor}
    (hp : Closed p) (ht : Typed e p k) (l : Flavor) : Typed (push l e) p k := by
  simpa only [shift_closed 1 0 hp] using typed_shift_one ht l

theorem rigid_typed {t : Term} (h : Rigid t) : Typed rigidEnv t .rigid := by
  induction h with
  | var n => exact .var _ _
  | app a h ih => exact .rigidApp ih

theorem typed_rigid_spine {e : Env} {t : Term} (h : Typed e t .rigid)
    (as : List Term) : Typed e (spine t as) .rigid := by
  induction as generalizing t with
  | nil => exact h
  | cons a as ih => exact ih (.rigidApp h)

theorem good_prefix_not_reader {t a : Term} (ht : Typed rigidEnv t .good)
    (ha : Rigid a) (cs : List Term) : ¬ Reader (spine t (a::cs)) :=
  rigid_typed_not_reader (typed_rigid_spine (.app ht (rigid_typed ha)) cs)

def delta : Term := .lam (.app (.var 0) (.var 0))

theorem delta_typed (e : Env) : Typed e delta .good :=
  .lam (.app (.var _ 0) (.var _ 0)) (.rigidApp (.var _ 0))

/-- Capturing an older good function is safe when the current binder
    remains the rigid head of the operand supplied to that function. -/
theorem captureHelper_typed {e : Env} {p : Term} (hp : Closed p)
    (ht : Typed e p .good) :
    Typed e (SelfintRootLetBudgetDelay.captureHelper p) .good := by
  have hp' := closed_typed_push hp (closed_typed_push hp ht .good) .good
  apply Typed.lam
  · apply Typed.app (.var _ 0)
    apply Typed.lam
    · exact .app (.var _ 1) (.app (.app (.var _ 0) hp') (.var _ 0))
    · exact .app (.var _ 1) (.rigidApp (.rigidApp (.var _ 0)))
  · exact .rigidApp (.var _ 0)

/-- The full captured-head diagonal family fails after any rigid pending
    operand, for every closed good P and arbitrary later operands. There
    is no source-size or reduction-length bound. -/
theorem capture_diagonal_not_reader {p a : Term} (hp : Closed p)
    (ht : Typed rigidEnv p .good) (ha : Rigid a) (cs : List Term) :
    ¬ Reader (spine (.app delta (SelfintRootLetBudgetDelay.captureHelper p)) (a::cs)) :=
  good_prefix_not_reader (.app (delta_typed _) (captureHelper_typed hp ht)) ha cs

theorem captureRoot_not_reader {p : Term} (hp : Closed p)
    (ht : Typed rigidEnv p .good) : ¬ Reader (SelfintRootLetBudgetDelay.captureRoot p) :=
  capture_diagonal_not_reader hp ht (.var 0) [.var 1]

theorem identity_typed (e : Env) : Typed e (.lam (.var 0)) .good :=
  .lam (.var _ 0) (.var _ 0)

/-- These are the exact 41- and 45-weight examples that escaped every
    syntactic delay cap. Both are now excluded by the same symbolic rule. -/
theorem capture_examples_not_reader :
    ¬ Reader (SelfintRootLetBudgetDelay.captureRoot (.lam (.var 0))) ∧
    ¬ Reader (SelfintRootLetBudgetDelay.captureRoot delta) :=
  ⟨captureRoot_not_reader (by decide) (identity_typed _),
   captureRoot_not_reader (by decide) (delta_typed _)⟩


/- The remaining tiny closed payloads are not strict: they erase operands.
   Their captured diagonals are settled directly, without trusting a
   bounded reducer failure. -/
def capture (p x : Term) : Term := .lam (.app (shift 1 0 x)
  (.app (.app (.var 0) p) (.var 0)))

theorem capture_apply {p : Term} (hp : Closed p) (x y : Term) :
    Beta (.app (capture p x) y) (.app x (.app (.app y p) y)) := by
  simpa only [capture,contract,substDec,substDec_shift,substDec_closed _ _ hp,if_true]
    using Beta.beta (.app (shift 1 0 x) (.app (.app (.var 0) p) (.var 0))) y

theorem captureHelper_step {p : Term} (hp : Closed p) (x : Term) :
    weakStep (.app (SelfintRootLetBudgetDelay.captureHelper p) x)=
      some (.app x (capture p x)) := by
  simp [SelfintRootLetBudgetDelay.captureHelper,capture,weakStep,contract,substDec,
    substDec_closed _ _ hp]

def tower (p : Term) : Nat → Term
  | 0 => SelfintRootLetBudgetDelay.captureHelper p
  | n+1 => capture p (tower p n)

def ident : Term := .lam (.var 0)
def falsePayload : Term := .lam (.lam (.var 0))
def threePayload : Term := .lam (.lam (.lam (.var 0)))
def truePayload : Term := .lam (.lam (.var 1))

theorem false_cube : Betas (.app (.app falsePayload falsePayload) falsePayload) falsePayload :=
  headSteps_beta_star (by decide :
    headSteps 2 (.app (.app falsePayload falsePayload) falsePayload)=some falsePayload)

theorem false_tower_on_false (n : Nat) :
    Betas (.app (tower falsePayload n) falsePayload) ident := by
  induction n with
  | zero => exact headSteps_beta_star (by decide :
      headSteps 2 (.app (tower falsePayload 0) falsePayload)=some ident)
  | succ n ih =>
    exact .head (capture_apply (by decide) _ _)
      (betas_trans (betas_appR _ false_cube) ih)

theorem tower_pair {p : Term} (hp : Closed p) (m : Nat)
    (hm : Betas (.app (tower p m) p) ident) (n : Nat) :
    Betas (.app (tower p n) (tower p m))
      (.app (SelfintRootLetBudgetDelay.captureHelper p) (tower p m)) := by
  induction n with
  | zero => exact .refl _
  | succ n ih =>
    apply Betas.head (capture_apply hp _ _)
    apply betas_trans (betas_appR (tower p n) (betas_appL (tower p m) hm))
    apply Betas.head (.appR (tower p n) (Beta.beta (.var 0) (tower p m)))
    exact ih

theorem false_diagonal_no_count (n : Nat) :
    ¬ Count (.app (tower falsePayload 0) (tower falsePayload 0)) n := by
  let state : Nat → Term := fun k => .app (tower falsePayload 0) (tower falsePayload k)
  apply SelfintRootLetEmbedding.advancing_no_count state _ n 0
  intro k
  refine ⟨1,[],by decide,?_⟩
  exact .head (captureHelper_step (by decide) _)
    (SelfintRootLetEmbedding.Interleaved.of_betas
      (tower_pair (by decide) (k+1) (false_tower_on_false (k+1)) k))

theorem false_capture_diagonal_not_reader (cs : List Term) :
    ¬ Reader (spine (.app delta (SelfintRootLetBudgetDelay.captureHelper falsePayload)) cs) := by
  intro hr
  have hr' := hr.beta (SelfintSourceCost.spine_beta (Beta.beta _ _) cs)
  exact SelfintRootLetEmbedding.no_reader_of_no_count _ false_diagonal_no_count cs hr'

/- At the third payload, every tower of height at least two consumes the
   payload to identity. The same advancing argument starts at height one. -/
theorem three_cube : Betas (.app (.app threePayload threePayload) threePayload) ident :=
  headSteps_beta_star (by decide :
    headSteps 2 (.app (.app threePayload threePayload) threePayload)=some ident)

theorem three_tower_on_false (n : Nat) :
    Betas (.app (tower threePayload n) falsePayload) ident := by
  induction n with
  | zero => exact headSteps_beta_star (by decide :
      headSteps 2 (.app (tower threePayload 0) falsePayload)=some ident)
  | succ n ih =>
    have hc : Betas (.app (.app falsePayload threePayload) falsePayload) falsePayload :=
      headSteps_beta_star (by decide :
        headSteps 2 (.app (.app falsePayload threePayload) falsePayload)=some falsePayload)
    exact .head (capture_apply (by decide) _ _) (betas_trans (betas_appR _ hc) ih)

theorem three_tower_on_identity (n : Nat) :
    Betas (.app (tower threePayload (n+1)) ident) ident := by
  have hc : Betas (.app (.app ident threePayload) ident) falsePayload :=
    headSteps_beta_star (by decide :
      headSteps 2 (.app (.app ident threePayload) ident)=some falsePayload)
  exact .head (capture_apply (by decide) _ _)
    (betas_trans (betas_appR _ hc) (three_tower_on_false n))

theorem three_tower_on_three (n : Nat) :
    Betas (.app (tower threePayload (n+2)) threePayload) ident :=
  .head (capture_apply (by decide) _ _)
    (betas_trans (betas_appR _ three_cube) (three_tower_on_identity n))

theorem three_diagonal_no_count (n : Nat) :
    ¬ Count (.app (tower threePayload 0) (tower threePayload 0)) n := by
  let state : Nat → Term := fun k => .app (tower threePayload 0) (tower threePayload (k+1))
  have hstate : ∀ n k, ¬ Count (state k) n := by
    apply SelfintRootLetEmbedding.advancing_no_count state
    intro k
    refine ⟨1,[],by decide,?_⟩
    exact .head (captureHelper_step (by decide) _)
      (SelfintRootLetEmbedding.Interleaved.of_betas
        (tower_pair (by decide) (k+2) (three_tower_on_three k) (k+1)))
  intro hc
  obtain ⟨m,hm,hcm⟩ := head_decreases hc (captureHelper_step (by decide) (tower threePayload 0))
  exact hstate m 0 hcm

theorem three_capture_diagonal_not_reader (cs : List Term) :
    ¬ Reader (spine (.app delta (SelfintRootLetBudgetDelay.captureHelper threePayload)) cs) := by
  intro hr
  have hr' := hr.beta (SelfintSourceCost.spine_beta (Beta.beta _ _) cs)
  exact SelfintRootLetEmbedding.no_reader_of_no_count _ three_diagonal_no_count cs hr'

theorem true_captureRoot_reduces :
    Betas (SelfintRootLetBudgetDelay.captureRoot truePayload) (.lam (.var 2)) :=
  normalSteps_sound (by decide : normalSteps 43
    (SelfintRootLetBudgetDelay.captureRoot truePayload)=some (.lam (.var 2)))



theorem true_captureRoot_not_reader :
    ¬ Reader (SelfintRootLetBudgetDelay.captureRoot truePayload) := by
  intro hr
  have hr' := reader_betas hr true_captureRoot_reduces
  have hz : Betas (.app (.lam (.var 2)) Z) (.var 1) :=
    .head (Beta.beta _ _) (.refl _)
  have hn : NormalForm (.var 1) := fun _ h => by cases h
  have he := normalForm_unique hz hr'.zero_red hn zeroOut_normal
  cases he

/-- Structural exhaustion at eight bits: five closed payloads, obtained
    from the wire recursion rather than from a source enumerator. -/
theorem closed_eight (p : Term) (hp : Closed p) (hw : wire p≤8) :
    p=ident ∨ p=falsePayload ∨ p=truePayload ∨ p=threePayload ∨ p=delta := by
  cases p with
  | var n => change n<0 at hp; omega
  | app f a =>
    have hf := SelfintClosedSpecializer.closed_four f hp.1
    have ha := SelfintClosedSpecializer.closed_four a hp.2
    simp only [wire_app] at hw; omega
  | lam b =>
    cases b with
    | var n =>
      have he : n=0 := by change n<1 at hp; omega
      subst n; exact .inl rfl
    | app f a =>
      have hf := wire_positive f
      have ha := wire_positive a
      simp only [wire_lam,wire_app] at hw
      have hef := SelfintHelperPair.wire_two f (by omega)
      have hea := SelfintHelperPair.wire_two a (by omega)
      subst f; subst a; exact .inr (.inr (.inr (.inr rfl)))
    | lam b =>
      cases b with
      | var n =>
        have he : n=0 ∨ n=1 := by change n<2 at hp; omega
        rcases he with rfl | rfl
        · exact .inr (.inl rfl)
        · exact .inr (.inr (.inl rfl))
      | lam b =>
        have he := SelfintHelperPair.wire_two b (by simp only [wire_lam] at hw; omega)
        subst b; exact .inr (.inr (.inr (.inl rfl)))
      | app f a =>
        have hf := wire_positive f
        have ha := wire_positive a
        simp only [wire_lam,wire_app] at hw; omega

/-- Every closed-payload member of the previous captured-head budget
    escape family at weight at most 45 fails the rigid reader laws. -/
theorem captureRoot_budget_not_reader {p : Term} (hp : Closed p)
    (hw : weight 0 (SelfintRootLetBudgetDelay.captureRoot p)≤45) :
    ¬ Reader (SelfintRootLetBudgetDelay.captureRoot p) := by
  have he := SelfintRootLetBudgetDelay.captureRoot_weight hp
  have hpw : wire p≤8 := by omega
  rcases closed_eight p hp hpw with rfl | rfl | rfl | rfl | rfl
  · exact captureRoot_not_reader (by decide) (identity_typed _)
  · exact false_capture_diagonal_not_reader [.var 0,.var 1]
  · exact true_captureRoot_not_reader
  · exact three_capture_diagonal_not_reader [.var 0,.var 1]
  · exact captureRoot_not_reader (by decide) (delta_typed _)

#print axioms typed_beta
#print axioms typed_depth_zero_not_reader
#print axioms capture_diagonal_not_reader
#print axioms capture_examples_not_reader
#print axioms false_diagonal_no_count
#print axioms three_diagonal_no_count
#print axioms captureRoot_budget_not_reader
end Blc.SelfintRound6ReaderStrict
