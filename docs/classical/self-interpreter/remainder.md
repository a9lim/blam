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
the beta-normal fragment.

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
