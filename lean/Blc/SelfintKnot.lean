/-
Opaque fixed-point overhead, independent of a particular knot syntax.
Free variables are zero-cost opaque holes. Bound variables retain their BLC
wire costs. For the intended one-hole reading, impose FreeUnder 1 t.
This does not assert a global lower bound for self-interpreters.
-/
import Blc.SelfintLowerBound
import Blc.SelfintCapture

namespace Blc.SelfintKnot
open Term SelfintLowerBound

/-- BLC source cost with all variables free at cutoff c priced as holes. -/
def ghostCost (c : Nat) : Term → Nat
  | .var n => if n < c then n + 2 else 0
  | .lam b => 2 + ghostCost (c + 1) b
  | .app f a => 2 + ghostCost c f + ghostCost c a

theorem nonlinear_nodes_bound (t : Term) :
    10 * nonlinear t + 4 * freeLeaves 0 t ≤ 2 * nodes t + 2 := by
  induction t with
  | var n => simp [nonlinear, freeLeaves, nodes]
  | lam b ih =>
    have hs := freeLeaves_split b 0
    simp only [nonlinear, freeLeaves, nodes]
    split <;> omega
  | app f a ihf iha =>
    simp only [nonlinear, freeLeaves, nodes]
    omega

theorem nodes_ghost_bound (t : Term) (c : Nat) :
    2 * nodes t ≤ ghostCost c t + 2 * freeLeaves c t := by
  induction t generalizing c with
  | var n => simp only [nodes, ghostCost, freeLeaves]; split <;> split <;> omega
  | lam b ih =>
    have hb := ih (c + 1)
    simp only [nodes, ghostCost, freeLeaves]
    omega
  | app f a ihf iha =>
    have hf := ihf c
    have ha := iha c
    simp only [nodes, ghostCost, freeLeaves]
    omega

theorem nonlinear_ghost_bound (t : Term) :
    10 * nonlinear t + 2 * freeLeaves 0 t ≤ ghostCost 0 t + 2 := by
  have h1 := nonlinear_nodes_bound t
  have h2 := nodes_ghost_bound t 0
  omega

theorem var_app_betas {s u : Term} (h : Betas s u) :
    ∀ {n t}, s = .app (.var n) t →
      ∃ v, u = .app (.var n) v ∧ Betas t v := by
  induction h with
  | refl s => intro n t hs; exact ⟨t, hs, .refl t⟩
  | head hb hs ih =>
    intro n t heq
    subst heq
    cases hb with
    | appL a hbad => cases hbad
    | appR f harg =>
      obtain ⟨v, hv, htv⟩ := ih rfl
      exact ⟨v, hv, .head harg htv⟩

theorem occ_betas_zero {t u : Term} (h : Betas t u) (j : Nat)
    (ht : occ j t = 0) : occ j u = 0 := by
  induction h with
  | refl => exact ht
  | head hb hs ih => exact ih (SelfintCapture.occ_beta_zero hb j ht)

/-- A fixed point of a rigid unary head cannot have a finite normal form. -/
theorem fixedpoint_no_nf {t : Term} (h : BetaJoin t (.app (.var 0) t)) :
    ¬ HasNormalForm t := by
  rintro ⟨n, htn, hnf⟩
  obtain ⟨u, htu, hhu⟩ := h
  have hun := betas_preserve_nf htu htn hnf
  have hhn : Betas (.app (.var 0) t) n := betas_trans hhu hun
  have hh : Betas (.app (.var 0) t) (.app (.var 0) n) :=
    betas_app (.refl _) htn
  have hhnf : NormalForm (.app (.var 0) n) := by
    intro w hw
    cases hw with
    | appL a hbad => cases hbad
    | appR f hbad => exact hnf _ hbad
  have heq := normalForm_unique hhn hh hnf hhnf
  have hnodes := congrArg nodes heq
  simp only [nodes] at hnodes
  omega

theorem fixedpoint_two_nonlinear {t : Term}
    (h : BetaJoin t (.app (.var 0) t)) : 2 ≤ nonlinear t := by
  by_cases hsmall : nonlinear t ≤ 1
  · obtain ⟨n, htn, hnf⟩ := one_nonlinear_normalizes t hsmall
    exact (fixedpoint_no_nf h ⟨n, htn, fun _ hb => nft_no_beta hnf hb⟩).elim
  · omega

theorem fixedpoint_has_hole {t : Term}
    (h : BetaJoin t (.app (.var 0) t)) : 1 ≤ freeLeaves 0 t := by
  obtain ⟨u, htu, hhu⟩ := h
  obtain ⟨v, hv, _⟩ := var_app_betas hhu rfl
  have hocc : 0 < occ 0 t := by
    by_cases hz : occ 0 t = 0
    · have hu := occ_betas_zero htu 0 hz
      rw [hv] at hu
      simp [occ] at hu
    · omega
  have hs := freeLeaves_split t 0
  omega

/-- Any opaque beta fixed-point context costs at least 20 bits, even when
it uses multiple free holes, arbitrary beta redexes, and no prescribed
weak-head self-reproduction path. -/
theorem opaque_knot_twenty {t : Term}
    (h : BetaJoin t (.app (.var 0) t)) : 20 ≤ ghostCost 0 t := by
  have hn := fixedpoint_two_nonlinear h
  have hf := fixedpoint_has_hole h
  have hc := nonlinear_ghost_bound t
  omega

theorem fixedpoint_hole_multiplicity {t : Term}
    (h : BetaJoin t (.app (.var 0) t)) :
    18 + 2 * freeLeaves 0 t ≤ ghostCost 0 t := by
  have hn := fixedpoint_two_nonlinear h
  have hc := nonlinear_ghost_bound t
  omega

def delta : Term := .lam (.app (.var 0) (.var 0))
def generator : Term := .lam (.app (.var 1) (.app (.var 0) (.var 0)))
def knot : Term := .app delta generator

theorem knot_unfold : BetaJoin knot (.app (.var 0) knot) := by
  have h1 : Beta knot (.app generator generator) := Beta.beta _ _
  have h2 : Beta (.app generator generator)
      (.app (.var 0) (.app generator generator)) := Beta.beta _ _
  exact ⟨_, .head h1 (.head h2 (.refl _)),
    .head (.appR (.var 0) h1) (.refl _)⟩

theorem knot_cost : ghostCost 0 knot = 20 := by decide
theorem knot_one_hole : freeLeaves 0 knot = 1 := by decide
theorem knot_scope : FreeUnder 1 knot := by decide

/-- Add the body parameter lambda (2 bits) and two parameter occurrences
at zero-based depths d1 and d2. The semantic call applications themselves
are part of the body, not charged a second time here. -/
theorem two_call_overhead {t : Term}
    (h : BetaJoin t (.app (.var 0) t)) (d1 d2 : Nat) :
    26 + d1 + d2 ≤ ghostCost 0 t + 2 + (d1 + 2) + (d2 + 2) := by
  have hc := opaque_knot_twenty h
  omega

theorem current_frame_thirty_one {t : Term}
    (h : BetaJoin t (.app (.var 0) t)) (d1 d2 : Nat)
    (hd1 : 2 ≤ d1) (hd2 : 3 ≤ d2) :
    31 ≤ ghostCost 0 t + 2 + (d1 + 2) + (d2 + 2) := by
  have hc := two_call_overhead h d1 d2
  omega

theorem current_frame_attains :
    ghostCost 0 knot + 2 + (2 + 2) + (3 + 2) = 31 := by decide


end Blc.SelfintKnot
