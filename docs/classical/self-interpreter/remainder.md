# Exact syntactic remainder extraction

An exact remainder extractor discards one complete BLC source encoding and
returns its untouched suffix:

```
R (stream(M,N)) →* N.
```

The source `M` may be open or divergent, and `N` may be any lambda term.
This task recognizes syntax; it does not evaluate the encoded source.
It is one of the independent projections supplied by a continuation-headed
self-interpreter in `head-decomposition.md`.

Codex's construction `rem70` satisfies this contract in 70 bits. Its
named source and exact wire are
`data/self-interpreter/machines/rem70.lam` and `rem70.blc`.
This is an upper bound, not an optimality result for remainder extraction.
The term contains a beta redex, so it does not give this upper bound for
the beta-normal fragment. Every exact extractor on closed sources has at
least 27 bits (below), so the minimum lies between 27 and 70.

## Construction

The input stream activates a shared context that passes itself to its
recursive calls:

```
Q = λt u d.t u (u d d) d d,
D = λb r.r (b Q r),
P(s) = s D D,
R = λs.(λd.s d d) D.
```

Here `P(s)` is notation for the displayed term, not an extra source
binding. The actual finite source is

```
λs.(λd.s d d) (λb r.r (b (λt u d.t u (u d d) d d) r)).
```

The bit polarity is `0=K=λa b.a`, `1=F=λa b.b`. A stream cell
`cons b r` reduces `P(cons b r)` to `D b r D`. For a variable's
first bit, `b=F`, the context selects

```
D F r D →* r r D.
```

The immediate tail is `r=1ⁱ0 ++ N`. The existing unary-skip identity
`r r →* λ_.N` erases the supplied context and returns `N`. Thus the
same copy of `D` that supplies recursion in the constructor branch is
the variable branch's discarded skip operand.

For a constructor's first bit, `b=K`, the context selects

```
D K r D →* r Q D.
```

The second tag and the remaining stream enter `Q` before the pending
context `D`, keeping its four bound occurrences innermost. They give

```
P(cons K (cons K u)) →* u D D       = P(u),
P(cons K (cons F u)) →* (u D D) D D = P(P(u)).
```

An abstraction discards one recursively encoded body. An application
discards its first child and then its second child. Uniformity in the
suffix permits the second child's entire encoding to be the first
child's suffix. The reader `Q` costs 36 bits and the whole context `D`
costs 53; the surrounding binders and applications cost 17. The complete
source has `L=7`, `A=12`, and `X=6`, so `2L + 4A + 2 + X = 70`.

## Kernel proof and fixed checks

`Blc.SelfintRemainder.rem70_contract` proves

```
∀ M N, Betas (rem70 (streamOf (blcCode M) N)) N.
```

The proof checks five symbolic head-reduction clauses: the public
adapter, the first-bit variable and constructor branches, and the two
second-bit branches. The first-bit clauses also use two Boolean
reductions inside the selected argument to `r`. It lifts the clauses to
arbitrary terms with the existing substitution theorem, then uses
structural induction on `M`. The
variable case uses the unary skip theorem and its final erasing beta
step. The application case reduces the first parse under two application
contexts before the second parse. The proof imposes no source closedness,
normality, or suffix restriction.

The kernel also checks closedness, the literal 70-bit length, and the
exact wire. `tools/self-interpreter/theory/remainder.py` pins the named
source to that wire and replays those five head clauses and the two fixed
Boolean argument clauses. `data/self-interpreter/theory/remainder.json`
records those checks.
No source census or candidate search is involved.

This construction separates the remainder task from value reconstruction
without pricing them as independent modules in arbitrary interpreters.
A source that is itself continuation-headed has disjoint value and
remainder payloads; a smaller term may instead share code before reaching
that head form, or fuse both tasks in a stream-headed handler.

## Two nonlinear binders are necessary

`Blc.SelfintZero.remainder_two_nonlinear` proves that every closed exact
remainder extractor contains at least two nonlinear binders. The stronger
`remainder_body_two_nonlinear` counts only the interior of an explicit
`λs.B` interface: if `B` has no free variables except `s` and

```
B[s := stream(M,N)] =β N
```

for every closed source `M` and every closed suffix `N`, then `B` itself
contains at least two nonlinear binders. The outer stream binder does not
count toward this bound. Beta-join correctness suffices; directed reduction
to the suffix is not assumed. The proof uses only closed beta-normal sources
of the form `λⁿ.I` and the single divergent suffix `Ω`.

The mechanism is a labelled infinite zero stream. The extended syntax keeps
program lambdas explicit and introduces two affine data constants with rules

```
K A B → A,
Zᵢ A  → A K Zᵢ₊₁.
```

The label records how many zero cells have been exposed along that stream
occurrence. It has no control effect. Treat each program lambda and variable
as an opaque head during a data phase. Canonical data values are `K`, `Zᵢ`,
`K V`, and opaque-headed spines with canonical arguments. Application of two
canonical values has a finite closed table:

| Function and argument | Canonical result |
| --- | --- |
| `K V` | `K V` |
| `(K U) V` | `U` |
| `(h A⃗) V` | `h A⃗ V` |
| `Zᵢ K` | `K` |
| `Zᵢ Zⱼ` | `K Zᵢ₊₁` |
| `Zᵢ (K K)` | `K Zᵢ₊₁` |
| `Zᵢ (K Zⱼ)` | `K Zⱼ₊₁` |
| `Zᵢ (K (K A))` | `A` |
| `Zᵢ (K (h A⃗))` | `h A⃗ Zᵢ₊₁` |
| `Zᵢ (h A⃗)` | `h A⃗ K Zᵢ₊₁` |

Here `h` is opaque. The first row records formation of a partial application,
not a reduction. Each other row is justified by a fixed finite reduction.
Bottom-up evaluation of the finite application tree therefore completes a
data phase. It neither copies program lambdas nor increases the number of
nonlinear program binders.

For a closed extended term, the canonical result either denotes a lambda
(`K`, `Zᵢ`, `K V`, or an unapplied program lambda), or exposes a program
beta redex on the global function spine. An affine program contraction
strictly decreases the number of program lambdas. If there is at most one
nonlinear program binder, contracting it leaves entirely affine program
code. Alternating data phases and these head contractions must therefore
terminate at a lambda-like result. No reduction is performed underneath a
program lambda: allowing that would invalidate the nonlinear-binder
accounting by moving nonlinearity to an enclosing binder.

The simulation is finite and uniform in the suffix. For any finite extended
trace, choose `m` larger than every stream label it demands and interpret
`Zᵢ` as `m−i` zero cells followed by an arbitrary closed tail `T`. Each
extended step becomes an ordinary finite beta reduction. The terminal
lambda-like result becomes an actual lambda. Choose an even `m=2n` and
`T=stream(I,Ω)`. The initial input is exactly `stream(λⁿ.I,Ω)`, so a putative
extractor with at most one nonlinear program binder reduces to a lambda.
Correctness also makes it beta-join `Ω`. Confluence makes this impossible:
every beta reduct of `Ω` is `Ω`, whereas every reduct of a lambda remains
a lambda.

`Blc/SelfintZero.lean` mechanizes the application table, both binder-count
invariants, termination, labelled simulation, and the contradiction.
Its two public lower-bound theorems use only `propext` and `Quot.sound`,
with no custom axioms or admitted proofs. This establishes a structural
obstruction, not a sharp bit-length lower bound for remainder extraction
or an additive lower bound for arbitrary self-interpreters.


### The two nonlinear binders lie in incomparable branches

`Blc/SelfintRemainderChain.lean`, Codex's proof, establishes
`remainder_not_chain` and
`literal_remainder_body_not_chain`. Hypotheses are closedness and exact
closed-source/closed-suffix beta joinability. The latter theorem puts the
incomparable pair inside the body of a literal one-lambda interface.

The interpreter's Omega-output argument (`structural-bounds.md`) cannot
be reused: putting Omega in an extractor's suffix puts its two nonlinear
binders in the input already. This proof instead extends the labelled-zero argument.

Use the existing extended syntax Q with program lambdas and affine data
K,Z_i. Define ChainQ by the existing `Chain` predicate on its binder-count
erasure. All extended steps preserve ChainQ and preserve affineness when
the initial term is affine. Data phases normalize finitely and do not
increase either nonlinear-binder count or program-lambda count.

At a global program head contraction:

* An affine binder decreases program-lambda count and does not increase
  nonlinear count.
* A nonlinear binder, by the chain property, has an affine argument.
  Its contraction therefore decreases nonlinear count by one, regardless
  of how many affine program lambdas get copied.

The lexicographic pair `(nonlinear count, program-lambda count)` decreases
between completed data phases. Thus every closed chain-shaped extended
term reaches a lambda-like answer. This permits arbitrarily many nested
nonlinear binders; it is stronger than assuming their count at most one.

Simulate the resulting finite trace of R Z0 on a sufficiently long even
zero prefix ending in `stream(I,Omega)`. It is the quotation of a closed
lambda tower followed by Omega. The trace produces an outer lambda,
whereas correctness says it beta-joins Omega. Confluence contradicts this:
all reducts of an outer lambda remain lambdas, and Omega's only reduct is
itself. Hence R is not chain-shaped.

Lean checks the preservation lemmas, lexicographic termination, finite
simulation, and contradiction. Both theorems use only `propext` and `Quot.sound`; there are no admitted
proofs.

## Source code must grow on a head trace

**Handwritten theorem.** Let `R` be closed and suppose

```
R (stream(M,N)) =β N
```

for every closed source `M` and every closed suffix `N`. Mark precisely the
lambdas originally belonging to `R`, and propagate those marks through beta
reduction. There is a bound `B` such that, for every `n≥B` and every closed
suffix `N`, ordinary deterministic weak-head evaluation of

```
R (stream(λⁿ.I,N))
```

contains a contraction that strictly increases the number of marked
lambdas. Weak-head evaluation here follows the global function spine and
stops at an outer lambda or a rigid variable head. The theorem concerns this
specific evaluation strategy; it does not assert growth on every successful
beta trace.

Codex's argument below has independent written review and a complete Lean
proof, including the transfer to ordinary lambda terms with residual-origin
colors. `SelfintGrowthColored.remainder_grows_on_towers` is the final
valid-source theorem. `SelfintGrowth.remainder_execution_grows_after`
also proves that growth events occur arbitrarily far along the
infinite-zero execution; a finite initial expansion cannot supply a
permanently nongrowing reader. In particular, this is stronger than the preceding
kernel-checked two-nonlinear-binder theorem: a nonlinear contraction can
recycle code without increasing its count, as `Δ Δ → Δ Δ` demonstrates.
There is no numerical bound on `n`, on the time of the growth step, or on
an extractor's wire length.

### Head contractions cannot continue after normalization

Use the following head-clock fact. If the deterministic weak-head trace of
`t` terminates after `h` contractions, every beta reduct `u` of `t` has
weak-head length at most `h`. A global weak-head contraction decreases
that length by exactly one.

To prove the first assertion, write a nonterminal term as

```
(λx.B) A A₂ … Aₖ.
```

A beta contraction other than the displayed head contraction lies inside
`B`, `A`, or one of the later arguments. Taking it first leaves the same
head lambda and application. After one head contraction, the result is
reachable from the original head reduct by contracting the finitely many
residuals of that other contraction. Strong induction on `h`, with an inner
induction on the length of an arbitrary beta trace, proves the assertion.
The base case holds because beta reduction preserves an outer lambda or a
rigid variable head. Consequently a weak-head-normalizing term cannot
admit infinitely many global head contractions, even with arbitrary beta
contractions between them.

`Blc/WeakHeadClock.lean` mechanizes this supporting fact. Its
`count_reduct` theorem proves monotonicity under arbitrary beta reduction,
and `interleaved_bound` bounds any selected head contractions interspersed
with unrestricted beta steps by the initial finite head clock. The
`SelfintGrowth` modules supply the data-flow and finite-transient arguments.

We will use both suffixes `Ω` and `I`. The former prevents the infinite-zero
execution from terminating. The latter makes a finite-prefix execution
weak-head normalizing and supplies the eventual contradiction.

### Comparing the head trace with data normalization

Use the extended constants `K,Zᵢ` and their data rules from the preceding
proof, with every explicit lambda representing a marked program lambda.
Start the extended weak-head execution at `R Z₀`.

This execution cannot terminate. A closed extended weak-head answer is a
program lambda, `K`, `K V`, or `Zᵢ`. Any finite computation to such an answer
can be simulated on sufficiently long finite zero prefixes, where the
answer becomes an actual outer lambda. Choose an even prefix length `2n`
and tail `stream(I,Ω)`. The input is `stream(λⁿ.I,Ω)`. Correctness makes its
result beta-join `Ω`, but a lambda cannot beta-join `Ω`: the latter's only
beta reduct is itself, and beta reduction preserves an outer lambda.

The data rules admit a finite full normalizer. Recursively normalize the
bodies of program lambdas, treat those lambdas and free variables as opaque
heads, and evaluate each application with the displayed finite table. Write
`B(t)` for this full data normal form. These are only data contractions
under a program lambda; no program contraction is performed there. The
normalizer is invariant under every data step, and data reduction commutes
with substitution up to this normal form. These statements follow directly
from the application table and its reduction traces. Data reduction never
duplicates a program lambda or a variable occurrence.

In fact every data-reduction order terminates. Assign each application-table
case its exact contraction count, from zero through five, and let `cost(t)`
be the total cost of the recursive full normalizer. A K contraction removes
the erased operand's cost plus one. A Z contraction removes exactly one:
the table cost equals one plus the costs of its two new applications.
Under a context, the normal values supplied to the surrounding table calls
are invariant, so the same strict decrease remains. Every data step
therefore decreases the natural number `cost(t)`, even under program
lambdas. In particular, an infinite weak-head execution cannot consist
eventually of data steps alone. `SelfintGrowthHead` checks this cost argument.

Now suppose, for contradiction, that the infinite-zero head execution has
no growth after some finite position. Discard that finite prefix for the
counter argument, retaining its actual head trace for the later finite
realization. The remaining infinitely many program head contractions
induce an auxiliary execution on full data normal forms.
If an actual program step contracts a binder with `k` occurrences and an
argument with `a` program lambdas, the count changes by

```
(k−1)a − 1.
```

In the data normal form, the corresponding binder and argument have
`k′≤k` occurrences and `a′≤a` program lambdas. The corresponding global
program head contraction still exists. Data normalization of its result
is `B(u)`, where `u` is the actual reduct: normalize the body and argument,
use stability of data reduction under substitution, then use uniqueness
of the data normal form. If `(k−1)a≤1`, then `(k′−1)a′≤1` as well; when
`k′=0` the new contraction is strictly decreasing. Subsequent data
normalization can only decrease the count further. Actual data steps do
not change `B(t)`.

Thus the auxiliary execution has infinitely many global program head
contractions and a nonincreasing program-lambda count. After a finite
prefix that natural-number count is constant. Every subsequent program
contraction has exactly

```
k=2,  a=1.
```

Every individual data step in this phase also preserves the count. In
particular, no `K` or Scott projection can erase a program-bearing argument.

### The finite transient in a constant-count phase

Call a program lambda flat when it is closed in isolation and its body
contains no program lambda. Every copied argument contains exactly one
program lambda and is closed, because the contraction is on the global
head of a closed term. Its sole lambda is therefore flat.

Count all nonflat program lambdas. Substitution preserves every existing
closed flat lambda and copies no nonflat lambda from a closed one-lambda
operand. Data reduction also preserves flatness. This count is thus
nonincreasing, and strictly decreases whenever the head contractor is
nonflat. After finitely many further steps, every head contractor is flat.

The surviving flat templates have bodies already in full data normal form.
Their bodies cannot change: outside substitution fixes a closed term,
there is no internal program lambda or data redex, and contracting a
template's own binder consumes it. The finite-transient assertion needs
neither a label on every original binder nor an inventory of templates.

Every closed data-normal value with exactly one program lambda has one of
the forms

```
Kⁿ D,
Kⁿ(D A₁ … Aₖ),  k≥1,
```

where `D` is closed and flat and all `Aᵢ` are closed and program-free.
Here `Kⁿ V` means `n` nested constant-function wrappers around `V`.

In the second form, mark the occurrence of `D` as blocked. More precisely,
a block is a closed connected subterm `D A₁` with `A₁` program-free. Do not
mark an application to an open outer-bound variable under an old lambda;
that variable could later acquire a program-bearing argument.

A blocked occurrence cannot lose its first argument without contracting
`D` or erasing the whole occurrence. Outside substitution preserves the
closed connected subterm. Data rules can move it, wrap it, or append
arguments, but cannot remove that first argument. Contracting `D` with its
program-free first argument strictly decreases the program-lambda count;
erasing it does so as well. Neither is possible in this phase. The mark is
therefore permanent, including when the blocked subterm is copied.

Count blocked lambda occurrences. This count is nondecreasing and bounded
by the constant total program-lambda count. Copying a blocked one-lambda
operand consumes an unblocked head lambda and creates two blocked copies
in place of the previous one, increasing the blocked count by one. Marking
a new closed block also increases it. After finitely many further steps,
there are no blocked-operand copies and no new blocks.

At the end of this finite transient every head contractor is a closed flat
template, and every copied argument has form `Kⁿ D`. Nonflat or blocked
lambdas may remain farther down the pending spine, but cannot become the
active contractor or copied operand.

### The stable transition does not carry an advancing tail

Consider a stable contraction whose flat contractor is `C=λx.A` and whose
argument is `Kⁿ D`. The application-only body `A` contains exactly two
occurrences of `x`. Its substitution instance therefore contains exactly
two copies of `D`, fixed data syntax from `A`, and `n` wrappers around each
copy. It contains no other program lambda.

Data normalization preserves both copies. Every closed program-bearing
data-normal value is a wrapper chain around a program-headed spine, so
the normalized substituted body has form

```
Kᵐ(D V₁ … Vᵣ).
```

The head `D` itself has no program lambda in its body, so the other copy
must occur in one of the `Vᵢ`; in particular `r≥1`. The first argument
`V₁` cannot be program-free, since that would create a new closed block.
Thus `V₁` contains the other copy of `D`. It cannot be a blocked one-lambda
value, since the next head contraction would copy that blocked operand.
Therefore `V₁=Kᑫ D`, and every later `Vᵢ` is program-free.

Applying the normalized body to the previous pending spine erases exactly
the arguments consumed by its `m` wrappers. Those arguments must be
program-free. If there were too few arguments, the execution would stop at
a partial constant function, contrary to its infinitude. Once the head is
exposed, the state is

```
D (Kᑫ D) (new program-free arguments) (unconsumed old spine).
```

After this single transition the active template is `D` forever. Its
wrapper counter may grow without bound. The old pending arguments can
only be erased by wrappers or remain after the internally supplied
recursive argument; they never become the argument substituted into a new
`D` body.

The direct interaction with an advancing zero cell makes this restriction
explicit:

```
Zᵢ D       →* D K Zᵢ₊₁,        a new block;
Zᵢ (K D)   →* D Zᵢ₊₁,          a new block;
Zᵢ (Kⁿ D)  →* Kⁿ⁻² D, n≥2,    the advancing tail is discarded.
```

A zero cell can instead act on a two-code value such as `D(KᑫD)…`,
appending `K,Zᵢ₊₁` after its recursive argument. This only pushes
program-free values onto the pending spine. It does not transfer a new
tail into either template.

### A uniform label bound, independent of the wrappers

Write the stabilized template as `D=λx.A`. Evaluate its fixed finite body
`A`, treating the canonical value `Kᑫ D` substituted for `x` as one leaf.
Every data application-table call takes at most five K/Z contractions,
and every contraction increases the largest label by at most one.

The recursive evaluation follows the fixed syntax of `A`. The substituted
leaf may have arbitrarily many `K` wrappers, but it is already canonical
and needs no normalization step. The copies of `D` also have their fixed,
already-normalized bodies. If `L₀` bounds the labels in `A,D`, every
intermediate label in this chosen body-normalization trace is at most
`L₀ + 5 apps(A)`. The bound is independent of the wrapper counter and
includes labels subsequently erased by a data contraction.

Every newly pushed program-free value satisfies that bound. The old
pending spine is finite at the start of the stable phase and already data
normal. Its values are only retained or erased; they are never evaluated
as a new state or substituted into `D`. Enlarge the bound to cover those
values and every label in the finite transient. There is therefore one
finite `L` bounding all labels used in the entire infinite auxiliary
execution, despite its possibly unbounded wrappers and pending spine.

### Returning to a finite valid source

Choose even `2n>L` and interpret `Zᵢ` as the corresponding tail of

```
zeros₂ₙ (stream(I,I)) = stream(λⁿ.I,I).
```

Every data and program step of the entire infinite auxiliary execution
is reproduced by ordinary beta reduction. Every program head contraction
remains a global ordinary head contraction. We obtain infinitely many head
contractions interspersed with finite data reductions from a reduct of
`R(stream(λⁿ.I,I))`.

Exact remainder correctness makes this term beta-join normal `I`, hence
normalize to `I` and have a finite weak-head clock. The head-clock fact
rules out the displayed infinite execution. This contradicts the assumed
eventual absence of growth in the infinite-zero head trace.

The infinite-zero ordinary head trace must therefore contain strict
program-lambda growth steps arbitrarily far along the execution. Each
such step occurs in a finite trace prefix. Simulate that prefix on every
sufficiently long even finite zero prefix, with tail `stream(I,N)` for
any closed `N`. Mark the original `R` lambdas red and the entire input
blue. The colored interpretation commutes with substitution, every data
head becomes one or two blue ordinary head contractions, and every
program head becomes one red ordinary head contraction. The red counts
agree exactly with the extended program-lambda counts. Erasing colors
gives the actual deterministic ordinary weak-head trace, proving the
valid-source statement without counting any input lambda as program code.

At a growth step, either a binary binder copies an argument containing at
least two program lambdas, or a binder with at least three occurrences
copies an argument containing program code. Remainder extraction therefore
needs an actual increase of code during some head computation even though
its required output contributes no new program lambda. This is a
qualitative computational obstruction; it supplies neither a sharp bit
bound for remainder extraction nor an additive price for the two
self-interpreter projections.

### Kernel-checked proof

The `SelfintGrowth` modules check the following components against the same
labelled syntax used by `SelfintZero`:

| Module | Checked result |
| --- | --- |
| `SelfintGrowthBlue` | Full data normalization, substitution compatibility, and preservation of an exposed non-growing program head contraction. |
| `SelfintGrowthBlocks` | Permanent closed blocks survive substitutions; in a constant-count phase, selected blocked-operand copies are bounded by the initial program-lambda count. |
| `SelfintGrowthOrigins` | The nonflat-lambda counter decreases at each nonflat head contraction, bounding those events in a closed constant-count phase. |
| `SelfintGrowthLabels` | A fixed application-only body's data evaluation takes at most five steps per application, uniformly in the size of its canonical operand, with every intermediate label bounded. |
| `SelfintGrowthStable` | Closed one-code operands and block-free two-copy values have the stated wrapper/spine forms; flat-body transitions and their label bounds follow. |
| `SelfintGrowthSimulation` | A uniformly bounded-label trace realizes on a finite zero prefix, and its selected program head steps are bounded by that realization's weak-head clock. |
| `SelfintGrowthHead` | Strict data-cost descent, deterministic extended head execution, finite realization by actual weak-head steps, and infinite-zero nontermination from the exact suffix contract. |
| `SelfintGrowthTrace` | Every finite prefix of a stable fixed-template execution has one uniform label bound, including wrapper erasures and pending arguments. |
| `SelfintGrowthSpine` | Canonical closed head decomposition and extraction of a wrapped flat operand from a clean constant-count event. |
| `SelfintGrowthCounters` | Eventual stabilization of all three counters and exclusion of nonflat contractors and blocked operands after stabilization. |
| `SelfintGrowthSequence` | Selection of infinitely many clean canonical program events, preserving finite actual-prefix links. |
| `SelfintGrowth` | Full synthesis: an exact remainder reader has strict program-lambda growth arbitrarily late in its infinite-zero head execution. |
| `SelfintGrowthColored` | Exact source-origin colors and ordinary weak-head simulation, giving growth on every sufficiently long valid tower and every closed suffix. |

The final theorem requires only closedness and the closed-source,
closed-suffix beta-join contract stated above. It assumes no parser
architecture, normal form, typing discipline, or bound on source size.
Natural-counter stabilization and event selection use ordinary classical
reasoning. Current build and axiom-audit results are recorded in
`docs/STATUS.md`.

## At least 27 bits

This is Codex's handwritten proof. This proof concerns arbitrary closed sources for R, including beta-redexes.
It assumes neither a normal-form source nor a parser architecture. The
syntax classification below is analytical, not a term enumeration.
`data/self-interpreter/reasoning_floor/remainder/audit.py` replays 33 fixed
equations used here in about 0.003 s; the exhaustiveness comes from the
following count argument, not those tests. Table entries are beta reducts,
some reached by contracting an argument first; the exclusions use them
through confluence.

### Three live binders, hence at least 24 bits

Call a binder live when its own variable occurs. An extractor R weak-head
normalizes to a lambda: apply it to a fixed quoted closed source with
normal suffix I, and use head-normalization reflection to its function.
The exposed binder must be live, since otherwise the result would be
independent of the suffix (take closed suffixes I and F).
The reduct remains an extractor by confluence, so `SelfintZero` says that
the exposed lambda's body contains at least two nonlinear binders.

Suppose the original R had at most two live binders. There must be two,
both nonlinear, and the chain theorem above makes them incomparable.
Each is consequently closed in isolation: every ancestor is vacuous.
Neither body contains another live binder. During weak-head evaluation,
copies of these closed live lambdas retain their original bodies, since
substitution cannot change a closed subterm and no step is taken under a
lambda. Every other original binder is vacuous and remains so under
capture-avoiding substitution. Thus a live exposed lambda would have no
nonlinear binder in its body, the required contradiction.

R has at least three live binders and two nonlinear binders. Write L,V,X
for lambda nodes, variable leaves, and the sum of zero-based indices.
There are at least five leaves, and

```
|R| = 2L + 4V - 2 + X ≥ 2·3 + 4·5 - 2 = 24.
```

### The entire allocation through 26 bits

If |R|≤26, necessarily V=5, exactly three binders are live, exactly two
are nonlinear, and each nonlinear binder occurs exactly twice. The third
live binder is affine. Either

```
L=3, X≤2,                or                L=4, X=0.
```

In the second case the fourth lambda is vacuous. Put `D=λx.x x`.

### Zero index sum

When X=0 every lambda subterm is closed in isolation. Any lambda exposed
by weak-head evaluation is therefore an unchanged original lambda subterm.
To have two internal nonlinear binders it must be the affine binder,
containing both nonlinear binders. These consume all five source leaves.
There can be no application outside this lambda, because its other operand
would require a leaf. An outer vacuous lambda would itself receive and
discard the public stream. Thus R is literally this affine lambda.

With three lambdas it has form `λs.T(s,D,D)`, where T is a three-leaf
binary application tree. On any `s=[K,r]`, its six layouts give:

| Body | Reduct after substituting s |
| --- | --- |
| `(s D) D` | `K D` |
| `(D s) D` | `r` |
| `(D D) s` | `Omega s` |
| `s (D D)` | `Omega K r` |
| `D (s D)` | `K K` |
| `D (D s)` | `r` |

Take `s=stream(I,n)`, with rigid n; r is a nonempty Scott stream. None
returns n.

With a fourth, vacuous lambda, its body must be closed because X=0.
It cannot surround an occurrence bound by s or D. It therefore wraps
one D, giving `J=λz.D`, or wraps `D D`. In the latter case the only
layouts are `s(λz.Omega)` and `(λz.Omega)s`, both head-divergent.
In the former case take `s=[K,r]`, `r=[K,u]` (as for source I):

| Body | Reduct |
| --- | --- |
| `(s D) J` | `K J` |
| `(s J) D` | `u` |
| `(D s) J` | `r` |
| `(D J) s` | `K r` |
| `(J s) D` | `Omega` |
| `(J D) s` | `K r` |
| `s(D J)` | `K` |
| `s(J D)` | `K` |
| `D(s J)` | `u` |
| `D(J s)` | `Omega` |
| `J(s D)` | `D` |
| `J(D s)` | `D` |

Here u is also a nonempty Scott stream. Again none is n. This excludes
all zero-index allocations through 26 bits.

### Three lambdas and a positive index sum: literal interface

If R starts with a lambda, it is the affine binder; a nonlinear root
would be comparable with the only other nonlinear binder. Its sole
stream occurrence must lie inside one of the incomparable nonlinear
binders, or X would be zero. Thus

```
R = λs.H_s D,       or       R = λs.D H_s,
H_s = λx.T(x,x,s).
```

The first reduces to the already excluded three-leaf layout. For the
second, the six choices of T give the following on
`s=stream(I,n)=[K,r]`, `r=[K,u]`:

| T | Behavior of H_s H_s |
| --- | --- |
| `(x x)s` | `H_s H_s → H_s H_s s`, an infinite head expansion |
| `(x s)x` | `I` |
| `(s x)x` | `K H_s` |
| `x(x s)` | `u` |
| `x(s x)` | `K K` |
| `s(x x)` | `H_s H_s →² H_s H_s K r`, an infinite head expansion |

No choice returns n. The two recurrence equations preserve the head
redex while appending arguments; they are divergence proofs, not fuel caps.

### Three lambdas and a positive index sum: application root

A positive index requires two nested live binders in one subtree. The
other nonlinear binder is incomparable, closed, and has no other binder,
so is D. Closure and the five-leaf inventory leave exactly

```
R = N D,       or       R = D N,
```

where N contains one affine and one binary nonlinear binder and three
leaves.

If the affine binder is outermost, positivity forces
`N=λa b.T(a,b,b)`. Both N D and D N reduce to a literal interface whose
body contains exactly one nonlinear binder: respectively D or one copy
of N. The public b binder does not count. `SelfintZero` excludes them.

If the nonlinear binder is outermost and the affine binder is leading,
`N=λx y.T(x,x,y)`. N D reduces to the excluded 24-bit literal form.
For D N, first reduce to N N:

| T | Obstruction |
| --- | --- |
| `(x x)y` | `(N N)s →² (N N)s`, a head cycle |
| `(x y)x` | `N N →* λy.y N y`, only one internal nonlinear binder |
| `(y x)x` | `(N N)(stream(I,n)) →* K` |
| `x(x y)` | `N N →* λy z.(N y)((N y)z)`, two leading lambdas |
| `x(y x)` | `N N →* λy z.(y N)(z(y N))`, two leading lambdas |
| `y(x x)` | With X=N N, `X[K,r] →⁷ X`; X already has a lambda head |

For the fifth row, expanding N once gives
`λy.N(y N) → λy z.(y N)(z(y N))`. Two leading lambdas leave a lambda
after the one public input and cannot yield rigid n. In the last row,
`X → λy.y X`, so the returned X also cannot yield n.

Finally suppose the inner affine binder is nonleading. It has one own
occurrence and, by positivity, exactly one captured x; the other x is
outside it. The only forms are

```
λx.(λy.x y)x,    λx.(λy.y x)x,
λx.x(λy.x y),    λx.x(λy.y x).
```

The first two beta-reduce to D, yielding Omega in either outer order.
For the third let `J(A)=λy.A y` and `N=λx.x J(x)`. N D reaches the
two-step cycle `D J(D) → J(D) J(D) → D J(D)`. For N N the infinite
head progression is

```
N J^k(N) → J^k(N) J^(k+1)(N) →* N J^(k+1)(N).
```

For the fourth use `J(A)=λy.y A`. N D reduces to Omega, and N N enters
the three-step cycle

```
N J(N) → J(N) J(J(N)) → J(J(N)) N → N J(N).
```

This exhausts the positive-index allocation. Hence no closed exact
remainder extractor has size at most 26, and **Rmin ≥ 27**.

The reduction tables and representative recurrence equations pass the
fixed audit; an independent review replayed them, and 52 further fixed
equations, with its own reducer and found the argument correct
(`data/self-interpreter/reasoning_floor/verify/`). The three-live-binder
argument and the allocation classification are handwritten, not
formalized; the kernel-checked numerical remainder floor is 18
(`remainder_bound_eighteen`).

## The zero-stream obligations stop at 45 bits

The exact source is

```
λs.(λd.s d d) (λb r d.r (b d r) d).
```

Let `D0=λb r d.r(b d r)d` and `P0(s)=s D0 D0`. Its two laws are

```
P0([K,r]) →* r D0 D0 = P0(r)
P0([F,r]) →* r r D0.
```

Therefore, for every k≥0, m≥1, and arbitrary N,

```
R45 (0^k 1^m 0 ++ N) →* N.
```

Induct on k and then use unary self-skip. This includes every closed
lambda tower `λ^n.I` and every well-scoped `λ^k.var m`. It even accepts
odd zero prefixes, which need not be a source encoding.
`Blc/SelfintTower45.lean` checks the literal 45-bit length, closedness, both symbolic clauses, and
the all-k/all-index/all-suffix theorem, including the tower corollary.
Both public contracts depend only on `propext` and `Quot.sound`.

It fails, for example, on `λx.x x` (wire `00011010`): it returns
`10 ++ N`, the encoding of the second variable followed by N.
This is a partial reader, not an improvement to Rmin.

It also realizes the growth mechanism concretely. In one zero-cell cycle
`P0([K,r]) →* P0(r)`, the active D0 consumes its b and r binders. Its
last d contraction then duplicates the other three-lambda D0 twice and
consumes one lambda, increasing the program-origin lambda count by
`(2−1)·3−1 = 2`. Before/after counts in the cycle are 6,5,4,6. This
happens at every zero cell, arbitrarily late in the infinite-zero trace.

The source has five live binders, three nonlinear binders, and an
incomparable nonlinear pair (the sharing lambda against binders in D0).
Thus two nonlinear binders, incomparable branches, unary skipping, and
arbitrarily late code growth are jointly compatible with 45 bits.
Any sound bound using only these obligations is at most 45 and transfers
at most 37 bits to interpreters, the floor `global-floor.md` already
proves. A stronger bound has to use genuine application parsing: after a
left child's whole encoding is discarded, a still-live obligation must
consume exactly one further source, uniformly in the suffix.

## Pending sources after an application's left child

These results are Codex's; `Blc/SelfintResidualControl.lean`,
`SelfintSharedS647` and `SelfintFixedResiduals` check them, using only
`propext` and `Quot.sound`. Write `D_p(S) = R (p ++ S)` for an extractor `R`
and a finite word `p`. For closed `M`, `Q`,

```
D_code(M)(S)                  =β S,
D_(01 code(M))(code(Q) ++ N)  =β N,
```

and the two residual operations cannot coincide: on `code(I) ++ n` the first
returns a nonempty Scott stream and the second the rigid `n`
(`pending_ne_done`). With `w = code(I)` and `p_k = (01)^k code(M)`, for
`i < j`, `D_p_i(w^j ++ n) =β w^(j−i) ++ n` while `D_p_j(w^j ++ n) =β n`, so
pending depths never collapse to finitely many residual operations
(`pending_depths_distinct`, for every `i` and every `k > 0`).

If a residual body `B` with only its tail free satisfies
`R (01 code(M) ++ S) =β B[S]` for every `S`, then `λs.B` is itself an
extractor, so `B` has two incomparable nonlinear binders
(`clean_cut_body_not_chain`). Colouring the reader's lambdas red and the
prefix's quotation lambdas blue, those binders are of reader origin in any
colour-preserving trace (`marked_pending_has_code`). They may be copies of
the same original pair that processed the left child, so this is not an
additive charge on the original source.

Three such charges are false. `intL584 F` (592 bits) is a complete
extractor with exactly two nonlinear binders, both closed in isolation
(`rem592_*`). `SelfintSharedS647` compiles `rem70` by β-exact SKI
abstraction through one shared `S`: a 647-bit complete extractor with
exactly two nonlinear binders, two live capturing binders and one
width-three subterm, its contract checked through all 413 reductions to
`rem70`'s normal form. Applications therefore force neither a third
nonlinear binder, nor a third live capture, nor a second width witness.
`SelfintFixedResiduals` kernel-checks the failures of the nearest broken
extractors: the 45-bit tower reader stops before a closed left child
(`tower45 (010 ++ r) →* r`), a 66-bit `rem70` with one context operand
dropped returns `K N` on `λx.x x`, and two 65-bit attempts to pack the
pending pair into one argument fail.

Within `rem70`'s own frame the two sequential skips are priced exactly
(handwritten): with `Q = λt u d. H`, `H` built from applications and
variables, and the rigid laws `Q K u d = u d d`, `Q F u d = u d d d d`, the
leaf counts force `|Q| ≥ 36`, so `|R| ≥ 70`, uniquely attained by `rem70`.
These restrictions are not consequences of the general contract.

## Transfer to interpreters

Substituting `F=λv r.r` for the rigid continuation in the self-interpreter
contract shows that `E F` is a closed exact remainder extractor on closed
sources, of `|E|+8` bits. `SelfintRemainderChain.remainder_bound_transfers`
kernel-checks the consequence: a universal remainder floor `n` gives
`SelfintSizeBound (n−8)`. The 27-bit floor transfers only 19, below the
37 of `global-floor.md`, and because `rem70` exists
(`remainder_bound_at_most_seventy`) no remainder floor can transfer more
than 62. The same substitution, applied to the remainder payload of a
literal continuation-headed interpreter, prices that payload in
`head-decomposition.md`.
