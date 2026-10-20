/-
Independent semantic projections of a continuation-headed interpreter.
The payloads are arbitrary terms: no normality or parser architecture is
assumed. Any resulting source-size statement applies to this displayed
head form, not to an interpreter that reduces to it.
-/
import Blc.SelfintControl
import Blc.SelfintWireCost
import Blc.SelfintZero

namespace Blc.SelfintProjections
open Term SelfintControl SelfintLowerBound SelfintWireCost

def headForm (A B : Term) : Term :=
  .lam (.lam (.app (.app (.var 1) A) B))

theorem rigid_app_betas {t u : Term} (h : Betas t u) :
    ∀ {f a : Term}, t = .app f a → Rigid f →
      ∃ g b, u = .app g b ∧ Betas f g ∧ Betas a b := by
  induction h with
  | refl t =>
    intro f a ht hf
    exact ⟨f, a, ht, .refl _, .refl _⟩
  | head hb hs ih =>
    intro f a ht hf
    subst ht
    cases hb with
    | beta b a => cases hf
    | appL a hb =>
      obtain ⟨g, b, hu, hg, hba⟩ := ih rfl (rigid_beta hf hb)
      exact ⟨g, b, hu, .head hb hg, hba⟩
    | appR f hb =>
      obtain ⟨g, b, hu, hg, hba⟩ := ih rfl hf
      exact ⟨g, b, hu, hg, .head hb hba⟩

theorem rigid_app_join {f a g b : Term} (hf : Rigid f) (hg : Rigid g)
    (h : BetaJoin (.app f a) (.app g b)) :
    BetaJoin f g ∧ BetaJoin a b := by
  obtain ⟨w, hfw, hgw⟩ := h
  obtain ⟨f', a', hf', hff, haa⟩ := rigid_app_betas hfw rfl hf
  obtain ⟨g', b', hg', hgg, hbb⟩ := rigid_app_betas hgw rfl hg
  have he := hf'.symm.trans hg'
  cases he
  exact ⟨⟨f', hff, hgg⟩, ⟨a', haa, hbb⟩⟩

theorem subst_self (t : Term) (j : Nat) (ht : FreeUnder (j + 1) t) :
    substDec j (.var j) t = t := by
  induction t generalizing j with
  | var n =>
    simp only [substDec]
    split
    · rename_i h; subst n; rfl
    · have hng : ¬ n > j := by change n < j + 1 at ht; omega
      simp only [hng, if_false]
  | lam b ih =>
    simp only [substDec, shift, Nat.zero_le, if_true]
    rw [ih (j + 1) ht]
  | app f a ihf iha =>
    simp only [substDec, ihf j ht.1, iha j ht.2]

theorem head_apply {A B : Term} (hA : FreeUnder 2 A) (hB : FreeUnder 2 B)
    (S : Term) :
    Betas (.app (.app (headForm A B) (.var 0)) S)
      (.app (.app (.var 0) (contract A S)) (contract B S)) := by
  apply Betas.head (.appL S (.beta _ _))
  simp only [contract, substDec, shift, Nat.zero_le, if_true]
  rw [subst_self A 1 hA, subst_self B 1 hB]
  exact .head (.beta _ _) (.refl _)

/-- Rigid projection works even when the decoded source diverges. -/
theorem projection_contract {A B : Term} (h : IsSelfInterpreter (headForm A B))
    {M : Term} (hM : Closed M) (N : Term) :
    BetaJoin (contract A (streamOf (blcCode M) N)) (.lam M) ∧
    BetaJoin (contract B (streamOf (blcCode M) N)) N := by
  have hA : FreeUnder 2 A := h.1.1.2
  have hB : FreeUnder 2 B := h.1.2
  have hc := contract_join h hM (.var 0) N
  have hh := head_apply hA hB (streamOf (blcCode M) N)
  have hj := join_trans (join_symm (join_of_betas hh)) hc
  obtain ⟨hv, hn⟩ := rigid_app_join (.app _ (.var 0)) (.app _ (.var 0)) hj
  exact ⟨(rigid_app_join (.var 0) (.var 0) hv).2, hn⟩

/-- Fix the unused public continuation to I, leaving only the stream slot. -/
def payload (B : Term) : Term := substDec 1 identity B

theorem payload_free {B : Term} (hB : FreeUnder 2 B) :
    FreeUnder 1 (payload B) := by
  have h : FreeUnder 0 (.app (.lam (.lam B)) identity) :=
    ⟨hB, by decide⟩
  have h' := beta_freeUnder (.beta (.lam B) identity) 0 h
  simpa only [contract, substDec, shift_closed 1 0 (by decide : Closed identity),
    FreeUnder, payload] using h'

theorem payload_nonlinear (B : Term) : nonlinear (payload B) = nonlinear B := by
  simp only [payload, nonlinear_subst]
  have h : nonlinear identity = 0 := by decide
  simp only [h, Nat.mul_zero, Nat.add_zero]

theorem payload_contract {A B : Term} (h : IsSelfInterpreter (headForm A B))
    {M N : Term} (hM : Closed M) (hN : Closed N) :
    BetaJoin (contract (payload A) (streamOf (blcCode M) N)) (.lam M) ∧
    BetaJoin (contract (payload B) (streamOf (blcCode M) N)) N := by
  have hS : Closed (streamOf (blcCode M) N) := streamOf_closed _ hN
  have hLM : Closed (.lam M) := closed_freeUnder hM 1
  obtain ⟨ha, hb⟩ := projection_contract h hM N
  have lift : ∀ P T, Closed T →
      BetaJoin (contract P (streamOf (blcCode M) N)) T →
      BetaJoin (contract (payload P) (streamOf (blcCode M) N)) T := by
    intro P T hT hj
    have hj' := join_inst [identity] 0 hj
    simp only [instN, shift_zero, substDec_contract,
      shift_closed 1 0 (by decide : Closed identity), substDec_closed _ _ hS,
      substDec_closed _ _ hT] at hj'
    exact hj'
  exact ⟨lift A (.lam M) hLM ha, lift B N hN hb⟩

private def omegaTerm : Term :=
  .app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))

private theorem omega_beta_eq {u : Term} (h : Beta omegaTerm u) : u = omegaTerm := by
  have hs := headStep_complete (spine_beta_head (Spine.redex (by decide) (by decide)) h)
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
  exact hnf _ (.beta _ _)

/-- The value payload itself needs two nonlinear binders, excluding
both public interface binders. Its stream input is binder-affine. -/
theorem value_two_nonlinear {A B : Term} (h : IsSelfInterpreter (headForm A B)) :
    2 ≤ nonlinear A := by
  apply Nat.le_of_not_lt
  intro hn
  let S := streamOf (blcCode omegaTerm) (.var 0)
  have hs : nonlinear (contract A S) ≤ 1 := by
    simp only [contract, nonlinear_subst, S, nonlinear_stream, nonlinear,
      Nat.mul_zero, Nat.add_zero]
    omega
  obtain ⟨nf, hr, hnft⟩ := one_nonlinear_normalizes (contract A S) hs
  have hnf : NormalForm nf := fun _ hb => nft_no_beta hnft hb
  obtain ⟨w, hw, ho⟩ := (projection_contract h (by decide : Closed omegaTerm) (.var 0)).1
  obtain ⟨v, hv, hnv⟩ := betas_preserve_hasNormalForm hw ⟨nf, hr, hnf⟩
  exact omega_no_nf (lam_betas_nf (betas_trans ho hv) hnv rfl)

/-- The remainder payload independently needs two nonlinear binders.
This invokes finite-prefix simulation of the infinite zero stream. -/
theorem remainder_two_nonlinear {A B : Term} (h : IsSelfInterpreter (headForm A B)) :
    2 ≤ nonlinear B := by
  have hp := SelfintZero.remainder_body_two_nonlinear (payload B)
    (payload_free h.1.2)
    (fun M hM N hN => (payload_contract h hM hN).2)
  simpa only [payload_nonlinear] using hp

theorem four_interior_nonlinear {A B : Term} (h : IsSelfInterpreter (headForm A B)) :
    4 ≤ nonlinear A + nonlinear B := by
  have ha := value_two_nonlinear h
  have hb := remainder_two_nonlinear h
  omega

theorem freeLeaves_zero_closed (t : Term) (c : Nat) (h : freeLeaves c t = 0) :
    FreeUnder c t := by
  induction t generalizing c with
  | var n =>
    simp only [freeLeaves] at h
    split at h
    · contradiction
    · rename_i hn; exact Nat.lt_of_not_ge hn
  | lam b ih => exact ih (c + 1) h
  | app f a ihf iha =>
    simp only [freeLeaves] at h
    exact ⟨ihf c (by omega), iha c (by omega)⟩

private theorem normal_join_eq {t u : Term}
    (ht : NFt t) (hu : NFt u) (h : BetaJoin t u) : t = u := by
  obtain ⟨w, hw, hw'⟩ := h
  have hnt : NormalForm t := fun _ hb => nft_no_beta ht hb
  have hnu : NormalForm u := fun _ hb => nft_no_beta hu hb
  exact (normalForm_betas_eq hnt hw).symm.trans (normalForm_betas_eq hnu hw')

theorem subst_absent (t : Term) (j : Nat) (s u : Term) (h : occ j t = 0) :
    substDec j s t = substDec j u t := by
  induction t generalizing j s u with
  | var n =>
    have hn : n ≠ j := by intro he; simp [occ, he] at h
    simp only [substDec, hn, if_false]
  | lam b ih => exact congrArg Term.lam (ih (j + 1) _ _ h)
  | app f a ihf iha =>
    simp only [occ] at h
    simp only [substDec, ihf j s u (by omega), iha j s u (by omega)]

theorem value_stream_occ {A B : Term} (h : IsSelfInterpreter (headForm A B)) :
    1 ≤ occ 0 A := by
  apply Nat.le_of_not_lt
  intro hn
  have hi := (projection_contract h (by decide : Closed identity) (.var 0)).1
  have hk := (projection_contract h (by decide : Closed churchTrue) (.var 0)).1
  have he := subst_absent A 0 (streamOf (blcCode identity) (.var 0))
    (streamOf (blcCode churchTrue) (.var 0)) (by omega)
  change contract A _ = contract A _ at he
  rw [he] at hi
  have heq := normal_join_eq (by decide : NFt (.lam identity))
    (by decide : NFt (.lam churchTrue)) (join_trans (join_symm hi) hk)
  cases heq

theorem remainder_stream_occ {A B : Term} (h : IsSelfInterpreter (headForm A B)) :
    1 ≤ occ 0 B := by
  apply Nat.le_of_not_lt
  intro hn
  have hi := (projection_contract h (by decide : Closed identity) (.var 0)).2
  have hk := (projection_contract h (by decide : Closed identity) (.var 1)).2
  have he := subst_absent B 0 (streamOf (blcCode identity) (.var 0))
    (streamOf (blcCode identity) (.var 1)) (by omega)
  change contract B _ = contract B _ at he
  rw [he] at hi
  have heq := normal_join_eq (by decide : NFt (.var 0))
    (by decide : NFt (.var 1)) (join_trans (join_symm hi) hk)
  cases heq

/-- The public stream binder is nonlinear as well as four interior
binders. This counts syntax in the displayed head form only. -/
theorem headForm_five_nonlinear {A B : Term} (h : IsSelfInterpreter (headForm A B)) :
    5 ≤ nonlinear (headForm A B) := by
  have hna := value_two_nonlinear h
  have hnb := remainder_two_nonlinear h
  have hoa := value_stream_occ h
  have hob := remainder_stream_occ h
  have hs : 1 < occ 0 A + occ 0 B := by omega
  simp only [headForm, nonlinear, occ,
    show ¬ (1 : Nat) = 0 by decide, if_false, Nat.zero_add, hs, if_pos]
  omega

theorem value_free_leaf {A B : Term} (h : IsSelfInterpreter (headForm A B)) :
    1 ≤ freeLeaves 0 A := by
  apply Nat.le_of_not_lt
  intro hn
  have hc : Closed A := freeLeaves_zero_closed A 0 (by omega)
  have hi := (projection_contract h (by decide : Closed identity) (.var 0)).1
  have hk := (projection_contract h (by decide : Closed churchTrue) (.var 0)).1
  simp only [contract, substDec_closed _ _ hc] at hi hk
  have he := normal_join_eq (by decide : NFt (.lam identity))
    (by decide : NFt (.lam churchTrue)) (join_trans (join_symm hi) hk)
  cases he

theorem remainder_free_leaf {A B : Term} (h : IsSelfInterpreter (headForm A B)) :
    1 ≤ freeLeaves 0 B := by
  apply Nat.le_of_not_lt
  intro hn
  have hc : Closed B := freeLeaves_zero_closed B 0 (by omega)
  have hi := (projection_contract h (by decide : Closed identity) identity).2
  have hk := (projection_contract h (by decide : Closed identity) churchTrue).2
  simp only [contract, substDec_closed _ _ hc] at hi hk
  have he := normal_join_eq (by decide : NFt identity)
    (by decide : NFt churchTrue) (join_trans (join_symm hi) hk)
  cases he

/-- This prices only an interpreter already in the displayed head form.
Beta expansion of that form can be shorter, so this is not a global bound. -/
theorem headForm_fifty_five {A B : Term} (h : IsSelfInterpreter (headForm A B)) :
    55 ≤ (blcCode (headForm A B)).length := by
  have hna := value_two_nonlinear h
  have hnb := remainder_two_nonlinear h
  have hfa := value_free_leaf h
  have hfb := remainder_free_leaf h
  have hwa := nonlinear_wire_bound A
  have hwb := nonlinear_wire_bound B
  simp only [headForm, blcCode, List.length_cons, List.length_append,
    List.length_replicate, List.length_nil]
  omega

end Blc.SelfintProjections
