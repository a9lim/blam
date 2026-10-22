# expand — the exact missing implication and live pre-stream size explosion

**Partial theory result. The nonlinear root-let case remains open.** I did
not prove the required minimum-reader theorem and did not find a reader
below 46. I did establish that even full reader laws, one source hole at
depth zero, two or three root uses, and productive use of every expanded
payload node do not control pre-stream expansion without an additional
minimum/budget argument. A 108-weight reader reaches a 393,256-weight
lambda-rooted reader; its all-unary laws, reduction and prices are checked
in Lean. This is above the target budget and explicitly non-minimal.

Labels: **[L]** kernel-checked; **[H]** handwritten proof; **[C]** targeted
computation. No inherited finite inventory was rerun or upgraded in status.

## 1. Complete interpreters and reader witnesses

No complete interpreter was built, spliced, battery-run or polished. There
is no interpreter size claim, battery line or sub-162 claim.

The following correct readers were constructed for the theory. Define

```text
I = λa. a
F = λp x. p (x x)                 -- not the Boolean false of the brief
H = λv n s. s v (λu. s (λq. c) (s s u)) n
N_m = λf p. f^m p               -- Church numeral m
X_0 = I; X_(m+1) = X_m X_m
T_m = λs. s X_m (λu. s (λq. c) (s s u)) j
R_m = N_m F H I j
```

Here `F` is the local stepper name, not a stream bit. To avoid that clash
in code it is called `stepper` in Lean. Every source has one `j` at depth
zero. The exact formulas are

```text
R_m ->h* T_m ->β* reader162
w(R_m) = 84 + 5m
w(T_m) = 40 + 6·2^m.
```

`Expansion.lean` proves the beta reductions, both full reader laws for
every `m`, and both price formulas [L]. The claim that `T_m` is the first
weak-head lambda, reached in `2m+4` steps, is the explicit reduction proof
in §2.1 [H], checked at `m=0..4` [C].

Compress the Church numeral using `D_k = λx. x ... x`, with `k` left-associated
uses, and `Two = N_2`:

```text
P_k = D_k Two F H I j.
```

| Source | Root uses | Source weight | First-lambda weight | Net expansion |
|---|---:|---:|---:|---:|
| `R_4` | 4 | 104 | 136 | 32 |
| `P_2` | 2 | 104 | 136 | 32 |
| `P_3` | 3 | 108 | 393,256 | 393,148 |
| `P_4` | 4 | 112 | `40 + 6·2^65536` | `6·2^65536 − 72` |

For `P_2`, a 19-head-step trace and full reader laws are checked in Lean.
For `P_3`, Lean checks the small Church prefix reducing to `N_16`, the
subsequent beta reduction to `T_16`, the all-unary laws and both prices;
the first-weak-head-endpoint assertion is handwritten. The exponential
payload is not materialized by this proof. `P_4`'s semantic identity is
handwritten; its source weight was checked, its endpoint never expanded.

The checker tested exactly `R_0..R_4` and `P_2` on zero and unary lengths
1 through 8, with all passes. Their first weak-head endpoints and prices
match the formulas. The canonical 46 reader was the control. Exact inputs
and results are in `witnesses.json`; these finite probes do not substitute
for the all-length proofs.

## 2. Exact identities and proofs

### 2.1 Accumulating a large live identity [H; beta identities and prices L]

For arbitrary `p,x`,

```text
F p x ->h² p (x x).
```

Thus `N_m F H I j` first exposes the iterator, then performs `m` two-step
calls of `F`. At the ith call the accumulator is `X_i`; the head remains
the remaining iterator, with the accumulator and `j` pending. No step
evaluates the accumulator. The final head is `H X_m j`, which takes two
more head steps to `T_m`. Hence the first leading lambda is the stream
lambda of `T_m`, after `2m+4` steps.

Inductively `X_m ->β* I`: reduce both copies in `X_(m+1)` to `I`, then
contract `I I`. Therefore `T_m ->β* reader162`. This proves the zero law
and every unary law, with independent rigid `c,j,r,N`, without minimality
or a termination assumption about arbitrary inputs.

The payload's ordinary wire size obeys `a_0=4`, `a_(m+1)=2+2a_m`, hence
`a_m=6·2^m−2`. Replacing the canonical reader's 4-bit identity by `X_m`
gives `w(T_m)=46−4+a_m`. The literal source pays numeral `6+5m`, stepper
15, seed 51, identity 4 and four application nodes 8; its `j` costs zero.
This gives `84+5m`. There are no copied holes to repair, so the `4h−2`
repair saves nothing here.

### 2.2 Numeral compression [H; P2/P3 reductions L]

For positive Church numerals, `N_a N_b =β N_(b^a)`. Consequently `k`
left-associated Church Twos denote 2, 4, 16, 65536 for `k=1,2,3,4`.
`D_k` costs `4k`; the rest of `P_k` costs 96, giving `96+4k`.
The preceding identity gives the endpoint table.

There is an unbounded version with **exactly two root uses**. Let `M_t`
be `t` left-associated Church Twos, and put

```text
m_1=2; m_(t+1)=2^m_t
Q_t = (λx. x x) M_t F H I j,          t ≥ 1.
```

Then `M_t =β N_(m_t)` and `M_t M_t =β N_(m_t^m_t)`. Hence

```text
w(Q_t) = 86 + 18t
first-lambda endpoint = T_(m_t^m_t)
endpoint weight = 40 + 6·2^(m_t^m_t).
```

The weight follows from `|M_t|=18t−2` and the displayed fixed components.
This is a handwritten family, with no large instance evaluated. It rules
out a fixed-height elementary upper bound in source weight for arbitrary
full-law, one-hole, depth-zero readers with two root uses. It does **not**
rule out a bound for minimum readers or for the fixed 45-bit budget.

### 2.3 These expansions are live, but semantically simplifiable [H/L]

Every node of `X_m` is needed to obtain `I`. Induct on its binary tree:
both halves of `X_(m+1)` must yield the identity. Replacing any node by a
fresh rigid atom either gives a rigid head immediately or gives a lambda
whose demanded body has that head. With the actual handler arguments
`K r` or `F U_(n−1)`, the atom becomes the persistent head of the result,
breaking that reader law. Thus these nodes belong to both role supports
in `T_m`; they are not erased filler. The 88 node replacements for
`X_0..X_4` were also checked [C].

Nevertheless replacing the **source stepper** `F` by `I` preserves both
laws: `N_m I H ->β* H`, so the resulting source reduces to `H I j`, the
canonical reader. It saves exactly `15−4=11` source bits. Both laws for
every `m` and this exact saving are checked in Lean (`simplified_full`,
`simplified_saves`). More directly, every constructed reader is beta-equal
to the 46 reader, so none is a global minimum; Lean explicitly records
`shared4_not_minimum`.

This distinguishes **needed execution** from **minimum semantic cost**.
Role support alone records the former. A source-level lower bound needs
the latter or an equivalent invariant.

## 3. The missing theorem, with its quantifiers

### 3.1 The exact remaining claim [H formulation, not proved]

Let `Read(R)` mean scope `{c,j}`, exactly one source `j`, and

```text
R Z(r) =β r j
∀n≥1, R U_n(N) =β c U_(n−1)(N) N.
```

Let `q(R)=(w(R),L(R),d(R))`, ordered lexicographically, and

```text
Min(R) := Read(R) ∧ ∀S, Read(S) → q(R) ≤lex q(S).
```

Let `Gamma(R)` denote the residual root family: a source
`R=(λx.B) A Cvec`, two to four uses of `x`, `d(R)≤1`, `k+d≤4`, and the
remaining hand-off/root-exposure cases, with every inherited structural
exclusion retaining its own hypotheses. Taking a larger Gamma is safe.

Given the current source classification and the established exclusion of
lambda-rooted global minima below 46, the logically weakest missing
claim is exactly

```text
¬∃R, Min(R) ∧ Gamma(R) ∧ w(R)≤45.                  (ROOT)
```

There is no logically weaker standalone result that is sufficient under
only those existing hypotheses: this is their remaining counterexample
class. The useful question is how to prove ROOT without enumerating it.

### 3.2 A correct endpoint factorization [H formulation, not proved]

For such an `R`, take its deterministic weak-head trace to the first
lambda `T`. Keep the colored `j` occurrence that supplies the zero output
and repair every other `j` to the nearest binder, as in rootnl, giving
a one-hole reader `U=λs.P`. The all-length replay is inherited handwritten
reasoning; its syntax prices are inherited kernel-checked identities.
Write

```text
e = w(U) − w(R)
  = sum(beta price changes) − sum_discarded(4h−2).
```

The **pointwise charged endpoint floor**

```text
∀R,U,e as above,  w(U) ≥ 46+e                         (CHARGED)
```

is exactly equivalent to `w(R)≥46` on those sources. It is not a weaker
known endpoint theorem. Merely writing it down moves the same unsolved
claim into a provenance-dependent metric.

A genuinely usable sufficient factorization consists of independently
specified endpoint families `F_i` and integer bounds `E_i` such that:

1. Every residual minimum `R` with `w(R)≤45` has a valid repaired endpoint
   `U` and some `i` with `F_i(U)` and `e≤E_i`.
2. **For every** `U`, `Read(U) ∧ F_i(U)` implies `w(U)≥46+E_i`.
   This endpoint floor has **no minimum hypothesis on U**.

Then `w(R)=w(U)−e≥46+E_i−e≥46`, contradiction. The bounds must be paired
within the same cell; a maximum expansion from one shape and a floor for
another do not compose. A floor of merely 46 allows only `w(R)≥46−E_i`.
The report proves neither required family coverage nor strengthened floors.

### 3.3 Descent instead of a strengthened floor [H formulation, not proved]

A replacement theorem would suffice:

```text
∀R, Min(R) ∧ Gamma(R) ∧ w(R)≤45 →
  ∃S, Read(S) ∧
    (q(S)<lex q(R) ∨ (S is lambda-rooted ∧ q(S)≤lex q(R))).
```

The first disjunct contradicts minimum status; the second transfers the
complete minimum order to a lambda-rooted reader and invokes the existing
lambda-minimum floor. If `S` is obtained by simplifying the expanded
endpoint `U` and saves `sigma=w(U)−w(S)`, then `sigma>e` is sufficient.
At `sigma=e`, lambda count and then hole depth must be checked; a
lambda-rooted tie in weight alone is insufficient. An arbitrary expanded
endpoint cannot inherit the source's local minimum conditions.

### 3.4 Why “no expansion bound exists at 45” cannot be the refutation [H]

One-hole scoped sources of weight at most 45 form a finite set modulo
alpha-conversion. Indeed every non-hole node costs at least two bits,
so there are at most 23 source nodes; de Bruijn indices are bounded by
the source's binder depth and its two free variables. No enumeration is
needed for this finiteness proof.

The zero law forces a finite weak-head trace of `R` to a lambda. A rigid
`c`/`j` head cannot become the fresh `r`, and an unsolvable head remains
unsolvable when given an argument. Fixing the first-lambda strategy and
the colored repair therefore assigns a finite integer expansion to each
reader in that finite set. Its maximum exists, even if the set is empty
(take zero then). This is an existence argument, not an effective small
bound or a certificate of the finite cells.

Accordingly the constructed expanding readers refute unrestricted cheap
growth claims, not type (a) in its full below-46/minimum formulation. A
counterexample to ROOT itself would be a sub-162 reader, which was not
found. At a fixed budget an arbitrarily large expansion counterfamily is
impossible; over growing budgets the tower family above is possible.

## 4. What remains open and the next proof step

**Still open:** ROOT, the universal 46 reader bound, and 162 optimality in
the separated class. No nonlinear cell below 46 is closed by this lane.
The other lanes' certification state was not changed or inferred here.

The attempted routes clarify the necessary extra information:

- Literal Lift has a computable offset, but a general hand-off invokes
  residual closures before its stream binder is known. I did not derive
  a source rewrite that exposes that binder at a nonpositive total price.
- Raw first-lambda expansion is a poor potential even for correct readers.
  Colored-hole repair does not address expansion that copies no `j`.
- Role supports can include every node of an enormous expansion. They
  do not by themselves price a smaller operation with the same behavior
  on the reached arguments. The stepper-to-identity replacement is an
  explicit example of the additional semantic simplification needed.

The proof target I would retain is **source-level semantic simplification
with a cost inequality**: on the remaining shallow helper interfaces,
either certify divergence/wrong head or replace the computation by a
smaller reader while preserving both role laws. Equivalently, carry the
source sharing and a cost balance through the hand-off and show that a
valid endpoint simplification saves at least the full expansion, including
the lambda/depth tie cases. No such exhaustive semantic classification is
proved here. Classifying just the exposed tree by size or support would
discard precisely the information this argument needs.

## 5. Validation and artifacts

- `Expansion.lean`: generic full-law identities and exact costs, concrete
  104 and 108 readers, and the 11-bit semantic replacement. Final compile
  passes at `-j2`: 0.36 s wall, 447,594,496 bytes maximum RSS. Printed
  axioms are only `propext`, `Classical.choice`, `Quot.sound`; no sorry or
  new axiom. Generic declarations are proved by induction; no endpoint
  of size 393,256 or greater is generated in the proof.
- `check_witnesses.py`, `witnesses.json`: six explicit law checks, two
  additional source-price checks, and 88 small payload replacements;
  about 0.006 s, 20.4 MB RSS, one thread. An additional 43-step normalization
  of the small Church prefix supplied the concrete Lean certificate.
- `NOTES.md`: progress and unsuccessful routes. `lean.log`: final kernel
  result and resource accounting. Earlier Lean drafts had ordinary tactic
  errors; the final successful file and log are the claimed evidence.

Reproduce from the repository root:

```sh
PYTHONDONTWRITEBYTECODE=1 python3 tmp/round4/expand/check_witnesses.py
```

From `lean/`:

```sh
LEAN_PATH=/Users/a9lim/Work/blam/lean/.lake/build/lib/lean \
  lean -j2 ../tmp/round4/expand/Expansion.lean
```

All writes were confined to `tmp/round4/expand/`. No enumeration, long
search, cargo build, interpreter battery, tracked edit, commit, delegation,
or consultation-back was performed.
