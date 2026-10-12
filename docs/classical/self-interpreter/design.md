# Design theory: why 170 bits is a local optimum

> **Superseded at 168 (2026-09, recorded 2026-10-11).** Sean Palmer's
> `int.lam` (tromp/AIT `2cfa384`) beats the 170 with a binder move none of
> the families below generated: β-expand the zero-branch continuation
> `\bit1. …` out from under `\list \bit0 \list1` and bind it just inside
> `\cont`. The let costs one λ and one application (+6) and saves 8 in
> de Bruijn depth (`L=16, A=26, X=30` against `15, 25, 38`). The measured
> verdicts below stand for the families they name; the *Inference*
> section's "not another binder move" does not.
> The βη component search below reaches the 168 from the 170 in one
> let-abstraction, and finds nothing smaller than or tying the 168 in
> the 168's own component under 184 bits. Re-searched in the 168's own
> frames, its three slots are again each the unique survivor
> (`results.md`).

The structural question is whether there is a route below the 170-bit
self-interpreter through *global* rearrangement — fixpoint shape,
continuation timing, environment representation — as opposed to the
slot-local searches of `search-spec.md`? All candidates below were
compiled with `tools/blcc.py` and run through the semantic battery;
bit counts are verified, not estimated.

## Verdict

No sub-170 interpreter found. Every credible rearrangement class is
now measured and loses:

| Restructuring | Bits |
|---|---:|
| Current interpreter | **170** |
| Select ABS/APP continuation before first recursion | 171 |
| Repair near-miss with wrapped environment entries | 171 |
| Selector-self-absorbing cons | 172 |
| Two-level knot, bind `a a` only inside non-VAR branch | 173 |
| Shared `cont` via branch transformers | 176 |
| Optional-second-parse construction with one `cont` occurrence | 179 |
| Direct open-self knot | 179 |

## The instructive near-ties

**Two-level knot (173).** The strongest structural rival:

```text
(\a.a a)
(\a\cont\list.
  list (\bit0\list1. bit0
    ((\intL. ZERO-BRANCH[intL]) (a a))
    VAR-BRANCH))
```

Exactly ties the incumbent on structure (`L=15, A=25`); its entire
loss is de Bruijn index depth, `X=41` vs `X=38`. Moving the local
`intL = a a` binding through the five available scope positions gives
170, 173, 174, 174, 173 — the incumbent's placement is optimal within
the family. (Recall the size identity `|M| = 2L + 4A + 2 + X`: with
L and A pinned, the fight is entirely over where binders sit relative
to their uses.)

**Continuation timing (176/179).** APP's delayed recursion vs ABS's
immediate return *can* be made uniform — the 179-bit optional parser
genuinely turns ABS into a zero-consumption parse with a single
`cont` call site — but reusing the tag and constructing the no-parse
path costs more than the deep `cont` reference it saves. The mild
"choose the continuation before parsing" commuting conversion is the
closest alternative at 171.

**The 168-bit cons near-miss has a semantic repair — at 171.** The
wrong 168-bit `cons'` variant leaks the post-variable stream; the
repair stores a constant thunk that absorbs it:

```text
consw = \x\y\zx. zx (\u.x) (\zy.zy y)
```

Correct, compiles to 171. The repair class provably can't win:
removing the shared tail binder saves 2 bits, the necessary constant
thunk costs 3. A lambda-free repair using the selector itself
(`\x\y\zx. zx (zx x) (\zy.zy y)`) is also correct, at 172.

## Exhaustive knot search (`tools/self-interpreter/search_fix.py`)

Treat the interpreter body as an opaque zero-cost atom `H` and
enumerate every closed BLC context around it:

- 7,458 contexts below 20 bits: **no** weak-head self-reproducing knot.
- 14,803 contexts through 20 bits: **exactly one** survivor —
  the incumbent `(\a.a a)(\a.H(a a))`.

Proved scope: contexts whose weak-head reduction exposes `H Y` with
`Y` equal to an earlier state on the reduction path. Not covered:
knots entangled with the interpreter body, or more exotic
β-convertible cycles.

## βη component search (`tools/self-interpreter/beta_search.py`)

Explore the start term's connected component under single moves, keeping
every term at or below `|T0| + slack` bits:

- **reduce** any β-redex, duplicating if it must; **η−** and **η+**;
- **abstract** one occurrence, or all occurrences, of a subterm whose free
  variables point above some node `N`: `N → (\v. N[S := v]) S` (the let-float
  that produced the 168);
- **anti-unify** two subterms under `N` that share a skeleton `G`:
  `N → (\g. N[S₁ := g A₁…, S₂ := g A₂…]) (\x⃗. G)`. This is a macro for two
  abstractions and a CSE, so helpers in the style of `cons'` and `skipvar`
  are one step away instead of roughly 15 bits uphill.

Every move preserves βη-equivalence, and each expansion is checked by
reducing the redex it introduced back to the exact predecessor. So every
term in the component is the same algorithm, and a smaller one would be
correct by construction (the battery runs on it anyway). Tromp's own
optimizer in `blcc.py` is a reduction-only beam search; the expansions are
what this adds.

Positive control: from the 170, the 168 is in the component at slack 0.
From the 168 (`data/self-interpreter/betasearch_168.log`):

| slack | ceiling | component | wall (10 workers, with self-test) |
|---:|---:|---:|---:|
| 4 | 172 | 10 | 0.5 s |
| 8 | 176 | 227 | 7.2 s |
| 12 | 180 | 2,717 | 14.2 s |
| 16 | 184 | 115,182 | 6.0 min |

Nothing below 168 and no tie at any slack: the 168 is the unique minimum of
its component under 184 bits. Its nearest neighbors sit at +2. One is the
170 itself, one reduction away. The other binds `intL = a a` inside the
floated continuation instead of around `\cont`, reached by inlining that
binding (171) and re-sharing it one level down. The component grows 10–40×
per 4 bits of slack.

Out of reach by construction: anything not βη-equal to the 168. That
includes data-representation changes like the 206 → 170 `cons'`/`skipvar`
rewrite and internal calling-convention permutations, such as the order of
`\args \arg` or of the `cons'` selectors, which keep the external `E C ⌜M⌝`
contract but change the term's β-class.

## Inference

170 is locally optimal across fixpoint shape, continuation timing,
cons-cell variants, and binding placement. A genuine improvement now
requires a *global* evaluator/continuation representation change —
something that makes APP's delayed recursion and ABS's immediate
return uniform without branch thunks, or a value representation that
exploits the leaking one-lambda environment cell — i.e. another
`cons'`-scale idea, not another binder move. This matches the
independent floor estimate from the reverse-engineering lane
(165–168 plausible only via a new micro-trick; ~150 needs a new
paradigm).

The slot-local exhaustive searches are complete
(`results.md`): VAR, ABS and APP are each certified optimal with
the reference as unique survivor and zero residual unknowns. No
micro-trick was hiding in the branch bodies. The one mechanical route
left is the contextual lane (`search-spec.md` §2) — and a survivor
there is a hypothesis needing whole-interpreter splice + battery, not
a proof.

## The 168 is operation-minimal (2026-10-12)

Itemized, the 168 spends its bits as follows (`L = 16`, `A = 26`, `X = 30`):

| part | bits |
|---|---:|
| knot and `intL = x x` let | 22 |
| `\cont`, the `next` let, `\list`, `list H` | 12 |
| dispatch `bit0 (list1 next) ·` | 20 |
| VAR `cont list1 (list1 list1 list1)` | 22 |
| NEXT header `\bit1. intL (\exp. bit1 · ·)` | 17 |
| ABS (the `cons'` cell alone is 24) | 40 |
| APP | 35 |

Each of the 26 applications does a distinct, necessary job:

- knot: 3, plus 1 for the shared `intL` let;
- reading and dispatching: read bit0 1, dispatch 2, read bit1 1, the `next`
  let 1, first recursive parse 1, dispatch on bit1 2;
- ABS: return 1, enter the body 1, build the cell 3;
- APP: second parse 1, return 1, `exp args (exp2 args)` 3;
- VAR: return 2, skip 2.

The 16 λs are likewise forced: the knot's two, the two lets, the parser's
`cont` and `list`, the handler's two, `bit1`, `exp`, the λ-value's `args` and
`arg`, the cell's `zx` and `zy`, and APP's `exp2` and `args`.

The index sum is pinned as well. It splits as cell 6, the rest of ABS 4,
APP 9, NEXT header 3, dispatch 8. The conventions it rests on are not free
choices:

- the continuation's `(exp, rest)` order and `\args` before `\arg` come from
  the contract `E C (⌜M⌝:N) = C (λz.M) N`;
- the cell's `zx`/`zy` order comes from the stream's bit polarity;
- `cont` before `list` is what lets three η-reductions happen.

A let costs 6 bits, so it must save at least 7 in depth to pay off; the βη
search above found none within +16.

Consequence: a sub-168 must either delete an operation, or be a βη
rearrangement whose every path from the 168 climbs above +16. Every
operation-level merge tried so far dies on a nameable obstacle. Bit counts
marked *measured* are reproduced by `tools/self-interpreter/merges.py`
against the exact battery in `battery.py`; the others are estimates.

| idea | saves | obstacle |
|---|---:|---|
| Return the rest as a thunk: `list1 list1` is literally `K rest`, so VAR could be `cont list1 (list1 list1)` | 4 | Every term ends in a variable, so every rest becomes a thunk. `intL` then needs a uniform force `D` with `D b l h = h b l` in `list D H`; even a one-leaf `D` costs an application and a leaf (≥ 4 bits), so the trade breaks even at best. And `C` must receive `N`, not `K N`. |
| Scott-pair environment `\f. f arg args` | ~12 | Stream-driven lookup flips orientation each step; a self-passing lookup helper costs ~45+. |
| Leaky cell `\zx. zx arg (\zy. zy args)` | 2 | Lookup returns `x rest`. Absorbing it needs K-wrapped values, but λ-values escape to `C` and must be genuine functions of raw arguments. |
| Variable value `list` (keep the leading 1) | — | Off by one in the environment; the repair costs a second cell. The zero branch still binds `list1`, so even a free repair saves nothing. |
| Destructured rest (`cont exp b l`), dropping `\list. list H` | 6 | `next` loses its η over the tail (+6 plus depth), and `E` needs adapters on both sides of the contract. |
| Parse under the binder: direct values, so APP is `f a` and the variable is `list1 env` | large in APP/VAR | Threading the environment and reparsing ABS bodies cost more. *Measured:* universal machine 226 against 178. |
| Share one combinator between the cell and APP (both have skeleton `a b (c d)`) | 5 | The let plus a four-λ definition costs ~32. |
| Select the ABS/APP continuation before the first parse | — | *Measured:* 169 in the 168's frame. |
| η-reduce the handler: `\bit0. bit0 (\l. l next) (\l. cont l (l l l))` | — | *Measured:* 169. |

The binding constraint is the contract, twice over. λ-values must be genuine
functions, which rules out every cheaper cell; and `C` must receive the real
`N`, which rules out the thunk. Under the universal machine's contract, where
the outermost continuation is ours, the thunk still fails: `intL` then
receives real streams from `next` and thunks from APP's second parse.

What remained open at this point: a βη rearrangement beyond +16; a let
structure whose payoff needs several costly lets at once; and a fragment
that works only in context, which the parametric slot searches cannot see.
The next section searches all three.

## Three follow-up searches (2026-10-12)

The three lanes the operation-minimality analysis left open, run with the
lab instruments `blam golf letopt`, `blam selfint ctx` and
`blam golf component` (`src/cli/golf/`, `src/cli/selfint/`). Logs are in
`data/self-interpreter/`.

### 1. Every let structure of the core (`letopt`)

Inline every let of the 168 except the knot: the result is a 179-bit core
with `x x` at both recursive call sites. A *cut* moves the subterm(s) at one
or more core positions into a let bound just above an ancestor node. Any name
the moved subterm needs that is not in scope there becomes a parameter, so
one cut is let-floating and λ-lifting together. Identical binder-free
positions may share a cut; that is how `intL = x x` arises. Cuts may nest
freely: uses and lets inside moved subterms, and lets inside other lets'
arguments. Each configuration is rendered at its exact optimum: parameters
ordered by use count with η-peelable ones dropped, and lets sharing a node
tried in every order. A sampling test inlines 20,000 random renderings back
to the core to check βη-equality and the size accounting.

The core has 468 candidate cuts (12 shared). Exhaustively, with no size
ceiling along the way:

| cuts | valid configurations | smallest |
|---:|---:|---:|
| 0 | 1 | 179 (the core) |
| 1 | 468 | **170** — 50_ft_lock's interpreter (the `x x` share) |
| 2 | 89,785 | **168** — Palmer's, uniquely |
| 3 | 10,181,950 | 173 |
| 4 | 789,542,687 | 179 |

Around the 168 (`--around 4`): its own two cuts plus any one to four more
give at least 173, 179, 185, and 192 bits (182,418,093 valid configurations
at +4). Each further let or λ-lift on top of the 168 costs 5–7 bits.

So, within let structure, the history is the optimum path: the best one-cut
structure is the 170 and the best two-cut structure is the 168. Every
further let or λ-lift costs at least 5 bits, at any intermediate size. This
replaces the βη search's "unique minimum under 184 bits" with a ceiling-free
statement for this class.

### 2. Contextual slots (`ctx`)

The parametric slot searches (`results.md`) excluded fragments that work
only because of what the frame variables are at run time. In the ABS branch
`bit1` is `true`; in APP it is `false`. `x x` is `intL`. In VAR, `list` is
`(false : list1)`, so `list bit0` is `list1`.

This search splices each candidate into the 168 and accepts it only if the
interpreter then meets the exact contract on 91 probe programs: every closed
term of 4..14 bits plus the battery's deep-index and reducible extras. The
check normalizes `\c \n. E' c (⌜M⌝ ++ n)` against the reference's own normal
form, with `c` and `n` rigid. Enumeration keeps only contextual
obligations: `cont` everywhere, as the only route to the rigid continuation,
and `exp` in ABS/APP, as the only route to the parsed subterm. Candidates
strictly smaller than the reference:

| slot | frame | reference | candidates | survivors | unknown |
|---|---:|---:|---:|---:|---:|
| VAR | 7 | 22 | 2,433 | 0 | 1 |
| APP's value `\args. exp args (exp2 args)` | 6 | 19 | 1,158 | 0 | 0 |
| cons' cell | 7 | 24 | 30,428 | 0 | 0 |
| APP | 5 | 35 | 21,555,108 | 0 | 3 |
| ABS | 5 | 40 | 558,135,222 | 0 | 1,983 |
| dispatch handler | 5 | 42 | 2,563,792,977 | 0 | 162,309,366* |

"Unknown" means the candidate passed or ran out of budget on every probe,
including after 512× the reference's budget plus the divergence oracle and
the escalation engine. It is not a survivor. The VAR unknown, `next cont
list`, re-parses the same stream forever with a growing continuation. Of the
APP unknowns, `cont (intL intL (intL exp) intL)` is refuted by Church–Rosser:
on a top-level application it returns `c X ⌜N⌝++n`, never `c (λz. M N) n`.
The other two, `intL intL (intL exp) intL cont` and its `exp`/`cont` swap,
halt correctly on application-free programs. On `(\1 1)(\\1)` they exhaust
the escalation engine at 10× its default capacity and 4× its work meter.
The ABS unknowns sampled are Ω-shaped self-applications of `intL` partials,
such as `(\l. l l) (intL (intL exp) (intL cont))`.

\* The handler run stops a candidate after three budget-exhausted probes and
does not escalate a size with more than 20,000 unknowns. So its unknowns
are "no failing probe before three caps", mostly handlers that ignore the
stream and recurse.

### 3. βη component in Rust (`component`)

`blam golf component` ports `beta_search.py` move for move and reproduces
its components exactly (10 / 227 / 2,717 / 115,182 terms at slack
4 / 8 / 12 / 16; a regression test pins the first three). An arithmetic size
pre-check (per-position free-index histograms) skips out-of-ceiling
abstractions and anti-unifications without building them. That makes slack 16
take 1.5 s, against 6 minutes in Python.

| slack | ceiling | component | below 168 | ties | wall |
|---:|---:|---:|---:|---:|---:|
| 20 | 188 | 2,011,848 | 0 | 0 | 38 s |
| 24 | 192 | 25,405,902 | 0 | 0 | 7.8 min, 4.5 GB |

Anti-unification contributes 1 term at slack 16 and 25 at slack 20. Growth
per 4 bits of slack falls: 42× (12 → 16), 17× (16 → 20), 12.6× (20 → 24).

`--contextual` flags the 168's boolean binders (`bit0`, `bit1`, `zx`; a test
pins exactly these three) and carries the flags through every move. It adds
four kinds of move for flagged `b`: `(b X Y) Z <~> b (X Z) (Y Z)`, `F (b X Y)
<~> b (F X) (F Y)`, `\v. b X Y <~> b (\v. X) (\v. Y)`, and branch
specialization. These equalities hold on the inputs the interpreter actually
receives, not βη. At slack 4 / 8 / 12 / 16 the contextual component has
42 / 843 / 15,518 / 537,227 distinct terms (42 / 2,338 / 116,832 / 4,162,503
flag-carrying states), against 10 / 227 / 2,717 / 115,182 plain. Three
169-bit neighbors appear already at slack 4; nothing goes below 168, and
there is no tie.

### Where this leaves the 168

Every lane the operation-minimality section named has now been searched
mechanically:

- let structure, exactly up to four cuts;
- βη rearrangement, to +24;
- context-dependent slot replacements, for every slot up to its reference
  size.

None goes below 168, and the 168 has no tie in any of them. A smaller
interpreter would have to change an operation's *protocol*: the stream,
environment, or continuation conventions that the contract and the bit
polarity fix. The table above lists every protocol change tried so far and
why it lost.

## The universal machine (2026-10-12)

For algorithmic information theory the figure that matters is the universal
machine, `U (⌜M⌝ : N) = M N` for closed `M`, rather than the self-interpreter.
Tromp gives two (`ref/AIT/ait/uni.lam`):

```text
178, non-strict:  (\x. x x) F (\x. x x)            = intL dbl
190, strict:      (\a. a F (\b. b (a a))) (\a. a a) = intL (\z. z Ω)
F = \x. (\intL. B) (x x)
```

`B` is the 168's parser body `\cont. …` (146 bits), whose only free variable
is `intL`, used twice. Strict means, in BLC.tex's words, that "any attempt to
apply free indices diverges", so the machine forces closed programs. The 190
gets this by making the base environment Ω.

U's contract leaves the output boundary to us: there is no `λz` and no
external `C`. So any protocol that lost for the self-interpreter only at that
boundary could win here. Every U is `B` plus *wiring* (the fixpoint, the
top-level continuation, the base environment, and any sharing), so the
U-specific question is the cheapest wiring.

### Every wiring (`blam selfint wiring`)

Hold `B` fixed and enumerate every closed context `C[·]` with one hole. The
hole's `intL` may be bound to any enclosing binder; the k-th costs 2k bits.
Each `C[B]` must meet the contract `\n. C[B] (⌜M⌝ ++ n) = \n. M n` on 91
programs, with the reference's normal forms as goldens. The 178 is a 32-bit
context.

- **Non-strict.** All 28,373,474 contexts of at most 32 bits. None of at most
  31 bits survives (14.9M contexts), so no universal machine of this shape is
  below 178. Exactly four 32-bit wirings survive, all 178 bits:

  ```text
  ((\x. x x) F) (\x. x x)          Tromp's intL dbl
  (\a. a F a) (\a. a a)            dbl shared with the knot
  (\a. a a (\x. x x)) F            F F dbl
  (\a. a a a) (\a. a F)            new: G G G = intL G; the continuation is
                                   G = \a. a F, the base environment is F
  ```

  16,420 contexts of at most 31 bits exhausted their budget on three probes
  without failing one. On `λx.x`, the halting ladder proves 12,449 of them
  divergent, which refutes them, since the answer has a normal form. Of the
  4 that halt, 3 give the wrong answer. The fourth,
  `λS. (λf. f (f (B f))) (λg. g S g)`, is right on `λx.x` and provably
  divergent on `λλ1`. The remaining 3,961 are undecided on `λx.x`, `λλ1` and
  `λx.x x`. None halts within 10⁷ β on `λx.x`, where the 178 takes 37 β.

- **Strict.** `--strict` requires the closed contract and, in addition, no
  normal form within 2¹⁶ β on open programs that use their free variable
  (`1`, `2`, `\2`, `1 1`, `\\4`), each terminated by `nil`. That is
  Tromp's KS convention.

  The tail has to be concrete. With a symbolic tail, the first run passed
  `intL (intL intL)` at 182 bits: its base environment is the parser's own
  dispatch handler, so a free variable re-parses the leftover input, and with
  a symbolic tail that gets stuck and *looks* divergent. Terminated by `nil`,
  it halts with garbage on `1`, `\2`, and `1 1` while the 190 diverges. The
  corrected filter rejects the 178 and the 182 and passes the 190.

  Contexts of 33..38 bits (strict machines up to 184 bits): 1,270,679,556
  contexts, no survivor. All four 178-bit wirings fail the strict check. So no
  strict machine of this shape is below 185 bits. Contexts of 39..43 bits
  (about 31 billion, roughly 13 hours) remain; the 190 is a 44-bit context.

### βη and let structure on U itself

`letopt` now detects knots anywhere and lets identical subterms, knot heads
included, share a let. On the 189-bit core of the 178 (510 candidate cuts),
the best size is 180, 178, 178 at one, two, and three cuts: `intL dbl` at
two, and the `dbl`-sharing form at three. On the 205-bit core of the 190
(528 candidate cuts), it is 196, 192, 190, with the 190 itself at three
cuts. `component` from the 178 to slack 20 has 8,527,620 terms, nothing
below 178, and the two sharing forms as its only ties. From the 190 it has
5,563,972 terms, with nothing below 190 and no tie.

A contextual slot search under U's contract was not run. In U, the inner
values, continuations, and environments are exactly those of the
self-interpreter; only the top level differs, and the slots are shared
between the top and every nested level. So a slot candidate correct on
nested programs is correct at the top, and the self-interpreter's `ctx`
results apply unchanged.

### Read

Within wirings around this parser, 178 is optimal for the non-strict
machine, with four tied wirings, and no strict machine is below 185. The
strict premium is a base environment with no normal form on lookup. The
cheap alternatives (`dbl`, `F`, the parser's own handler) all return values
or re-read input. Ω via a shared `dbl` (`\b. b (a a)`, 12 bits over the 178)
is the cheapest found.

## The last push (2026-10-12)

a9 asked for one more round on the 168, aimed at ideas the mechanical lanes
above cannot reach. It ran in two waves of independent Codex sessions,
alongside new joint searches of my own.

- **Wave 1** had four sessions, one lens each: stream puns; values and
  environments; control and recursion; and a wildcard that also tried for
  lower bounds.
- **Wave 2** had five sessions. Each got all of wave 1's replies and chased
  one of its leads:
  - fusing the control region;
  - recursion carried by the stream or the continuation;
  - escaping the lower bounds' assumptions;
  - the universal machines;
  - the strongest optimality statement that can be certified.
- **My own searches:** joint slot searches with a new sketch instrument, and
  the contextual component pushed to slack 18.

Nothing went below 168. What follows is the record. Every complete
interpreter size is *measured* (compiled, then `battery.py` on all 667
programs) unless marked otherwise. `tools/self-interpreter/merges.py`
re-measures the nearest ones.

### Two corrections

- **The leaky-cell repairs are +1 and +2, not +3 and +4.** Measured in the
  168's own frame:
  - `\zx. zx (\u. arg) (\zy. zy args)` is **169**;
  - `\zx. zx (zx arg) (\zy. zy args)` is **170**.

  The 171 and 172 at the top of this file were measured in the 170's
  frame.
- **`battery.py` compares β-normal forms, not βη.** An interpreter that is
  correct only up to η fails it: one with arguments before environments
  measures 237 and passes a separate βη audit.

### A conditional lower bound: the 168 is optimal in a module grammar

`tools/self-interpreter/module_bound.py` splits the interpreter into modules
along the operation-minimality section's partition. It enumerates each
module exhaustively at its own de Bruijn depth: every term up to the
reference size, including redexes and discarded code. Neighbouring modules
are replaced by fresh rigid symbols, and a module passes when its β-normal
forms on rigid probes equal the law it must satisfy.

| module | law (neighbours rigid) | generated | minimum |
|---|---|---:|---:|
| VAR | `c s n` on the unary suffixes `0`, `10`, `110` | 56,703 | **22** |
| dispatch | `D[K, s] = s next`, `D[F, s] = VAR`, two binders | 7,475 | **16 + 4** |
| cell | `T(a,e) K n = a`, `T(a, T(b,e)) F (0:n) = b` | 97,435 | **24** |
| lift | `L e = f e (g e)` | 9,182 | **19** |
| ABS around the cell | `c (\env \arg. f (R arg env))` | 1,967 | **16 + 24** |
| APP around the lift | `p (\g. c (V f g))` | 4,324 | **16 + 19** |
| NEXT around ABS, APP | `p (\f. A f)` / `p (\f. B f)` by tag | 6,426 | **15 + 2** |
| administration | `\c \list. list (H c (J c))` | 122 | **12** |
| knot around an opaque body | keeps weak-head-unfolding the body forever | 14,803 | **20 + 2** |

Every minimum is unique and is the 168's own module. `module_bound.py
assemble` fills the minima into one another and reproduces the 168 bit for
bit, so the bound has no gap:

```text
22 + 12 + 20 + 22 + 17 + 40 + 35 = 168
```

All searches are exact, with no unresolved reduction. A repeated
normal-order state counts as a proof of looping. `audit` re-normalizes every
probe with an independent normalizer and a sample with the Rust machine:
70,645 and 543 checks, no disagreement.

**The cell law is the weakest one reachable.** The cell needs only the two
behaviours that `λx.x` and `λx.λy.x` expose, on a real unary suffix and a
self-built environment. So restricting lookup to what the interpreter
actually sees does not rescue a smaller two-variable cell. Wave 2 also
showed that APP's lift needs 19 bits even when tested only on closed
subterms: the parser forces their values to be `K F` and `K G`, and four
closed pairs reject all 5,151 smaller candidates.

**The grammar is narrower than all interpreters, and the gap is
precise.** Its clauses:

- modules are opaque;
- neighbours are rigid when a module's law is checked, which is stronger
  than the public contract;
- the capture layout is the 168's: `next` named, the handler under
  `\list \bit0 \list1`;
- the knot treats the body as opaque.

A smaller interpreter must break one clause. It need not abandon CPS,
stream-valued variables, or the public contract.

The layout is exactly where slack would come from. Re-searching five
modules with only their own live variables in scope (the `*_packed` cases)
costs 160 in all:

| module | in the 168 | own variables only | extra depth in the 168 |
|---|---:|---:|---|
| VAR | 22 | 19 | `cont` crosses 3 binders |
| dispatch | 20 | 19 | `next` crosses `list` |
| NEXT | 17 | 16 | `intL` crosses `cont` |
| ABS | 40 | 39 | `cont` crosses `bit1` |
| APP | 35 | 33 | `intL`, `cont` cross `bit1` |

160 is not a candidate. These frames cannot coexist in one lexical tree.
For the fixed core, `letopt` has already priced every let structure of up
to four cuts that trades on this 8-bit tax, and the 168 is optimal among
them.

### Joint slot searches (`blam selfint hole`)

`blam selfint hole TEMPLATE` takes the wire bits of any interpreter with a
`_` hole, and optionally a second hole `~` searched jointly. It enumerates
every fill and checks the same exact contract as `ctx`: 91 probes, goldens
from the 168. A hand-made protocol change in one place can thus be paired
with an exhaustive search for the compensating fragment elsewhere.
`tools/self-interpreter/sketches.py` holds the 37 sketches; their log is
`data/self-interpreter/sketches_168.log`.

| sketch | fills | result |
|---|---:|---|
| 12 variable values (`list`, `list1 list1`, `bit0 list1`, `list1 next`, …) × cell ≤ 25 | 110,510 each | only `list bit0` (= `list1` in context): cell 24, and the 25-bit K-repair |
| 10 cells (leaky, Scott and flipped, selK, cons' flips, `\zx. zx arg`, …) × variable value ≤ 14 | 533 each | only selK, at 170 |
| the same 10 cells × whole VAR ≤ 24 | 16,096 each | only selK, at 170 |
| 169 K-repair frame × APP value ≤ 17, × VAR ≤ 21 | 2,904; 2,433 | only the 168's fills |
| 169 η-handler frame × VAR function ≤ 21, × zero branch ≤ 11 | 4,382; 102 | only the 168's fills |
| 169 select-first frame × APP continuation ≤ 34 | 25,452,149 | nothing below 168 |
| **joint** variable value ≤ 12 × cell, sum ≤ 26 | 795,310 pairs | only the 168's (2 + 24) |
| **joint** cell × APP value body, sum ≤ 41 | 78,240,524 pairs | only the 168's (24 + 17) |
| **joint** VAR × APP value body, sum ≤ 39 | 2,830,368 pairs | only the 168's (22 + 17) |

So the environment, lookup and application protocols are optimal jointly as
well as singly. The capped fills are the re-parsing loops `ctx` already
met. The joint VAR × APP search has 12 such VAR fills, as the single-slot
search does. A spot check of the value × cell caps runs out of fuel on
`λx.x`, where the 168 needs 37 β.

The contextual component (the boolean commuting moves, above) now runs to
slack 18: 2,156,068 distinct terms and 16.8 million flag-states under a
186-bit ceiling, with nothing below 168 and no tie. The log is
`component_168_contextual_slack18.log`.

### Protocol changes measured

Grouped by what they change. Unless marked, each passes the battery and is
bigger.

| idea | bits | obstacle |
|---|---:|---|
| **Stream and bits** | | |
| Right-associated skip `l (l l)` | 168, *fails* | returns `N r`; the identity program already fails |
| Skip's ignored argument `bit0` / `next` / `cont` / `intL` | 169–173 | deeper reference than `list1` |
| Read both tag bits before dispatch (with or without `next`) | 193 | VAR still needs `list1`, so `list2` is extra |
| Delay the tag read: `list1 bit0` with bit0 = K | 178 | the tail still needs its own projection |
| Rest as a thunk `l l`, forced at APP and at the boundary | 202 | forcing sites and an output adapter |
| Thunked parser inputs too | 217 | thunk constructors plus adapters |
| Raw suffix returned, skip at parser entry | 247 | sentinels for first parses, two adapters |
| `intL exp` as APP's second continuation | 142, *fails* | an environment reader is not an application continuation |
| `r intL = bit1 value rest`: read with the parser | 164, *fails* | keeps the value for ABS, the rest for APP; loses one each |
| **Values and environments** | | |
| Bare leaky cell | 166, *fails* | `λx.x` alone leaks the rigid `N` into a neutral application |
| Leaky cell, `bit1` (= K in ABS) as the thunk | 174 | `bit1` is deep |
| Leaky cell, environment applied after selection | 171 | `\zx\zy. zx (\u.arg) zy args` |
| Cells ≤ 27 bits that the battery accepts | 168–171 | only the four known forms |
| Function environment `\s. s (\b. b (\u.a) e)`, value `\e. e list1` | 177 | no lookup helper needed; the value adapter costs 7 |
| Environment applied to the code | 183 | adapters on both sides |
| Leading-1-aware environment | 180 | sentinel parameter and forwarding |
| Variable value `list` with cons' cells | 170, *fails* | lookup starts one cell too far |
| K-thunked environments / K-wrapped values / CPS values | 191 / 225 / 242 | forcing everywhere and an external decoder |
| Scott cells with a shared lookup (two orders) | 236 / 243 | a 12-bit cheaper cell, a recursive lookup |
| Indices parsed into Scott selectors by `intL` | 222 | zero/successor parsing and accessors |
| Absolute de Bruijn levels | 449 | depth state and runtime append |
| Lookup fused with skipping the variable code | 296 | larger cells, dummy extensions while scanning |
| Values that also return their code suffix (ABS captures it) | 273 | cell 24 → 36, APP value 19 → 52 |
| … and APP really parsing its argument from that suffix | 286 | runtime parsing machinery |
| APP reparses the captured argument code at evaluation | 199 | a second parser call and its closures |
| Self-skipping semantic capsules (`p p = K R`, `p p p = R`) | 332 | projections and repacking |
| Whole ABS values with leading-1, transposed and self-passing VARs | — | 10,092,839 fills: no survivor, 169 capped |
| **Control and calling convention** | | |
| `next` inside `\list` | 170 | +2 of depth |
| Parser takes the stream first | 201–208 | recursive calls lose η over the stream |
| Handler signatures with `cont` (all orders) | 192–255 | adapters between stream fields |
| Continuation gets `rest, value` | 214 | ABS keeps its rest; boundary flip |
| Parser returns a cell `\c. c value rest` (either field order) | 211 / 226 | explicit rest binders and rebuilt cells |
| ABS's return and APP's second parse share `(bit1 cont intL)` | 172 | one λ fewer, one application more, +2 depth |
| Decide before parsing and η the handler, together | 170 | the two +1s add |
| Optional second parse, no-input parser `\k. k k` | 177 | was 179; the tag is still decided inside the value |
| Branch transformers for the ABS/APP continuation | 176 | transformer binders and applications |
| Direct evaluation plus a separate syntax skipper | 293 | two recursive bodies and retained code pointers |
| **Recursion** | | |
| Self-passing `next` with a shared parser, best of 72 orders | 182 | carrier plumbing exceeds the knot |
| Self-passing `next` sharing the handler | 206 | stream-to-handler adapters |
| Recursion inside the bit handler (24 argument orders) | 202 | recursive entry needs an adapter |
| Recursor passed through continuations, before / after the value | 206 / 204 | callback arguments plus a public adapter |
| Saturated parser passed through callbacks | 200 | keeps the knot, adds plumbing |
| Recursor carried in a Scott cell with the rest or the value | 223–262 | packing, unpacking, restoring the rest |
| Knot shared with skip's self-application | 168 | optimization returns the 168 itself |
| Knot shared as a triple self-application | 176, *fails*; 181 | the third self-argument reaches the body |
| Known leading 0 of closed programs at entry | 201 | the specialised entry does not pay for itself |
| Both recursive call heads replaced, with the knot removed | — | 221,930,567 pairs (34 free bits): no survivor |

The last row is the strongest test of recursion without the knot. Two holes
replace both recursive call heads. They can use the stream, its tail, both
tags, the continuation and the first expression, and may build any
self-application within 34 bits. The two pairs that ran out of budget are
excluded analytically: each loses its head normal form before a callback
runs. Two cheaper variants were also clean: with the knot but without the
`intL` let (8,884 pairs), and with `next` inlined too (131,345). Two
proposed free carriers erase what they carry:

```text
V_M R = M         a closed value's environment slot
(s s) R = N       skip's ignored argument
```

### Fused control, as grammar and as holes

- **Grammars** with an abstract CPS parser oracle. Only the original
  ordering survives at each level:
  - first-parse scheduling: 1,167,608 well-scoped candidates;
  - first-bit dispatch, second-bit read and first parse jointly: 7,495,488
    candidates from 121,080,960 trees;
  - the same region with ABS and APP continuations λ-lifted: 2,949,120
    candidates, where only select-first (169) survives.
- **Concrete holes** with `intL` and `x` exposed: reader, post-parse
  selector, whole NEXT, and both orders of the 172's payload. Up to 5.4
  million fills each. After two-cut `letopt`, every survivor is the 168, a
  169, or the 172.
- **The 172** itself, under contextual polishing without η to slack 16
  (188,587 states), has nothing smaller.

### Stream algebra

Write `l = 1^k0 ++ N`, with head `b` and tail `r`. Then
`{l, K N, N-headed spines}` is closed under application:

```text
l l = K N        l (K N) = N r        (K N) X = N
```

So no pure self-application of a stream yields the tag or the first tail on
its own. A catalogue of 197 applications of `l` alone gave nothing new, and
`(l l) l` is the unique two-application skip. Separately, 2,419,280 dispatch
bodies built from applications of `l`, `cont` and `next` were enumerated
through every size below the reference's 46; none handles both `00…` and
`10…`.

### The universal machines

| idea | bits | result |
|---|---:|---|
| `intL dbl` with `dbl` shared with the knot | 178 | tie |
| Knot generator as the base environment | 179 | |
| Triple self-pass `(\a. a a a) …` | 178 | tie |
| The parser as its own continuation, `E (E E)` | 182 | |
| A cell-returning parser fed back to itself, `(P input) P = M N` | 216 | correct; the transformer parser is too large |
| Handler feedback, `H K v N = M N` | 206 / 204 | correct; handler recursion costs |
| `(\e. e (\v. v (\b. e))) E` | 188, not strict | open `1`, `2` reduce to `I` |
| `(\f. f f (\v. v (f dbl))) G` | 189, not strict | nil erases Ω before it is forced |
| `(\e. e (\v. v (\b r. e))) E` | 191, not strict | `1 1` reduces to `I` |

**A strictness trap.** An environment with no normal form can still fail
strictness after object-level application: free indices alone diverge, but
`1 1` normalizes. Head divergence avoids it. The 190 passes all six
nil-terminated probes.

**Wirings.** Six scoped wiring families around `E`, `G` or `dbl` were
searched through 189 bits: 310,283 fills, with no strict machine below 190.
One family, an arbitrary context around `G` with up to 27 bits, leaves 282
capped. The other searches:

- 1.68 million bodies changed by wave-1 variants: no strict survivor, 2,613
  capped. Its sub-178 non-strict subset is clean.
- 72,504,149 whole-VAR fills under five top continuations: no strict
  survivor, 161,954 capped.

The B-fixed strict contexts of 39–43 bits (30,967,305,647) remain unsearched.

### Read

The 168 is now pinned from several independent directions:

- **its parts:** each module is the unique minimum of its own law, and
  they sum to exactly 168;
- **its neighbourhood:** βη to +24, contextual to +18, let structure to
  four cuts, single and joint slots;
- **over a hundred protocol changes**, every one measured.

The conditional theorem names the only ways out: fusing control across
module boundaries; sharing work between modules; changing the capture
layout, which is worth at most 8 bits; or a knot entangled with the body.
Wave 2 attacked each of these with joint grammars, joint holes, and
knot-free call heads, and found nothing. Further rearrangement of opaque
payloads has poor prospects. A sub-168 would need a specific new identity
involving the knot variable, the stream encoding or semantic values, of
the kind `cons'` and `skipvar` were.
