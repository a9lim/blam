/-
Flat arguments of a first body redex. If λs. ((λx.B) A) C1 … Ct is a minimum
reader and A is lambda-free, A is literally s, c, j, s s, s s s or s s s j
(`minimum_flat_argument`); at weight at most 45 only j, s s, s s s and
s s s j remain (`minimum_flat_four`). B and the pending operands are
arbitrary. A lexicographically minimum reader with at most three source
lambdas has no linear first body redex (`no_three_lambda_linear`). `docs/classical/self-interpreter/class-bound.md`.
All variables are 0-based; at the root of a reader c=0 and j=1, with probe
suffix N=2 and zero tag r=3; beneath the stream binder s=0, c=1, j=2.
-/
import Blc.SelfintFlatSemantics
namespace Blc.SelfintFlatMinimum
open Term SelfintClass SelfintLowerBound SelfintWireCost SelfintFloor
open SelfintSourceCost SelfintLocalCost SelfintDispatchAudit SelfintWidenHoist SelfintInert
open SelfintFlatSemantics SelfintControl

set_option maxRecDepth 10000
set_option maxHeartbeats 4000000

theorem join_spine {t u : Term} (h : BetaJoin t u) (as : List Term) :
    BetaJoin (spine t as) (spine u as) := by
  induction as generalizing t u with
  | nil => exact h
  | cons a as ih => exact ih (join_appL a h)

theorem betas_spine {t u : Term} (h : Betas t u) (as : List Term) :
    Betas (spine t as) (spine u as) := by
  induction as generalizing t u with
  | nil => exact h
  | cons a as ih => exact ih (betas_appL a h)

theorem replace_spine_argument (f : Term) (as : List Term) {a target : Term}
    (hr : Rigid a) (hn : NFt a) (ha : Avoid a target) (ht : NormalForm target)
    (hj : BetaJoin (spine (.app f a) as) target) (b : Term) :
    BetaJoin (spine (.app f b) as) target := by
  let t := spine (.app (shift 1 0 f) (.var 0)) (as.map (shift 1 0))
  have he (v : Term) : substDec 0 v t = spine (.app f v) as := by
    simp only [t, SelfintSourceFront.subst_spine, substDec, substDec_shift, if_true]
    congr 1
    have aux : (as.map (shift 1 0)).map (substDec 0 v) = as := by
      simp only [List.map_map, Function.comp_def, substDec_shift]
      exact List.map_id as
    exact aux
  have h0 : BetaJoin (substDec 0 a t) target := by rw [he]; exact hj
  have h1 := replace_inert_join 0 hr hn ha ht h0 b
  rw [he] at h1
  exact join_of_betas h1

inductive Probe | zero | unary : Nat → Probe

def Probe.stream : Probe → Term
  | .zero => Z
  | .unary n => input (n+1)

def Probe.output : Probe → Term
  | .zero => zeroOut
  | .unary n => out n

theorem Probe.normal (p : Probe) : NormalForm p.output := by
  cases p with
  | zero => exact zeroOut_normal
  | unary n => exact out_normal n

/-- Replacing a source argument inside ANY applied function and pending
    spine preserves either reader observation. No usage-linearity premise. -/
def Refines (a q : Term) : Prop :=
  ∀ p : Probe, ∀ f : Term, ∀ as : List Term,
    BetaJoin (spine (.app f (contract a p.stream)) as) p.output →
      BetaJoin (spine (.app f (contract q p.stream)) as) p.output

theorem refines_of_join {a q : Term}
    (h : ∀ p : Probe, BetaJoin (contract q p.stream) (contract a p.stream)) : Refines a q := by
  intro p f as hj
  exact join_trans (join_spine (join_appR f (h p)) as) hj

theorem refines_of_inert {a q : Term}
    (h : ∀ p : Probe, ∃ v, Betas (contract a p.stream) v ∧
      Rigid v ∧ NFt v ∧ Avoid v p.output) : Refines a q := by
  intro p f as hj
  obtain ⟨v,hr,hv,hn,ha⟩ := h p
  have hto := join_spine (join_appR f (join_of_betas hr)) as
  have hcorrect := join_trans (join_symm hto) hj
  exact replace_spine_argument f as hv hn ha p.normal hcorrect _

theorem irrelevant_refines (a q : Term) (hl : lamCount a = 0) (hs : FreeUnder 3 a)
    (he : ¬ Relevant a) : Refines a q := by
  apply refines_of_inert
  intro p
  cases p with
  | zero =>
    obtain ⟨z,u,hz,hu,hzr,hzn,hza,hur,hun,hua⟩ := irrelevant_inert a hl hs he 0
    exact ⟨z,hz,hzr,hzn,hza⟩
  | unary n =>
    obtain ⟨z,u,hz,hu,hzr,hzn,hza,hur,hun,hua⟩ := irrelevant_inert a hl hs he n
    exact ⟨u,hu,hur,hun,hua⟩

def bodyReader (b a : Term) (as : List Term) : Term := .lam (spine (.app (.lam b) a) as)

theorem bodyReader_apply (b a : Term) (as : List Term) (s : Term) :
    Beta (.app (bodyReader b a as) s)
      (spine (.app (.lam (substDec 1 (shift 1 0 s) b)) (contract a s))
        (as.map (substDec 0 s))) := by
  have h := Beta.beta (spine (.app (.lam b) a) as) s
  simpa only [bodyReader, contract, SelfintSourceFront.subst_spine, substDec] using h

theorem spine_scope_replace {t u : Term} (as : List Term) (k : Nat)
    (hs : FreeUnder k (spine t as)) (hu : FreeUnder k u) : FreeUnder k (spine u as) := by
  induction as generalizing t u with
  | nil => exact hu
  | cons a as ih =>
    have ht := spine_scope (.app t a) as k hs
    exact ih hs ⟨hu,ht.2⟩

theorem laws_body_replace {b a q : Term} {as : List Term}
    (hr : ReaderLaws (bodyReader b a as)) (hq : FreeUnder 3 q) (href : Refines a q) :
    ReaderLaws (bodyReader b q as) := by
  have hsource : FreeUnder 3 (spine (.app (.lam b) a) as) := hr.scope
  have hb := (spine_scope (.app (.lam b) a) as 3 hsource).1
  have hscope : FreeUnder 2 (bodyReader b q as) :=
    spine_scope_replace as 3 hsource ⟨hb,hq⟩
  have proof (p : Probe) (h : BetaJoin (.app (bodyReader b a as) p.stream) p.output) :
      BetaJoin (.app (bodyReader b q as) p.stream) p.output := by
    have hsrc := join_of_betas (.head (bodyReader_apply b a as p.stream) (.refl _))
    have hdst := join_of_betas (.head (bodyReader_apply b q as p.stream) (.refl _))
    exact join_trans hdst (href p _ _ (join_trans (join_symm hsrc) h))
  exact ⟨hscope,proof .zero hr.zero,fun n => proof (.unary n) (hr.unary n)⟩

def spineWeight (d : Nat) : List Term → Nat
  | [] => 0
  | a::as => 2 + weight d a + spineWeight d as

theorem spine_weight (t : Term) (as : List Term) (d : Nat) :
    weight d (spine t as) = weight d t + spineWeight d as := by
  induction as generalizing t with
  | nil => simp [spine,spineWeight]
  | cons a as ih => simp [spine,spineWeight,ih,weight]; omega

theorem body_weight (b a : Term) (as : List Term) :
    weight 0 (bodyReader b a as) = 6 + weight 2 b + weight 1 a + spineWeight 1 as := by
  simp only [bodyReader,weight,spine_weight, Nat.reduceAdd]
  omega

theorem minimum_argument_no_improvement {b a q : Term} {as : List Term}
    (hm : MinimumReader (bodyReader b a as)) (hq : FreeUnder 3 q)
    (href : Refines a q) (hj : occ 2 q ≤ occ 2 a) : weight 1 a ≤ weight 1 q := by
  have hl := laws_body_replace hm.laws hq href
  have hhole : occ 1 (bodyReader b q as) = 1 := by
    have hone := hm.oneHole
    have hneed := reader_j hl.probes
    simp only [bodyReader,occ,spine_occ,Nat.reduceAdd] at hone hneed ⊢
    omega
  have hmin := hm.minimal _ hl hhole
  rw [body_weight,body_weight] at hmin
  omega

def sq : Term := .app (.var 0) (.var 0)
def rem (a : Term) : Term := .app sq a
def remHole (a : Term) : Term := .app (rem a) (.var 2)

def Probe.remainder : Probe → Term
  | .zero => .var 3
  | .unary _ => .var 2

theorem rem_reduces (a : Term) (p : Probe) :
    Betas (contract (rem a) p.stream) p.remainder := by
  cases p with
  | zero =>
    exact betas_trans (betas_appL _ zsquare) (.head (zconst_apply _) (.refl _))
  | unary n =>
    exact betas_trans (betas_appL _ (usquare n)) (.head (.beta _ _) (.refl _))

theorem rem_refines (a q : Term) : Refines (rem a) (rem q) := by
  apply refines_of_join
  intro p
  exact join_trans (join_of_betas (rem_reduces q p)) (join_symm (join_of_betas (rem_reduces a p)))

theorem remHole_refines (a q : Term) : Refines (remHole a) (remHole q) := by
  apply refines_of_join
  intro p
  have h := join_trans (join_of_betas (rem_reduces q p)) (join_symm (join_of_betas (rem_reduces a p)))
  exact join_appL (.var 1) h

theorem wire_positive (t : Term) : 2 ≤ wire t := by
  cases t <;> simp only [wire_var,wire_lam,wire_app] <;> omega

theorem weight_one_tiny (t : Term) (h : weight 1 t ≤ 2) : t = .var 0 := by
  cases t with
  | var n => simp only [weight] at h; split at h <;> simp_all <;> omega
  | lam b =>
    have hb := weight_ge_wire_positive_depth b 2 (by omega)
    have hp := wire_positive b
    simp only [weight,Nat.reduceAdd] at h
    omega
  | app f a =>
    have hf := weight_ge_wire_positive_depth f 1 (by omega)
    have ha := weight_ge_wire_positive_depth a 1 (by omega)
    have hfp := wire_positive f
    have hap := wire_positive a
    simp only [weight] at h
    omega

/-- This includes arbitrarily complicated erased payloads: minimum source
    readers use the cheapest representative s in (s s) payload. -/
theorem minimum_rem_payload {b a : Term} {as : List Term}
    (hm : MinimumReader (bodyReader b (rem a) as)) : a = .var 0 := by
  have h := minimum_argument_no_improvement hm (by decide : FreeUnder 3 (rem (.var 0)))
    (rem_refines a (.var 0)) (by simp [rem,sq,occ])
  simp [rem,sq,weight] at h
  exact weight_one_tiny a (by omega)

theorem minimum_remHole_payload {b a : Term} {as : List Term}
    (hm : MinimumReader (bodyReader b (remHole a) as)) : a = .var 0 := by
  have h := minimum_argument_no_improvement hm (by decide : FreeUnder 3 (remHole (.var 0)))
    (remHole_refines a (.var 0)) (by simp [remHole,rem,sq,occ])
  simp [remHole,rem,sq,weight] at h
  exact weight_one_tiny a (by omega)

/-- The full six-member source basis, now with the contextual domination
    and the minimum-source cost comparison checked in the kernel. -/
theorem minimum_flat_argument {b a : Term} {as : List Term}
    (hm : MinimumReader (bodyReader b a as)) (hl : lamCount a = 0) :
    a = .var 0 ∨ a = .var 1 ∨ a = .var 2 ∨ a = sq ∨
      a = rem (.var 0) ∨ a = remHole (.var 0) := by
  have hs : FreeUnder 3 a :=
    (spine_scope (.app (.lam b) a) as 3 hm.laws.scope).2
  by_cases he : Relevant a
  · cases he with
    | stream => exact .inl rfl
    | cont => exact .inr (.inl rfl)
    | hole => exact .inr (.inr (.inl rfl))
    | square => exact .inr (.inr (.inr (.inl rfl)))
    | rest t =>
      have ht := minimum_rem_payload hm
      subst t
      exact .inr (.inr (.inr (.inr (.inl rfl))))
    | restHole t =>
      have ht := minimum_remHole_payload hm
      subst t
      exact .inr (.inr (.inr (.inr (.inr rfl))))
  · have h := minimum_argument_no_improvement hm (by decide : FreeUnder 3 (.var 0))
      (irrelevant_refines a (.var 0) hl hs he) (by simp [occ])
    have ht := weight_one_tiny a h
    subst a
    exact (he .stream).elim

/-- Every effective capture count in that basis is at most seven. This is
    uniform in the original source depth of j. -/
theorem minimum_flat_capture {b a : Term} {as : List Term}
    (hm : MinimumReader (bodyReader b a as)) (hl : lamCount a = 0) :
    freeLeaves 0 a + 3 * occ 2 a ≤ 7 := by
  rcases minimum_flat_argument hm hl with h | h | h | h | h | h <;> rw [h] <;> decide

def spineContext (c : Context) : List Term → Context
  | [] => c
  | a::as => spineContext (.appL c a) as

theorem spineContext_fill (c : Context) (as : List Term) (t : Term) :
    (spineContext c as).fill t = spine (c.fill t) as := by
  induction as generalizing c with
  | nil => rfl
  | cons a as ih => exact ih (.appL c a)

theorem spineContext_depth (c : Context) (as : List Term) :
    ctxDepth (spineContext c as) = ctxDepth c := by
  induction as generalizing c with
  | nil => rfl
  | cons a as ih => exact ih (.appL c a)

/-- First body redexes with flat arguments and at most one binder above
    their unique use are eliminated, including the linear L<=3 cases. -/
theorem no_shallow_linear_flat {b a : Term} {as : List Term}
    (hm : LexMinimumReader (bodyReader b a as)) (hl : lamCount a = 0)
    (ho : occ 0 b = 1) (hd : occDepth 0 b ≤ 1) : False := by
  have cap := minimum_flat_capture hm.toMinimumReader hl
  let C := Context.lam (spineContext .hole as)
  have he : C.fill (.app (.lam b) a) = bodyReader b a as := by
    simp only [C,Context.fill,spineContext_fill,bodyReader]
  apply minimum_linear_source_not_shallow C b a (he.symm ▸ hm) ho
  · simpa only [C,ctxDepth,spineContext_depth,Nat.reduceAdd] using cap
  · exact hd

def bodyContext (as : List Term) : Context := .lam (spineContext .hole as)

theorem bodyContext_fill (b a : Term) (as : List Term) :
    (bodyContext as).fill (.app (.lam b) a) = bodyReader b a as := by
  simp only [bodyContext,Context.fill,spineContext_fill,bodyReader]

theorem bodyContext_depth (as : List Term) : ctxDepth (bodyContext as) = 1 := by
  simp only [bodyContext,ctxDepth,spineContext_depth]

theorem body_sharing_charge {b a : Term} {as : List Term}
    (hm : MinimumReader (bodyReader b a as)) (ha : occ 2 a = 0) :
    2 * (occ 0 b : Int) + 4 + freeLeaves 1 b + 3 * occ 3 b ≤
      ((occ 0 b : Int)-1) * weight 1 a +
      ((freeLeaves 0 a : Int)-1) * occDepth 0 b := by
  have hh := minimum_source_sharing_charge (bodyContext as) b a
    ((bodyContext_fill b a as).symm ▸ hm)
  have ha' : occ (ctxDepth (bodyContext as)+1) a = 0 := by
    simpa only [bodyContext_depth,Nat.reduceAdd] using ha
  simpa only [bodyContext_depth,Nat.reduceAdd] using hh ha'

theorem minimum_body_not_stream_argument {b : Term} {as : List Term}
    (hm : MinimumReader (bodyReader b (.var 0) as)) : False := by
  have h := body_sharing_charge hm (by decide)
  simp [weight,freeLeaves] at h
  omega

theorem minimum_body_not_cont_argument {b : Term} {as : List Term}
    (hm : MinimumReader (bodyReader b (.var 1) as))
    (hw : weight 0 (bodyReader b (.var 1) as) ≤ 45) : False := by
  have hm6 := SelfintSourceFront.body_head_multiplicity b (.var 1) as hm.laws.probes hm.oneHole hw
  have h := body_sharing_charge hm (by decide)
  simp [weight,freeLeaves] at h
  omega

/-- Four flat arguments remain at the original sub-46 source budget.
    None of the remaining four is claimed impossible here. -/
theorem minimum_flat_four {b a : Term} {as : List Term}
    (hm : MinimumReader (bodyReader b a as)) (hl : lamCount a = 0)
    (hw : weight 0 (bodyReader b a as) ≤ 45) :
    a = .var 2 ∨ a = sq ∨ a = rem (.var 0) ∨ a = remHole (.var 0) := by
  rcases minimum_flat_argument hm hl with h | h | h | h | h | h
  · subst a; exact (minimum_body_not_stream_argument hm).elim
  · subst a; exact (minimum_body_not_cont_argument hm hw).elim
  · exact .inl h
  · exact .inr (.inl h)
  · exact .inr (.inr (.inl h))
  · exact .inr (.inr (.inr h))

theorem linear_depth_le_lambdas (t : Term) (j : Nat) (h : occ j t = 1) :
    occDepth j t ≤ lamCount t := by
  induction t generalizing j with
  | var n => simp [occDepth,lamCount]
  | lam b ih =>
    have hb : occ (j+1) b = 1 := h
    have hi := ih (j+1) hb
    simp only [occDepth,lamCount,hb]
    omega
  | app f a ihf iha =>
    have ht : occ j f + occ j a = 1 := h
    have hc : (occ j f = 1 ∧ occ j a = 0) ∨ (occ j f = 0 ∧ occ j a = 1) := by omega
    rcases hc with ⟨hf,ha⟩ | ⟨hf,ha⟩
    · have hi := ihf j hf
      simp only [occDepth,lamCount,occDepth_zero ha]; omega
    · have hi := iha j ha
      simp only [occDepth,lamCount,occDepth_zero hf]; omega

/-- All linear first body head redexes in a <=3-lambda minimum reader
    disappear. This proof uses neither the handwritten two-lambda floor
    nor a finite dispatcher inventory. -/
theorem no_three_lambda_linear {b a : Term} {as : List Term}
    (hm : LexMinimumReader (bodyReader b a as))
    (hL : lamCount (bodyReader b a as) ≤ 3) (ho : occ 0 b = 1) : False := by
  have hd := linear_depth_le_lambdas b 0 ho
  simp only [bodyReader,lamCount,spine_lambdas] at hL
  by_cases ha : lamCount a = 0
  · exact no_shallow_linear_flat hm ha ho (by omega)
  · have hb : lamCount b = 0 := by omega
    have hD : occDepth 0 b = 0 := by omega
    have h := minimum_linear_source_charge (bodyContext as) b a
      ((bodyContext_fill b a as).symm ▸ hm) ho
    rw [hD] at h
    simp only [Int.natCast_zero,Int.mul_zero] at h
    omega

#print axioms minimum_flat_argument
#print axioms minimum_flat_four
#print axioms no_three_lambda_linear
end Blc.SelfintFlatMinimum
