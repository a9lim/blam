# simplify — source specialization for static hand-offs and idempotent helpers

**Partial result. ROOT remains open; no sub-162 interpreter or reader below 46 was found.** Two source simplification theorems are kernel-checked. One handles arbitrary application trees over an independent-payload hand-off. The other removes a diagonal use of an idempotent helper inside an arbitrary root-let body. The second excludes **27 named entries of rootnl's 658-source catalogue as global minima**, saving four or five bits. The other 631 entries are unchanged by this lane; this is not a complete four-use exclusion.

Labels: **[L]** kernel-checked; **[H]** handwritten interpretation; **[C]** targeted computation. A minimum is global among readers with both laws at every unary length and one source j, ordered by (weight, source lambda count, hole depth). The strict descent theorems below already contradict minimum weight, so require neither tie-breaking nor an endpoint-floor assumption.

## 1. Complete interpreters and reader witnesses

No complete interpreter was built, spliced, polished or battery-run. There is no interpreter size or battery claim.

One above-budget reader pair demonstrates the source rewrite. Put

```text
M = λz n s. s I (λu. s (λq. c) (s s u)) n
W(M) = λz. z M                     -- z fresh for M
R = (λx. x x) W(M) j               w = 70
S = (λx. x x) M j                  w = 63
```

Both have one source j at depth zero. Both reduce to reader162, so both satisfy zero and **all** unary laws [L, `Cases.lean::{wrapped,specialized}_full`]. The seven-bit saving is `6 + #c(M)`. Both also pass `rd.check` on zero and unary lengths 1–8 [C, `check.log`]. These witnesses are explicitly non-minimal; they do not constrain the 45-bit boundary by themselves.

## 2. Exact source identities and proofs

### 2.1 Independent-payload hand-off specialization [L]

Let T be **any finite application tree over one variable**, with k leaves. Let M be any term independent of the fresh wrapper binder z; M can contain redexes, c or j. Let Cvec be any pending operands. Define

```text
R = (λx. T[x]) (λz. z M) Cvec.
```

Treat M as an opaque atom m and W(M) as an atom w. Symbolically simplify T[w] using only

```text
w X → X m.
```

The implementation `specialize` recursively simplifies children, using `w w → m m` and `w U → U m`. It never inspects M. Its output U has exactly k leaves, labelled m or w. Suppose b of them are residual w leaves.

Now write U°[p] by replacing m by p and w by `λz. z p`, and define

```text
S = (λp. U°[p]) M Cvec.
```

**Identity:** `R =β S`. Each symbolic rule is one or two genuine beta steps; structural induction gives the reduction to U[M,W(M)]. Both root lets reduce to that same term. `specialize_reduces` and `source_join` prove this without normalizing M or the pending operands.

**Source ownership:** M occurs once in both R and S. Reconstructed wrappers contain only p. Thus the number of source j leaves is unchanged even if the computation duplicates M. `source_holes`, `residual_scope` and `residual_laws` prove one-hole, scope and **all-unary-law** preservation. No coloured-hole replay argument is needed.

Write

```text
F(M) = #c(M) + 4 #j(M)
```

for a scoped root argument. The exact prices are

```text
w(S) − w(R) = 7b − 6 − F(M)
L(S) − L(R) = b − 1
d(R) − d(S) = #j(M),              when the whole source has one j.
```

These are `source_price`, `source_lambdas`, `source_depth`, and `capture_scoped` [L]. For multiple holes, the depth identity is for the sum of hole depths.

Proof of the price: a pure k-leaf body costs `4k−2`; its abstraction costs `4k`. In the specialized body, reconstructing one wrapper `λz. z p` costs 9 instead of the 2-bit p, hence adds 7. The original argument W(M) costs `w(M)+6+F(M)`. Pending operands cancel. A wrapper contributes one lambda, and moving M out of its wrapper removes one level above every source j in M.

This is a source rewrite which retains sharing. It does not price the fully expanded endpoint.

### 2.2 The small-tree boundary [L table; H exhaustion]

There are exactly eight binary application trees with two through four leaves. Their symbolic endpoints are:

| Source body T[x] | U | Residual wrappers b |
|---|---|---:|
| `x x` | `m m` | 0 |
| `x (x x)` | `(m m) m` | 0 |
| `(x x) x` | `(m m) w` | 1 |
| `x (x (x x))` | `((m m) m) m` | 0 |
| `x ((x x) x)` | `((m m) w) m` | 1 |
| `(x x) (x x)` | `(m m) (m m)` | 0 |
| `(x (x x)) x` | `((m m) m) w` | 1 |
| `((x x) x) x` | `((m m) w) w` | 2 |

`small_residuals` checks the eight residual counts. Exhaustion is the elementary binary-tree split 1+2+5 by leaf count; the generic theorem itself quantifies over all trees and does not rely on the table's exhaustiveness.

Consequences [L, `minimum_charge`, `no_minimum_static`, `minimum_single_residual`]:

- At b=0, S is lighter by `6+F(M)`: **none of these sources can be a minimum reader at any weight**.
- At b=1, a minimum requires `F(M)≤1`. In the scoped frame M must therefore be closed or contain just one free c and no j. In particular, a j-carrying M is excluded.
- At b=2, this rewrite alone gives the necessary condition `F(M)≤8`.

The tie restrictions matter. For b=1 and F=1, weight and lambda count tie; M has no j, so hole depth ties too. The replacement is another minimum if R was one, but its shape is not automatically covered by an existing floor. For b=2 and F=8, the replacement adds a lambda, so a weight tie does not transfer minimality. For b=1 and F=0, specialization costs **one extra bit**. This is a precise obstruction to extending this particular rewrite to every hand-off.

### 2.3 Idempotent-helper diagonal elimination [L]

Let A be any helper satisfying the beta identity `A A =β A`. Consider

```text
R = (λx. B) A Cvec
```

with arbitrary B, A and Cvec, including internal lambdas and redexes. If B has a selected occurrence `x x`, replace it by x, leaving A once as the let argument. Call the result S.

Then `R =β S`. Substitution turns the selected occurrence into two copies of the same hygienically shifted A; beta idempotence is preserved by shifting and by every surrounding source context. The `Squash` relation and `Squash.subst_join` formalize this at arbitrary lexical depth.

If x's local zero-based index at that occurrence is q, the exact saving is

```text
w(R) − w(S) = q+4 ≥4.
```

It deletes one application and one q-indexed leaf, changes no source lambda or j leaf, and preserves every reader law. Thus no such source is a global minimum (`no_minimum_idempotent_diagonal`). Unlike §2.1, B need not be a pure tree.

The concrete 11-bit helper

```text
J = λx. x (λy. x)
```

is idempotent:

```text
J J → J (λy. J) → (λy. J) (λu. λy. J) → J.
```

`idem_idempotent` checks this three-step reduction in Lean.

## 3. Actual exclusions, validation and limits

A **syntactic scan only** of rootnl's saved 658-source inventory found 67 entries whose helper is J, of which 27 have a selected diagonal x x. Seventeen replacements save four bits and ten save five. Their original weights are 43–45. `Cases.lean` has an individual theorem `¬ MinimumReader caseN` for each original source:

```text
157, 163, 164, 165, 166, 170, 180, 182, 183, 184, 185, 186,
187, 188, 194, 384, 385, 386, 387, 396, 397, 398, 399, 400,
401, 402, 403.
```

`checks.json` records exact sources, inventory references, prices and the SHA-256 of the input catalogue. These are **non-minimum proofs**, not claims that a finite probe failed or that the source has no reader laws. The other 631 entries retain their prior status.

Validation:

- `Handoff.lean`: generic specialization, source prices, full-law transport and diagonal elimination. Final compilation passes with only `propext` and `Quot.sound` in the reported axiom audits; no sorry or new axiom.
- `Cases.lean`: 27 individual minimum exclusions and two all-length reader witnesses, same axiom boundary.
- `check.py`: 64 explicitly chosen algebra pairs, covering all eight small trees and eight payloads, checked through `coord/rd.py` for beta-normal-form agreement and the weight/lambda/depth/hole identities. Two reader probes at lengths 1–8. The inventory scan does not normalize any of its 658 sources. This audit is not an enumerator for ROOT.
- The Python check takes about 0.03 s and 25.4 MB RSS. Final Lean runs each take under 0.6 s and 0.5 GB RSS, with two threads and `-M900`. No large expansion was materialized.

Reproduce from the repository root:

```sh
PYTHONDONTWRITEBYTECODE=1 python3 tmp/round4/simplify/check.py
```

Then from `lean/`, using the pinned toolchain:

```sh
LEAN_PATH=/Users/a9lim/Work/blam/lean/.lake/build/lib/lean \
  lean -j2 -M900 -R ../tmp/round4/simplify \
  -o ../tmp/round4/simplify/Handoff.olean ../tmp/round4/simplify/Handoff.lean

LEAN_PATH=/Users/a9lim/Work/blam/tmp/round4/simplify:/Users/a9lim/Work/blam/lean/.lake/build/lib/lean \
  lean -j2 -M900 ../tmp/round4/simplify/Cases.lean
```

All writes are in this lane. No tracked file, existing inventory, canonical data or memory was edited. No commit, engine build, delegation or consultation-back occurred.

## 4. Exact remaining statement and judgment

Let Read(R) mean both rigid laws for every n with one source j, and Min(R) the global three-coordinate minimum. Let Γ be expand's residual root family: two to four uses, hole depth at most one, k+d≤4, retaining every inherited structural hypothesis. The unsolved statement remains

```text
¬ ∃ R, Min(R) ∧ Γ(R) ∧ w(R)≤45.
```

This lane removes the two proven subfamilies above from Γ. It does not supply a covering classification of Γ. In particular, the hard cases still include:

- dependent payloads `λz. z P[z] Q[z] …`, where the passed closure retains its invoker;
- multiple-payload or internally redex-headed helpers;
- arbitrary nonlinear root bodies outside the proved idempotent-diagonal rule;
- low-capture residual-wrapper cases even in the independent-payload family.

The expanding Church witnesses are not covered by the new specialization theorem; expand's separate G-to-I identity remains their simplification proof.

**Read:** the useful invariant is the residual source interface, not the size or role support of the expanded term. Here the interface is completely represented by a tree over opaque M and residual W(M), and every surviving wrapper has an exact seven-bit reconstruction charge. This yields real descent where the interface collapses and states exactly where it fails. A full proof needs an exhaustive interface classification for dependent closures, together with costed rewrites that retain sharing. Merely asserting that a stopping self-application has a short shape, or invoking the lambda-rooted minimum floor on an expanded endpoint, would still leave the central implication unproved.
