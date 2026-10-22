# bodyredex — wave 5 report

**The whole branch remains open. No reader of weight ≤45 was found.**
The new reduction is: a globally minimum reader

    R = λs. ((λx. B) A) C1 … Ck

with one source `j` at depth 1 and `w(R)≤45` must have **a lambda-containing
argument A and multiplicity 1–4**. If the let is linear, **j must occur in A**.
Thus the remaining cases are a linear let carrying j inside a
lambda-containing argument, and nonlinear lets with two to four uses of a
lambda-containing argument. This does not prove the desired 46-bit bound.

Here “minimum” always means global minimum among full-law, one-hole readers
under `(weight, lambda count, hole depth)`. The arguments use the first two
coordinates; they are not claims about every reader of a syntactic family.
All files were written only in `tmp/round4/bodyredex/`. No consults or agents
were called, and no tracked source was changed.

## 1. Complete interpreters built

None. No new interpreter battery or polish result is claimed.
As a checker control, the known 162 reader
`λs. s I (λu. s (λq.c) (s s u)) j` was independently checked on zero and
unary lengths 1–8, at weight 46. This is a reader control, not a new complete
interpreter or a battery run.

## 2. Exact identities and transfer lemmas

### A hole-bearing skip can be erased on unary inputs

Put `J(s) = (s s s) j`. Its exact paired values are

    J(Z(r)) =β r j,       J(U_(n+1)(N)) =β N j.

The unary value `N j` is a rigid normal term absent from every required
output `c U_n(N) N`. The inert-replacement theorem therefore permits
replacing this argument by any term in any applied context, regardless of
how often the context copies it.

For `R = λs. ((λx.B) J(s)) C⃗`, define the literal source term

    T = B[s/x] C⃗,       G = number of outward s/c leaves in B.

Then T satisfies every unary law, and, if B and the pending operands have
no j,

    w(R) = 22 + |T| + G.

T is not normalized in this identity. Identifying x with s preserves its
leaf prices and removes exactly one index bit from each other outward leaf
of B. The remaining charge is the stream lambda, first let, J(s), and the
source hole tax.

**Kernel-checked:** `restJ_unary`, `restJ_zero`,
`replace_unary_restJ`, `dropped_unary`, `dropped_price` in
`FlatRestHole.lean`. The transfer quantifies over every unary length and
arbitrary B and pending operands; no linearity or minimality assumption.

### A precomputed skip cannot be the only source of stream dependence

For A=`s s` or A=`s s s`, if B and C⃗ contain no s, the zero and unary
residuals differ only by renaming rigid r to N:

    s s:       K r / K N,
    s s s:       r / N.

The rest of the applied context has only c and j free. Substitution in the
zero equality would force unary output `N j`, contradicting even the
length-one unary law. Thus **an s occurrence outside A is necessary**.
This is a handwritten substitution argument, not a finite observation.

## 3. Exclusions and their proofs

### 3.1 Multiplicity five or six is impossible in a minimum below 46

**Handwritten reduction plus complete computer check.** The library gives
multiplicity at most six and at least three source lambdas. At hole depth 1,
B is j-free and

    w(R) = 2L + 4V + X
         = 10 + |B| + |A| + sum_i(2+|Ci|),

where V counts all leaves and X counts the non-j indices. With multiplicity
m there are at least m x leaves plus s, c, j, so V≥m+3.

For m=6, V=9. All leaves are accounted for, so every lambda besides λs and
λx is vacuous. Each adds at least one capture bit, and c adds its baseline
bit: X≥L−1. Hence L=3.
For m=5, either V=8, with the same capture argument, or V=9, where the
ordinary price already gives L≤4. Thus L is 3 or 4.

If A is flat, `minimum_flat_four` leaves j, s s, s s s, s s s j. The live
literal-j-let theorem excludes j in a minimum below49. The three-stream
arguments require too many leaves; s s fits only for m=5. Everything else
has a lambda in A, including application-shaped A with j beside a lambda.

These restrictions leave the following complete source domains:

| Source domain | Sources |
|---|---:|
| m=6, L=3, A contains a lambda | 7,476 |
| m=5, L=3, A contains a lambda | 61,236 |
| m=5, L=4, A contains a lambda | 21,840 |
| m=5, L=3, A=s s | 1,928 |
| **Total** | **92,480** |

`high_count.py` uses constructor-level cardinality recurrences;
`high_check.py` independently generates the corresponding trees, verifies
every Cartesian-product count, scope/cost/hole/multiplicity invariant, and
absence of duplicate sources. No beta-normality assumption is imposed.

**Result:** 91,006 fail zero, 1,474 fail unary-one; no survivors or exceptions.
Elapsed 11.37 s, peak RSS 105.8 MB, one thread. After contracting the designated
let, every tested probe is affine; the checker asserts this. Affine beta
reduction strictly shrinks node count, so the initial node count supplies
sufficient fuel. The maximum observed probe had 176 nodes and 35 contractions.
There are no timeout or divergent-normalizer exclusions.

Evidence: `high_check.json`, `high_check.log`.
This reduces first-body multiplicity to **1–4**; it is not a Lean theorem.

### 3.2 A=(s s s) j is impossible below 46, at any multiplicity

**Kernel-checked conditional on the existing computer-checked tiny-core
inventory; the assembled exclusion is mixed evidence. No minimality needed.**
The identity in §2 forces the j-free unary core T to have cost at most23.
The already reviewed inventory (`hole/arms23.log`, `review_hole/check.py`)
contains exactly

    T22 = s (λq.c) (s s s),
    T23 = s (λq.c) (s s c).

The inventory was not rerun here or silently installed as an axiom.
`TinyUnaryClassification` is an explicit hypothesis of the Lean theorem.

Inverting the literal substitution B[s/x] and every possible spine cut
leaves exactly five sources at the original budget. With A=(s s s)j:

| B | Pending operands | Weight |
|---|---|---:|
| x | λq.c; s s s | 44 |
| s | λq.c; s s s | 45 |
| x (λq.c) | s s s | 45 |
| x (λq.c) (x x x) | none | 45 |
| x | λq.c; s s c | 45 |

All five fail zero. `preimages_complete` and `spineSplits_complete` prove
inverse coverage for arbitrary terms, and `tinySources_count` and
`tinySources_zero_reject` check the finite remainder. `restJ_exclusion`
assembles the result, conditional only on `TinyUnaryClassification`.

### 3.3 No linear flat first body argument in a minimum below46

**Handwritten, using the kernel-checked exact linear charge.** The cases
A=j and A=(s s s)j are already excluded. Let D be the depth of the unique x
in B and G its other outward leaves. The linear condition is
`(F−1)D≥7+G`. A pending forest containing j costs at least2; if it also
contains c it costs at least7, with j priced zero.

For A=s s, F=2 and `w=16+|B|+pending`.
If c is in B, G≥1, D≥8, and `|B|≥3D+8≥32`, giving w≥50.
If c is pending, D≥7 and `|B|≥3D+2≥23`, giving w≥16+23+7=46.

For A=s s s, F=3, D≥4 and `w=20+|B|+pending`.
If c is in B, then |B|≤23. A third leaf would cost at least `3D+12≥24`,
so B has only x and c; all its inner binders are vacuous. After reducing A,
its leaves are rigid r/c on zero and N/c on unary. Vacuous binders erase
pending arguments; they cannot make them the head. Such a term either
remains a lambda or has the same designated rigid head on the two probes,
which cannot be r on zero and c on unary.

If c is pending, |B|≤18. An outer s leaf in B costs at least `3D+7≥19`.
B therefore has x and at most one inner-bound leaf. With only x, B is a
lambda tower ending in x and cannot return c on unary. With the extra leaf,
equality forces D=4, four lambdas, and index0 for that leaf. The forms are
`λ^h. y_h (λ^(4−h).x)` or `λ^h. (λ^(4−h).x) y_h`, h=1..4.
The pending forest is exactly one of `[c,j]`, `[j,c]`, `[c j]`, `[j c]`.
Too few operands leave a lambda; otherwise the first shape is rigid c/j
headed. The second either has an erasing source redex, forbidden in a
minimum, or becomes N-headed on unary. All fail.

### 3.4 No nonlinear flat first body argument in a minimum below46

**Handwritten reduction plus complete computer check.** By §3.1 and §3.3,
only m=2..4 and A=s s or s s s remain. The extra stream occurrence from §2
gives V≥m+5 or V≥m+6, respectively. The weight and capture bounds give:

- A=s s: L≤6 at m=2, L≤4 at m=3, L=3 at m=4.
- A=s s s: L≤4 at m=2, L=3 at m=3; m≥4 is impossible.

A flat argument introduces no lambdas when copied, so contraction removes
one lambda. Lexicographic minimality requires strict weight growth:

    (m−1)(4a−2) + (a−1)M − 2m − 4 − G ≥ 1,

where a=2 or3 and M is the sum of the x-use depths in B. In particular,
A=s s and m=2 require M≥3+G and at least two lambdas in B.

These restrictions leave **47,328** sources. The check includes internal
redexes and every argument/operand tree in the budget. It does not enumerate
the 180,246 unfiltered m=2/s s sources and split that larger check into chunks.
`flat_count.py` counts the narrowed products and `flat_check.py` verifies
counts, source invariants, strict charge, and probe normal forms.

**Result:** 45,789 fail zero, 1,539 fail unary-one; no survivors or exceptions.
Elapsed 2.81 s, peak RSS 57.8 MB, one thread. Every contracted probe is affine;
maximum 148 nodes and 23 beta contractions. Evidence: `flat_check.json`.

Together, §3.1–§3.4 and `minimum_flat_four` prove that **A must contain a
lambda in a minimum sub-46 first-body reader, whatever the head of B**.

### 3.5 A linear lambda-containing A must contain j

**Handwritten proof; scalar bottlenecks kernel-checked. Not independently
reviewed.** Suppose A is j-free and contains a lambda. Let F count its free
s/c leaves, D the unique x's depth in B, E all other B leaves, and G the
outward B leaves. Minimality forces `(F−1)D≥7+G`, hence F≥2.

Pricing gives `|A|≥4F+1`, improved by one when c is in A. If A has a bound
leaf, its extra leaf/lambda pays this charge; otherwise every lambda adds a
capture bit. Also `|B|≥3D+2+4E`, plus one for an outer s leaf or two for c.

- **E≥2:** w≥23+4F+3D≥47. The product condition forces
  `4F+3D≥24`.
- **E=0:** B=λ^D.x. At least D pending operands must remove its leading
  lambdas, costing ≥4D−2. Continuation c is in A or pending and adds one
  more bit. Therefore w≥12+4F+7D≥46.
- **E=1:** only `(F,D)=(3,4),(4,3),(5,2)` can fit. If the second leaf is c,
  the price saturates at (3,4), pending=[j], and B is
  `c (λ^4.x)` or `(λ^4.x) c`: zero is c-headed or lambda-valued.
  If it is s, c must be in A, again only (3,4) fits, with B
  `s (λ^4.x)` or `(λ^4.x) s` and pending=[j]. The zero cell supplies two
  callback arguments and j supplies one more, insufficient to remove four
  vacuous lambdas. If the second leaf is inner-bound y, c must be in A;
  only (3,4) or (4,3) fits, pending=[j], and all B lambdas lie above x.
  Two leading lambdas already fail; with one the forms are
  `λy. y (λ^(D−1).x)` and `λy. (λ^(D−1).x) y`. Zero is j-headed or retains
  D−2≥1 lambdas.

`linear_pair_options`, `linear_cost_floor`, and `linear_chain_floor` check
the scalar minima. The source-to-scalar bounds and final source-shape
arguments above remain handwritten.

### Verification boundary and caps

`FlatRestHole.lean` is 221 lines and compiles with `lean -j2`, no errors,
no sorries, axioms within `{propext, Classical.choice, Quot.sound}`.
Final measured compile: 0.68 s, peak RSS 467.7 MB, two threads.
The two finite source checks each stay below100,000 terms, 120 seconds,
1 GB and two threads. All cardinality-only queries construct no full
reader layouts or semantic verdicts. Six selected generated sources also
agree with the independent named normalizer and price calculator on zero,
unary-one and unary-three. `verification.json` records controls and hashes.

The whole 46-bit reader lower bound, the high/flat finite inventories, and
the handwritten linear exclusions are **not** presented as fully
kernel-checked theorems. The tiny-core inventory is explicitly external to
`restJ_exclusion`.

## 4. Remaining problem and next technique

The remaining minimum first-body sources have:

    A contains a lambda;
    m=1 with j in A, or m=2,3,4.

The existing head alternatives, let-sinking, needed-extra-use and nested-let
exchange theorems still apply. A bare precomputed remainder, or a flat
argument carrying j, no longer explains the gap. A genuine lambda-valued
helper must be involved.

The live avenue is to classify the helper's paired zero/unary values and
charge how its lambda value is used by the two roles. The restJ argument
shows a workable pattern: replace a value on the unary probes, obtain an
exact small source core without normalizing it, then invert the structural
replacement at the original price. For a linear let carrying j, that
replacement must preserve the zero transport of j, including a possible
lambda-valued parent. For nonlinear helpers, their two-to-four uses need to
be tied to the unary output and zero transport; occurrence counts alone
still do not do that.

No claim of 162-bit optimality, or of closing this whole branch, follows
from this report.
