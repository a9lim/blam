# refute46 lane notes

Checker: `rd.py` (named-variable normal-order normalizer; `check(src)` tests
R Z(r) = r j and R U_n(N) = c U_(n-1)(N) N for n=1..3 and prints
w = cost + 4·depth(j) in frame [c, j]).  Sanity: 162 reader -> w=46,
165 reader -> w=49, both PASS.

## Hand-derived stream identities used (s = cons b r; zero b=K, unary b=F)

    s I            = K r   / I
    s s            = K r   / K N          (s s X = r / N)
    s K            = K     / F            (s K P Q = P / Q)
    s F            = r     / r
    s (\q.c)       = c r   / c r
    s (\b. b X)    = X     / r
    s (\b. b P Q)  = P r   / Q r
    s (\b r'. B)   = B[K,r]/ B[F,r]
    s (\b. b b X)  = K r   / X r
    s (\b r'. b r' (c r'))  = r / c r      (20 bits: "Hd")
    s K j (s s s)  = j / N                 (24 bits)

Dead as a reader head: anything whose unary value is r-headed or N-headed,
or whose zero value is c-headed (rigid heads cannot be repaired).

## Family 1: `\s. s I A B` (162's frame) -- empty below 46

Zero forces r B = r j so B = j; unary A j = c r N.  A = \u.T with
T = c r N needs c r (>= 10: s (\q.c) at c-index 2) and N (>= 10: s s X),
plus the app; inside \u every s costs 3 and c costs 5: T >= 26, A >= 28
(A = \u. s (\q.c) (s s u)); A = \u. s (\q.c) (s s s) is 29, A = K T is 30,
A = s W (W a 3-ary cell eater) is 35.  Frame overhead is 14, so 42 is the
floor here; confirmed against the STATE46 claim V >= 28.

## Family 2: `\s. s S j` with S a closed/open selector, S != I

S K r j = r j and S F r j = c r N.  S = \b. b I Q (Q r j = c r N):
Q = \r' u. c r' (r' r' u) = 29 -> R = 49 (d=1) -> w 53.  S = \b. b b Q:
R = 47 -> w 51.  S = \b r'. b r' Q' (Q' = \u. c r' (r' r' u)): R = 48 -> 52.
Any S with S F r = r is dead.  Every variant pays >= 10 for the b-dispatch
and >= 27 for a unary arm that owns its own \u; nothing under 47.

## Family 3: `s K P Q X...` (bit as selector)

X empty: P = s s j (8), Q = s (\q.c) (s s s) (22): R = 46, d=1 -> 50.
Shared X = s s s (r / N): P = \t. t j, Q = s (\q.c): cost 44 but j at
depth 2 -> w 52; hoisted -> 53.  Trailing j (`s K I Q X j`): 57.

## Family 4: head/operand split  `Hd X`, Hd = s (\b r'. b r' (c r')) = r / c r

Needs X = j (zero) / N (unary).  X = j alone gives c r j (fails unary by
exactly the N).  X = s K j (s s s) = 24 -> R = 52.  Also
`\s. s I (s (\q.c)) (s K j (s s s))` = 48 -> w 52: the j/N operand is the
bottleneck; every j/N producer found costs >= 24 at depth <= 1.

## Family 5: cell eaters `s (\b r'. b (r' j) (c r' (r' r' r')))`

cost 42 but j at depth 3 (w 54); hoisted 52; with a `\n. c r' (r' r' n)`
tail-return wrapper and trailing j: 48 (d=1) -> 52.  The depth tax on j
kills every eater: j must sit on the top spine (d<=1) or be let-bound.

## Family 6: 165-style `s (\b. b P c) (s s s)` (c used directly as head)

P r r' = r j forces P = \u t. t j (j must be let-bound, 14 incl. index):
49 (the 165's reader).  X = j instead forces Q = \r' u. c r' (r' r' u): 49.
Duplicated j (`(\n. ...n...n) j`) never pays: each n costs 5 at index 3.

## Family 7: lets inside the reader

Let-binding \q.c, s s, s (\q.c), I, or "apply-to-j" (\t. t j) each adds
2+2+leaf and saves less than it costs (best: 47 at d=1 with a = \t. t j
and `s (\b. b (\u. a) c) (s s s)`).

## Corrections after checking with rd.py

K is 7 bits (\x y. x = 00 00 110), not 6; `K r j = r` (K erases one
operand), so `s K (s s j) ...` and `s (\b. b b Q) j` are dead, not merely
costly.  Verified weights: `s I (s (\q.c)) (s K j (s s s))` 49 (w 53);
`s (\b r. b r (c r)) (s K j (s s s))` 55; `s K (\t. t j) (s (\q.c)) (s s s)`
45 at d=2 (w 53); `s (\b r. b r (\n. c r (r r n))) j` 48 (w 52);
`s I (\u. s (\q.c) (s s s)) j` 43 (w 47, the runner-up);
`s (\b r. b (r j) (c r (r r r)))` 42 at d=3 (w 54);
`(\a. \s. s (\b. b (\u. a) c) (s s s)) (\t. t j)` 48 (w 52).

## Why the unary arm costs >= 22 at depth 1 (handwritten)

N sits under n+1 cells of U_n(N) for arbitrary n, so fixed reader code can
only reach it by applying a stream-derived term to itself (`s s X`, `r' r' X`):
>= 3 leaves + 2 apps = 10.  c r needs c (>= 2+index, index >= 2 under a
binder that eats the bit) plus r (from s via a bit-eating binder, or a bound
tail) and an application: >= 10.  Joining them costs 2.  Any arm that also
owns the \u absorbing j pays 2 + the index taxes (3 s's and c each +1) = 6:
28.  Frame `\s. s I _ j` is 14.  Hence 42 for the 162's shape, and every
dispatcher other than I (K 7, \b. b P Q >= 10, cell eater >= 13) costs more
than the 6 it can save by letting the arm ignore j.

## Complete finite checks (semcheck.py, DP over operand meanings)

Family: R = \s. s X1 ... Xk, every Xi beta-normal, j exactly once at depth 1
(not under an inner lambda), free names s,c,j, cost(R) <= 41 (w <= 45).
Operand meanings = normal forms under s := Z(r), U1(N), U2(N); spines built
by DP with min-cost per meaning-state; a rigid-headed state must be a prefix
of its target (appending operands cannot change a rigid head or its
arguments), fuel-outs become a rigid BOT.  Validated: with the 162's V
injected into the operand pool the DP returns `\s. s I V j` at cost 42.
- operands <= 16 bits, k <= 3: no reader (2.6 s)
- operands <= 18 bits, k <= 3: no reader (8.9 s; 1,837 distinct meanings)
- operands <= 20 bits: level 2 alone exceeds two minutes in Python, so the
  bound stops at 18/19.  The unary arm needs >= 22 bits of material, so this
  covers exactly the readers that split that material across operands.
- operands <= 18 bits, k <= 4: no reader (10.0 s; run_18_4.log)
- operands <= 19 bits, k <= 3: level 2 did not finish in 115 s (run_19_3.log)
- d=0 mode `(\n. \s. s X1..Xk) j` with n allowed anywhere in operands (any
  multiplicity, cost 3+depth), cost <= 45, operands <= 18 bits, k <= 4: no
  reader (10.1 s; run_n_18_4.log).  Validated by injecting the 165's two
  operands, which the DP returns at its true cost 49.

## Family 8: L=3 non-normal row `\s. (\x. M) (\y. A)` -- complete, empty

M, A application-only over {x|y, s, c, j}, x nonlinear in M, head(M) in
{s, x} (c/j heads are rigid and wrong), some c present, j once (in M: d=1,
cost <= 41; in A: d=2, cost <= 37).  1,251,361 (M, A) pairs, every one
normalized on the zero law and, when it passes, on n = 1..3: no reader
(redex3.py, two halves 18.3 s + 9.7 s; redex3_p0.log, redex3_p1.log).
The budget covers the row completely because cost = 8 + |M| + |A|.

## Leaf floor V >= 8 (handwritten)

hnf is `\s. s X...`.  Needed leaves: head s; c; an r-source (s under a
bit-eating binder, or a cell eater's b and r'); an N-extractor x x y
(3 leaves; y may be u, j, r', s); the hole j; and a dispatch leaf (a of I,
or b of `\b. b P Q` -- `s s` cannot dispatch, its unary value K N makes the
result N-headed).  Total 8.  So every V <= 7 row of STATE46-counts is empty,
and at d=1 the lambda-rooted rows left are (L,V,X) in {(4,8,<=5), (4,9,<=1),
(5,8,<=3), (6,8,<=1)}.  In (4,8,*) the arm's three s sit under the
j-absorber (index 1 each) and c under both the bit eater and the absorber
(index 3): X >= 6, which is the 162.  (4,9,<=1) and (6,8,<=1) put c at
index <= 1, i.e. under no inner binder, so c r must be `c (s F)` (F costs 6)
or c applied to a cell eater's r' (which forces index >= 2): empty.
(5,8,<=3): a fifth lambda is vacuous or single-use and only raises indices
of the leaves beneath it; it cannot lower X below the (4,8) floor of 6.
