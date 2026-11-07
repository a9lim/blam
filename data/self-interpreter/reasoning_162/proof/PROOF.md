# Frame theorem: the 162's reader is optimal around its knot and NEXT (draft)

## 0. Setting

Knot `(\x. x x) (\x. (\intL. \cont. \list. B) (x x))`, frame
`[list, cont, intL, x]` (innermost first; a leaf costs 2/3/4/5 bits at depth
0, +1 per enclosing λ). `NEXT` is the 162's term
`\bit1. intL (\exp. bit1 (cont ABS) (intL (\exp2. cont LIFT)))` with its
`cont`/`intL` leaves bound by the frame. Write `B = C[NEXT]` for a one-hole
context `C`, `d` = number of λs of `C` above the hole. Since NEXT has four
free references to `cont`/`intL`,

    |E_B| = 26 + |B| = 122 + |C| + 4d.           (exact)

The 162 is `C = list I V □`, `|C| = 40`, `d = 0`. (Floor lane: cost(R) =
|C| + 2, depth = d + 1, |E| = 116 + cost + 4·depth; same target.)

**Target.** If `E_B` is a self-interpreter then `|C| + 4d >= 40`.

Writing `p = x x` for the parser (`p c s = B[p, c, s]`), `s = cons b r`,
`U_n(N) = 1^n 0 ++ N`, `r = U_{n-1}(N)` on a variable stream, and
`k ∈ Conts` for the continuations NEXT builds (`k1 = \e. b (c A_e) (p k2^e)`,
`k2 = \e2. c T_{e,e2}` with `c` the enclosing continuation, `C` at the root).

## 1. Unconditional lemmas (handwritten)

**L1 (head form).** `B` has a head normal form, which is `list A1 … Ak`
(k >= 1) or `cont A1 A2`.
*Proof.* `B[p, C, s]` =β `C (λz.M) N` is solvable, so `B` is; write its hnf
`λy⃗. h A⃗`. A leading λ survives substitution: an abstraction cannot be
β-equal to `C (λz.M) N`. `h = cont` gives hnf `C A⃗'`, so `|A⃗| = 2`.
`h = intL`: `B[p,C,s] →*_h p A1' … Ak'`; `k <= 1` leaves an abstraction;
`k >= 2` continues `→_h B[p, A1', A2'] A3' …`, whose head is again a
substitution instance of `B`'s hnf head `intL`: the head reduction is
infinite, so no hnf (head reduction is normalizing). `h = x`: `x A1 … → 
(\intL\cont\list. B)(A1 A1) A2 A3 … →_h B[A1 A1, A2, A3] A4 …`, head `x`
again; same conclusion. ∎

**L2 (NEXT is an operand).** The hole is never the head of `C`'s hnf: a
head `NEXT Y⃗` reduces to head `intL`, excluded by L1.

**L3 (recursive calls are head calls).** Every recursive call `p k s'`
made by NEXT (`NEXT b r = p k1 r`; `k1^F e = p k2^e`) occurs in head
position of the whole term, so the contract forces, for every `k ∈ Conts`
and every sub-stream `s'` that arises,

    B[p, k, 0:b2:r2] =β k val rest     (= NEXT_k b2 r2)
    B[p, k, U_n(N')]  =β k U_{n-1}(N') N'       (n >= 1),

but only for `k ∈ Conts` (the root `C` never sees a variable: closed `M`).
These are the 165's reader laws with the actual continuations in place of a
rigid `cont`; the rigid laws are sufficient, not necessary.

**L4 (rigid-continuation reduction is exact).** In a head reduction of
`B[p, k, s']` the continuation `k` is contracted only when it reaches the
head, where the reduction with a rigid `κ` in its place has stopped at the
hnf `κ A⃗`. Hence every head-reduction fact before that point is uniform in
`k`. (This is what makes the symbolic checker sound: placeholders per
unfold level, substituted back only at the head.)

**L5 (same-stream re-entry diverges).** If, during the head reduction of
`B[κ, Y] A⃗` with `κ` rigid, the term `p X Y A⃗'` (same `Y`, same or longer
spine, no spine argument below the base consumed) is reached, the head
reduction is infinite: the path is a substitution instance for `κ := X`, so
it repeats. Also modulo renaming of other rigid placeholders when no older
level was substituted meanwhile. (The checker's certificate.)

**L6 (the var arm's κ-hnf).** On `U_n(N)` with `κ` rigid, `B[κ, U_n(N)]`
must head-reduce to `κ A1 A2` with `A1 (cell a z) =β a` (n = 1; the lookup
law for larger n) and `A2 =β N`. Any other rigid head, any other arity, an
abstraction, or a certified infinite reduction refutes `B`.

## 2. Shape analysis under (H) C β-normal (hole opaque), head `list`, NEXT once

`C = list A1 … Ak` syntactically. After the first cell step,
`B[·, s] = A1 b r A2 … Ak`. Budget: a sub-162 needs `|C| + 4d <= 39`.

### 2.1 d = 0 (NEXT is a depth-0 operand)

| shape | bound | status |
|---|---|---|
| (S1) `list I V NEXT` | `|V| >= 28` | computer-checked for all V <= 27 over the four names (1,010,663 terms): 0 pass, 999,554 refuted, 11,109 capped; capped = 4,417 β-normal pumps + their β-expansions (`s1_27_pass1.txt`) |
| (S2) `list H NEXT` (bare NEXT, k = 2) | `|H| >= 40` | hand (below) + checker to 23 bits |
| (S3) `list H T`, NEXT inside T at depth 0 | `|H| + |T| >= 36` | hand (dual operand; 164 attains 42) |
| (S4) `list A1 A2 NEXT`, A1 ≠ I | `>= 46` | hand (below) |
| (S5) k >= 4, or NEXT nested in an operand application | `>= 44` | hand (below) |

**(S2).** `H b r NEXT`, with `H K r NEXT =β NEXT b2 r2` and `H F r NEXT =β
κ r N`. `H` is not `I` (zero arm `K r NEXT = r`), not `K` (`b NEXT`, an
abstraction on zero), not `F` (loses the bit: var n >= 2 parses the tail as
an APP), not `list`-headed (`s Y⃗ b r NEXT` re-reads the first cell: the
dispatch then costs a second `s`-leaf and node, and the inner handler is
again an (S2) handler at depth >= 1 — strictly more), not `cont`-headed
(`κ Y1 Y2 r NEXT`: arity), not `intL`/`x`-headed on the zero arm (parses the
Boolean `K`: `p Y K = B[Y, K] = K A1' … = A1' A3' …`, a term independent of
`r`, while the result must depend on `r2`). So `H = λb. M` and `M`'s head is
`b` or a λ-bound tail. With `M = b Z W`: zero `Z r NEXT = NEXT b2 r2` forces
`Z r NEXT =β r NEXT`, cheapest `Z = I` (4) (`K` is 7); var `W r NEXT = κ r N`:
`W` must bind `r` and consume NEXT: `λr λu. κ r (r r u)` (29) is the cheapest
realization (binding `u` is forced: `κ r (r r)` applied to NEXT has three
arguments at `κ`; `K (κ r (r r r))` costs 7 + 21). `Z = K` fails (`K r NEXT
= r`, checked). So `|H| >= 2+4+2+4+29 = 41`, `|C| >= 47` (the 169). With `M = λr. b Z' W'` (`H = λb λr. …`): zero
`Z' NEXT = r NEXT` gives `Z' = r` (2); var `W' NEXT = κ r N` gives
`W' = λu. κ r (r r u)` (27); `|H| = 40`, `|C| = 46` (Grok's 168). Tail-headed
`λb λr. r Y⃗`: reads the second bit before dispatching on the first; the
first bit must still be tested inside `Y⃗` with `b` at depth >= 2 and both
cells' data bound: >= 58 (reader-proof τ-case) — never competitive.

**(S4).** `A1 b r A2 NEXT` with `A1 ≠ I`. If `A1 = λb. b Z W`: zero
`Z r A2 NEXT = r NEXT` needs `Z = K` (7; `I` would give `r A2 NEXT`, i.e. `A2`
must be NEXT-like) and var `W r A2 NEXT = κ r N` needs `W` to bind `r`, erase
or use `A2`, and consume NEXT: `|W| >= 29 + 2`; total `>= 2+4+2+7+31 + 2 +
|A2| + 4 >= 54`. If `A1 = λb λr. b Z' W'`: `Z' A2 NEXT = r NEXT` with `Z' =
λa. r` (5) or `Z' = K r` (9); `W' A2 NEXT = κ r N`: `W' = λa λu. κ r (r r u)`
(31) or `W' = K (λu. κ r (r r u))`; `>= 2+4+4+2+5+31+2+|A2| >= 52`. If `A1`
is data (`K`, `F`, `list`, `list X`) the bit or the tail is lost before the
dispatch (`K b r A2 NEXT = b A2 A3…`: `r` must be re-read, `>= 10`;
`F`: the bit is lost; `list`: `s b r A2 … = b b r r A2 …`, on a variable
`r r A2 … = N A3 …` puts the rigid `N` at the head). So (S4) >= 46 > 39.

**(S3).** `H b r T` with the hole in `T` (an application spine containing
NEXT at depth 0). The var arm needs `κ r N`; the zero arm `NEXT b2 r2`.
Either `T` is dual-valued (`r NEXT` on zero, `N` on variables, as in the
164: `T = s I (s s) NEXT`, 18 bits, which is the minimum of that law
because it contains an N-source (>= 10) and a dispatch (`s I`, 6) and the
node; checked to 21 bits in the Python micro-search of golf162-claude) and
`H` selects `T` or `κ r T`: `H = λb. b F cont` (18) — 42; or `T = Y NEXT`
with `Y` NEXT-independent and `H` using NEXT through `T` in both arms, which
costs a binder for the tail (>= 46 as in (S2)). Hence (S3) >= 42.

**(S5).** `k >= 4`: `A1 b r A2 A3 A4 …`. With `A1 = I`: zero `r A3 A4 … =
A3 b2 r2 A4 …`, so `A3` must consume `b2 r2` and apply NEXT: `A3 = λb λr λn.
n b r` (19) or NEXT itself followed by a trailing argument that reaches `C`
(arity). `>= 2 + 8 + 4 + |A2| + 19 >= 33 + |A2|` with `A2 A3 NEXT… = κ r N`
needing `|A2| >= 28`: >= 61. `A1 = K`: `b A2 A3 A4`: zero `A2 A4 = r NEXT`
forces `A2 = s F` (10) and `A4 = NEXT`, var `A3 NEXT = κ r N` forces
`|A3| >= 28` (S1's bound): `>= 2+8+7+10+28 = 55`. NEXT nested inside an
operand application `Y NEXT …` at depth 0: `Y NEXT` must still receive
`b2 r2` from `r`; `Y` is then an η-expansion or a let around NEXT, which
only adds nodes (`(λn. λb r. n b r) NEXT`: +10).

### 2.2 d >= 1 (NEXT under a λ of C): |C| <= 35

The λ containing NEXT is a binder of a handler or of an arm. The zero arm
must still produce `NEXT b2 r2`, i.e. apply NEXT to the tail's cells:
`λr. r NEXT` (6, NEXT at depth >= 2: +8) or `λb r. b (r NEXT) …` (NEXT at
depth 2). Measured (checked correct): the 165's reader inlined,
`list (λb. b (λu λr. r NEXT) cont) (list list list)`: `|C| = 36`, `d = 3`,
weighted 48 (E = 170); the handler form
`list (λb λr. b (r NEXT) (cont r (r r list)))`: `|C| = 42`, `d = 2`, 50;
`list (λb. b (λr. r NEXT) (λr. cont r (r r r)))`: `|C| = 41`, `d = 2`, 49. In every d >= 1 shape the zero arm pays >= 6 bits of its own
(a binder, its leaf, the node) that the trailing-operand trick makes free,
and NEXT pays >= 4; (S1)'s var arm bound (28) or (S2)'s handler bound then
puts the total >= 44.

## 3. Status of the hypotheses

- (H-normal): C β-normal with the hole opaque. Partly justified by the
  minimal-counterexample argument: a redex of C that does not duplicate
  the hole and has Δ < 0 gives a smaller counterexample; a redex erasing
  the hole leaves a NEXT-free interpreter body <= 41 bits (none is known;
  the global floor 37 does not exclude it); redexes with Δ >= 0 and
  hole-duplicating lets remain. Hole-duplicating lets `(λy. M) Q` with
  NEXT in Q and y used >= 2 times in M cost `4 + 2·uses + |M'|` and `M`
  must itself be a reader using NEXT twice within 35 bits (see NOTES).
- (H-head-list): the cont-headed case `cont A1 A2` is the twice-parsing
  architecture; NEXT inside A1/A2 is replaceable by `intL K`/`intL F`
  calls, so the case reduces to a NEXT-free body — excluded only by the
  same unproven "no interpreter body <= 41 bits" statement.
- (H-once): NEXT exactly once; two syntactic copies cost >= 192.
