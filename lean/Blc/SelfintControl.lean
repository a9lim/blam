/-
An exact self-interpreter cannot be its own self-application.

This uses only the public IsSelfInterpreter contract, beta confluence,
and two projections of the Scott quotation of the identity. It imposes no
parser architecture or assumption about the interpreter's normal form.
-/
import Blc.SelfintProof
import Blc.Confluence

namespace Blc.SelfintControl
open Term

theorem join_refl (t : Term) : BetaJoin t t := ⟨t, .refl t, .refl t⟩

theorem join_of_betas {t u : Term} (h : Betas t u) : BetaJoin t u :=
  ⟨u, h, .refl u⟩

theorem join_symm {t u : Term} (h : BetaJoin t u) : BetaJoin u t := by
  obtain ⟨w, ht, hu⟩ := h
  exact ⟨w, hu, ht⟩

theorem join_trans {t u v : Term}
    (htu : BetaJoin t u) (huv : BetaJoin u v) : BetaJoin t v := by
  obtain ⟨a, hta, hua⟩ := htu
  obtain ⟨b, hub, hvb⟩ := huv
  obtain ⟨w, haw, hbw⟩ := betas_confluent hua hub
  exact ⟨w, betas_trans hta haw, betas_trans hvb hbw⟩

theorem join_appL (a : Term) {f g : Term}
    (h : BetaJoin f g) : BetaJoin (.app f a) (.app g a) := by
  obtain ⟨w, hf, hg⟩ := h
  exact ⟨.app w a, betas_appL a hf, betas_appL a hg⟩

theorem join_appR (f : Term) {a b : Term}
    (h : BetaJoin a b) : BetaJoin (.app f a) (.app f b) := by
  obtain ⟨w, ha, hb⟩ := h
  exact ⟨.app f w, betas_appR f ha, betas_appR f hb⟩

theorem betas_subst {t u : Term} (h : Betas t u) (j : Nat) (s : Term) :
    Betas (substDec j s t) (substDec j s u) := by
  induction h with
  | refl t => exact .refl _
  | head hb hs ih =>
      obtain ⟨n, hp⟩ := beta_par hb
      exact betas_trans (parN_betas (parN_substDec hp (parN_refl s) j)) ih

theorem betas_inst : ∀ (as : List Term) (j : Nat) {t u : Term},
    Betas t u → Betas (instN as j t) (instN as j u) := by
  intro as
  induction as with
  | nil => intro j t u h; exact h
  | cons a as ih =>
      intro j t u h
      exact betas_subst (ih (j + 1) h) j _

theorem join_inst (as : List Term) (j : Nat) {t u : Term}
    (h : BetaJoin t u) : BetaJoin (instN as j t) (instN as j u) := by
  obtain ⟨w, ht, hu⟩ := h
  exact ⟨instN as j w, betas_inst as j ht, betas_inst as j hu⟩

theorem subst_pairT (j : Nat) (s A P : Term) :
    substDec j s (pairT A P) =
      pairT (substDec j s A) (substDec j s P) := by
  unfold pairT
  simp only [substDec]
  rw [← shift_substDec_lt A s j 0 (Nat.zero_le j),
      ← shift_substDec_lt P s j 0 (Nat.zero_le j)]
  have he : ¬ 0 = j + 1 := by omega
  have hlt : ¬ 0 > j + 1 := by omega
  simp only [he, hlt, if_false]

theorem subst_streamOf (j : Nat) (s : Term) (bits : List Bool) (R : Term) :
    substDec j s (streamOf bits R) =
      streamOf bits (substDec j s R) := by
  induction bits with
  | nil => rfl
  | cons b bs ih =>
      rw [streamOf_cons, subst_pairT, ih, streamOf_cons,
        substDec_closed j s (churchBit_closed b)]

theorem inst_app (as : List Term) (j : Nat) (f a : Term) :
    instN as j (.app f a) = .app (instN as j f) (instN as j a) := by
  induction as generalizing j with
  | nil => rfl
  | cons x xs ih => simp only [instN, ih, substDec]

theorem inst_closed (as : List Term) (j : Nat) {t : Term} (ht : Closed t) :
    instN as j t = t := by
  induction as generalizing j with
  | nil => rfl
  | cons a as ih => simp only [instN, ih, substDec_closed _ _ ht]

theorem inst_streamOf (as : List Term) (j : Nat) (bits : List Bool) (R : Term) :
    instN as j (streamOf bits R) = streamOf bits (instN as j R) := by
  induction as generalizing j with
  | nil => rfl
  | cons a as ih => simp only [instN, ih, subst_streamOf]

/-- The rigid two-placeholder contract entails its instance at arbitrary
continuations and remainders, without assuming directed parser correctness. -/
theorem contract_join {E M : Term} (hE : IsSelfInterpreter E)
    (hM : Closed M) (C N : Term) :
    BetaJoin (.app (.app E C) (streamOf (blcCode M) N))
      (.app (.app C (.lam M)) N) := by
  have hLM : Closed (.lam M) :=
    freeUnder_mono (t := M) (j := 0) (k := 1) (Nat.zero_le 1) hM
  have h := join_inst [C, N] 0 (hE.2 M hM)
  simp only [inst_app, inst_streamOf, inst_closed _ _ hE.1,
    inst_closed _ _ hLM] at h
  simpa [instN, substDec, shift_zero, substDec_shift] using h

def identity : Term := .lam (.var 0)

/-- Quotation of I followed by a supplied suffix: wire bits 0010. -/
def quoteI (R : Term) : Term := streamOf (blcCode identity) R

theorem quoteI_shape (R : Term) :
    quoteI R = pairT churchTrue (pairT churchTrue
      (pairT churchFalse (pairT churchTrue R))) := rfl

theorem identity_contract {E : Term} (hE : IsSelfInterpreter E) (C R : Term) :
    BetaJoin (.app (.app E C) (quoteI R))
      (.app (.app C churchFalse) R) :=
  contract_join hE (by decide : Closed identity) C R

theorem pair_tail (A R : Term) :
    Betas (.app (pairT A R) churchFalse) R :=
  betas_trans (betas_of_spineReds (spine_pairT A R churchFalse))
    (betas_of_spineReds (spine_false2 A R))

theorem quoteI_two_tails (R : Term) :
    Betas (.app (.app (quoteI R) churchFalse) churchFalse)
      (pairT churchFalse (pairT churchTrue R)) := by
  rw [quoteI_shape]
  exact betas_trans
    (betas_appL churchFalse (pair_tail churchTrue _))
    (pair_tail churchTrue _)

private theorem normal_join_eq {t u : Term}
    (ht : NormalForm t) (hu : NormalForm u) (h : BetaJoin t u) : t = u := by
  obtain ⟨w, htw, huw⟩ := h
  exact (normalForm_betas_eq ht htw).symm.trans (normalForm_betas_eq hu huw)

/-- No exact self-interpreter satisfies E E =beta E. -/
theorem selfInterpreter_not_idempotent {E : Term} (hE : IsSelfInterpreter E) :
    ¬ BetaJoin (.app E E) E := by
  intro hEE
  let R : Term := .var 0
  have hcollapse : BetaJoin (.app (.app E E) (quoteI (quoteI R))) R :=
    join_trans (identity_contract hE E (quoteI R))
      (join_trans (identity_contract hE churchFalse R)
        (join_of_betas (betas_of_spineReds (spine_false2 churchFalse R))))
  have hone : BetaJoin (.app E (quoteI (quoteI R))) R :=
    join_trans (join_symm (join_appL (quoteI (quoteI R)) hEE)) hcollapse
  have hext := join_appL (quoteI churchFalse) hone
  have hparse := identity_contract hE (quoteI (quoteI R)) churchFalse
  have hbad : BetaJoin (.app R (quoteI churchFalse))
      (pairT churchFalse (pairT churchTrue (quoteI R))) :=
    join_trans (join_symm hext)
      (join_trans hparse (join_of_betas (quoteI_two_tails (quoteI R))))
  have hleft : NormalForm (.app R (quoteI churchFalse)) :=
    fun _ hb => nft_no_beta (by decide : NFt (.app (.var 0) (quoteI churchFalse))) hb
  have hright : NormalForm
      (pairT churchFalse (pairT churchTrue (quoteI R))) :=
    fun _ hb => nft_no_beta
      (by decide : NFt (pairT churchFalse (pairT churchTrue (quoteI (.var 0))))) hb
  have himpossible := normal_join_eq hleft hright hbad
  cases himpossible

/-- An idempotent control response cannot bootstrap the full exact parser. -/
theorem selfInterpreter_not_idempotent_generator {E G : Term}
    (hE : IsSelfInterpreter E) (hG : BetaJoin (.app G G) G) :
    ¬ BetaJoin (.app G G) E := by
  intro hbootstrap
  have hGE := join_trans (join_symm hG) hbootstrap
  have happs : BetaJoin (.app G G) (.app E E) :=
    join_trans (join_appL G hGE) (join_appR E hGE)
  exact selfInterpreter_not_idempotent hE
    (join_trans (join_symm happs) hbootstrap)

end Blc.SelfintControl
