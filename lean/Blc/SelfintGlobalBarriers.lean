/-
Parameterized barriers for the global floor, rather than enumerations. A
self-interpreter's projection `E K` is a value decoder, so a value-decoder
size bound transfers at a 9-bit discount; the guard wrapper preserves the
self-interpreter contract and cannot join any root-variable law, with a
192-bit concrete guard of the 162; contract-only conversions reduce to
minimum bookkeeping (`semantic_conversion_iff`). This module proves no
numerical global floor above the existing record.
`docs/classical/self-interpreter/global-floor.md`.
-/
import Blc.Selfint162
import Blc.SelfintControl
import Blc.SelfintWireCost
import Blc.SelfintRemainderChain

namespace Blc.SelfintGlobalBarriers
open Term SelfintControl SelfintWireCost

set_option maxRecDepth 4096
set_option maxHeartbeats 800000

/-- Full value projection: arbitrary closed sources, arbitrary suffixes. -/
def IsValueDecoder (D : Term) : Prop := Closed D ∧
  ∀ M, Closed M → ∀ N,
    BetaJoin (.app D (streamOf (blcCode M) N)) (.lam M)

def ValueSizeBound (n : Nat) : Prop :=
  ∀ D, IsValueDecoder D → n ≤ wire D

theorem projection_value {E : Term} (hE : IsSelfInterpreter E) :
    IsValueDecoder (.app E churchTrue) := by
  refine ⟨⟨hE.1, by decide⟩, ?_⟩
  intro M hM N
  exact join_trans (contract_join hE hM churchTrue N)
    (join_of_betas (betas_of_spineReds (spine_true2 (.lam M) N)))

/-- The value selector is seven bits; its application adds two. -/
theorem projection_value_size (E : Term) :
    wire (.app E churchTrue) = wire E + 9 := by
  simp [wire, blcCode, churchTrue, List.length_append]

theorem value_bound_transfers (n : Nat) (hn : ValueSizeBound n) :
    SelfintSizeBound (n - 9) := by
  intro E hE
  have h := hn (.app E churchTrue) (projection_value hE)
  rw [projection_value_size] at h
  change n - 9 ≤ wire E
  omega

theorem value_bound_ceiling (n : Nat) (hn : ValueSizeBound n) : n ≤ 171 := by
  have h := hn (.app intL162 churchTrue)
    (projection_value isSelfInterpreter_intL162)
  rw [projection_value_size] at h
  have hs : wire intL162 = 162 := by
    change (blcCode intL162).length = 162
    rw [wire_intL162]
    exact intL162_size
  omega

theorem value_transfer_ceiling (n : Nat) (hn : ValueSizeBound n) :
    n - 9 ≤ 162 := by
  have := value_bound_ceiling n hn
  omega

theorem remainder_transfer_ceiling (n : Nat)
    (hn : SelfintRemainderChain.RemainderSizeBound n) : n - 8 ≤ 62 := by
  have := SelfintRemainderChain.remainder_bound_at_most_seventy n hn
  omega

/-- The first-bit guard. E is inserted literally and assumed closed. -/
def guard (E : Term) : Term :=
  .lam (.lam
    (.app (.app (.app (.var 0) churchTrue)
      (.app (.app E (.var 1)) (.var 0))) (.var 0)))

theorem guard_size (E : Term) : wire (guard E) = wire E + 30 := by
  simp [guard, wire, blcCode, churchTrue, List.length_append]

theorem guard_closed {E : Term} (hE : Closed E) : Closed (guard E) := by
  have he : FreeUnder 2 E := freeUnder_mono (by omega) hE
  change FreeUnder 2 _
  exact ⟨⟨⟨by decide, by decide⟩, ⟨⟨he, by decide⟩, by decide⟩⟩, by decide⟩

/-- Two public contractions; the closed inserted term is unchanged. -/
theorem guard_apply {E : Term} (hE : Closed E) (C S : Term) :
    Betas (.app (.app (guard E) C) S)
      (.app (.app (.app S churchTrue) (.app (.app E C) S)) S) := by
  have he (j : Nat) (A : Term) : substDec j A E = E := substDec_closed j A hE
  have hk (j : Nat) (A : Term) : substDec j A churchTrue = churchTrue :=
    substDec_closed j A (by decide)
  unfold guard
  apply betas_trans (betas_appL S (.head (.beta _ _) (.refl _)))
  simp only [contract, substDec, he, hk]
  simp only [Nat.reduceAdd, Nat.reduceEqDiff, Nat.reduceGT, if_false, if_true]
  apply betas_trans (.head (.beta _ _) (.refl _))
  simp only [contract, substDec, he, hk, substDec_shift]
  simp
  exact .refl _

theorem first_bit (b R : Term) :
    Betas (.app (pairT b R) churchTrue) b := by
  exact betas_trans (betas_of_spineReds (spine_pairT b R churchTrue))
    (betas_of_spineReds (spine_true2 b R))

theorem guard_zero {E : Term} (hE : Closed E) (C R : Term) :
    Betas (.app (.app (guard E) C) (pairT churchTrue R))
      (.app (.app E C) (pairT churchTrue R)) := by
  apply betas_trans (guard_apply hE C (pairT churchTrue R))
  apply betas_trans (betas_appL _ (betas_appL _ (first_bit churchTrue R)))
  exact betas_of_spineReds (spine_true2 _ _)

theorem guard_one {E : Term} (hE : Closed E) (C R : Term) :
    Betas (.app (.app (guard E) C) (pairT churchFalse R))
      (pairT churchFalse R) := by
  apply betas_trans (guard_apply hE C (pairT churchFalse R))
  apply betas_trans (betas_appL _ (betas_appL _ (first_bit churchFalse R)))
  exact betas_of_spineReds (spine_false2 _ _)

theorem closed_code_zero {M : Term} (hM : Closed M) :
    ∃ bs, blcCode M = false :: bs := by
  cases M with
  | var n => exact False.elim (by change n < 0 at hM; omega)
  | lam b => exact ⟨false :: blcCode b, rfl⟩
  | app f a => exact ⟨true :: (blcCode f ++ blcCode a), rfl⟩

theorem guard_contract {E : Term} (hE : IsSelfInterpreter E) :
    IsSelfInterpreter (guard E) := by
  refine ⟨guard_closed hE.1, ?_⟩
  intro M hM
  obtain ⟨bs, hcode⟩ := closed_code_zero hM
  have hr := guard_zero hE.1 (.var 0) (streamOf bs (.var 1))
  have hs : streamOf (blcCode M) (.var 1) =
      pairT churchTrue (streamOf bs (.var 1)) := by
    rw [hcode, streamOf_cons]
    rfl
  rw [← hs] at hr
  exact join_trans (join_of_betas hr) (hE.2 M hM)

def unary0 : Term := pairT churchTrue (.var 1)
def unary1 : Term := pairT churchFalse unary0
def variableOutput : Term := .app (.app (.var 0) unary0) (.var 1)

/-- A necessary off-domain law of every literal separated assembly.
The bridge from the assembly definition is proved in the accompanying report. -/
def RootVariableLaw (E : Term) : Prop :=
  BetaJoin (.app (.app E (.var 0)) unary1) variableOutput

theorem guard_not_root_variable {E : Term} (hE : Closed E) :
    ¬ RootVariableLaw (guard E) := by
  intro h
  have hr := guard_one hE (.var 0) unary0
  have bad : BetaJoin unary1 variableOutput :=
    join_trans (join_symm (join_of_betas hr)) h
  have hn1 : NormalForm unary1 := fun _ hb => nft_no_beta (by decide) hb
  have hn2 : NormalForm variableOutput := fun _ hb => nft_no_beta (by decide) hb
  obtain ⟨w, h1, h2⟩ := bad
  have he := (normalForm_betas_eq hn1 h1).symm.trans (normalForm_betas_eq hn2 h2)
  cases he

theorem guard_not_join_root_variable {E F : Term} (hE : Closed E)
    (hF : RootVariableLaw F) : ¬ BetaJoin (guard E) F := by
  intro h
  apply guard_not_root_variable hE
  exact join_trans (join_appL unary1 (join_appL (.var 0) h)) hF

theorem concrete_guard : IsSelfInterpreter (guard intL162) ∧
    wire (guard intL162) = 192 ∧ ¬ RootVariableLaw (guard intL162) := by
  refine ⟨guard_contract isSelfInterpreter_intL162, ?_,
    guard_not_root_variable intL162_closed⟩
  rw [guard_size]
  change (blcCode intL162).length + 30 = 192
  rw [wire_intL162, intL162_size]

/- Contract-only conversion: abstract minimum bookkeeping. -/
theorem semantic_conversion_iff
    {A : Type} (P Q : A → Prop) (size : A → Nat)
    (e q : A) (he : P e) (hq : Q q)
    (emin : ∀ x, P x → size e ≤ size x)
    (qmin : ∀ x, Q x → size q ≤ size x) (d : Nat) :
    (∃ f : A → A, ∀ x, P x → Q (f x) ∧ size (f x) ≤ size x + d) ↔
      size q ≤ size e + d := by
  constructor
  · rintro ⟨f, hf⟩
    obtain ⟨hqe, hse⟩ := hf e he
    exact Nat.le_trans (qmin (f e) hqe) hse
  · intro hs
    refine ⟨fun _ => q, ?_⟩
    intro x hx
    exact ⟨hq, Nat.le_trans hs (Nat.add_le_add_right (emin x hx) d)⟩

#print axioms projection_value
#print axioms value_bound_transfers
#print axioms guard_contract
#print axioms guard_not_join_root_variable
#print axioms concrete_guard
#print axioms semantic_conversion_iff

/-- Pins to the independently exported ASCII BLC artifacts. -/
theorem guard_wire : blcCode (guard intL162) = [false, false, false, false, false, true, false, true, false, true, true, false, false, false, false, false, true, true, false, false, true, false, true, false, true, false, false, false, true, true, false, true, false, false, false, false, true, false, false, false, false, false, false, false, true, false, true, false, true, true, false, false, false, true, false, false, false, false, true, false, true, true, true, false, false, false, true, true, true, true, false, false, true, false, true, true, true, false, true, true, false, true, false, false, false, false, true, true, true, true, true, false, false, false, false, true, false, true, true, true, false, false, true, true, true, true, true, false, false, false, false, false, false, true, true, true, true, false, false, false, false, false, false, true, false, true, true, true, false, true, true, true, false, false, true, true, false, true, true, true, true, false, false, true, true, true, true, true, true, false, false, false, false, true, true, true, true, true, true, false, false, false, false, true, false, true, true, true, true, false, true, false, false, true, true, true, false, true, false, false, true, true, false, true, false, true, true, false, true, false, true, false] := by decide

end Blc.SelfintGlobalBarriers
