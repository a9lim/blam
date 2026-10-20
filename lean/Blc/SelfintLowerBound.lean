/-
Structural lower bounds for the rigid-tail self-interpreter contract.
A nonlinear binder is a lambda whose own variable occurs at least twice.
The normalization argument counts nonlinear binders, not redexes or a
particular interpreter decomposition.
-/
import Blc.SelfintProof
import Blc.Confluence
import Blc.Rigid

namespace Blc
open Term
namespace SelfintLowerBound

/-- Number of syntactically nonlinear binders. Free variables are unrestricted. -/
def nonlinear : Term → Nat
  | .var _ => 0
  | .lam b => nonlinear b + if 1 < occ 0 b then 1 else 0
  | .app f a => nonlinear f + nonlinear a

/-- Ordinary tree nodes, independently of de Bruijn wire lengths. -/
def nodes : Term → Nat
  | .var _ => 1
  | .lam b => nodes b + 1
  | .app f a => nodes f + nodes a + 1

theorem nodes_pos (t : Term) : 0 < nodes t := by
  cases t <;> simp [nodes] <;> omega

theorem nodes_shift (t : Term) (c : Nat) : nodes (shift 1 c t) = nodes t := by
  induction t generalizing c with
  | var n => simp only [shift]; split <;> rfl
  | lam b ih => simp [shift, nodes, ih]
  | app f a ihf iha => simp [shift, nodes, ihf, iha]

theorem nonlinear_shift (t : Term) (c : Nat) :
    nonlinear (shift 1 c t) = nonlinear t := by
  induction t generalizing c with
  | var n => simp only [shift]; split <;> rfl
  | lam b ih =>
    simp only [shift, nonlinear, ih]
    rw [occ_shift_lt b 0 (c + 1) (by omega)]
  | app f a ihf iha => simp [shift, nonlinear, ihf, iha]

/-- Capture-avoiding substitution does not change any binder already in the
body; it inserts one copy of the argument's binders at each substituted leaf. -/
theorem nonlinear_subst (t s : Term) (j : Nat) :
    nonlinear (substDec j s t) = nonlinear t + occ j t * nonlinear s := by
  induction t generalizing s j with
  | var n =>
    simp only [substDec, occ, nonlinear]
    split <;> simp_all
    split <;> simp [nonlinear]
  | lam b ih =>
    simp only [substDec, nonlinear, occ]
    rw [occ_substDec_lt b (shift 1 0 s) 0 (j + 1) (by omega), occ_shift_eq s 0]
    simp only [Nat.mul_zero, Nat.add_zero]
    rw [ih, nonlinear_shift]
    omega
  | app f a ihf iha =>
    simp only [substDec, nonlinear, occ, ihf, iha, Nat.add_mul]
    omega

/-- Exact ordinary-node substitution accounting, written without subtraction. -/
theorem nodes_subst (t s : Term) (j : Nat) :
    nodes (substDec j s t) + occ j t = nodes t + occ j t * nodes s := by
  induction t generalizing s j with
  | var n =>
    simp only [substDec, occ, nodes]
    split
    · simp_all [Nat.add_comm]
    · split <;> simp_all [nodes]
  | lam b ih =>
    simp only [substDec, nodes, occ]
    have h := ih (shift 1 0 s) (j + 1)
    rw [nodes_shift] at h
    omega
  | app f a ihf iha =>
    simp only [substDec, nodes, occ, Nat.add_mul]
    have hf := ihf s j
    have ha := iha s j
    omega

/-- Weak-head step: never reduces underneath a lambda. -/
def weakStep : Term → Option Term
  | .var _ => none
  | .lam _ => none
  | .app (.lam b) a => some (contract b a)
  | .app f a => (weakStep f).map (Term.app · a)

theorem weakStep_beta {t u : Term} (h : weakStep t = some u) : Beta t u := by
  induction t generalizing u with
  | var n => simp [weakStep] at h
  | lam b ih => simp [weakStep] at h
  | app f a ihf iha =>
    cases f with
    | lam b => simp [weakStep] at h; subst u; exact .beta _ _
    | var n => simp [weakStep] at h
    | app g b =>
      simp only [weakStep, Option.map_eq_some_iff] at h
      obtain ⟨v, hv, rfl⟩ := h
      exact .appL a (ihf hv)

/-- With at most one nonlinear binder, a weak-head step either shrinks the
ordinary syntax while preserving the bound, or consumes its only nonlinear
binder and leaves an affine term. There are no enclosing lambdas on this path. -/
theorem weakStep_progress {t u : Term} (ht : nonlinear t ≤ 1)
    (h : weakStep t = some u) :
    (nodes u < nodes t ∧ nonlinear u ≤ nonlinear t) ∨
      (nonlinear t = 1 ∧ nonlinear u = 0) := by
  induction t generalizing u with
  | var n => simp [weakStep] at h
  | lam b ih => simp [weakStep] at h
  | app f a ihf iha =>
    cases f with
    | var n => simp [weakStep] at h
    | lam b =>
      simp only [weakStep, Option.some.injEq] at h
      subst u
      have hn := nodes_subst b a 0
      have hp := nodes_pos a
      by_cases hb : occ 0 b ≤ 1
      · left
        have hno : ¬ 1 < occ 0 b := by omega
        simp only [contract, nonlinear_subst, nonlinear, if_neg hno, Nat.add_zero, nodes]
        rcases Nat.le_one_iff_eq_zero_or_eq_one.mp hb with hz | ho
        · simp only [hz, Nat.zero_mul, Nat.add_zero] at hn ⊢
          constructor <;> omega
        · simp only [ho, Nat.one_mul] at hn ⊢
          constructor <;> omega
      · right
        have hyes : 1 < occ 0 b := by omega
        simp only [nonlinear, if_pos hyes] at ht ⊢
        have hnb : nonlinear b = 0 := by omega
        have hna : nonlinear a = 0 := by omega
        simp [contract, nonlinear_subst, hnb, hna]
    | app g b =>
      simp only [weakStep, Option.map_eq_some_iff] at h
      obtain ⟨v, hv, rfl⟩ := h
      have hsmall : nonlinear (.app g b) ≤ 1 := by
        simp only [nonlinear] at ht ⊢; omega
      rcases ihf hsmall hv with ⟨hn, hc⟩ | ⟨hc, hz⟩
      · left; simp only [nodes, nonlinear] at hn hc ⊢; constructor <;> omega
      · right; simp only [nonlinear] at ht hc ⊢; constructor <;> omega

theorem weakStep_none_rigid {t : Term} (h : weakStep t = none)
    (hl : ¬ IsLam t) : Rigid t := by
  induction t with
  | var n => exact .var n
  | lam b ih => exact (hl trivial).elim
  | app f a ihf iha =>
    apply Rigid.app a
    cases f with
    | var n => exact .var n
    | lam b => simp [weakStep] at h
    | app g b =>
      apply ihf
      · simpa only [weakStep, Option.map_eq_none_iff] using h
      · exact fun h => h

theorem rigid_betas {t u : Term} (hr : Rigid t) (h : Betas t u) : Rigid u := by
  induction h with
  | refl => exact hr
  | head hb _ ih => exact ih (rigid_beta hr hb)

/-- Binder-affine terms normalize. Free-variable multiplicity is immaterial. -/
theorem affine_normalizes (t : Term) (ht : nonlinear t = 0) :
    ∃ n, Betas t n ∧ NFt n := by
  generalize hm : nodes t = m
  induction m using Nat.strongRecOn generalizing t with
  | ind m ih =>
    cases hs : weakStep t with
    | some u =>
      have hp := weakStep_progress (by omega : nonlinear t ≤ 1) hs
      rcases hp with ⟨hn, hc⟩ | ⟨hc, _⟩
      · obtain ⟨n, hr, hnf⟩ := ih (nodes u) (by omega) u (by omega) rfl
        exact ⟨n, Betas.head (weakStep_beta hs) hr, hnf⟩
      · exfalso; omega
    | none =>
      cases t with
      | var v => exact ⟨.var v, .refl _, trivial⟩
      | lam b =>
        have hb : nonlinear b = 0 := by simp only [nonlinear] at ht; omega
        obtain ⟨n, hr, hnf⟩ := ih (nodes b) (by simp [nodes] at hm; omega) b hb rfl
        exact ⟨.lam n, betas_lam hr, hnf⟩
      | app f a =>
        have hf : nonlinear f = 0 := by simp only [nonlinear] at ht; omega
        have ha : nonlinear a = 0 := by simp only [nonlinear] at ht; omega
        have hr : Rigid (.app f a) := weakStep_none_rigid hs (fun h => h)
        have hrf : Rigid f := by cases hr; assumption
        obtain ⟨nf, hf', hnff⟩ := ih (nodes f) (by simp [nodes] at hm; omega) f hf rfl
        obtain ⟨na, ha', hnfa⟩ := ih (nodes a) (by simp [nodes] at hm; omega) a ha rfl
        refine ⟨.app nf na, betas_app hf' ha', ?_, hnff, hnfa⟩
        intro hnl
        cases nf with
        | var => exact hnl
        | app => exact hnl
        | lam b => exact rigid_not_lam (rigid_betas hrf hf') b rfl

/-- Every term with at most one nonlinear binder has a beta-normal form.
This is weak normalization; no claim of strong normalization is needed. -/
theorem one_nonlinear_normalizes (t : Term) (ht : nonlinear t ≤ 1) :
    ∃ n, Betas t n ∧ NFt n := by
  generalize hm : nodes t = m
  induction m using Nat.strongRecOn generalizing t with
  | ind m ih =>
    cases hs : weakStep t with
    | some u =>
      rcases weakStep_progress ht hs with ⟨hn, hc⟩ | ⟨_, hz⟩
      · obtain ⟨n, hr, hnf⟩ := ih (nodes u) (by omega) u (by omega) rfl
        exact ⟨n, Betas.head (weakStep_beta hs) hr, hnf⟩
      · obtain ⟨n, hr, hnf⟩ := affine_normalizes u hz
        exact ⟨n, Betas.head (weakStep_beta hs) hr, hnf⟩
    | none =>
      cases t with
      | var v => exact ⟨.var v, .refl _, trivial⟩
      | lam b =>
        have hb : nonlinear b ≤ 1 := by simp only [nonlinear] at ht; omega
        obtain ⟨n, hr, hnf⟩ := ih (nodes b) (by simp [nodes] at hm; omega) b hb rfl
        exact ⟨.lam n, betas_lam hr, hnf⟩
      | app f a =>
        have hf : nonlinear f ≤ 1 := by simp only [nonlinear] at ht; omega
        have ha : nonlinear a ≤ 1 := by simp only [nonlinear] at ht; omega
        have hr : Rigid (.app f a) := weakStep_none_rigid hs (fun h => h)
        have hrf : Rigid f := by cases hr; assumption
        obtain ⟨nf, hf', hnff⟩ := ih (nodes f) (by simp [nodes] at hm; omega) f hf rfl
        obtain ⟨na, ha', hnfa⟩ := ih (nodes a) (by simp [nodes] at hm; omega) a ha rfl
        refine ⟨.app nf na, betas_app hf' ha', ?_, hnff, hnfa⟩
        intro hnl
        cases nf with
        | var => exact hnl
        | app => exact hnl
        | lam b => exact rigid_not_lam (rigid_betas hrf hf') b rfl


/-- Quotation contributes no nonlinear binder, irrespective of its data bits. -/
theorem nonlinear_pair (a r : Term) :
    nonlinear (pairT a r) = nonlinear a + nonlinear r := by
  simp only [pairT, nonlinear, occ, occ_shift_eq, Nat.add_zero]
  rw [nonlinear_shift, nonlinear_shift]
  simp

theorem nonlinear_bit (b : Bool) : nonlinear (churchBit b) = 0 := by
  cases b <;> decide

theorem nonlinear_stream (bs : List Bool) (r : Term) :
    nonlinear (streamOf bs r) = nonlinear r := by
  induction bs with
  | nil => rfl
  | cons b bs ih =>
    change nonlinear (pairT (churchBit b) (streamOf bs r)) = nonlinear r
    rw [nonlinear_pair, nonlinear_bit, ih, Nat.zero_add]

private def delta : Term := .lam (.app (.var 0) (.var 0))
private def omegaTerm : Term := .app delta delta
private theorem omega_spine : Spine omegaTerm := Spine.redex (by decide) (by decide)
private theorem omega_step : Beta omegaTerm omegaTerm := by
  exact Beta.beta (.app (.var 0) (.var 0)) delta
private theorem omega_beta_eq {u : Term} (h : Beta omegaTerm u) : u = omegaTerm := by
  have hs := headStep_complete (spine_beta_head omega_spine h)
  exact Option.some.inj hs.symm
private theorem omega_betas_eq {u : Term} (h : Betas omegaTerm u) : u = omegaTerm := by
  have aux : ∀ t v, Betas t v → t = omegaTerm → v = omegaTerm := by
    intro t v hs
    induction hs with
    | refl => exact id
    | head hb _ ih =>
      intro ht
      apply ih
      subst ht
      exact omega_beta_eq hb
  exact aux _ _ h rfl
private theorem omega_no_nf : ¬ HasNormalForm omegaTerm := by
  rintro ⟨n, hr, hnf⟩
  have he := omega_betas_eq hr
  subst n
  exact hnf _ omega_step

private theorem omega_output_no_nf :
    ¬ HasNormalForm (.app (.app (.var 0) (.lam omegaTerm)) (.var 1)) := by
  rintro ⟨n, hr, hnf⟩
  obtain ⟨⟨m, hm, hnfm⟩, _⟩ := rigid_app_betas_nf hr hnf rfl (.app _ (.var 0))
  obtain ⟨_, ⟨v, hv, hnfv⟩⟩ := rigid_app_betas_nf hm hnfm rfl (.var 0)
  exact omega_no_nf (lam_betas_nf hv hnfv rfl)

/-- Every self-interpreter has at least two syntactically nonlinear binders.
One closed program (Omega) witnesses the obstruction; no bounded census or
candidate enumeration enters the proof. -/
theorem selfInterpreter_two_nonlinear {E : Term} (hE : IsSelfInterpreter E) :
    2 ≤ nonlinear E := by
  apply Nat.le_of_not_lt
  intro hn
  have hsmall : nonlinear E ≤ 1 := by omega
  let source : Term := .app (.app E (.var 0)) (streamOf (blcCode omegaTerm) (.var 1))
  have hsource : nonlinear source ≤ 1 := by
    simp only [source, nonlinear, nonlinear_stream, Nat.add_zero]
    exact hsmall
  obtain ⟨nf, hr, hnft⟩ := one_nonlinear_normalizes source hsource
  have hnf : NormalForm nf := fun _ h => nft_no_beta hnft h
  obtain ⟨w, hw1, hw2⟩ := hE.2 omegaTerm (by decide)
  obtain ⟨v, hv, hnfv⟩ := betas_preserve_hasNormalForm hw1 ⟨nf, hr, hnf⟩
  exact omega_output_no_nf ⟨v, betas_trans hw2 hv, hnfv⟩


/-- Free variable leaves above a de Bruijn cutoff, counting multiplicity. -/
def freeLeaves (c : Nat) : Term → Nat
  | .var n => if c ≤ n then 1 else 0
  | .lam b => freeLeaves (c + 1) b
  | .app f a => freeLeaves c f + freeLeaves c a

theorem freeLeaves_split (t : Term) (c : Nat) :
    freeLeaves c t = occ c t + freeLeaves (c + 1) t := by
  induction t generalizing c with
  | var n =>
    simp only [freeLeaves, occ]
    repeat' first | split | omega
  | lam b ih => exact ih (c + 1)
  | app f a ihf iha =>
    simp only [freeLeaves, occ]
    rw [ihf c, iha c]
    omega

/-- Each nonlinear binder costs at least ten bits in aggregate, with a
two-bit endpoint correction. The free-leaf term makes the induction valid
for open subterms and accounts for every bound occurrence exactly once. -/
theorem nonlinear_wire_bound (t : Term) :
    10 * nonlinear t + 4 * freeLeaves 0 t ≤ (blcCode t).length + 2 := by
  induction t with
  | var n => simp [nonlinear, freeLeaves, blcCode]
  | lam b ih =>
    have hs := freeLeaves_split b 0
    simp only [nonlinear, freeLeaves, blcCode, List.length_cons]
    split <;> omega
  | app f a ihf iha =>
    simp only [nonlinear, freeLeaves, blcCode, List.length_cons, List.length_append]
    omega

/-- A small unconditional numeric consequence. This is not a 165-bit
optimality result: the substantive new invariant is the two-binder theorem. -/
theorem selfintSizeBound_eighteen : SelfintSizeBound 18 := by
  intro E hE
  have hn := selfInterpreter_two_nonlinear hE
  have hs := nonlinear_wire_bound E
  omega


/-- Arbitrary lifting preserves nonlinear-binder count. -/
theorem nonlinear_shift_any (t : Term) (d c : Nat) :
    nonlinear (shift d c t) = nonlinear t := by
  induction d with
  | zero => rw [shift_zero]
  | succ d ih =>
    have hs := shift_shift_add t 1 d c c (by omega) (by omega)
    have he : 1 + d = d + 1 := by omega
    rw [he] at hs
    rw [← hs, nonlinear_shift, ih]

/-- Any finite simultaneous instantiation by affine arguments preserves
exactly the body's nonlinear count, whatever the variables' multiplicities. -/
theorem nonlinear_instN (as : List Term) (j : Nat) (t : Term)
    (ha : ∀ a ∈ as, nonlinear a = 0) :
    nonlinear (instN as j t) = nonlinear t := by
  induction as generalizing j t with
  | nil => rfl
  | cons a as ih =>
    have hna : nonlinear a = 0 := ha a (by simp)
    have hrest : ∀ u ∈ as, nonlinear u = 0 := by
      intro u hu; exact ha u (by simp [hu])
    simp only [instN, nonlinear_subst, nonlinear_shift_any, hna, Nat.mul_zero,
      Nat.add_zero]
    exact ih (j + 1) t hrest

private theorem selfInterpreter_omega_input_no_nf {E : Term}
    (hE : IsSelfInterpreter E) :
    ¬ HasNormalForm (.app (.app E (.var 0)) (streamOf (blcCode omegaTerm) (.var 1))) := by
  intro hsource
  obtain ⟨w, hw1, hw2⟩ := hE.2 omegaTerm (by decide)
  obtain ⟨v, hv, hnfv⟩ := betas_preserve_hasNormalForm hw1 hsource
  exact omega_output_no_nf ⟨v, betas_trans hw2 hv, hnfv⟩

/-- Duplicating the public continuation or stream cannot supply the two
nonlinear binders required by computation: those interface binders disappear
when their affine arguments are supplied. This applies to every body shape. -/
theorem selfInterpreter_two_inside_interface {B : Term}
    (hE : IsSelfInterpreter (.lam (.lam B))) : 2 ≤ nonlinear B := by
  apply Nat.le_of_not_lt
  intro hn
  let S := streamOf (blcCode omegaTerm) (.var 1)
  let inner := substDec 1 (shift 1 0 (.var 0)) B
  let result := contract inner S
  have hc : nonlinear result = nonlinear B := by
    simp only [result, inner, contract, nonlinear_subst, S, nonlinear_stream,
      nonlinear_shift, nonlinear, Nat.mul_zero, Nat.add_zero]
  obtain ⟨nf, hr, hnf⟩ := one_nonlinear_normalizes result (by omega)
  have hs : Betas (.app (.app (.lam (.lam B)) (.var 0)) S) result :=
    Betas.head (Beta.appL S (Beta.beta (.lam B) (.var 0)))
      (Betas.head (Beta.beta inner S) (Betas.refl _))
  exact selfInterpreter_omega_input_no_nf hE
    ⟨nf, betas_trans hs hr, fun _ h => nft_no_beta hnf h⟩

end SelfintLowerBound
end Blc
