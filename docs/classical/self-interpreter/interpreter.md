# The 168-bit self-interpreter

This is the record of what is known about the size of BLC's
self-interpreter: its anatomy, every search run against it, and the exact
boundary of what those searches prove. The universal machine, whose contract
differs, has its own record in `universal.md`; the parametric slot searches
are specified in `slots.md`. Logs are in `data/self-interpreter/`.

## 1. The object

The self-interpreter `E` satisfies

```text
E C (⌜M⌝ ++ N) = C (λz. M) N
```

for closed `M`, a rigid continuation `C`, and a rigid remainder `N`. The
current minimum is Sean Palmer's 168-bit `int.lam` (tromp/AIT `2cfa384`).
It is one β-expansion of Tromp's 170: the zero-branch continuation
`\bit1. …` is let-floated out from under `\list \bit0 \list1` to sit just
inside `\cont`. The let costs one λ and one application (+6 bits) and saves
8 bits of de Bruijn depth, so the size identity `|M| = 2L + 4A + 2 + X` reads
`L = 16, A = 26, X = 30` against the 170's `15, 25, 38`.

**Nothing below 168 is known.** The let-structure, βη, module, and joint-hole
searches also find no other 168. The evidence, by lane, is §3–§5. It is not an
unconditional optimality proof: the module bound of §4 is a theorem only
inside a module grammar, and §6 lists what remains unsearched.

`tools/self-interpreter/battery.py` is the exact contract check: rigid
continuation and tail, every closed program through 18 bits plus deep-index
extras. Of its 668 programs, the one whose expected result has no normal form
is skipped and 667 must pass. It compares β-normal forms, so an interpreter
correct only up to η fails it (one with arguments before environments
measures 237 and passes a separate βη audit). Every complete interpreter size
below is measured (compiled, then the battery) unless marked otherwise, and
`tools/self-interpreter/merges.py` re-measures the nearest variants.

## 2. Anatomy

Itemized, the 168 spends its bits as follows:

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

The index sum splits as cell 6, the rest of ABS 4, APP 9, NEXT header 3,
dispatch 8. The conventions it rests on are fixed by the contract and the
stream encoding:

- the continuation's `(exp, rest)` order and `\args` before `\arg` come from
  `E C (⌜M⌝:N) = C (λz.M) N`;
- the cell's `zx`/`zy` order comes from the stream's bit polarity;
- `cont` before `list` is what lets three η-reductions happen.

A let costs 6 bits, so it must save at least 7 in depth to pay off. A smaller
interpreter must therefore delete an operation, rearrange the term along a
path that climbs well above 168 (§3), or change a protocol (§5).

## 3. Neighbourhood searches

These searches stay inside the 168's algorithm: every move preserves
β- or βη-equivalence, so a smaller term found would be correct by
construction (and would still face the battery).

### Let structure (`blam golf letopt`)

Inlining every let except the knot gives a 179-bit core with `x x` at both
recursive call sites. A *cut* moves the subterm at one or more core positions
into a let bound just above an ancestor node; any name the moved subterm needs
that is not in scope there becomes a parameter, so one cut is let-floating and
λ-lifting together. Identical binder-free positions may share a cut, which is
how `intL = x x` arises, and cuts nest freely. Each configuration is rendered
at its exact optimum: parameters ordered by use count, η-peelable ones
dropped, lets sharing a node tried in every order. A sampling test inlines
20,000 random renderings back to the core and checks exact equality and the
size accounting, so every rendering is β-equal to the core.

The core has 468 candidate cuts (12 shared). Exhaustively, with no size
ceiling along the way (`letopt_168.log`):

| cuts | valid configurations | smallest |
|---:|---:|---:|
| 0 | 1 | 179 (the core) |
| 1 | 468 | **170**, Tromp's interpreter (the `x x` share) |
| 2 | 89,785 | **168**, Palmer's, uniquely |
| 3 | 10,181,950 | 173 |
| 4 | 789,542,687 | 179 |

Around the 168 (`--around 4`, `letopt_168_around.log`), its own two cuts plus
one to four more give at least 173, 179, 185, and 192 bits over 182,418,093
configurations at +4. Each further let or λ-lift on the 168 costs 5–7 bits.

### βη component (`blam golf component`)

The component search explores a term's connected component under single
moves, keeping every term at or below `|T0| + slack` bits:

- **reduce** any β-redex, duplicating if it must; **η−** and **η+**;
- **abstract** one occurrence, or all occurrences, of a subterm whose free
  variables point above some node `N`: `N → (\v. N[S := v]) S` (the let-float
  that produced the 168);
- **anti-unify** two subterms under `N` that share a skeleton `G`:
  `N → (\g. N[S₁ := g A₁…, S₂ := g A₂…]) (\x⃗. G)`, a macro for two
  abstractions and a CSE, so helpers in the style of `cons'` and `skipvar`
  are one step away instead of about 15 bits uphill.

Each expansion is checked by reducing the redex it introduced back to the
exact predecessor. From the 170 the 168 lies in the component at slack 0.
From the 168:

| slack | ceiling | component | below 168 | ties |
|---:|---:|---:|---:|---:|
| 4 | 172 | 10 | 0 | 0 |
| 8 | 176 | 227 | 0 | 0 |
| 12 | 180 | 2,717 | 0 | 0 |
| 16 | 184 | 115,182 | 0 | 0 |
| 20 | 188 | 2,011,848 | 0 | 0 |
| 24 | 192 | 25,405,902 | 0 | 0 |

Slack 16 takes 1.5 s, slack 20 40 s, and slack 24 7.8 minutes of search
(33 minutes wall in all, 4.5 GB peak footprint).
An arithmetic pre-check (per-position free-index histograms) skips
out-of-ceiling abstractions and anti-unifications without building them.
`tools/self-interpreter/beta_search.py` is the Python reference: it reproduces
the components through slack 16 exactly (`betasearch_168.log`), and a Rust
regression test pins the first three. Anti-unification contributes 1 term at
slack 16 and 25 at slack 20; growth per 4 bits of slack is 42×, 17×, then
12.6×.

The 168's nearest neighbours sit at +2: the 170, one reduction away, and a
term binding `intL = a a` inside the floated continuation instead of around
`\cont`, reached by inlining that binding (171) and re-sharing it one level
down.

`--contextual` flags the 168's boolean binders (`bit0`, `bit1`, `zx`; a test
pins exactly these three) and adds four move kinds for a flagged `b`:
`(b X Y) Z <~> b (X Z) (Y Z)`, `F (b X Y) <~> b (F X) (F Y)`,
`\v. b X Y <~> b (\v. X) (\v. Y)`, and branch specialization. These
equalities hold on the inputs the interpreter actually receives, not in βη.

| slack | distinct terms | flag-carrying states |
|---:|---:|---:|
| 4 | 42 | 42 |
| 8 | 843 | 2,338 |
| 12 | 15,518 | 116,832 |
| 16 | 537,227 | 4,162,503 |
| 18 | 2,156,068 | 16.8 million |

Three 169-bit neighbours appear at slack 4; nothing goes below 168 and there
is no tie (`component_168_contextual*.log`).

The component is blind by construction to anything not βη-equal to the 168,
including data-representation changes like the 206 → 170 `cons'`/`skipvar`
rewrite and internal calling-convention permutations that keep the external
contract but change the β-class.

### The knot (`tools/self-interpreter/search_fix.py`)

With the interpreter body as an opaque zero-cost atom `H`, every closed BLC
context around it was enumerated. The 7,458 contexts below 20 bits contain no
weak-head self-reproducing knot; among the 14,803 through 20 bits the only one
is the 168's own `(\a.a a)(\a.H(a a))`. The scope is contexts whose weak-head
reduction exposes `H Y` with `Y` equal to an earlier state on the path; knots
entangled with the body are not covered (§5 attacks those).

## 4. Slot and module bounds

### Parametric slots

VAR, ABS, and APP are each the unique survivor of an exhaustive search in the
168's own frames, with no residual unknowns (`slots.md`).

### Contextual slots (`blam selfint ctx`)

Parametric searches exclude fragments that work only because of what the
frame variables are at run time: in the ABS branch `bit1` is `true`, in APP it
is `false`, `x x` is `intL`, and in VAR `list` is `(false : list1)`, so
`list bit0` is `list1`. `ctx` splices each candidate into the 168 and accepts
it only if the interpreter then meets the exact contract on 91 probe
programs: every closed term of 4..14 bits plus the battery's deep-index and
reducible extras. The check normalizes `\c \n. E' c (⌜M⌝ ++ n)` against the
reference's normal form with `c` and `n` rigid. Enumeration requires only the
frame variables whose information cannot reach the result any other way:
`cont`, the sole route to the rigid continuation, and `exp` in ABS/APP, the
sole route to the parsed subterm (each slot's `must` in `ctx.rs`).

Candidates strictly smaller than the reference:

| slot | frame | reference | candidates | survivors | unknown |
|---|---:|---:|---:|---:|---:|
| VAR, with a direct `cont` | 7 | 22 | 2,433 | 0 | 1 |
| VAR, unrestricted | 7 | 22 | 56,703 | 0 | 81 |
| APP's value `\args. exp args (exp2 args)` | 6 | 19 | 1,158 | 0 | 0 |
| `cons'` cell | 7 | 24 | 30,428 | 0 | 0 |
| APP | 5 | 35 | 21,555,108 | 0 | 3 |
| ABS | 5 | 40 | 558,135,222 | 0 | 1,983 |
| dispatch handler, with a direct `cont` | 5 | 42 | 2,563,792,977 | 0 | 162,309,366* |
| dispatch handler, unrestricted, through 35 bits | 5 | 42 | 163,041,847 | 0 | 12,071,331 |

"Unknown" means the candidate passed or ran out of budget on every probe,
after 512× the reference's budget plus the divergence oracle and the
escalation engine; it is not a survivor. The VAR unknowns re-parse the same
stream forever with a growing continuation. Of the APP unknowns,
`cont (intL intL (intL exp) intL)` is refuted by Church–Rosser: on a
top-level application it returns `c X ⌜N⌝++n`, never `c (λz. M N) n`. The
other two, `intL intL (intL exp) intL cont` and its `exp`/`cont` swap, halt
correctly on application-free programs and exhaust the escalation engine at
10× its capacity and 4× its work meter on `(\1 1)(\\1)`. The ABS unknowns
sampled are Ω-shaped self-applications of `intL` partials, such as
`(\l. l l) (intL (intL exp) (intL cont))`.

In VAR and the handler `next` is in scope and captures `cont`, so requiring a
direct `cont` there narrows the search; the unrestricted rows are the sound
contextual statement, and the handler's runs only through 35 bits
(interpreters ≤ 161). \* The restricted handler run stops a candidate after
three budget-exhausted probes and does not escalate a size with more than
20,000 unknowns, so its unknowns are "no failing probe before three caps",
mostly handlers that ignore the stream and recurse.

### A conditional lower bound (`tools/self-interpreter/module_bound.py`)

Split the 168 into modules along the partition of §2, and enumerate each
module exhaustively at its own de Bruijn depth: every term up to the
reference size, redexes and discarded code included. Neighbouring modules are
replaced by fresh rigid symbols, and a module passes when its β-normal forms
on rigid probes equal the law it must satisfy.

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

All searches are exact, with no unresolved reduction; a repeated
normal-order state counts as a proof of looping. `audit` re-normalizes every
probe with an independent normalizer and a sample with the Rust machine
(70,645 and 543 checks, no disagreement). Results are in
`data/self-interpreter/module_bound/`.

The cell law is the weakest one reachable: it asks only for the two
behaviours that `λx.x` and `λx.λy.x` expose, on a real unary suffix and a
self-built environment. APP's lift needs 19 bits even when tested only on
closed subterms: the parser forces their values to be `K F` and `K G`, and
four closed pairs reject all 5,131 smaller candidates.

**The grammar is narrower than all interpreters, and the gap is exact.**

- modules are opaque;
- neighbours are rigid when a module's law is checked, which is stronger than
  the public contract;
- the capture layout is the 168's: `next` named, the handler under
  `\list \bit0 \list1`;
- the knot treats the body as opaque.

A smaller interpreter must break one clause: fuse control across modules,
share work between them, change the capture layout, or entangle the knot with
the body. It need not abandon CPS, stream-valued variables, or the public
contract. The capture layout is worth at most 8 bits: re-searching five
modules with only their own live variables in scope (`*_packed`) gives 160 in
all,

| module | in the 168 | own variables only | extra depth in the 168 |
|---|---:|---:|---|
| VAR | 22 | 19 | `cont` crosses 3 binders |
| dispatch | 20 | 19 | `next` crosses `list` |
| NEXT | 17 | 16 | `intL` crosses `cont` |
| ABS | 40 | 39 | `cont` crosses `bit1` |
| APP | 35 | 33 | `intL`, `cont` cross `bit1` |

but these frames cannot coexist in one lexical tree, and `letopt` has priced
every let structure of up to four cuts that trades on this tax (§3).

### Joint holes (`blam selfint hole`)

`blam selfint hole TEMPLATE` takes the wire bits of any interpreter with a
`_` hole, and optionally a second hole `~` searched jointly, and enumerates
every fill under the same exact contract as `ctx`, with goldens from the 168.
A hand-made protocol change in one place can thus be paired with an
exhaustive search for the compensating fragment elsewhere.
`tools/self-interpreter/sketches.py` holds 41 sketches (one control, 37
single-hole variants, and three joint searches); their log is
`sketches_168.log`.

| sketch | fills | result |
|---|---:|---|
| 12 variable values (`list`, `list1 list1`, `bit0 list1`, `list1 next`, …) × cell ≤ 25 | 110,510 each | only `list bit0` (= `list1` in context): cell 24, and the 25-bit K-repair |
| 10 cells (leaky, Scott and flipped, selK, `cons'` flips, `\zx. zx arg`, …) × variable value ≤ 14 | 533 each | only selK, at 170 |
| the same 10 cells × whole VAR ≤ 24 | 16,096 each | only selK, at 170 |
| 169 K-repair frame × APP value ≤ 17, × VAR ≤ 21 | 2,904; 2,433 | only the frame's own APP value (169); no VAR, 1 capped |
| 169 η-handler frame × VAR function ≤ 21, × zero branch ≤ 11 | 4,382; 102 | no VAR function, 18 capped; only the frame's own zero branch (169) |
| 169 select-first frame × APP continuation ≤ 34 | 25,452,149 | nothing below 168 |
| **joint** variable value ≤ 12 × cell, sum ≤ 26 | 795,310 pairs | only the 168's (2 + 24) |
| **joint** cell × APP value body, sum ≤ 41 | 78,240,524 pairs | only the 168's (24 + 17) |
| **joint** VAR × APP value body, sum ≤ 39 | 2,830,368 pairs | only the 168's (22 + 17) |
| whole NEXT structure × VAR | 651,844,225 pairs | only the 168's; 379,648 capped |
| dispatch reader × APP continuation | 271,637,651 pairs | only the 168's; 23 capped, all discharged |
| whole dispatch × APP continuation | 776,816,521 pairs | only the 168's; 5,724,457 capped |
| administration's reader × VAR | 213,338 pairs | only the 168's; 8,998 capped |

The environment, lookup and application protocols are therefore optimal
jointly as well as singly. The capped fills are the re-parsing loops `ctx`
already meets; the 23 discharged caps omit `cont` from APP's continuation, so
their normal forms cannot be headed by `C`.

## 5. Protocol changes

A protocol change alters what an operation passes or expects, so it leaves
the 168's βη class and every search above. Over a hundred have been built and
measured; none goes below 168.

### Operation merges

| idea | saves | obstacle |
|---|---:|---|
| Return the rest as a thunk: `list1 list1` is literally `K rest`, so VAR could be `cont list1 (list1 list1)` | 4 | Every term ends in a variable, so every rest becomes a thunk. `intL` then needs a uniform force `D` with `D b l h = h b l` in `list D H`; even a one-leaf `D` costs an application and a leaf (≥ 4 bits), so the trade breaks even at best. And `C` must receive `N`, not `K N`. |
| Scott-pair environment `\f. f arg args` | ~12 | Stream-driven lookup flips orientation each step; a self-passing lookup helper costs ~45+. |
| Leaky cell `\zx. zx arg (\zy. zy args)` | 2 | Lookup returns `x rest`. Absorbing it needs K-wrapped values, but λ-values escape to `C` and must be genuine functions of raw arguments. The repairs `\zx. zx (\u. arg) (\zy. zy args)` and `\zx. zx (zx arg) (\zy. zy args)` are 169 and 170. |
| Variable value `list` (keep the leading 1) | — | Off by one in the environment; the repair costs a second cell. The zero branch still binds `list1`, so even a free repair saves nothing. |
| Destructured rest (`cont exp b l`), dropping `\list. list H` | 6 | `next` loses its η over the tail (+6 plus depth), and `E` needs adapters on both sides of the contract. |
| Parse under the binder: direct values, so APP is `f a` and the variable is `list1 env` | large in APP/VAR | Threading the environment and reparsing ABS bodies cost more; as a universal machine it measures 226 against 178. |
| Share one combinator between the cell and APP (both have skeleton `a b (c d)`) | 5 | The let plus a four-λ definition costs ~32. |
| Select the ABS/APP continuation before the first parse | — | 169. |
| η-reduce the handler: `\bit0. bit0 (\l. l next) (\l. cont l (l l l))` | — | 169. |

The binding constraint is the contract, twice over. λ-values must be genuine
functions, which rules out every cheaper cell; and `C` must receive the real
`N`, which rules out the thunk.

### Measured protocol variants

Unless marked, each passes the battery and is larger.

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
| Variable value `list` with `cons'` cells | 170, *fails* | lookup starts one cell too far |
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
| Cell/APP alias: APP's value `\args. args exp exp2`, since `cell a e (K M) (K P) = M P` | 164, *fails* | fails 577 programs: at the root the environment is the contract's arbitrary `z`, and inside an environment `λz.I` equals the input bit `1`, so one call cannot be both a lookup and an application; no cell of any size repairs the alias, and none of 402,644 cells up to 27 bits does |
| **Control and calling convention** | | |
| `next` inside `\list` | 170 | +2 of depth |
| Parser takes the stream first | 201–208 | recursive calls lose η over the stream |
| Handler signatures with `cont` (all orders) | 192–255 | adapters between stream fields |
| Continuation gets `rest, value` | 214 | ABS keeps its rest; boundary flip |
| Parser returns a cell `\c. c value rest` (either field order) | 211 / 226 | explicit rest binders and rebuilt cells |
| ABS's return and APP's second parse share `(bit1 cont intL)` | 172 | one λ fewer, one application more, +2 depth |
| Decide before parsing and η the handler, together | 170 | the two +1s add |
| Optional second parse, no-input parser `\k. k k` | 177 | the tag is still decided inside the value |
| Branch transformers for the ABS/APP continuation | 176 | transformer binders and applications |
| Direct evaluation plus a separate syntax skipper | 293 | two recursive bodies and retained code pointers |
| Explicit mode flags, tag-first dispatch, two continuation slots, `bit1 = KI` as a skipping continuation | 203–219 | the variants that escape the uniform-handler impossibility below |
| **Recursion** | | |
| Self-passing `next` with a shared parser, best of 72 orders | 182 | carrier plumbing exceeds the knot |
| Self-passing `next` sharing the handler | 206 | stream-to-handler adapters |
| Recursion inside the bit handler (24 argument orders) | 202 | recursive entry needs an adapter |
| Recursor passed through continuations, before / after the value | 206 / 204 | callback arguments plus a public adapter |
| Saturated parser passed through callbacks | 200 | keeps the knot, adds plumbing |
| Recursor carried in a Scott cell with the rest or the value | 223–262 | packing, unpacking, restoring the rest |
| A cell holding F performs the knot: `cell(a,e) cell(a,e) = λk. a a (k e e)` | 199 | the continuation receives two extra arguments |
| Knot shared with skip's self-application | 168 | optimization returns the 168 itself |
| Knot shared as a triple self-application | 176, *fails*; 181 | the third self-argument reaches the body |
| Known leading 0 of closed programs at entry | 201 | the specialised entry does not pay for itself |
| Both recursive call heads replaced, with the knot removed | — | 221,930,567 pairs (34 free bits): no survivor |

The last row is the strongest test of recursion without the knot. Two holes
replace both recursive call heads; they can use the stream, its tail, both
tags, the continuation and the first expression, and may build any
self-application within 34 bits. The two pairs that ran out of budget are
excluded analytically: each loses its head normal form before a callback
runs. Two cheaper variants are also clean: with the knot but without the
`intL` let (8,884 pairs), and with `next` inlined too (131,345). Joint
searches that change the knot generator together with the cell, VAR, or the
APP value (873,378, 1,176,245 and 56,803 pairs) find nothing. Two proposed
free carriers erase what they carry:

```text
V_M R = M         a closed value's environment slot
(s s) R = N       skip's ignored argument
```

### Exclusions that hold at every size

- **One handler for both tag bits is impossible.** Using `H c` for the first
  bit and `H (A c)` for the second would delete `next`. That forces
  `E c (0:s) = E (A c) s` and `E c (1:s) = c s (s s s)`. Then `λx.x` gives
  `A (A c) (0:N) N = c (λz.I) N`. Both `I I` and `(K I) I` normalize to `I`,
  so each requires `A c (λz.I) N` to equal `c (λz.I) R`; but they leave
  different remainders R after the misread variable, so no `A` satisfies
  both.
- **`E E = E` is impossible:** the identity program refutes it.
- **A contract-preserving continuation that is also its own knot driver is
  impossible:** M = Ω refutes it.

### Fused control and stream algebra

- **Grammars** with an abstract CPS parser oracle leave only the original
  ordering at each level: first-parse scheduling (1,167,608 well-scoped
  candidates); first-bit dispatch, second-bit read and first parse jointly
  (7,495,488 candidates from 121,080,960 trees); and the same region with ABS
  and APP continuations λ-lifted (2,949,120 candidates, where only
  select-first, at 169, survives).
- **Concrete holes** with `intL` and `x` exposed: reader, post-parse
  selector, whole NEXT, and both orders of the 172's payload, up to 5.4
  million fills each. After two-cut `letopt` every survivor is the 168, a 169,
  or the 172, and the 172 under contextual polishing without η to slack 16
  (188,587 states) has nothing smaller.
- **Stream algebra.** Write `l = 1^k0 ++ N`, with head `b` and tail `r`. Then
  `{l, K N, N-headed spines}` is closed under application:

  ```text
  l l = K N        l (K N) = N r        (K N) X = N
  ```

  So no pure self-application of a stream yields the tag or the first tail on
  its own. A catalogue of 197 applications of `l` alone gives nothing new, and
  `(l l) l` is the unique two-application skip. The 2,419,280 dispatch bodies
  built from applications of `l`, `cont` and `next`, through every size below
  the reference's, include none that handles both `00…` and `10…`.

### Tromp's 170 and its families

The 170 is the one-cut optimum of §3. Its own rearrangement families were
measured in its frame: two-level knot binding `a a` only inside the non-VAR
branch 173 (moving that binding through its five scope positions gives 170,
173, 174, 174, 173), selector-self-absorbing cons 172, shared `cont` via
branch transformers 176, optional-second-parse construction with one `cont`
occurrence 179, direct open-self knot 179. None of these families contains
the 168: binder placement there moved only the existing `intL = a a` binding,
not the zero-branch continuation.

## 6. Boundaries

Everything searched pins the 168 from independent directions: its parts
(each module the unique minimum of its law, summing to 168), its
neighbourhood (βη to +24, contextual moves to +18, let structure to four
cuts, single and joint slots), and over a hundred protocol changes. A sub-168
would need a specific new identity involving the knot variable, the stream
encoding, or semantic values, of the kind `cons'` and `skipvar` were.

Not searched:

- the dispatch handler without a direct `cont`, at 36–41 bits. Going through
  `next` can only deliver ABS- or APP-shaped values to `cont`, so a survivor
  there would be surprising, but the range is open;
- co-designed protocols beyond every search above: a handler and
  continuation designed together with the knot, or explicit modes with
  separate continuation slots. The variants measured in those directions
  (explicit modes 203–219, handler recursion 202–206) cost 34 bits or more
  over the 168.

## 7. Reproduce

| instrument | what it runs |
|---|---|
| `blam slots var168\|abs168\|app168` (lab) | parametric slot searches (`slots.md`) |
| `blam selfint ctx` (lab) | contextual slot searches |
| `blam selfint hole` (lab), `tools/self-interpreter/sketches.py` | one- and two-hole sketch searches |
| `blam golf letopt`, `blam golf component` (lab) | let structure and βη component |
| `tools/self-interpreter/module_bound.py` | the module lower bound (`assemble`, `audit`) |
| `tools/self-interpreter/merges.py` | the nearest protocol variants, against `battery.py` |
| `tools/self-interpreter/search_fix.py` | the knot search |
| `tools/self-interpreter/beta_search.py` | the Python βη component reference |
| `tools/self-interpreter/harness.py`, `lc.py`, `db.py` | compile, splice, and the 10-program battery |
