# refute46 lane report

Goal: a reader R (free names c, j; one source j) with `R Z(r) = r j` and
`R U_n(N) = c U_(n-1)(N) N`, weighted `w = cost(R) + 4·depth(j)` (j priced 0,
frame [c, j]) with w <= 45, which would assemble to a `116 + w <= 161`-bit
interpreter.  **No such reader was found; nothing was spliced or
battery-run.**  Every family in STATE46-counts that I could realize by hand
is empty for a stated structural reason, and three complete finite checks
(semantic DP, 1.25M-pair redex sweep) are empty as well.  The cheapest
non-162 readers I built are 47, 48, 49 (the 165's).  Files:
`rd.py` (checker), `semcheck.py`, `redex3.py`, `count_normal.py`, logs
`run_*.log`, `redex3_p*.log`, and `NOTES.md` (per-family record).

## 1. Interpreters built

None.  No sub-162 claim.

## 2. Exact identities (checked with rd.py on n = 1..3, some to 4)

With s = cons b r, values are written zero / unary:

    s I = K r / I          s s = K r / K N        s K = K / F
    s F = r / r            s (\q.c) = c r / c r   s (\b. b X) = X / r
    s (\b. b P Q) = P r / Q r                     s (\b. b b X) = K r / X r
    s (\b r. b r (c r)) = r / c r                 (22 bits)
    s K j (s s s) = j / N                         (25 bits, j at depth 1)
    s (\b r. b r (r r)) j = r j / N               (25 bits)
    s (\b. b (s s) Q) j = r j / Q r j
    s (\b. b (s s) c) j = r j / c r j             (28 bits; fails by N vs j)

Weights of passing readers (w; cost@depth): 162 reader 46 (42@1);
`s I (\u. s (\q.c) (s s s)) j` 47 (43@1); `s (\b r. b r (\n. c r (r r n))) j`
52 (48@1) = the record's Grok 168; `(\a. \s. s (\b. b (\u. a) c) (s s s))
(\t. t j)` 52 (48@1); 165 reader 49 (49@0); `s I (s (\q.c)) (s K j (s s s))`
53 (49@1); `s K (\t. t j) (s (\q.c)) (s s s)` 53 (45@2);
`s (\b r. b (r j) (c r (r r r)))` 54 (42@3); `s (\b r. b r (c r)) (s K j (s s s))`
59 (55@1).  Hoisting w(H(R)) = w(R) + 6 + f - 3d reproduced on each d >= 2 case.

## 3. Emptiness arguments (handwritten unless marked)

**(a) Leaf floor V >= 8.**  hnf is `\s. s X...`.  Needed leaves: head s;
c; an r-source (s under a bit-eating binder, or a cell eater's b, r'); an
N-extractor `x x y` (3 leaves: N lies under n+1 cells for unbounded n, so
fixed code reaches it only by applying a stream-derived term to itself); the
hole j; a dispatch leaf (a of I, or b of `\b. b P Q`; `s s` cannot dispatch,
its unary value K N makes the result N-headed; `s K`, `s F`, `s (\q.c)` heads
are dead likewise).  Total 8: every V <= 7 row of STATE46-counts is empty.

**(b) Unary-arm floor 22 at depth 1.**  `c r` >= 10 (`s (\q.c)`, c at
index 2, or c on a cell eater's r' which costs the eater), N >= 10
(`s s X`), one join: 22.  Absorbing j through the arm's own `\u` adds 6
(binder, u, +1 on three s and on c): 28 = the 162's V, attained with `s s u`
(K-prefix 31, `\u` ignoring u 29).

**(c) Dispatcher accounting.**  In `\s. s S A B...` the zero branch needs r
applied to j, so S must erase the arm and keep r: I (4) does it and forces
B = j, A >= 28.  Every other dispatcher pays more than the 6 it can save by
letting the arm ignore j: K 7 + separate `s F j` 12 (50); `\b. b P Q` >= 10
plus an arm owning `\r' u` >= 29 (49..53); `\b r'. b r' Q'` 13 + 27 (48);
`\b r'. b (\x. r') K` 23 + 22 (54); every S <= 9 bits other than I gives the
wrong value pair.  Remaining d=1 rows: (4,8): X >= 6 since the arm's s's sit
under the absorber and c under both binders -- the 162; (4,9,<=1), (6,8,<=1):
c under no inner binder forces `c (s F)` (F = 6) or an eater (index >= 2);
(5,8,<=3): an extra vacuous/single-use lambda only raises indices.

**(d) Shared-operand shapes.**  `s H X` with H = r / c r needs X = j / N;
`s (\b. b P c) X` (165) needs P r X = r j with X = r / N (P = `\u t. t j`,
j let-bound, 14) or X = j (Q owns `\r' u`, 29).  Every j/N or (r j)/N operand
found costs 25 at depth <= 1; `s s j` = r / N loses j on zero, `s F j` loses
N on unary.  The 28-bit `s (\b. b (s s) c) j` passes zero and returns
`c r j` on unary: the entire 46 - 28 = 18 is the price of turning that j
into N while keeping it j on the zero branch.

**(e) Duplication.**  A let `(\x. M) A` pays 4 + |A| + sum(2+idx) and wins
only when |A| >= 7 is needed twice; `\q.c`, `s s`, `s (\q.c)`, `s s s`, I,
K, the 22-bit eater (not uniform on r: `Z(N) E = N`, `U_1(N) E = c Z(N)`),
`\t. t j` (48 at best) all fail.  Two let-bound copies of j at d=0 cost 5
each (best 53).  j at depth >= 2 taxes every cell eater out (54, 52).

**(f) Complete finite checks (computer; rd.py normalizer, alpha-canonical
comparison).**
- `semcheck.py`: all `\s. s X1..Xk`, beta-normal operands, j once at depth
  1, free names s, c, j, cost <= 41.  DP over operand meanings (normal forms
  under s := Z(r), U1(N), U2(N)), min-cost per state, rigid-headed states
  must be prefixes of their targets, fuel-outs = rigid BOT.  Validated by
  recovering `\s. s I V j` at 42 with V injected.  Operands <= 18 bits,
  k <= 4: **no reader** (10.0 s).  Operands >= 19: level 2 exceeds two
  minutes, so 18 is the bound; by (b) this is exactly the readers that split
  the >= 22 bits of unary material across operands.
- `semcheck.py ... n`: d=0 `(\n. \s. s X1..Xk) j`, n anywhere, any
  multiplicity, cost <= 45, operands <= 18, k <= 4: **no reader** (10.1 s).
  Validated by recovering the 165's reader at 49.
- `redex3.py`: the L=3 non-normal row `\s. (\x. M) (\y. A)`, M, A
  application-only, x nonlinear, head(M) in {s, x}, c present, j once (in M
  cost <= 41, in A cost <= 37): 1,251,361 pairs, **no reader** (18 s + 10 s,
  two processes).  Complete for the row since cost = 8 + |M| + |A|.

Nothing is in Lean; (a)-(e) coverage is handwritten, (f) exhaustive within
its stated bounds.

## 4. Honest read

Inside this class I believe w = 46 is optimal, and the obstruction is single
and sharp: the reader must hand the unary branch N while handing the zero
branch j, and the only ways to make one operand do both are the 162's 6-bit
absorber (`\u ... s s u`) or a >= 25-bit j/N operand.  The proof lane should
aim at exactly that lemma -- *a term that is j under s := Z(r) and N under
s := U_n(N) costs >= 25 at depth <= 1, and an arm mapping j to c r N costs
>= 28* -- which with (a)-(c) gives w >= 46.

A sub-162 can only hide outside the class: the 28-bit
`\s. s (\b. b (s s) c) j` returns `cont r NEXT` on variables.  Letting the
continuation recover the rest from the value (`r r X = N`) fails because
ABS/APP values are not streams; the record's `C r N next` 158 attempt and the
Grok 168 are the nearest tried variants.  A NEXT that could consume
`c r j`-shaped returns would have 16 bits to spend; I did not pursue it
because it breaks the separator hypotheses that define this lane's class.
