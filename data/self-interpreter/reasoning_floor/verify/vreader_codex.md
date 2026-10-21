# ( •̀_•́ ) Independent adversarial review of the unrestricted reader bound

**Verdict: error in the proof.** The report does not establish the unrestricted
43-bit lower bound or its uniqueness clause. There are false residual and cost
claims, including a concrete 59-bit reader in a subcase claimed to cost at least
64 bits. **I found no reader below 43 bits and no different 43-bit reader.** The
counterexamples below refute proof steps, not the numerical 43-bit conjecture.

Locations refer to `tmp/overnight/reader-proof/REPORT.md`. I did not consult
another model or read the other reviewers' reports. No reader bodies were
enumerated. All constructed terms were chosen by hand.

## 1. Lemma 2.7(ii) is false: different signatures do not imply different origins

**Locations:** lines 513–523; consequently the distinct-node charging rule at
347–351 and the original-syntax decomposition at 335–343 are unsupported.

Copies agree immediately after substitution, up to the necessary shifts. They
need not agree after their enclosing abstractions receive different arguments.
This occurs in ordinary finite higher-order application, without a self-passing
walker. The following 39-bit term is a small counterexample to the proposed
residual invariant:

```text
J = λa b. a b
C = (λf. f (f next cont) s) J
  →* next cont s.
```

Both application nodes in the final result descend from the **one** application
`a b` in `J`. Their signatures are `(next, cont)` and `(next cont, s)`, which
are not beta-equal. The only syntactic redex in `C` has wire delta **0**. Thus
T10's necessary local condition does not make the asserted invariant true.

There is also a counterexample using the exact reader roles, rather than an
unrelated output:

```text
Bcopy =
  (λf.
    s (λb. b (λu r. f r next) (λr. f (f cont r)))
      (f (f s s) s))
  (λa b. a b).
```

This is a **98-bit valid reader**. Replacing each `J U V` by `U V` proves both
laws for all unary lengths. In the variable result, `n_P`, `n_N`, and consumed
application nodes in the skip calculation all have the same original source
node, `a b`. An origin-tagged normalizer confirms this. This reader's only
source redex has delta **+17**, so it has no shrinking source redex either.
Its suffix calculation uses the ordinary equal-index cell chain; there is no
recursive lambda walker to which the exception at line 523 can assign this
sharing.

These examples do not claim to be globally minimum readers. They show that the
residual assertion used to justify the inventory is false, including under
the nonshrinking condition actually obtained from T10. A separate, quantitative
argument must show that sharing these roles cannot fit the improving budget.
Distinct function/argument signatures do not supply that argument.

## 2. A valid reader has an output node from a non-dispatch stream cell

**Locations:** lines 374–377, 482–485, 551–559, and 641–645.

Consider the beta-normal, **52-bit** reader

```text
Bsecond = s (λb. b (λr. r next)
                     (λr. s (λq. cont) (r r r))).
```

For zero it reduces to `R next`. For a variable stream it reduces as follows:

```text
Bsecond[P_n/s]
  →* P_n (λq. cont) (P_{n-1} P_{n-1} P_{n-1})
  →* cont P_{n-1} N.
```

The final `cont P_{n-1}` application is the second application node of the
**inner** occurrence of the stream, inside the variable arm. It is neither a
node of `B` nor a node of the outer dispatch cell. The symbolic first-cell head
reduction stops at the outer `β`, before that inner stream application runs.

Thus this is not shape (α) as specified in §2.4, which requires the *dispatch*
cell's node, and it is not (γ), which requires a source node. Neither selection
node is created, so (β), (β′), and (δ) do not cover it. Lemma 2.6 initially
mentions an arbitrary cell step, but the minimization subsequently drops the
non-dispatch case. “Extras” at 697–702 does not account for a cell step inside
an arm by charging an additional step on the pre-selection head path.

This reader is beta-normal, so deleting a shrinking source redex cannot dispose
of the example. It may well be possible to prove this additional case costs
more than 43; that proof is absent.

## 3. Rebuilt tails can borrow their body nodes from the stream

**Location:** Lemma 2.5(iv), lines 471–477.

When `r=P_m`, including `m=0`,

```text
λh. r h →* λh. h bit_m tail_m = P_m.
```

The source fragment `λh. r h`, with `r` immediately outside `h`, costs **9**
bits: two for its lambda, two for its application, three for `r`, and two for
`h`. Its surviving root lambda is a lambda of `B`, but both application nodes
in its final cell body come from the stream. It does not contain the literal
source construction `λh. h F' P'` charged in the proof, and it does not need the
claimed separate source code for `F'`, `P'`, and their application nodes.

For a complete beta-normal witness, the **53-bit** reader

```text
Brebox = s (λb r. b (r next)
                       (cont (λh. r h) (r r r)))
```

satisfies both laws. The tagged normalizer confirms that its output tail has a
source-origin root lambda and stream-origin body applications.

Replacing this reboxing by `r` would be cheaper on the specified streams, so
this is not itself a route below 43. It does refute the claimed exhaustive
source-syntax description and its ≥16 price. A normal form's visible cell
syntax cannot simply be charged to the original source.

For the same reason, T7's last sentence (213–214) cannot assume that every
reader has an intact surviving `P_{n-1}` copy. In this example its root is
rebuilt. T7's ancestry argument for the copy of `N` that ends bare still holds.

## 4. Shape (α) contains an explicit numerical overcharge

**Locations:** lines 566–570, also the role-carrier assertions at 685–693.

Define

```text
T = s (λb r. b (r next) (r r r))
Bdual = s (λb. b (λu t. t) cont) T.
```

Direct wire accounting gives **|T|=34** and **|Bdual|=59**. Both terms are
beta-normal. For every `n≥1`,

```text
T[cons K R/s] →* R next,
T[P_n/s]     →* N.
```

Consequently `Bdual` satisfies both reader laws. It is exactly the subcase in
lines 566–570: `n_R` lies inside `T`, the outer zero arm is `λu t.t`, the
variable arm is `cont`, and `n_P` is the outer dispatch cell's node. The report
claims **|T|≥39** and **|B|≥64** for this subcase; the witness has 34 and 59.

The failed step is “`T` at depth 0 has no bound variables” followed by separate
charges for a compound R-source and a bit-source/selection. An operand at
depth zero can have **its own** binders. In `T`, the same cell opening supplies
both the bit and the bound tail `r`; these mechanisms cannot be priced as
disjoint compound sources.

The later assertion that every dual-valued operand requires fresh selection
machinery is also false literally: `s F` costs 10 and gives `(R,P_{n-1})`, while
`s s s` costs 10 and gives `(R,N)`. Both identities are already present in the
report. Any intended exceptions need a proved classification, not a general
dominance sentence.

The displayed sum

```text
12 + (2+10) + (13+d) + (4+d) = 41+2d
```

is arithmetically correct. For the literal unshared arrangement with the given
two consumers it yields 43 and the displayed reader. It does **not** repair
the earlier exclusions, origin-sharing assumptions, or placement assumptions
needed to apply that arrangement to every minimum. The 59-bit example does
not contradict the 43-bit lower bound; it contradicts a claimed numerical
sub-bound in its proof.

## 5. The leaf-let and depth assertions are not consequences of T10

**Locations:** Lemma 2.7(i), lines 504–512; forced-depth remark, 525–534.

For a let on `s` at ambient depth `e`, the report's own exact formula gives

```text
Δ = (m−1)e − 6 − f(M),
```

not an always-negative quantity. In particular,

```text
λa b. (λy. y y y y y) s       -- 30 bits
   → λa b. s s s s s         -- 32 bits
```

has `e=2`, `m=5`, `f(M)=0`, and **Δ=+2**. This refutes “negative for `Q=s`
always.” The only source redex is the displayed one.

The assertion that a linear hoist containing `next` needs `fl(Q)≥4` also needs
an independently proved depth bound. For example,

```text
(λy. λa b c d e f g h. y) (next cont)    -- 39 bits
  → λa b c d e f g h. next cont         -- 41 bits
```

has `fl(Q)=2`, `D=8`, `f(M)=0`, and **Δ=+2**. These are not readers, but they
are counterexamples to the local claims invoked to exclude sharing and
hoisting. The improving-reader budget might exclude their relevant uses;
that requires a budget argument before the forced depths can be assumed.

The (γ1) domination lines at 663–670 inherit this problem and the earlier
role-sharing problem. I did not obtain a reader violating the claimed γ1
numerical floor. I also did not find a proof that its finite table exhausts
let/copy realizations once these assumptions are removed.

## 6. Lemma 2.3(c) does not establish the necessary walker structure

**Locations:** lines 422–447; the supporting explanation at 776–792.

Three contractions of one source lambda do not imply a recursive walker. Even
the proposed linear choice of a long stream does not force a cycle in copying.
Let

```text
D = λf t. f (f t),
G = λr. r F,
T_k = (D (D (... (D G) ...))) s,        -- k written copies of D
```

so `D^k G` applies `G` exactly `2^k` times. This is finite function composition,
with no recursive call or self-passing walker. For `k=10`, `T_k` has **196
bits, 88 syntax nodes, and 23 lambdas**. On `P_1023` it returns `N` by 1,024
successive tail projections. Thus the unary length exceeds **both** three
times the node count and three times the bit length. Its syntactic beta
redexes all have positive deltas (2, 20, ..., 164). The tagged normalizer
checked the result in 6,142 beta steps.

This is not a reader for all unary lengths. Its relevance is exact: it refutes
the finite-copying inference used in the proof for the selected long input.
The universal reader laws might force recursion by a different argument, but
one must use them to exclude arbitrarily large finite expansions, then prove
the required receiver/passing structure and charge its original nodes without
the false Lemma 2.7(ii). A threshold `n>3|B|` and three uses of a lambda do not
do that. The claim that every shared top/bottom dispatch needs an extra flag
and an extra test per arm also receives no argument covering general
continuation-passing or higher-order realizations.

I tried an explicit compact self-passing walker:

```text
W = λb r w. b r (r w w),                 |W|=28,
Twalk = (λw. s w w) W,                  |Twalk|=43,
Bwalk = s (λb. b (λu r. r next) cont) Twalk,  |Bwalk|=76.
```

Induction on the stream proves `s W W` skips through its first zero. This
improves the report's 85-bit walker example, but remains well above 43. It
neither proves nor refutes the proposed 24-bit necessary walker charge.

There are two additional equality issues here. The unshared-dispatch estimate
at 442–443 gives only **≥43**, so it does not itself exclude a second 43-bit
reader. And the supporting shared-dispatch sum in Part 3, lines 782–783,

```text
12 + (24−8) + 4 + 3 + 2,
```

is **37**, not 43. The different sum in Part 2 equals 47, but depends on the
unproved extra-flag assertion. The uniqueness conclusion needs its own strict
exclusion of these cases.

## 7. Further local corrections

These are not needed for the verdict above, but matter to the purported
exhaustive inventories.

* **T8, lines 216–222:** the last-cell argument list omits `I`.
  `P_0 I →* K N`, then one further argument yields `N`. Moreover `I` can be
  the residual inner lambda of a stream bit `F`, since `(P_1 K) s →* F s → I`.
  Thus `P_0 ((P_1 K) s) s →* N`, with last-cell handler `I` originating in
  stream material, not in a source lambda. This is a local data counterexample,
  not a uniform reader.
* **§2.1, lines 275–282:** a cell contraction's application need not be a
  source application. Already `S S → S β τ → β β τ τ` contracts the second
  cell at a stream-origin application. `s s` costs 6, not two independent
  4-bit cell steps. Any claim restricted to successful readers needs a reason
  this overlap is impossible in the relevant place; it is not a general
  residual fact.
* **T9, lines 229–230:** the description of unequal-index outcome by parity
  of `|i−j|` is wrong. `P_2 P_1 →* I`, whereas `P_1 P_0 →* N P_0`, although
  both differences are 1. The equal-index recurrence and the conclusion
  that unequal meetings cannot carry the designated bare surviving `N` are
  not refuted by this correction.
* **Lemma 2.3(b), line 416:** literal `K=λa b.a` costs 7 bits, not 6.
  This undercharge is conservative for the claimed lower bound.

## What was checked

I read Parts 1–3 of the report, the handler-bound background, the requested
cheap-tail-bound introduction, the reader toolkit, the actual 165 source,
and the wire-cost Lean module. I reviewed T1–T6's elementary arguments, T7's
ancestry argument for the bare `N`, and the equal-index chain identity; I found
no error in those deductions. I
checked the local minimality implication in T10 and the exact wire formula.
The command

```text
cd lean && lake env lean Blc/SelfintWireCost.lean
```

succeeded. This checks that module using its existing imported dependencies;
it does not formalize the proposed reader theorem or its inventories.

`vreader_codex_checks.py` performs direct beta-normal-form comparisons against
both reader laws, with all ambient variables and suffixes rigid, for zero and
`n=1..64`. It also supplies an independent origin-tagged de Bruijn normalizer
and compares its untagged answers against the repository normalizer. The
universal correctness of the displayed reader witnesses additionally follows
from the short equations above and `P_m P_m X →* N` for every `m≥0`.

The following splices were checked against the repository's complete default
battery on a frozen copy of `target/release/blam`, two workers:

| reader | reader bits | interpreter bits | battery |
|---|---:|---:|---|
| second cell | 52 | 174 | 667 ok, 1 skip, 0 failures |
| rebuilt tail | 53 | 175 | 667 ok, 1 skip, 0 failures |
| dual operand in shape (α) | 59 | 181 | 667 ok, 1 skip, 0 failures |
| shared self-passing walker | 76 | 198 | 667 ok, 1 skip, 0 failures |
| finite copied application | 98 | 220 | 667 ok, 1 skip, 0 failures |

Each battery took about two seconds. These are finite semantic checks, not
lower-bound certificates. The ordinary reader was independently counted at
43 bits with `(L,A,X)=(3,7,7)` and passed the direct-law checks.

Reproducible artifacts, all beside this review:

* `vreader_codex_checks.py`, `.json`, and `.log`: hand-selected terms, costs,
  source-redex deltas, direct laws, and source/stream origin checks.
* `vreader_codex_acyclic.py` and `.json`: the nonrecursive long-prefix check.
* `vreader_codex_battery.py` and `.json`: the frozen-binary battery runner and
  its results. Optional arguments select splice stems.
* `vreader_codex_splice/*.lam`: the five complete interpreters.

The report's conclusion that no improvement can occur under these reader laws
should be withdrawn pending a proof of the missing cases and a valid
origin-sharing/depth accounting argument. The established narrower bounds are
not challenged by this review. Formalizing the current inventory without
changing its assertions would encounter the concrete counterexamples above.
