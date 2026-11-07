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

## 5. Follow-up: dependent payloads, multiple payloads, and arbitrary bodies

**Result.** There are four additional catalogue exclusions, IDs **408–411**, each by a 45→39 weight descent. Together with the previous 27, this lane has certified **31 of 658 as NON-MINIMUM**; **627** remain after this lane's cuts. The four new applications use the already-proved independent-payload theorem. The dependent extension itself gives an exact price and full transport, but no new catalogue exclusions.

On the ten over-cap cells, coefficient-only application of the independent-payload and constant-helper rules removes **184,628 of 2,527,654**, leaving **2,343,026 after these rules**. These are necessary-source counts, not counts of readers. No member of those over-cap inventories was constructed or probed. Nothing here is a non-reader certificate; rootcert2 owns that separate question. The general hand-off exclusion is still open.

### 5.1 Dependent payload: full transport, but an expensive reconstruction

Write

```text
A = λz. z M[z],             P = λz. M[z],
Wp = λz. z (p z).
```

No normality or termination condition is imposed on M; it may use z arbitrarily. `Wp[P/p] →β A` by contracting the generated application under the lambda. For any pure application tree T with k leaves, normalize only the symbolic rule

```text
w X → X (p X),             w = λz. z (p z),
```

keeping p opaque. In particular,

```text
w w → w (p w) → (p w) (p (p w)).
```

The resulting mixed tree U consists of a p leaves and b residual w leaves. Its source reification gives

```text
(λx. T[x]) A C⃗  =β  (λp. U[p,Wp]) P C⃗.
```

The exact coordinate changes are

```text
Δweight = 4(a+b-k) + 11b - 4,
Δlambdas = b,
Δdepth(j) = 0.
```

The source has P once; no duplication or deletion of its j occurs. The opaque body is closed over p, so its many uses of p do not count as multiple source holes. Both reader laws for every n transfer through the beta join.

**Proof of price.** `w(A)=w(P)+4`. Inside the sharing binder, p costs 2 and Wp costs 13. Thus `w₁(U)+2=4(a+b)+11b`, whereas `w₁(T[x])+2=4k`. Subtracting the two complete source prices gives the displayed formula. The original A and extracted P have the same lambda count and the same source-hole depth; each residual wrapper adds one lambda.

`Dependent.lean` kernel-checks this specialization for **all** application trees, its beta join, weight identity, hole count, scope and all-n laws. Its minimum consequence is

```text
MinimumReader(source) ⇒ 4k+4 ≤ 4(a+b)+11b.
```

`dependent_uniform_overhead` proves the stronger result that this replacement costs **at least seven extra bits for every application tree**: specialization never decreases the number of leaves and leaves at least one wrapper. `dependent_small_positive` also checks strict increase on the eight trees with 2–4 leaves. For `T=x x`, a=3 and b=2, so the replacement is **30 bits heavier**. This refutes the proposed *uniform descent by this particular closure-factorization*, not the general hand-off conjecture. Inspecting or simplifying P can help in particular cases, but it is a separate argument; treating P as opaque cannot deliver the desired descent here.

If a payload uses further formal arguments, abstract those arguments in P as well, and reapply them in its symbolic reconstruction. The exact unrestricted price in §5.3 includes the added lambdas, applications and index shifts. Such dependencies cannot be priced as independent captures.

### 5.2 Several payloads and external heads

For

```text
A = λz. z M₁ … M_p,                 p ≥ 1,
```

choose dᵢ=1 when Mᵢ uses z and dᵢ=0 otherwise. Set Pᵢ=`λz.Mᵢ` in the first case and Pᵢ=Mᵢ in the second; put d=Σdᵢ and

```text
F = Σ_{dᵢ=0} (#c(Pᵢ)+4#j(Pᵢ)),
qᵢ = pᵢ z when dᵢ=1, and pᵢ otherwise,
W = λz. z q₁ … q_p.
```

All source occurrences are counted, including those under inner lambdas. After symbolic specialization to a body D, use the source

```text
R* = (λp₁ … p_p. D) P₁ … P_p C⃗.
```

For arbitrary root B, the exact price is

```text
Δweight = w_p(D) - w₁(B) + 2p + 2d - 8 - F,
Δlambdas = p+d-2 + L(D)-L(B).
```

**Derivation.** The original helper costs
`w(A)=4+Σw(Pᵢ)+2(p-d)+F`.
The replacement costs `w_p(D)+4p+Σw(Pᵢ)` before the unchanged C⃗, while the original costs `w₁(B)+4+w(A)`. This gives the formula without any evaluation assumption. Simultaneous abstraction retains every Pᵢ exactly once.

For a pure T, let U have nᵢ leaves pᵢ and b leaves W. The wrapper costs

```text
w_p(W) = 4 + 5p + p(p-1)/2 + 4d.
```

Consequently the completely expanded coefficient formula is

```text
Δweight = 2p+2d-8-4k
          + Σᵢ nᵢ(p-i+4)
          + b(6+5p+p(p-1)/2+4d) - F,       i=1,…,p,
Δlambdas = p+d-2+b.
```

If j is in an independent Pᵢ, its depth falls by one; if it is in a dependent Pᵢ or C⃗, its depth is unchanged. For j in B, use the explicit occurrence and depth equations of §5.3. Negative Δweight excludes a minimum. At zero weight, a smaller lambda count, or equal lambda count and smaller hole depth, excludes a minimum under the requested three-coordinate order.

These general mixed-family equations and the common-ancestor proof are handwritten. The unrestricted source-coordinate formula is kernel-checked in `Factor.lean`; 274 applicable saved sources independently passed the mixed weight equation during `extend.py`'s static audit.

There is also a direct kernel-checked two-payload case in `Multiple.lean`:

```text
A = λz. z M N,
(λx. x x) A C⃗  =β  (λp q. p p q q) M N C⃗,
Δweight = 6 - F(M) - F(N),
Δlambdas = 0.
```

Both sides reduce to `M M N N C⃗`. The file proves the beta join, exact price, equal lambda count, source-hole preservation, scope and both full laws. Therefore a weight-minimum source of this shape requires `F(M)+F(N)≤6`. Handwritten depth accounting also excludes the equality case for the three-coordinate minimum when its unique j is in M or N. The over-cap coefficient application found no qualifying descent with p≥2; this does not exclude those helpers.

For an external head

```text
A = λz. y M₁ … M_q,
```

factor y as an additional independent piece. With r=q+1 total parameters, d dependent payloads and F counting all independent captures including y, the corresponding exact formula is

```text
Δweight = w_r(D)-w₁(B)+2r+2d-4-F,
Δlambdas = r+d-2+L(D)-L(B).
```

The reconstructed wrapper costs `5r+r(r-1)/2+4d` in the r-parameter frame. This also carries the same all-law and one-hole proof: reconstruct the helper by beta contractions, specialize only the opaque symbolic body, and retain the pieces once. It does **not** claim every external-headed helper admits a cheaper replacement.

A substantial external/erasing subfamily does descend uniformly. If

```text
A = λz. H,                         z absent from H,
```

use opaque h and the rule `w X→h`, with reconstruction `w=λz.h`. If U has a h leaves and b residual w leaves, then

```text
Δweight = 4(a+b-k)+3b-2-F(H),
Δlambdas = b-1,
depth_old(j)-depth_new(j) = #j(H).
```

For the three trees `x x`, `x (x x)`, `(x x) x`, these are respectively
`-6-F(H)`, `-10-F(H)`, and `-3-F(H)`: always strict. H may contain arbitrary lambdas, lets, c and j; it need not normalize. `Constant.lean` kernel-checks the symbolic specialization for every T, exact price, one-hole and full-law transfer, and the strict minimum exclusion for these three trees. The larger-tree limitation is real: the four-leaf left comb with closed H has Δweight=0 and adds a lambda.

### 5.3 General root bodies: exact accounting and explicit transport conditions

The following applies to **any B**, including inner lambdas and lets. It also handles helper payloads closed over several formal arguments. Pick opaque parameters P₁,…,P_p and a reconstruction W such that substituting the Pᵢ into W beta-reduces to A. In the parametric source, replace x by W and perform any certified symbolic beta reductions to D. A common ancestor is

```text
Q = (λp₁ … p_p. (λx.B) W) P₁ … P_p C⃗.
```

All binder insertions and substitutions here are hygienic. One branch instantiates the parameters and reconstructs A, reaching R. The other performs the chosen symbolic contractions under the parameter binders, reaching R*. Thus `R =β R*`, even if some Pᵢ are divergent. No stream is supplied and no runtime evaluation of the payloads is needed.

For arbitrary A and arbitrary chosen parameters, the exact unrestricted formula is

```text
Δweight = w_p(D)-w₁(B)+4p+Σw(Pᵢ)-w(A)-4,
Δlambdas = p+L(D)+ΣL(Pᵢ)-1-L(B)-L(A).
```

`Factor.lean` kernel-checks these coordinate components. Its occurrence and depth identities are

```text
occ_j(R*) = occ_(j+p)(D) + Σocc_j(Pᵢ) + occ_j(C⃗),
depth_j(R*) = depth_(j+p)(D) + p·occ_(j+p)(D)
              + Σdepth_j(Pᵢ) + depth_j(C⃗).
```

They must be compared with the original source. In particular, beta equivalence alone does **not** preserve the one-source-j condition. When j is confined to the payloads or unchanged C⃗, the constructions above preserve it automatically. When it is in B, a symbolic reduction may erase or duplicate it, and the final source count must be checked. `General.lean`'s `no_minimum_join` requires scope and one-hole evidence separately and transports the complete `ReaderLaws`, not finitely sampled laws.

There is a useful non-expanded initial price for B. Write `k=occ_x(B)`, let E be the sum of local lambda depths of its x leaves, and let G be the weighted outer captures of B excluding x (`#c+4#j` in the valid reader frame). In the mixed p-payload construction, each parameter occurs once in W. Before any symbolic beta contraction,

```text
w_p(B[W/x])-w₁(B) = k(w_p(W)-2) + (p-1)(E+G).
```

**Handwritten structural proof:** replacing x at local depth q replaces a leaf costing q+2 by W costing `w_p(W)+pq`; this contributes `w_p(W)-2+(p-1)q`. Every other outer capture crosses p-1 additional binders, charging p-1 per c and 4(p-1) per j; inner bound variables and constructors do not change. Summing gives the equation. Every subsequent symbolic contraction contributes exactly the existing kernel theorem `SelfintLocalCost.weighted_beta_at`, at ambient depth p plus its local depth. Thus arbitrary B has the following exact single-parameter starting charges, plus the sum of those local beta price changes:

```text
independent λz.z M:       7k - 6 - F(M),
dependent λz.z M[z]:     11k - 4,
constant λz.H:           3k - 2 - F(H).
```

This accounts for inner lambdas and lets rather than assuming them away. It is not an existence theorem for a reducing sequence whose final price is negative. Finding such a representation or sequence for every remaining source is the unresolved implication.

### 5.4 Application to the 631 saved sources

`extend.py` first removes the 27 previously certified IDs, then applies the symbolic factorization to the remaining **631** saved sources. It also checks at most 32 head contractions and 32 normal-order contractions of each source for an earlier cheaper one-hole endpoint. Symbolic specialization uses at most 49 contractions and a 1,200-node cap; endpoints beyond a cap are not classified. No stream probes occur.

There are 274 directly factorable single-leading-lambda, own-headed helpers:

| Payload shape | Sources checked | Additional non-minimum |
|---|---:|---:|
| One dependent payload | 225 | 0 |
| Two payloads, one dependent | 30 | 0 |
| Two dependent payloads | 11 | 0 |
| One independent payload | 8 | 4 |

IDs **408, 409, 410, 411** have B=`(x x) (x x)`, a closed payload M, and pending operands j,c in either order. Their replacements are `(λp. (p p) (p p)) M C⃗`, saving six weight units and one lambda. `ExtendedCases.lean` proves every exclusion via concrete beta paths from a common ancestor, separate scope/hole checks, and a strict price comparison. These four are applications of the prior static theorem, not evidence that the dependent reconstruction is cheap.

The remaining independent IDs **412–415** have the low-capture residual-wrapper shapes `(x (x x)) x` and `((x x) x) x`. The replacement pays for one or two residual wrappers; closed M supplies no capture saving.

All **627** remaining catalogue sources have k=4, depth(j)=0, and no leading lambda in B. Their root bodies split into **370 pure x trees**, **165 application bodies with c or j**, and **92 bodies with inner lambdas or lets**. Their helpers have one, two, or three leading lambdas in counts **280, 340, 7**. The 280 single-leading-lambda helpers comprise the 270 uncut own-headed factorizations above plus 10 internally redex-headed helpers. These are source shapes after this lane's cuts; no surviving reader or minimum is asserted.

Machine-readable deliverables: `NONMINIMUM.tsv` (all 31 certified IDs), `REMAINING.tsv` (627 IDs and source text), `extend.json` (four explicit replacements and the applicability audit), and `extension_summary.json` (counts and source-input hashes).

### 5.5 Application to the over-cap cells

`count_extensions.py` reuses rootnl's coefficient grammar and reproduces its strengthened boundary filters. It never constructs full sources. For a pure B with k=2 or 3, the existing features distinguish its tree shape. A helper's top multiplicity zero identifies `λz.H`; top multiplicity one, one leading lambda and own-binder head identifies an independent payload spine, because the head consumes its only z. The symbolic coefficient price then decides the cut. Every cut that actually fires is a **strict weight descent**, so no lambda/depth tie-breaking assumption is needed for these numbers. Only the one-independent-payload and constant-helper families contribute.

The before counts were checked exactly against rootnl's `verification.json`. Cell notation is `(hole location, B head, pending count, A leading lambdas)`.

| k | j depth | Cell | Before | NON-MINIMUM | After |
|---:|---:|---|---:|---:|---:|
| 3 | 0 | `(Cs,x,2,1)` | 126,994 | 6,404 | 120,590 |
| 3 | 0 | `(Cs,x,1,1)` | 277,140 | 3,338 | 273,802 |
| 2 | 1 | `(A,x,0,1)` | 184,004 | 807 | 183,197 |
| 2 | 1 | `(B,x,0,1)` | 112,402 | 0 | 112,402 |
| 2 | 1 | `(A,lambda,0,1)` | 141,728 | 0 | 141,728 |
| 2 | 0 | `(Cs,x,2,1)` | 399,084 | 37,988 | 361,096 |
| 2 | 0 | `(Cs,x,3,1)` | 113,874 | 15,432 | 98,442 |
| 2 | 0 | `(Cs,x,1,1)` | 716,476 | 35,067 | 681,409 |
| 2 | 0 | `(Cs,x,2,2)` | 201,140 | 47,552 | 153,588 |
| 2 | 0 | `(Cs,x,1,2)` | 254,812 | 38,040 | 216,772 |
| **Total** | | | **2,527,654** | **184,628** | **2,343,026** |

The remainder splits by B into **741,158 pure x trees**, **329,825 application bodies with c or j**, **1,130,315 bodies with inner lambdas or lets**, and **141,728 bodies with leading lambdas**. Within the pure-tree remainder, the helper categories are 341,711 dependent own-headed, 24,232 independent own-headed without a qualifying price descent, 214,372 external or internally redex-headed, and 160,843 with multiple leading lambdas. These are syntactic coefficient classes, not semantic classifications. No coefficient version of every possible arbitrary-B specialization or idempotent-diagonal placement is claimed.

`COEFFICIENT_CUTS.tsv` contains the ten rows; `extensions_{3_0,2_1,2_0}.json` records the full reproduced boundary, cut counts, prices and remaining shape cross-tabulations. These exclusions can overlap independent non-reader proofs in other lanes; the counts must not be added to those lanes without intersecting the certificates or predicates.

### 5.6 Verification and remaining proof obligation

The six new Lean files (`General`, `Factor`, `Dependent`, `Constant`, `Multiple`, `ExtendedCases`) all compile with the pinned toolchain, two threads and `-M1800`. Printed theorem axioms are only `propext`, `Quot.sound`, and `Classical.choice` (the last appears in the general dependent-overhead count lemma); no `sorryAx` or external oracle is involved. Timed final compilation took **0.23–0.32 s per file**, at most **463 MB RSS**. The saved-source pass took **1.95 s / 24.2 MB**. The largest coefficient run took **8.03 s / 687 MB**; each run used one counting thread and a watchdog thread, and stayed under the stated caps. `extension_verification.json` and the per-module logs record the checked proof files.

From the repo root, the reproducible application commands are:

```sh
python tmp/round4/simplify/extend.py
python tmp/round4/simplify/count_extensions.py 3 0
python tmp/round4/simplify/count_extensions.py 2 1
python tmp/round4/simplify/count_extensions.py 2 0
python tmp/round4/simplify/summarize_extensions.py
python tmp/round4/simplify/verify_extensions.py
```

The unresolved claim is still the absence of a globally minimum reader in the remaining root family below weight 46. The new dependent theorem makes the obstruction precise: abstraction that preserves sharing also introduces a costly reconstruction interface. General B now has an exact source price and a proof-certificate route, but an all-case nonincreasing replacement is missing. A successful next argument must exploit the internal action of dependent payloads or give a more economical shared interface; a bound on expanded size or a finite failure to find descent does not supply that argument.

No complete interpreter was built in this follow-up. All changes are confined to this lane; no tracked edit, commit, consult-back, or delegation occurred.
