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
lab instruments `blam selfint letopt | ctx | component`
(`src/cli/selfint/`). Logs are in `data/self-interpreter/`.

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

`blam selfint component` ports `beta_search.py` move for move and reproduces
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
