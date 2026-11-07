/-
A two-argument rigidity interpretation for pre-stream computation.
Application algebras of binary applicative helpers are closed under this
interpretation. Two rigid pending operands force a rigid result before the
stream, regardless of self-application, sharing, or reduction length.

The exact syntactic corollary covers lambda-free root-let bodies and
lambda-free bodies of two-binder helpers with both binders live. It is a
three-lambda slice of the pending cells, not their full h=2 envelope:
h records leading lambdas and does not exclude further helper subtrees.
-/
import Blc.SelfintRound6ReaderShallow
namespace Blc.SelfintRound6ReaderBinary
open Term SelfintClass SelfintLowerBound SelfintWireCost SelfintFloor
open SelfintSourceCost SelfintLocalCost SelfintDispatchAudit SelfintWidenHoist SelfintControl
open SelfintFlatMinimum SelfintRootFlat SelfintSourceFront SelfintNeededHead
open SelfintLambdaSink SelfintNestedLets WeakHeadClock
open SelfintRootLetPowers (reader_betas)
open SelfintRootLetOrbit (count_fn count_spine_fn)
open SelfintRootLetForcing (count_endpoint)
set_option maxRecDepth 10000
set_option maxHeartbeats 3000000

inductive Flavor where
  | rigid
  | pending
  | clear
  deriving DecidableEq

def rank : Flavor → Nat
  | .rigid => 0
  | .pending => 1
  | .clear => 2

def flow : Flavor → Flavor → Flavor
  | .rigid, _ => .rigid
  | .pending, .rigid => .rigid
  | .pending, _ => .pending
  | .clear, .rigid => .pending
  | .clear, k => k

theorem flow_mono_left {a b : Flavor} (h : rank a≤rank b) (c : Flavor) :
    rank (flow a c)≤rank (flow b c) := by
  cases a <;> cases b <;> cases c <;> simp_all [rank,flow]

theorem rank_clear (k : Flavor) : rank k≤rank .clear := by cases k <;> decide

theorem nonrigid_up {k l : Flavor} (hk : k≠.rigid) (h : rank k≤rank l) : l≠.rigid := by
  cases k <;> cases l <;> simp_all [rank]

abbrev Env := Nat → Flavor

def push (k : Flavor) (e : Env) : Env
  | 0 => k
  | n+1 => e n

/-- Grades are upper bounds. Lambda introduction checks all three input
    grades; rigid grade has no lambda introduction rule. -/
inductive Typed : Env → Term → Flavor → Prop where
  | var (e : Env) (n : Nat) {k : Flavor} : rank (e n)≤rank k → Typed e (.var n) k
  | app {e f a kf ka k} : Typed e f kf → Typed e a ka →
      rank (flow kf ka)≤rank k → Typed e (.app f a) k
  | rigidApp {e f a k} : Typed e f .rigid → Typed e (.app f a) k
  | lam {e b k} : k≠.rigid → (∀ a, Typed (push a e) b (flow k a)) → Typed e (.lam b) k

theorem Typed.weaken {e : Env} {t : Term} {k : Flavor} (ht : Typed e t k)
    (l : Flavor) (hl : rank k≤rank l) : Typed e t l := by
  induction ht generalizing l with
  | var e n hk => exact .var e n (Nat.le_trans hk hl)
  | app hf ha hk ihf iha => exact .app hf ha (Nat.le_trans hk hl)
  | rigidApp hf ih => exact .rigidApp hf
  | lam hk hb ih =>
    exact .lam (nonrigid_up hk hl) (fun a => ih a _ (flow_mono_left hl a))

def bumped (d c n : Nat) := if c≤n then n+d else n

theorem typed_shift {e : Env} {t : Term} {k : Flavor} (h : Typed e t k)
    (d c : Nat) (e' : Env) (he : ∀ n, e' (bumped d c n)=e n) :
    Typed e' (shift d c t) k := by
  induction h generalizing c e' with
  | var e n hk =>
    have hv := Typed.var e' (bumped d c n) (k:=_) (by rw [he n]; exact hk)
    by_cases hn : c≤n <;> simpa [shift,bumped,hn] using hv
  | app hf ha hk ihf iha => exact .app (ihf c e' he) (iha c e' he) hk
  | rigidApp hf ih => exact .rigidApp (ih c e' he)
  | @lam e b k hk hb ih =>
    apply Typed.lam hk
    intro a
    apply ih a (c+1) (push a e')
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

def cutEnv (e : Env) (j : Nat) : Env := fun n => if n<j then e n else e (n+1)

theorem cutEnv_push (e : Env) (j : Nat) (k : Flavor) :
    cutEnv (push k e) (j+1)=push k (cutEnv e j) := by
  funext n
  cases n <;> simp [cutEnv,push]

theorem typed_subst {e : Env} {t s : Term} {k : Flavor} (h : Typed e t k)
    (j : Nat) (hs : Typed (cutEnv e j) s (e j)) :
    Typed (cutEnv e j) (substDec j s t) k := by
  induction h generalizing j s with
  | var e n hk =>
    simp only [substDec]
    split
    · rename_i hn; subst n; exact hs.weaken _ hk
    · rename_i hn
      split
      · rename_i hgt
        apply Typed.var
        have he : cutEnv e j (n-1)=e n := by
          simp only [cutEnv,show ¬ n-1<j by omega,if_false]
          congr 1; omega
        simpa only [he] using hk
      · rename_i hgt
        apply Typed.var
        have he : cutEnv e j n=e n := by simp [cutEnv,show n<j by omega]
        simpa only [he] using hk
  | app hf ha hk ihf iha => exact .app (ihf j hs) (iha j hs) hk
  | rigidApp hf ih => exact .rigidApp (ih j hs)
  | @lam e b k hk hb ih =>
    simp only [substDec]
    apply Typed.lam hk
    intro a
    simpa only [cutEnv_push] using
      ih a (j+1) (s:=shift 1 0 s) (by
        simpa only [cutEnv_push,push] using typed_shift_one hs a)

theorem typed_contract {e : Env} {b a : Term} {k l : Flavor}
    (hb : Typed (push k e) b l) (ha : Typed e a k) : Typed e (contract b a) l := by
  have he : cutEnv (push k e) 0=e := by funext n; simp [cutEnv,push]
  simpa only [contract,he] using typed_subst hb 0 (by simpa only [he,push] using ha)

theorem typed_beta {e : Env} {t u : Term} {k : Flavor}
    (hb : Beta t u) (ht : Typed e t k) : Typed e u k := by
  induction hb generalizing e k with
  | beta b a =>
    cases ht with
    | app hf ha hk =>
      cases hf with
      | lam hn hb => exact (typed_contract (hb _) ha).weaken _ hk
    | rigidApp hf => cases hf with | lam hn hb => exact (hn rfl).elim
  | lam hb ih => cases ht with | lam hk ht => exact .lam hk (fun a => ih (ht a))
  | appL a hb ih => cases ht with
    | app hf ha hk => exact .app (ih hf) ha hk
    | rigidApp hf => exact .rigidApp (ih hf)
  | appR f hb ih => cases ht with
    | app hf ha hk => exact .app hf (ih ha) hk
    | rigidApp hf => exact .rigidApp hf

theorem typed_betas {e : Env} {t u : Term} {k : Flavor}
    (hb : Betas t u) (ht : Typed e t k) : Typed e u k := by
  induction hb with
  | refl => exact ht
  | head hb hr ih => exact ih (typed_beta hb ht)

/-- A rigid grade cannot expose a stream lambda. -/
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
  | lam b => cases htu with | lam hn hb => exact hn rfl

def rigidEnv : Env := fun _ => .rigid

theorem rigid_typed {t : Term} (h : Rigid t) : Typed rigidEnv t .rigid := by
  induction h with
  | var n => exact .var _ _ (by simp [rigidEnv])
  | app a h ih => exact .rigidApp ih

theorem rigid_spine {e : Env} {t : Term} (ht : Typed e t .rigid)
    (as : List Term) : Typed e (spine t as) .rigid := by
  induction as generalizing t with
  | nil => exact ht
  | cons a as ih => exact ih (.rigidApp ht)

theorem two_rigid_not_reader {t a b : Term} (ht : Typed rigidEnv t .clear)
    (ha : Rigid a) (hb : Rigid b) (cs : List Term) :
    ¬ Reader (spine t (a::b::cs)) := by
  have hfirst : Typed rigidEnv (.app t a) .pending := .app ht (rigid_typed ha) (by decide)
  have hsecond : Typed rigidEnv (.app (.app t a) b) .rigid :=
    .app hfirst (rigid_typed hb) (by decide)
  exact rigid_typed_not_reader (rigid_spine hsecond cs)


/-- Every applicative source can be given the largest grade. -/
theorem flat_clear (t : Term) (h : lamCount t=0) (e : Env) : Typed e t .clear := by
  induction t with
  | var n => exact .var _ _ (rank_clear _)
  | lam b ih => simp [lamCount] at h
  | app f a ihf iha =>
    have hh : lamCount f+lamCount a=0 := h
    exact .app (ihf (by omega)) (iha (by omega)) (by decide)

/-- A flat source never improves the largest grade of its leaves. -/
theorem flat_pending_bound (t : Term) (h : lamCount t=0) (e : Env)
    (he : ∀ n, rank (e n)≤rank .pending) : Typed e t .pending := by
  induction t with
  | var n => exact .var _ _ (he n)
  | lam b ih => simp [lamCount] at h
  | app f a ihf iha =>
    have hh : lamCount f+lamCount a=0 := h
    exact .app (ihf (by omega)) (iha (by omega)) (by decide)

/-- One pending leaf prevents a flat source from acquiring clear grade,
    even when clear leaves surround it and it is passed as an argument. -/
theorem flat_pending_occ (t : Term) (h : lamCount t=0) (e : Env)
    (j : Nat) (he : rank (e j)≤rank .pending) (ho : 0<occ j t) :
    Typed e t .pending := by
  induction t with
  | var n =>
    have hn : n=j := by by_cases hn : n=j <;> simp_all [occ]
    subst n
    exact .var _ _ he
  | lam b ih => simp [lamCount] at h
  | app f a ihf iha =>
    have hh : lamCount f+lamCount a=0 := h
    have hf : lamCount f=0 := by omega
    have ha : lamCount a=0 := by omega
    by_cases hof : 0<occ j f
    · exact .app (ihf hf hof) (flat_clear a ha e) (by decide)
    · have hoa : 0<occ j a := by change 0<occ j f+occ j a at ho; omega
      exact .app (flat_clear f hf e) (iha ha hoa) (by decide)

/-- A rigid occurrence makes a flat source rigid once no leaf is clear. -/
theorem flat_rigid_occ (t : Term) (h : lamCount t=0) (e : Env)
    (he : ∀ n, rank (e n)≤rank .pending)
    (j : Nat) (hj : e j=.rigid) (ho : 0<occ j t) : Typed e t .rigid := by
  induction t with
  | var n =>
    have hn : n=j := by by_cases hn : n=j <;> simp_all [occ]
    subst n
    exact .var _ _ (by rw [hj]; exact Nat.le_refl _)
  | lam b ih => simp [lamCount] at h
  | app f a ihf iha =>
    have hh : lamCount f+lamCount a=0 := h
    have hf : lamCount f=0 := by omega
    have ha : lamCount a=0 := by omega
    by_cases hof : 0<occ j f
    · exact .rigidApp (ihf hf hof)
    · have hoa : 0<occ j a := by change 0<occ j f+occ j a at ho; omega
      exact .app (flat_pending_bound f hf e he) (iha ha hoa) (by decide)

theorem push_pending_bound {e : Env} {k : Flavor}
    (he : ∀ n, rank (e n)≤rank .pending) (hk : rank k≤rank .pending) :
    ∀ n, rank (push k e n)≤rank .pending := by
  intro n; cases n with
  | zero => exact hk
  | succ n => exact he n

theorem rigid_pending_bound : ∀ n, rank (rigidEnv n)≤rank .pending := by
  intro n; simp [rigidEnv,rank]

/-- A one-binder applicative helper is clear, including erasing bodies
    whose only possible result is an ambient rigid expression. -/
theorem unary_helper_clear {b : Term} (hb : lamCount b=0) :
    Typed rigidEnv (.lam b) .clear := by
  apply Typed.lam (by decide)
  intro a
  cases a with
  | clear => exact flat_clear b hb _
  | pending => exact flat_pending_bound b hb _ (push_pending_bound rigid_pending_bound (by decide))
  | rigid => exact flat_pending_bound b hb _ (push_pending_bound rigid_pending_bound (by decide))

/-- Any binary applicative helper with both arguments live is clear.
    Its body may duplicate, reorder, self-apply, or pass either argument
    through arbitrary applicative context. -/
theorem binary_helper_clear {b : Term} (hb : lamCount b=0)
    (h0 : 0<occ 0 b) (h1 : 0<occ 1 b) :
    Typed rigidEnv (.lam (.lam b)) .clear := by
  apply Typed.lam (by decide)
  intro a
  cases a with
  | clear =>
    apply Typed.lam (by decide)
    intro a
    cases a with
    | clear => exact flat_clear b hb _
    | pending => exact flat_pending_occ b hb _ 0 (by decide +revert) h0
    | rigid => exact flat_pending_occ b hb _ 0 (by decide +revert) h0
  | pending =>
    apply Typed.lam (by decide)
    intro a
    cases a with
    | clear => exact flat_pending_occ b hb _ 1 (by decide +revert) h1
    | pending =>
      exact flat_pending_bound b hb _
        (push_pending_bound (push_pending_bound rigid_pending_bound (by decide)) (by decide))
    | rigid =>
      exact flat_rigid_occ b hb _
        (push_pending_bound (push_pending_bound rigid_pending_bound (by decide)) (by decide))
        0 rfl h0
  | rigid =>
    apply Typed.lam (by decide)
    intro a
    cases a with
    | clear => exact flat_pending_occ b hb _ 1 (by decide +revert) h1
    | pending =>
      exact flat_pending_bound b hb _
        (push_pending_bound (push_pending_bound rigid_pending_bound (by decide)) (by decide))
    | rigid =>
      exact flat_rigid_occ b hb _
        (push_pending_bound (push_pending_bound rigid_pending_bound (by decide)) (by decide))
        0 rfl h0

/-- The application closure includes arbitrary nonlinear sharing and
    self-application of these helpers; it bounds no reduction length. -/
inductive Algebra : Term → Prop where
  | rigid {t : Term} : Rigid t → Algebra t
  | unary {b : Term} : lamCount b=0 → Algebra (.lam b)
  | binary {b : Term} : lamCount b=0 → 0<occ 0 b → 0<occ 1 b → Algebra (.lam (.lam b))
  | app {f a : Term} : Algebra f → Algebra a → Algebra (.app f a)

theorem algebra_clear {t : Term} (ht : Algebra t) : Typed rigidEnv t .clear := by
  induction ht with
  | rigid h => exact (rigid_typed h).weaken _ (by decide)
  | unary hb => exact unary_helper_clear hb
  | binary hb h0 h1 => exact binary_helper_clear hb h0 h1
  | app hf ha ihf iha => exact .app ihf iha (by decide)

theorem algebra_two_rigid_not_reader {t a b : Term} (ht : Algebra t)
    (ha : Rigid a) (hb : Rigid b) (cs : List Term) :
    ¬ Reader (spine t (a::b::cs)) :=
  two_rigid_not_reader (algebra_clear ht) ha hb cs

/-- This source family has one root-let binder and one binary helper.
    Both helper binders may have unbounded multiplicity. -/
theorem binary_rootlet_not_reader {b a c d : Term}
    (hb : lamCount b=0) (ha : lamCount a=0)
    (h0 : 0<occ 0 a) (h1 : 0<occ 1 a) (hc : Rigid c) (hd : Rigid d)
    (cs : List Term) :
    ¬ Reader (spine (.app (.lam b) (.lam (.lam a))) (c::d::cs)) :=
  algebra_two_rigid_not_reader (.app (.unary hb) (.binary ha h0 h1)) hc hd cs

/-- Flat source trees contain no captured source binders. -/
theorem flat_separated (t : Term) (hl : lamCount t=0) (d : Nat) :
    SelfintCapture.Separated d t := by
  induction t with
  | var n => trivial
  | lam b ih => simp [lamCount] at hl
  | app f a ihf iha =>
    have hh : lamCount f+lamCount a=0 := hl
    exact ⟨ihf (by omega),iha (by omega)⟩

theorem separated_spine {t : Term} {cs : List Term} (d : Nat)
    (ht : SelfintCapture.Separated d t)
    (hs : ∀ c∈cs, SelfintCapture.Separated d c) :
    SelfintCapture.Separated d (spine t cs) := by
  induction cs generalizing t with
  | nil => exact ht
  | cons c cs ih => exact ih ⟨ht,hs c (by simp)⟩ (by
      intro q hq; exact hs q (by simp [hq]))

/-- With either helper binder vacuous, the only possible nested source
    capture is not a live capture. -/
theorem binary_vacuous_separated {b a : Term} {cs : List Term}
    (hb : lamCount b=0) (ha : lamCount a=0)
    (hz : occ 0 a=0 ∨ occ 1 a=0)
    (hcs : ∀ c∈cs, lamCount c=0) :
    SelfintCapture.Separated 0 (spine (.app (.lam b) (.lam (.lam a))) cs) := by
  apply separated_spine 0
  · refine ⟨⟨flat_separated b hb 1,by intro _ i hi; omega⟩,?_⟩
    refine ⟨⟨flat_separated a ha 2,?_⟩,by intro _ i hi; omega⟩
    intro hl i hi
    have he : i=0 := by omega
    subst i
    rcases hz with hz | hz
    · omega
    · exact hz
  · intro c hc
    exact flat_separated c (hcs c hc) 0

theorem spineLambdas_zero {cs : List Term} (h : spineLambdas cs=0) :
    ∀ c∈cs, lamCount c=0 := by
  induction cs with
  | nil => simp
  | cons c cs ih =>
    have hh : lamCount c+spineLambdas cs=0 := h
    intro q hq
    rcases List.mem_cons.mp hq with rfl | hq
    · omega
    · exact ih (by omega) q hq

/-- Complete three-lambda slice of the two-pending, two-leading-helper
    case at j-depth zero. The three-lambda assumption is total source
    lambdas, not merely the leading-lambda coarse-cell statistic. -/
theorem three_lambda_two_pending_not_reader {b a c d : Term} {cs : List Term}
    (hl : lamCount (spine (.app (.lam b) (.lam (.lam a))) (c::d::cs))≤3)
    (hj : depth (spine (.app (.lam b) (.lam (.lam a))) (c::d::cs))=0) :
    ¬ Reader (spine (.app (.lam b) (.lam (.lam a))) (c::d::cs)) := by
  have hcount := hl
  simp only [spine_lambdas,lamCount] at hcount
  have hb : lamCount b=0 := by omega
  have ha : lamCount a=0 := by omega
  have hcs : ∀ q∈c::d::cs, lamCount q=0 := spineLambdas_zero (by omega)
  by_cases h0 : occ 0 a=0
  · exact SelfintRound6ReaderShallow.separated_depth_zero_not_reader
      (binary_vacuous_separated hb ha (.inl h0) hcs) hj
  by_cases h1 : occ 1 a=0
  · exact SelfintRound6ReaderShallow.separated_depth_zero_not_reader
      (binary_vacuous_separated hb ha (.inr h1) hcs) hj
  exact binary_rootlet_not_reader hb ha (by omega) (by omega)
    (SelfintRootFlat.flat_rigid c (hcs c (by simp)))
    (SelfintRootFlat.flat_rigid d (hcs d (by simp))) cs

#print axioms typed_beta
#print axioms algebra_two_rigid_not_reader
#print axioms binary_rootlet_not_reader
#print axioms three_lambda_two_pending_not_reader
end Blc.SelfintRound6ReaderBinary
