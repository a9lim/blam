**Verdict:** one closed 164-bit candidate, paper-derived, not in §5/§6. Parser equations on the three tags match the 165’s. Battery not run.

## Candidate (164)

```
(\x. x x) (\x. (\intL. \cont. \list.
    list (\bit0 \r. bit0 r (\t. cont r (r r t)))
         (\bit1. intL (\exp. bit1
           (cont (\args \arg. exp (\zx \zy. zx arg (zy args))))
           (intL (\exp2. cont (\args. exp args (exp2 args)))))))
  (x x))
```

Association is the 165’s: `bit0 r (\t. …)` means `(bit0 r) (\t. …)`, and `r r t` means `(r r) t`.

**L=16, A=24, X=34, |M| = 2·16 + 4·24 + 2 + 34 = 164.**

Lambdas (16): knot `x`,`x`; `intL`; `cont`; `list`; `bit0`; `r`; `t`; `bit1`; `exp`; ABS `args`,`arg`,`zx`,`zy`; APP `exp2`,`args`. One fewer than the 165 (`next` gone; `t` replaces `unused`).

Applications (24): knot/`x x`/intL-let/`(x x)` (4); reader `list H T` (2); handler `bit0 r`, `(bit0 r)(λt.…)`, `cont r`, `r r`, `(r r) t` (5); first parse + `bit1 ABS APP` (3); ABS 5; APP 5. The 165’s next-let (1), skip (2) and `r next` (1) are gone; the variable arm adds three apps. Net −1.

Index sum (34):

| occurrence | 0-based index |
|---|---:|
| `list` | 0 |
| `bit0` in `bit0 r` | 1 |
| `r` in `bit0 r` | 0 |
| handler `cont` (`t`,`r`,`bit0`,`list`,`cont`) | 4 |
| `r` in `cont r`; two `r`s in `r r`; `t` | 1+1+1+0 |
| first `intL` (`bit1`,`list`,`cont`,`intL`) | 3 |
| `bit1` | 1 |
| ABS `cont` (`exp`,`bit1`,`list`,`cont`) | 3 |
| ABS `exp`; cell `zx`,`arg`,`zy`,`args` | 2 + 1+2+0+3 |
| second `intL` (`exp`,`bit1`,`list`,`cont`,`intL`) | 4 |
| APP `cont` (`exp2`,`exp`,`bit1`,`list`,`cont`) | 4 |
| APP `exp`,`args`,`exp2`,`args` | 2+0+1+0 |
| knot `x`s | 0 |

Sum 1+4+3+3+1+3+2+6+4+4+3 = 34.

De Bruijn (0-based) of the same tree:

```
(λ. 0 0) (λ. (λ. (λ. (λ.
  0
    (λ. λ. 1 0 (λ. 4 1 (1 1 0)))
    (λ. 3 (λ. 1
      (3 (λ. λ. 2 (λ. λ. 1 2 (0 3))))
      (4 (λ. 4 (λ. 2 0 (1 0)))))))
  ) (0 0))
```

Against the 165 (17, 25, 29): Δ = 2(−1)+4(−1)+(34−29) = −1.

## The move

The 165’s third reader argument is the hoisted skip `s s s`. Here it is the NEXT body:

```
T = \bit1. intL (\exp. bit1 ABS APP)
```

Handler: `\bit0 \r. bit0 r (\t. cont r (r r t))`.

1. **0-tag Scott supply.** `H K r T = r T`, and `r = cons b2 r2`, so `r T = T b2 r2`, the 165’s `r next`.
2. **Unary skip erases T.** For any `U = 1^k 0 ++ N` (including k=0), `U U = K N`, hence `(U U) T = N`. The variable tail `r` is such a unary, so `r r T = N` and T is not evaluated on that arm.

NEXT sits where one expression is right for both arms: used as the 0-arm continuation, erased as the variable-arm skip dummy. Skip `list list list` and the `next` let both go.

**Not in §5 or §6.** Closest listed neighbours:

| listed | bits | difference |
|---|---:|---|
| next inlined into Z, skip still `s s s` | 170 | NEXT under `\unused \r`, extra depth +4 |
| `next = \l. l B`, zero arm `\u. next` | 168 | skip still `s s s` |
| `next = \u \r. r B` | 171 | skip still `s s s` |
| skip `list list next` | 166 | skip still a 3-combinator; Z still `\u \r. r next` |
| spine3 `s (λb. b b C) (s s s) P` | 158 fail / 178 | extra outer P |
| Palmer 168 | 168 | reader `s H`, skip rebuilt from `list1` |

§5’s reader bound assumes a skip with the stop-at-first-zero law and rigid `next`. Here `T` is the actual NEXT body, so that bound does not apply. The joint handler×skip search through 164 only fills small `S` in the reader frame (H+S ≤ 36 bits); NEXT is ~90 bits and was not a fill of that hole.

## Parser law

After the knot, `P[C] s = s H_C T_C` with

```
H_C    = \bit0 \r. bit0 r (\t. C r (r r t))
T_C    = \bit1. P[\exp. bit1 A_C(exp) B_C(exp)]
A_C(f) = C (\args \arg. f (\zx \zy. zx arg (zy args)))
B_C(f) = P[\exp2. C (\args. f args (exp2 args))]
```

`P[C] (cons b r) = b r (\t. C r (r r t)) T_C`. Cell and APP lift are the 165’s. Claim: `P[C] (⌜M⌝ ++ N) =β C [M] N` with the 165’s values (`[var n]` = unary tail, ABS/APP closures as in the 165) and remainder exactly `N`. Closed `M` then gives the contract.

**Variable `1^n 0 ++ N` (n ≥ 1).** `s = cons F r`, `r = 1^{n-1} 0 ++ N`.

```
P[C] s = (\t. C r (r r t)) T_C = C r ((r r) T_C)
```

`r` is a unary (a 0-tag stream when n=1), so `r r = K N` and `(r r) T_C = N`. Value `r`, remainder `N`. Lookup unchanged: `r cell = b' arg (r' args)`.

**Abstraction `00 ⌜M⌝ ++ N`.** `s = cons K r`, `r = cons K (⌜M⌝ ++ N)`.

```
P[C] s = r T_C = T_C K (⌜M⌝ ++ N) = P[\exp. A_C(exp)] (⌜M⌝ ++ N)
```

By induction: `A_C([M]) N = C (λargs λarg. [M] (cell arg args)) N`. Remainder `N`. This is the 165’s ABS return.

**Application `01 ⌜M⌝ ⌜K⌝ ++ N`.** `s = cons K r`, `r = cons F (⌜M⌝ ++ ⌜K⌝ ++ N)`.

```
P[C] s = r T_C = T_C F (⌜M⌝ ++ ⌜K⌝ ++ N) = P[\exp. B_C(exp)] (⌜M⌝ ++ ⌜K⌝ ++ N)
```

Induction on the first child, then the second: `C (λargs. [M] args ([K] args)) N`. Remainder `N`. This is the 165’s APP return.

Knot, cell, and APP lift are untouched, so the 165’s induction transfers, including divergent sources: remainders come from `(r r) T = N` or from an inductive call that already returns its suffix.

## Near-miss (same handler, `next` let-bound, 168)

```
(\x. x x) (\x. (\intL. \cont.
   (\next. \list.
     list (\bit0 \r. bit0 r (\t. cont r (r r t))) next)
   (\bit1. intL (\exp. bit1
     (cont (\args \arg. exp (\zx \zy. zx arg (zy args))))
     (intL (\exp2. cont (\args. exp args (exp2 args)))))))
 (x x))
```

L=17, A=25, X=32, size 168. Same equations with `T = next`. NEXTBODY is outside `\list`, so its `intL`/`cont` depths match the 165; the let costs λ+app+the `next` leaf (index 1). Inlining under `\list` only adds +1 depth to four NEXT occurrences (+4) and drops the handler’s `next` binder (−1) and the `next` leaf (−1): net X +2, −1 λ, −1 app, 168−4=164.

This 168 is not Palmer’s term. It is the same fusion with NEXT as a variable rather than inlined.

## Rejected (already listed, or larger)

- Zero arm `\r. r next` (162): extra `S` at rigid `C`. §3, fails all 667.
- `bit0` as `K` dropping unused (166): listed.
- Reader `s H` with `H = \b \r. b (r next) (cont r (r r next))`: correct, L=16 A=26 X=33 = 171.
- `H = \b. b (\r. r) (\r \t. cont r (r r t))`: splits the shared `\r`; extra λ.
- `H = \b \r. b r (cont r (r r r))` plus extra T: variable arm is `C r N T`. Spine3-bare shape.
- Cell/APP alias, mode-free builder, `r intL` selected component, arity switch, reader/handler knots, thunked rest: §5/§6.

If the 164 fails constructors, ABS/APP were mis-copied (they are the 165’s, with unused `list` in scope). If it fails variables only, `(r r) t` is not `N` on some unary; `U U = K N` is in interpreter.md §2. If arity fails at rigid `C`, `t` is not consuming T; λt is there for that.

Not a passing-battery claim. It is a 164-bit closed term whose three-tag equations are the 165’s, by a fusion §3 and §6 did not measure: NEXT is the reader’s third argument.
[gaslamp] job: gk-20261021-013506-95f8 · session: 01a15cf4-c2e1-72f2-9ea9-288800cbe355 · thread: overnight-grok · resume: gaslamp grok --thread overnight-grok · model: grok-4.6 (billed grok-4.6-build) · tok: 574k→49k · $0.75
