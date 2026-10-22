# rootlow — exact lambda exposure and exclusion of every linear root let

**Partial result. The entire k+d<=4 branch is not closed.** No reader of
weight at most 45 and no complete interpreter was found. **Every root-linear
minimum reader below 46 is excluded**, using the current established depth
and direct-hole exclusions. The nonlinear profiles remain open; I counted
necessary-source envelopes but did not enumerate their over-cap inventories.

The new bridge has exact kernel-checked prices and an important restriction:
when a literal stream lambda is moved past the root let and its pending
arguments in these low-depth profiles, the single hole moves one lambda
level deeper. A weight-neutral move therefore does not transfer global
minimality. Hand-offs have a general head-reduction/coloured-hole repair
bridge, but its net expansion still needs a semantic upper bound.

Labels: **[L]** kernel-checked; **[C]** computer-checked; **[H]** handwritten.
A minimum always means the global minimum over the full all-unary-length,
one-source-hole laws, ordered by **(weight, source lambda count, hole depth)**.
Finite-probe minimality is never substituted for this order.

## 1. Complete interpreters built

None. No splice, interpreter battery or polish was called for. There is no
new interpreter size or battery line and no sub-162 claim.

The actual reader checker accepts the existing 162 and 165 readers at
weights 46 and 49 on zero and unary lengths 1 through 8 (`controls.json`).
These are implementation controls, not new all-n proofs.

## 2. Exact identities and the bridge

### 2.1 The order bridge [L]

`Bridge.lean` defines `Minimum3` with all three coordinates. Its `transport`
theorem proves that a full-law, one-hole replacement no larger in that order
is itself a global minimum, with all three coordinates equal. The theorem
`exposure_floor` then transfers the lambda-rooted minimum floor to the source.
**The existing lambda-rooted floor is an explicit hypothesis `LambdaFloor`**;
this lane does not claim to formalize the external inventories proving it.

The hypotheses include the endpoint's scope, laws (transported through a
checked beta join), one hole, and the complete lexicographic comparison.
Weight alone is insufficient at a tie.

### 2.2 One leading lambda and arbitrary pending arguments [L]

For hygienic swapping/shifting,

    (lambda x s. M) A =beta lambda s. (lambda x. M') A'

has exact weight change

    Delta = F(A) + occ_s(M) - occ_x(M),

where `F(A)=#c(A)+4#j(A)` at the root. It preserves source lambda count and
increases the hole-depth sum by exactly `#j(A)`. This extends the existing
`SelfintLambdaSink.sink_price` with exact lambda/depth accounting. New
`sink_order` proves that the move is non-increasing precisely when

    Delta < 0,  or  Delta = 0 and j is absent from A.

Applying this local sink under a pending spine has the same price, but its
result is still application-rooted. Pending operands cannot simply be ignored.
`pending_sink_price` states this exact identity.

### 2.3 Exposing the actual stream lambda past a whole prefix [H,L]

For `t` pending operands, consider

    R = (lambda x y1 ... yt s. M) A C1 ... Ct.

Move `s` to the outermost position, keeping every definition once:

    R' = lambda s. (lambda x y1 ... yt. M') A' C1' ... Ct'.

Primes are hygienic binder permutation and shifts. Both expressions reduce,
after application to an arbitrary `S`, to the same simultaneous substitution
`M[A/x,C1/y1,...,Ct/yt,S/s]`. This proves the beta identity [H], for arbitrary
pieces, including redexes and divergence. No source normalization is assumed.

Put `n=t+1`, `a_s=occ_s(M)`, and
`U=occ_x(M)+sum_i occ_yi(M)`. The exact change is

    Delta = F(A) + sum_i F(Ci) + n*a_s - U.

Source lambda count is unchanged. The hole-depth change is

    #j(A) + sum_i #j(Ci).

`PrefixPrice.lean::prefix_price`, `prefix_lambdas`, and `prefix_depth` prove
these syntax identities for arbitrary terms and lists, even before imposing
the semantic arity condition `n=length(Cs)+1`. The binder permutation and its
price are defined and proved structurally, not checked on a finite sample.

**Consequence for the assigned profiles.** The prefix over M contains at
least two lambdas, whereas a remaining minimum's hole has depth 0 or 1.
Thus j lies in A or the pending operands. Exposure increases its depth by
exactly one. `prefix_order_external_hole` proves that the complete order is
non-increasing **if and only if Delta<0**. Equal weight does not reach an
excluded lambda-rooted minimum. This is the concrete obstruction to using
the new lambda-rooted exclusion as a blanket root-let exclusion.

### 2.4 Pulling independent pending operands [existing L; new wrapper L]

If the suffix B_l,...,B_k is independent of x, then

    (lambda x. h B1 ... Bk) A Cvec
      =beta (lambda x. h B1 ... B_(l-1)) A B_l_down ... B_k_down Cvec.

The pull saves the suffix's captured leaves, counting j four times. In the
root lane's depth-one-hole case this is exactly `4 + #c(suffix)`.
`Bridge.pull_price` retains arbitrary pending Cvec and wraps the existing
`SelfintNestedLets.push_price`; the shift in its input explicitly states
freshness. This can move a hole out of a body operand without copying A.
It does not by itself expose a stream lambda.

### 2.5 Arbitrary hand-offs and copied holes [H; exact prices L]

A law reader has a finite weak-head reduction to its first leading lambda:
otherwise applying a stream could not reach the required rigid zero head r.
This assertion concerns head exposure, not a normal form of the whole reader.
Take such an actual trace from R to `T=lambda s.P`, retaining its possibly
multiple residual j leaves. Each contextual beta step has the exact extended
weight change

    S_i = (m-1) W_e(A) + (F_e(A)-1) M - 4 - 2m - T_e(B),

where `F_e` counts outer captures with j four times, M is the occurrence-depth
sum of the contracted binder, and `T_e(B)` counts its other outer captures.
`Bridge.contextual_step_price` kernel-checks the formula at every source
position, without a one-hole hypothesis on intermediate terms.

Colour T's j leaves separately. The zero reduction ends in `r j_i` for one
colour i; every unary reduction has no coloured leaf in its output. Beta
steps are stable under replacement of these rigid colours. Replacing every
colour other than i by c therefore replays both laws, at every unary length,
and leaves exactly one source j [H]. This argument does not require T to be
beta-normal. It is the rootnf colouring argument applied at the first lambda.

Dropping a j at absolute depth h saves exactly `3h-2`: its extended price is
4h, versus h+2 for c. `Repair`, `repair_price` and `repaired_endpoint_price`
formalize the mask and this exact price. If E is the sum of those savings,
the repaired lambda-rooted endpoint has weight change

    Delta_total = sum_i S_i - E,

and the same source lambda count as T. The lambda-count change along the
head trace is exactly the sum of `(m-1)*L(A)-1`, by the existing checked
`lamCount_subst` identity and context additivity. It excludes a minimum when this is
negative, or at zero when its lambda/depth coordinates do not increase.
`handoff_floor` formalizes the endpoint order/price composition with explicit
join and one-hole premises. **The semantic head-exposure/colour-replay argument
is handwritten; a universal bound forcing Delta_total<=0 is not proved.**

## 3. Complete linear-root exclusion

### 3.1 Scalar reduction [H, with L arithmetic and prices]

Write `R=(lambda x.B) A Cvec`, with exactly one source x. The established
root-flat result permits assuming A contains a lambda: its lambda-free
alternative is literal j, already excluded. The established source ownership
bound gives three other owned leaves, at least two other live binders, and
another nonlinear binder.

Let f=#c(A), b=#c(B), g=#c(Cvec), M the depth of the unique x in B, L the
source lambda count, V the leaf count and T the non-j index tax. Necessarily

    L >= M+2,   V >= 5+f+b+g,   T >= M+b,
    w = 2L+4V-4+T+4d <= 45.

If A is j-free, the exact linear price and lambda tie-break give

    (f-1)M >= 7+b+4#j(B).

`Bridge.linear_nohole_scalar` proves that only these two profiles survive:

| f | M | d | b | L | V | T |
|---:|---:|---:|---:|---:|---:|---:|
| 3 | 4 | 0 | 0 | 6 | 8 | 4 or 5 |
| 4 | 3 | 0 | 0 | 5 | 9 | 3 |

They force all c into A, j into the pending forest, and exactly one other
2-use binder and one other 1-use binder. The remaining binders are vacuous.

If A carries j, it has source depth d=0 or 1, and

    (f+3)M >= 7+b,
    Delta_contract_hoist = f(M+1)+g-3d.

Contraction followed by hoisting preserves source lambda count. At d=1 it
lowers hole depth, so minimality requires `f(M+1)+g>=4`. At d=0, the exceptional
case f=g=0 would tie all three coordinates and reach the already excluded
root direct-hole family. Thus `f+g>=1`. `LinearPrices` checks both conclusions;
`root_linear_zero_charge` explicitly assumes the established direct-hole floor.
The arithmetic leaves 169 scalar rows at d=1 and 1,143 at d=0.

### 3.2 Every-source filters and inventory completeness [H,C; prices L]

The coefficient grammar records each outer binder's exact uses and depth
moment, every source binder's use multiplicity, c/j counts, exact index tax,
literal leading-lambda multiplicities, and the local sinking charge. Each
variable, lambda, application and pending-forest constructor partitions those
counts exactly. No normality or argument-disjointness restriction is used.
A feature-directed constructor then emits exactly each positive coefficient;
every block and complete source digest is checked.

Every local redex obeys the existing exact beta-price test. Erasing redexes
are forbidden. Linear contraction must increase weight; a hole-free nonlinear
contraction cannot decrease weight or remove a lambda at a tie. Nonlinear
hole-copying contractions are not incorrectly subjected to that one-hole
rule. The depth-one cells also impose the exact contextual contract-and-hoist
charge, with its lambda/depth tie rule. `contextual_hoist_price` and
`contextual_hoist_positive` prove that rule for arbitrary source contexts.
Let sinking rejects a positive capture saving while keeping the argument once.

A literal B prefix of h lambdas cannot have h>t+1, where t is the number of
pending operands: the zero probe would leave a lambda. At h=t+1 its last
binder receives the stream and must occur. These cuts require no normalization
of B. At depth zero, the already established direct-j-argument exclusion and
rigid j/c shielding cuts apply at every source position.

These constructor and filter arguments prove completeness by hand. The
inventory itself is computer-checked, **not a Lean-certified enumerator**.

### 3.3 Results

| Cell | Sources | Definitive finite failures | Lean-refuted exceptions | Unresolved |
|---|---:|---:|---:|---:|
| A j-free | 1,236 | 1,236 | 0 | 0 |
| j in A, d=0 | 5,449 | 5,364 | 85 | 0 |
| j in A, d=1, f=1 | 68,191 | 68,168 | 23 | 0 |
| j in A, d=1, f=2 | 41,624 | 41,614 | 10 | 0 |
| j in A, d=1, f=3 | 7,892 | 7,892 | 0 | 0 |
| j in A, d=1, f=4 | 11,260 | 11,260 | 0 | 0 |
| **Total** | **135,652** | **135,534** | **118** | **0** |

Only 67 finite refutations need the length-one unary probe; the rest fail
zero. All 118 resource/normalizer exceptions have individual original-source
Lean theorems `not Reader r`: 87 use a checked head-prefix cycle and 31 an
incompatible persistent rigid head. They are not classified by an unverified
normalizer outcome. Additionally, all 1,236 j-free-A cases have individual
Lean refutations. `linear_manifest.json` maps these **1,354 theorems** to
source hashes. Their axioms are only propext and Quot.sound; general price
lemmas additionally use Classical.choice. There is no sorry or new axiom.

The source claim is therefore: **under the current established structural,
depth and direct-hole results, no global minimum below 46 has a linear first
root let**, with arbitrary internal redexes and pending arguments.

### 3.4 Validation and resources

`grammar_audit.json` compares the constructor grammar against independent
unfiltered generation through component cost 12: 497 raw terms, with all
273 retained terms matching exactly. Its local predicate prices actual
contracta rather than reusing the coefficient formula. This is a small
implementation audit, not the completeness proof.

Every source check is below 100,000 terms. The largest is 68,191 sources;
checks take at most 2.7 seconds and 507 MB. The nine final Lean files each
compile at -j2, under 5 seconds and 600 MB. Per-file source hashes, resource
results and successful axiom audits are recorded in `verification.json`.
No cargo build, source sweep over a nonlinear envelope, or computation outside
the caps was run. All writes are in this lane; no tracked source was changed
and no commit, delegation or consult-back was performed.

Reproduction from the repository root, with PYTHONDONTWRITEBYTECODE=1:

    python tmp/round4/rootlow/scalars.py
    python tmp/round4/rootlow/filtered.py
    python tmp/round4/rootlow/check_linear.py
    python tmp/round4/rootlow/linear_zero_scalars.py
    python tmp/round4/rootlow/linear_zero_count.py
    python tmp/round4/rootlow/check_zero.py
    python tmp/round4/rootlow/linear_hole_scalars.py
    python tmp/round4/rootlow/hole_count.py
    python tmp/round4/rootlow/check_hole.py 1   # repeat for 2, 3, 4
    python tmp/round4/rootlow/certify_linear.py
    python tmp/round4/rootlow/export_linear.py
    python tmp/round4/rootlow/controls.py
    python tmp/round4/rootlow/audit_grammar.py
    python tmp/round4/rootlow/run_final.py
    python tmp/round4/rootlow/validate.py

## 4. Remaining boundary and next proof step

The residual minimum-reader profiles are **k>=2**, d in {0,1}, k+d<=4.
`low_count.py` computes the following necessary-source envelopes using exact
histograms, source prices, the root pull condition, rigid shielding, the
literal-prefix exposure charge and the prefix/stream-use cuts:

| k | d | Count-only envelope |
|---:|---:|---:|
| 4 | 0 | 319,867 |
| 3 | 1 | 461,751 |
| 3 | 0 | 1,475,233 |
| 2 | 1 | 1,396,400 |
| 2 | 0 | 4,305,944 |

These are **not checked readers, not a literal survivor catalogue, and not
completed exclusions**. No lambda source from these envelopes was constructed
or probed. Some already excluded families remain in them, so they are upper
envelopes of unresolved work. The files `lowKdD_count.json` expose each source
location/head/pending-arity cell and its weight/lambda-count distribution.
Counts took at most 3.0 seconds and 411 MB. Their grammar is a compact priced
boundary, not a workaround for the source-check cap.

The general bridge identifies the missing theorem more precisely: bound the
pre-stream head expansion after subtracting the exact cost of discarded j
copies, while tracking which source binder receives the stream. At zero net
weight, either save a source lambda or keep the retained hole no deeper.
The literal-prefix bridge alone cannot do this at low depth. The root lane's
counterexample to unpriced hand-off contraction still applies: both invoker
and handed-off value can remain live.

My next choice would be a symbolic, source-sharing control-flow proof for the
x-headed short-chain cases, using the new endpoint charge as its invariant.
Those cases dominate the count-only envelopes. Increasing normalization fuel,
assuming a one-hole head reduct, or treating a weight tie as a minimum would
not close the gap. The 46-bit reader bound and 162 optimality remain open.
