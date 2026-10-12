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
