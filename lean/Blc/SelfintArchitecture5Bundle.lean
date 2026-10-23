/-
The parser/continuation bundle obtained by changing the 162's erased skip
operand from NEXT to its own recursive parser. The literal interpreter is
165 bits. Its off-domain services satisfy P C I =beta C, P C F =beta P,
and P C K =beta NEXT(C).

The all-source proof reuses the 162's arbitrary-operand skip theorem.
These identities do not give a smaller interpreter or an optimality result.
-/
import Blc.Selfint162
import Blc.SelfintControl

namespace Blc.SelfintArchitecture5Bundle
open Term SelfintControl
set_option maxRecDepth 8192
set_option maxHeartbeats 800000

-- ---------------------------------------------------------------------------
-- §1. The bundle, named by its parts.

/-- The variable arm `\u. list (\q. cont) (list list intL)`, under
`\intL \cont \list`. -/
def varArmPack : Term :=
  .lam (.app (.app (.var 1) (.lam (.var 3))) (.app (.app (.var 1) (.var 1)) (.var 3)))

/-- The zero branch `\bit1. intL (\exp. bit1 (cont ABS) (intL (\exp2. cont
APP)))`, under `\intL \cont \list` (the 168's `nextT` one binder deeper). -/
def nextTPack : Term :=
  .lam (.app (.var 3) (.lam (.app (.app (.var 1) (.app (.var 3) absVt))
    (.app (.var 4) (.lam (.app (.var 4) appVt))))))

/-- `\intL \cont \list. list I V NEXT`. -/
def bodyTPack : Term :=
  .lam (.lam (.lam (.app (.app (.app (.var 0) idT) varArmPack) nextTPack)))

/-- The knot's generator `\x. body (x x)`. -/
def knotWPack : Term := .lam (.app bodyTPack (.app (.var 0) (.var 0)))

/-- The parser: `intLPack`'s first head reduct, and the value of every
recursive call. -/
def parserPack : Term := .app knotWPack knotWPack

/-- The 165-bit self-interpreter `(\x. x x) (\x. body (x x))`. -/
def intLPack : Term := .app (.lam (.app (.var 0) (.var 0))) knotWPack

theorem intLPack_closed : Closed intLPack := by decide

theorem parserPack_closed : Closed parserPack := by decide

theorem shift_parserPack (d c : Nat) : shift d c parserPack = parserPack :=
  shift_closed d c parserPack_closed

theorem substDec_parserPack (j : Nat) (s : Term) : substDec j s parserPack = parserPack :=
  substDec_closed j s parserPack_closed

theorem substDec_idT (j : Nat) (s : Term) : substDec j s idT = idT :=
  substDec_closed j s (by decide)

/-- The variable arm after the unfold, with `cont` free at 0 and the
stream `list` free at 1: `\u. list (\q. cont) (list list intL)`. -/
def vcPack : Term :=
  .lam (.app (.app (.var 2) (.lam (.var 2))) (.app (.app (.var 2) (.var 2)) parserPack))

/-- The zero branch after the unfold, `cont` free at 0 and `intL` resolved
to the parser (the 165's `next165 0` on this parser). -/
def nextcPack : Term :=
  .lam (.app parserPack (.lam (.app (.app (.var 1) (.app (.var 2) absVt))
    (.app parserPack (.lam (.app (.var 3) appVt))))))

/-- The first parse's continuation, with `cont` free at index 0 and the
second tag bit `b` substituted (the 168's `kont`, calling this parser). -/
def kontPack (b : Term) : Term :=
  .lam (.app (.app b (.app (.var 1) absVt)) (.app parserPack (.lam (.app (.var 2) appVt))))

theorem substDec_nextcPack (j : Nat) (s : Term) (h : 1 ≤ j) :
    substDec j s nextcPack = nextcPack :=
  substDec_of_freeUnder _ j s (freeUnder_mono h (by decide))

theorem substDec_kontPackT (j : Nat) (s : Term) (h : 1 ≤ j) :
    substDec j s (kontPack churchTrue) = kontPack churchTrue :=
  substDec_of_freeUnder _ j s (freeUnder_mono h (by decide))

theorem substDec_kontPackF (j : Nat) (s : Term) (h : 1 ≤ j) :
    substDec j s (kontPack churchFalse) = kontPack churchFalse :=
  substDec_of_freeUnder _ j s (freeUnder_mono h (by decide))

/-- The variable arm, closed over `cont = K` and `list = S`:
`\u. S (\q. K) (S S P)`. -/
def vKPack (K S : Term) : Term :=
  .lam (.app (.app (shift 1 0 S) (.lam (shift 2 0 K)))
    (.app (.app (shift 1 0 S) (shift 1 0 S)) parserPack))

/-- The zero branch, closed over `cont = K`. -/
def nxtPack (K : Term) : Term := substDec 0 K nextcPack

/-- ABS's continuation, closed over `cont = K`. -/
def kAPack (K : Term) : Term := substDec 0 K (kontPack churchTrue)

/-- APP's first continuation, closed over `cont = K`. -/
def kBPack (K : Term) : Term := substDec 0 K (kontPack churchFalse)

-- ---------------------------------------------------------------------------
-- §2. The machine runs, replayed by the kernel on placeholder terms.
-- Placeholders: `cont = var 0`, the stream `var 1`, its tail `var 2`.

/-- The knot: `intLPack` head-steps to the parser. -/
theorem run_knotPack : spineSteps 1 intLPack = some parserPack := by decide

/-- The parser unfolds and runs the stream on `I`, the variable arm and
the zero branch. -/
theorem run_unfoldPack :
    spineSteps 4 (.app (.app parserPack (.var 0)) (.var 1))
      = some (.app (.app (.app (.var 1) idT) vcPack) nextcPack) := by
  decide

/-- Tag `0`: the cell selects its tail, which receives the zero branch. -/
theorem run_zeroPack :
    spineSteps 4 (.app (.app (.app (pairT churchTrue (.var 2)) idT) vcPack) nextcPack)
      = some (.app (.var 2) nextcPack) := by
  decide

/-- Tag `1`: the cell selects the variable arm, which reopens the stream
on `\q. cont` with residual `list list P`. -/
theorem run_varPacka :
    spineSteps 5 (.app (.app (.app (pairT churchFalse (.var 2)) idT) vcPack) nextcPack)
      = some (.app (.app (.var 1) (.lam (.var 1))) (.app (.app (.var 1) (.var 1)) parserPack)) := by
  decide

/-- The reopened cell hands its tail to `cont`: `(1:r) (\q. K) X → K r X`. -/
theorem run_varPackb :
    spineSteps 2 (.app (.app (pairT churchFalse (.var 1)) (.lam (.var 1))) (.var 2))
      = some (.app (.app (.var 0) (.var 1)) (.var 2)) := by
  decide

/-- Tags `00`: ABS parses its body under the ABS continuation. -/
theorem run_lamPack :
    spineSteps 2 (.app (pairT churchTrue (.var 1)) nextcPack)
      = some (.app (.app parserPack (kontPack churchTrue)) (.var 1)) := by
  decide

/-- Tags `01`: APP parses its function under the APP continuation. -/
theorem run_appPack :
    spineSteps 2 (.app (pairT churchFalse (.var 1)) nextcPack)
      = some (.app (.app parserPack (kontPack churchFalse)) (.var 1)) := by
  decide

/-- ABS returns its value. -/
theorem run_retLamPack :
    spineSteps 3 (.app (.app (kontPack churchTrue) (.var 1)) (.var 2))
      = some (.app (.app (.var 0) absVc) (.var 2)) := by
  decide

/-- APP's first parse continues into the second. -/
theorem run_retApp1_Pack :
    spineSteps 3 (.app (.app (kontPack churchFalse) (.var 1)) (.var 2))
      = some (.app (.app parserPack kont2) (.var 2)) := by
  decide

-- ---------------------------------------------------------------------------
-- §3. The runs, lifted to arbitrary continuations, streams and closures.

theorem spine_unfoldPack (K S : Term) :
    SpineReds (.app (.app parserPack K) S) (.app (.app (.app S idT) (vKPack K S)) (nxtPack K)) := by
  have h := spineReds_instN [K, S] 0 (spineReds_of_spineSteps _ run_unfoldPack)
  simpa [instN, vKPack, vcPack, nxtPack, substDec, shift, substDec_parserPack, shift_parserPack, substDec_idT,
    substDec_nextcPack, shift_shift0, substDec_shift0, shift_zero] using h

/-- Tag `0`: `(0:r) I V N → r N`. -/
theorem spine_zeroPack (K S r : Term) :
    SpineReds (.app (.app (.app (pairT churchTrue r) idT) (vKPack K S)) (nxtPack K))
      (.app r (nxtPack K)) := by
  have h := spineReds_instN [K, S, r] 0 (spineReds_of_spineSteps _ run_zeroPack)
  simpa [instN, vKPack, vcPack, nxtPack, pairT, substDec, shift, shift_churchTrue,
    substDec_churchTrue, substDec_idT, substDec_nextcPack, substDec_parserPack,
    shift_parserPack, shift_shift0, substDec_shift0,
    shift_zero] using h

/-- Tag `1`, first half: `(1:r) I (V K S) N → S (\q. K) (S S P)`. -/
theorem spine_varPacka (K S r : Term) :
    SpineReds (.app (.app (.app (pairT churchFalse r) idT) (vKPack K S)) (nxtPack K))
      (.app (.app S (.lam (shift 1 0 K))) (.app (.app S S) parserPack)) := by
  have h := spineReds_instN [K, S, r] 0 (spineReds_of_spineSteps _ run_varPacka)
  simpa [instN, vKPack, vcPack, nxtPack, pairT, substDec, shift, shift_churchFalse,
    substDec_churchFalse, substDec_idT, substDec_nextcPack, substDec_parserPack,
    shift_parserPack, shift_shift0, substDec_shift0,
    shift_zero] using h

/-- Tag `1`, second half: `(1:r) (\q. K) X → K r X`. -/
theorem spine_varPackb (K r X : Term) :
    SpineReds (.app (.app (pairT churchFalse r) (.lam (shift 1 0 K))) X) (.app (.app K r) X) := by
  have h := spineReds_instN [K, r, X] 0 (spineReds_of_spineSteps _ run_varPackb)
  simpa [instN, pairT, substDec, shift, shift_churchFalse, substDec_churchFalse,
    shift_shift0, substDec_shift0, shift_zero] using h

/-- Tags `00`: `(0:r) (next K) → P (kA K) r`. -/
theorem spine_lamPack (K r : Term) :
    SpineReds (.app (pairT churchTrue r) (nxtPack K)) (.app (.app parserPack (kAPack K)) r) := by
  have h := spineReds_instN [K, r] 0 (spineReds_of_spineSteps _ run_lamPack)
  simpa [instN, nxtPack, kAPack, pairT, substDec, shift, shift_parserPack, substDec_parserPack, shift_parserPack,
    shift_churchTrue, substDec_churchTrue, substDec_nextcPack, substDec_kontPackT, shift_shift0,
    substDec_shift0, shift_zero] using h

/-- Tags `01`: `(1:r) (next K) → P (kB K) r`. -/
theorem spine_appPack (K r : Term) :
    SpineReds (.app (pairT churchFalse r) (nxtPack K)) (.app (.app parserPack (kBPack K)) r) := by
  have h := spineReds_instN [K, r] 0 (spineReds_of_spineSteps _ run_appPack)
  simpa [instN, nxtPack, kBPack, pairT, substDec, shift, shift_parserPack, substDec_parserPack, shift_parserPack,
    shift_churchFalse, substDec_churchFalse, substDec_nextcPack, substDec_kontPackF, shift_shift0,
    substDec_shift0, shift_zero] using h

theorem ret_lamPack (K e u : Term) :
    SpineReds (.app (.app (kAPack K) e) u) (.app (.app K (absV e)) u) := by
  have h := spineReds_instN [K, e, u] 0 (spineReds_of_spineSteps _ run_retLamPack)
  simpa [instN, kAPack, absV, absVc, consP, substDec, shift, substDec_kontPackT,
    shift_shift0, substDec_shift0, shift_zero] using h

theorem ret_app1_Pack (K e u : Term) :
    SpineReds (.app (.app (kBPack K) e) u) (.app (.app parserPack (kC K e)) u) := by
  have h := spineReds_instN [K, e, u] 0 (spineReds_of_spineSteps _ run_retApp1_Pack)
  simpa [instN, kBPack, kC, substDec, shift, substDec_parserPack, shift_parserPack, substDec_kontPackF,
    substDec_kont2, shift_shift0, substDec_shift0, shift_zero] using h

-- ---------------------------------------------------------------------------
-- §4. The reader on a stream, and the VAR residual.

/-- Tag `1`: for `S` reaching `(1:r)`, `P K S → K r (S S P)`. -/
theorem spine_varPack (K r S : Term) (hS : SpineReds S (pairT churchFalse r)) :
    SpineReds (.app (.app parserPack K) S) (.app (.app K r) (.app (.app S S) parserPack)) := by
  refine spineReds_trans (spine_unfoldPack K S) ?_
  refine spineReds_trans (spineReds_appL _ (spineReds_appL _ (spineReds_appL _ hS))) ?_
  refine spineReds_trans (spine_varPacka K S r) ?_
  refine spineReds_trans (spineReds_appL _ (spineReds_appL _ hS)) ?_
  exact spine_varPackb K r _

/-- Tag `0`: for `S` reaching `(0:r)`, `P K S → r (next K)`. -/
theorem spine_zeroPack' (K r S : Term) (hS : SpineReds S (pairT churchTrue r)) :
    SpineReds (.app (.app parserPack K) S) (.app r (nxtPack K)) := by
  refine spineReds_trans (spine_unfoldPack K S) ?_
  refine spineReds_trans (spineReds_appL _ (spineReds_appL _ (spineReds_appL _ hS))) ?_
  exact spine_zeroPack K S r

-- ---------------------------------------------------------------------------
-- §5. The parser theorem.

/-- The open parser theorem for the bundle: for every term `M` and tail `R`,
one closure `λ.B` denoting and implementing `M`, and for every argument
`S` that spine-reduces to M's stream and EVERY continuation `K`, one
residual `U` spine-reducing to `R` with `P K S →* K (λ.B) U`.
The induction reuses the 162's quantifier order; this variant's literal
variable residual `S S P` is independent of the continuation. -/
theorem parsePack : ∀ (M R : Term), ∃ B, Den M B ∧ Implements (.lam B) M ∧
    ∀ S, SpineReds S (streamOf (blcCode M) R) → ∀ K, ∃ U, SpineReds U R ∧
      SpineReds (.app (.app parserPack K) S) (.app (.app K (.lam B)) U) := by
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
            ⟨_, self_false162 0 parserPack hS, spine_varPack K (streamOf (vbits 0) R) S hS⟩⟩
      | succ j =>
          rw [stream_vbits_succ] at himpl ⊢
          refine ⟨_, den_varS j R, himpl, fun S hS K => ⟨_, ?_, spine_varPack K _ S hS⟩⟩
          have hS' : SpineReds S (pairT churchFalse (streamOf (vbits (j + 1)) R)) := by
            rw [stream_vbits_succ]; exact hS
          exact self_false162 (j + 1) parserPack hS'
  | lam M ih =>
      intro R
      obtain ⟨B, hD, hI, hP⟩ := ih R
      refine ⟨_, den_lam hD, ⟨.lam B, hI, fun ρ a =>
        headReduces_of_spineReds (spine_absImpl (.lam B) ρ a)⟩, fun S hS K => ?_⟩
      obtain ⟨U, hU, hK⟩ := hP _ (SpineReds.refl _) (kAPack K)
      refine ⟨U, hU, ?_⟩
      have hS' : SpineReds S (pairT churchTrue (pairT churchTrue (streamOf (blcCode M) R))) := hS
      refine spineReds_trans (spine_zeroPack' K _ S hS') ?_
      refine spineReds_trans (spine_lamPack K _) ?_
      exact spineReds_trans hK (ret_lamPack K (.lam B) U)
  | app M N ihM ihN =>
      intro R
      obtain ⟨B₁, hD₁, hI₁, hP₁⟩ := ihM (streamOf (blcCode N) R)
      obtain ⟨B₂, hD₂, hI₂, hP₂⟩ := ihN R
      refine ⟨_, den_app hD₁ hD₂, ⟨.lam B₁, .lam B₂, hI₁, hI₂, fun ρ =>
        headReduces_of_spineReds (spine_appImpl (.lam B₁) (.lam B₂) ρ)⟩, fun S hS K => ?_⟩
      obtain ⟨U₁, hU₁, hK₁⟩ := hP₁ _ (SpineReds.refl _) (kBPack K)
      obtain ⟨U₂, hU₂, hK₂⟩ := hP₂ U₁ hU₁ (kC K (.lam B₁))
      refine ⟨U₂, hU₂, ?_⟩
      have hS' : SpineReds S
          (pairT churchTrue (pairT churchFalse (streamOf (blcCode M) (streamOf (blcCode N) R)))) := by
        have e : streamOf (blcCode (.app M N)) R
            = pairT churchTrue (pairT churchFalse (streamOf (blcCode M) (streamOf (blcCode N) R))) := by
          simp only [blcCode, streamOf_cons, streamOf_append]; rfl
        rw [← e]; exact hS
      refine spineReds_trans (spine_zeroPack' K _ S hS') ?_
      refine spineReds_trans (spine_appPack K _) ?_
      refine spineReds_trans hK₁ ?_
      refine spineReds_trans (ret_app1_Pack K (.lam B₁) U₁) ?_
      exact spineReds_trans hK₂ (ret_app2 K (.lam B₁) (.lam B₂) U₂)

/-- The whole configuration: `intLPack C (⌜M⌝ ++ R)` spine-reduces to
`C (λ.B) U`, with `U` spine-reducing to `R` and the closure uniform in `C`. -/
theorem intLPack_parse (M R : Term) : ∃ B, Den M B ∧ Implements (.lam B) M ∧
    ∀ C, ∃ U, SpineReds U R ∧
      SpineReds (.app (.app intLPack C) (streamOf (blcCode M) R)) (.app (.app C (.lam B)) U) := by
  obtain ⟨B, hD, hI, hP⟩ := parsePack M R
  refine ⟨B, hD, hI, fun C => ?_⟩
  obtain ⟨U, hU, hK⟩ := hP _ (SpineReds.refl _) C
  exact ⟨U, hU, spineReds_trans
    (spineReds_appL _ (spineReds_appL _ (spineReds_of_spineSteps _ run_knotPack))) hK⟩

-- ---------------------------------------------------------------------------
-- §6. The contract, and the size bound it moves.

/-- The full directed contract. For every closed `M`
and any terms `C`, `N`: `intLPack C (⌜M⌝ ++ N) →β* C (λz. M) N`. -/
theorem selfint_contractPack (M : Term) (hM : Closed M) (C N : Term) :
    Betas (.app (.app intLPack C) (streamOf (blcCode M) N)) (.app (.app C (.lam M)) N) := by
  obtain ⟨B, hD, _, hP⟩ := intLPack_parse M N
  obtain ⟨U, hU, hK⟩ := hP C
  have hB : Betas B M := by
    have h := hD 0 1 [] (.var 0) Term.var hM (fun i hi => absurd hi (Nat.not_lt_zero i))
    have e : substDec 0 (envList [] (.var 0)) (shift 1 1 B) = B := substDec_var_shift B 0
    rw [e, inst_id M Term.var (fun _ => rfl)] at h
    exact h
  exact betas_trans (betas_of_spineReds hK)
    (betas_app (betas_appR C (betas_lam hB)) (betas_of_spineReds hU))


/-- Pinned to the source derived by architecture5_bundle.py. -/
def bundleWire : List Bool := [false, true, false, false, false, true, true, false, true, false, false, false, false, true, false, false, false, false, false, false, false, true, false, true, false, true, true, false, false, false, true, false, false, false, false, true, false, true, true, true, false, false, false, true, true, true, true, false, false, true, false, true, true, true, false, true, true, false, true, true, true, true, false, false, false, false, true, true, true, true, true, false, false, false, false, true, false, true, true, true, false, false, true, true, true, true, true, false, false, false, false, false, false, true, true, true, true, false, false, false, false, false, false, true, false, true, true, true, false, true, true, true, false, false, true, true, false, true, true, true, true, false, false, true, true, true, true, true, true, false, false, false, false, true, true, true, true, true, true, false, false, false, false, true, false, true, true, true, true, false, true, false, false, true, true, true, false, true, false, false, true, true, false, true, false]

theorem wire_intLPack : blcCode intLPack = bundleWire := by decide

theorem intLPack_size : (blcCode intLPack).length = 165 := by decide

theorem isSelfInterpreter_intLPack : IsSelfInterpreter intLPack :=
  ⟨intLPack_closed, fun M hM =>
    ⟨_, selfint_contractPack M hM (.var 0) (.var 1), Betas.refl _⟩⟩

theorem run_identity : spineSteps 9 (.app (.app parserPack (.var 0)) idT)
    = some (.var 0) := by decide

theorem run_reset : spineSteps 11 (.app (.app parserPack (.var 0)) churchFalse)
    = some parserPack := by decide

theorem run_next : spineSteps 7 (.app (.app parserPack (.var 0)) churchTrue)
    = some nextcPack := by decide

theorem service_identity (C : Term) :
    SpineReds (.app (.app parserPack C) idT) C := by
  have h := spineReds_instN [C] 0 (spineReds_of_spineSteps _ run_identity)
  simpa [instN, substDec, substDec_parserPack, substDec_idT, shift_zero] using h

theorem service_reset (C : Term) :
    SpineReds (.app (.app parserPack C) churchFalse) parserPack := by
  have h := spineReds_instN [C] 0 (spineReds_of_spineSteps _ run_reset)
  simpa [instN, substDec, substDec_parserPack, substDec_churchFalse, shift_zero] using h

theorem service_next (C : Term) :
    SpineReds (.app (.app parserPack C) churchTrue) (nxtPack C) := by
  have h := spineReds_instN [C] 0 (spineReds_of_spineSteps _ run_next)
  simpa [nxtPack, instN, substDec, substDec_parserPack, substDec_churchTrue, shift_zero] using h

theorem public_service_identity (C : Term) :
    Betas (.app (.app intLPack C) idT) C :=
  betas_of_spineReds (spineReds_trans
    (spineReds_appL _ (spineReds_appL _ (spineReds_of_spineSteps _ run_knotPack)))
    (service_identity C))

theorem public_service_reset (C : Term) :
    BetaJoin (.app (.app intLPack C) churchFalse) intLPack := by
  refine ⟨parserPack, ?_, betas_of_spineReds (spineReds_of_spineSteps _ run_knotPack)⟩
  exact betas_of_spineReds (spineReds_trans
    (spineReds_appL _ (spineReds_appL _ (spineReds_of_spineSteps _ run_knotPack)))
    (service_reset C))

/-- The canonical 162 already bundles its continuation with its NEXT,
but does not expose the parser through the FALSE query. -/
theorem baseline_run_identity :
    spineSteps 9 (.app (.app parser162 (.var 0)) idT) = some (.var 0) := by decide

theorem baseline_run_false :
    spineSteps 11 (.app (.app parser162 (.var 0)) churchFalse) = some nextc162 := by decide

theorem baseline_run_true :
    spineSteps 7 (.app (.app parser162 (.var 0)) churchTrue) = some nextc162 := by decide

theorem baseline_identity (C : Term) :
    SpineReds (.app (.app parser162 C) idT) C := by
  have h := spineReds_instN [C] 0 (spineReds_of_spineSteps _ baseline_run_identity)
  simpa [instN, substDec, substDec_parser162, substDec_idT, shift_zero] using h

theorem baseline_false (C : Term) :
    SpineReds (.app (.app parser162 C) churchFalse) (nxt162 C) := by
  have h := spineReds_instN [C] 0 (spineReds_of_spineSteps _ baseline_run_false)
  simpa [nxt162, instN, substDec, substDec_parser162, substDec_churchFalse, shift_zero] using h

theorem baseline_true (C : Term) :
    SpineReds (.app (.app parser162 C) churchTrue) (nxt162 C) := by
  have h := spineReds_instN [C] 0 (spineReds_of_spineSteps _ baseline_run_true)
  simpa [nxt162, instN, substDec, substDec_parser162, substDec_churchTrue, shift_zero] using h

/-- A tag and the existing identity select parser on K and continuation
on F. The tag costs one argument, with no separately allocated pair. -/
theorem service_select_parser (C : Term) :
    Betas (.app (.app parserPack C) (.app churchTrue idT)) parserPack := by
  have hb : Betas (.app churchTrue idT) churchFalse :=
    betas_of_spineReds (spineReds_of_spineSteps 1 (by decide))
  exact betas_trans (betas_appR _ hb) (betas_of_spineReds (service_reset C))

theorem service_select_continuation (C : Term) :
    Betas (.app (.app parserPack C) (.app churchFalse idT)) C := by
  have hb : Betas (.app churchFalse idT) idT :=
    betas_of_spineReds (spineReds_of_spineSteps 1 (by decide))
  exact betas_trans (betas_appR _ hb) (betas_of_spineReds (service_identity C))

#print axioms selfint_contractPack
#print axioms isSelfInterpreter_intLPack
#print axioms public_service_identity
#print axioms public_service_reset
#print axioms baseline_identity
#print axioms baseline_false
#print axioms baseline_true
#print axioms service_select_parser
#print axioms service_select_continuation

end Blc.SelfintArchitecture5Bundle
