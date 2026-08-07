# Design theory: why 170 bits is a local optimum

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

## Exhaustive knot search (`search_fix.py`)

Treat the interpreter body as an opaque zero-cost atom `H` and
enumerate every closed BLC context around it:

- 7,458 contexts below 20 bits: **no** weak-head self-reproducing knot.
- 14,803 contexts through 20 bits: **exactly one** survivor —
  the incumbent `(\a.a a)(\a.H(a a))`.

Proved scope: contexts whose weak-head reduction exposes `H Y` with
`Y` equal to an earlier state on the reduction path. Not covered:
knots entangled with the interpreter body, or more exotic
β-convertible cycles.

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
