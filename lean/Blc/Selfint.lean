/-
qBLC self-interpretation, the pure fragment: definitions and kernel
anchors for SPEC-BISIM.md §2–3 — the L1/L2 seed, the natural first
mechanization (pure λ-calculus, no store; the quantum clauses ride on
this layer).

PROVED here, zero sorries: the artifact pins — intL's wire identity
(`wire_intL`, the kernel vouches the constant IS Tromp's 170-bit
interpreter) and |E_q| = |intL I| = 176 — and the quote-size identity
|stream(M,R)| = 14·|M| + zeros(M) + |R| (`streamOf_length`): the
measured quote linearity, now kernel-checked.

STATED here as named Props (round-4-ratified statements, thread
`qblc-selfint`, job cx-20260804-155021-14ee; obligations open, per
SPEC-BISIM §7): the extensional translation contract `Implements` —
P[·] is a CLASS of implementing closures, not a syntax function
[Codex r3], with the dead-suffix/seed non-inspection captured
extensionally by the ∀-tail quantification in the VAR clause — and
the parser statements. Head reduction is exactly right for the
`Implements` clauses (selectors reduce at the application head;
lambda implementations receive both arguments first; application
implementations expose the source-shaped spine without normalizing
operands). The parser theorem must NOT promise `C Q R` under head
reduction [r4 counterexample: int.lam's VAR branch passes
`cont list1 (skipvar list1)`, so with a neutral continuation the
machine stops at `C Q U` with the residual tail `U` — headStep never
descends into argument position]. `ParserResult` therefore exposes
the residual `U` with `HeadReduces U R`, and quantifies the
continuation INSIDE (`∃ Q U, … ∀ C`): the implementation produces
one closure and one residual per source stream, independent of C.
L2 is the separately-proved VAR engine (induction on the unary
selector) used to establish the open parser theorem
(`ParserStatement`, ∀ M — no closedness needed); closed `L1Statement`
is its public corollary. Scope [r4]: over pure `Term` this is the
formal β-NON-FORCING theorem, covering arbitrary (even divergent)
pure tails; the effectful poisoned-seed statement is a later lifting
into the qBLC configuration semantics, with the qselfint canary as
its empirical shadow.
-/

import Blc.Step
import Blc.Subst
import Blc.Wire

namespace Blc
open Term

/-- Finitely many head steps — the machine relation of the parse
phase. Deliberately NOT full KN/contextual reduction; that relation
enters at the bisimulation layer under its own name. -/
def HeadReduces (t u : Term) : Prop := ∃ n, HeadReds n t u

/-- Church booleans under the repo polarity: wire '0' ↦ TRUE = λλ.2. -/
def churchTrue : Term := .lam (.lam (.var 1))

def churchFalse : Term := .lam (.lam (.var 0))

/-- Wire bit to Church boolean (`blcCode`'s `true` is wire '1'). -/
def churchBit (b : Bool) : Term := if b then churchFalse else churchTrue

/-- FALSE = λλ.1: the 6-bit quote tail seed (coincides with the Church
'1' bit — both are λλ.1). -/
def falseT : Term := churchFalse

/-- The input-stream pair `pair A P = λz. z A P` — deliberately
distinct from `cons'` [Codex r3: the conflation was load-bearing to
avoid]. -/
def pairT (A P : Term) : Term :=
  .lam (.app (.app (.var 0) (shift 1 0 A)) (shift 1 0 P))

/-- int.lam's environment constructor
`cons' A P = λzx. λzy. zx A (zy P)`. -/
def consP (A P : Term) : Term :=
  .lam (.lam (.app (.app (.var 1) (shift 2 0 A)) (.app (.var 0) (shift 2 0 P))))

/-- `stream(M,R)`: the pair-list of M's wire bits with tail R. -/
def streamOf (bits : List Bool) (R : Term) : Term :=
  bits.foldr (fun b acc => pairT (churchBit b) acc) R

/-- `⌜p⌝ = stream(p, FALSE)`. -/
def quote (p : Term) : Term := streamOf (blcCode p) falseT

/-- Tromp's 170-bit binary-LC interpreter (ref/AIT int.lam via
tools/blcc.py — the checked-in optimum), transcribed to 0-indexed
de Bruijn. `wire_intL` below is the kernel's guarantee that this
constant and those bits are the same object. -/
def intL : Term := .app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.lam (.lam (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.lam (.app (.var 5) (.lam (.app (.app (.var 1) (.app (.var 5) (.lam (.lam (.app (.var 2) (.lam (.lam (.app (.app (.var 1) (.var 2)) (.app (.var 0) (.var 3)))))))))) (.app (.var 6) (.lam (.app (.var 6) (.lam (.app (.app (.var 2) (.var 0)) (.app (.var 1) (.var 0))))))))))))) (.app (.app (.var 3) (.var 0)) (.app (.app (.var 0) (.var 0)) (.var 0)))))))))) (.app (.var 0) (.var 0))))

def intLWire : List Bool := [false, true, false, false, false, true, true, false, true, false, false, false, false, true, false, false, false, false, false, false, false, true, true, false, false, false, false, false, false, true, false, true, true, true, false, false, true, true, false, false, false, false, true, true, true, true, true, true, true, false, false, false, false, true, false, true, true, true, false, false, true, true, true, true, true, true, true, false, false, false, false, false, false, true, true, true, true, false, false, false, false, false, false, true, false, true, true, true, false, true, true, true, false, false, true, true, false, true, true, true, true, false, false, true, true, true, true, true, true, true, true, false, false, false, false, true, true, true, true, true, true, true, true, false, false, false, false, true, false, true, true, true, true, false, true, false, false, true, true, true, false, true, false, false, true, false, true, true, true, true, true, false, true, false, false, true, false, true, true, false, true, false, true, false, false, true, true, false, true, false]

/-- `E_q = intL I`: the measured 176-bit qBLC self-interpreter. -/
def intLI : Term := .app intL (.lam (.var 0))

-- The raised recursion depth is an elaborator allowance for the
-- 170-bit computations below, not a proof-strength change.
set_option maxRecDepth 8192

/-- The kernel vouches the transcription: intL's code IS the 170-bit
wire (the certlean wire-identity pattern, applied to the interpreter). -/
theorem wire_intL : blcCode intL = intLWire := by decide

theorem intL_size : intLWire.length = 170 := by decide

/-- |E_q| = 176 — the self-interpretation constant, kernel-checked. -/
theorem intLI_size : (blcCode intLI).length = 176 := by decide

-- ---------------------------------------------------------------------------
-- Closedness plumbing for the size identity.

theorem churchBit_closed (b : Bool) : FreeUnder 0 (churchBit b) := by
  cases b <;> decide

theorem pairT_closed {A P : Term} (hA : FreeUnder 0 A) (hP : FreeUnder 0 P) :
    FreeUnder 0 (pairT A P) := by
  unfold pairT
  rw [shift_of_freeUnder 1 A 0 0 hA (Nat.le_refl 0),
    shift_of_freeUnder 1 P 0 0 hP (Nat.le_refl 0)]
  exact ⟨⟨Nat.zero_lt_one, freeUnder_mono (Nat.zero_le 1) hA⟩,
    freeUnder_mono (Nat.zero_le 1) hP⟩

theorem streamOf_closed (bits : List Bool) {R : Term} (hR : FreeUnder 0 R) :
    FreeUnder 0 (streamOf bits R) := by
  induction bits with
  | nil => exact hR
  | cons b bs ih => exact pairT_closed (churchBit_closed b) ih

/-- The stream cell, with closed payloads, in shift-free form. -/
theorem pairT_of_closed {A P : Term} (hA : FreeUnder 0 A) (hP : FreeUnder 0 P) :
    pairT A P = .lam (.app (.app (.var 0) A) P) := by
  unfold pairT
  rw [shift_of_freeUnder 1 A 0 0 hA (Nat.le_refl 0),
    shift_of_freeUnder 1 P 0 0 hP (Nat.le_refl 0)]

/-- The quote-size identity of SPEC-BISIM §2, for BLC-encodable
(closed) tails: |stream(M,R)| = 14·|M| + zeros(M) + |R|. -/
theorem streamOf_length (bits : List Bool) {R : Term} (hR : FreeUnder 0 R) :
    (blcCode (streamOf bits R)).length
      = 14 * bits.length + bits.count false + (blcCode R).length := by
  induction bits with
  | nil => simp [streamOf]
  | cons b bs ih =>
      have hcell :
          streamOf (b :: bs) R = pairT (churchBit b) (streamOf bs R) := rfl
      rw [hcell, pairT_of_closed (churchBit_closed b) (streamOf_closed bs hR)]
      cases b <;>
        simp [blcCode, churchBit, churchTrue, churchFalse, ih] <;>
        omega

/-- |⌜p⌝| = 14·|p| + zeros(p) + 6 — quote linearity, kernel-checked
(the measured |E_q ⌜p⌝| = 184 + 14|p| + zeros(p) is this plus
|E_q| = 176 and the two-bit application tag). -/
theorem quote_length (p : Term) :
    (blcCode (quote p)).length
      = 14 * (blcCode p).length + (blcCode p).count false + 6 := by
  have h : (blcCode falseT).length = 6 := by decide
  have := streamOf_length (blcCode p) (R := falseT) (by decide)
  simpa [quote, h] using this

-- ---------------------------------------------------------------------------
-- The translation contract and the L1/L2 statements (v0 drafts —
-- obligations, not theorems; SPEC-BISIM §7).

/-- `ρ_R(Δ̂)` (SPEC-BISIM §3): environments as cons'-lists, list head =
innermost binder (wire index 1, our `var 0`). -/
def envList (env : List Term) (R : Term) : Term :=
  env.foldr (fun a acc => consP a acc) R

/-- `Q ⊨ P[M]` (SPEC-BISIM §2). The translation is a CLASS of
implementing closures, extensional over environments [Codex r3: the
VAR-branch closure carries its dead post-variable wire suffix, so no
canonical syntax function exists]. The VAR clause quantifies over
EVERY tail R and every deep-enough environment — the dead-suffix and
seed non-inspection contract in extensional form. Selector semantics
[r4]: each wire '1' (churchFalse) skips one cons'; the terminating
'0' (churchTrue) selects the current head; Lean `var i` selects
`env[i]`, validity `i < env.length` ≡ one-indexed wire index
i+1 ≤ depth. The fixed `Q'`/`Q₁ Q₂` before the ∀ is load-bearing
[r4]: parsing produces ONE closure per source subterm, which may
depend on the stream and its dead suffix but never on runtime ρ/a. -/
def Implements : Term → Term → Prop
  | Q, .var i => ∀ (env : List Term) (R : Term) (h : i < env.length),
      HeadReduces (.app Q (envList env R)) (env[i]'h)
  | Q, .lam M => ∃ Q', Implements Q' M ∧
      ∀ (ρ a : Term), HeadReduces (.app (.app Q ρ) a) (.app Q' (consP a ρ))
  | Q, .app M N => ∃ Q₁ Q₂, Implements Q₁ M ∧ Implements Q₂ N ∧
      ∀ (ρ : Term), HeadReduces (.app Q ρ) (.app (.app Q₁ ρ) (.app Q₂ ρ))

/-- The strategy-faithful parser target [r4]: for source `M` with
tail `R`, ONE implementing closure `Q` and ONE residual tail `U` (the
un-consumed suffix machinery — `HeadReduces U R`, but head reduction
of the whole configuration stops at `C Q U` because it never enters
argument position), uniform in the continuation. The `E_q`
corollary is `Q U`, exactly what the bisimulation needs — closed
programs never inspect the seed. Exact `C Q R` is a separate
algebraic fact under compatible β, deliberately not stated as a
machine execution. -/
def ParserResult (M R Q U : Term) : Prop :=
  Implements Q M ∧
    HeadReduces U R ∧
      ∀ C : Term,
        HeadReduces (.app (.app intL C) (streamOf (blcCode M) R)) (.app (.app C Q) U)

/-- The induction motor: every finite term's wire parses — no
closedness hypothesis; environment adequacy lives in `Implements`.
Open obligation (SPEC-BISIM §7, L1's general form). -/
def ParserStatement : Prop :=
  ∀ (M R : Term), ∃ Q U, ParserResult M R Q U

/-- L1 (parser correctness — SPEC-BISIM §2): the closed public
corollary of `ParserStatement`. Open obligation. -/
def L1Statement : Prop :=
  ∀ (M : Term), FreeUnder 0 M → ∀ (R : Term), ∃ Q U, ParserResult M R Q U

/-- L2 (selector / formal poisoned-seed — SPEC-BISIM §3): the VAR
engine, proved separately by induction on the unary selector, then
used to discharge C-VAR inside `ParserStatement`'s induction. Open
obligation. -/
def L2Statement : Prop :=
  ∀ (i : Nat) (R : Term), ∃ Q U, ParserResult (.var i) R Q U

end Blc
