/-
The 165-bit interpreter `intL165` (`Blc/Selfint.lean`, pinned to its
wire by `wire_intL165`) IS a self-interpreter: `selfint_contract165`,
for every closed M and any terms C, N,

    intL165 C (⌜M⌝ ++ N)  →β*  C (λz. M) N,

with `isSelfInterpreter_intL165` and `not_selfintSizeBound_166`. The
proof establishes `Parses intL165` (`Blc/SelfintProof.lean`), from which
every corollary follows exactly as for Palmer's 168.

The 165 is the 168 with a different reader. Where the 168 applies the
stream `s` to `\bit0 \list1. bit0 (list1 next) (cont list1 (list1 list1
list1))`, the 165 runs `s H (s s s)` with `H = \bit0. bit0 (\unused \r.
r next) cont`. With `s = cons b r`, the third argument `S = s s s` is
the stream past the first `0`:

* `b = 0`: `s s → K r`, so `S → r`, and `s H S → S next → r next`, the
  168's zero branch;
* `b = 1` (a variable, `r = 1^i 0 ++ N`): `s s → r r → K N` (`skip_self`),
  so `S → N`, and `s H S → cont r S` — the 168's VAR value `r`, with
  residual `S` in place of the 168's `r r r`.

Because the residual is reduced in place only when the parser recurses
on it (APP's second parse), `S` there is `U₁ U₁ U₁` for an unreduced
`U₁`. So `parse165` quantifies over every argument `S` that
spine-reduces to the stream past the first `0` (`pastZero`), and
`pastZero_self` shows `U U U` qualifies whenever `U` spine-reduces to
the stream. The closures — VAR's stream cell, ABS's and APP's values —
are the 168's, so `Den` and `Implements` reuse its lemmas, as do the
NEXT/ABS/APP/cell machine runs that do not name the parser. New here
are the parts that do: the knot, unfold, the reader (`run_var165`,
`run_zero165`), the zero branch's `next` (`run_lam165`, `run_app165`),
and the two continuations that call the parser again.

No `sorry`; the axioms are `propext` and `Quot.sound`.
-/

import Blc.SelfintProof

namespace Blc
open Term

-- ---------------------------------------------------------------------------
-- §1. The 165, named by its parts.

/-- The 165's reader `\bit0. bit0 (\unused \r. r next) cont`, under
`\intL \cont \next \list`. -/
def handler165 : Term :=
  .lam (.app (.app (.var 0) (.lam (.lam (.app (.var 0) (.var 4))))) (.var 3))

/-- `\intL \cont. (\next \list. list H (list list list)) NEXT`; NEXT is
the 168's `nextT`. -/
def bodyT165 : Term :=
  .lam (.lam (.app (.lam (.lam (.app (.app (.var 0) handler165)
    (.app (.app (.var 0) (.var 0)) (.var 0))))) nextT))

/-- The knot's generator `\x. body (x x)`. -/
def knotW165 : Term := .lam (.app bodyT165 (.app (.var 0) (.var 0)))

/-- The parser: `intL165`'s first head reduct, and the value of every
recursive call. -/
def parser165 : Term := .app knotW165 knotW165

theorem intL165_eq : intL165 = .app (.lam (.app (.var 0) (.var 0))) knotW165 := by decide

theorem parser165_closed : Closed parser165 := by decide

theorem shift_parser165 (d c : Nat) : shift d c parser165 = parser165 :=
  shift_closed d c parser165_closed

theorem substDec_parser165 (j : Nat) (s : Term) : substDec j s parser165 = parser165 :=
  substDec_closed j s parser165_closed

/-- The zero branch's `next`, with `cont` free at index `c` and `intL`
resolved to the parser. -/
def next165 (c : Nat) : Term :=
  .lam (.app parser165 (.lam (.app (.app (.var 1) (.app (.var (c + 2)) absVt))
    (.app parser165 (.lam (.app (.var (c + 3)) appVt))))))

/-- The reader the parser applies the stream to, `cont` free at 0. -/
def hndc165 : Term :=
  .lam (.app (.app (.var 0) (.lam (.lam (.app (.var 0) (next165 3))))) (.var 1))

/-- The first parse's continuation, with `cont` free at index 0 and the
second tag bit `b` substituted (the 168's `kont`, calling this parser). -/
def kont165 (b : Term) : Term :=
  .lam (.app (.app b (.app (.var 1) absVt)) (.app parser165 (.lam (.app (.var 2) appVt))))

theorem substDec_hndc165 (j : Nat) (s : Term) (h : 1 ≤ j) : substDec j s hndc165 = hndc165 :=
  substDec_of_freeUnder _ j s (freeUnder_mono h (by decide))

theorem substDec_next165 (j : Nat) (s : Term) (h : 1 ≤ j) :
    substDec j s (next165 0) = next165 0 :=
  substDec_of_freeUnder _ j s (freeUnder_mono h (by decide))

theorem substDec_kont165T (j : Nat) (s : Term) (h : 1 ≤ j) :
    substDec j s (kont165 churchTrue) = kont165 churchTrue :=
  substDec_of_freeUnder _ j s (freeUnder_mono h (by decide))

theorem substDec_kont165F (j : Nat) (s : Term) (h : 1 ≤ j) :
    substDec j s (kont165 churchFalse) = kont165 churchFalse :=
  substDec_of_freeUnder _ j s (freeUnder_mono h (by decide))

/-- The reader, closed over `cont = K`. -/
def hnd165 (K : Term) : Term := substDec 0 K hndc165

/-- The zero branch's `next`, closed over `cont = K`. -/
def nxt165 (K : Term) : Term := substDec 0 K (next165 0)

/-- ABS's continuation, closed over `cont = K`. -/
def kA165 (K : Term) : Term := substDec 0 K (kont165 churchTrue)

/-- APP's first continuation, closed over `cont = K`. -/
def kB165 (K : Term) : Term := substDec 0 K (kont165 churchFalse)

-- ---------------------------------------------------------------------------
-- §2. The machine runs, replayed by the kernel on placeholder terms.

/-- The knot: `intL165` head-steps to the parser. -/
theorem run_knot165 : spineSteps 1 intL165 = some parser165 := by decide

/-- The parser unfolds and runs the stream on the reader and `s s s`. -/
theorem run_unfold165 :
    spineSteps 5 (.app (.app parser165 (.var 0)) (.var 1))
      = some (.app (.app (.var 1) hndc165) (.app (.app (.var 1) (.var 1)) (.var 1))) := by
  decide

/-- Tag `1`: VAR returns `cont list S`. -/
theorem run_var165 :
    spineSteps 4 (.app (.app (pairT churchFalse (.var 1)) hndc165) (.var 2))
      = some (.app (.app (.var 0) (.var 1)) (.var 2)) := by
  decide

/-- Tag `0`: the reader hands `next` to `S`. -/
theorem run_zero165 :
    spineSteps 6 (.app (.app (pairT churchTrue (.var 1)) hndc165) (.var 2))
      = some (.app (.var 2) (next165 0)) := by
  decide

/-- Tags `00`: ABS parses its body under the ABS continuation. -/
theorem run_lam165 :
    spineSteps 2 (.app (pairT churchTrue (.var 1)) (next165 0))
      = some (.app (.app parser165 (kont165 churchTrue)) (.var 1)) := by
  decide

/-- Tags `01`: APP parses its function under the APP continuation. -/
theorem run_app165 :
    spineSteps 2 (.app (pairT churchFalse (.var 1)) (next165 0))
      = some (.app (.app parser165 (kont165 churchFalse)) (.var 1)) := by
  decide

/-- ABS returns its value. -/
theorem run_retLam165 :
    spineSteps 3 (.app (.app (kont165 churchTrue) (.var 1)) (.var 2))
      = some (.app (.app (.var 0) absVc) (.var 2)) := by
  decide

/-- APP's first parse continues into the second. -/
theorem run_retApp1_165 :
    spineSteps 3 (.app (.app (kont165 churchFalse) (.var 1)) (.var 2))
      = some (.app (.app parser165 kont2) (.var 2)) := by
  decide

-- ---------------------------------------------------------------------------
-- §3. The runs, lifted to arbitrary continuations, tails and closures.

theorem spine_unfold165 (K s : Term) :
    SpineReds (.app (.app parser165 K) s) (.app (.app s (hnd165 K)) (.app (.app s s) s)) := by
  have h := spineReds_instN [K, s] 0 (spineReds_of_spineSteps _ run_unfold165)
  simpa [instN, hnd165, substDec, shift, substDec_parser165, substDec_hndc165, substDec_shift0,
    shift_zero] using h

/-- Tag `1`: `(1:r) (hnd K) S → K r S`. -/
theorem spine_var165 (K r S : Term) :
    SpineReds (.app (.app (pairT churchFalse r) (hnd165 K)) S) (.app (.app K r) S) := by
  have h := spineReds_instN [K, r, S] 0 (spineReds_of_spineSteps _ run_var165)
  simpa [instN, hnd165, pairT, substDec, shift, shift_churchFalse, substDec_churchFalse,
    substDec_hndc165, shift_shift0, substDec_shift0, shift_zero] using h

/-- Tag `0`: `(0:r) (hnd K) S → S (next K)`. -/
theorem spine_zero165 (K r S : Term) :
    SpineReds (.app (.app (pairT churchTrue r) (hnd165 K)) S) (.app S (nxt165 K)) := by
  have h := spineReds_instN [K, r, S] 0 (spineReds_of_spineSteps _ run_zero165)
  simpa [instN, hnd165, nxt165, pairT, substDec, shift, shift_churchTrue, substDec_churchTrue,
    substDec_hndc165, substDec_next165, shift_shift0, substDec_shift0, shift_zero] using h

/-- Tags `00`: `(0:r) (next K) → P (kA K) r`. -/
theorem spine_lam165 (K r : Term) :
    SpineReds (.app (pairT churchTrue r) (nxt165 K)) (.app (.app parser165 (kA165 K)) r) := by
  have h := spineReds_instN [K, r] 0 (spineReds_of_spineSteps _ run_lam165)
  simpa [instN, nxt165, kA165, pairT, substDec, shift, shift_parser165, substDec_parser165,
    shift_churchTrue, substDec_churchTrue, substDec_next165, substDec_kont165T, shift_shift0,
    substDec_shift0, shift_zero] using h

/-- Tags `01`: `(1:r) (next K) → P (kB K) r`. -/
theorem spine_app165 (K r : Term) :
    SpineReds (.app (pairT churchFalse r) (nxt165 K)) (.app (.app parser165 (kB165 K)) r) := by
  have h := spineReds_instN [K, r] 0 (spineReds_of_spineSteps _ run_app165)
  simpa [instN, nxt165, kB165, pairT, substDec, shift, shift_parser165, substDec_parser165,
    shift_churchFalse, substDec_churchFalse, substDec_next165, substDec_kont165F, shift_shift0,
    substDec_shift0, shift_zero] using h

theorem ret_lam165 (K e u : Term) :
    SpineReds (.app (.app (kA165 K) e) u) (.app (.app K (absV e)) u) := by
  have h := spineReds_instN [K, e, u] 0 (spineReds_of_spineSteps _ run_retLam165)
  simpa [instN, kA165, absV, absVc, consP, substDec, shift, substDec_kont165T,
    shift_shift0, substDec_shift0, shift_zero] using h

theorem ret_app1_165 (K e u : Term) :
    SpineReds (.app (.app (kB165 K) e) u) (.app (.app parser165 (kC K e)) u) := by
  have h := spineReds_instN [K, e, u] 0 (spineReds_of_spineSteps _ run_retApp1_165)
  simpa [instN, kB165, kC, substDec, shift, substDec_parser165, substDec_kont165F, substDec_kont2,
    shift_shift0, substDec_shift0, shift_zero] using h

-- ---------------------------------------------------------------------------
-- §4. The third argument: `s s s` is the stream past the first `0`.

/-- The stream past the first `0` of M's code: the tail itself after a
variable `1^(i+1) 0`, the code's own tail after a `0` tag. -/
def pastZero : Term → Term → Term
  | .var _, R => R
  | .lam M, R => streamOf (false :: blcCode M) R
  | .app M N, R => streamOf (true :: (blcCode M ++ blcCode N)) R

/-- A stream opening with `0`, self-applied twice, is its tail: `s s → K t`. -/
theorem self_true {U t : Term} (h : SpineReds U (pairT churchTrue t)) :
    SpineReds (.app (.app U U) U) t := by
  refine spineReds_trans (spineReds_appL _ (spineReds_appL _ h)) ?_
  refine spineReds_trans (spineReds_appL _ (spine_pairT _ _ _)) ?_
  refine spineReds_trans (spineReds_appL _ (spineReds_appL _ (spineReds_appL _ h))) ?_
  refine spineReds_trans (spineReds_appL _ (spineReds_appL _ (spine_pairT _ _ _))) ?_
  refine spineReds_trans (spineReds_appL _ (spineReds_appL _ (spine_true2 _ _))) ?_
  exact spine_true2 _ _

/-- A variable stream `1 1^i 0 ++ R`, self-applied twice, is `R`:
`s s → r r → K R`. -/
theorem self_false (i : Nat) {U R : Term}
    (h : SpineReds U (pairT churchFalse (streamOf (vbits i) R))) :
    SpineReds (.app (.app U U) U) R := by
  refine spineReds_trans (spineReds_appL _ (spineReds_appL _ h)) ?_
  refine spineReds_trans (spineReds_appL _ (spine_pairT _ _ _)) ?_
  refine spineReds_trans (spineReds_appL _ (spineReds_appL _ (spineReds_appL _ h))) ?_
  refine spineReds_trans (spineReds_appL _ (spineReds_appL _ (spine_pairT _ _ _))) ?_
  refine spineReds_trans (spineReds_appL _ (spineReds_appL _ (spine_false2 _ _))) ?_
  refine spineReds_trans (spineReds_appL _ (skip_self i R)) ?_
  have hb := spine_beta (shift 1 0 R) U
  have e : contract (shift 1 0 R) U = R := substDec_shift R _ 0
  rw [e] at hb
  exact hb

/-- Anything that spine-reduces to M's stream, self-applied twice,
spine-reduces to the stream past its first `0`. -/
theorem pastZero_self (M R U : Term) (h : SpineReds U (streamOf (blcCode M) R)) :
    SpineReds (.app (.app U U) U) (pastZero M R) := by
  cases M with
  | var i =>
      rw [code_var, streamOf_cons] at h
      exact self_false i h
  | lam M => exact self_true h
  | app M N => exact self_true h

-- ---------------------------------------------------------------------------
-- §5. The parser theorem.

/-- The open parser theorem for the 165: for every term `M` and tail
`R`, one closure `λ.B` denoting and implementing `M`, and for every
third argument `S` that reaches the stream past the first `0`, one
residual `U` spine-reducing to `R` such that, for EVERY continuation
`K`, the stream run on the reader and `S` spine-reduces to `K (λ.B) U`. -/
theorem parse165 : ∀ (M R : Term), ∃ B, Den M B ∧ Implements (.lam B) M ∧
    ∀ S, SpineReds S (pastZero M R) → ∃ U, SpineReds U R ∧
      ∀ K, SpineReds (.app (.app (streamOf (blcCode M) R) (hnd165 K)) S)
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
            ⟨S, hS, fun K => spine_var165 K (streamOf (vbits 0) R) S⟩⟩
      | succ j =>
          rw [stream_vbits_succ] at himpl ⊢
          exact ⟨_, den_varS j R, himpl, fun S hS =>
            ⟨S, hS, fun K => spine_var165 K _ S⟩⟩
  | lam M ih =>
      intro R
      obtain ⟨B, hD, hI, hP⟩ := ih R
      refine ⟨_, den_lam hD, ⟨.lam B, hI, fun ρ a =>
        headReduces_of_spineReds (spine_absImpl (.lam B) ρ a)⟩, fun S hS => ?_⟩
      obtain ⟨U, hU, hK⟩ := hP _ (pastZero_self M R _ (SpineReds.refl _))
      refine ⟨U, hU, fun K => ?_⟩
      have hS' : SpineReds S (pairT churchTrue (streamOf (blcCode M) R)) := hS
      show SpineReds (.app (.app (pairT churchTrue (pairT churchTrue (streamOf (blcCode M) R)))
        (hnd165 K)) S) _
      refine spineReds_trans (spine_zero165 K _ S) ?_
      refine spineReds_trans (spineReds_appL _ hS') ?_
      refine spineReds_trans (spine_lam165 K _) ?_
      refine spineReds_trans (spine_unfold165 (kA165 K) _) ?_
      exact spineReds_trans (hK (kA165 K)) (ret_lam165 K (.lam B) U)
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
        (hnd165 K)) S) _
      rw [streamOf_append]
      refine spineReds_trans (spine_zero165 K _ S) ?_
      refine spineReds_trans (spineReds_appL _ hS') ?_
      refine spineReds_trans (spine_app165 K _) ?_
      refine spineReds_trans (spine_unfold165 (kB165 K) _) ?_
      refine spineReds_trans (hK₁ (kB165 K)) ?_
      refine spineReds_trans (ret_app1_165 K (.lam B₁) U₁) ?_
      refine spineReds_trans (spine_unfold165 (kC K (.lam B₁)) U₁) ?_
      refine spineReds_trans (spineReds_appL _ (spineReds_appL _ hU₁)) ?_
      exact spineReds_trans (hK₂ (kC K (.lam B₁))) (ret_app2 K (.lam B₁) (.lam B₂) U₂)

/-- The whole configuration: `intL165 C (⌜M⌝ ++ R)` spine-reduces to
`C (λ.B) U` — the 165 parses. -/
theorem intL165_parse : Parses intL165 := by
  intro M R
  obtain ⟨B, hD, hI, hP⟩ := parse165 M R
  obtain ⟨U, hU, hK⟩ := hP _ (pastZero_self M R _ (SpineReds.refl _))
  refine ⟨B, U, hD, hI, hU, fun C => ?_⟩
  refine spineReds_trans
    (spineReds_appL _ (spineReds_appL _ (spineReds_of_spineSteps _ run_knot165))) ?_
  exact spineReds_trans (spine_unfold165 C _) (hK C)

-- ---------------------------------------------------------------------------
-- §6. The contract, and the size bound it moves.

/-- **The self-interpreter contract for the 165.** For every closed `M`
and any terms `C`, `N`: `intL165 C (⌜M⌝ ++ N) →β* C (λz. M) N`. -/
theorem selfint_contract165 (M : Term) (hM : Closed M) (C N : Term) :
    Betas (.app (.app intL165 C) (streamOf (blcCode M) N)) (.app (.app C (.lam M)) N) :=
  contract_of_parses intL165_parse M hM C N

/-- The strategy-faithful parser statement for the 165 (the shape of
`ParserStatement`, whose `ParserResult` names `intL`): under head
reduction `intL165 C (⌜M⌝ ++ R)` reaches `C Q U` with `Q ⊨ P[M]` and
`U` head-reducing to `R`, for every term `M`, uniformly in `C`. -/
theorem parserStatement165 (M R : Term) : ∃ Q U, Implements Q M ∧ HeadReduces U R ∧
    ∀ C, HeadReduces (.app (.app intL165 C) (streamOf (blcCode M) R)) (.app (.app C Q) U) := by
  obtain ⟨B, U, _, hI, hU, hK⟩ := intL165_parse M R
  exact ⟨.lam B, U, hI, headReduces_of_spineReds hU, fun C => headReduces_of_spineReds (hK C)⟩

/-- The open-program contract for the 165. -/
theorem selfint_open165 (M : Term) (d : Nat) (hM : FreeUnder d M) (C N : Term) :
    ∃ Q U, Betas (.app (.app intL165 C) (streamOf (blcCode M) N)) (.app (.app C Q) U) ∧
      Betas U N ∧
      ∀ (env : List Term) (R : Term) (σ : Nat → Term),
        (∀ i, i < d → env[i]? = some (σ i)) →
          Betas (.app Q (envList env R)) (inst σ M) :=
  open_of_parses intL165_parse M d hM C N

/-- The 165 meets the contract. -/
theorem isSelfInterpreter_intL165 : IsSelfInterpreter intL165 :=
  isSelfInterpreter_of_parses (by decide) intL165_parse

theorem intL165_length : (blcCode intL165).length = 165 := by
  rw [wire_intL165]; exact intL165_size

/-- No bound above 165 holds: optimality is `SelfintSizeBound 165`. -/
theorem not_selfintSizeBound_166 : ¬ SelfintSizeBound 166 := by
  intro h
  have := h intL165 isSelfInterpreter_intL165
  rw [intL165_length] at this
  omega

end Blc
