# rootnf report — root redexes and the conditional normal-form floor

**Verdict.** No reader below 46 and no complete interpreter was built. The
root-redex branch remains open. There is a new **kernel-checked source
bound**, independent of H_nf:

    w(R) >= 4k + 22 + 4d + tax_1(R),

where R = (lambda x.B) A C_1 ... C_t is a minimum full-law one-hole reader,
k is x's source multiplicity, d is the hole depth, and tax_1 is the sum of
all non-j de Bruijn indices. Thus **k <= 5**, improving the previous cap 7;
**k <= 4 at positive hole depth**. The extremal profiles are pinned below.

H_nf does not by itself eliminate the remaining profiles. The suggested
normalization argument has two missing premises and, even after repairing
them, a lower/upper-bound mismatch. This report gives the corrected bridge.

Status labels: **[L]** kernel-checked here; **[H]** handwritten proof;
**[C]** fixed computations or coefficient counts, with their scope stated.
**[H_nf]** explicitly depends on the hypothesis under review elsewhere.
No result here assumes that the independent review of H_nf has finished.

## 1. Interpreters built

None. No .lam interpreter was assembled, no battery or polish run, and no
sub-162 claim is made.

Four fixed *readers* were used to check the normalization argument, with
Z and U_1 through U_8 checked by `witnesses.py`; all four pass. The all-n
arguments are given below, so these probes are only implementation checks.
The additive weight routine in that script correctly charges every j in a
multi-hole reduct; `coord/rd.py`'s weight routine is used only for one-hole
sources.

| reader | source w | normal-form result |
|---|---:|---|
| the existing 165 reader | 49 | one-hole normal reader, w = 54 |
| copied-j witness below | 52 | two j leaves, extended weight 52 |
| copied-j normal form repaired with c | 48 | already normal, one hole |
| recursive witness below | 106 | no beta normal form |

## 2. Exact identities and the normal-form bridge

### 2.1 What beta does and does not preserve [H; existing Lean laws]

`ReaderLaws.beta` preserves scope and every law. It does **not** assert
normalization or preserve the number of source j occurrences. H_nf as
stated in types/REPORT.md quantifies over beta-normal terms with **one j**.

The existing 165 reader illustrates legitimate upward normalization:

    (lambda n s. s (lambda b. b (lambda u r. r n) c) (s s s)) j
      -> lambda s. s (lambda b. b (lambda u r. r j) c) (s s s).

Its weight changes 49 -> 54. The root is linear, its argument is j,
M=4 and T=1, so the weighted price is 3*4 - 6 - 1 = 5. No later decrease
occurs. Both laws are the existing 165 identities; for unary input the
second branch gives c U_(n-1) (U_n U_n U_n) = c U_(n-1) N.

A source with one j can normalize to two:

    D = (lambda a s. s I (lambda u. s (lambda q.c) (s s a)) a) j
      -> lambda s. s I (lambda u. s (lambda q.c) (s s j)) j.

On zero input the variable arm is erased and the result is r j. On unary
input the arm absorbs the trailing j, `s (lambda q.c)` supplies c and the
tail, and `s s j` supplies N. This proves both laws for every n. The source
and its two-hole normal form both have additive weight 52; the normal
form's j depths are 2 and 1. Hoisting restores one hole but also restores a
redex, so hoisting alone does not make H_nf applicable.

### 2.2 A correct reader need not have a normal form [H, no H_nf]

Let

    A = lambda g t. t (lambda b r. b r (g g r)),
    F = A A,
    Rinf = (lambda g s. s (lambda b r. b (r j) (c r (g g r)))) A.

Induction gives F U_m(N) ->* N for every m>=0: the terminal K returns N;
each F-tag drops one cell and calls F on the tail. Therefore

    Rinf Z(r) ->* r j,
    Rinf U_n(N) ->* c U_(n-1)(N) (F U_(n-1)(N))
               ->* c U_(n-1)(N) N.

But F -> lambda t. t (lambda b r. b r (F r)). In the source reduct of Rinf,
the neutral s/bit/continuation heads leave this recursive occurrence in an
argument that full beta normalization must normalize. Unfolding F r
produces r (lambda b r'. b r' (F r')), and repeats at arbitrarily great
depth. These nested rigid-headed prefixes cannot be removed by another
source reduction. Hence there is no finite beta normal form.

Every source binder is live, and the only initial source redex is the
nonlinear root let. Thus even source nonerasure does not supply the missing
normalization theorem. This is a 106-weight witness, **not** a counterexample
to minimal-reader normalization below 46; that restricted claim remains
unproved here.

### 2.3 Repairing a normal form with several holes [H]

Let N be beta-normal and satisfy all reader laws, with q>=1 occurrences of
j. Colour the source occurrences j_1,...,j_q. Beta reductions do not inspect
free-variable names, so the zero reduction ends in r j_i for one colour i,
and every unary reduction has no coloured occurrence in its result. Now
replace every colour other than i by c and recolour j_i as j. Substitution
replays those reductions and preserves all laws. The resulting N* remains
beta-normal and has exactly one hole.

Every beta-normal law reader is lambda-rooted, so every j has depth h>=1.
A j leaf at depth h costs 4h in the additive extended weight W; a c leaf
there costs h+2. Consequently the repair has the exact price

    w(N*) = W(N) - sum_{non-surviving colours}(3h - 2).

For D above this replaces the depth-2 j by c and saves four bits, giving
the checked 48-weight reader. No minimality hypothesis is used.

**[H_nf]** Applying H_nf to N* yields

    W(N) >= 46 + sum(3h - 2) >= 46 + q - 1.

Thus multiple holes can be handled, but existence of N still needs proof.

### 2.4 The direction of the normalization inequality [H; H_nf explicit]

Suppose an actual finite normalization R=R_0 -> ... -> R_m=N exists. Use
the additive weight W on intermediate multiple-hole terms. For every
step let S_i be its exact `weighted_beta_at` price, including the fourfold
capture charge for j. Telescoping, followed by §2.3, gives **[H_nf]**

    sum S_i = W(N)-w(R)
            >= 46-w(R) + sum_non_survivors(3h-2).

A positive pre-stream expansion S_0 is compatible with this inequality.
It does not force a later saving. The remaining steps need only sum to at
least the right-hand side minus S_0, which can be negative. An upper bound
on the endpoint or on total expansion would be needed for a contradiction.

`RootProfile.lean::normal_root_contraction_gap` kernel-checks the one-step
special case: H_nf is an explicit parameter, the argument is j-free, the
contractum is explicitly assumed normal, its single hole is proved, and
its root price must be at least 46-w(R). It is deliberately a **lower**
bound on expansion, not a root-redex exclusion.

The types lane's split identity also does not supply the absent upper
bound. It requires no body occurrence of x to be used in both roles; an
x-headed hand-off can violate that condition. Even when applicable,
`w(split)=w(R)+G` with a positive sharing charge G and a normal split
reader gives only w(R)>=46-G. Normalization and a bound on G remain work.

## 3. New source bounds and exact necessary profiles

### 3.1 Three live binders under the correct minimum [L]

The minimum here is among readers satisfying **all unary laws**, with one
source j. No finite-probe minimum is substituted for it. The new ownership bounds need only weight minimality; the quoted linear
contraction and hoist tie-breaks in §3.3 use the stated lexicographic
minimum.

A full-law minimum has no source erasing redex: contraction preserves all
laws, cannot remove its required j, and strictly reduces weight.
The existing `SelfintReader30NonLambda.weakStep_two_live` and
`skeleton_not_reader` proofs then give three live source binders whenever
the root is not a lambda. With at most two, the first nonerasing head
contraction either leaves at most one live binder, contradicting the
reader's two-live requirement, or leaves a tree built from one live source
lambda whose body has no live lambda, contradicting the skeleton invariant.

This adaptation is checked as `full_minimum_nonlam_three_live`. It avoids
assuming `SelfintReader30.Minimum`, whose quantification is over the weaker
two-probe class.

### 3.2 The stronger root multiplicity price [L]

For R=(lambda x.B) A Cvec, the root binder owns k leaves. There are at least
two other live source binders, and at least one other nonlinear binder
(`reader_head_other_nonlinear`): the other binders therefore own at least
three leaves. Free c and j supply at least two more. Hence

    V >= k+5,    L >= 3.

The exact one-hole identity is

    w(R) = 2L + 4V - 4 + tax_1(R) + 4d.

It follows that

    w(R) >= 4k + 22 + tax_1(R) + 4d.

These are `root_owned_leaf_charge`, `root_leaf_charge`,
`root_weight_tax_charge`, `root_multiplicity_five`, and
`root_positive_depth_four` in `RootProfile.lean`.
No H_nf, finite enumeration, normalization premise, or argument shape
restriction is used.

### 3.3 Profile constraints left below 46 [L plus transparent arithmetic]

Let a=wire(A), M=sum of lambda depths of x's uses inside B,
f=#c(A), b=#c(B), h_A=#j(A), h_B=#j(B), and f_C=#c(Cvec). Put
F=f+4h_A and T=b+4h_B. The following are **necessary**, not sufficient:

- 1<=k<=5 and 4k+22+4d+tax_1(R)<=45. At d>=1, k<=4.
- `tax_1(R)>=M+b`, by inspecting the indices of B's x and c leaves;
  hence M+b<=23-4k-4d. Also M<=k*L(B).
- If A is j-free: a+M+2L(B)+4k<=43.
- If A carries j at depth d_A: a+3d_A+M+2L(B)+4k<=46.
- The root price is exactly

      S = (k-1) W(A) + (F-1)M - 4 - 2k - T.

  For j-free A, minimality gives S>=0. For k=1 it gives S>=1,
  because contraction also removes one lambda.
- For a j-bearing A, contract-and-hoist instead has exact price

      H = (k-1)(a-3) + f(M+k) + f_C - 3d_A >= 0.

  For k=1 and d_A>0, the depth tie-break strengthens this to H>=1.

The last two exact prices and argument budgets are existing Lean results;
§3.2 sharpens their allowable k, M and index budgets. The existing minimum
hole-depth reduction further restricts the unresolved cases to d=0 or 1;
this report does not reverify that separate finite-check-based reduction.

**Tight boundary rows [L].** Whenever k+d=5, `root_boundary_rows` proves

    V=k+5, #c(R)=1,
    (L=3 and tax_1(R)<=3) or (L=4 and tax_1(R)<=1).

Thus (k,d)=(5,0) has V=10, and (4,1) has V=9. Exactly two other binders are
live, with use multiplicities 2 and 1; an L=4 source has one further
vacuous binder. This last multiplicity statement follows by equality in
the leaf-ownership inequalities; the scalar rows themselves are in Lean.

**Scalar sharpness, not a reader [H,C].**

    (lambda x. x x x x x) (lambda y. y y) I c j

has w=42, k=5, a=8, M=T=d=0, L=3, V=10 and tax=0. Its first contraction
raises weight to 60, exactly S=18. Its head contains Delta Delta, so it
fails every probe by head divergence. `edge.py` checks the prices. This is
an explicit warning that compatible count profiles do not certify a reader.

### 3.4 Why the five-use inventory was not run [C, count only]

For the k=5 rows, a grammar tracking each binder's exact number of uses
counts trees by `(L,tax)` as follows. A contains a lambda; A=j is the
previously excluded direct-hole family, and the root-flat theorem excludes
other lambda-free A. All application associations and source redexes are
allowed.

| L | tax | trees |
|---:|---:|---:|
| 3 | 0 | 16,072 |
| 3 | 1 | 71,848 |
| 3 | 2 | 67,488 |
| 3 | 3 | 78,888 |
| 4 | 0 | 32,704 |
| 4 | 1 | 303,716 |
| **total** | | **570,716** |

Completeness for this **necessary grammar** is structural induction: a
variable consumes its prescribed occurrence, a lambda introduces a binder
with its prescribed multiplicity 0/1/2, an application partitions all
counts, and a forest partitions the pending root operands. The root x has
five uses, c and j one each, and j is allowed only at depth zero. Every
constructor charges its actual non-j index sum. The decomposition into B,
A and the pending spine is unique. The grammar is an over-approximation of
minimum readers: local nonerasure, semantic laws and other minimality
replacements have not been enforced.

`k5_live.py` evaluated 978 coefficient states without materializing a
candidate term. No positive factor hit its saturation guard (largest
12,600); `counts.json` records the exact totals. This count is not a law
check or an exclusion. The inventory exceeds 100,000, so it was not run or
split into artificial slices.

## 4. Remaining step and evidence boundary

The root-redex branch has **not** been excluded, even under H_nf. No exact
semantic classification of its surviving profiles has been obtained.
The new bounds reduce the search space and pin its outer count rows;
they do not close the hand-off's control flow.

A productive next target is the `(k,d)=(5,0)` or `(4,1)` boundary: its three
non-root bound leaves and at most three index units sharply constrain which
source lambda can bind the stream and how both rigid outputs cross it.
A forced-use/control-flow argument could prune the 570,716-tree envelope
before any further check. Another useful target is a source-sensitive
potential giving an **upper** bound on total expansion, together with
normalization or a separate exclusion of non-normalizing minimum sources.
H_nf can then contradict that upper bound. A lower bound on expansion,
or the fact that hand-off contraction retains code, cannot do so alone.

Without H_nf, all of §3 and the normalization/multiplicity witnesses and
repair identity in §2 still hold. With H_nf, the additional conclusions
are precisely the endpoint and cumulative-expansion lower bounds in
§2.3–2.4 and the conditional Lean theorem.

Verification: `RootProfile.lean` compiled from `lean/` with `lean -j2` and
the existing build library; final logs are `lean.log` and
`lean.resources.log`. There is no sorryAx in any printed theorem. The
count-row theorems use only propext, Classical.choice and Quot.sound; the
other new theorems use propext and Quot.sound. Compilation took under one
second and under 0.5 GB RSS. Fixed reader probes took under one second;
coefficient counting took 0.01 s and about 24 MB, single-threaded. No term
sweep, engine mutation, complete-interpreter test, consult, or delegation
was performed. All written artifacts are in this lane; nothing committed.
