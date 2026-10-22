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

## 5. Coordinator follow-up: normal readers and the first contraction

**The whole first-body branch is still open. The linear remainder is now
strictly smaller:** in a globally lexicographically minimum reader below46
with source j at depth1, a linear first body let must carry j in its
lambda-containing A, and **B must itself have a nested head redex**.
Neither a rigid-headed B nor a lambda-headed B survives. The nonlinear
remainder still has 2–4 uses and a lambda-containing A, with the uniform
repeated-helper family below also excluded. No new interpreter was built.

### 5.1 What H_nf supplies, and what it does not

`review_types/REVIEW.md` is now present and accepts BN46 for the joint
zero/U1/U2 laws, subject to the Python search/Rust divergence-checker trust
boundary and a handwritten needed-occurrence/orphan lemma. It also finds
an unrelated single-law tabling incompleteness. I read the review; I did
not repeat its searches. Below, **H_nf** names the reviewed, external
normal-reader floor. It is not a Lean axiom or a kernel-checked theorem.

There are two premises to track before using it after normalization:

1. **Existence of a source normal form.** Reader laws alone do not imply
   this. For example, with `Ω=(λx.x x)(λx.x x)`, the correct reader

       λs. s I (λu. s (λq.c) (s s Ω)) j

   has weight62 and no source normal form. Zero erases the variable arm;
   every unary stream makes `s s Ω = N`. This is not a minimum or a
   sub46 witness. It shows why normalizability of the remaining small
   minima still needs an argument; H_nf does not establish that premise.
2. **One source hole.** If A carries j and the let has m uses, its
   immediate contractum has m holes. H_nf is stated for one. A correction
   by labelled-hole pruning is given in §5.5; applying H_nf directly to
   the copied source is not justified by its statement.

Even when these premises hold, only the *sum* of the contraction prices
must reach the floor. A more expensive reduct need not itself be a global
minimum, so the source-minimum inequalities cannot be restarted there.
For an explicit non-reader control, the linear head chain

    λs. ((λx y z. y x) (s I j)) s c            weight42
      → λs. (λy z. y (s I j)) s c             weight44
      → λs. (λz. s (s I j)) c                 weight33
      → λs. s (s I j)                        weight20

has exact prices `+2, -11, -13`. First-step growth alone proves little.
`followup_verify.py` checks those weights independently with named terms.

### 5.2 Linear immediate normal contracta are impossible, without H_nf

**Kernel-checked, with no size or hole-depth assumption.**
`minimum_linear_contractum_not_normal` states:

    MinimumReader (λs. ((λx.B) A) C⃗) → uses_x(B)=1 →
      ¬ NormalForm (λs. B[A/x] C⃗).

Proof: a rigid-headed B can only be x-headed or s-headed. The former
contradicts `minimum_extra_use`; in the latter the sole x is in one
operand, contradicting `no_one_operand_spine_let`. The source-head
classification leaves a lambda-headed B with a nonempty pending list, or
an existing nested head redex. Contraction creates a pending-argument
redex in the former and preserves the nested redex in the latter.

Moreover, in the remaining linear sub46 case j is in A at depth zero.
Thus A is not lambda-rooted. The proposed `x`-in-function-position plus
lambda-A creation mechanism cannot occur in this case. An application-
rooted A can already contain a redex, but that is a different situation.

`Followup.lean` proves the rigid-head exclusions and the complete immediate
contractum statement against the existing library, not against H_nf.

### 5.3 The created-redex case with lambda-headed B is excluded

**Handwritten source reduction plus a complete 13,296-source check.**
Write it as

    λs. ((λx y.D) A) C C⃗,       uses_x(D)=1,       j in A.

Swap the two binders and their arguments:

    λs. ((λy x.Dswap) C) A C⃗.

This preserves all laws, all lambda nodes and the source hole depth. Its
weight changes by exactly `uses_y(D)−1`; `exchange_join` and
`exchange_price` are kernel-checked.

- If y has no uses, this is a strictly lighter reader.
- If y has one use, the swapped source is another global lexicographic
  minimum with a **j-free linear first argument C**, excluded by §3.3 if C is flat and §3.5 otherwise.
- Therefore y has at least two uses. This step depends on the handwritten
  §3.3/§3.5 exclusions; it is not claimed as an unconditional Lean theorem.

Now put q=#free s/c leaves of A, a=cost(A) with j priced zero, b=wire(B),
D_x=depth of its unique x, G=#outward s/c leaves of B, and
p=Σ(2+wire(Ci)). The source and linear charge give

    a+b+p ≤35,       (q+3)D_x ≥7+G.

A contains a lambda and j is at its depth zero, so a≥6; if q≥1 then
`a≥4q+3`. For the latter bound, either A has an extra bound leaf, giving
`a≥4q+6`, or every lambda adds at least one capture bit to a non-j leaf.
B has x and at least two y leaves, so `b≥3D_x+10`; also p≥4.
These inequalities force q≤3. At q=0, D_x≥3 and a≤12. At q=1,2,3,
D_x≥2 and a≤15. Uniformly,

    6≤a≤15,       16≤b≤25,       4≤p≤12.

`linear_lambda.py` generates every A and lambda-headed B in these small
budgets, retaining the exact x/y multiplicities, source support, first
linear charge and total source price, then every pending forest. A and B
may contain further redexes. The constructor grammar includes all in-scope
indices; no beta-normality assumption or H_nf pruning is imposed.

**Result:** 13,296 sources; 13,292 fail zero and 4 fail unary-one;
no cycle, fuel, size or recursion exceptions and no survivors. Maximum
probe work was 12 beta contractions. The check took 0.73 s, 34.8 MB,
one thread. Six selected sources agree with the independent named
normalizer and cost calculator on zero and unary-one.

Together with §5.2, **every remaining linear first body let has a nested
head redex inside B**. The nested head redex may be nonlinear; this check
does not cover it by silently contracting it or treating the reduct as
another minimum.

### 5.4 Exact nonlinear profiles and one completely closed family

The following is the necessary price region, not a claim that every scalar
row is realizable by a reader. Let m be the first multiplicity, M the sum
of its use depths, L_B the lambda count of B, and G its outward s/c leaves.
Let a price A with j at zero if A holds it, and p price the pending forest
with j at zero if it holds it. Since B has no j at source depth1,

    w = 10+a+b+p,
    b ≥ 4m−2+M+2L_B,
    a+M+2L_B+p ≤ 37−4m.

| m | right-hand budget | j-free A: largest possible a (p≥2) |
|---|---:|---:|
| 2 | 29 | 27 |
| 3 | 25 | 23 |
| 4 | 21 | 19 |

For j-free A, write q=#free s/c leaves. The exact contraction price is

    Δ = (m−1)a + (q−1)M −2m−4−G.

Minimum weight requires Δ≥0. **If the immediate contractum is normal,
H_nf strengthens this to Δ≥46−w**, with its one-hole hypothesis preserved.
`normal_contract_charge` kernel-checks this inference with H_nf, normality
and the residual hole count explicit as assumptions. Source creation and
later contractions require their own prices; H_nf supplies no standalone
upper bound on the total expansion of a nonlinear chain.

For example the particular source family

    R = λs. ((λx. s x … x) A) j,       m copies of x,

has `w=15+4m+a`, Δ=`(m−1)a−2m−5`, M=0 and G=1. If A is normal, the
contractum is normal with weight `10+2m+m a`. Thus the arithmetic alone
leaves:

| m | source cap on a | H_nf scalar survivors for normal A |
|---|---:|---:|
| 2 | a≤22 | 16≤a≤22 |
| 3 | a≤18 | 10≤a≤18 |
| 4 | a≤14 | 7≤a≤14 |

These intervals are nonempty, so the price comparison alone does not
exclude even this simple sharing pattern.

**The whole displayed family is nevertheless excluded in a minimum
below46**, without H_nf and without normality of A. Here A must contain c,
because the rest of the source has none, and must contain a lambda by
§3.1–§3.4. The minimum-source charge gives `(m−1)a≥2m+5`.
`repeated_helper.py` checks exactly 14,150 sources satisfying those
conditions: 12,900 at m=2, 1,145 at m=3 and 105 at m=4.

13,264 fail zero, 883 fail unary-one, and two have exact head-state cycles.
The sole fuel exception is retained in the raw JSON:

    m=2,       A=λx. x (λz. z z c),       w=44.

With D=`λz. z z c`, its zero run reaches `D D c j` in nine head steps and
`D D C⃗ → D D c C⃗` forever. `badR_zero_trace`, `grow_no_nf` and
`badR_not_reader` certify it in Lean. Thus the assembled check has no
unresolved cases. Runtime 0.55 s, 59.0 MB, one thread; the largest completed
probe comparison used 19 contractions. Evidence: `repeated_helper.json`,
`Followup.lean`, and the separate adjudication in
`followup_verification.json`.

### 5.5 Hole-bearing nonlinear arguments: corrected conditional charge

Here q counts A's free s/c leaves, a prices its depth-zero j at zero, and
m=2..4. The weighted price, using the library's additive weight for every
residual hole, is exactly

    Δ = (m−1)a + (q+3)M +2m−8−G.

One cannot just insert that multi-hole term into H_nf. There are two
precise available transformations.

**Hoisting, exact price (handwritten algebra from the library identities).**
Contract and hoist every residual j to one root argument. If c_A is the
number of c leaves in A, s_B the number of s leaves in B, and c_C the
number of c leaves in the pending operands, the whole-source price is

    Δ_hoist = (m−1)a + qM + m−4−s_B + m*c_A + c_C.

This follows from `wire_beta_delta` and
`weight(hoist T)=wire(T)+4+count_c(T)−count_j(T)`.
Four independent named-term controls check the formula, including deep
uses and repeated holes. Minimum weight requires Δ_hoist≥0. At m=1,
hoisting after contraction preserves the lambda count and lowers source
hole depth from1 to0, so lexicographic minimality requires Δ_hoist≥1.
The hoist itself is a redex, so it does not discharge H_nf's normality
hypothesis.

**Pruning extra holes, handwritten transfer lemma.** Suppose the immediate
contractum is normal. Label its m source j occurrences distinctly. The
zero reduction to `r j` identifies exactly one source label j_* that
supplies the output; all other labels are erased. Every unary reduction
erases every label. By the established dispensability/transfer argument,
replace each nonselected source hole by its nearest bound variable. The
same reductions still work, and variable replacement preserves source
normality. The resulting source has one j, so H_nf applies.

If D_* is the depth of the selected x use inside B, pruning saves exactly
`2(m−1)+4(M−D_*)`: a hole under depth1+D_i costs 4(1+D_i), whereas its
replacement costs2. Consequently the corrected necessary inequality is

    46−w ≤ (m−1)a + (q−1)M +4D_*−6−G,
    0≤D_*≤L_B,       D_*≤M.

This is stronger than merely requiring the additive multi-hole weight to
reach46. The pruning lemma is handwritten, not kernel-checked here;
`normal_contract_charge` requires the one-hole condition explicitly and
does not conceal this transfer. For a longer normalizing chain, the same
argument applies to its final normal form, but the selected-hole depths
and total price must be tracked through the actual chain. No all-chain
bound was obtained.

### 5.6 Exact remaining claim and evidence boundary

The follow-up does **not** prove “under H_nf, no minimum reader below46
has a first body redex.” What is established is:

- linear immediate normal contracta: impossible for any minimum reader,
  kernel-checked, without H_nf or a size bound;
- linear lambda-headed B below46 with j at depth1: excluded, using the
  earlier handwritten flat and j-free-linear lemmas, a kernel-checked binder swap,
  and the complete 13,296-source check;
- uniform repeated-helper B=`s x … x`, pending `[j]`: excluded below46 in
  a minimum by 14,150 cases plus one Lean divergence certificate;
- general normal immediate contracta: the exact H_nf inequalities above,
  with normality and hole multiplicity made explicit.

Still open: **linear lets carrying j with a nested head redex in B**, and
**nonlinear lets with 2–4 uses of a lambda-containing A outside the closed
families**. Their intermediate expansion and later contraction can trade
weight in both directions. The next missing semantic step is a bound on
that shared computation, or a normalization/pruning transformation whose
whole-source price is controlled; H_nf alone is not that bound.

The final `Followup.lean` compiles without errors or sorry, with axioms
contained in `{propext, Classical.choice, Quot.sound}`. Timing, RSS,
independent controls and source hashes are in `followup_verification.json`.
Each new finite check is below100,000 sources, two minutes, 1 GB and two
threads. All new writes remain inside this lane; no consult, delegate,
tracked edit, or commit was made.
