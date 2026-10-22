# jerase — erasing j: a provenance theorem, not a priced trichotomy

**Verdict.** The proposed lemma is false as an exclusive, priced classification
of **all** readers. Its sound repair classifies individual residual-death events
by the origin of the erasing lambda: source, input-F, or terminal input-K.
Those origins are exhaustive, but the suggested source-shape and price
consequences do not follow. In particular:

- The 162 actually erases j at the terminal input-K. Its lambda-u transfers j
  to the skip; it does not erase j at its own contraction. Thus terminal-K
  erasure does **not** imply the 164's split-operand shape or a 48-bit floor.
- The 165 erases a function carrying j with input-F and weighs 49. The
  depth-1 reader F52 below does the same at 52. Thus input-F erasure does
  **not** imply a separately supplied j/N operand or a 53-bit floor.
- A single source j can have residuals erased by both F and K. This happens
  even in the beta-normal, depth-1 reader R58 below.
- A source selector can erase j without being a source ancestor of any
  needed s/c leaf. R70 is a beta-normal, depth-1 construction of this kind.

**No sub-162 reader was found. No general w >= 46 theorem is claimed.**
The actual erasure lemma and five readers' all-length laws are kernel-checked.
The binder-origin exhaustion and the interpretations of their labelled
execution traces are handwritten proofs, separately checked on explicit runs.

## 1. Complete interpreters built

None. Consequently there is no new full-interpreter battery line or polished
machine-size claim. The constructions below are literal reader sources used
to refute claims quantified over arbitrary source trees. Their reported numbers
are exact reader weights; they are not claims of algorithmic optimality.
No interpreter battery, letopt sweep, or term enumeration was run.

The existing 162 and 165 are used as controls. Source files for five additional
reader witnesses are `mixed50.reader.lam`, `mixed58.reader.lam`,
`F52.reader.lam`, `local_absorber.reader.lam`, and `sourceF.reader.lam`.

## 2. Exact identities and constructions

Conventions: `K = lambda x y.x`, `F = lambda x y.y`, `I = lambda x.x`,
`Z(r) = cons K r`, `U_n(N) = 1^n 0 ++ N`. For unary inputs write
`s = U_n(N) = cons F r`, where `r = U_(n-1)(N)`, n >= 1.
All free c, j, r, N are independent rigid variables.

### 2.1 The shared skip identity

For every m >= 0 and every A,

    U_m(N) U_m(N)       ->* lambda z.N
    U_m(N) U_m(N) A     ->* N.

For m=0, opening both cells selects K and leaves `K N`. The successor case
reduces `U_(m+1) U_(m+1)` to `U_m U_m` by opening the two leading F cells.
This is the library theorem `skip_self`; `Witnesses.lean:skip_argument`
derives the arbitrary-A version. On zero streams,

    Z(r) Z(r) A ->* r.

These identities do not depend on the content of the discarded operand A.

### 2.2 What the 162's absorber actually does

Let `V = lambda u. s (lambda q.c) (s s u)`. On unary inputs,

    s I V j ->* V j
            -> s (lambda q.c) (s s j)
            ->* c r (s s j)
            ->* c r N.

The contraction `V j` has binder multiplicity **one**, not zero. The j
residual survives it. The final contraction of the terminal K's inner binder
against j removes it. Its source weight is 46.

The 47-bit variant replaces the last u with s:

    lambda s. s I (lambda u. s (lambda q.c) (s s s)) j.

Here lambda-u is genuinely vacuous and directly erases j. Thus the 46/47
pair distinguishes an operational eraser from an absorber whose uses become
holes in the unary core. The reviewed dispensability definitions make the
162's u dispensable; they do not move the actual death event to lambda-u.

### 2.3 Mixed erasure at weight 50

    R50 = (lambda n s.
             s (lambda b. b (lambda u t. t n) c) (s s n)) j.

This is the 165 with its skip's dummy s replaced by the already-bound n.
The outer let has two uses, so its one source j becomes two residuals.

Zero: the handler gives `lambda t.t j`, while `s s j ->* r`, hence `r j`.
Unary: the leading input-F discards `lambda u t.t j`, giving `c r`; the
other residual is in `s s j` and is discarded by terminal input-K. The
result is `c r N` for every n >= 1.

Exact price: `(cost, depth, w) = (50, 0, 50)`.
`mixed50_laws` and `mixed50_price` are kernel-checked.
This witness is not minimum: replacing the skip's n by s gives the 49-bit
165. It refutes an all-readers assertion, not a minimum-reader assertion.

### 2.4 Mixed erasure in a beta-normal, depth-1 reader

    R58 = lambda s. s (lambda b t n. b (t n) (c t (t t n))) j.

Opening the cell and supplying j gives

    zero:  K (r j) (c r (r r j)) -> r j;
    unary: F (r j) (c r (r r j)) -> c r (r r j) ->* c r N.

The handler's n binder duplicates j. The leading F erases the residual in
`r j`; the terminal K erases the residual in `r r j`. Both events occur in
every unary run, including n=1. There is one source j, at depth 1, and no
source beta redex.

Exact price: `(54, 1, 58)`. `mixed58_laws`, `mixed58_price`, and
`mixed58_normal` are kernel-checked. Thus neither beta-normality nor depth 1,
even together, justifies assigning one erasure origin to the whole reader.

### 2.5 Input-F can discard a carrier, below 53 at depth 1

The known 165, weight 49, erases the whole zero continuation
`lambda u t.t j` with the leading input-F. It does not construct a separate
j/N operand. The adv5 reader below has the same behavior at depth 1:

    F52 = lambda s.
            s ((lambda n b. b (lambda u t. t n) c) j) (s s s).

Contracting the handler's let exposes the 165 handler. Zero yields `r j`;
unary gives `c r (s s s) ->* c r N`, discarding the j-bearing zero arm with F.
Exact price: `(48, 1, 52)`. `F52_laws` and `F52_price` are kernel-checked.
This is adv5's existing construction, not a new algorithm credited here.

### 2.6 A local source absorber outside the c-producing branch

    R64 = lambda s.
            s (lambda b. b I c)
              (s (lambda b t. b I (lambda u. t t t)) j).

The first operand provider `s (lambda b.b I c)` is r on zero and `c r` on
unary. The second operand is j on zero; on unary it is

    (lambda u. r r r) j -> r r r ->* N.

The actual eraser is the source lambda-u. Its literal body has only t leaves,
and the c-producing source lies outside its scope. This is a concrete
needed-cell-tail alternative to a binder above the whole unary core's s/c
leaves. It has no source beta redex and j is at depth 1.
Exact price: `(60, 1, 64)`. Laws, price, and beta-normality are kernel-checked.

### 2.7 A source selector: the missing shape under narrow case (i)

    R70 = lambda s.
            s I (s (lambda q.c))
              (s (lambda b t. b K F) j (s s s)).

Define `P = s I (s (lambda q.c))` and
`B = s (lambda b t.b K F)`. Then

    zero:   P ->* r,    B ->* K;
    unary:  P ->* c r,  B ->* F.

Therefore `B j (s s s)` is j on zero and N on unary. On unary, B returns
the **literal source F** in the handler. That source lambda's body ignores
its first argument j. No source s/c leaf lies under that erasing lambda;
its surviving operand `s s s` is outside the lambda's source scope.
The input-F used to select the source F discards a j-free source K, so it
is not the j-death event. Terminal K subsequently computes N from a j-free
operand, so it is not the j-death event either.

This is a fourth *source-routing shape* if (i) requires a core-wide absorber,
(ii) an input-F, and (iii) an input-K. It is not a fourth lambda-calculus
primitive: under the repaired provenance classification it is SOURCE.
Exact price: `(66, 1, 70)`; laws, price, and beta-normality are kernel-checked.
It is not a promising minimum: replacing the boolean reifier B by `s K`
returns the known 53-bit source-disjoint reader. Its purpose is to test
exhaustiveness, not to claim a size improvement.

## 3. Erasure theorem, exact accounting, and the failed bounds

### 3.1 Precise repaired classification

Label every source node of R, and every lambda in the supplied stream, with
its origin. Beta contraction retains the labels of body nodes and copies
argument labels into each substituted occurrence. It creates no lambda
with a new origin. Track the unique source j as a residual genealogy:
substitution at multiplicity m gives each argument residual m descendants.
At m=0 it has no descendant. Retained body residuals retain their identity.

A **death event** for a j residual is the contraction

    C[(lambda x.B) A] -> C[B[A/x]]

where that residual is in A and x has zero occurrences in B *at this step*.
This permits source redexes, lets, copied functions, nonnormal source bodies,
and arbitrarily many j residuals. It does not demand that the source lambda
was originally vacuous.

**Theorem [handwritten provenance, kernel-checked erasure core].** For any
reader, on the finite normal-order run of `R U_n(N)`, every j lineage ends
at such a death event. Every death event has exactly one of these origins:

1. **SOURCE:** a residual of a lambda in R;
2. **INPUT-F:** the outer, unused binder of a unary-prefix F;
3. **INPUT-K:** the inner, unused binder of the terminal zero-bit K.

No assumption about minimality, depth, beta-normality, or lets is needed.
There may be multiple events and multiple origins in one run. The theorem
classifies events; it does not assign one of three source templates to R.

Proof of exhaustion: the final normal form `c U_(n-1)(N) N` has no j, so
all j lineages end. A free rigid leaf cannot disappear except by erasure
of a beta-redex argument; substitution into k>0 uses preserves at least
one descendant. Every lambda is a source or input residual. An input cell
lambda `lambda f.f bit tail` is linear and its body, while that binder
persists, contains only its bound f and normal input data. It cannot erase.
The only erasing binders in the input are F's first and K's second.
Their provenance is unchanged by copying. This proves the three alternatives.

The reviewed dispensability theorem applies to the j source position:
it has no touched or surviving unary residual. Replacing it by Omega is
also justified directly by substitution stability of the j-free target.
This supports tracing *all* lineages. It does not imply that there is one
death event or that the eraser's source encloses the c-producing source.

### 3.2 Kernel-checked statement and exact hypotheses

`Erasure.lean`, namespace `Blc.JErase`, proves:

- `contract_loses_iff`: for every de Bruijn b,a,j,

      occ j (contract b a) < occ j ((lambda.b) a)
        iff occ 0 b = 0 and 0 < occ j a.

- `beta_loss_site`: any full compatible beta step decreasing that count
  exposes an actual one-hole context containing an erasing redex, with
  the correct binder-depth shift on the counted variable.
- `run_loss_step` and `run_erasing_site`: every finite beta reduction from
  positive j count to zero contains such an intermediate erasing site.

The proof uses the exact substitution identity

    occ j (contract b a) = occ (j+1) b + occ 0 b * occ j a.

These theorems quantify over **all terms and all finite beta reductions**.
They are stronger than normal-order existence of an erasing step, but they
do not formalize the labelled provenance classification or unique death of
each individual lineage. Those parts are the handwritten argument above.
No optimal-reader assumption is smuggled into the Lean statement.

### 3.3 Why the proposed prices do not transfer

| Proposed implication | Failure / exact missing hypothesis |
|---|---|
| Source erasure means a binder above needed s/c leaves, hence a 6-bit tax | R64 and R70 erase j in a local source component. A source-ancestor/capture premise is required. |
| Input-F erasure forces a separate j/N operand and w >= 53 | The 165 has w=49; F52 has depth 1 and w=52. F can discard an entire zero continuation while the same dispatch supplies c r. |
| Terminal input-K erasure forces the 164's 18+12 routing and w >= 48 | The 162 has w=46 and erases j at terminal K. Its j is routed into the skip after entering the unary branch. There is no separate source operand with the 164's r j/N contract. |
| One source j selects exactly one of the above for the reader | R50 and beta-normal depth-1 R58 have F and K death events in every unary run. |

If an "absorber" is instead defined *extensionally*, as a binder all of
whose uses are unary-dispensable, the 162's lambda-u is an absorber. But
then this label and terminal-K erasure describe different levels of the
same computation and overlap. A disjoint priced classification would need
an additional rule selecting an ancestor/cut, plus a proof that its source
has the claimed structure. Changing terminology alone does not supply that
proof. This distinction was already visible in hole/REPORT.md: it explicitly
records that the 162's u receives j and is erased by terminal K.

### 3.4 Correct union accounting

Give each literal source node its original-frame cost (2 for lambda or
application, index+2 for non-j variables, 0 for j); call the resulting
additive measure kappa. Keep the single original `4 depth(j)` tax separate.
For the reviewed needed-source cores Z and U, including their ancestor
closure, the exact identity is

    w(R) = kappa(U) + kappa(Z minus U)
                     + kappa(source outside (Z union U)) + 4 depth(j).

Equivalently the first two terms are
`kappa(Z) + kappa(U) - kappa(Z intersection U)`.
All costs here are in the **original lexical frame**. Moving a subterm to
another frame additionally needs the exact capture/index adjustment.

This is an accounting identity, not an assertion that an erasure event has
a positive source cost disjoint from the rest of the reader. Input lambda
nodes cost the reader zero. One source lambda or application can have many
runtime copies. A shared let's cost and each of its outward-reference bits
must be charged once in the union, not once per residual or branch.

For every one-j reader witness, V=A+1, so the direct source check is

    w = 2L + 4A + X + 4d.

| Reader | L | A | X (non-j index sum) | d | w |
|---|---:|---:|---:|---:|---:|
| R50 | 5 | 8 | 8 | 0 | 50 |
| F52 | 5 | 8 | 6 | 1 | 52 |
| R58 | 4 | 9 | 10 | 1 | 58 |
| R64 | 7 | 10 | 6 | 1 | 64 |
| R70 | 9 | 11 | 4 | 1 | 70 |

These are whole-source prices, verified independently by `coord/rd.py` and
Lean's `cost/depth`; no role prices have been added as if they were disjoint.
The exact beta-balance and contraction/hoisting theorems in
`SelfintLocalCost` and `SelfintSourceCost` remain valid. They do not assert
that contraction is cheap or make the semantic roles source-disjoint.

### 3.5 Minimality and depth

All counterexamples satisfy the full reader laws; they do not refute a
classification restricted to a **global** minimum under `(w, lambda count,
depth)`. R58/R64/R70 show that beta-normality and depth 1 alone are
insufficient. R50 and F52 show explicitly how lets transport and duplicate
j without the proposed price consequences.

To exploit minimality one still needs a domination theorem: every unpriced
shared/carrier/local-erasure configuration has a law-preserving replacement
with lower weight, or equal weight and a better stated tie-break. Neither
the residual theorem nor the absence of erasing *source redexes* in a
minimum reader proves it. The source eraser may only be applied after
opening the input, as the beta-normal witnesses demonstrate.

## 4. Remaining proof step and verification record

My read: classifying the *actual death of j* is too coarse to settle w >= 46.
It forgets the expensive question: how the zero run gets that same source
information to its rigid output `r j`. The 162/165 examples already separate
eraser provenance from the relevant routing prices.

A useful next theorem must classify or dominate **source support shared by
zero delivery, unary output, and the erasure genealogy**. It should retain
at least these distinct structural cases:

- a common trailing j with an extensional absorber enclosing the unary arm;
- a zero-only higher-order carrier erased by the first dispatch (165);
- a source-disjoint r j/N handoff (164), or a separate j/N operand (169);
- shared helpers or needed cell-part binders whose residuals cross those roles.

The existing family bounds address the first three only with their actual
shape/capture hypotheses. The fourth cannot be removed by counting runtime
erasure sites. Zcore's anchor/deletion approach is complementary; this lane
did not duplicate it. I have no new smaller construction hidden behind the
counterexamples and no justified global lower bound beyond the live record.

Verification artifacts:

- `Erasure.lean`, `erasure.log`: all four theorems checked; axioms only
  propext, Classical.choice, Quot.sound.
- `Witnesses.lean`, `witnesses.log`: five full all-length reader laws checked;
  axioms propext and Quot.sound. Exact source-price checks use no axioms.
  Beta-normality is checked for R58, R64, R70.
- `probes.py`, `probes.log`: eight explicit readers, zero and unary n=1..8;
  all pass. This is diagnostic confirmation, not the all-n proof.
- `trace.py`, `trace.log`: nine explicit readers at n=1,2,8, retaining source
  and input lambda origins and verifying the j-count balance at every beta
  step; every trace ends at the required normal form.
- `verify.py`, `verification.json`: repeatable cap-enforced verification.
  Lean uses `-j2`; Python checks use one thread. Each final command took
  0.048--0.400 s, and sampled peak RSS including the watchdog stayed below
  450 MB. No cap was hit. No term enumeration was performed.

Only files under `tmp/round4/jerase/` were deliberately written; no library,
tracked documentation, interpreter corpus, or other lane was edited.
