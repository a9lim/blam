# BBλ(33), BBλ(34), and BBλ(35): checked adjudications

The exhaustive census and the halting/divergence proofs together give

```
BBλ(33) = 1,812 normal-form bits
BBλ(34) = 327,686 normal-form bits
BBλ(35) = 38,127,987,424,941 normal-form bits.
```

Here BBλ(n) maximizes the BLC wire size of a full β-normal form over
closed programs of **exactly n bits**. It is not the step-count busy beaver.
The census leaves two programs unresolved at 33 bits and ten at 34; one of the
34-bit ones is loop32's lambda wrap, a Ratchet kill. The other eleven each
have a Lean proof of `¬ HasNormalForm`, including their exact wire identity.
The eighteen unresolved programs at 35 bits split into sixteen divergent
programs and two halters whose outputs exceed the ladder's resource limits;
all eighteen have kernel-checked adjudications.

**Proof boundary.** Lean checks these exclusions under arbitrary β reduction,
not merely divergence of a bounded evaluator. The exhaustive enumeration, the
census's own adjudications, and the maximum-output measurements rely on the
Rust census. This is the same boundary as the established BBλ(32) result; it
is not an end-to-end formalization of the census.

**Attribution.** The three values are Tromp's, published in OEIS
[A333479](https://oeis.org/A333479), which also lists a(36) = 5·2²⁵⁶ + 6.
His checked-in `ref/AIT/BB/BB.txt`, around lines 65–258, already gives hand
arguments for these programs. The contribution here is their formalization,
reusable proof machinery, and integration into the project's certificate
accounting, rather than new busy-beaver values.

## The eleven 33/34-bit seeds

The input ledger is `data/certificates/bb_seeds.tsv`. Names below are in
the Lean `Blc` namespace. `BB34Binary` and `BB34Triple*` are namespaces in
`lean/Blc/BB33First.lean`, and `BB34.SelfArgument`/`BB34.Duplicate` live in
`lean/Blc/BB34.lean`; the rest are modules of the same name.

| bits | proof | mechanism |
|---|---|---|
| `010001011010100000011100101101010` | `BB33First.noNormalForm` | open-payload head cycle |
| `010001101000011000000110011110110` | `BB33Second.noNormalForm` | productive tower pairs |
| `0100010101101010100000011100110110` | `BB34Binary.noNormalForm2` | open-payload head cycle |
| `0100010110011010100000011100110110` | `BB34Binary.noNormalForm1` | open-payload head cycle |
| `0100010110101000000101110100111010` | `BB34Spine.noNormalForm` | growing argument spine |
| `0100010110101000000111001011010110` | `BB34TripleLeft.noNormalForm` | open-payload head cycle |
| `0100010110101000000111001011011010` | `BB34TripleMiddle.noNormalForm` | open-payload head cycle |
| `0100010110101000000111001011101010` | `BB34TripleRight.noNormalForm` | open-payload head cycle |
| `0100011010000001011010010111010110` | `BB34.SelfArgument.noNormalForm` | productive rigid argument |
| `0100011010000001100101110110011010` | `BB34.Duplicate.noNormalForm` | productive rigid argument |
| `0100011010000001110000111001111010` | `BB34Compose.noNormalForm` | productive compositions |

The five 34-bit head-cycle instances share `BB33First.lean`. All proofs
depend only on `propext` and `Quot.sound`; finite wire identities use no
axioms. There are no sorries, evaluator-budget assumptions, or native-decide
axioms.

## Head cycles with open payloads

For the first 33-bit program, let

```
D3 = λx. x x x
A  = λa b. a (b b b)
P  = A A A
T  = D3 A.

T   →⁴ λu. P (u u u)
P u →⁴ P (u u u)                 for every term u.
```

The universal cycle includes **open** payloads. Repeating it under the
initial binder produces arbitrarily long head reductions, so the existing
head-factorization theorem rules out a full normal form. The proof checks
substitution directly; it does not treat an open variable as one of the
old checker's closed metavariables.

Three 34-bit cases replace `b b b` by `(b b) a`, `(b a) b`, or `(a b) b`.
Each has the same four-step cycle with the corresponding payload update.
Two more use `A = λa b. a (b a)` and `P = A (A A) A`:
`P u →⁶ P (u P)`. Their two different input wirings reach the same family.
`openPayloadPump_noNormalForm` is the shared assembly theorem.

## Productive normal-form descent

Infinite head reduction is insufficient to describe the other four
productive cases: they reach head normal forms and keep producing output
inside arguments of rigid variable heads.

`NormalOrder.lean` supplies a second assembly theorem. A family is excluded
if every member head-reduces to a head-normal landing containing another
family member strictly below binders or rigid applications. Its proof:

1. Assume a finite normal form N of the initial member.
2. Head factorization transports **the same N** to the computed landing.
3. Projection through its binders and rigid heads gives a normal form of
   the next member with strictly fewer nodes than N.
4. Strong induction on that node count gives a contradiction.

The rigidity condition matters: an arbitrary application can erase a
divergent argument. `NfChild` admits only lambda bodies and components of
rigid applications, with transitive composition.

For the second 33-bit program, define closed towers

```
F    = λx. x (λy z. z (x y))
W[X] = λy z. z (X y)
T0   = F;  T(n+1) = W[Tn]
C[X] = λz. z X.
```

Every tower pair exposes another tower pair beneath C:

```
T(i+1) Tj →¹ C[Ti Tj]
T0 T(j+1) →² C[Tj T(j+2)]
T0 T0     →³ C[T0 T2].
```

These three finite facts cover the whole family. C is used here only on
closed tower pairs; the formal proof checks that closedness before inserting
them under a binder.

The guarded 34-bit cases use rigid payloads u:

- `A a b = b ((a a) (b b))`, `P = A A`:
  `P u →² u (P (u u))`.
- `A a b = (b b) ((a b) a)`, `S(u) = (A u) A`, `v = (u A) u`:
  `S(u) →⁴ (v v) (S(v))`.

The composition case has `A x y = x (λz. y (x z))`. The invariant family
contains A and arbitrary finite wrappers `λz. x_i (C z)`. Every pair of
family members exposes a rigid head containing another pair. Unlike the
closed towers, these wrappers capture ambient variables: `BB34Compose.lean`
explicitly proves shift compatibility and never equates different binder
levels.

## Growing argument spines

The last head-divergent case uses `A x y = x y (x y)`. With `t0 = A` and
`t(n+1) = A tn`, the milestone `A A tn` reaches `A A t(n+1)` after `2n+2`
head contractions, adding the trailing vector

```
[t1 t(n+1), t2 t(n+1), ..., tn t(n+1)].
```

All proper sources in the finite reduction are non-abstractions. Therefore
the cycle lifts through every previously accumulated trailing argument.
`BB34Spine.lean` proves the tower descent, vector concatenation, and
unbounded productive milestone sequence.

## The eighteen 35-bit cases

The sixteen divergent seeds are recorded in `bb_seeds.tsv`:

| module | cases | mechanism |
|---|---:|---|
| `BB35Pump` | 7 | open payload pumps, including hidden self-application |
| `BB35Productive` | 4 | productive rigid arguments, left-payload pump, identity tower |
| `BB35Spine` | 4 | growing application spines over `T x y = y (x y)` |
| `BB35Reentry` | 1 | reentry towers with explicit identity wrappers |

The spine proofs retain every trailing argument. The reentry proof includes
identity wrappers in its inductive family so that each recurrence follows
actual head reduction. An infinite arbitrary-beta path alone would not
establish absence of a normal form.

`Confluence.lean` proves Church–Rosser by Takahashi complete development and
parallel reduction. It justifies finite beta preprocessing before an
established no-normal-form result, and proves uniqueness of the two halters'
normal forms. No evaluator or normalization assumption is added.

The halting ledger `bb_halt_seeds.tsv` has these exact results:

| input | normal-form bits | proof |
|---|---:|---|
| `01000101101010000001110011100110110` | 4,186,155,666 | `BB35Large` |
| `01000101101010000001110011100111010` | 38,127,987,424,941 | `BB35Church` |

For the champion, write `C_n = λf x. f^n x`. Its 35-bit source is
`(λx. x x x) C_3`, which reduces to `C_27 C_3`, hence to `C_(3^27)`.
`BB35Church.lean` proves the general positive-exponent rule
`C_n C_m →* C_(m^n)`, normality, and `|C_n| = 5n+6`. Therefore its exact
output size is `5 × 3^27 + 6 = 38,127,987,424,941` bits. The proof works with
the symbolic numeral parameter; it never materializes the output.

For the other halter, `A x y = x (x (y x))` and the source is
`(λx. x x x) A`. `tools/certificates/bb35_large.py` emits a compositional
shared-syntax certificate. Lean checks every shift, substitution, beta
reduction, normality, and size equation. The final normal form has only
296 distinct subtrees despite its 4,186,155,666-bit tree encoding. Sharing
compresses the proof and its representation, not the claimed BLC size.
The generator is untrusted; ordinary kernel checking takes a few seconds.

Both certificates prove existence of a normal form and the stated size of
**every** normal form. They certify no beta or transition clock: memoized
generator work is not the engine's reduction count.

## Reproduction and accounting

```
sh scripts/bb-regen.sh
python3 tools/certificates/bb35_large.py --check
sh scripts/spot-check.sh 4 35
cd lean && lake build Certs BusyBeaver
```

The BB protocol regenerates `lean/BusyBeaver.lean` and the derived
`data/certificates/bb_kills.tsv` and `bb_halts.tsv` from the two seed ledgers
and the complete raw
census unknown inventory. Each seed and every matching outer-lambda wrap
gets a certificate containing its term, literal bits, wire equality,
closedness, and either a no-normal-form proof or normal-form existence plus
an exact output-size proof. The kill ledger installs only after
kernel checking and auditing the aggregate certificate's axioms.

There are 110 such exclusions and eight certified halters through 41 bits. Lambda wrapping preserves
absence of a normal form by inversion of beta reduction under a lambda.
The canonical frontier subtracts both divergence ledgers and the halting
ledger; the raw census
rows stay unchanged. `data/classical/certificate_bounds.txt` checks the
subtraction identity and computes exact finite Ω and directed-rounded speed
trims from the recorded per-program floors. Certified halters add their full
Kraft mass to both finite-Ω endpoints, while removing the same mass from the
frontier; their unclocked speed contributions retain the raw upper floors.
The true-Ω computation adds the halter mass separately and leaves its existing
leaf table and conservative tail DP unchanged. `scripts/omega-regen.sh
--reuse-leaves` refreshes the true-Ω bound without rerunning unchanged ladder
leaf judgments. CI checks both generators, the proof registry, and exact bounds.

These proofs are direct: they add no automatic discovery class and no
census-engine special case. The remaining frontier and next work live in
`../../STATUS.md`.
