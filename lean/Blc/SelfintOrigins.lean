/-
Quotation-origin binders retain their guarded shape under arbitrary beta
reduction. Live quotation binders remain affine, capture no enclosing local
variables, and retain normal bodies containing only quotation-origin syntax.
Red interpreter lambdas are unrestricted. This is a provenance theorem,
not a global 165-bit size bound.
-/
import Blc.SelfintProof
import Blc.Par
import Blc.Confluence
import Blc.SelfintLowerBound

namespace Blc.QuoteOrigins
open Blc Term

/-- A rigid head at one specified free index. -/
inductive RigidAt (j : Nat) : Term → Prop where
  | var : RigidAt j (.var j)
  | app {f : Term} (a : Term) : RigidAt j f → RigidAt j (.app f a)

/-- That same free head below zero or more leading lambdas. -/
inductive HeadAt : Nat → Term → Prop where
  | rigid {j : Nat} {t : Term} : RigidAt j t → HeadAt j t
  | lam {j : Nat} {b : Term} : HeadAt (j + 1) b → HeadAt j (.lam b)

theorem rigidAt_occ {j : Nat} {t : Term} (h : RigidAt j t) : 1 ≤ occ j t := by
  induction h with
  | var => simp [occ]
  | app a h ih => simp only [occ]; omega

theorem rigidAt_shift {k : Nat} {t : Term} (h : RigidAt k t)
    (c : Nat) (hc : k < c) : RigidAt k (shift 1 c t) := by
  induction h with
  | var => simpa [shift, show ¬ k ≥ c from by omega] using (RigidAt.var (j := k))
  | app a h ih => exact RigidAt.app _ ih

theorem headAt_shift {k : Nat} {t : Term} (h : HeadAt k t)
    (c : Nat) (hc : k < c) : HeadAt k (shift 1 c t) := by
  induction h generalizing c with
  | rigid h => exact .rigid (rigidAt_shift h c hc)
  | lam h ih => exact .lam (ih (c + 1) (by omega))

theorem rigidAt_subst {k : Nat} {t : Term} (h : RigidAt k t)
    (j : Nat) (s : Term) (hj : k < j) : RigidAt k (substDec j s t) := by
  induction h with
  | var => simpa [substDec, show k ≠ j from by omega, show ¬ k > j from by omega]
      using (RigidAt.var (j := k))
  | app a h ih => exact RigidAt.app _ ih

theorem headAt_subst {k : Nat} {t : Term} (h : HeadAt k t)
    (j : Nat) (s : Term) (hj : k < j) : HeadAt k (substDec j s t) := by
  induction h generalizing j s with
  | rigid h => exact .rigid (rigidAt_subst h j s hj)
  | lam h ih => exact .lam (ih (j + 1) (shift 1 0 s) (by omega))

/-- Beta reduction cannot create a previously absent free variable. -/
theorem occ_zero_beta {t u : Term} (h : Beta t u) (j : Nat)
    (hz : occ j t = 0) : occ j u = 0 := by
  induction h generalizing j with
  | beta b a =>
    simp only [occ] at hz
    simp only [contract, occ_substDec_ge b a j 0 (by omega)]
    have hb : occ (j + 1) b = 0 := by omega
    have ha : occ j a = 0 := by omega
    simp [hb, ha]
  | appL a h ih =>
    rename_i f f'
    simp only [occ] at hz ⊢
    have hf : occ j f = 0 := by omega
    rw [ih j hf]
    omega
  | appR f h ih =>
    rename_i a a'
    simp only [occ] at hz ⊢
    have ha : occ j a = 0 := by omega
    rw [ih j ha]
    omega
  | lam h ih => exact ih (j + 1) hz

/-- A unique rigid-head occurrence cannot be copied by reductions below it. -/
theorem rigidAt_one_beta {k : Nat} {t u : Term} (h : RigidAt k t)
    (ho : occ k t = 1) (hb : Beta t u) : RigidAt k u ∧ occ k u = 1 := by
  induction h generalizing u with
  | var => cases hb
  | app a hf ih =>
    rename_i f
    have hfo : occ k f = 1 := by
      have hpos := rigidAt_occ hf
      simp only [occ] at ho
      omega
    have hao : occ k a = 0 := by
      have hpos := rigidAt_occ hf
      simp only [occ] at ho
      omega
    cases hb with
    | beta b a => cases hf
    | appL a hb =>
      obtain ⟨hf', ho'⟩ := ih hfo hb
      exact ⟨.app a hf', by simp [occ, ho', hao]⟩
    | appR f hb =>
      have ha' := occ_zero_beta hb k hao
      exact ⟨.app _ hf, by simp [occ, hfo, ha']⟩

theorem headAt_one_beta {k : Nat} {t u : Term} (h : HeadAt k t)
    (ho : occ k t = 1) (hb : Beta t u) : HeadAt k u ∧ occ k u = 1 := by
  induction h generalizing u with
  | rigid h =>
    obtain ⟨hr, ho'⟩ := rigidAt_one_beta h ho hb
    exact ⟨.rigid hr, ho'⟩
  | lam h ih =>
    cases hb with
    | lam hb =>
      obtain ⟨hh, ho'⟩ := ih ho hb
      exact ⟨.lam hh, ho'⟩

/-- Exact argument count on a specified free-variable head. -/
inductive SpineAt (j : Nat) : Nat → Term → Prop where
  | var : SpineAt j 0 (.var j)
  | app {n : Nat} {f : Term} (a : Term) :
      SpineAt j n f → SpineAt j (n + 1) (.app f a)

/-- Exact leading-lambda and head-argument counts. -/
inductive ShapeAt : Nat → Nat → Nat → Term → Prop where
  | spine {j n : Nat} {t : Term} : SpineAt j n t → ShapeAt j 0 n t
  | lam {j l n : Nat} {b : Term} :
      ShapeAt (j + 1) l n b → ShapeAt j (l + 1) n (.lam b)

theorem spineAt_rigid {j n : Nat} {t : Term} (h : SpineAt j n t) :
    RigidAt j t := by
  induction h with
  | var => exact .var
  | app a h ih => exact .app a ih

theorem spineAt_shift {k n : Nat} {t : Term} (h : SpineAt k n t)
    (c : Nat) (hc : k < c) : SpineAt k n (shift 1 c t) := by
  induction h with
  | var => simpa [shift, show ¬ k ≥ c from by omega] using (SpineAt.var (j := k))
  | app a h ih => exact .app _ ih

theorem shapeAt_shift {k l n : Nat} {t : Term} (h : ShapeAt k l n t)
    (c : Nat) (hc : k < c) : ShapeAt k l n (shift 1 c t) := by
  induction h generalizing c with
  | spine h => exact .spine (spineAt_shift h c hc)
  | lam h ih => exact .lam (ih (c + 1) (by omega))

theorem spineAt_subst {k n : Nat} {t : Term} (h : SpineAt k n t)
    (j : Nat) (s : Term) (hj : k < j) : SpineAt k n (substDec j s t) := by
  induction h with
  | var => simpa [substDec, show k ≠ j from by omega, show ¬ k > j from by omega]
      using (SpineAt.var (j := k))
  | app a h ih => exact .app _ ih

theorem shapeAt_subst {k l n : Nat} {t : Term} (h : ShapeAt k l n t)
    (j : Nat) (s : Term) (hj : k < j) : ShapeAt k l n (substDec j s t) := by
  induction h generalizing j s with
  | spine h => exact .spine (spineAt_subst h j s hj)
  | lam h ih => exact .lam (ih (j + 1) (shift 1 0 s) (by omega))

theorem spineAt_one_beta {k n : Nat} {t u : Term} (h : SpineAt k n t)
    (ho : occ k t = 1) (hb : Beta t u) : SpineAt k n u ∧ occ k u = 1 := by
  induction h generalizing u with
  | var => cases hb
  | app a hf ih =>
    rename_i f
    have hfo : occ k f = 1 := by
      have hpos := rigidAt_occ (spineAt_rigid hf)
      simp only [occ] at ho
      omega
    have hao : occ k a = 0 := by
      have hpos := rigidAt_occ (spineAt_rigid hf)
      simp only [occ] at ho
      omega
    cases hb with
    | beta b a => cases hf
    | appL a hb =>
      obtain ⟨hf', ho'⟩ := ih hfo hb
      exact ⟨.app a hf', by simp [occ, ho', hao]⟩
    | appR f hb =>
      have ha' := occ_zero_beta hb k hao
      exact ⟨.app _ hf, by simp [occ, hfo, ha']⟩

theorem shapeAt_one_beta {k l n : Nat} {t u : Term} (h : ShapeAt k l n t)
    (ho : occ k t = 1) (hb : Beta t u) : ShapeAt k l n u ∧ occ k u = 1 := by
  induction h generalizing u with
  | spine h =>
    obtain ⟨hr, ho'⟩ := spineAt_one_beta h ho hb
    exact ⟨.spine hr, ho'⟩
  | lam h ih =>
    cases hb with
    | lam hb =>
      obtain ⟨hh, ho'⟩ := ih ho hb
      exact ⟨.lam hh, ho'⟩

/-- The only live head skeletons supplied by a quotation: the outer K
binder, the inner F binder, or a Scott cell binder. -/
def QuoteShape (l n : Nat) : Prop :=
  (l = 1 ∧ n = 0) ∨ (l = 0 ∧ n = 0) ∨ (l = 0 ∧ n = 2)

/-- A protected binder is vacuous, or has its only use at the rigid head
of one of the three exact skeletons supplied by quotation. -/
def Protected (b : Term) : Prop :=
  occ 0 b = 0 ∨ ∃ l n, QuoteShape l n ∧ ShapeAt 0 l n b ∧ occ 0 b = 1

theorem protected_shift {b : Term} (h : Protected b) (c : Nat) :
    Protected (shift 1 (c + 1) b) := by
  rcases h with hz | ⟨l, n, hq, hh, ho⟩
  · left; rw [occ_shift_lt b 0 (c + 1) (by omega)]; exact hz
  · exact Or.inr ⟨l, n, hq, shapeAt_shift hh (c + 1) (by omega), by
      rw [occ_shift_lt b 0 (c + 1) (by omega)]; exact ho⟩

theorem protected_subst {b : Term} (h : Protected b) (j : Nat) (s : Term) :
    Protected (substDec (j + 1) (shift 1 0 s) b) := by
  have he : occ 0 (substDec (j + 1) (shift 1 0 s) b) = occ 0 b := by
    rw [occ_substDec_lt b (shift 1 0 s) 0 (j + 1) (by omega), occ_shift_eq s 0]
    simp
  rcases h with hz | ⟨l, n, hq, hh, ho⟩
  · exact Or.inl (he.trans hz)
  · exact Or.inr ⟨l, n, hq, shapeAt_subst hh (j + 1) _ (by omega), he.trans ho⟩

theorem protected_beta {b b' : Term} (h : Protected b) (hb : Beta b b') :
    Protected b' := by
  rcases h with hz | ⟨l, n, hq, hh, ho⟩
  · exact Or.inl (occ_zero_beta hb 0 hz)
  · exact Or.inr ⟨l, n, hq, shapeAt_one_beta hh ho hb⟩

/-- A color is a residual-origin annotation. Beta contraction copies colors
with syntax and deletes the color of the lambda it consumes. -/
inductive Marked where
  | var (n : Nat)
  | lam (blue : Bool) (b : Marked)
  | app (f a : Marked)
deriving DecidableEq
namespace Marked

def erase : Marked → Term
  | .var n => .var n
  | .lam _ b => .lam (erase b)
  | .app f a => .app (erase f) (erase a)

def shift (c : Nat) : Marked → Marked
  | .var n => if c ≤ n then .var (n + 1) else .var n
  | .lam q b => .lam q (shift (c + 1) b)
  | .app f a => .app (shift c f) (shift c a)

def subst (j : Nat) (s : Marked) : Marked → Marked
  | .var n => if n = j then s else if j < n then .var (n - 1) else .var n
  | .lam q b => .lam q (subst (j + 1) (shift 0 s) b)
  | .app f a => .app (subst j s f) (subst j s a)

def Good : Marked → Prop
  | .var _ => True
  | .lam q b => Good b ∧ (q = true → Protected (erase b))
  | .app f a => Good f ∧ Good a

def BlueAffine : Marked → Prop
  | .var _ => True
  | .lam q b => BlueAffine b ∧ (q = true → occ 0 (erase b) ≤ 1)
  | .app f a => BlueAffine f ∧ BlueAffine a

theorem erase_shift (t : Marked) (c : Nat) :
    erase (shift c t) = Term.shift 1 c (erase t) := by
  induction t generalizing c with
  | var n => simp [shift, erase, Term.shift]; split <;> rfl
  | lam q b ih => simp [shift, erase, Term.shift, ih]
  | app f a ihf iha => simp [shift, erase, Term.shift, ihf, iha]

theorem erase_subst (t s : Marked) (j : Nat) :
    erase (subst j s t) = substDec j (erase s) (erase t) := by
  induction t generalizing s j with
  | var n => simp only [subst, erase, substDec]; split <;> simp; split <;> rfl
  | lam q b ih => simp [subst, erase, substDec, ih, erase_shift]
  | app f a ihf iha => simp [subst, erase, substDec, ihf, iha]

theorem good_shift {t : Marked} (h : Good t) (c : Nat) : Good (shift c t) := by
  induction t generalizing c with
  | var n => simp only [shift]; split <;> trivial
  | lam q b ih =>
    refine ⟨ih h.1 (c + 1), ?_⟩
    intro hq
    rw [erase_shift]
    exact protected_shift (h.2 hq) c
  | app f a ihf iha => exact ⟨ihf h.1 c, iha h.2 c⟩

theorem good_subst {t s : Marked} (ht : Good t) (hs : Good s) (j : Nat) :
    Good (subst j s t) := by
  induction t generalizing s j with
  | var n => simp only [subst]; split; exact hs; split <;> trivial
  | lam q b ih =>
    refine ⟨ih ht.1 (good_shift hs 0) (j + 1), ?_⟩
    intro hq
    rw [erase_subst, erase_shift]
    exact protected_subst (ht.2 hq) j (erase s)
  | app f a ihf iha => exact ⟨ihf ht.1 hs j, iha ht.2 hs j⟩

inductive Step : Marked → Marked → Prop where
  | beta (q : Bool) (b a : Marked) : Step (.app (.lam q b) a) (subst 0 a b)
  | appL {f f' : Marked} (a : Marked) : Step f f' → Step (.app f a) (.app f' a)
  | appR (f : Marked) {a a' : Marked} : Step a a' → Step (.app f a) (.app f a')
  | lam (q : Bool) {b b' : Marked} : Step b b' → Step (.lam q b) (.lam q b')

inductive Steps : Marked → Marked → Prop where
  | refl (t : Marked) : Steps t t
  | step {t u v : Marked} : Step t u → Steps u v → Steps t v

theorem step_erase {t u : Marked} (h : Step t u) : Beta (erase t) (erase u) := by
  induction h with
  | beta q b a => simpa only [erase, erase_subst, contract] using (Beta.beta (erase b) (erase a))
  | appL a h ih => exact .appL _ ih
  | appR f h ih => exact .appR _ ih
  | lam q h ih => exact .lam ih

theorem good_step {t u : Marked} (h : Step t u) (ht : Good t) : Good u := by
  induction h with
  | beta q b a => exact good_subst ht.1.1 ht.2 0
  | appL a h ih => exact ⟨ih ht.1, ht.2⟩
  | appR f h ih => exact ⟨ht.1, ih ht.2⟩
  | lam q h ih => exact ⟨ih ht.1, fun hq => protected_beta (ht.2 hq) (step_erase h)⟩

theorem good_steps {t u : Marked} (h : Steps t u) (ht : Good t) : Good u := by
  induction h with
  | refl => exact ht
  | step h _ ih => exact ih (good_step h ht)

theorem good_blueAffine {t : Marked} (h : Good t) : BlueAffine t := by
  induction t with
  | var => trivial
  | lam q b ih =>
    refine ⟨ih h.1, ?_⟩
    intro hq
    rcases h.2 hq with hz | ⟨_, _, _, _, ho⟩ <;> omega
  | app f a ihf iha => exact ⟨ihf h.1, iha h.2⟩

/-- An ordinary beta step has a color-preserving residual step above it. -/
theorem lift_beta {t : Marked} {u : Term} (h : Beta (erase t) u) :
    ∃ v, Step t v ∧ erase v = u := by
  generalize he : erase t = z at h
  induction h generalizing t with
  | beta b a =>
    cases t with
    | var n => cases he
    | lam q b => cases he
    | app f a =>
      cases f with
      | var n => cases he
      | app f x => cases he
      | lam q b =>
        cases he
        exact ⟨subst 0 a b, .beta q b a, erase_subst b a 0⟩
  | appL a h ih =>
    cases t with
    | var n => cases he
    | lam q b => cases he
    | app f x =>
      cases he
      obtain ⟨v, hv, heq⟩ := ih rfl
      exact ⟨.app v x, .appL x hv, congrArg (Term.app · (erase x)) heq⟩
  | appR f h ih =>
    cases t with
    | var n => cases he
    | lam q b => cases he
    | app f x =>
      cases he
      obtain ⟨v, hv, heq⟩ := ih rfl
      exact ⟨.app f v, .appR f hv, congrArg (Term.app (erase f)) heq⟩
  | lam h ih =>
    cases t with
    | var n => cases he
    | app f a => cases he
    | lam q b =>
      cases he
      obtain ⟨v, hv, heq⟩ := ih rfl
      exact ⟨.lam q v, .lam q hv, congrArg Term.lam heq⟩

theorem lift_betas {t : Marked} {u : Term} (h : Betas (erase t) u) :
    ∃ v, Steps t v ∧ erase v = u := by
  generalize he : erase t = z at h
  induction h generalizing t with
  | refl z => exact ⟨t, .refl t, he⟩
  | head h _ ih =>
    rw [← he] at h
    obtain ⟨v, hv, heq⟩ := lift_beta h
    obtain ⟨w, hw, heq'⟩ := ih heq
    exact ⟨w, .step hv hw, heq'⟩

/-- Red marking of arbitrary interpreter syntax. -/
def red : Term → Marked
  | .var n => .var n
  | .lam b => .lam false (red b)
  | .app f a => .app (red f) (red a)

theorem red_good (t : Term) : Good (red t) := by
  induction t with
  | var => trivial
  | lam b ih => exact ⟨ih, by simp⟩
  | app f a ihf iha => exact ⟨ihf, iha⟩

theorem erase_red (t : Term) : erase (red t) = t := by
  induction t with
  | var => rfl
  | lam b ih => exact congrArg Term.lam ih
  | app f a ihf iha => simp [red, erase, ihf, iha]

def bit (b : Bool) : Marked :=
  .lam true (.lam true (.var (if b then 0 else 1)))

def pair (a r : Marked) : Marked :=
  .lam true (.app (.app (.var 0) (shift 0 a)) (shift 0 r))

def stream (bs : List Bool) (r : Marked) : Marked :=
  bs.foldr (fun b t => pair (bit b) t) r

theorem bit_good (b : Bool) : Good (bit b) := by
  cases b
  · refine ⟨⟨trivial, fun _ => Or.inl (by decide)⟩, ?_⟩
    intro _
    exact Or.inr ⟨1, 0, Or.inl ⟨rfl, rfl⟩, .lam (.spine .var), by decide⟩
  · refine ⟨⟨trivial, ?_⟩, fun _ => Or.inl (by decide)⟩
    intro _
    exact Or.inr ⟨0, 0, Or.inr (Or.inl ⟨rfl, rfl⟩), .spine .var, by decide⟩

theorem pair_good {a r : Marked} (ha : Good a) (hr : Good r) : Good (pair a r) := by
  refine ⟨⟨⟨trivial, good_shift ha 0⟩, good_shift hr 0⟩, ?_⟩
  intro _
  refine Or.inr ⟨0, 2, Or.inr (Or.inr ⟨rfl, rfl⟩),
    .spine (.app _ (.app _ .var)), ?_⟩
  simp [erase, erase_shift, occ, occ_shift_eq]

theorem stream_good (bs : List Bool) {r : Marked} (hr : Good r) : Good (stream bs r) := by
  induction bs with
  | nil => exact hr
  | cons b bs ih => exact pair_good (bit_good b) ih

theorem erase_bit (b : Bool) : erase (bit b) = churchBit b := by cases b <;> rfl

theorem erase_pair (a r : Marked) : erase (pair a r) = pairT (erase a) (erase r) := by
  simp [pair, erase, pairT, erase_shift]

theorem erase_stream (bs : List Bool) (r : Marked) :
    erase (stream bs r) = streamOf bs (erase r) := by
  induction bs with
  | nil => rfl
  | cons b bs ih =>
    change erase (pair (bit b) (stream bs r)) = pairT (churchBit b) (streamOf bs (erase r))
    rw [erase_pair, erase_bit, ih]

def source (E : Term) (bs : List Bool) : Marked :=
  .app (.app (red E) (.var 0)) (stream bs (.var 1))

theorem source_good (E : Term) (bs : List Bool) : Good (source E bs) :=
  ⟨⟨red_good E, trivial⟩, stream_good bs trivial⟩

theorem erase_source (E : Term) (bs : List Bool) :
    erase (source E bs) = .app (.app E (.var 0)) (streamOf bs (.var 1)) := by
  simp [source, erase, erase_red, erase_stream]

/-- Every beta reduct has a residual coloring in which all quotation-origin
binders remain vacuous or retain one of the three exact guarded head shapes.
The marked path preserves origin tags; this is not a recoloring of its end. -/
theorem quotation_origins_stay_protected (E : Term) (bs : List Bool) {u : Term}
    (h : Betas (.app (.app E (.var 0)) (streamOf bs (.var 1))) u) :
    ∃ v, Steps (source E bs) v ∧ erase v = u ∧ Good v := by
  rw [← erase_source] at h
  obtain ⟨v, hv, heq⟩ := lift_betas h
  exact ⟨v, hv, heq, good_steps hv (source_good E bs)⟩

/-- In particular every quotation-origin binder remains affine. -/
theorem quotation_origins_stay_affine (E : Term) (bs : List Bool) {u : Term}
    (h : Betas (.app (.app E (.var 0)) (streamOf bs (.var 1))) u) :
    ∃ v, Steps (source E bs) v ∧ erase v = u ∧ BlueAffine v := by
  obtain ⟨v, hv, heq, hg⟩ := quotation_origins_stay_protected E bs h
  exact ⟨v, hv, heq, good_blueAffine hg⟩

/-- For normal input programs the actual self-interpreter contract reaches
the exact output, so its binders inherit the protected provenance invariant. -/
theorem selfInterpreter_normal_origins {E M : Term} (hE : IsSelfInterpreter E)
    (hM : Closed M) (hN : NFt M) :
    ∃ v, Steps (source E (blcCode M)) v ∧
      erase v = .app (.app (.var 0) (.lam M)) (.var 1) ∧ Good v := by
  obtain ⟨u, hu, hm⟩ := hE.2 M hM
  have htarget : NormalForm (.app (.app (.var 0) (.lam M)) (.var 1)) := by
    have hnft : NFt (.app (.app (.var 0) (.lam M)) (.var 1)) :=
      ⟨(fun h => h), ⟨(fun h => h), trivial, hN⟩, trivial⟩
    exact fun _ hb => nft_no_beta hnft hb
  have heq := normalForm_betas_eq htarget hm
  subst u
  exact quotation_origins_stay_protected E (blcCode M) hu

/-- A live blue lambda has no dependence on an enclosing local binder.
Global rigid variables are outside the forbidden range. Red lambdas may
capture arbitrarily; this predicate constrains quotation origins only. -/
def Detached : Nat → Marked → Prop
  | _, .var _ => True
  | d, .app f a => Detached d f ∧ Detached d a
  | d, .lam q b => Detached (d + 1) b ∧
      (q = true → 0 < occ 0 (erase b) →
        ∀ i, i < d → occ (i + 1) (erase b) = 0)

theorem detached_shift (t : Marked) (d c : Nat) (hc : c ≤ d)
    (ht : Detached d t) : Detached (d + 1) (shift c t) := by
  induction t generalizing d c with
  | var n => simp only [shift]; split <;> trivial
  | app f a ihf iha => exact ⟨ihf d c hc ht.1, iha d c hc ht.2⟩
  | lam q b ih =>
    refine ⟨ih (d + 1) (c + 1) (by omega) ht.1, ?_⟩
    intro hq live i hi
    rw [erase_shift, occ_shift_lt (erase b) 0 (c + 1) (by omega)] at live
    rw [erase_shift]
    by_cases hlt : i + 1 < c + 1
    · rw [occ_shift_lt (erase b) (i + 1) (c + 1) hlt]
      exact ht.2 hq live i (by omega)
    · by_cases heq : i + 1 = c + 1
      · rw [heq, occ_shift_eq]
      · have he : i + 1 = (i - 1) + 1 + 1 := by omega
        rw [he, occ_shift_ge (erase b) ((i - 1) + 1) (c + 1) (by omega)]
        exact ht.2 hq live (i - 1) (by omega)

theorem detached_subst (t a : Marked) (d j : Nat) (hj : j ≤ d)
    (ht : Detached (d + 1) t) (ha : Detached d a) :
    Detached d (subst j a t) := by
  induction t generalizing a d j with
  | var n => simp only [subst]; split; exact ha; split <;> trivial
  | app f x ihf ihx => exact ⟨ihf a d j hj ht.1 ha, ihx a d j hj ht.2 ha⟩
  | lam q b ih =>
    refine ⟨ih (shift 0 a) (d + 1) (j + 1) (by omega) ht.1
      (detached_shift a d 0 (by omega) ha), ?_⟩
    intro hq live i hi
    rw [erase_subst, erase_shift,
      occ_substDec_lt (erase b) (Term.shift 1 0 (erase a)) 0 (j + 1) (by omega),
      occ_shift_eq, Nat.mul_zero, Nat.add_zero] at live
    have hcut : occ (j + 1) (erase b) = 0 := ht.2 hq live j (by omega)
    rw [erase_subst, erase_shift]
    by_cases hlt : i + 1 < j + 1
    · rw [occ_substDec_lt (erase b) (Term.shift 1 0 (erase a)) (i + 1) (j + 1) hlt,
        hcut, Nat.zero_mul, Nat.add_zero]
      exact ht.2 hq live i (by omega)
    · rw [occ_substDec_ge (erase b) (Term.shift 1 0 (erase a)) (i + 1) (j + 1)
        (by omega), hcut, Nat.zero_mul, Nat.add_zero]
      exact ht.2 hq live (i + 1) (by omega)

theorem detached_step {t u : Marked} (h : Step t u) (d : Nat)
    (ht : Detached d t) : Detached d u := by
  induction h generalizing d with
  | beta q b a => exact detached_subst b a d 0 (by omega) ht.1.1 ht.2
  | appL a h ih => exact ⟨ih d ht.1, ht.2⟩
  | appR f h ih => exact ⟨ht.1, ih d ht.2⟩
  | @lam q b b' h ih =>
    refine ⟨ih (d + 1) ht.1, ?_⟩
    intro hq live i hi
    have oldlive : 0 < occ 0 (erase b) := by
      by_cases hz : occ 0 (erase b) = 0
      · have := occ_zero_beta (step_erase h) 0 hz
        omega
      · omega
    exact occ_zero_beta (step_erase h) (i + 1) (ht.2 hq oldlive i hi)

theorem detached_steps {t u : Marked} (h : Steps t u) (d : Nat)
    (ht : Detached d t) : Detached d u := by
  induction h with
  | refl => exact ht
  | step h _ ih => exact ih (detached_step h d ht)

theorem red_detached (t : Term) (d : Nat) : Detached d (red t) := by
  induction t generalizing d with
  | var => trivial
  | lam b ih => exact ⟨ih (d + 1), by simp⟩
  | app f a ihf iha => exact ⟨ihf d, iha d⟩

theorem bit_detached (b : Bool) : Detached 0 (bit b) := by
  cases b
  · refine ⟨⟨trivial, ?_⟩, ?_⟩
    · intro _ live; simp [erase, occ] at live
    · intro _ _ i hi; omega
  · refine ⟨⟨trivial, ?_⟩, ?_⟩
    · intro _ _ i hi
      have hi0 : i = 0 := by omega
      subst i
      rfl
    · intro _ live; simp [erase, occ] at live

theorem pair_detached {a r : Marked} (ha : Detached 0 a) (hr : Detached 0 r) :
    Detached 0 (pair a r) := by
  refine ⟨⟨⟨trivial, detached_shift a 0 0 (by omega) ha⟩,
    detached_shift r 0 0 (by omega) hr⟩, ?_⟩
  intro _ _ i hi
  omega

theorem stream_detached (bs : List Bool) {r : Marked} (hr : Detached 0 r) :
    Detached 0 (stream bs r) := by
  induction bs with
  | nil => exact hr
  | cons b bs ih => exact pair_detached (bit_detached b) ih

theorem source_detached (E : Term) (bs : List Bool) : Detached 0 (source E bs) :=
  ⟨⟨red_detached E 0, trivial⟩, stream_detached bs trivial⟩

/-- Every reduct has one origin-preserving coloring satisfying both exact
head-shape protection and absence of local capture by live blue binders. -/
theorem quotation_origins_guarded (E : Term) (bs : List Bool) {u : Term}
    (h : Betas (.app (.app E (.var 0)) (streamOf bs (.var 1))) u) :
    ∃ v, Steps (source E bs) v ∧ erase v = u ∧ Good v ∧ Detached 0 v := by
  rw [← erase_source] at h
  obtain ⟨v, hv, heq⟩ := lift_betas h
  exact ⟨v, hv, heq, good_steps hv (source_good E bs),
    detached_steps hv 0 (source_detached E bs)⟩

/-- All abstractions in this subterm have quotation origin. -/
def BlueOnly : Marked → Prop
  | .var _ => True
  | .lam q b => q = true ∧ BlueOnly b
  | .app f a => BlueOnly f ∧ BlueOnly a

theorem blueOnly_shift {t : Marked} (ht : BlueOnly t) (c : Nat) :
    BlueOnly (shift c t) := by
  induction t generalizing c with
  | var n => simp only [shift]; split <;> trivial
  | lam q b ih => exact ⟨ht.1, ih ht.2 (c + 1)⟩
  | app f a ihf iha => exact ⟨ihf ht.1 c, iha ht.2 c⟩

theorem blueOnly_subst_absent {t : Marked} (ht : BlueOnly t) (j : Nat) (a : Marked)
    (hz : occ j (erase t) = 0) : BlueOnly (subst j a t) := by
  induction t generalizing j a with
  | var n =>
    have hn : n ≠ j := by intro he; subst n; simp [erase, occ] at hz
    simp only [subst, if_neg hn]
    split <;> trivial
  | lam q b ih => exact ⟨ht.1, ih ht.2 (j + 1) (shift 0 a) hz⟩
  | app f x ihf ihx =>
    simp only [erase, occ, Nat.add_eq_zero_iff] at hz
    exact ⟨ihf ht.1 j a hz.1, ihx ht.2 j a hz.2⟩

theorem nft_shift {t : Term} (ht : NFt t) (c : Nat) : NFt (Term.shift 1 c t) := by
  induction t generalizing c with
  | var n => simp only [Term.shift]; split <;> trivial
  | lam b ih => exact ih ht (c + 1)
  | app f a ihf iha =>
    refine ⟨?_, ihf ht.2.1 c, iha ht.2.2 c⟩
    cases f with
    | var n => simp only [Term.shift]; split <;> exact fun h => h
    | lam b => exact (ht.1 trivial).elim
    | app g x => exact fun h => h

theorem nft_subst_absent {t : Term} (ht : NFt t) (j : Nat) (a : Term)
    (hz : occ j t = 0) : NFt (substDec j a t) := by
  induction t generalizing j a with
  | var n =>
    have hn : n ≠ j := by intro he; subst n; simp [occ] at hz
    simp only [substDec, if_neg hn]
    split <;> trivial
  | lam b ih => exact ih ht (j + 1) (Term.shift 1 0 a) hz
  | app f x ihf ihx =>
    simp only [occ, Nat.add_eq_zero_iff] at hz
    refine ⟨?_, ihf ht.2.1 j a hz.1, ihx ht.2.2 j a hz.2⟩
    cases f with
    | var n =>
      have hn : n ≠ j := by intro he; subst n; simp [occ] at hz
      simp only [substDec, if_neg hn]
      split <;> exact fun h => h
    | lam b => exact (ht.1 trivial).elim
    | app g x => exact fun h => h

/-- A surviving live blue lambda keeps a normal body made entirely from
blue syntax. Vacuous blue wrappers may enclose unrestricted red payloads. -/
def Frozen : Marked → Prop
  | .var _ => True
  | .app f a => Frozen f ∧ Frozen a
  | .lam q b => Frozen b ∧
      (q = true → 0 < occ 0 (erase b) → NFt (erase b) ∧ BlueOnly b)

theorem frozen_shift {t : Marked} (ht : Frozen t) (c : Nat) :
    Frozen (shift c t) := by
  induction t generalizing c with
  | var n => simp only [shift]; split <;> trivial
  | app f a ihf iha => exact ⟨ihf ht.1 c, iha ht.2 c⟩
  | lam q b ih =>
    refine ⟨ih ht.1 (c + 1), ?_⟩
    intro hq live
    rw [erase_shift, occ_shift_lt (erase b) 0 (c + 1) (by omega)] at live
    obtain ⟨hn, hp⟩ := ht.2 hq live
    exact ⟨by rw [erase_shift]; exact nft_shift hn (c + 1),
      blueOnly_shift hp (c + 1)⟩

theorem frozen_subst (t a : Marked) (d j : Nat) (hj : j ≤ d)
    (hd : Detached (d + 1) t) (ht : Frozen t) (ha : Frozen a) :
    Frozen (subst j a t) := by
  induction t generalizing a d j with
  | var n => simp only [subst]; split; exact ha; split <;> trivial
  | app f x ihf ihx => exact ⟨ihf a d j hj hd.1 ht.1 ha,
      ihx a d j hj hd.2 ht.2 ha⟩
  | lam q b ih =>
    refine ⟨ih (shift 0 a) (d + 1) (j + 1) (by omega) hd.1 ht.1
      (frozen_shift ha 0), ?_⟩
    intro hq live
    rw [erase_subst, erase_shift,
      occ_substDec_lt (erase b) (Term.shift 1 0 (erase a)) 0 (j + 1) (by omega),
      occ_shift_eq, Nat.mul_zero, Nat.add_zero] at live
    have hz : occ (j + 1) (erase b) = 0 := hd.2 hq live j (by omega)
    obtain ⟨hn, hp⟩ := ht.2 hq live
    exact ⟨by rw [erase_subst]; exact nft_subst_absent hn _ _ hz,
      blueOnly_subst_absent hp _ _ hz⟩

theorem frozen_step {t u : Marked} (h : Step t u) (d : Nat)
    (hd : Detached d t) (ht : Frozen t) : Frozen u := by
  induction h generalizing d with
  | beta q b a => exact frozen_subst b a d 0 (by omega) hd.1.1 ht.1.1 ht.2
  | appL a h ih => exact ⟨ih d hd.1 ht.1, ht.2⟩
  | appR f h ih => exact ⟨ht.1, ih d hd.2 ht.2⟩
  | @lam q b b' h ih =>
    refine ⟨ih (d + 1) hd.1 ht.1, ?_⟩
    intro hq live
    have oldlive : 0 < occ 0 (erase b) := by
      by_cases hz : occ 0 (erase b) = 0
      · have := occ_zero_beta (step_erase h) 0 hz
        omega
      · omega
    exact (nft_no_beta (ht.2 hq oldlive).1 (step_erase h)).elim

theorem frozen_steps {t u : Marked} (h : Steps t u) (d : Nat)
    (hd : Detached d t) (ht : Frozen t) : Frozen u := by
  induction h with
  | refl => exact ht
  | step h _ ih => exact ih (detached_step h d hd) (frozen_step h d hd ht)

theorem red_frozen (t : Term) : Frozen (red t) := by
  induction t with
  | var => trivial
  | lam b ih => exact ⟨ih, by simp⟩
  | app f a ihf iha => exact ⟨ihf, iha⟩

theorem bit_ready (b : Bool) : Frozen (bit b) ∧ NFt (erase (bit b)) ∧
    BlueOnly (bit b) := by
  cases b <;>
    exact ⟨⟨⟨trivial, fun _ _ => ⟨trivial, trivial⟩⟩,
      fun _ _ => ⟨trivial, rfl, trivial⟩⟩, trivial, rfl, rfl, trivial⟩

theorem pair_ready {a r : Marked}
    (ha : Frozen a ∧ NFt (erase a) ∧ BlueOnly a)
    (hr : Frozen r ∧ NFt (erase r) ∧ BlueOnly r) :
    Frozen (pair a r) ∧ NFt (erase (pair a r)) ∧ BlueOnly (pair a r) := by
  have hb : NFt (erase (.app (.app (.var 0) (shift 0 a)) (shift 0 r))) :=
    ⟨(fun h => h), ⟨(fun h => h), trivial,
      by rw [erase_shift]; exact nft_shift ha.2.1 0⟩,
      by rw [erase_shift]; exact nft_shift hr.2.1 0⟩
  have hp : BlueOnly (.app (.app (.var 0) (shift 0 a)) (shift 0 r)) :=
    ⟨⟨trivial, blueOnly_shift ha.2.2 0⟩, blueOnly_shift hr.2.2 0⟩
  exact ⟨⟨⟨⟨trivial, frozen_shift ha.1 0⟩, frozen_shift hr.1 0⟩,
    fun _ _ => ⟨hb, hp⟩⟩, hb, rfl, hp⟩

theorem stream_ready (bs : List Bool) {r : Marked}
    (hr : Frozen r ∧ NFt (erase r) ∧ BlueOnly r) :
    Frozen (stream bs r) ∧ NFt (erase (stream bs r)) ∧ BlueOnly (stream bs r) := by
  induction bs with
  | nil => exact hr
  | cons b bs ih => exact pair_ready (bit_ready b) ih

theorem source_frozen (E : Term) (bs : List Bool) : Frozen (source E bs) :=
  ⟨⟨red_frozen E, trivial⟩,
    (stream_ready bs (r := .var 1) ⟨trivial, trivial, trivial⟩).1⟩

/-- Full provenance invariant: blue binders remain guarded and locally
detached, and their live bodies stay normal with no red syntax inside.
The same single residual coloring witnesses all three properties. -/
theorem quotation_origins_frozen (E : Term) (bs : List Bool) {u : Term}
    (h : Betas (.app (.app E (.var 0)) (streamOf bs (.var 1))) u) :
    ∃ v, Steps (source E bs) v ∧ erase v = u ∧
      Good v ∧ Detached 0 v ∧ Frozen v := by
  rw [← erase_source] at h
  obtain ⟨v, hv, heq⟩ := lift_betas h
  exact ⟨v, hv, heq, good_steps hv (source_good E bs),
    detached_steps hv 0 (source_detached E bs),
    frozen_steps hv 0 (source_detached E bs) (source_frozen E bs)⟩

/-- The full origin invariant holds at the exact output of every normal
closed program, under the existing beta-join self-interpreter contract. -/
theorem selfInterpreter_normal_frozen {E M : Term} (hE : IsSelfInterpreter E)
    (hM : Closed M) (hN : NFt M) :
    ∃ v, Steps (source E (blcCode M)) v ∧
      erase v = .app (.app (.var 0) (.lam M)) (.var 1) ∧
      Good v ∧ Detached 0 v ∧ Frozen v := by
  obtain ⟨u, hu, hm⟩ := hE.2 M hM
  have hnft : NFt (.app (.app (.var 0) (.lam M)) (.var 1)) :=
    ⟨(fun h => h), ⟨(fun h => h), trivial, hN⟩, trivial⟩
  have heq := normalForm_betas_eq (fun _ hb => nft_no_beta hnft hb) hm
  subst u
  exact quotation_origins_frozen E (blcCode M) hu

/-- Number of residual interpreter-origin abstractions, counting copies. -/
def redCount : Marked → Nat
  | .var _ => 0
  | .lam q b => redCount b + if q then 0 else 1
  | .app f a => redCount f + redCount a

theorem redCount_shift (t : Marked) (c : Nat) :
    redCount (shift c t) = redCount t := by
  induction t generalizing c with
  | var n => simp only [shift]; split <;> rfl
  | lam q b ih => simp [shift, redCount, ih]
  | app f a ihf iha => simp [shift, redCount, ihf, iha]

/-- The exact red-abstraction accounting identity for capture-avoiding substitution. -/
theorem redCount_subst (t s : Marked) (j : Nat) :
    redCount (subst j s t) = redCount t + occ j (erase t) * redCount s := by
  induction t generalizing s j with
  | var n =>
      simp only [subst, redCount, erase, occ]
      split
      · simp_all
      · split <;> simp_all [redCount]
  | lam q b ih =>
      simp only [subst, redCount, erase, occ, ih, redCount_shift]
      omega
  | app f a ihf iha =>
      simp only [subst, redCount, erase, occ, ihf, iha, Nat.add_mul]
      omega

/-- Balanced natural-number form of the exact red-contraction change:
`new - old = (occurrences - 1) * argument_red_count - 1`. -/
theorem red_beta_balance (b a : Marked) :
    redCount (subst 0 a b) + redCount a + 1 =
      redCount (.app (.lam false b) a) + occ 0 (erase b) * redCount a := by
  simp only [redCount_subst, redCount, Bool.false_eq_true, ↓reduceIte]
  omega

/-- The selected contraction duplicates a red-containing argument at a
nonlinear red binder. The context constructors retain the selected redex.
This condition is necessary for red-count growth, but need not itself cause
growth: consuming the red contractor also removes one red abstraction. -/
inductive CodeDup : Marked → Marked → Prop where
  | beta {b a : Marked} (nonlinear : 1 < occ 0 (erase b))
      (redArgument : 0 < redCount a) :
      CodeDup (.app (.lam false b) a) (subst 0 a b)
  | appL {f f' : Marked} (a : Marked) :
      CodeDup f f' → CodeDup (.app f a) (.app f' a)
  | appR (f : Marked) {a a' : Marked} :
      CodeDup a a' → CodeDup (.app f a) (.app f a')
  | lam (q : Bool) {b b' : Marked} :
      CodeDup b b' → CodeDup (.lam q b) (.lam q b')

theorem codeDup_step {t u : Marked} (h : CodeDup t u) : Step t u := by
  induction h with
  | beta hn hr => exact .beta _ _ _
  | appL a h ih => exact .appL a ih
  | appR f h ih => exact .appR f ih
  | lam q h ih => exact .lam q ih

theorem step_redCount_le_or_codeDup {t u : Marked}
    (h : Step t u) (ht : Good t) :
    redCount u ≤ redCount t ∨ CodeDup t u := by
  induction h with
  | beta q b a =>
      have haff : q = true → occ 0 (erase b) ≤ 1 :=
        (good_blueAffine ht).1.2
      cases q with
      | false =>
          by_cases hn : 1 < occ 0 (erase b)
          · by_cases hr : redCount a = 0
            · left
              simp [redCount_subst, redCount, hr]
            · exact Or.inr (.beta hn (by omega))
          · left
            have hz : occ 0 (erase b) = 0 ∨ occ 0 (erase b) = 1 := by omega
            rcases hz with hz | hz <;> simp [redCount_subst, redCount, hz] <;> omega
      | true =>
          left
          have ho := haff rfl
          have hz : occ 0 (erase b) = 0 ∨ occ 0 (erase b) = 1 := by omega
          rcases hz with hz | hz <;> simp [redCount_subst, redCount, hz]
  | appL a h ih =>
      rcases ih ht.1 with hn | hd
      · left; simp only [redCount]; omega
      · exact Or.inr (.appL a hd)
  | appR f h ih =>
      rcases ih ht.2 with hn | hd
      · left; simp only [redCount]; omega
      · exact Or.inr (.appR f hd)
  | lam q h ih =>
      rcases ih ht.1 with hn | hd
      · left; simp only [redCount]; omega
      · exact Or.inr (.lam q hd)

theorem step_redCount_growth_codeDup {t u : Marked}
    (h : Step t u) (ht : Good t) (hg : redCount t < redCount u) :
    CodeDup t u := by
  rcases step_redCount_le_or_codeDup h ht with hn | hd
  · exact (Nat.not_lt_of_ge hn hg).elim
  · exact hd

/-- A finite trace that ends with more red abstractions contains an actual
growth step, necessarily copying interpreter-origin code. Prefix and suffix
reductions locate the selected step on the supplied trace. -/
theorem steps_redCount_growth {t u : Marked}
    (h : Steps t u) (ht : Good t) (hg : redCount t < redCount u) :
    ∃ a b, Steps t a ∧ Step a b ∧ CodeDup a b ∧ Steps b u ∧
      redCount a < redCount b := by
  induction h with
  | refl t => exact (Nat.lt_irrefl _ hg).elim
  | @step t v u hs htail ih =>
      by_cases hlocal : redCount t < redCount v
      · exact ⟨t, v, .refl _, hs,
          step_redCount_growth_codeDup hs ht hlocal, htail, hlocal⟩
      · obtain ⟨a, b, hpre, hab, hdup, hpost, hinc⟩ :=
          ih (good_step hs ht) (by omega)
        exact ⟨a, b, .step hs hpre, hab, hdup, hpost, hinc⟩

/-- A trace explicitly excluding code-copying contractions. -/
inductive NoCodeDupSteps : Marked → Marked → Prop where
  | refl (t : Marked) : NoCodeDupSteps t t
  | step {t u v : Marked} : Step t u → ¬ CodeDup t u →
      NoCodeDupSteps u v → NoCodeDupSteps t v

theorem noCodeDupSteps_redCount {t u : Marked}
    (h : NoCodeDupSteps t u) (ht : Good t) : redCount u ≤ redCount t := by
  induction h with
  | refl t => exact Nat.le_refl _
  | @step t v u hs hn htail ih =>
      have hstep : redCount v ≤ redCount t := by
        rcases step_redCount_le_or_codeDup hs ht with hle | hd
        · exact hle
        · exact (hn hd).elim
      exact Nat.le_trans (ih (good_step hs ht)) hstep

/-- Each nonlinear residual binder must be red. -/
theorem nonlinear_le_redCount {t : Marked} (h : BlueAffine t) :
    SelfintLowerBound.nonlinear (erase t) ≤ redCount t := by
  induction t with
  | var n => simp [erase, SelfintLowerBound.nonlinear, redCount]
  | app f a ihf iha =>
      have hf := ihf h.1
      have ha := iha h.2
      simp only [erase, SelfintLowerBound.nonlinear, redCount]
      omega
  | lam q b ih =>
      have hb := ih h.1
      cases q with
      | true =>
          have ho := h.2 rfl
          simp only [erase, SelfintLowerBound.nonlinear, redCount,
            ↓reduceIte, Nat.add_zero]
          rw [if_neg (by omega)]
          omega
      | false =>
          simp only [erase, SelfintLowerBound.nonlinear, redCount,
            Bool.false_eq_true, ↓reduceIte]
          split <;> omega

theorem redCount_pair (a r : Marked) :
    redCount (pair a r) = redCount a + redCount r := by
  simp [pair, redCount, redCount_shift]

theorem redCount_bit (b : Bool) : redCount (bit b) = 0 := by
  cases b <;> rfl

theorem redCount_stream (bs : List Bool) (r : Marked) :
    redCount (stream bs r) = redCount r := by
  induction bs with
  | nil => rfl
  | cons b bs ih =>
      change redCount (pair (bit b) (stream bs r)) = redCount r
      rw [redCount_pair, redCount_bit, ih, Nat.zero_add]

theorem redCount_source (E : Term) (bs : List Bool) :
    redCount (source E bs) = redCount (red E) := by
  simp [source, redCount, redCount_stream]

/-- A closed beta-normal family with exactly n nonlinear binders.
Each new binder occurs twice at a rigid head; the smaller closed family is
an inert argument, so the construction introduces no beta redex. -/
def manyNonlinear : Nat → Term
  | 0 => .lam (.var 0)
  | n + 1 => .lam (.app (.app (.var 0) (.var 0)) (manyNonlinear n))

theorem manyNonlinear_closed (n : Nat) : Closed (manyNonlinear n) := by
  induction n with
  | zero => decide
  | succ n ih =>
      exact ⟨⟨by decide, by decide⟩, freeUnder_mono (by omega) ih⟩

theorem manyNonlinear_nft (n : Nat) : NFt (manyNonlinear n) := by
  induction n with
  | zero => trivial
  | succ n ih =>
      exact ⟨(fun h => h), ⟨(fun h => h), trivial, trivial⟩, ih⟩

theorem manyNonlinear_occ (n j : Nat) : occ j (manyNonlinear n) = 0 := by
  induction n generalizing j with
  | zero =>
      simp only [manyNonlinear, occ, if_neg (Nat.zero_ne_add_one j)]
  | succ n ih =>
      simp only [manyNonlinear, occ, if_neg (Nat.zero_ne_add_one j), ih,
        Nat.zero_add]

theorem manyNonlinear_count (n : Nat) :
    SelfintLowerBound.nonlinear (manyNonlinear n) = n := by
  induction n with
  | zero => decide
  | succ n ih =>
      simp [manyNonlinear, SelfintLowerBound.nonlinear, occ, manyNonlinear_occ, ih]

/-- Every trace producing a target with more nonlinear binders than the
initial interpreter has lambdas must duplicate interpreter-origin code. -/
theorem every_large_output_trace_copies_code (E M : Term) {u : Marked}
    (hsize : redCount (red E) < SelfintLowerBound.nonlinear M)
    (h : Steps (source E (blcCode M)) u)
    (he : erase u = .app (.app (.var 0) (.lam M)) (.var 1)) :
    ∃ a b, Steps (source E (blcCode M)) a ∧ Step a b ∧ CodeDup a b ∧
      Steps b u ∧ redCount a < redCount b := by
  have hu : Good u := good_steps h (source_good E _)
  have hbound := nonlinear_le_redCount (good_blueAffine hu)
  have htarget : SelfintLowerBound.nonlinear M ≤
      SelfintLowerBound.nonlinear (erase u) := by
    rw [he]
    simp only [SelfintLowerBound.nonlinear, Nat.zero_add, Nat.add_zero]
    omega
  apply steps_redCount_growth h (source_good E _)
  rw [redCount_source]
  omega

/-- Every self-interpreter must copy interpreter-origin code on a suitable
closed normal source. The displayed strict growth step consumes a nonlinear
red binder and duplicates an argument containing a red lambda. -/
theorem selfInterpreter_must_copy_code {E : Term} (hE : IsSelfInterpreter E) :
    ∃ M a b u, Closed M ∧ NFt M ∧
      Steps (source E (blcCode M)) a ∧ Step a b ∧ CodeDup a b ∧ Steps b u ∧
      erase u = .app (.app (.var 0) (.lam M)) (.var 1) ∧
      redCount a < redCount b := by
  let M := manyNonlinear (redCount (red E) + 1)
  have hc : Closed M := manyNonlinear_closed _
  have hn : NFt M := manyNonlinear_nft _
  obtain ⟨u, hu, he, _⟩ := selfInterpreter_normal_origins hE hc hn
  have hsize : redCount (red E) < SelfintLowerBound.nonlinear M := by
    simp only [M, manyNonlinear_count]
    omega
  obtain ⟨a, b, hpre, hab, hdup, hpost, hinc⟩ :=
    every_large_output_trace_copies_code E M hsize hu he
  exact ⟨M, a, b, u, hc, hn, hpre, hab, hdup, hpost, he, hinc⟩

/-- There is a closed normal forcing source for every interpreter, and
every origin-preserving trace to its required output contains a code-copying
growth step. Existence of a successful trace is included, avoiding vacuity. -/
theorem selfInterpreter_every_trace_copies_code {E : Term}
    (hE : IsSelfInterpreter E) :
    ∃ M, Closed M ∧ NFt M ∧
      (∃ u, Steps (source E (blcCode M)) u ∧
        erase u = .app (.app (.var 0) (.lam M)) (.var 1)) ∧
      ∀ u, Steps (source E (blcCode M)) u →
        erase u = .app (.app (.var 0) (.lam M)) (.var 1) →
        ∃ a b, Steps (source E (blcCode M)) a ∧ Step a b ∧ CodeDup a b ∧
          Steps b u ∧ redCount a < redCount b := by
  let M := manyNonlinear (redCount (red E) + 1)
  have hc : Closed M := manyNonlinear_closed _
  have hn : NFt M := manyNonlinear_nft _
  obtain ⟨u, hu, he, _⟩ := selfInterpreter_normal_origins hE hc hn
  refine ⟨M, hc, hn, ⟨u, hu, he⟩, ?_⟩
  intro v hv hev
  apply every_large_output_trace_copies_code E M ?_ hv hev
  simp only [M, manyNonlinear_count]
  omega

end Marked
end Blc.QuoteOrigins
