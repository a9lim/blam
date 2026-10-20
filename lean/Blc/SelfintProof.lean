/-
Palmer's 168-bit interpreter IS a self-interpreter. Kernel-checked
here, for `E = intL` (the constant `wire_intL` pins to the 168-bit
wire), are both forms of the contract:

* `selfint_contract` — the contract of
  `docs/classical/self-interpreter/interpreter.md` §1 as a β-REDUCTION
  (not merely a conversion), for every closed M and ANY terms C, N:

      E C (⌜M⌝ ++ N)  →β*  C (λz. M) N.

* `parserStatement`, `l1Statement`, `l2Statement` — the
  strategy-faithful obligations stated in `Blc/Selfint.lean`
  (`ParserStatement`, `L1Statement`, `L2Statement`): under HEAD
  reduction the configuration `intL C (⌜M⌝ ++ R)` reaches `C Q U`,
  with `Q` an implementing closure (`Implements Q M`) and the
  residual `U` head-reducing to `R`; for every term M, open or closed.

One induction (`parse`) carries both. For every term M and every tail
R it produces one closure `λ.B` and one residual `U`, uniform in the
continuation, with

* `Den M B` — the closure denotes M under β: substituting any cons'
  environment for its argument, under any number of extra binders,
  reduces to M with each free variable replaced by its entry;
* `Implements (λ.B) M` — the head-reduction semantics of
  `Selfint.lean`;
* `SpineReds U R` and the parse itself as SPINE head reduction (every
  source state is an application), which is what lets a residual be
  reduced in place when the parser recurses on it (APP's second parse).

Ingredients: the VAR engine (`engine`/`engineS`, induction on the unary index:
each wire '1' skips one cons' cell, the closing '0' selects), the skip
identity (`skip`: `l l l → rest` via `l l → K rest`), and sixteen
concrete machine runs (`run_*`): kernel replays (`decide`) of head-step
chains on terms whose free variables stand for the continuation, the
stream tail and the parsed closures, lifted to arbitrary terms because
head steps are stable under substitution (`spineReds_instN`).

The corollaries run through `Parses E` (end of §7), the parse's
conclusion stated for an arbitrary interpreter `E`: `contract_of_parses`,
`l1_beta_of_parses`, `open_of_parses`, and `isSelfInterpreter_of_parses`
need nothing else. `Blc/Selfint165.lean` proves `Parses intL165` for the
165-bit interpreter on top of §0–§6 and the runs here that do not name
the parser.

No `sorry`; the axioms are `propext` and `Quot.sound`.
-/

import Blc.Selfint
import Blc.Beta

namespace Blc
open Term

-- ---------------------------------------------------------------------------
-- §0. Shift/substitution algebra beyond Blc/Subst.lean.

private theorem veq {m n : Nat} (h : m = n) : Term.var m = Term.var n :=
  congrArg Term.var h

/-- The var-case finisher (a local twin of Subst.lean's `var_bash`). -/
macro "vcase" : tactic =>
  `(tactic|
    repeat' first
      | rfl
      | (exact veq (by omega))
      | (exfalso; omega)
      | (simp only [Term.shift, Term.substDec])
      | split)

theorem shift_zero : ∀ (t : Term) (c : Nat), shift 0 c t = t := by
  intro t
  induction t with
  | var n => intro c; vcase
  | lam b ih => intro c; simp only [shift]; rw [ih]
  | app f a ihf iha => intro c; simp only [shift]; rw [ihf, iha]

/-- Two lifts compose when the second cut lies in the gap the first
opens. -/
theorem shift_shift_add : ∀ (t : Term) (a b c c' : Nat), c ≤ c' → c' ≤ c + b →
    shift a c' (shift b c t) = shift (a + b) c t := by
  intro t
  induction t with
  | var n => intro a b c c' h1 h2; vcase
  | lam x ih =>
      intro a b c c' h1 h2
      simp only [shift]
      rw [ih a b (c + 1) (c' + 1) (by omega) (by omega)]
  | app f x ihf ihx =>
      intro a b c c' h1 h2
      simp only [shift]
      rw [ihf a b c c' h1 h2, ihx a b c c' h1 h2]

/-- Commuting lifts: an outer cut above an inner one. -/
theorem shift_shift_comm : ∀ (t : Term) (d m c c' : Nat), c' ≤ c →
    shift d (c + m) (shift m c' t) = shift m c' (shift d c t) := by
  intro t
  induction t with
  | var n => intro d m c c' h; vcase
  | lam x ih =>
      intro d m c c' h
      simp only [shift]
      have e : c + m + 1 = (c + 1) + m := by omega
      rw [e, ih d m (c + 1) (c' + 1) (by omega)]
  | app f x ihf ihx =>
      intro d m c c' h
      simp only [shift]
      rw [ihf d m c c' h, ihx d m c c' h]

/-- Substituting into the gap a lift opened just closes one slot of it. -/
theorem substDec_shift_mid : ∀ (t s : Term) (m c j : Nat), c ≤ j → j < c + m →
    substDec j s (shift m c t) = shift (m - 1) c t := by
  intro t
  induction t with
  | var n => intro s m c j h1 h2; vcase
  | lam x ih =>
      intro s m c j h1 h2
      simp only [shift, substDec]
      rw [ih (shift 1 0 s) m (c + 1) (j + 1) (by omega) (by omega)]
  | app f x ihf ihx =>
      intro s m c j h1 h2
      simp only [shift, substDec]
      rw [ihf s m c j h1 h2, ihx s m c j h1 h2]

/-- Re-binding the slot a lift opened: `(↑_{c+1} t)[var c / c] = t`. -/
theorem substDec_var_shift : ∀ (t : Term) (c : Nat),
    substDec c (.var c) (shift 1 (c + 1) t) = t := by
  intro t
  induction t with
  | var n => intro c; vcase
  | lam x ih =>
      intro c
      simp only [shift, substDec]
      rw [if_pos (Nat.zero_le c), ih (c + 1)]
  | app f x ihf ihx =>
      intro c
      simp only [shift, substDec]
      rw [ihf c, ihx c]

theorem shift_shift0 (a b c : Nat) (t : Term) (h : c ≤ b) :
    shift a c (shift b 0 t) = shift (a + b) 0 t :=
  shift_shift_add t a b 0 c (Nat.zero_le c) (by omega)

theorem substDec_shift0 (j m : Nat) (s t : Term) (h : j < m) :
    substDec j s (shift m 0 t) = shift (m - 1) 0 t :=
  substDec_shift_mid t s m 0 j (Nat.zero_le j) (by omega)

theorem shift_shift_comm0 (t : Term) (d m : Nat) :
    shift d m (shift m 0 t) = shift m 0 (shift d 0 t) := by
  have h := shift_shift_comm t d m 0 0 (Nat.le_refl 0)
  simpa using h

-- ---------------------------------------------------------------------------
-- §1. Spine head reduction; stability under substitution.

/-- Head reduction whose every source state is not a λ — so it lifts
into the function position of any application (`spineReds_appL`).
Every machine phase of the interpreter has this shape. -/
inductive SpineReds : Term → Term → Prop where
  | refl (t : Term) : SpineReds t t
  | step {t u v : Term} (nl : ¬ IsLam t) (h : HeadStep t u) (hs : SpineReds u v) :
      SpineReds t v

theorem spineReds_trans {t u v : Term} (h₁ : SpineReds t u) (h₂ : SpineReds u v) :
    SpineReds t v := by
  induction h₁ with
  | refl => exact h₂
  | step nl h _ ih => exact SpineReds.step nl h (ih h₂)

theorem spineReds_appL {f f' : Term} (a : Term) (h : SpineReds f f') :
    SpineReds (.app f a) (.app f' a) := by
  induction h with
  | refl t => exact SpineReds.refl _
  | step nl h _ ih => exact SpineReds.step (fun h => h) (HeadStep.appL a (notLam_ne nl) h) ih

theorem headReduces_of_spineReds {t u : Term} (h : SpineReds t u) : HeadReduces t u := by
  induction h with
  | refl t => exact ⟨0, HeadReds.refl t⟩
  | step _ h _ ih =>
      obtain ⟨n, hn⟩ := ih
      exact ⟨n + 1, HeadReds.head h hn⟩

theorem betas_of_spineReds {t u : Term} (h : SpineReds t u) : Betas t u := by
  induction h with
  | refl t => exact Betas.refl t
  | step _ h _ ih => exact Betas.head (beta_of_headStep h) ih

theorem not_isLam_of_ne {f : Term} (h : ∀ b, f ≠ .lam b) : ¬ IsLam f := by
  cases f with
  | lam b => exact absurd rfl (h b)
  | var n => exact fun h => h
  | app g x => exact fun h => h

/-- A non-λ that head-steps is an application, and stays one under
substitution. -/
theorem not_isLam_substDec {t u : Term} (nl : ¬ IsLam t) (h : HeadStep t u)
    (j : Nat) (s : Term) : ¬ IsLam (substDec j s t) := by
  cases t with
  | var n => cases h
  | lam b => exact absurd trivial nl
  | app f a => exact fun h => h

/-- Head steps are stable under substitution: replacing variables never
moves the head redex. -/
theorem headStep_substDec {t u : Term} (h : HeadStep t u) :
    ∀ (j : Nat) (s : Term), HeadStep (substDec j s t) (substDec j s u) := by
  induction h with
  | beta b a =>
      intro j s
      simp only [substDec]
      rw [substDec_contract]
      exact HeadStep.beta _ _
  | appL a nonlam h ih =>
      intro j s
      simp only [substDec]
      exact HeadStep.appL _
        (notLam_ne (not_isLam_substDec (not_isLam_of_ne nonlam) h j s)) (ih j s)
  | under _ ih =>
      intro j s
      simp only [substDec]
      exact HeadStep.under (ih _ _)

theorem spineReds_substDec {t u : Term} (h : SpineReds t u) (j : Nat) (s : Term) :
    SpineReds (substDec j s t) (substDec j s u) := by
  induction h with
  | refl t => exact SpineReds.refl _
  | step nl hs _ ih =>
      exact SpineReds.step (not_isLam_substDec nl hs j s) (headStep_substDec hs j s) ih

/-- Simultaneous instantiation of the placeholders `var j, var j+1, …`
by a list of terms (each read in the context outside the
placeholders). -/
def instN : List Term → Nat → Term → Term
  | [], _, t => t
  | a :: as, j, t => substDec j (shift j 0 a) (instN as (j + 1) t)

theorem spineReds_instN : ∀ (as : List Term) (j : Nat) {t u : Term},
    SpineReds t u → SpineReds (instN as j t) (instN as j u) := by
  intro as
  induction as with
  | nil => intro j t u h; exact h
  | cons a as ih =>
      intro j t u h
      exact spineReds_substDec (ih (j + 1) h) j _

/-- Executable spine stepper: `n` head steps, refusing a λ source. -/
def spineSteps : Nat → Term → Option Term
  | 0, t => some t
  | n + 1, t => if IsLam t then none else (headStep t).bind (spineSteps n)

theorem spineReds_of_spineSteps :
    ∀ (n : Nat) {t u : Term}, spineSteps n t = some u → SpineReds t u := by
  intro n
  induction n with
  | zero => intro t u h; cases h; exact SpineReds.refl _
  | succ m ih =>
      intro t u h
      simp only [spineSteps] at h
      split at h
      · cases h
      · rename_i hl
        simp only [Option.bind_eq_some_iff] at h
        obtain ⟨v, hv, hrest⟩ := h
        exact SpineReds.step hl (headStep_sound hv) (ih hrest)

/-- A single outer β-step from an application is a spine step. -/
theorem spine_beta (b a : Term) : SpineReds (.app (.lam b) a) (contract b a) :=
  SpineReds.step (fun h => h) (HeadStep.beta b a) (SpineReds.refl _)

theorem betas_app {f f' a a' : Term} (hf : Betas f f') (ha : Betas a a') :
    Betas (.app f a) (.app f' a') :=
  betas_trans (betas_appL a hf) (betas_appR f' ha)

-- ---------------------------------------------------------------------------
-- §2. The interpreter, named by its parts.

/-- `\args \arg. exp (cons' arg args)` with `exp` free at index 0
outside its two binders. -/
def absVt : Term :=
  .lam (.lam (.app (.var 2) (.lam (.lam (.app (.app (.var 1) (.var 2)) (.app (.var 0) (.var 3)))))))

/-- `\args. exp args (exp2 args)`, `exp2` and `exp` free at 0 and 1. -/
def appVt : Term := .lam (.app (.app (.var 2) (.var 0)) (.app (.var 1) (.var 0)))

/-- The floated zero-branch continuation
`\bit1. intL (\exp. bit1 (cont ABS) (intL (\exp2. cont APP)))`. -/
def nextT : Term :=
  .lam (.app (.var 2) (.lam (.app (.app (.var 1) (.app (.var 2) absVt))
    (.app (.var 3) (.lam (.app (.var 3) appVt))))))

/-- `\bit0 \list1. bit0 (list1 next) (cont list1 (list1 list1 list1))`. -/
def handlerT : Term :=
  .lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 3)))
    (.app (.app (.var 4) (.var 0)) (.app (.app (.var 0) (.var 0)) (.var 0)))))

/-- `\intL \cont. (\next \list. list H) NEXT`. -/
def bodyT : Term := .lam (.lam (.app (.lam (.lam (.app (.var 0) handlerT))) nextT))

/-- The knot's generator `\x. body (x x)`. -/
def knotW : Term := .lam (.app bodyT (.app (.var 0) (.var 0)))

/-- The parser: `intL`'s first head reduct, and the value of every
recursive call. -/
def parser : Term := .app knotW knotW

theorem intL_eq : intL = .app (.lam (.app (.var 0) (.var 0))) knotW := by decide

theorem parser_closed : Closed parser := by decide

theorem shift_parser (d c : Nat) : shift d c parser = parser :=
  shift_closed d c parser_closed

theorem substDec_parser (j : Nat) (s : Term) : substDec j s parser = parser :=
  substDec_closed j s parser_closed

theorem shift_churchTrue (d c : Nat) : shift d c churchTrue = churchTrue :=
  shift_closed d c (by decide)

theorem shift_churchFalse (d c : Nat) : shift d c churchFalse = churchFalse :=
  shift_closed d c (by decide)

theorem substDec_churchTrue (j : Nat) (s : Term) :
    substDec j s churchTrue = churchTrue :=
  substDec_closed j s (by decide)

theorem substDec_churchFalse (j : Nat) (s : Term) :
    substDec j s churchFalse = churchFalse :=
  substDec_closed j s (by decide)

theorem shift_churchBit (d c : Nat) (b : Bool) : shift d c (churchBit b) = churchBit b := by
  cases b
  · exact shift_churchTrue d c
  · exact shift_churchFalse d c

/-- The zero branch's `next`, with `cont` free at index 2 (under the
handler's `\bit0 \list1`) and `intL` resolved to the parser. -/
def nextc : Term :=
  .lam (.app parser (.lam (.app (.app (.var 1) (.app (.var 4) absVt))
    (.app parser (.lam (.app (.var 5) appVt))))))

/-- The handler the parser applies the stream to, `cont` free at 0. -/
def hndc : Term :=
  .lam (.lam (.app (.app (.var 1) (.app (.var 0) nextc))
    (.app (.app (.var 2) (.var 0)) (.app (.app (.var 0) (.var 0)) (.var 0)))))

/-- The first parse's continuation, with `cont` free at index 0 and the
second tag bit `b` substituted. -/
def kont (b : Term) : Term :=
  .lam (.app (.app b (.app (.var 1) absVt)) (.app parser (.lam (.app (.var 2) appVt))))

/-- APP's second continuation, `cont` free at 0 and `exp` at 1. -/
def kont2 : Term :=
  .lam (.app (.var 1) (.lam (.app (.app (.var 3) (.var 0)) (.app (.var 1) (.var 0)))))

/-- ABS's value with `exp` free at index 1. -/
def absVc : Term :=
  .lam (.lam (.app (.var 3) (.lam (.lam (.app (.app (.var 1) (.var 2)) (.app (.var 0) (.var 3)))))))

/-- APP's value with `exp`, `exp2` free at 1, 2. -/
def appVc : Term := .lam (.app (.app (.var 2) (.var 0)) (.app (.var 3) (.var 0)))

theorem substDec_hndc (j : Nat) (s : Term) (h : 1 ≤ j) : substDec j s hndc = hndc :=
  substDec_of_freeUnder _ j s (freeUnder_mono h (by decide))

theorem substDec_kontT (j : Nat) (s : Term) (h : 1 ≤ j) :
    substDec j s (kont churchTrue) = kont churchTrue :=
  substDec_of_freeUnder _ j s (freeUnder_mono h (by decide))

theorem substDec_kontF (j : Nat) (s : Term) (h : 1 ≤ j) :
    substDec j s (kont churchFalse) = kont churchFalse :=
  substDec_of_freeUnder _ j s (freeUnder_mono h (by decide))

theorem substDec_kont2 (j : Nat) (s : Term) (h : 2 ≤ j) :
    substDec j s kont2 = kont2 :=
  substDec_of_freeUnder _ j s (freeUnder_mono h (by decide))

/-- The handler, closed over `cont = K`. -/
def hnd (K : Term) : Term := substDec 0 K hndc

/-- ABS's continuation, closed over `cont = K`. -/
def kA (K : Term) : Term := substDec 0 K (kont churchTrue)

/-- APP's first continuation, closed over `cont = K`. -/
def kB (K : Term) : Term := substDec 0 K (kont churchFalse)

/-- APP's second continuation, closed over `cont = K` and `exp = e`. -/
def kC (K e : Term) : Term := instN [K, e] 0 kont2

/-- ABS's value `\args \arg. e (cons' arg args)`. -/
def absV (e : Term) : Term := .lam (.lam (.app (shift 2 0 e) (consP (.var 0) (.var 1))))

/-- APP's value `\args. e args (e₂ args)`. -/
def appV (e e₂ : Term) : Term :=
  .lam (.app (.app (shift 1 0 e) (.var 0)) (.app (shift 1 0 e₂) (.var 0)))

-- ---------------------------------------------------------------------------
-- §3. The machine runs, replayed by the kernel on placeholder terms.

/-- The knot: `intL` head-steps to the parser. -/
theorem run_knot : spineSteps 1 intL = some parser := by decide

/-- The parser unfolds and applies the stream to its handler. -/
theorem run_unfold :
    spineSteps 5 (.app (.app parser (.var 0)) (.var 1)) = some (.app (.var 1) hndc) := by
  decide

/-- Tag `1`: VAR returns `cont list1 (list1 list1 list1)`. -/
theorem run_var :
    spineSteps 5 (.app (pairT churchFalse (.var 1)) hndc)
      = some (.app (.app (.var 0) (.var 1)) (.app (.app (.var 1) (.var 1)) (.var 1))) := by
  decide

/-- Tags `00`: ABS parses its body under the ABS continuation. -/
theorem run_lam :
    spineSteps 7 (.app (pairT churchTrue (pairT churchTrue (.var 1))) hndc)
      = some (.app (.app parser (kont churchTrue)) (.var 1)) := by
  decide

/-- Tags `01`: APP parses its function under the APP continuation. -/
theorem run_app :
    spineSteps 7 (.app (pairT churchTrue (pairT churchFalse (.var 1))) hndc)
      = some (.app (.app parser (kont churchFalse)) (.var 1)) := by
  decide

/-- ABS returns its value. -/
theorem run_retLam :
    spineSteps 3 (.app (.app (kont churchTrue) (.var 1)) (.var 2))
      = some (.app (.app (.var 0) absVc) (.var 2)) := by
  decide

/-- APP's first parse continues into the second. -/
theorem run_retApp1 :
    spineSteps 3 (.app (.app (kont churchFalse) (.var 1)) (.var 2))
      = some (.app (.app parser kont2) (.var 2)) := by
  decide

/-- APP returns its value. -/
theorem run_retApp2 :
    spineSteps 1 (.app (.app kont2 (.var 2)) (.var 3))
      = some (.app (.app (.var 0) appVc) (.var 3)) := by
  decide

/-- A stream cell meets its reader. -/
theorem run_pair :
    spineSteps 1 (.app (pairT (.var 0) (.var 1)) (.var 2))
      = some (.app (.app (.var 2) (.var 0)) (.var 1)) := by
  decide

/-- A cons' cell read by TRUE returns its entry. -/
theorem run_cell0 :
    spineSteps 4 (.app (.app (consP (.var 0) (.var 1)) churchTrue) (.var 2)) = some (.var 0) := by
  decide

/-- A cons' cell read by FALSE passes its tail to the continuation. -/
theorem run_cellS :
    spineSteps 4 (.app (.app (consP (.var 0) (.var 1)) churchFalse) (.var 2))
      = some (.app (.var 2) (.var 1)) := by
  decide

theorem run_true1 : spineSteps 1 (.app churchTrue (.var 0)) = some (.lam (.var 1)) := by decide

theorem run_true2 : spineSteps 2 (.app (.app churchTrue (.var 0)) (.var 1)) = some (.var 0) := by
  decide

theorem run_false2 :
    spineSteps 2 (.app (.app churchFalse (.var 0)) (.var 1)) = some (.var 1) := by
  decide

/-- An ABS closure applied to an environment and an argument enters its
body under the extended environment. -/
theorem run_absImpl :
    spineSteps 2 (.app (.app (absV (.var 0)) (.var 1)) (.var 2))
      = some (.app (.var 0) (consP (.var 2) (.var 1))) := by
  decide

/-- An APP closure applied to an environment spreads it to both parts. -/
theorem run_appImpl :
    spineSteps 1 (.app (appV (.var 0) (.var 1)) (.var 2))
      = some (.app (.app (.var 0) (.var 2)) (.app (.var 1) (.var 2))) := by
  decide

-- ---------------------------------------------------------------------------
-- §4. The runs, lifted to arbitrary continuations, tails and closures.

theorem spine_unfold (K s : Term) :
    SpineReds (.app (.app parser K) s) (.app s (hnd K)) := by
  have h := spineReds_instN [K, s] 0 (spineReds_of_spineSteps _ run_unfold)
  simpa [instN, hnd, substDec, shift, substDec_parser, substDec_hndc, substDec_shift0,
    shift_zero] using h

/-- Tag `1`: `(1:r) (hnd K) → K r (r r r)`. -/
theorem spine_var (K r : Term) :
    SpineReds (.app (pairT churchFalse r) (hnd K)) (.app (.app K r) (.app (.app r r) r)) := by
  have h := spineReds_instN [K, r] 0 (spineReds_of_spineSteps _ run_var)
  simpa [instN, hnd, pairT, substDec, shift, shift_churchFalse, substDec_churchFalse,
    substDec_hndc, shift_shift0, substDec_shift0, shift_zero] using h

/-- Tags `00`: `(0:0:r) (hnd K) → P (kA K) r`. -/
theorem spine_lam (K r : Term) :
    SpineReds (.app (pairT churchTrue (pairT churchTrue r)) (hnd K))
      (.app (.app parser (kA K)) r) := by
  have h := spineReds_instN [K, r] 0 (spineReds_of_spineSteps _ run_lam)
  simpa [instN, hnd, kA, pairT, substDec, shift, shift_parser, substDec_parser,
    shift_churchTrue, substDec_churchTrue, substDec_hndc, substDec_kontT, shift_shift0,
    substDec_shift0, shift_zero] using h

/-- Tags `01`: `(0:1:r) (hnd K) → P (kB K) r`. -/
theorem spine_app (K r : Term) :
    SpineReds (.app (pairT churchTrue (pairT churchFalse r)) (hnd K))
      (.app (.app parser (kB K)) r) := by
  have h := spineReds_instN [K, r] 0 (spineReds_of_spineSteps _ run_app)
  simpa [instN, hnd, kB, pairT, substDec, shift, shift_parser, substDec_parser,
    shift_churchTrue, substDec_churchTrue, shift_churchFalse, substDec_churchFalse,
    substDec_hndc, substDec_kontF, shift_shift0, substDec_shift0, shift_zero] using h

theorem ret_lam (K e u : Term) :
    SpineReds (.app (.app (kA K) e) u) (.app (.app K (absV e)) u) := by
  have h := spineReds_instN [K, e, u] 0 (spineReds_of_spineSteps _ run_retLam)
  simpa [instN, kA, absV, absVc, consP, substDec, shift, substDec_kontT,
    shift_shift0, substDec_shift0, shift_zero] using h

theorem ret_app1 (K e u : Term) :
    SpineReds (.app (.app (kB K) e) u) (.app (.app parser (kC K e)) u) := by
  have h := spineReds_instN [K, e, u] 0 (spineReds_of_spineSteps _ run_retApp1)
  simpa [instN, kB, kC, substDec, shift, substDec_parser, substDec_kontF, substDec_kont2,
    shift_shift0, substDec_shift0, shift_zero] using h

theorem ret_app2 (K e e₂ u : Term) :
    SpineReds (.app (.app (kC K e) e₂) u) (.app (.app K (appV e e₂)) u) := by
  have h := spineReds_instN [K, e, e₂, u] 0 (spineReds_of_spineSteps _ run_retApp2)
  simpa [instN, kC, appV, appVc, substDec, shift, substDec_kont2,
    shift_shift0, substDec_shift0, shift_zero] using h

theorem spine_pairT (A P X : Term) :
    SpineReds (.app (pairT A P) X) (.app (.app X A) P) := by
  have h := spineReds_instN [A, P, X] 0 (spineReds_of_spineSteps _ run_pair)
  simpa [instN, pairT, substDec, shift, shift_shift0, substDec_shift0, shift_zero] using h

theorem spine_cell0 (a ρ T : Term) :
    SpineReds (.app (.app (consP a ρ) churchTrue) T) a := by
  have h := spineReds_instN [a, ρ, T] 0 (spineReds_of_spineSteps _ run_cell0)
  simpa [instN, consP, substDec, shift, shift_churchTrue, substDec_churchTrue,
    shift_shift0, substDec_shift0, shift_zero] using h

theorem spine_cellS (a ρ T : Term) :
    SpineReds (.app (.app (consP a ρ) churchFalse) T) (.app T ρ) := by
  have h := spineReds_instN [a, ρ, T] 0 (spineReds_of_spineSteps _ run_cellS)
  simpa [instN, consP, substDec, shift, shift_churchFalse, substDec_churchFalse,
    shift_shift0, substDec_shift0, shift_zero] using h

theorem spine_true1 (X : Term) : SpineReds (.app churchTrue X) (.lam (shift 1 0 X)) := by
  have h := spineReds_instN [X] 0 (spineReds_of_spineSteps _ run_true1)
  simpa [instN, substDec, shift, substDec_churchTrue, shift_zero] using h

theorem spine_true2 (X Y : Term) : SpineReds (.app (.app churchTrue X) Y) X := by
  have h := spineReds_instN [X, Y] 0 (spineReds_of_spineSteps _ run_true2)
  simpa [instN, substDec, shift, substDec_churchTrue, substDec_shift0, shift_zero] using h

theorem spine_false2 (X Y : Term) : SpineReds (.app (.app churchFalse X) Y) Y := by
  have h := spineReds_instN [X, Y] 0 (spineReds_of_spineSteps _ run_false2)
  simpa [instN, substDec, shift, substDec_churchFalse, substDec_shift0, shift_zero] using h

theorem spine_absImpl (e ρ a : Term) :
    SpineReds (.app (.app (absV e) ρ) a) (.app e (consP a ρ)) := by
  have h := spineReds_instN [e, ρ, a] 0 (spineReds_of_spineSteps _ run_absImpl)
  simpa [instN, absV, consP, substDec, shift, shift_shift0, substDec_shift0, shift_zero] using h

theorem spine_appImpl (e e₂ ρ : Term) :
    SpineReds (.app (appV e e₂) ρ) (.app (.app e ρ) (.app e₂ ρ)) := by
  have h := spineReds_instN [e, e₂, ρ] 0 (spineReds_of_spineSteps _ run_appImpl)
  simpa [instN, appV, substDec, shift, shift_shift0, substDec_shift0, shift_zero] using h

-- ---------------------------------------------------------------------------
-- §5. Streams, environments, the VAR engine, and skipvar.

/-- The wire suffix after a variable's first `1`: `1^i 0`. -/
def vbits (i : Nat) : List Bool := List.replicate i true ++ [false]

theorem vbits_succ (j : Nat) : vbits (j + 1) = true :: vbits j := by
  simp [vbits, List.replicate_succ]

theorem code_var (i : Nat) : blcCode (.var i) = true :: vbits i := by
  simp [blcCode, vbits, List.replicate_succ]

theorem streamOf_cons (b : Bool) (bs : List Bool) (R : Term) :
    streamOf (b :: bs) R = pairT (churchBit b) (streamOf bs R) := rfl

theorem streamOf_append (xs ys : List Bool) (R : Term) :
    streamOf (xs ++ ys) R = streamOf xs (streamOf ys R) := by
  simp [streamOf, List.foldr_append]

theorem stream_vbits_zero (R : Term) : streamOf (vbits 0) R = pairT churchTrue R := rfl

theorem stream_vbits_succ (j : Nat) (R : Term) :
    streamOf (vbits (j + 1)) R = pairT churchFalse (streamOf (vbits j) R) := by
  rw [vbits_succ]; rfl

theorem envList_cons (a : Term) (env : List Term) (R : Term) :
    envList (a :: env) R = consP a (envList env R) := rfl

theorem shift_pairT (d c : Nat) (A P : Term) :
    shift d c (pairT A P) = pairT (shift d c A) (shift d c P) := by
  unfold pairT
  simp only [shift]
  rw [shift_shift_comm A d 1 c 0 (Nat.zero_le c), shift_shift_comm P d 1 c 0 (Nat.zero_le c)]
  simp

theorem shift_consP (d c : Nat) (A P : Term) :
    shift d c (consP A P) = consP (shift d c A) (shift d c P) := by
  unfold consP
  simp only [shift]
  have hA := shift_shift_comm A d 2 c 0 (Nat.zero_le c)
  have hP := shift_shift_comm P d 2 c 0 (Nat.zero_le c)
  have e : c + 1 + 1 = c + 2 := by omega
  rw [e, hA, hP]
  simp

theorem shift_streamOf (d c : Nat) (bits : List Bool) (R : Term) :
    shift d c (streamOf bits R) = streamOf bits (shift d c R) := by
  induction bits with
  | nil => rfl
  | cons b bs ih =>
      rw [streamOf_cons, streamOf_cons, shift_pairT, shift_churchBit, ih]

theorem shift_envList (d c : Nat) (env : List Term) (R : Term) :
    shift d c (envList env R) = envList (env.map (shift d c)) (shift d c R) := by
  induction env with
  | nil => rfl
  | cons a env ih =>
      rw [envList_cons, shift_consP, ih]
      rfl

/-- The VAR engine's last step: the closing `0` selects the head. -/
theorem engine0 (a : Term) (env : List Term) (Renv T : Term) :
    SpineReds (.app (.app (envList (a :: env) Renv) churchTrue) T) a :=
  spine_cell0 a _ T

/-- The VAR engine (L2), by induction on the unary index: each wire `1`
skips one cons' cell. -/
theorem engineS : ∀ (j : Nat) (a : Term) (env : List Term) (Renv T v : Term),
    env[j]? = some v →
      SpineReds (.app (.app (envList (a :: env) Renv) churchFalse) (streamOf (vbits j) T)) v := by
  intro j
  induction j with
  | zero =>
      intro a env Renv T v h
      cases env with
      | nil => simp at h
      | cons a' env' =>
          simp at h
          subst h
          rw [envList_cons, stream_vbits_zero]
          refine spineReds_trans (spine_cellS a _ _) ?_
          exact spineReds_trans (spine_pairT _ _ _) (engine0 _ env' Renv T)
  | succ j ih =>
      intro a env Renv T v h
      cases env with
      | nil => simp at h
      | cons a' env' =>
          simp at h
          rw [envList_cons, stream_vbits_succ]
          refine spineReds_trans (spine_cellS a _ _) ?_
          exact spineReds_trans (spine_pairT _ _ _) (ih a' env' Renv T v h)

/-- A variable's value, the stream `1^i 0 ++ T` after its first `1`,
looks itself up: applied to an environment it returns entry `i`. -/
theorem engine (i : Nat) (env : List Term) (Renv T v : Term) (h : env[i]? = some v) :
    SpineReds (.app (streamOf (vbits i) T) (envList env Renv)) v := by
  cases i with
  | zero =>
      cases env with
      | nil => simp at h
      | cons a env' =>
          simp at h
          subst h
          rw [stream_vbits_zero]
          exact spineReds_trans (spine_pairT _ _ _) (engine0 _ env' Renv T)
  | succ j =>
      cases env with
      | nil => simp at h
      | cons a env' =>
          simp at h
          rw [stream_vbits_succ]
          exact spineReds_trans (spine_pairT _ _ _) (engineS j a env' Renv T v h)

/-- `l l → K rest` for a variable stream `l = 1^i 0 ++ rest`. -/
theorem skip_self : ∀ (i : Nat) (T : Term),
    SpineReds (.app (streamOf (vbits i) T) (streamOf (vbits i) T)) (.lam (shift 1 0 T)) := by
  intro i
  induction i with
  | zero =>
      intro T
      rw [stream_vbits_zero]
      refine spineReds_trans (spine_pairT _ _ _) ?_
      refine spineReds_trans (spineReds_appL T (spine_pairT _ _ _)) ?_
      refine spineReds_trans (spineReds_appL T (spine_true2 churchTrue T)) ?_
      exact spine_true1 T
  | succ j ih =>
      intro T
      rw [stream_vbits_succ]
      refine spineReds_trans (spine_pairT _ _ _) ?_
      refine spineReds_trans (spineReds_appL _ (spine_pairT _ _ _)) ?_
      refine spineReds_trans (spineReds_appL _ (spine_false2 churchFalse _)) ?_
      exact ih T

/-- skipvar: `l l l → rest`. -/
theorem skip (i : Nat) (T : Term) :
    SpineReds (.app (.app (streamOf (vbits i) T) (streamOf (vbits i) T)) (streamOf (vbits i) T)) T := by
  refine spineReds_trans (spineReds_appL _ (skip_self i T)) ?_
  have h := spine_beta (shift 1 0 T) (streamOf (vbits i) T)
  have e : contract (shift 1 0 T) (streamOf (vbits i) T) = T := substDec_shift T _ 0
  rw [e] at h
  exact h

-- ---------------------------------------------------------------------------
-- §6. Denotation: what a parsed closure computes under β.

/-- Lifting a substitution under a binder. -/
def up (σ : Nat → Term) : Nat → Term
  | 0 => .var 0
  | n + 1 => shift 1 0 (σ n)

/-- Simultaneous substitution. -/
def inst (σ : Nat → Term) : Term → Term
  | .var n => σ n
  | .lam b => .lam (inst (up σ) b)
  | .app f a => .app (inst σ f) (inst σ a)

theorem inst_id : ∀ (t : Term) (σ : Nat → Term), (∀ n, σ n = .var n) → inst σ t = t := by
  intro t
  induction t with
  | var n => intro σ h; exact h n
  | lam b ih =>
      intro σ h
      simp only [inst]
      rw [ih (up σ) (by
        intro n
        cases n with
        | zero => rfl
        | succ n => simp [up, h, shift])]
  | app f a ihf iha =>
      intro σ h
      simp only [inst]
      rw [ihf σ h, iha σ h]

/-- `Den M B`: the closure `λ.B` denotes `M`. Substituting any cons'
environment for the closure's argument — under any number `k` of
extra binders, and whatever the environment's tail — reduces to `M`
with each free variable `i < d` replaced by the environment's entry
`i`. -/
def Den (M B : Term) : Prop :=
  ∀ (d k : Nat) (env : List Term) (R : Term) (σ : Nat → Term),
    FreeUnder d M → (∀ i, i < d → env[i]? = some (σ i)) →
      Betas (substDec 0 (envList env R) (shift k 1 B)) (inst σ M)

theorem pair_body_subst (A P ρ : Term) (k : Nat) :
    substDec 0 ρ (shift k 1 (.app (.app (.var 0) (shift 1 0 A)) (shift 1 0 P)))
      = .app (.app ρ (shift k 0 A)) (shift k 0 P) := by
  simp only [shift]
  rw [shift_shift_comm0 A k 1, shift_shift_comm0 P k 1]
  simp [substDec, substDec_shift]

theorem den_var0 (R : Term) :
    Den (.var 0) (.app (.app (.var 0) (shift 1 0 churchTrue)) (shift 1 0 R)) := by
  intro d k env R' σ hfree hagree
  rw [pair_body_subst, shift_churchTrue]
  have h := hagree 0 hfree
  cases env with
  | nil => simp at h
  | cons a env' =>
      simp at h
      subst h
      exact betas_of_spineReds (engine0 _ env' R' _)

theorem den_varS (j : Nat) (R : Term) :
    Den (.var (j + 1))
      (.app (.app (.var 0) (shift 1 0 churchFalse)) (shift 1 0 (streamOf (vbits j) R))) := by
  intro d k env R' σ hfree hagree
  rw [pair_body_subst, shift_churchFalse, shift_streamOf]
  have h := hagree (j + 1) hfree
  cases env with
  | nil => simp at h
  | cons a env' =>
      simp at h
      exact betas_of_spineReds (engineS j a env' R' _ _ h)

theorem consP_var01_subst (ρ : Term) :
    substDec 1 ρ (consP (.var 0) (.var 1)) = consP (.var 0) ρ := by
  simp [consP, substDec, shift, shift_shift0]

/-- ABS's closure body under a substituted environment. -/
theorem absV_subst (e ρ : Term) (k : Nat) :
    substDec 0 ρ (shift k 1 (.lam (.app (shift 2 0 e) (consP (.var 0) (.var 1)))))
      = .lam (.app (shift (k + 1) 0 e) (consP (.var 0) (shift 1 0 ρ))) := by
  have hc : shift k 2 (consP (.var 0) (.var 1)) = consP (.var 0) (.var 1) :=
    shift_of_freeUnder k _ 2 2 (by decide) (Nat.le_refl 2)
  have h1 : shift k 1 (.lam (.app (shift 2 0 e) (consP (.var 0) (.var 1))))
      = .lam (.app (shift (k + 2) 0 e) (consP (.var 0) (.var 1))) := by
    show Term.lam (.app (shift k 2 (shift 2 0 e)) (shift k 2 (consP (.var 0) (.var 1)))) = _
    rw [hc, shift_shift_add e k 2 0 2 (Nat.zero_le 2) (Nat.le_refl 2)]
  rw [h1]
  show Term.lam (.app (substDec 1 (shift 1 0 ρ) (shift (k + 2) 0 e))
    (substDec 1 (shift 1 0 ρ) (consP (.var 0) (.var 1)))) = _
  rw [substDec_shift0 1 (k + 2) _ _ (by omega), consP_var01_subst]
  have hk : k + 2 - 1 = k + 1 := by omega
  rw [hk]

/-- APP's closure body under a substituted environment. -/
theorem appV_subst (e₁ e₂ ρ : Term) (k : Nat) :
    substDec 0 ρ (shift k 1 (.app (.app (shift 1 0 e₁) (.var 0)) (.app (shift 1 0 e₂) (.var 0))))
      = .app (.app (shift k 0 e₁) ρ) (.app (shift k 0 e₂) ρ) := by
  have hv : substDec 0 ρ (shift k 1 (.var 0)) = ρ := by simp [shift, substDec]
  show Term.app (.app (substDec 0 ρ (shift k 1 (shift 1 0 e₁))) (substDec 0 ρ (shift k 1 (.var 0))))
    (.app (substDec 0 ρ (shift k 1 (shift 1 0 e₂))) (substDec 0 ρ (shift k 1 (.var 0)))) = _
  rw [shift_shift_comm0 e₁ k 1, shift_shift_comm0 e₂ k 1, substDec_shift, substDec_shift, hv]

theorem den_lam {M B : Term} (h : Den M B) :
    Den (.lam M) (.lam (.app (shift 2 0 (.lam B)) (consP (.var 0) (.var 1)))) := by
  intro d k env R σ hfree hagree
  rw [absV_subst, shift_envList]
  show Betas (.lam (.app (.lam (shift (k + 1) 1 B))
      (envList (.var 0 :: env.map (shift 1 0)) (shift 1 0 R)))) (.lam (inst (up σ) M))
  refine betas_lam (Betas.head (Beta.beta _ _) ?_)
  refine h (d + 1) (k + 1) _ (shift 1 0 R) (up σ) hfree ?_
  intro i hi
  cases i with
  | zero => rfl
  | succ i =>
      have := hagree i (by omega)
      simp [List.getElem?_map, this, up]

theorem den_app {M₁ M₂ B₁ B₂ : Term} (h₁ : Den M₁ B₁) (h₂ : Den M₂ B₂) :
    Den (.app M₁ M₂)
      (.app (.app (shift 1 0 (.lam B₁)) (.var 0)) (.app (shift 1 0 (.lam B₂)) (.var 0))) := by
  intro d k env R σ hfree hagree
  rw [appV_subst]
  show Betas (.app (.app (.lam (shift k 1 B₁)) (envList env R))
      (.app (.lam (shift k 1 B₂)) (envList env R))) (.app (inst σ M₁) (inst σ M₂))
  exact betas_app (Betas.head (Beta.beta _ _) (h₁ d k env R σ hfree.1 hagree))
    (Betas.head (Beta.beta _ _) (h₂ d k env R σ hfree.2 hagree))

-- ---------------------------------------------------------------------------
-- §7. The parser theorem.

/-- The open parser theorem: for every term `M` (closed or not) and
every tail `R`, one closure `λ.B` and one residual `U` such that `B`
denotes `M` under β, `λ.B` implements `M` under head reduction, `U`
spine-reduces to `R`, and, for EVERY continuation `K`, the stream
applied to the handler spine-reduces to `K (λ.B) U`. -/
theorem parse : ∀ (M R : Term), ∃ B U,
    Den M B ∧ Implements (.lam B) M ∧ SpineReds U R ∧
      ∀ K, SpineReds (.app (streamOf (blcCode M) R) (hnd K)) (.app (.app K (.lam B)) U) := by
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
          exact ⟨_, _, den_var0 R, himpl, skip 0 R, fun K => spine_var K (streamOf (vbits 0) R)⟩
      | succ j =>
          rw [stream_vbits_succ] at himpl ⊢
          have hs := skip (j + 1) R
          rw [stream_vbits_succ] at hs
          have hv : ∀ K, SpineReds (.app (pairT churchFalse
              (pairT churchFalse (streamOf (vbits j) R))) (hnd K)) _ := fun K => by
            have h := spine_var K (streamOf (vbits (j + 1)) R)
            rw [stream_vbits_succ] at h
            exact h
          exact ⟨_, _, den_varS j R, himpl, hs, hv⟩
  | lam M ih =>
      intro R
      obtain ⟨B, U, hD, hI, hU, hK⟩ := ih R
      refine ⟨_, U, den_lam hD, ?_, hU, fun K => ?_⟩
      · refine ⟨.lam B, hI, fun ρ a => ?_⟩
        exact headReduces_of_spineReds (spine_absImpl (.lam B) ρ a)
      · show SpineReds (.app (pairT churchTrue (pairT churchTrue (streamOf (blcCode M) R))) (hnd K)) _
        refine spineReds_trans (spine_lam K _) ?_
        refine spineReds_trans (spine_unfold (kA K) _) ?_
        exact spineReds_trans (hK (kA K)) (ret_lam K (.lam B) U)
  | app M N ihM ihN =>
      intro R
      obtain ⟨B₁, U₁, hD₁, hI₁, hU₁, hK₁⟩ := ihM (streamOf (blcCode N) R)
      obtain ⟨B₂, U₂, hD₂, hI₂, hU₂, hK₂⟩ := ihN R
      refine ⟨_, U₂, den_app hD₁ hD₂, ?_, hU₂, fun K => ?_⟩
      · refine ⟨.lam B₁, .lam B₂, hI₁, hI₂, fun ρ => ?_⟩
        exact headReduces_of_spineReds (spine_appImpl (.lam B₁) (.lam B₂) ρ)
      · show SpineReds (.app
          (pairT churchTrue (pairT churchFalse (streamOf (blcCode M ++ blcCode N) R))) (hnd K)) _
        rw [streamOf_append]
        refine spineReds_trans (spine_app K _) ?_
        refine spineReds_trans (spine_unfold (kB K) _) ?_
        refine spineReds_trans (hK₁ (kB K)) ?_
        refine spineReds_trans (ret_app1 K (.lam B₁) U₁) ?_
        refine spineReds_trans (spine_unfold (kC K (.lam B₁)) U₁) ?_
        refine spineReds_trans (spineReds_appL _ hU₁) ?_
        exact spineReds_trans (hK₂ (kC K (.lam B₁))) (ret_app2 K (.lam B₁) (.lam B₂) U₂)

/-- The whole configuration: `intL C (⌜M⌝ ++ R)` spine-reduces to
`C (λ.B) U`. -/
theorem intL_parse (M R : Term) : ∃ B U,
    Den M B ∧ Implements (.lam B) M ∧ SpineReds U R ∧
      ∀ C, SpineReds (.app (.app intL C) (streamOf (blcCode M) R)) (.app (.app C (.lam B)) U) := by
  obtain ⟨B, U, hD, hI, hU, hK⟩ := parse M R
  refine ⟨B, U, hD, hI, hU, fun C => ?_⟩
  refine spineReds_trans
    (spineReds_appL _ (spineReds_appL _ (spineReds_of_spineSteps _ run_knot))) ?_
  exact spineReds_trans (spine_unfold C _) (hK C)

/-- `Parses E`: what `intL_parse` provides, for any interpreter `E` —
for every term `M` and tail `R`, one closure `λ.B` that denotes and
implements `M`, one residual `U` spine-reducing to `R`, and, for every
continuation `C`, `E C (⌜M⌝ ++ R)` spine-reducing to `C (λ.B) U`. The
corollaries below (`*_of_parses`) need nothing else, so they serve the
165-bit interpreter of `Blc/Selfint165.lean` as well. -/
def Parses (E : Term) : Prop :=
  ∀ M R : Term, ∃ B U, Den M B ∧ Implements (.lam B) M ∧ SpineReds U R ∧
    ∀ C, SpineReds (.app (.app E C) (streamOf (blcCode M) R)) (.app (.app C (.lam B)) U)

theorem parses_intL : Parses intL := intL_parse

-- ---------------------------------------------------------------------------
-- §8. The contract, and the obligations of Blc/Selfint.lean.

/-- The contract from a parse: `E C (⌜M⌝ ++ N) →β* C (λz. M) N` for every
closed `M`. -/
theorem contract_of_parses {E : Term} (hE : Parses E) (M : Term) (hM : Closed M) (C N : Term) :
    Betas (.app (.app E C) (streamOf (blcCode M) N)) (.app (.app C (.lam M)) N) := by
  obtain ⟨B, U, hD, _, hU, hK⟩ := hE M N
  have hB : Betas B M := by
    have h := hD 0 1 [] (.var 0) Term.var hM (fun i hi => absurd hi (Nat.not_lt_zero i))
    have e : substDec 0 (envList [] (.var 0)) (shift 1 1 B) = B := substDec_var_shift B 0
    rw [e, inst_id M Term.var (fun _ => rfl)] at h
    exact h
  exact betas_trans (betas_of_spineReds (hK C))
    (betas_app (betas_appR C (betas_lam hB)) (betas_of_spineReds hU))

/-- L1 from a parse, the residual reduced in argument position. -/
theorem l1_beta_of_parses {E : Term} (hE : Parses E) (M R C : Term) : ∃ Q, Implements Q M ∧
    Betas (.app (.app E C) (streamOf (blcCode M) R)) (.app (.app C Q) R) := by
  obtain ⟨B, U, _, hI, hU, hK⟩ := hE M R
  exact ⟨.lam B, hI, betas_trans (betas_of_spineReds (hK C)) (betas_appR _ (betas_of_spineReds hU))⟩

/-- The open-program contract from a parse. -/
theorem open_of_parses {E : Term} (hE : Parses E) (M : Term) (d : Nat) (hM : FreeUnder d M)
    (C N : Term) :
    ∃ Q U, Betas (.app (.app E C) (streamOf (blcCode M) N)) (.app (.app C Q) U) ∧
      Betas U N ∧
      ∀ (env : List Term) (R : Term) (σ : Nat → Term),
        (∀ i, i < d → env[i]? = some (σ i)) →
          Betas (.app Q (envList env R)) (inst σ M) := by
  obtain ⟨B, U, hD, _, hU, hK⟩ := hE M N
  refine ⟨.lam B, U, betas_of_spineReds (hK C), betas_of_spineReds hU, ?_⟩
  intro env R σ hagree
  have h := hD d 0 env R σ hM hagree
  rw [shift_zero] at h
  exact Betas.head (Beta.beta _ _) h

/-- **The self-interpreter contract.** For every closed `M` and any
terms `C`, `N`: `intL C (⌜M⌝ ++ N) →β* C (λz. M) N`. -/
theorem selfint_contract (M : Term) (hM : Closed M) (C N : Term) :
    Betas (.app (.app intL C) (streamOf (blcCode M) N)) (.app (.app C (.lam M)) N) :=
  contract_of_parses parses_intL M hM C N

/-- The contract on quoted programs, `⌜M⌝ = stream(M, FALSE)`. -/
theorem selfint_quote (M : Term) (hM : Closed M) (C : Term) :
    Betas (.app (.app intL C) (quote M)) (.app (.app C (.lam M)) falseT) :=
  selfint_contract M hM C falseT

/-- The 174-bit `E_q = intL I` runs quoted programs: `E_q ⌜p⌝ →β* p`
for every closed `p`. -/
theorem intLI_quote (p : Term) (hp : Closed p) : Betas (.app intLI (quote p)) p := by
  have h := selfint_quote p hp (.lam (.var 0))
  have e1 : contract (.var 0) (.lam p) = .lam p := rfl
  have e2 : contract p falseT = p := substDec_closed 0 falseT hp
  have s1 := Beta.appL falseT (Beta.beta (.var 0) (.lam p))
  have s2 := Beta.beta p falseT
  rw [e1] at s1
  rw [e2] at s2
  exact betas_trans h (Betas.head s1 (Betas.head s2 (Betas.refl _)))

/-- `ParserStatement` of `Blc/Selfint.lean`: every finite term's wire
parses, under head reduction, uniformly in the continuation. -/
theorem parserStatement : ParserStatement := by
  intro M R
  obtain ⟨B, U, _, hI, hU, hK⟩ := intL_parse M R
  exact ⟨.lam B, U, hI, headReduces_of_spineReds hU, fun C => headReduces_of_spineReds (hK C)⟩

/-- `L1Statement` of `Blc/Selfint.lean` (parser correctness, closed
programs). -/
theorem l1Statement : L1Statement := fun M _ R => parserStatement M R

/-- `L2Statement` of `Blc/Selfint.lean` (the VAR engine as a parse). -/
theorem l2Statement : L2Statement := fun i R => parserStatement (.var i) R

/-- L1 in the form of `docs/quantum/bisimulation.md` §2, with the residual
reduced in argument position: `intL C stream(M,R) →β* C Q R` for an
implementing closure `Q ⊨ P[M]`, every term `M`, every tail `R`. -/
theorem l1_beta (M R C : Term) : ∃ Q, Implements Q M ∧
    Betas (.app (.app intL C) (streamOf (blcCode M) R)) (.app (.app C Q) R) :=
  l1_beta_of_parses parses_intL M R C

/-- The contract for open programs: `intL C (⌜M⌝ ++ N) →β* C Q U` with
`U →β* N`, where `Q` applied to any cons' environment covering M's free
variables reduces to M instantiated by that environment. -/
theorem selfint_open (M : Term) (d : Nat) (hM : FreeUnder d M) (C N : Term) :
    ∃ Q U, Betas (.app (.app intL C) (streamOf (blcCode M) N)) (.app (.app C Q) U) ∧
      Betas U N ∧
      ∀ (env : List Term) (R : Term) (σ : Nat → Term),
        (∀ i, i < d → env[i]? = some (σ i)) →
          Betas (.app Q (envList env R)) (inst σ M) :=
  open_of_parses parses_intL M d hM C N

-- ---------------------------------------------------------------------------
-- §9. The contract as a predicate, and the size question it poses.

/-- β-convertibility, as joinability (equivalent by Church–Rosser,
`betas_confluent`). -/
def BetaJoin (t u : Term) : Prop := ∃ w, Betas t w ∧ Betas u w

/-- The self-interpreter contract of
`docs/classical/self-interpreter/interpreter.md` §1: a closed `E` with
`E C (⌜M⌝ ++ N) =β C (λz. M) N` for every closed `M`, where `C` and `N`
are rigid free variables (here `var 0`, `var 1`; any terms follow by
substitution). This is the weakest form the battery tests. -/
def IsSelfInterpreter (E : Term) : Prop :=
  Closed E ∧ ∀ M : Term, Closed M →
    BetaJoin (.app (.app E (.var 0)) (streamOf (blcCode M) (.var 1)))
      (.app (.app (.var 0) (.lam M)) (.var 1))

theorem isSelfInterpreter_of_parses {E : Term} (hc : Closed E) (hE : Parses E) :
    IsSelfInterpreter E :=
  ⟨hc, fun M hM => ⟨_, contract_of_parses hE M hM (.var 0) (.var 1), Betas.refl _⟩⟩

/-- Palmer's 168 meets the contract. -/
theorem isSelfInterpreter_intL : IsSelfInterpreter intL :=
  isSelfInterpreter_of_parses (by decide) parses_intL

theorem intL_length : (blcCode intL).length = 168 := by
  rw [wire_intL]; exact intL_size

/-- `SelfintSizeBound n`: every self-interpreter has at least `n` bits.
The 168 refutes every bound above 168 (`not_selfintSizeBound_169`); the
165-bit `intL165` refutes every bound above 165
(`not_selfintSizeBound_166`, `Blc/Selfint165.lean`), so optimality is
`SelfintSizeBound 165` (open). -/
def SelfintSizeBound (n : Nat) : Prop :=
  ∀ E : Term, IsSelfInterpreter E → n ≤ (blcCode E).length

/-- The upper-bound half of optimality: no bound above 168 holds. -/
theorem not_selfintSizeBound_169 : ¬ SelfintSizeBound 169 := by
  intro h
  have := h intL isSelfInterpreter_intL
  rw [intL_length] at this
  omega

end Blc
