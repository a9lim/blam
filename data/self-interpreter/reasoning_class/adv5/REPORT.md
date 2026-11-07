# adv5 report — constructive adversary (wave 5, Claude)

Lane: build a reader with w <= 45 (a sub-162 interpreter at 116 + w) from the
mechanisms the proofs have not priced. **Result: none found; 162 stands.**
One consult, Codex astra in thread `adv5-construct`, two turns. It produced
the G near misses and a complete check that closes the depth-0 shared-let
window (section 3G). Working notes are in NOTES.md §§0–17.

## 1. Interpreters built

None. The lightest new correct reader weighs 52; the record's 47, 48 and 49
remain the nearest correct readers to the 162's 46. Nothing was spliced or
polished, since no reader beats 46. All readers below were checked with
`coord/rd.py` (n = 1..6). Every PASS row also has a direct all-n reduction
from the stream identities.

Correct readers (PASS), with what each one pays for:

| reader | w | mechanism | pays for |
|---|---:|---|---|
| `\s. s (\b t. b t (\u. c t (t t u))) j` | 52 | needed binder: the opened cell part t carries r into the unary output | naming the cell (+9 over `s I`) for a V one bit cheaper |
| `\s. (\x. s I (\u. x (s s u))) (s (\q. c)) j` | 54 | needed binder: a let carrying `c r` above the unary node | linear let, no second use |
| `\s. (\x. s x (\u. s (\q. c) (x s))) (\y. y y y) j` | 60 | cross-role let: one helper is both the first handler and V's N-producer | `\y. y y y` costs 12; it is I on bits and gives `s s s` on the stream |
| `\s. (\h. s h (\u. s (\q. c) (h s))) (\t. t t F) j` | 64 | the same, with `\t. t t F` (exactly `s I`'s values, and `h s = N`) | the let and the 16-bit helper |
| `\s. s ((\n b. b (\u r. r n) c) j) (s s s)` | 52 | redex first operand: the 165 hoisted only to depth 1 | n sits under three binders |
| `\s. s (\b. b I c) (s K j (s s s))` | 53 | zero-lambda parent `s K j = K j / I` under an `R / c r` dispatch | the 25-bit j/N operand |
| `\s. s I (s (\q. c)) (s K j (s s s))` | 53 | the same parent under `s I` (the 169) | the same operand |
| `\s. s (\x. x I (\t u. c t (t t u))) j` | 53 | `s (\x. x I V) = R / V r`: V receives r without naming the cell | V binds t and u under the handler |
| `\s. s (\x. x x (\t v u. c t (v u))) (s s) j` | 58 | `K R / V r` with an absorbing V in the handler | the absorber names r and the operand |
| `\s. s (\b. b (\x y. y x) c) (s (\b t. b (\a k. k a) (t t)) j)` | 69 | zero-lambda parent `T j / N` (R84's X) under one dispatch | building `\k. k j` costs 34 |
| `(\h s. s h (s s s)) (\b. b (\u t w. w u) (\u. c) j)` | 59 | app-rooted reader with j at depth 1 under the handler's own lambda | j arrives before r, so the zero part binds three variables |
| `\s. s (s (\b t. b K)) (\u. s (\q. c) (s s u)) j` | 62 | stream-headed first operand | `s (s (\b t. b K))` equals `s I` on both branches |
| `\s. (\n. s K (s F n) (s (\q. c) (s s n))) j` | 67 | j shared through a depth-1 let, no absorber | the let and two n leaves |
| `(\g n s. s I (\u. s g (g s)) n) (\t. t t c) j` (Codex) | 62 | depth-0 shared let, two uses of G | — |
| `(\g n s. s (\b. b (\u r. r n) g) (s s g)) (\t. c t) j` (Codex) | 64 | depth-0 shared let | — |

Near misses that fail on exactly one side. They are the useful ones:

| term (`G = \t. t t c`) | w | zero | unary | defect |
|---|---:|---|---|---|
| `\s. s (\x. x I c) j` | 28 | `R j` | `c r j` | j where N belongs |
| `\s. s G (s s j)` (Codex) | 34 | `R` | `c r N` | j lost on zero |
| `\s. s G (s s c) j` (Codex) | 39 | `R j` | `c r N j` | surplus j on unary |
| `\s. s I (s (\q. c) (s s s)) j` | 40 | `R j` | `c r N j` | surplus j; the absorber (+6) gives the 162 |
| `\s. (\g. s g (g s)) G j` (Codex) | 42 | `R j` | `c r N j` | the 39 with G shared |
| `(\g n s. s g (g s) n) G j` (Codex) | 46 | `R j` | `c r N j` | the same at depth 0 |

## 2. New exact identities (handwritten; each is a direct head reduction)

Zero stream `s = cons K R`, unary `s = cons F r`, and `r r = K N` for every
unary rest.

1. `s (\x. x x V) = K R / V r`. Zero: `K K V R = K R`; unary: `F F V r = V r`.
   With `V = c`, this gives `K R / c r` in 18 bits at depth 1.
2. `s (\x. x I V) = R / V r`. Zero: `K I V R = R`; unary: `F I V r = V r`.
3. Two-role helpers `H = \t. t t X`: `s H = K R / X r` and `H s = s s X = R / N`.
   - `X = F` reproduces `s I`'s values exactly and yields N.
   - `X = c` is Codex's G.
   - `\y. y y y` is I on bits (`K K K R = K R`, `F F F r = I`) and gives
     `s s s` on the stream.
4. `s (s Q) Y.. = s (\b t. Q b t b t) Y..` for Q free of s. A stream-headed first
   operand is a closed handler that receives its cell twice.
5. `s s V j = R j` on zero for every V, two bits cheaper than `s I V j`. On
   unary it gives `K N V j = N j`. The 2-bit handler `s` is the only handler
   under 4 bits with the zero value `K R`, and its unary value is wrong.
6. Shared-let inlining (Codex's formula; I re-derived it). For
   `(\x. B) A j` with x used m times at binder depths k_i in B, f free c in A
   and q free c in B:
   `w(B[A/x] j) − w((\x. B) A j) = (m−1)|A| + (f−1) Σ k_i − 2m − q − 4`.

## 3. Pricing arguments and exclusions

All of A–F are handwritten. They price the cheapest members I could build,
using local accounting and stated frames. They are not proofs of w >= 46. G is
computer-checked.

**A. The first dispatch fixes the arity.** Frame: depth 1, s-headed body,
closed first handler P. The zero value `P K R` and the unary value `P F r` must
absorb the same operand list, with j among the operands at depth 1:

| zero / unary value (cost of `s P`) | operands forced | cheapest completion | w |
|---|---|---|---:|
| `K R / I` (`s I`, 8) | `(V, j)` with `V j = c r N` | V = 28 | **46** |
| `K R / c r` (`s G`, 18) | zero needs 2 operands, unary takes 1 | impossible at any size | — |
| `K R / V r` (14+V) | `(Y1, j)` | V absorbs, `\t y u. c t (y u)` | 58 |
| `R / c r` (20) | `(Y)` with Y = j/N | Y = 25 | 53 |
| `R / V r` (16+V) | `(j)` | V = `\t u. c t (t t u)` 29 | 53 |
| `I / c r` (22) | `(Y)` with Y = R j/N | Y = `s I (s s) j` 18 | 48 |
| `K R / K N` (`s s`, 6) | `(V, j)` | unary gives `N j` | — |

Codex sharpened the `K R / c r` row. For any operands A1..Am, the zero branch
gives `R A2..Am` and the unary branch `c r A1..Am`. Both heads are rigid, so
zero needs m = 2 and unary needs m = 1. Redexes, sharing or divergence inside
the operands cannot change that.

**B. Routing the trailing j (frame `s P V j`).** Unary needs `U V j = c r N`,
where `U = P F r` and j is rigid. So either U binds and erases its second
argument, or `U V` reduces to a lambda that erases j.
- The absorber in V, with `P = I`, costs 8 over the 20-bit core: lambda 2, u leaf
  2, and one index bit for each of the four s/c leaves under the absorber. That
  is the 162.
- Every other placement priced costs more:
  - absorber in U: 58;
  - `U = \x. x (c r)`: 62;
  - a cell handler `V = s (\q t u. c t (t t u))`: 35 for V alone;
  - a unary value K: at least 20 more in P.

**C. Zero-lambda parents.** A lambda value on zero must still be applied to R,
by a context that also drops c on zero.
- `X0 = K j` (13 bits) needs an R-provider plus the unary core: at least 53.
- `X0 = T j` costs 34 to build.
- Using X0 as the outer handler, `\s. s (s A j) ..`, hands A the cell twice, as
  `(b, r, j, b, r)`. The second dispatch carries no new information, so this
  costs at least 60.

**D. Frames for j.** j can live in three places. Each has a cheapest
completion:
1. Common to both branches as the trailing operand. The unary branch must
   absorb it: 46.
2. Only in the branch the zero bit keeps. R must be fetched there (`s F j`, 51),
   or the handler names the cell (the 165, 49).
3. Inside an operand that is N on unary, with j kept alive on zero: 48 (the 164)
   or 53 (the 169).

Selecting both `(R, c r)` and `(j, N)` with the bit of one cell needs the cell
named: the handler alone is 50 bits.

**E. App-rooted and stream-headed readers.**
- For the same closed handler, `(\h s. s h ..) H` costs 2 more than
  `\s. s H ..`.
- By identity 4, `s (s Q)` costs at least 8 more than the equivalent closed
  handler.

**F. d1open's one open skeleton** `\s. s (\b. b X1) T1 T2`.
- Laws: zero `X1 T1 T2 = R j`; unary `T1 b' r'' T2 = c (cons b' r'') N`.
- Budget: `|X1| + |T1| + |T2| <= 25`.
- T1 must rebuild the cons or reach s again, under its own binders. Cheapest
  pieces found: `T1 = \p q. s (\x. c)` (18) with `T2 = s I (s s) j` (18), so
  `|T1| + |T2| >= 36`.
- As `s Q`, T1 alone is 25.
- This is a sketch under these hypotheses: T1 is a lambda or an s-application,
  and its head path has no redex.

**G. Depth-0 shared-let window, closed (computer-checked; Codex's checker,
re-run and reviewed here).**
- Family: `R = (\x n s. M) A j` with FV(A) = {c} (one c),
  9 <= cost(A) <= 16, x used exactly twice in a c-free M, and w <= 45.
- Codex's handwritten reduction leaves only this window. It applies formula 6
  plus the closed direct-hoist family under the minimality order. For closed A
  it gives cost(B) >= 6m + 18, so m = 2 and |A| <= 9. Then Δ <= −4, so the
  inlined direct hoist is lighter. The m = 3 window admits only affine A, and an
  affine reader cannot duplicate N.
- The budget forces `(#n, #s) ∈ {(1,1), (1,2), (2,1)}`.
- `shared_window.py` enumerates all 190 arguments and every lambda/application
  body in budget, redexes included. That is 47,016 candidates.
- Re-run here in 0.91 s on one thread, at 27 MB:
  - 46,772 fail the zero law;
  - 178 fail unary n = 1;
  - 66 have zero runs certified head-divergent by four explicit loops (Ω,
    `G G → G G c`, `G' G' → G' G' (\u. c)`, `H (K H) → H (K H)`);
  - 0 unknown, 0 pass.
- I reviewed the generator:
  - leaf costs match the frame;
  - A ranges over all one-c terms of each cost;
  - the failure tests are definitive (whnf heads and normal forms);
  - the loop certificates are sound, because having a whnf is β-invariant.
- Not covered: let bodies without the literal `\n s` prefix, and arguments with
  two or more c leaves.

## 4. Where a sub-162 could hide, and the next step

**Honest read: the 162's reader looks optimal.** In every frame here, the cost
sits in one defect: zero needs j as an extra argument of R, and unary must not
see it.

The near-miss ladder prices that defect exactly. The cheapest one-sided
failures are 28, 34, 39 and 40. Every repair found costs at least 7 over the
39, or 6 over the 40. The 162 is the 40 plus its absorber.

The arity table (A) reduces depth-1 s-spines with a closed handler to three
operand problems whose minima are known:
- `V j = c r N`: 28;
- j/N: 25;
- R j/N: 18.

Section F, and d1open, close the second-cell variants. Section G closes the
depth-0 shared lets with one c.

What is left is sharing, where one source piece plays two roles:
- lets or redexes on the head path at depth 1 whose argument mentions s;
- let bodies that are not `\n s`-prefixed, and arguments with two or more c.

The G family shows that sharing is cheap: G is a first handler and an
N-producer for 13 bits. What it cannot do is change the rigid-head argument
counts.

**Suggested technique.** Turn the arity view into a lemma:

> In any reader, follow the zero and unary runs to their rigid heads R and c.
> The source occurrence of j is an argument in the zero run and must be erased
> in the unary run. On unary, j can be erased at one of three kinds of site:
> (a) a binder whose scope holds the needed s/c leaves of the unary core
> (absorber, >= 6 over the s-junk core: the 162);
> (b) a unary bit F applied to j (`s K j X`, >= 15 + |X|, and R must then be
> supplied separately on zero: >= 53);
> (c) the K N that ends `s s` recursion, which puts j inside an operand that is
> N on unary (>= 18 to keep j alive on zero, plus the 12-bit zero-identity
> c-prepender: the 164).

If this trichotomy holds for every reader, with these prices, it gives
w >= 46 directly. I have not proved it. Its
weak point is a binder that is needed for something else and erases j as a
side effect. That is exactly the open needed-binder case. I priced every such
binder I could build at w >= 52.

The sharing cases in the open list are where a counterexample would have to
be. The G family shows such sharing exists and is cheap, but it does not
touch the arity defect. I expect the proof lanes to close these rather than
find a reader.
