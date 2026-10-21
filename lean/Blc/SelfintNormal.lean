/-
A beta-normal classical BLC self-interpreter of 204 bits.
Adapted from Blc.Selfint165's parser proof; source-derived generator and
root gate are new. This improves the old 712-bit normal-form witness,
not the unrestricted 165-bit interpreter bound.

The generator uses the actual first tag to activate a shared recursive
parser binding. The public root uses the first zero of every closed code
to activate its fixed point. Neither source contains a beta redex.

The literal wire pins the unoptimized source in
`data/self-interpreter/machines/int204_normal.lam`.
-/
import Blc.Selfint165
namespace Blc
open Term
set_option maxRecDepth 100000
set_option maxHeartbeats 4000000
def generator204 : Term := (.lam (.lam (.lam (.app (.app (.var 0) (.lam (.app (.app (.app (.var 0) (.lam (.lam (.lam (.app (.var 0) (.lam (.app (.var 3) (.lam (.app (.app (.var 1) (.app (.var 7) (.lam (.lam (.app (.var 2) (.lam (.lam (.app (.app (.var 1) (.var 2)) (.app (.var 0) (.var 3)))))))))) (.app (.var 4) (.lam (.app (.var 8) (.lam (.app (.app (.var 2) (.var 0)) (.app (.var 1) (.var 0)))))))))))))))) (.lam (.var 3))) (.app (.var 3) (.var 3))))) (.app (.app (.var 0) (.var 0)) (.var 0))))))
def parser204 : Term := .app generator204 generator204
def intL204 : Term := (.lam (.lam (.app (.app (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.app (.var 0) (.var 0))))) (.var 0)))) generator204) (.var 1)) (.var 0))))

theorem parser204_closed : Closed parser204 := by decide
theorem intL204_closed : Closed intL204 := by decide
theorem shift_parser204 (d c : Nat) : shift d c parser204 = parser204 :=
  shift_closed d c parser204_closed
theorem substDec_parser204 (j : Nat) (s : Term) : substDec j s parser204 = parser204 :=
  substDec_closed j s parser204_closed

/-- The zero branch's `next`, with `cont` free at index `c` and `intL`
resolved to the parser. -/
def next204 (c : Nat) : Term :=
  .lam (.app parser204 (.lam (.app (.app (.var 1) (.app (.var (c + 2)) absVt))
    (.app parser204 (.lam (.app (.var (c + 3)) appVt))))))

def hndc204 : Term := (.lam (.app (.app (.app (.var 0) (.lam (.lam (.lam (.app (.var 0) (.lam (.app (.var 3) (.lam (.app (.app (.var 1) (.app (.var 6) (.lam (.lam (.app (.var 2) (.lam (.lam (.app (.app (.var 1) (.var 2)) (.app (.var 0) (.var 3)))))))))) (.app (.var 4) (.lam (.app (.var 7) (.lam (.app (.app (.var 2) (.var 0)) (.app (.var 1) (.var 0)))))))))))))))) (.lam (.var 2))) parser204))

/-- The first parse's continuation, with `cont` free at index 0 and the
second tag bit `b` substituted (the 168's `kont`, calling this parser). -/
def kont204 (b : Term) : Term :=
  .lam (.app (.app b (.app (.var 1) absVt)) (.app parser204 (.lam (.app (.var 2) appVt))))

theorem substDec_hndc204 (j : Nat) (s : Term) (h : 1 ≤ j) : substDec j s hndc204 = hndc204 :=
  substDec_of_freeUnder _ j s (freeUnder_mono h (by decide))

theorem substDec_next204 (j : Nat) (s : Term) (h : 1 ≤ j) :
    substDec j s (next204 0) = next204 0 :=
  substDec_of_freeUnder _ j s (freeUnder_mono h (by decide))

theorem substDec_kont204T (j : Nat) (s : Term) (h : 1 ≤ j) :
    substDec j s (kont204 churchTrue) = kont204 churchTrue :=
  substDec_of_freeUnder _ j s (freeUnder_mono h (by decide))

theorem substDec_kont204F (j : Nat) (s : Term) (h : 1 ≤ j) :
    substDec j s (kont204 churchFalse) = kont204 churchFalse :=
  substDec_of_freeUnder _ j s (freeUnder_mono h (by decide))

/-- The reader, closed over `cont = K`. -/
def hnd204 (K : Term) : Term := substDec 0 K hndc204

/-- The zero branch's `next`, closed over `cont = K`. -/
def nxt204 (K : Term) : Term := substDec 0 K (next204 0)

/-- ABS's continuation, closed over `cont = K`. -/
def kA204 (K : Term) : Term := substDec 0 K (kont204 churchTrue)

/-- APP's first continuation, closed over `cont = K`. -/
def kB204 (K : Term) : Term := substDec 0 K (kont204 churchFalse)

-- ---------------------------------------------------------------------------
-- §2. The machine runs, replayed by the kernel on placeholder terms.

/-- The parser unfolds and runs the stream on the reader and `s s s`. -/
theorem run_unfold204 :
    spineSteps 3 (.app (.app parser204 (.var 0)) (.var 1))
      = some (.app (.app (.var 1) hndc204) (.app (.app (.var 1) (.var 1)) (.var 1))) := by
  decide

/-- Tag `1`: VAR returns `cont list S`. -/
theorem run_var204 :
    spineSteps 5 (.app (.app (pairT churchFalse (.var 1)) hndc204) (.var 2))
      = some (.app (.app (.var 0) (.var 1)) (.var 2)) := by
  decide

/-- Tag `0`: the reader hands `next` to `S`. -/
theorem run_zero204 :
    spineSteps 7 (.app (.app (pairT churchTrue (.var 1)) hndc204) (.var 2))
      = some (.app (.var 2) (next204 0)) := by
  decide

/-- Tags `00`: ABS parses its body under the ABS continuation. -/
theorem run_lam204 :
    spineSteps 2 (.app (pairT churchTrue (.var 1)) (next204 0))
      = some (.app (.app parser204 (kont204 churchTrue)) (.var 1)) := by
  decide

/-- Tags `01`: APP parses its function under the APP continuation. -/
theorem run_app204 :
    spineSteps 2 (.app (pairT churchFalse (.var 1)) (next204 0))
      = some (.app (.app parser204 (kont204 churchFalse)) (.var 1)) := by
  decide

/-- ABS returns its value. -/
theorem run_retLam204 :
    spineSteps 3 (.app (.app (kont204 churchTrue) (.var 1)) (.var 2))
      = some (.app (.app (.var 0) absVc) (.var 2)) := by
  decide

/-- APP's first parse continues into the second. -/
theorem run_retApp1_204 :
    spineSteps 3 (.app (.app (kont204 churchFalse) (.var 1)) (.var 2))
      = some (.app (.app parser204 kont2) (.var 2)) := by
  decide

-- ---------------------------------------------------------------------------
-- §3. The runs, lifted to arbitrary continuations, tails and closures.

theorem spine_unfold204 (K s : Term) :
    SpineReds (.app (.app parser204 K) s) (.app (.app s (hnd204 K)) (.app (.app s s) s)) := by
  have h := spineReds_instN [K, s] 0 (spineReds_of_spineSteps _ run_unfold204)
  simpa [instN, hnd204, substDec, shift, substDec_parser204, substDec_hndc204, substDec_shift0,
    shift_zero] using h

/-- Tag `1`: `(1:r) (hnd K) S → K r S`. -/
theorem spine_var204 (K r S : Term) :
    SpineReds (.app (.app (pairT churchFalse r) (hnd204 K)) S) (.app (.app K r) S) := by
  have h := spineReds_instN [K, r, S] 0 (spineReds_of_spineSteps _ run_var204)
  simpa [instN, hnd204, pairT, substDec, shift, shift_churchFalse, substDec_churchFalse,
    substDec_hndc204, shift_shift0, substDec_shift0, shift_zero] using h

/-- Tag `0`: `(0:r) (hnd K) S → S (next K)`. -/
theorem spine_zero204 (K r S : Term) :
    SpineReds (.app (.app (pairT churchTrue r) (hnd204 K)) S) (.app S (nxt204 K)) := by
  have h := spineReds_instN [K, r, S] 0 (spineReds_of_spineSteps _ run_zero204)
  simpa [instN, hnd204, nxt204, pairT, substDec, shift, shift_churchTrue, substDec_churchTrue,
    substDec_hndc204, substDec_next204, shift_shift0, substDec_shift0, shift_zero] using h

/-- Tags `00`: `(0:r) (next K) → P (kA K) r`. -/
theorem spine_lam204 (K r : Term) :
    SpineReds (.app (pairT churchTrue r) (nxt204 K)) (.app (.app parser204 (kA204 K)) r) := by
  have h := spineReds_instN [K, r] 0 (spineReds_of_spineSteps _ run_lam204)
  simpa [instN, nxt204, kA204, pairT, substDec, shift, shift_parser204, substDec_parser204,
    shift_churchTrue, substDec_churchTrue, substDec_next204, substDec_kont204T, shift_shift0,
    substDec_shift0, shift_zero] using h

/-- Tags `01`: `(1:r) (next K) → P (kB K) r`. -/
theorem spine_app204 (K r : Term) :
    SpineReds (.app (pairT churchFalse r) (nxt204 K)) (.app (.app parser204 (kB204 K)) r) := by
  have h := spineReds_instN [K, r] 0 (spineReds_of_spineSteps _ run_app204)
  simpa [instN, nxt204, kB204, pairT, substDec, shift, shift_parser204, substDec_parser204,
    shift_churchFalse, substDec_churchFalse, substDec_next204, substDec_kont204F, shift_shift0,
    substDec_shift0, shift_zero] using h

theorem ret_lam204 (K e u : Term) :
    SpineReds (.app (.app (kA204 K) e) u) (.app (.app K (absV e)) u) := by
  have h := spineReds_instN [K, e, u] 0 (spineReds_of_spineSteps _ run_retLam204)
  simpa [instN, kA204, absV, absVc, consP, substDec, shift, substDec_kont204T,
    shift_shift0, substDec_shift0, shift_zero] using h

theorem ret_app1_204 (K e u : Term) :
    SpineReds (.app (.app (kB204 K) e) u) (.app (.app parser204 (kC K e)) u) := by
  have h := spineReds_instN [K, e, u] 0 (spineReds_of_spineSteps _ run_retApp1_204)
  simpa [instN, kB204, kC, substDec, shift, substDec_parser204, substDec_kont204F, substDec_kont2,
    shift_shift0, substDec_shift0, shift_zero] using h


/-- The open parser theorem for the 204: for every term `M` and tail
`R`, one closure `λ.B` denoting and implementing `M`, and for every
third argument `S` that reaches the stream past the first `0`, one
residual `U` spine-reducing to `R` such that, for EVERY continuation
`K`, the stream run on the reader and `S` spine-reduces to `K (λ.B) U`. -/
theorem parse204 : ∀ (M R : Term), ∃ B, Den M B ∧ Implements (.lam B) M ∧
    ∀ S, SpineReds S (pastZero M R) → ∃ U, SpineReds U R ∧
      ∀ K, SpineReds (.app (.app (streamOf (blcCode M) R) (hnd204 K)) S)
        (.app (.app K (.lam B)) U) := by
  intro M
  induction M with
  | var i =>
      intro R
      rw [code_var, streamOf_cons]
      have himpl : Implements (streamOf (vbits i) R) (.var i) := by
        intro env R' h
        exact headReduces_of_spineReds (engine i env R' R _ (List.getElem?_eq_getElem h))
      cases i with
      | zero =>
          exact ⟨_, den_var0 R, himpl, fun S hS =>
            ⟨S, hS, fun K => spine_var204 K (streamOf (vbits 0) R) S⟩⟩
      | succ j =>
          rw [stream_vbits_succ] at himpl ⊢
          exact ⟨_, den_varS j R, himpl, fun S hS =>
            ⟨S, hS, fun K => spine_var204 K _ S⟩⟩
  | lam M ih =>
      intro R
      obtain ⟨B, hD, hI, hP⟩ := ih R
      refine ⟨_, den_lam hD, ⟨.lam B, hI, fun ρ a =>
        headReduces_of_spineReds (spine_absImpl (.lam B) ρ a)⟩, fun S hS => ?_⟩
      obtain ⟨U, hU, hK⟩ := hP _ (pastZero_self M R _ (SpineReds.refl _))
      refine ⟨U, hU, fun K => ?_⟩
      have hS' : SpineReds S (pairT churchTrue (streamOf (blcCode M) R)) := hS
      show SpineReds (.app (.app (pairT churchTrue (pairT churchTrue (streamOf (blcCode M) R)))
        (hnd204 K)) S) _
      refine spineReds_trans (spine_zero204 K _ S) ?_
      refine spineReds_trans (spineReds_appL _ hS') ?_
      refine spineReds_trans (spine_lam204 K _) ?_
      refine spineReds_trans (spine_unfold204 (kA204 K) _) ?_
      exact spineReds_trans (hK (kA204 K)) (ret_lam204 K (.lam B) U)
  | app M N ihM ihN =>
      intro R
      obtain ⟨B₁, hD₁, hI₁, hP₁⟩ := ihM (streamOf (blcCode N) R)
      obtain ⟨B₂, hD₂, hI₂, hP₂⟩ := ihN R
      refine ⟨_, den_app hD₁ hD₂, ⟨.lam B₁, .lam B₂, hI₁, hI₂, fun ρ =>
        headReduces_of_spineReds (spine_appImpl (.lam B₁) (.lam B₂) ρ)⟩, fun S hS => ?_⟩
      obtain ⟨U₁, hU₁, hK₁⟩ := hP₁ _ (pastZero_self M _ _ (SpineReds.refl _))
      obtain ⟨U₂, hU₂, hK₂⟩ := hP₂ _ (pastZero_self N R U₁ hU₁)
      refine ⟨U₂, hU₂, fun K => ?_⟩
      have hS' : SpineReds S
          (pairT churchFalse (streamOf (blcCode M) (streamOf (blcCode N) R))) := by
        have e : pastZero (.app M N) R
            = pairT churchFalse (streamOf (blcCode M) (streamOf (blcCode N) R)) := by
          simp only [pastZero, streamOf_cons, streamOf_append]; rfl
        rw [← e]; exact hS
      show SpineReds (.app (.app
        (pairT churchTrue (pairT churchFalse (streamOf (blcCode M ++ blcCode N) R)))
        (hnd204 K)) S) _
      rw [streamOf_append]
      refine spineReds_trans (spine_zero204 K _ S) ?_
      refine spineReds_trans (spineReds_appL _ hS') ?_
      refine spineReds_trans (spine_app204 K _) ?_
      refine spineReds_trans (spine_unfold204 (kB204 K) _) ?_
      refine spineReds_trans (hK₁ (kB204 K)) ?_
      refine spineReds_trans (ret_app1_204 K (.lam B₁) U₁) ?_
      refine spineReds_trans (spine_unfold204 (kC K (.lam B₁)) U₁) ?_
      refine spineReds_trans (spineReds_appL _ (spineReds_appL _ hU₁)) ?_
      exact spineReds_trans (hK₂ (kC K (.lam B₁))) (ret_app2 K (.lam B₁) (.lam B₂) U₂)

theorem parser204_parse : Parses parser204 := by
  intro M R
  obtain ⟨B, hD, hI, hP⟩ := parse204 M R
  obtain ⟨U, hU, hK⟩ := hP _ (pastZero_self M R _ (SpineReds.refl _))
  exact ⟨B, U, hD, hI, hU, fun C => spineReds_trans (spine_unfold204 C _) (hK C)⟩


/-- The public root uses the first K of every closed source to trigger recursion. -/
theorem run_root204 :
    spineSteps 8 (.app (.app intL204 (.var 0)) (pairT churchTrue (.var 1)))
      = some (.app (.app parser204 (.var 0)) (pairT churchTrue (.var 1))) := by decide

theorem substDec_intL204 (j : Nat) (s : Term) : substDec j s intL204 = intL204 :=
  substDec_closed j s intL204_closed

theorem spine_root204 (C R : Term) :
    SpineReds (.app (.app intL204 C) (pairT churchTrue R))
      (.app (.app parser204 C) (pairT churchTrue R)) := by
  have h := spineReds_instN [C, R] 0 (spineReds_of_spineSteps _ run_root204)
  simpa [instN, pairT, substDec, shift, substDec_intL204, substDec_parser204,
    shift_churchTrue, substDec_churchTrue, shift_shift0, substDec_shift0, shift_zero] using h

theorem selfint_contract204 (M : Term) (hM : Closed M) (C N : Term) :
    Betas (.app (.app intL204 C) (streamOf (blcCode M) N)) (.app (.app C (.lam M)) N) := by
  have hzero : ∃ R, streamOf (blcCode M) N = pairT churchTrue R := by
    cases M with
    | var i => simp [Closed, FreeUnder] at hM
    | lam M => exact ⟨_, rfl⟩
    | app M P => exact ⟨_, rfl⟩
  obtain ⟨R, hR⟩ := hzero
  have hr : SpineReds (.app (.app intL204 C) (streamOf (blcCode M) N))
      (.app (.app parser204 C) (streamOf (blcCode M) N)) := by
    rw [hR]
    exact spine_root204 C R
  exact betas_trans (betas_of_spineReds hr) (contract_of_parses parser204_parse M hM C N)

theorem isSelfInterpreter_intL204 : IsSelfInterpreter intL204 :=
  ⟨intL204_closed, fun M hM => ⟨_, selfint_contract204 M hM (.var 0) (.var 1), Betas.refl _⟩⟩

def intL204Wire : List Bool := [false, false, false, false, false, true, false, true, false, true, false, true, true, false, false, false, false, true, false, true, true, false, false, false, false, false, false, true, true, false, true, false, true, false, false, false, false, false, false, false, false, true, false, true, true, false, false, false, false, true, false, true, false, true, true, false, false, false, false, false, false, false, false, true, true, false, false, false, false, true, true, true, true, true, false, false, false, false, true, false, true, true, true, false, false, true, true, true, true, true, true, true, true, true, false, false, false, false, false, false, true, true, true, true, false, false, false, false, false, false, true, false, true, true, true, false, true, true, true, false, false, true, true, false, true, true, true, true, false, false, true, true, true, true, true, true, false, false, false, false, true, true, true, true, true, true, true, true, true, true, false, false, false, false, true, false, true, true, true, true, false, true, false, false, true, true, true, false, true, false, false, false, true, true, true, true, false, false, true, true, true, true, true, false, true, true, true, true, false, false, true, false, true, true, false, true, false, true, false, true, true, false, true, false]

theorem wire_intL204 : blcCode intL204 = intL204Wire := by decide

theorem intL204_size : (blcCode intL204).length = 204 := by decide

theorem intL204_nft : NFt intL204 := by decide

theorem intL204_normal : NormalForm intL204 := fun _ h => nft_no_beta intL204_nft h

end Blc
