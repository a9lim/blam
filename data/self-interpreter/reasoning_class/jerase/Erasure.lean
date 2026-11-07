import Blc.SelfintLocalCost

/- A per-step and per-run theorem, not a reader lower bound. Any loss of a
   chosen free variable in arbitrary full beta reduction has a syntactically
   erasing redex site at that instant. No minimality, depth, source-normality,
   reduction-strategy, or one-occurrence assumption is used. -/
namespace Blc.JErase
open Term SelfintWireCost SelfintLocalCost

/-- The exact condition for an immediate beta contraction to lose free j. -/
theorem contract_loses_iff (b a : Term) (j : Nat) :
    occ j (contract b a) < occ j (.app (.lam b) a) ↔
      occ 0 b = 0 ∧ 0 < occ j a := by
  rw [contract, occ_substDec_ge b a j 0 (Nat.zero_le j)]
  simp only [occ]
  cases hm : occ 0 b with
  | zero => simp
  | succ k => simp only [Nat.succ_mul]; omega

/-- The marked-variable loss is at exactly an erasing argument site,
    though a step can erase arbitrarily many copied residuals there. -/
theorem beta_loss_site {t u : Term} (h : Beta t u) (j : Nat)
    (hloss : occ j u < occ j t) :
    ∃ (ctx : Context) (b a : Term),
      t = ctx.fill (.app (.lam b) a) ∧
      u = ctx.fill (contract b a) ∧
      occ 0 b = 0 ∧ 0 < occ (j + ctxDepth ctx) a := by
  induction h generalizing j with
  | beta b a =>
      have hh := (contract_loses_iff b a j).mp hloss
      exact ⟨.hole, b, a, rfl, rfl, hh.1, hh.2⟩
  | @appL f f' a h ih =>
      have hl : occ j f' < occ j f := by simpa only [occ, Nat.add_lt_add_iff_right] using hloss
      obtain ⟨ctx, b, x, ht, hu, hb, hx⟩ := ih j hl
      exact ⟨.appL ctx a, b, x, congrArg (fun q => Term.app q a) ht,
        congrArg (fun q => Term.app q a) hu, hb, hx⟩
  | @appR f a a' h ih =>
      have hl : occ j a' < occ j a := by simpa only [occ, Nat.add_lt_add_iff_left] using hloss
      obtain ⟨ctx, b, x, ht, hu, hb, hx⟩ := ih j hl
      exact ⟨.appR f ctx, b, x, congrArg (fun q => Term.app f q) ht,
        congrArg (fun q => Term.app f q) hu, hb, hx⟩
  | lam h ih =>
      obtain ⟨ctx, b, a, ht, hu, hb, ha⟩ := ih (j+1) hloss
      refine ⟨.lam ctx, b, a, congrArg Term.lam ht, congrArg Term.lam hu, hb, ?_⟩
      simpa only [ctxDepth, Nat.add_assoc, Nat.add_comm, Nat.add_left_comm] using ha

/-- A finite run that loses free j contains a loss step. Earlier steps may
    duplicate j, so neither one source occurrence nor a final zero count
    singles out one global death event. -/
theorem run_loss_step {t u : Term} (h : Betas t u) (j : Nat)
    (hloss : occ j u < occ j t) :
    ∃ v w, Betas t v ∧ Beta v w ∧ Betas w u ∧ occ j w < occ j v := by
  induction h with
  | refl t => omega
  | @head t v u hb hs ih =>
      by_cases hfirst : occ j v < occ j t
      · exact ⟨t, v, .refl _, hb, hs, hfirst⟩
      · obtain ⟨x, y, hvx, hxy, hyu, hdrop⟩ := ih (by omega)
        exact ⟨x, y, .head hb hvx, hxy, hyu, hdrop⟩

/-- All syntax and all reduction strategies; the redex found is in an
    intermediate reduct, not necessarily a redex of the original source. -/
theorem run_erasing_site {t u : Term} (h : Betas t u) (j : Nat)
    (hstart : 0 < occ j t) (hend : occ j u = 0) :
    ∃ (v w : Term) (ctx : Context) (b a : Term),
      Betas t v ∧ Beta v w ∧ Betas w u ∧
      v = ctx.fill (.app (.lam b) a) ∧
      w = ctx.fill (contract b a) ∧
      occ 0 b = 0 ∧ 0 < occ (j + ctxDepth ctx) a := by
  obtain ⟨v, w, htv, hvw, hwu, hdrop⟩ := run_loss_step h j (by omega)
  obtain ⟨ctx, b, a, hv, hw, hb, ha⟩ := beta_loss_site hvw j hdrop
  exact ⟨v, w, ctx, b, a, htv, hvw, hwu, hv, hw, hb, ha⟩

#print axioms contract_loses_iff
#print axioms beta_loss_site
#print axioms run_loss_step
#print axioms run_erasing_site
end Blc.JErase
