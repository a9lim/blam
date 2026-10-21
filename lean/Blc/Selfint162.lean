/-
The 162-bit interpreter `intL162` (pinned to its wire by `wire_intL162`)
IS a self-interpreter: `selfint_contract162`, for every closed M and any
terms C, N,

    intL162 C (⌜M⌝ ++ N)  →β*  C (λz. M) N,

with `isSelfInterpreter_intL162` and `not_selfintSizeBound_163`.

The 162 is the 165 (`Blc/Selfint165.lean`) with a different reader. Where
the 165 runs the stream on `(\next \list. list H (list list list)) NEXT`,
the 162 runs `\list. list I V NEXT` with `I = \a. a`, `V = \u. list
(\q. cont) (list list u)`, and NEXT (the 165's zero branch) inlined as the
third operand. With `s = cons b r`, `s I V NEXT → I b r V NEXT → b r V
NEXT`:

* `b = 0`: `K r V NEXT → r NEXT`, the 165's zero branch, now reached
  without the `s s s` skip — the tail `r` is a literal stream cell;
* `b = 1` (a variable, `r = 1^i 0 ++ N`): `F r V NEXT → V NEXT → s (\q.
  cont) (s s NEXT) → cont r (s s NEXT)`, since `s s → r r → K N`
  (`skip_self`) and `K N NEXT → N`.

So the VAR residual is `s s (next K)`: it names the continuation `K`. The
165's `Parses` shape (one residual per stream, uniform in the
continuation) therefore does not hold for the 162, and its parser theorem
(`parse162`) quantifies the residual AFTER the continuation: for every
argument `S` that spine-reduces to the stream and every `K`, one residual
`U` spine-reducing to the tail with `parser162 K S →* K (λ.B) U`. The
closures, `Den`, `Implements`, NEXT, ABS, APP and the cell runs are the
168's; new here are the knot, the four-step unfold, the reader
(`run_zero162`, `run_var162a/b`), and the corollaries restated with the
residual inside the continuation quantifier (`selfint_contract162`,
`parserStatement162`, `selfint_open162`, `isSelfInterpreter_intL162`).

No `sorry`; the axioms are `propext` and `Quot.sound`.
-/

import Blc.Selfint165

namespace Blc
open Term

-- ---------------------------------------------------------------------------
-- §1. The 162, named by its parts.

/-- `\a. a`, the reader's first operand. -/
def idT : Term := .lam (.var 0)

/-- The variable arm `\u. list (\q. cont) (list list u)`, under
`\intL \cont \list`. -/
def varArm162 : Term :=
  .lam (.app (.app (.var 1) (.lam (.var 3))) (.app (.app (.var 1) (.var 1)) (.var 0)))

/-- The zero branch `\bit1. intL (\exp. bit1 (cont ABS) (intL (\exp2. cont
APP)))`, under `\intL \cont \list` (the 168's `nextT` one binder deeper). -/
def nextT162 : Term :=
  .lam (.app (.var 3) (.lam (.app (.app (.var 1) (.app (.var 3) absVt))
    (.app (.var 4) (.lam (.app (.var 4) appVt))))))

/-- `\intL \cont \list. list I V NEXT`. -/
def bodyT162 : Term :=
  .lam (.lam (.lam (.app (.app (.app (.var 0) idT) varArm162) nextT162)))

/-- The knot's generator `\x. body (x x)`. -/
def knotW162 : Term := .lam (.app bodyT162 (.app (.var 0) (.var 0)))

/-- The parser: `intL162`'s first head reduct, and the value of every
recursive call. -/
def parser162 : Term := .app knotW162 knotW162

/-- The 162-bit self-interpreter `(\x. x x) (\x. body (x x))`, 0-indexed de
Bruijn. `wire_intL162` pins it to its wire. -/
def intL162 : Term := .app (.lam (.app (.var 0) (.var 0))) knotW162

/-- The wire of `tmp/overnight/self/int162.blc`. -/
def intL162Wire : List Bool := [false, true, false, false, false, true, true, false, true, false, false, false, false, true, false, false, false, false, false, false, false, true, false, true, false, true, true, false, false, false, true, false, false, false, false, true, false, true, true, true, false, false, false, true, true, true, true, false, false, true, false, true, true, true, false, true, true, false, true, false, false, false, false, true, true, true, true, true, false, false, false, false, true, false, true, true, true, false, false, true, true, true, true, true, false, false, false, false, false, false, true, true, true, true, false, false, false, false, false, false, true, false, true, true, true, false, true, true, true, false, false, true, true, false, true, true, true, true, false, false, true, true, true, true, true, true, false, false, false, false, true, true, true, true, true, true, false, false, false, false, true, false, true, true, true, true, false, true, false, false, true, true, true, false, true, false, false, true, true, false, true, false]

-- The raised recursion depth is an elaborator allowance for the 162-bit
-- computations below, not a proof-strength change.
set_option maxRecDepth 8192

/-- The kernel vouches the transcription: `intL162`'s code IS the 162-bit
wire. -/
theorem wire_intL162 : blcCode intL162 = intL162Wire := by decide

theorem intL162_size : intL162Wire.length = 162 := by decide

theorem intL162_closed : Closed intL162 := by decide

theorem parser162_closed : Closed parser162 := by decide

theorem shift_parser162 (d c : Nat) : shift d c parser162 = parser162 :=
  shift_closed d c parser162_closed

theorem substDec_parser162 (j : Nat) (s : Term) : substDec j s parser162 = parser162 :=
  substDec_closed j s parser162_closed

theorem substDec_idT (j : Nat) (s : Term) : substDec j s idT = idT :=
  substDec_closed j s (by decide)

/-- The variable arm after the unfold, with `cont` free at 0 and the
stream `list` free at 1: `\u. list (\q. cont) (list list u)`. -/
def vc162 : Term :=
  .lam (.app (.app (.var 2) (.lam (.var 2))) (.app (.app (.var 2) (.var 2)) (.var 0)))

/-- The zero branch after the unfold, `cont` free at 0 and `intL` resolved
to the parser (the 165's `next165 0` on this parser). -/
def nextc162 : Term :=
  .lam (.app parser162 (.lam (.app (.app (.var 1) (.app (.var 2) absVt))
    (.app parser162 (.lam (.app (.var 3) appVt))))))

/-- The first parse's continuation, with `cont` free at index 0 and the
second tag bit `b` substituted (the 168's `kont`, calling this parser). -/
def kont162 (b : Term) : Term :=
  .lam (.app (.app b (.app (.var 1) absVt)) (.app parser162 (.lam (.app (.var 2) appVt))))

theorem substDec_nextc162 (j : Nat) (s : Term) (h : 1 ≤ j) :
    substDec j s nextc162 = nextc162 :=
  substDec_of_freeUnder _ j s (freeUnder_mono h (by decide))

theorem substDec_kont162T (j : Nat) (s : Term) (h : 1 ≤ j) :
    substDec j s (kont162 churchTrue) = kont162 churchTrue :=
  substDec_of_freeUnder _ j s (freeUnder_mono h (by decide))

theorem substDec_kont162F (j : Nat) (s : Term) (h : 1 ≤ j) :
    substDec j s (kont162 churchFalse) = kont162 churchFalse :=
  substDec_of_freeUnder _ j s (freeUnder_mono h (by decide))

/-- The variable arm, closed over `cont = K` and `list = S`:
`\u. S (\q. K) (S S u)`. -/
def vK162 (K S : Term) : Term :=
  .lam (.app (.app (shift 1 0 S) (.lam (shift 2 0 K)))
    (.app (.app (shift 1 0 S) (shift 1 0 S)) (.var 0)))

/-- The zero branch, closed over `cont = K`. -/
def nxt162 (K : Term) : Term := substDec 0 K nextc162

/-- ABS's continuation, closed over `cont = K`. -/
def kA162 (K : Term) : Term := substDec 0 K (kont162 churchTrue)

/-- APP's first continuation, closed over `cont = K`. -/
def kB162 (K : Term) : Term := substDec 0 K (kont162 churchFalse)

-- ---------------------------------------------------------------------------
-- §2. The machine runs, replayed by the kernel on placeholder terms.
-- Placeholders: `cont = var 0`, the stream `var 1`, its tail `var 2`.

/-- The knot: `intL162` head-steps to the parser. -/
theorem run_knot162 : spineSteps 1 intL162 = some parser162 := by decide

/-- The parser unfolds and runs the stream on `I`, the variable arm and
the zero branch. -/
theorem run_unfold162 :
    spineSteps 4 (.app (.app parser162 (.var 0)) (.var 1))
      = some (.app (.app (.app (.var 1) idT) vc162) nextc162) := by
  decide

/-- Tag `0`: the cell selects its tail, which receives the zero branch. -/
theorem run_zero162 :
    spineSteps 4 (.app (.app (.app (pairT churchTrue (.var 2)) idT) vc162) nextc162)
      = some (.app (.var 2) nextc162) := by
  decide

/-- Tag `1`: the cell selects the variable arm, which reopens the stream
on `\q. cont` with residual `list list NEXT`. -/
theorem run_var162a :
    spineSteps 5 (.app (.app (.app (pairT churchFalse (.var 2)) idT) vc162) nextc162)
      = some (.app (.app (.var 1) (.lam (.var 1))) (.app (.app (.var 1) (.var 1)) nextc162)) := by
  decide

/-- The reopened cell hands its tail to `cont`: `(1:r) (\q. K) X → K r X`. -/
theorem run_var162b :
    spineSteps 2 (.app (.app (pairT churchFalse (.var 1)) (.lam (.var 1))) (.var 2))
      = some (.app (.app (.var 0) (.var 1)) (.var 2)) := by
  decide

/-- Tags `00`: ABS parses its body under the ABS continuation. -/
theorem run_lam162 :
    spineSteps 2 (.app (pairT churchTrue (.var 1)) nextc162)
      = some (.app (.app parser162 (kont162 churchTrue)) (.var 1)) := by
  decide

/-- Tags `01`: APP parses its function under the APP continuation. -/
theorem run_app162 :
    spineSteps 2 (.app (pairT churchFalse (.var 1)) nextc162)
      = some (.app (.app parser162 (kont162 churchFalse)) (.var 1)) := by
  decide

/-- ABS returns its value. -/
theorem run_retLam162 :
    spineSteps 3 (.app (.app (kont162 churchTrue) (.var 1)) (.var 2))
      = some (.app (.app (.var 0) absVc) (.var 2)) := by
  decide

/-- APP's first parse continues into the second. -/
theorem run_retApp1_162 :
    spineSteps 3 (.app (.app (kont162 churchFalse) (.var 1)) (.var 2))
      = some (.app (.app parser162 kont2) (.var 2)) := by
  decide

-- ---------------------------------------------------------------------------
-- §3. The runs, lifted to arbitrary continuations, streams and closures.

theorem spine_unfold162 (K S : Term) :
    SpineReds (.app (.app parser162 K) S) (.app (.app (.app S idT) (vK162 K S)) (nxt162 K)) := by
  have h := spineReds_instN [K, S] 0 (spineReds_of_spineSteps _ run_unfold162)
  simpa [instN, vK162, vc162, nxt162, substDec, shift, substDec_parser162, substDec_idT,
    substDec_nextc162, shift_shift0, substDec_shift0, shift_zero] using h

/-- Tag `0`: `(0:r) I V N → r N`. -/
theorem spine_zero162 (K S r : Term) :
    SpineReds (.app (.app (.app (pairT churchTrue r) idT) (vK162 K S)) (nxt162 K))
      (.app r (nxt162 K)) := by
  have h := spineReds_instN [K, S, r] 0 (spineReds_of_spineSteps _ run_zero162)
  simpa [instN, vK162, vc162, nxt162, pairT, substDec, shift, shift_churchTrue,
    substDec_churchTrue, substDec_idT, substDec_nextc162, shift_shift0, substDec_shift0,
    shift_zero] using h

/-- Tag `1`, first half: `(1:r) I (V K S) N → S (\q. K) (S S N)`. -/
theorem spine_var162a (K S r : Term) :
    SpineReds (.app (.app (.app (pairT churchFalse r) idT) (vK162 K S)) (nxt162 K))
      (.app (.app S (.lam (shift 1 0 K))) (.app (.app S S) (nxt162 K))) := by
  have h := spineReds_instN [K, S, r] 0 (spineReds_of_spineSteps _ run_var162a)
  simpa [instN, vK162, vc162, nxt162, pairT, substDec, shift, shift_churchFalse,
    substDec_churchFalse, substDec_idT, substDec_nextc162, shift_shift0, substDec_shift0,
    shift_zero] using h

/-- Tag `1`, second half: `(1:r) (\q. K) X → K r X`. -/
theorem spine_var162b (K r X : Term) :
    SpineReds (.app (.app (pairT churchFalse r) (.lam (shift 1 0 K))) X) (.app (.app K r) X) := by
  have h := spineReds_instN [K, r, X] 0 (spineReds_of_spineSteps _ run_var162b)
  simpa [instN, pairT, substDec, shift, shift_churchFalse, substDec_churchFalse,
    shift_shift0, substDec_shift0, shift_zero] using h

/-- Tags `00`: `(0:r) (next K) → P (kA K) r`. -/
theorem spine_lam162 (K r : Term) :
    SpineReds (.app (pairT churchTrue r) (nxt162 K)) (.app (.app parser162 (kA162 K)) r) := by
  have h := spineReds_instN [K, r] 0 (spineReds_of_spineSteps _ run_lam162)
  simpa [instN, nxt162, kA162, pairT, substDec, shift, shift_parser162, substDec_parser162,
    shift_churchTrue, substDec_churchTrue, substDec_nextc162, substDec_kont162T, shift_shift0,
    substDec_shift0, shift_zero] using h

/-- Tags `01`: `(1:r) (next K) → P (kB K) r`. -/
theorem spine_app162 (K r : Term) :
    SpineReds (.app (pairT churchFalse r) (nxt162 K)) (.app (.app parser162 (kB162 K)) r) := by
  have h := spineReds_instN [K, r] 0 (spineReds_of_spineSteps _ run_app162)
  simpa [instN, nxt162, kB162, pairT, substDec, shift, shift_parser162, substDec_parser162,
    shift_churchFalse, substDec_churchFalse, substDec_nextc162, substDec_kont162F, shift_shift0,
    substDec_shift0, shift_zero] using h

theorem ret_lam162 (K e u : Term) :
    SpineReds (.app (.app (kA162 K) e) u) (.app (.app K (absV e)) u) := by
  have h := spineReds_instN [K, e, u] 0 (spineReds_of_spineSteps _ run_retLam162)
  simpa [instN, kA162, absV, absVc, consP, substDec, shift, substDec_kont162T,
    shift_shift0, substDec_shift0, shift_zero] using h

theorem ret_app1_162 (K e u : Term) :
    SpineReds (.app (.app (kB162 K) e) u) (.app (.app parser162 (kC K e)) u) := by
  have h := spineReds_instN [K, e, u] 0 (spineReds_of_spineSteps _ run_retApp1_162)
  simpa [instN, kB162, kC, substDec, shift, substDec_parser162, substDec_kont162F,
    substDec_kont2, shift_shift0, substDec_shift0, shift_zero] using h

-- ---------------------------------------------------------------------------
-- §4. The reader on a stream, and the VAR residual.

/-- Tag `1`: for `S` reaching `(1:r)`, `P K S → K r (S S (next K))`. -/
theorem spine_var162 (K r S : Term) (hS : SpineReds S (pairT churchFalse r)) :
    SpineReds (.app (.app parser162 K) S) (.app (.app K r) (.app (.app S S) (nxt162 K))) := by
  refine spineReds_trans (spine_unfold162 K S) ?_
  refine spineReds_trans (spineReds_appL _ (spineReds_appL _ (spineReds_appL _ hS))) ?_
  refine spineReds_trans (spine_var162a K S r) ?_
  refine spineReds_trans (spineReds_appL _ (spineReds_appL _ hS)) ?_
  exact spine_var162b K r _

/-- Tag `0`: for `S` reaching `(0:r)`, `P K S → r (next K)`. -/
theorem spine_zero162' (K r S : Term) (hS : SpineReds S (pairT churchTrue r)) :
    SpineReds (.app (.app parser162 K) S) (.app r (nxt162 K)) := by
  refine spineReds_trans (spine_unfold162 K S) ?_
  refine spineReds_trans (spineReds_appL _ (spineReds_appL _ (spineReds_appL _ hS))) ?_
  exact spine_zero162 K S r

/-- The VAR residual: for `S` reaching a variable stream `1 1^i 0 ++ R`,
`S S N → R` for any `N` (`s s → r r → K R`). -/
theorem self_false162 (i : Nat) {S R : Term} (N : Term)
    (h : SpineReds S (pairT churchFalse (streamOf (vbits i) R))) :
    SpineReds (.app (.app S S) N) R := by
  refine spineReds_trans (spineReds_appL _ (spineReds_appL _ h)) ?_
  refine spineReds_trans (spineReds_appL _ (spine_pairT _ _ _)) ?_
  refine spineReds_trans (spineReds_appL _ (spineReds_appL _ (spineReds_appL _ h))) ?_
  refine spineReds_trans (spineReds_appL _ (spineReds_appL _ (spine_pairT _ _ _))) ?_
  refine spineReds_trans (spineReds_appL _ (spineReds_appL _ (spine_false2 _ _))) ?_
  refine spineReds_trans (spineReds_appL _ (skip_self i R)) ?_
  have hb := spine_beta (shift 1 0 R) N
  have e : contract (shift 1 0 R) N = R := substDec_shift R _ 0
  rw [e] at hb
  exact hb

-- ---------------------------------------------------------------------------
-- §5. The parser theorem.

/-- The open parser theorem for the 162: for every term `M` and tail `R`,
one closure `λ.B` denoting and implementing `M`, and for every argument
`S` that spine-reduces to M's stream and EVERY continuation `K`, one
residual `U` spine-reducing to `R` with `P K S →* K (λ.B) U`. The
residual sits inside the continuation quantifier because VAR's is
`S S (next K)`. -/
theorem parse162 : ∀ (M R : Term), ∃ B, Den M B ∧ Implements (.lam B) M ∧
    ∀ S, SpineReds S (streamOf (blcCode M) R) → ∀ K, ∃ U, SpineReds U R ∧
      SpineReds (.app (.app parser162 K) S) (.app (.app K (.lam B)) U) := by
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
          exact ⟨_, den_var0 R, himpl, fun S hS K =>
            ⟨_, self_false162 0 (nxt162 K) hS, spine_var162 K (streamOf (vbits 0) R) S hS⟩⟩
      | succ j =>
          rw [stream_vbits_succ] at himpl ⊢
          refine ⟨_, den_varS j R, himpl, fun S hS K => ⟨_, ?_, spine_var162 K _ S hS⟩⟩
          have hS' : SpineReds S (pairT churchFalse (streamOf (vbits (j + 1)) R)) := by
            rw [stream_vbits_succ]; exact hS
          exact self_false162 (j + 1) (nxt162 K) hS'
  | lam M ih =>
      intro R
      obtain ⟨B, hD, hI, hP⟩ := ih R
      refine ⟨_, den_lam hD, ⟨.lam B, hI, fun ρ a =>
        headReduces_of_spineReds (spine_absImpl (.lam B) ρ a)⟩, fun S hS K => ?_⟩
      obtain ⟨U, hU, hK⟩ := hP _ (SpineReds.refl _) (kA162 K)
      refine ⟨U, hU, ?_⟩
      have hS' : SpineReds S (pairT churchTrue (pairT churchTrue (streamOf (blcCode M) R))) := hS
      refine spineReds_trans (spine_zero162' K _ S hS') ?_
      refine spineReds_trans (spine_lam162 K _) ?_
      exact spineReds_trans hK (ret_lam162 K (.lam B) U)
  | app M N ihM ihN =>
      intro R
      obtain ⟨B₁, hD₁, hI₁, hP₁⟩ := ihM (streamOf (blcCode N) R)
      obtain ⟨B₂, hD₂, hI₂, hP₂⟩ := ihN R
      refine ⟨_, den_app hD₁ hD₂, ⟨.lam B₁, .lam B₂, hI₁, hI₂, fun ρ =>
        headReduces_of_spineReds (spine_appImpl (.lam B₁) (.lam B₂) ρ)⟩, fun S hS K => ?_⟩
      obtain ⟨U₁, hU₁, hK₁⟩ := hP₁ _ (SpineReds.refl _) (kB162 K)
      obtain ⟨U₂, hU₂, hK₂⟩ := hP₂ U₁ hU₁ (kC K (.lam B₁))
      refine ⟨U₂, hU₂, ?_⟩
      have hS' : SpineReds S
          (pairT churchTrue (pairT churchFalse (streamOf (blcCode M) (streamOf (blcCode N) R)))) := by
        have e : streamOf (blcCode (.app M N)) R
            = pairT churchTrue (pairT churchFalse (streamOf (blcCode M) (streamOf (blcCode N) R))) := by
          simp only [blcCode, streamOf_cons, streamOf_append]; rfl
        rw [← e]; exact hS
      refine spineReds_trans (spine_zero162' K _ S hS') ?_
      refine spineReds_trans (spine_app162 K _) ?_
      refine spineReds_trans hK₁ ?_
      refine spineReds_trans (ret_app1_162 K (.lam B₁) U₁) ?_
      exact spineReds_trans hK₂ (ret_app2 K (.lam B₁) (.lam B₂) U₂)

/-- The whole configuration: `intL162 C (⌜M⌝ ++ R)` spine-reduces to
`C (λ.B) U`, with `U` spine-reducing to `R`; the closure is uniform in
`C`, the residual is not. -/
theorem intL162_parse (M R : Term) : ∃ B, Den M B ∧ Implements (.lam B) M ∧
    ∀ C, ∃ U, SpineReds U R ∧
      SpineReds (.app (.app intL162 C) (streamOf (blcCode M) R)) (.app (.app C (.lam B)) U) := by
  obtain ⟨B, hD, hI, hP⟩ := parse162 M R
  refine ⟨B, hD, hI, fun C => ?_⟩
  obtain ⟨U, hU, hK⟩ := hP _ (SpineReds.refl _) C
  exact ⟨U, hU, spineReds_trans
    (spineReds_appL _ (spineReds_appL _ (spineReds_of_spineSteps _ run_knot162))) hK⟩

-- ---------------------------------------------------------------------------
-- §6. The contract, and the size bound it moves.

/-- **The self-interpreter contract for the 162.** For every closed `M`
and any terms `C`, `N`: `intL162 C (⌜M⌝ ++ N) →β* C (λz. M) N`. -/
theorem selfint_contract162 (M : Term) (hM : Closed M) (C N : Term) :
    Betas (.app (.app intL162 C) (streamOf (blcCode M) N)) (.app (.app C (.lam M)) N) := by
  obtain ⟨B, hD, _, hP⟩ := intL162_parse M N
  obtain ⟨U, hU, hK⟩ := hP C
  have hB : Betas B M := by
    have h := hD 0 1 [] (.var 0) Term.var hM (fun i hi => absurd hi (Nat.not_lt_zero i))
    have e : substDec 0 (envList [] (.var 0)) (shift 1 1 B) = B := substDec_var_shift B 0
    rw [e, inst_id M Term.var (fun _ => rfl)] at h
    exact h
  exact betas_trans (betas_of_spineReds hK)
    (betas_app (betas_appR C (betas_lam hB)) (betas_of_spineReds hU))

/-- The contract on quoted programs, `⌜M⌝ = stream(M, FALSE)`. -/
theorem selfint_quote162 (M : Term) (hM : Closed M) (C : Term) :
    Betas (.app (.app intL162 C) (quote M)) (.app (.app C (.lam M)) falseT) :=
  selfint_contract162 M hM C falseT

/-- The strategy-faithful parser statement for the 162: under head
reduction `intL162 C (⌜M⌝ ++ R)` reaches `C Q U` with `Q ⊨ P[M]` uniform
in `C` and `U` head-reducing to `R`; unlike the 168's and 165's
`ParserStatement`, the residual depends on `C` (VAR's is
`s s (next C)`). -/
theorem parserStatement162 (M R : Term) : ∃ Q, Implements Q M ∧
    ∀ C, ∃ U, HeadReduces U R ∧
      HeadReduces (.app (.app intL162 C) (streamOf (blcCode M) R)) (.app (.app C Q) U) := by
  obtain ⟨B, _, hI, hP⟩ := intL162_parse M R
  refine ⟨.lam B, hI, fun C => ?_⟩
  obtain ⟨U, hU, hK⟩ := hP C
  exact ⟨U, headReduces_of_spineReds hU, headReduces_of_spineReds hK⟩

/-- L1 for the 162, the residual reduced in argument position. -/
theorem l1_beta162 (M R C : Term) : ∃ Q, Implements Q M ∧
    Betas (.app (.app intL162 C) (streamOf (blcCode M) R)) (.app (.app C Q) R) := by
  obtain ⟨B, _, hI, hP⟩ := intL162_parse M R
  obtain ⟨U, hU, hK⟩ := hP C
  exact ⟨.lam B, hI,
    betas_trans (betas_of_spineReds hK) (betas_appR _ (betas_of_spineReds hU))⟩

/-- The open-program contract for the 162. -/
theorem selfint_open162 (M : Term) (d : Nat) (hM : FreeUnder d M) (C N : Term) :
    ∃ Q U, Betas (.app (.app intL162 C) (streamOf (blcCode M) N)) (.app (.app C Q) U) ∧
      Betas U N ∧
      ∀ (env : List Term) (R : Term) (σ : Nat → Term),
        (∀ i, i < d → env[i]? = some (σ i)) →
          Betas (.app Q (envList env R)) (inst σ M) := by
  obtain ⟨B, hD, _, hP⟩ := intL162_parse M N
  obtain ⟨U, hU, hK⟩ := hP C
  refine ⟨.lam B, U, betas_of_spineReds hK, betas_of_spineReds hU, ?_⟩
  intro env R σ hagree
  have h := hD d 0 env R σ hM hagree
  rw [shift_zero] at h
  exact Betas.head (Beta.beta _ _) h

/-- The 162 meets the contract. -/
theorem isSelfInterpreter_intL162 : IsSelfInterpreter intL162 :=
  ⟨intL162_closed, fun M hM => ⟨_, selfint_contract162 M hM (.var 0) (.var 1), Betas.refl _⟩⟩

theorem intL162_length : (blcCode intL162).length = 162 := by
  rw [wire_intL162]; exact intL162_size

/-- No bound above 162 holds: optimality is `SelfintSizeBound 162`. -/
theorem not_selfintSizeBound_163 : ¬ SelfintSizeBound 163 := by
  intro h
  have := h intL162 isSelfInterpreter_intL162
  rw [intL162_length] at this
  omega

-- ---------------------------------------------------------------------------
-- §7. Why the residual sits inside the continuation quantifier.

/-- Spine reduction to a head normal form is unique (head reduction is
deterministic, `headStep_det`). -/
theorem spineReds_hnf_unique {t u v : Term} (hu : SpineReds t u) (hv : SpineReds t v)
    (nu : headStep u = none) (nv : headStep v = none) : u = v := by
  induction hu with
  | refl t =>
      cases hv with
      | refl => rfl
      | step _ h _ => rw [headStep_complete h] at nu; cases nu
  | step _ h _ ih =>
      cases hv with
      | refl => rw [headStep_complete h] at nv; cases nv
      | step _ h' hs' => rw [headStep_det h h'] at ih; exact ih hs' nu

/-- The 168/165 parse shape — one residual per stream, uniform in the
continuation (`Parses`) — fails for the 162: on `⌜var 0⌝ ++ R` the
residual is `s s (next C)`, which names `C`. -/
theorem not_parses_intL162 : ¬ Parses intL162 := by
  intro h
  obtain ⟨B, U, _, _, _, hK⟩ := h (.var 0) (.var 1)
  have hs : SpineReds (streamOf (blcCode (.var 0)) (.var 1))
      (pairT churchFalse (pairT churchTrue (.var 1))) := by
    rw [code_var, streamOf_cons, stream_vbits_zero]; exact SpineReds.refl _
  have run : ∀ C, SpineReds (.app (.app intL162 C) (streamOf (blcCode (.var 0)) (.var 1)))
      (.app (.app C (pairT churchTrue (.var 1)))
        (.app (.app (streamOf (blcCode (.var 0)) (.var 1)) (streamOf (blcCode (.var 0)) (.var 1)))
          (nxt162 C))) := fun C =>
    spineReds_trans (spineReds_appL _ (spineReds_appL _ (spineReds_of_spineSteps _ run_knot162)))
      (spine_var162 C _ _ hs)
  have e0 := spineReds_hnf_unique (hK (.var 0)) (run (.var 0)) rfl rfl
  have e1 := spineReds_hnf_unique (hK (.var 1)) (run (.var 1)) rfl rfl
  injection e0 with _ e0
  injection e1 with _ e1
  rw [e0] at e1
  injection e1 with _ e1
  exact absurd e1 (by decide)

end Blc
