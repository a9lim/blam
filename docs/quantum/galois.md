# The Galois structure of qBLC halting mass

This note states the exact algebra behind qBLC's dyadicity measurements and
the theorem program for explaining the observed thresholds. T1 is proved at
paper level below. T2, the CNOT-capable companion, and T3 remain open.
Current sweep bounds live in `../STATUS.md`; the stage-1a abstract interpreter
is specified in `oddmin.md`.

## 1. Setting and accounting

Amplitudes live in `ℤ[ω]/√2^d`, with `ω = exp(iπ/4)`, as implemented by
`src/quantum/scalar.rs`. Real branch masses lie in `ℤ[1/2, √2]`.
The Galois group

```text
Gal(ℚ(ζ₈)/ℚ) = {σ₁, σ₃, σ₅, σ₇} ≅ V₄
```

contains complex conjugation `σ₇` and two automorphisms that negate
`√2`. Fix `σ = σ₅`, so `σ(ω) = −ω`, `σ(H) = −H`, and
`σ(T) = TZ`.

`quantum::reference` carries unnormalized branch vectors. The mass of one
branch is `v†v`, and a program's successful mass is the sum over its
successful leaves. `blam q galois complement` accumulates these exact masses
by source size (`blam q galois idiom` is the `λ⁵` half); both ride the shared
`quantum::scalar::ExactSum` accumulator, so an overflowed aggregate reports
itself rather than a wrong number.

For a resolved, non-overflowed finite census, the coefficient of `√2` in
the per-size aggregate is the sum of the per-program coefficients. Therefore

```text
fatediv = 0  ⇒  [√2] Σ_success = 0,
```

provided `deferred_sqrt2 = 0` and `radical_unknown = 0`. Both side conditions
are zero in every canonical row measured so far. When `fatediv > 0`, the
aggregate coefficient additionally reveals whether odd parts cancel across
programs.

## 2. T1: finite-trace Galois identity

Define the twisted semantics `C♯` to be the ordinary evaluator except that
each source `T` effect applies `TZ` to the store. The extra `Z` is semantic: it
emits no event and consumes no epoch. Encoding it as source-level `t⁴` would
destroy the event-tree correspondence.

> **T1.** For every program `C` and labeled outcome prefix `s`, the `C` and
> `C♯` executions have identical terms, qubit identifiers, live/retired
> maps, epochs, and classical control state. If `h(s)` Hadamard effects have
> fired, their unnormalized vectors satisfy
>
> ```text
> σ(v_s) = (−1)^h(s) v♯_s.
> ```
>
> Consequently every labeled leaf has the same fate at the same classical
> step count, and `w_C♯(s) = σ(w_C(s))`.

The proof is induction along paired branch configurations.

- Pure β steps, species checks, epoch checks, and argument dispatch do not
  inspect amplitudes, so they act identically.
- `new` appends `|0⟩`, which is fixed by `σ`.
- `σ(Hv) = −Hσ(v)`; the sign is absorbed into `(−1)^h` and cancels
  in `vv†`.
- `σ(Tv) = TZσ(v)`, exactly the twisted step.
- CNOT is a rational permutation matrix and is fixed by `σ`.
- Computational-basis projectors commute with entrywise `σ`. Matching
  outcome labels therefore produce matching successor configurations and
  Galois-conjugate masses.

Three consequences are useful.

1. For any finite prefix-free successful leaf set,

   ```text
   [√2] Σ_Halt(C) =
       (Σ_Halt(C) − Σ_Halt(C♯)) / (2√2).
   ```

   The odd coefficient is the successful-mass gap to the twisted shadow.
2. The achievable successful-mass set is closed under the Galois twist up to
   a constant source-size overhead because `Z = T⁴` is expressible in the
   language.
3. `σ` is not defined on arbitrary real limits. For an unbounded branch
   tree, the correct observable is instead

   ```text
   Δ(C) = P_Halt(C) − P_Halt(C♯),
   ```

   defined from the two monotone probability limits. `Δ(C) = 0` does not
   imply that `P_Halt(C)` is dyadic; a rational value such as `1/3` is
   possible.

## 3. Measured threshold zoo

| size | artifact | exact structure |
|---:|---|---|
| 45 | `witness45` | first known Galois-odd leaves; `H·T·H·meas`, both arms Halt with masses `(2±√2)/4`, total 1 |
| 48 | complement witness | same sandwich with different gate plumbing, still a paired total |
| 49 | one-bit sibling | payload variation of the same paired construction |
| 50 | three plumbing variants | paired `(2±√2)/4` leaves under alternative continuations |
| 51 | twelve-program wrapper orbit | 24 paired leaves; total odd coefficient zero |
| 53 | `P53` | first known unpaired fate split: one mass Err, its conjugate Halt, so total successful mass is non-dyadic |
| ≤85 | rejection loop | successful probability `1/3`, proving that rational non-dyadic limits form a separate threshold problem |

The exact complement aggregate has zero `√2` coefficient through 51, and
the five-lambda idiom aggregate is zero through 52 before becoming nonzero at
53. These are bounded exhaustive results, not global minima except where a
separate theorem supplies the lower bound.

The size decomposition behind P53 is informative: the 45-bit quantum
sandwich creates conjugate branches, and the cheapest known asymmetric
continuation costs eight more bits. Shorter wrappers can surround or replumb
the sandwich but have so far preserved conjugate fates.

## 4. Finite-tree theorem program

### T2: sub-53 exclusion

The target statement is:

> No closed program of size at most 52 has a Galois-odd branch mass together
> with a downstream fate distinction that exposes it in total successful
> mass. `P53` attains the minimum at 53.

The `45 + 8` decomposition is evidence, not a proof. Untyped β-duplication
allows one source occurrence to serve multiple runtime roles, so any lower
bound needs quantitative subject reduction or an exact compositional search.

Stage 1a proves the restricted minimum for **CNOT-free traces**. Its trusted
monitor projects one guessed qubit lineage to `{NewD, HD, TD, MeasD}` and
accepts only an odd readable measurement. The current compositional search
contract and validation evidence are in `oddmin.md`.

The CNOT-free restriction is forced by the source language. A 28-bit program
already fires CNOT, so treating every CNOT as automatic odd acceptance could
never prove a 45-bit lower bound.

### CNOT-capable companion

The intended stage-1b invariant lives in the Pauli basis. Expand an
unnormalized branch density operator in Pauli strings and grade coefficients
by `√2` parity:

- `new` introduces even `I/Z` support;
- `H` and CNOT route Pauli strings without changing the grade;
- `T` is grade-flat on `I/Z` and toggles grade when it mixes `X/Y`; and
- computational-basis projectors preserve the grading.

The target lemma is that a Galois-odd finite branch mass forces a
projector-compatible Pauli path with an odd number of `X/Y`-active `T`
transitions. Its contrapositive would bring CNOT into scope. Raw source
T-count cannot replace this path invariant because H and CNOT determine the
local Pauli letter seen by each T.

## 5. Infinite-tree boundary

T3 asks whether every program below 53 has `Δ(C) = 0`, including programs
whose branch tree or classical reduction is infinite. A finite-tree lower
bound cannot discharge unresolved mass at every budget, even when repeated
budget increases leave the observed finite prefix unchanged.

This theorem is deliberately scoped to the `√2` Galois asymmetry. The
minimum program with rational but non-dyadic limiting successful probability
is a different problem; the current `1/3` construction only gives the upper
bound 85.

## 6. Current interpretation

The measured pattern has a coherent structural explanation:

- below 45, the source grammar cannot afford the complete
  `H–odd-T–H–meas` sandwich;
- from 45 through 52, that sandwich exists but every measured continuation
  treats the two conjugate branches symmetrically; and
- at 53, an eight-bit poison continuation makes the two branch fates differ,
  so cancellation no longer occurs inside the program.

T1 proves why conjugate trees cancel. T2 and T3 are the missing lower-bound
theorems needed to turn the measured threshold into a global statement.
