# The 165-bit self-interpreter

This is the record of what is known about the size of BLC's
self-interpreter: its anatomy, its formal proofs, every search run against it
and its predecessor, and the exact boundary of what those searches prove. The
universal machine, whose contract differs, has its own record in
`universal.md`; the parametric slot searches are specified in `slots.md`.
Logs are in `data/self-interpreter/`, the interpreters themselves in
`data/self-interpreter/machines/`.

## 1. The object

The self-interpreter `E` satisfies

```text
E C (⌜M⌝ ++ N) = C (λz. M) N
```

for closed `M`, a rigid continuation `C`, and a rigid remainder `N`. The
current minimum is 165 bits (`machines/int165.lam`), Codex's design:

```text
(\x. x x) (\x. (\intL. \cont.
  (\next. \list.
    list (\bit0. bit0 (\unused \r. r next) cont) (list list list))
  (\bit1. intL (\exp. bit1
    (cont (\args \arg. exp (\zx \zy. zx arg (zy args))))
    (intL (\exp2. cont (\args. exp args (exp2 args)))))))
  (x x))
```

It is Sean Palmer's 168-bit `int.lam` (tromp/AIT `2cfa384`) with a new
reader; everything from `next` inward is the 168's. The 168 is itself one
β-expansion of Tromp's 170: the zero-branch continuation `\bit1. …` is
let-floated out from under `\list \bit0 \list1` to sit just inside `\cont`.
In the size identity `|M| = 2L + 4A + 2 + X` the three read `(17, 25, 29)`,
`(16, 26, 30)` and `(15, 25, 38)`.

**Both are proved correct.** `lean/Blc/Selfint165.lean` and
`lean/Blc/SelfintProof.lean` prove in Lean, for the 165 and the 168 pinned to
their wire bits, that `E C (⌜M⌝ ++ N)` β-*reduces* to `C (λz. M) N` for every
closed `M` and any terms `C`, `N` (`selfint_contract165`, `selfint_contract`),
divergent programs included, together with the head-reduction parser
statements of `Blc/Selfint.lean` for every term, open or closed. The axioms are
`propext` and `Quot.sound`. One induction on the source term carries
everything: the parsed closure denotes the term under any cons' environment
(`Den`), implements it under head reduction (`Implements`), and leaves a
residual that spine-reduces to the tail; the variable engine is an induction on
the unary index, and the control is a set of kernel-replayed machine runs on
placeholder terms, lifted because head steps are stable under substitution.

**Nothing below 165 is known.** §3 lists everything searched around it, §5 the
lower bounds. None is an unconditional optimality proof; §7 says what remains.

`tools/self-interpreter/battery.py` is the exact contract check used for every
measured size: rigid continuation and tail, every closed program through 18
bits plus deep-index extras. Of its 668 programs, the one whose expected
result has no normal form is skipped and 667 must pass. It compares β-normal
forms, so an interpreter correct only up to η fails it (one with arguments
before environments measures 237 and passes a separate βη audit). The 165
also passes 3,341 programs through 21 bits, and its suffix extraction
`E (λv r. r) (⌜M⌝ ++ n)` normalizes to `n` on divergent `M`.
`tools/self-interpreter/merges.py` re-measures the 165, its nearest variants,
and the 168's protocol variants of §6.

## 2. Anatomy

| part | bits |
|---|---:|
| knot and `intL = x x` let | 22 |
| `\cont`, the `next` let, `\list` | 8 |
| reader `list H S`: two applications and `list` | 6 |
| handler `\bit0. bit0 Z cont` around its zero arm | 13 |
| zero arm `Z = \unused \r. r next` | 14 |
| skip `S = list list list` | 10 |
| NEXT header `\bit1. intL (\exp. bit1 · ·)` | 17 |
| ABS (the `cons'` cell alone is 24) | 40 |
| APP | 35 |

The 25 applications: knot 3 and the `intL` let 1; the `next` let 1; the reader
2, its skip 2, the handler's dispatch 2, the zero arm's read of the second bit
1; the first parse 1 and the dispatch on `bit1` 2; ABS 5 (return, enter the
body, build the cell 3); APP 5 (second parse, return, `exp args (exp2 args)`
3). The 17 λs: the knot's two, the two lets, `cont` and `list`, `bit0`, the
zero arm's two, `bit1` and `exp`, the λ-value's `args` and `arg`, the cell's
`zx` and `zy`, and APP's `exp2` and `args`.

### The reader

With `s = cons b r` the whole input stream,

```text
s H S  =  H b r S            S = s s s
```

and `S` is the rest after the first 0 of the *whole* stream: `s s = K r'`
where `r'` is that rest (for a 0-tag, `cons K r s = K K r r = K r`; for a
leading 1, `s s = r r`, and by induction a unary code `1^k 0 ++ N` gives
`K N`). So one skip, computed before the dispatch, is right in both arms:

- **0-tag:** `S = r` (the stream after the tag), and
  `H K r S = Z r S = S next = r next`, the 168's zero branch.
- **Variable** `1^n 0 ++ N`: `S = N`, and `H F r S = cont r S = cont r N`,
  the 168's `cont list1 (list1 list1 list1)`.

Two moves make this pay. The skip is *hoisted*: the 168 computed it inside the
variable arm from `list1`; the 165 computes it once on the whole stream,
where its value happens to be what both arms need. And the Scott list's own
application `H b r S` *supplies* `list1` to the variable arm, so that arm is
`cont` itself and its return application disappears. Against the 168 this is
one λ more, one application fewer, and one bit less of index: `+2 − 4 − 1`.
The 168's module bound (§5) kept dispatch, VAR and skip in separate opaque
modules, which is exactly the boundary this crosses.

The zero arm receives `list1` twice and must drop a copy; that is the extra λ.
Dropping it through `bit0`, which is `K` in that arm, costs one bit more
(166). Applying the copy to anything leaves an argument that reaches the rigid
`C`, and re-dispatching it through `H` runs into the uniform-handler
impossibility of §5.

**Identities of the reader** (Codex). Write `R = \s. s H (s s s)` for the
reader with `next` and `cont` fixed, `H = \b. b Z cont` and `Z = \u r. r next`.
Off genuine streams the reader still computes: `R K = H`, `R F = F`,
`R I = \r. r next`, and `R (K a) = a (a (K a))`, so a constant stream is a
return instruction, `R (K (K X)) = X`. It also diagonalizes its own zero arm:
`R Z →* next next`, and in general `R Z_t →* t t` for `Z_t = \u r. r t`
whatever `next` and `cont` are, while `H R →* next next cont`. On streams,
`s (\x. x x)` is a conditional predecessor (`K` after a 0, the tail after a
1), two cells cross-apply as `cons b r (cons d t) = b d t r`, and unary codes
`U_k(N) = 1^k 0 ++ N` satisfy `U_{i+1}(N) U_{j+1}(M) = U_j(M) U_i(N)`. Proofs
and rigid-variable checks are in `data/self-interpreter/reasoning_165/`
(`fresh/`, `knot/`, `algebra/`, `reader/`).

### The NEXT region

From `next` inward the 165 is the 168, at the same binder stack
`[cont, intL, x]`, and on genuine streams both readers satisfy the same parser
law. So a change confined to NEXT has the same size change and the same
battery outcome on both interpreters (select-first and the K-repair cell are
+1 on each in `merges.py`), and the 168's slot and module results for the
header, ABS, APP, the cell and the lift (§4, `slots.md`) bound the 165's NEXT
region too.

## 3. Searches around the 165

Every search here is exact against the contract; "capped" means a candidate
exhausted its budget without failing a probe, which is not a refutation.

| search | scope | result | evidence |
|---|---|---|---|
| let structure (`blam golf letopt`) | 181-bit core, 512 cuts, 0–3 cuts: 512 / 104,471 / 12,419,437 configurations | 165 unique minimum (two cuts); one 167; three cuts ≥ 170 | `letopt_165.log` |
| βη component (`blam golf component`) | slack 20, ceiling 185 | 2,183,051 terms, none below 165, no tie | `component_165_slack20.log` |
| contextual component | slack 16 with η: 326,937 terms; slack 18 without η: 654,379 | none below 165, no tie | `component_165_contextual16.log`, `searches_165.json` |
| zero arm | ≤ 14 bits, frame `[bit0 list next cont intL x]` | unique; 8 capped are re-parse loops such as `next bit0 list` | `sketches_165.log` |
| skip | ≤ 10 bits | unique, none capped | `sketches_165.log` |
| handler | ≤ 24 bits | 177,555 fills, no survivor, 7,790 capped | `sketches_165.log` |
| handler × skip jointly | `\list. list H S`, `|H| + |S| ≤ 36` (interpreters ≤ 164) | 32,366,372 pairs, no survivor, 4,052,176 capped | `searches_165.json` |
| cell; APP lift | ≤ 23; ≤ 18 bits, unrestricted frame | 103,547 and 5,131 fills, no survivor, none capped | `searches_165.json` |
| cell × APP value body | sum ≤ 40 | 47,303,158 pairs, no survivor, none capped | `searches_165.json` |
| whole APP | ≤ 34 bits | 21,555,108 fills, no survivor; 218 capped, 5 refuted by `I I` | `searches_165.json` |

The nearest complete variants (`merges.py`): 166 with the zero arm built from
`bit0` as `bit0 (\r. r next)`; 166 with the zero arm reading the first tail,
`\r \unused. r next`; 166 with select-first or the K-repair cell; 171 with
`\list1` bound and `cont list1` written out; and the zero arm with one binder
(`\r. r next`, 162) fails all 667 programs. Near misses that touch the reader
get worse than they were against the 168, because NEXT's body has four
references above `\cont` and the 14-bit zero arm makes `next` dearer to move:
`next` inside `\list` 172 (+7, against +2 on the 168), the optional second
parse 175 (+10, against +9), the function environment 181 (+16, against +9,
since VAR loses its η), `next` inlined 170, `next = \l. l B` with the zero arm
`\u. next` 168, `next = \u \r. r B` 171.

Unknown here: readers under the current `next` protocol that are not of the
`list H S` shape, and the capped counts above.

## 4. The 168's neighbourhood

These searches stay inside the 168's algorithm, so a smaller term found would
be correct by construction. They also bound the NEXT region the 165 shares.

### Let structure and βη

Inlining every let except the knot gives a 179-bit core with `x x` at both
recursive call sites. A *cut* moves the subterm at one or more core positions
into a let bound just above an ancestor node; any name the moved subterm needs
that is not in scope there becomes a parameter, so one cut is let-floating and
λ-lifting together. Each configuration is rendered at its exact optimum, and a
sampling test inlines 20,000 random renderings back to the core and checks
exact equality. Over the core's 468 candidate cuts (`letopt_168.log`):

| cuts | valid configurations | smallest |
|---:|---:|---:|
| 0 | 1 | 179 (the core) |
| 1 | 468 | 170, Tromp's interpreter (the `x x` share) |
| 2 | 89,785 | 168, Palmer's, uniquely |
| 3 | 10,181,950 | 173 |
| 4 | 789,542,687 | 179 |

Around the 168 (`--around 4`, `letopt_168_around.log`), one to four more cuts
give at least 173, 179, 185 and 192 bits over 182,418,093 configurations.

The βη component (`blam golf component`) explores a term's connected component
under reduction, η± , abstraction (let-floating) and anti-unification (a macro
for two abstractions and a CSE, so `cons'`- and `skipvar`-style helpers are
one step away), keeping every term within `|T0| + slack` bits. From the 168:

| slack | ceiling | component | below 168 |
|---:|---:|---:|---:|
| 16 | 184 | 115,182 | 0 |
| 20 | 188 | 2,011,848 | 0 |
| 24 | 192 | 25,405,902 | 0 |

`tools/self-interpreter/beta_search.py` reproduces the components through
slack 16 (`betasearch_168.log`). `--contextual` adds boolean commuting and
specialization moves for `bit0`, `bit1` and `zx`, equalities that hold on the
interpreter's actual inputs: through slack 18 (2,156,068 terms) there are
three 169-bit neighbours (K-repair, select-first, the η-handler) and nothing
smaller (`component_168_contextual*.log`). The 165 is the η-handler with its
skip hoisted and both arms η-reduced: the component is blind to it because the
hoisted skip is not β-equal to the 168's on arbitrary streams.

The knot: with the body opaque, every fixed-point context costs at least
20 bits, and the 168's own `(\a.a a)(\a.H(a a))` attains it.
`Blc/SelfintKnot.lean` (Codex) proves that any `t =β h t`, with the hole `h`
priced at zero, has two nonlinear binders and so at least `18 + 2k` bits for
`k` hole occurrences; adding the parser binder and two recursive calls at
zero-based depths `d1, d2` costs at least `26 + d1 + d2`, which is 31 at the
165's depths 2 and 3 and is attained there. Through 20 bits that context is
the only weak-head self-reproducing one (`tools/self-interpreter/search_fix.py`).
Sinking the shared `x x` let inward never pays when it has two uses: each
crossed binder changes the size by `2 − r + m ≥ 0` for `r = 2` uses and `m`
captured occurrences (`data/self-interpreter/reasoning_floor/knot/`).

### Slots

VAR, ABS and APP are each the unique survivor of an exhaustive parametric
search in the 168's frames (`slots.md`). The contextual searches
(`blam selfint ctx`) splice candidates into the 168 and accept a candidate only
if it meets the exact contract on 91 probe programs; strictly smaller than the
reference:

| slot | reference | candidates | survivors | unknown |
|---|---:|---:|---:|---:|
| VAR, unrestricted | 22 | 56,703 | 0 | 81 |
| APP's value `\args. exp args (exp2 args)` | 19 | 1,158 | 0 | 0 |
| `cons'` cell | 24 | 30,428 | 0 | 0 |
| APP | 35 | 21,555,108 | 0 | 3 |
| ABS | 40 | 558,135,222 | 0 | 1,983 |
| dispatch handler, unrestricted, through 35 bits | 42 | 163,041,847 | 0 | 12,071,331 |

The VAR unknowns re-parse the same stream forever with a growing continuation.
Of the APP unknowns, `cont (intL intL (intL exp) intL)` is refuted by
Church–Rosser: on a top-level application it returns `c X ⌜N⌝++n`. The other
two, `intL intL (intL exp) intL cont` and its `exp`/`cont` swap, halt correctly
on application-free programs and exhaust the escalation engine at 10× its
capacity and 4× its work meter on `(\1 1)(\\1)`. The ABS unknowns sampled are
Ω-shaped self-applications of `intL` partials.

### Joint holes

`blam selfint hole TEMPLATE` enumerates every fill of one hole `_`, or two
holes `_` and `~` jointly, under the same exact contract;
`tools/self-interpreter/sketches.py` holds the templates and
`sketches_168.log` the results. In the 168 every joint search — variable value
× cell (795,310 pairs), cell × APP value body (78,240,524), VAR × APP value
body (2,830,368), whole NEXT structure × VAR (651,844,225), dispatch reader ×
APP continuation (271,637,651), whole dispatch × APP continuation
(776,816,521), administration's reader × VAR (213,338) — finds only the 168's
own pair. Ten alternative cells (leaky, Scott and flipped, selK, `cons'` flips)
against every variable value and every VAR up to 24 bits find only selK, at
170.

### The module grammar

Split the 168 into modules and enumerate each exhaustively at its own de Bruijn
depth, every term up to the reference size, with its neighbours replaced by
fresh rigid symbols; a module passes when its β-normal forms on rigid probes
equal its law (`tools/self-interpreter/module_bound.py`,
`module_bound/`). Every minimum is unique and is the 168's own module, and the
minima reassemble into the 168 bit for bit:

```text
knot 22 + administration 12 + dispatch 20 + VAR 22 + NEXT 17
  + ABS 40 (16 + cell 24) + APP 35 (16 + lift 19) = 168
```

The grammar assumes four clauses: modules are opaque; neighbours are rigid when
a law is checked; the capture layout is the 168's; and the knot treats the
body as opaque. Re-searching five modules with only their own live variables in
scope gives 160, so the 168's shared lexical layout pays 8 bits (VAR 3,
dispatch 1, NEXT 1, ABS 1, APP 2). The 165 breaks the first clause: its reader
fuses administration, dispatch, VAR and skip. The laws of NEXT, ABS, APP, the
cell and the lift are untouched by it.

## 5. Lower bounds

### What holds for every interpreter

Standard tools (Church–Rosser, solvability, head normal forms) give the
following for any closed `E` meeting the contract.

**Head shape.** `E`'s principal head normal form is `λc s. c A B` or
`λc s. s A1 … Ak` (`k ≥ 1`). *Proof:* the contract instance's right side is
solvable, so `E` is, with closed hnf `λx1 … xn. xi P⃗`. With `n ≥ 3`, applying
two arguments leaves an outer λ, which no reduct of `C (λz.M) N` has; with
`n = 1` the head is `c`, the supplied stream is its last argument and arity
forces it to equal `N`, but `⌜M⌝ ++ N ≠β N`. So `n = 2`; head `c` forces
exactly two arguments, and head `s` needs one to consume the stream's outer λ.
Both shapes occur: the 165 and 168 are `s`-headed; parsing twice,
`λc s. c (E (λv r. v) s) (E (λv r. r) s)`, is a correct `c`-headed
interpreter. In the continuation-headed case, replacing every occurrence of
`c` inside `A,B` by `s` preserves the contract and saves one bit per
occurrence. Thus a minimum such head form has separate value and remainder
projections independent of its continuation. This is a bound on the head
form, not the original source: even fully affine head reduction can increase
BLC size. `head-decomposition.md` gives the detailed proof and the exact
index-movement example; STATUS records the literal 165's head expansion.
`Blc/SelfintWireCost.lean` proves the exact beta size balance and its
consequences for global minimum interpreters: no erasing source redex,
and every linear source redex must save enough index bits to offset
the contraction's removed syntax.
`remainder.md` gives a separate exact syntactic remainder extractor,
with its all-source contract proved in `Blc/SelfintRemainder.lean`.
`Blc/SelfintZero.lean` proves that an exact remainder body needs two
nonlinear binders, excluding its stream binder, and
`Blc/SelfintRemainderChain.lean` that they lie in incomparable branches.
Exact remainder extractors cost between 27 and 70 bits; since `E (λv r. r)`
is one, any remainder floor `n` gives `|E| ≥ n − 8` (kernel-checked
transfer). Together with the
value projection's independent two-binder requirement,
`Blc/SelfintProjections.lean` proves that a literal continuation-headed
interpreter has four nonlinear binders inside its payloads and a fifth
at its public stream binder, a kernel-checked wire floor of 55 bits.
Pricing the value payload by its internal width and the remainder payload
by the remainder floor raises it to 73 (`head-decomposition.md`).
This prices that displayed head form, not the source that expands into it;
STATUS records the construction's size and current checks.

The independently reviewed Lean theorem in `remainder.md` also forces
strict reader-origin code growth during ordinary weak-head evaluation
of every exact remainder extractor on every sufficiently long valid
source `λⁿ.I`, with any closed suffix. The proof bounds the labels
accessible to an eventually nongrowing infinite-zero execution.
`Blc/WeakHeadClock.lean` and the `SelfintGrowth` modules mechanize the full
argument, including residual-origin colors and ordinary weak-head
simulation. This supplies no numerical size bound. Applying the result to
the projection `E F` counts the adapter's lambdas as part of that reader;
it does not by itself isolate growth belonging only to `E`.

**Duplication.** At least two syntactic binders of `E` occur at least twice.
Lean proves that every term with at most one such binder weakly normalizes;
the interpreter contract on Ω contradicts that conclusion. If `E = λc s.B`,
at least two are inside `B`: the public interface binders cannot supply
them. The count is sharp: a correct 584-bit interpreter uses exactly two,
both closed in isolation, by sharing one `λx.x x` across an affine
translation of the 165. Its reduction to the literal 165 is kernel-checked.
The minimum count two is attained even by a β-normal 742-bit witness,
whose contract is kernel-checked as β-joinability.
The two required nonlinear binders must occupy incomparable source
branches: `Blc/SelfintNonlinearChain.lean` proves that putting all nonlinear
binders on one ancestor chain is preserved by full beta reduction, whereas
the required Ω output violates that property. For a literal interface,
both witnesses are internal.
See `structural-bounds.md`, `Blc/SelfintLowerBound.lean`, and
`Blc/SelfintSharp.lean`.

**Capture and provenance.** Statman's published width obstruction implies
that some subterm of `E` has three distinct free variables, forcing two
live capturing abstractions. For a literal `λc s.B`, three variables of
such a witness must be internal to `B`; the two internal captures and the
public stream binder's capture give three in total. Combined with the
incomparable-nonlinear theorem, these give handwritten wire floors of
34 globally and 46 for literal interfaces, including beta-normal
interpreters. The three binders on the width witness's ancestor chain
cannot contain the incomparable pair, forcing a fourth live binder and
a preliminary global floor of 33; analytical exclusion of the equality
cases raises that floor to 34. `global-floor.md` excludes 34, 35 and 36 the
same way: **every interpreter has at least 37 bits** (Codex's handwritten
proof, found correct by two independent reviews; its 144 fixed reduction
clauses are kernel-checked in `Blc/SelfintFloor37.lean`). Without Statman's
theorem the kernel-checked floor is 27 (`selfintSizeBound_27`,
`structural-bounds.md`).
`capture-width.md` states the published result and the interface proof,
and gives a shared-S construction attaining these structural minima
simultaneously, including in the beta-normal fragment with all zero-based
indices at most two. The preliminary 33/46 syntax counts are attained;
these witnesses do not establish optimal interpreter sizes.

Lean separately proves that absence of any live capturing abstraction is
preserved by β-reduction and holds for the quotation, while the normal
output for `λa b.a b` violates it. A separate colored reduction theorem
tracks quotation-origin binders through unrestricted interpreter
reductions: they remain affine with a protected head occurrence.
For a suitable closed normal source, every successful colored trace must
also copy interpreter-origin code at a nonlinear interpreter-origin binder.
Copying quotation-only arguments cannot create the required output.
These are global constraints, not separately additive module costs
(`structural-bounds.md`, `Blc/SelfintCapture.lean`,
`Blc/SelfintOrigins.lean`).

**No syntactic knot or untypability is forced.** A correct interpreter can
be β-normal; `normal.md` gives a compact construction with a kernel-checked
contract. It can even be both β-normal and simply typable:
`typed-normal.md` gives an explicit 672-bit construction and a general
kernel-checked correctness proof, including its ordinary STLC typing
judgment (`Blc/SelfintTyped.lean`). The actual application to the quotation need
not share that simple typing. Thus neither a β redex nor untypability of
`E` follows from correctness alone.

**Search cost.** There are about `1.02 × 10^44` closed terms of 167 bits. The
property "is a self-interpreter" is Π⁰₂-complete in general, so no total
decision procedure exists; at a fixed size bound the theorem is a finite
conjunction, and if it is true some finite set of programs separates every
smaller term, but nothing bounds that set or makes its β-disequalities
decidable. A prototype sound demand-driven search (narrowing over terms with
holes, pruned by reachability, exact loop detection and a size-canonicity rule
for affine redexes; not in the tree) estimates its own tree at about `10^34`
nodes from scratch and `10^12` with the 168's frame fixed except the three
semantic slots. A proof at this size therefore needs a decomposition theorem —
a way to localize the interpreter's roles in separately priced subterms — and
the 165 shows that the natural decomposition is false.

### Bounds within the 165's reader shape

These are Codex's handwritten proofs, with targeted reduction checks in
`data/self-interpreter/reasoning_165/bounds/` (`proof_check.py`) and
`tools/self-interpreter/theory/handler_bound.py`; none is in Lean.

- **The reader.** In the frame `[s, next, cont, intL, x]`, take readers
  `s H S` where `S` satisfies the stop-at-first-zero law and arbitrary `H`
  satisfies `H K R R = R next` and `H F R T = cont R T` for independent
  rigid neighbours. The handler costs at least 27, without assuming its
  syntax, normality, dispatch shape, or absence of common arguments.
  `handler-bound.md` gives the complete small-budget case proof. The skip
  costs at least 10 and the two applications with `s` 6, so the reader costs
  at least 43; with the other 122 bits unchanged the minimum is 165
  within that independent rigid interface.
  The stronger theorem in that note retains the 27-bit minimum under
  actual stream/tag/selector/suffix correlations, including whole-stream
  access inside `H`, for the fixed skip `s s s`. Other ambient parameters
  remain independent and rigid. Other reader heads, exploitation of actual
  NEXT/parser behaviour, and arbitrary joint skip choices remain outside
  these bounds. `normal.md` gives two 40-bit correlated handlers satisfying
  the actual-stream laws but not the independent rigid laws; one has just
  one explicit lambda.
- **Neutral skip operands are dominated.** For arbitrary correlated `H`,
  successful readers with `T=s next` or `T=s cont` also work with `T=s`,
  saving 5 or 6 bits. The proof in `protocol-obstructions.md` tracks an
  inert marked operand that every successful reduction must erase. It
  does not by itself exclude the cheaper `T=s` family or the productive
  thunk `T=s s`.
  The same argument dominates `s (s s)` and the cheap rigid-headed
  operands. Through ten bits, application-only operands reduce to
  `s,j,c,s s,(s s) s`; bare `j,c` remain substantive separate cases.
  `Blc/SelfintInert.lean` kernel-checks the common replacement principle;
  the specific operand equations and absence checks are handwritten.
  `cheap-tail-bound.md` gives the complete handwritten exclusions:
  every handler costs at least 35 bits for `T=s`, or 31 bits for `T=s s`.
  Both readers therefore cost at least 43 bits. With the standard-skip
  bound, 43 is the exact minimum across these three operand families.
  With the surrounding 122 bits fixed, 165 is minimal within these three
  operand families under the stated independent rigid reader laws.
  The proof allows arbitrary source beta redexes and whole-stream access.
  It excludes affine and nonlinear source-compression cases before
  exhausting the normal shapes. In particular, the index tax limits how
  many source lambdas can contain the surviving continuation `c`, while
  the original external applications require distinct such contractions.
  This remains a handwritten, independently reviewed proof rather than
  a Lean theorem. Both cheap operands require at least two source lambdas,
  or three in beta-normal code; explicit three-lambda constructions show
  the normal lambda count is sharp. The bare `j,c` families, operands
  containing lambdas, and other reader architectures remain open.
- **The zero arm costs at least 14 bits**, even with `bit0 := K` and the whole
  zero cell available to borrow. With `R` absent and the neighbours rigid,
  `Z R R = R next` forces the normal form `λu v. u next` (15) or
  `λu v. v next` (14), and every term below 14 that uses the known tag or cell
  fails. So reusing the duplicated zero cell cannot buy the missing bit while
  `next` and the recursion stay rigid.
- **The APP lift costs at least 19 bits** under `V E = f E (g E)` with
  independent rigid variables, with no syntax restriction: its unique normal
  form costs 19, and a non-normal representative needs two λs, three
  applications and one index bit for `f`.
- **The cell and the lift keep 24 and 19 bits under weaker laws.** A uniform
  cell replacement in the actual ABS frame costs at least 24 under only the
  two lookup laws `C K n = a` and `C F r = r e`, with the actual `intL` and
  `x` usable and raw quotation data borrowable; the uniformity across parsed
  bodies is necessary, since a 17-bit term built from one favourable body
  meets both laws for that body alone. The lift costs at least 19 on the
  165's actual values and environments. Codex's handwritten proofs, not yet
  independently reviewed (`data/self-interpreter/reasoning_floor/env/`).

### Exclusions at every size

- **One handler for both tag bits is impossible.** Using `H c` for the first
  bit and `H (A c)` for the second would delete `next`. That forces
  `E c (0:s) = E (A c) s` and `E c (1:s) = c s (s s s)`. Then `λx.x` gives
  `A (A c) (0:N) N = c (λz.I) N`. Both `I I` and `(K I) I` normalize to `I`, so
  each requires `A c (λz.I) N` to equal `c (λz.I) R`; but they leave different
  remainders `R` after the misread variable.
- **`E E = E` is impossible:** the identity program refutes it.
  `Blc/SelfintControl.lean` proves this from the exact contract, and excludes
  an idempotent control response whose self-application is `E`. The APP
  control-seed consequence and its suffix assumptions are in
  `protocol-obstructions.md`.
- **A contract-preserving continuation that is also its own knot driver is
  impossible:** M = Ω refutes it.
- **A shared head cannot carry the only tag dependence.** If
  `next b s = P (λf r. (b C P) (H[C,P,f,s,r]) r) s` with `H` independent of
  `b`, take `R = ⌜I⌝ ++ N` and `S = ⌜I⌝ ++ R`: the ABS program `λx.I` with tail
  `R` and the APP program `I I` with tail `N` reach the same payload `H0`, ABS
  forces `H0 = K (K I)`, and APP then returns `I` instead of `C (K I) N`.
- **A mode-free ABS/APP value builder is impossible, whatever its marker:** a
  `W` with `W f q0 e = λa. f (cell a e)` and `W f g e = f e (g e)` for every
  value `g` meets `f = K (K I)`, `g = K Ω`, `e = I`: APP requires `I`, ABS
  `K (K I)`, and by the genericity lemma the unsolvable `K Ω` can be replaced
  by any `q0`, even one chosen from `f` and `e` (Codex). Giving the optional
  value a solvable wrapper, `None = K` and `Some g = λn s. s g`, escapes it, at
  203 bits (§6).
- **The cell/APP alias fails with every cell.** With raw variable values
  `X1 = cons K R`, `X(n+1) = cons F Xn`, every environment satisfies
  `e (K I) Xn = Xn+1 e`, so the lift `λe. e f g` compiles `I (var n)` as
  `var (n+1)`, and `λa b. I b` and `λa b. a` collide. No cell of any size
  repairs this while bare variable values, canonical closed values and the ABS
  interface stay as they are (Codex).
- **A destructured rest cannot reach the root:** a protocol whose
  continuations receive the rest as `k v b r` needs an adapter at the root,
  because the contract's final rest is the rigid `N`, which no term
  destructures; without one it fails every program.
- **Reader and handler knots stay `C`-headed:** `H H → C next C`, and every
  application tree with at least two leaves drawn from the 165's handlers and
  readers `H_Ci`, `R_Ci` (rigid continuations `Ci`) head-reduces to some `Ci`
  with at least two arguments; trees of readers alone get at least four
  (`R R →* C n C (C n C H) (R R R)`). So no such tree is a parser while the
  continuation is public and rigid (Codex). Bare `next`, new λs and
  transformed streams are outside this.
- **A full parser cannot be the zero arm's carrier:** for any
  `P = λc s. s H_c (s s s)`, `P P P` reproduces itself at the head with more
  arguments and has no head normal form, and `R_i P` reduces to it. The
  current `next` diagonal cannot replace `E C` either: `next next` on quoted
  `I` leaves five arguments at the rigid `C`. This latter obstruction holds
  for every choice of skip function with the same handler and NEXT protocol,
  not only `s s s` (`protocol-obstructions.md`). (Codex.)
- **Readers of the bare-`cont` shape have outer arity one:** any
  `λs. s (λb. b Z C) A1 … Ak` returns `C r A1 … Ak` on a variable, so `k = 1`
  whatever the zero arm; and no application-only body over `s`, `next`, `C`
  (no λ, `next` opaque) is a reader at any size. (Codex.)
- **No continuation adapter makes the 165 accept a thunked stream:**
  `R_C (K a) = a (a (K a))` whatever `C` is, so `E (A C) (K s)` never mentions
  `C`. The input path itself has to change. (Codex.)
- **The fields NEXT can recompute from `q = cons bit1 rest` lose
  information.** `q P`, `q q` and `q K` drop the variable index `n` of the
  next operand (`λa b. b b` and `λa b. a b` meet the same fields); `q P`
  together with the raw tail `q F` can still lose the tag (with the periodic
  suffix `R → 10:R`, `λx y z. y` and `λx y. x y` agree on both); and using `q`
  as the first parse's continuation makes `P q t` head-divergent on Ω, which
  the contract forbids. Likewise a selected parse result `r P = bit value rest`
  plus any iterate of the skip loses the first operand's index. (Codex.)
- **A uniform decoder cannot repair an η-collapsed representation.** If
  two source programs have β-equal internal representations but distinct
  required β-normal outputs, every decoder depending only on that
  representation produces β-equal results for both. In particular, erasing
  the difference between `I` and `λf x.f x` cannot be repaired at the public
  boundary without additional information (`protocol-obstructions.md`).

## 6. Protocol changes

A protocol change alters what an operation passes or expects, so it leaves the
βη class and every search of §4. Over a hundred have been built and measured
against the 168; none goes below it, and those confined to NEXT keep their
size change on the 165 (§2). Nineteen more, built on the 165, close the section.

### Operation merges

| idea | saves | obstacle |
|---|---:|---|
| Return the rest as a thunk: `list1 list1` is literally `K rest` | 4 | Every rest becomes a thunk; `intL` then needs a uniform force costing ≥ 4 bits, and `C` must receive `N`, not `K N`. |
| Scott-pair environment `\f. f arg args` | ~12 | Stream-driven lookup flips orientation each step; a self-passing lookup helper costs ~45+. |
| Leaky cell `\zx. zx arg (\zy. zy args)` | 2 | Lookup returns `x rest`; absorbing it needs K-wrapped values, but λ-values escape to `C` as genuine functions. Repairs measure 169 and 170. |
| Variable value `list` (keep the leading 1) | — | Off by one in the environment; the repair costs a second cell. |
| Parse under the binder: direct values | large in APP/VAR | Threading the environment and reparsing ABS bodies cost more (226 as a universal machine against 178). |
| Share one combinator between the cell and APP (skeleton `a b (c d)`) | 5 | The let plus a four-λ definition costs ~32. |

With the current transparent value interface, λ-values must be genuine
functions and `C` must receive the real `N`; the cheaper cells and thunked
remainders above violate these requirements. A changed representation can
use a one-sided retraction and a public decoder, but its costs must include
those operations (`protocol-obstructions.md`).

### Measured protocol variants

Unless marked, each passes the battery and is larger than the 168.

| idea | bits | obstacle |
|---|---:|---|
| **Stream and bits** | | |
| Right-associated skip `l (l l)` | 168, *fails* | returns `N r` |
| Read both tag bits before dispatch | 193 | VAR still needs `list1` |
| Rest as a thunk `l l`, forced at APP and at the boundary | 202 | forcing sites and an output adapter |
| Raw suffix returned, skip at parser entry | 247 | sentinels for first parses, two adapters |
| `r intL = bit1 value rest`: read with the parser | 164, *fails* | keeps the value for ABS, the rest for APP; loses one each |
| **Values and environments** | | |
| Bare leaky cell | 166, *fails* | `λx.x` alone leaks the rigid `N` |
| Function environment `\s. s (\b. b (\u.a) e)`, value `\e. e list1` | 177 | no lookup helper needed; the value adapter costs 7 |
| Designed from scratch without seeing an interpreter: CPS environment functions, input bits reused as environment selectors | 220 | never reaches raw-code variable values or the hoisted skip; trie environments read by their own application 299, a two-state single decoder 251 |
| Scott cells with a shared lookup (two orders) | 236 / 243 | a 12-bit cheaper cell, a recursive lookup |
| Indices parsed into Scott selectors by `intL` | 222 | zero/successor parsing and accessors |
| Absolute de Bruijn levels | 449 | depth state and runtime append |
| Values that also return their code suffix | 273 | cell 24 → 36, APP value 19 → 52 |
| Applicative boxes carrying the remainder | 303 | direct boxed application keeps the right remainder; tag and boxing costs exceed the saved APP plumbing (`protocol-obstructions.md`) |
| Cell/APP alias: APP's value `\args. args exp exp2`, since `cell a e (K M) (K P) = M P` | 164, *fails* | fails 577 programs: at the root the environment is the contract's arbitrary `z`, and inside an environment `λz.I` equals the input bit `1`; no cell of any size repairs it (§5) |
| **Control and calling convention** | | |
| `next` inside `\list` | 170 | +2 of depth |
| Parser takes the stream first | 201–208 | recursive calls lose η over the stream |
| Continuation gets `rest, value` | 214 | ABS keeps its rest; boundary flip |
| Parser returns a cell `\c. c value rest` | 211 / 226 | explicit rest binders and rebuilt cells |
| ABS's return and APP's second parse share `(bit1 cont intL)` | 172 | one λ fewer, one application more, +2 depth |
| Optional second parse, no-input parser `\k. k k` | 177 | the tag is still decided inside the value |
| Direct evaluation plus a separate syntax skipper | 293 | two recursive bodies and retained code pointers |
| Explicit mode flags, tag-first dispatch, two continuation slots | 203–219 | the variants that escape the uniform-handler impossibility |
| **Recursion** | | |
| Self-passing `next` with a shared parser, best of 72 orders | 182 | carrier plumbing exceeds the knot |
| Recursion inside the bit handler | 196 / 206 | shared/unshared self-application; recursive entry needs a Scott adapter (`protocol-obstructions.md`) |
| Self-passed context activated by the input stream | 191 | no explicit fixed-point wrapper; the context travels through both recursive parses (`protocol-obstructions.md`) |
| One generator for parsing and value-driven APP | 323 | `v v` enters the actual parser on the left remainder; triple boxes, maps, and the public adapter dominate (`protocol-obstructions.md`) |
| Recursor passed through continuations | 204 / 206 | callback arguments plus a public adapter |
| A cell holding F performs the knot: `cell(a,e) cell(a,e) = λk. a a (k e e)` | 199 | the continuation receives two extra arguments |
| Both recursive call heads replaced, with the knot removed | — | 221,930,567 pairs (34 free bits): no survivor |

### Variants of the 165

Constructions written from a derivation rather than found by search, Codex's
unless credited; sources and proofs are in
`data/self-interpreter/reasoning_165/` and `reasoning_floor/`, and `merges.py`
re-measures the former. Each passes the battery unless marked. Sizes are at
their optimal let structure (`blam golf letopt`, at most three cuts).

| idea | bits | note |
|---|---:|---|
| Skip `list list next` | 166 | the erased argument changes only off-stream behaviour |
| Skip `list list cont`, `list list intL`, or `list list x` | 167 / 168 / 169 | on the off-domain input F, returns the continuation, parser, or generator; `protocol-obstructions.md` |
| Arity switch `s (s K)` dispatching constructor against variable | 167, *fails* | the variable arm returns `λc. I` on `I` |
| Balanced skip `(s s) (s s)` | 169 | `s s = K N`, so both forms reduce to `N` |
| `Δ = λx. x x` shared between the knot and `s s` | 176 | the let costs 11 |
| Zero arm replaced by its bit, `next` as a third outer argument | 158, *fails* | variables return `C r N next`, three arguments at `C` |
| The same, with the variable arm discarding the extra argument | 174 | the 165's reader equations in both arms |
| NEXT as the reader's third operand: `list H NEXT`, `H = \b \r. b r (\t. cont r (r r t))` (Grok) | 168 | the zero arm `r NEXT` is free; the variable arm's force `(r r) t` turns `K N` into `N` and costs the four bits, and NEXT sits one binder deeper |
| Duplicate tail discarded after the second cell elimination | 181 | |
| Tag replayed after the first parse, `bit0`'s `K` discarding `bit1` | 186 / 188 / 194 | the redundant tag costs more than the hoist saves |
| Curried cell borrowing ABS's tag, `\b. b (bit1 arg) (\r. r args)` | 171 | `bit1 = K` in ABS; +6 over the canonical cell |
| No `next` let: the zero arm keeps both copies of the stream, parses from one and re-reads the tag from the other through `bit0 = K` | 176 | the smallest interpreter without a `next` binding; NEXT's five references pay four binders of depth |
| Second-tag dispatch elsewhere in NEXT: a shared argument of both arms (three forms), or before the first parse | 169 / 169 / 170 / 172 | a shared argument costs a dummy binder, a second dispatch, or a packing pair |
| Constant stream as ABS's return instruction, `R (K (K X)) = X` | 191 / 207 | capturing the real remainder |
| Reader-carried knot `W = λx. x I x Z_x`: the only self-application is the skip's | 192 | +27 for the carrier; `R Z_t → t t` drives it. With the carrier's diagonal law, `Z_t` (12 bits) is the unique minimum, so this template is exactly 192 |
| Reset bootstraps: skip `s s c` with driver `λx. x I x F x`, or `s s x` with `λx. x x x F x` | 192 / 192 | the input `F` resets the provisional recursion; the cheaper driver is paid back by the deeper erased operand |
| ABS constructor shared with the recursion driver | 193 | β-equivalent to the 165; the sharing costs 28 |
| Reader diagonal `Q g g (λu r. r g)` as the outer knot | 199 | reconstructs `G G`; the helper costs 34 |
| Optional second value in a solvable wrapper | 203 | the escape from the mode-free builder exclusion |
| Root shortcut with continuation-last NEXT | 214 | every closed program starts with 0 |
| Reparse the component that `r intL` discards | 225 / 234 | the selected-component obstruction (§5) forces a second parse |

## 7. Boundaries

No verified sub-165 has been found in the tested neighbourhoods: its let
structure, βη and contextual components, every slot of its reader singly and
the handler and skip jointly through interpreters of 164 bits, and the NEXT
region it shares with the 168. Capped candidates remain unresolved. Another
fusion of the kind the reader uses is a promising constructive route:
work that two parts of the interpreter need, computed once where its value is
right for both, or a Scott structure whose own application supplies an
argument.

Open:

- readers outside the classes bounded in §5: other reader heads, joint
  handler/skip changes, exploitation of actual NEXT/parser behaviour, and
  readers with a different `next` protocol beyond those priced in §3 and §6;
- the reader's diagonal `R Z →* next next` (§2): the 165 already contains the
  self-application a knot needs, and a sub-165 along this line would have
  `next`'s zero arm serve as the knot's generator. Built with a separate
  carrier it works at 192 and 199 bits; making `next` do both while keeping
  its Boolean cases is unsolved, and the exclusions of §5 rule out the
  current `next` and parser doing it unchanged;
- the capped fills of §3 (4,052,176 in the joint reader search, 7,790 in the
  handler, 218 in whole APP) and of §4;
- an unconditional lower bound beyond 37 bits (`global-floor.md`). The
  minimum nonlinear-binder count two is attained, so counting more such
  binders cannot close the gap, and the 37-bit argument's next inventory
  (seven leaves) admits a third nonlinear binder or a capture across the
  width witness. The remainder projection gives at most 62 even if its own
  minimum were 70, and a 45-bit partial reader meets every zero-stream
  obligation the known proofs use (`remainder.md`). A quantitative theorem
  must account for connections, live captures, and quotation-origin
  restrictions without incorrectly adding costs of computations that share,
  in particular an application-sensitive charge for the residual control
  that consumes exactly one more source after a left child. Code copying is
  necessary, but different output binding roles can all descend from one
  original binder (`structural-bounds.md`).

## 8. Reproduce

| instrument | what it runs |
|---|---|
| `tools/self-interpreter/battery.py` | the exact contract on 668 programs (`--max-bits`, `--uni`, `--strict`) |
| `tools/self-interpreter/merges.py` | the 165, its nearest variants, the 168's protocol variants, and the variants of §6 |
| `tools/self-interpreter/polish.py` | battery, then the optimal let structure (`blam golf letopt`) of a candidate; a new algorithm's size is its letopt minimum |
| `tools/self-interpreter/theory/floor37/verify.py` | the 108 residual layouts and the kernel-checked clauses of `global-floor.md` |
| `data/self-interpreter/reasoning_floor/` | the second round of reasoning lanes: floors, knot and remainder theorems, and the variants of §6 they built |
| `data/self-interpreter/reasoning_165/` | the proofs and checks behind §2's identities, §5's shape bounds and exclusions, and §6's variants |
| `blam golf letopt`, `blam golf component` (lab) | let structure and βη component (`--contextual`) |
| `blam selfint hole` (lab), `tools/self-interpreter/sketches.py` | one- and two-hole searches, including the 165's reader slots |
| `blam selfint ctx` (lab) | contextual slot searches in the 168 |
| `blam slots var168\|abs168\|app168` (lab) | parametric slot searches (`slots.md`) |
| `tools/self-interpreter/module_bound.py` | the 168's module grammar (`assemble`, `audit`) |
| `tools/self-interpreter/search_fix.py` | the knot search |
| `tools/self-interpreter/beta_search.py` | the Python βη component reference |
| `tools/self-interpreter/theory/` | bounded checks for explicit structural witnesses and protocol equations; no candidate search |
| `lake build` in `lean/` | interpreter and remainder witnesses; normalization, capture, origin, beta-cost, zero-stream and head-projection theorems |
| `data/self-interpreter/searches_165.json` | commands and totals of the joint searches of §3 |
