# adv5 — constructive adversary, wave 5 (Claude)

Goal: a reader with w <= 45 (depth 1: cost <= 41; depth 0: cost <= 45).
Tools: coord/rd.py (samples n=1..nmax). Hand-priced first, then checked.

## 0. Price table (handwritten; c's index = number of reader lambdas above it)

Closed atoms: I = 4, F = 6, K = 7. App 2, lambda 2, var idx i = i+2.
Known readers and their parts (all depth 1 unless said):
- 162: lam s 2 | s I _ j spine 6 + s 2 + I 4 | V = \u. s (\q.c) (s s u) 28  -> 42 + 4 = 46.
  V = 20-bit core s (\q.c)(s s j) + 8 absorption (lam u 2, 3 s + 1 c index raises 4, u leaf 2).
- 164: T = s (\b. b F c) 22 (I on zero, c r on unary) + Y = s I (s s) j 18 (r j / N) + 4 -> 44 + 4.
- 165: s (\b. b (\u r. r j) c) (s s s): cost 38, but j at depth 4 -> 54; hoisted 49.
- Dispatcher family s (\b. b A c) X: 20 + |A| + |X|, X must carry j and be N on unary
  (|X| >= 18), |A| >= 4, A = I needs X = j/N (>= 25)  ==> >= 44 cost.

Stream identities used (zero: b=K, rest R rigid; unary: b=F, r=U_{n-1}, r r = K N):
  s s = b b r r = K R / K N;  s s x = R / N;  s s V j = R j on zero (!) but N j on unary.
  s (\x. x x x) = K R / I (same as s I);  s Delta = K / r;  s (s I) = R R / I.
  (s s)(s s) j = R j / N j;  (s I)(s I) j = R j / j.

## 1. Depth-1 skeleton analysis (handwritten; minimality not used, these are pricing lemmas)

At depth 1 the hole sits in the lambda-free skeleton of the body under \s.
Every occurrence of c must be dropped on the zero run and j on the unary run.
Drop mechanisms seen: (J1) unary absorber \u (162: +8 over the 20-bit core);
(J2) j as junk of s s inside a zero-protecting s I _ j (164); (J3) s K j X
(+15+|X|); (C1) c inside the branch the bit K drops (162); (C2) c as the
unary handler (164/165).

Frame lemmas (each is a direct count, handwritten):
- s I X Y frame: zero gives R Y, so Y =beta j on zero. Y = j forces X j = c r N,
  X >= 28 in every form tried (s W: 35; \u. s (\q t. c t (t t u)): 35;
  linear let of s(\q.c): 50 total). Y = s K j X' costs 15+|X'| and then
  X X' = c r N needs >= 20 (core) -> never below 28 total. So the frame is the 162.
- Handler ? in s ? V j: zero forces ? K R V = R. ? = I is 4 bits; any ? that
  feeds V extra args on unary (\b t v. b t (v X)) costs 21+|X|; s itself works on
  zero (s s V j = R j) but unary is K N V j = N j. No cheap ? other than I.
- s (\b. b A c) X frame: c as unary handler admits exactly one trailing operand
  (c r X), so X carries j and is N on unary (|X| >= 18, s I (s s) j);
  total 20+|A|+|X| >= 44 (A=F). A = I needs j/N >= 25; A = T' needs \k.k j/N (34).
- Partial hoist of the 165 inside \s: s ((\n b. b (\u r. r n) c) j) (s s s) = cost 48, w 52.
- Explicit cells (\b t. ...) always lose: naming r costs ~9 over I.

## 2. Mechanism 1 (zero-lambda parents), cheapest versions (handwritten prices)

At depth 1, j's parent X is an application P j with P = s A, s A B, a redex, ...
Cheap zero-lambda values: s K j = K j / I; s Delta j = K j / r j (dead: j head);
s (\b t. b T (t t)) j = T j / N (34 bits, R84's X); X0 = K (R j) needs >= 24.
- Context for X0 = K j: s (\b. b I c) (s K j (s s s)) cost 49, w 53;
  s I (s (\q.c)) (s K j (s s s)) cost 49, w 53 (the 169).
- Context for X0 = T j: s (\b. b T' c) X, T' = \t y. y t: 23 + 34 + 8 = 65.
- "X0 doubles as the outer handler" (R = \s. s (s A j) W..): A sees
  (b, r, j, b, r); the zero part must drop K and one r and apply r to j:
  A0 >= 16 (\t u x y. y u), A1 >= 34 -> >= 60. The second dispatch carries no
  information the first did not, so it is pure overhead.
Verdict: no zero-lambda parent below ~51 found; the sharp obstruction is that a
zero-lambda value still has to be applied to R by a context that also drops c.

## 3. Mechanism 2 (needed binders in the 162 family), cheapest versions

- cell part opened: \s. s (\b t. b t (\u. c t (t t u))) j       cost 48, w 52
- cell part, N from s: \s. s (\b t. b t (\u. c t (s s u))) j     cost 52, w 56
- let carrying c r above nu: \s. (\x. s I (\u. x (s s u))) (s (\q. c)) j  cost 50, w 54
- V opening the cell: V = s (\q t u. c t (t t u)) (35 vs 28), V = \u. s (\q t. c t (t t u)) (35)
- V as redex (\x u. x (\q.c) (x x u)) s: 35; (\k u. s k (s s u)) (\q.c): 37
Every needed binder pays a lambda plus an index raise on each of the four needed
s/c leaves; the absorber u is the only binder that pays for itself (junk slot).

## 4. Mechanism 3 (depth 0, app-rooted, redex/stream-headed first operands, many operands)

- Stream-headed first operand s (s Q) X..: Q sees (b, r, b, r); the second cell
  carries nothing new. s (s (\b t. b K)) is exactly s I on both branches (zero:
  K K K R V j = R j, unary F K = I). s (s F), s (s s), s (s (\q.c)) die on zero.
- Redex handler s ((\x. \b. b x c) A) W: A sits at depth 1 and may hold j, but A
  must still eat (R, W): A = P j with P = \u t w. w u costs 14+2; total 54.
- Handler outside the stream lambda, (\h s. s h (s s s)) H with j at depth 1 in H:
  H = \b. b (\u t w. w u) (\u. c) j (zero A j R W = W j, unary (\u.c) j r W = c r W)
  passes the laws but costs 55, w 59: j arrives before r, so the zero part needs 3 binders.
- Depth-0 self-application (\x. x x) A j = A A j s: 18 bits of overhead over the
  body before A's self-copy does anything; the 165's body is 43, so the copy would
  have to replace >= 16 bits of machinery. Mode-sharing (A as reader and as its own
  handler, n = j in mode 1 and n = r in mode 2) was sketched: it needs X1 K X2 = R j
  with R living in X2, so X2 must be destructured again. Not pursued further.
- Many trailing operands: atoms s (2), c (3), j (0) are cheap at depth 1, but any
  handler that rearranges k operands pays 2(k+1) for binders plus raised indices;
  rearranger for (r, c, s, j) -> c r (s s j) alone is 33.
- Top-level c/K-c lets: c costs 2+depth wherever it is; binding it (\k) saves 1 per
  use at a fixed 6 -> needs >= 7 uses.

## 5. Binding-cost accounting (handwritten; a pricing frame, not a proof)

Base pieces at depth 1: \s 2 + zero side "s I _ j" 12 + unary core
s (\q.c) (s s j) 20 = 34. Every known reader = 34 + a "binding" that makes the
zero side drop c-stuff and the unary side drop j:
  162: 8 (absorber \u: lam 2 + u 2 + four index raises 4)        -> 42
  164: 10 (zero-identity c-prepender s (\b. b F c) = c r + 12, minus the
       junk app the j-reuse saves)                               -> 44
  165: 15 (j at depth 4 hoisted)  partial hoist 14  j/N operand 15
  explicit cell binders 18; zero-lambda parents >= 17.
A sub-162 needs a binding <= 7. Cheap dispatch values (depth 1):
  s I = K R / I (8); s s = K R / K N (6); s (\x. x x c) = K R / c r (18);
  s (\x. x I c) = R / c r (20); s (\x. x F c) = I / c r (22);
  s s s = R / N (10); s I (s s) j = R j / N (18); s K j (s s s) = j / N (25).
  New observation: s (\x. x x V) = K R / V r and s (\x. x I V) = R / V r: the
  unary branch receives r without the cell being named, but zero then needs a
  dropped extra operand (K R W j); with V = c it is K R / c r (18).

## 6. Dual-role handler (cross-role sharing through a let), checked by hand

A = \y. y y y acts as I on bits (K K K R = K R, F F F r = I) and gives N on the
stream (A s = s s s). So one let can serve as the first handler AND V's N-producer:
  \s. (\x. s x (\u. s (\q. c) (x s))) (\y. y y y) j       laws hold; cost 56, w 60.
The let pays 4 + its definition 12 + references 5 + 9 against I 4 + s s u 12.
s itself is a 2-bit handler with the right zero behaviour (s s V j = R j) whose
unary value is K N; no stream-derived handler of <= 3 bits fixes the unary side.
Consult launched: Codex astra, thread adv5-construct (prompt consult_prompt.md).

## 7. Routing the trailing j (handwritten pricing; hypotheses stated)

Frame s P V j at depth 1 (P closed, V j-free). Zero forces (P K R) V j = R j.
- Cheapest P with P K R ~ K R: I (4). The only sub-4 candidate, P = s (2 bits),
  has the right zero value (s K R = K R) but unary value r r = K N.
- Unary value of P decides how j is dropped:
  P F r = I  -> V j = c r N, V = (c r) o (s s) by a lambda: composition costs
               lambda 2 + u leaf 2 + one raise per free leaf of f = s (\q.c) (2)
               and g = s s (2) = 8. A one-leaf g = s (\q t. t t) costs 14 vs 6;
               f needs both c and s. So 8 is the minimum of this routing.
  P F r = K  -> V absorbs nothing (V = 22-bit core), but the cheapest such P
               (\b. b K (\t. K) = 24, \b t. b (K t) K = 29) costs >= 20 over I.
  P F r = \v. v X, \v u. v N', ... -> P names its cell, >= 21 + |X|.
- Routing j through a cell handler (V = s Q, V j = Q F r j) puts r at the
  handler's second binder for free but wastes q: Q = \q t u. c t (t t u), V = 35.
So in the s P V j frame the 162's 8-bit routing is minimal over the routings
listed; a different frame must bind for <= 7 by a mechanism not in this list.

## 8. App-rooted handler outside the stream lambda (handwritten)

For a closed handler H with one c leaf and j at depth d_H inside H:
  w((\h s. s h) H) = 13 + |H|_0 + 4 d_H, w(\s. s H) = 7 + |H|_0 + 1 + 4 (d_H + 1)
(|H|_0 = H's cost at top level). The inline form is 2 bits cheaper for the same
H, so an app-rooted reader can win only by using h twice or by the outer body
doing work the inline spine cannot. Stream-headed first operands
s (s Q) Y.. = s (Q b r) Y..: Q picks a second handler by the first bit, but the
second dispatch is handed the same bit, so this only separates H0/H1 at >= 14
bits of overhead; (I / c r) this way is 57 against the 164's 44.

## 9. The K R / c r arity obstruction, repaired at a price (handwritten)

s P Y1 Y2 with P K R = K R and P F r giving c r N needs P's unary value to take
two operands and drop one: P F r = \y u. c r y (Y1 = N, Y2 = j) or B (c r)
(Y1 = s s, Y2 = j). Cheapest: P = \x. x x (\t y u. c t y) = 34, reader 54.
The absorber inside a handler costs its own lambda plus naming t and y (the
162's absorber names nothing: its only extra binder is u).

## 10. Stream-headed first operands reduce to closed handlers (handwritten)

For Q with no free s: s (s Q) Y.. =beta Q b r b r Y.. =beta s (\b t. Q b t b t) Y..
(both sides head-reduce to Q b r b r Y..). So a stream-headed first operand is
a compressed spelling of a closed handler that receives its cell twice; any
closed handler H = \b t. M is reproduced by Q = \x y b t. M (+4 binders, +2 per
c leaf), and s (s Q) = 8 + |Q| against s H = 4 + |H| at depth 1, so the
stream-headed spelling costs >= 8 more for the same behaviour. With Q free in s
the second copy of the cell is still the same cell; the extra power is only
that Q may also mention s, which a closed handler at depth 2 can do anyway.
Redex first operands s ((\x. M) A) Y..: with A closed this is handler sharing;
with A holding j or s at depth 1 it is a let around the handler. Example that
uses x = s I (s s) j in both branches:
  \s. (\x. s (\b. b (\t w. x) c) x) (s I (s s) j)    cost 55 (the 164 does the
  same routing with F and no let for 44).

## 11. d1open's one open skeleton, priced (handwritten)

\s. s (\b. b X1) T1 T2: zero X1 T1 T2 = R j, unary T1 b' r'' T2 = c (cons b' r'') N.
Budget at w <= 45: |X1| + |T1| + |T2| <= 25. T1 sees the second cell, so it must
re-fetch r from s (s F at depth 3 is 12, s (\x. c) is 14) or rebuild cons b' r''
(>= 8 plus raises). Cheapest consistent pieces I found: T1 = \p q. s (\x. c) (18),
T2 = s I (s s) j (18), X1 = F (6): 42 > 25. With T2 = j, X1 must produce R itself
(\x. s F, 14) and T1 = \p q u. c (s F) (s s u) is 45. So this skeleton is far
outside the budget, not near it (handwritten pricing, not a complete check).
Sketch of a bound for that skeleton (handwritten, hypotheses: T1 is a lambda
or an s-application, j sits in T1 or T2 at depth 1, no redex in T1's head path):
- T1 b' r'' T2 must yield c applied to U_(n-1) = cons b' r''. U_(n-1) is not
  among T1's arguments, so T1 either rebuilds the cons (\f. f p q, >= 8 + raises)
  or reaches s again. At depth 3 (inside \s \p \q) the cheapest s-access giving
  c U is s (\x. c) = 14, so a lambda T1 >= 18; then N must come from T2, which
  must also carry j for the zero law: T2 = R j / N (>= 18) or j / N (>= 25).
  So |T1| + |T2| >= 36 > 25.
- T1 = s Q: Q receives (F, U_(n-1), b', r'', T2) and must drop three of them:
  Q = \x t p q. c t is 21, T1 = 25 alone, leaving nothing for T2 = N and X1.

## 12. Codex consult (astra, thread adv5-construct): results, re-checked here

No w <= 45 reader. Two findings worth keeping:
(a) Shared-let restriction (Codex, handwritten; I re-derived the formula).
    For R = (\x n s. M) A j, x used m >= 2 times at binder depths k_i in B = \n s. M,
    A with f free c, B with q free c: inlining changes w by
        Delta = (m-1)|A| + (f-1) sum k_i - 2m - q - 4.
    With closed A: cost(B) >= 6m + 18 forces m = 2, |A| <= 9, Delta <= -4, so the
    inlined (direct hoist, closed family) is lighter. With one c in A: survivors need
    m = 2, 9 <= |A| <= 16, M c-free (m = 3 window only admits affine A, and an
    affine reader cannot duplicate N). Hypothesis: the literal \n s prefix in B;
    minimality used to discard lets that inline to a lighter hoist.
(b) G = \t. t t c is a two-role helper: s G = K R / c r and G s = s s c = R / N.
    \s. s (\t. t t c) (s s c) j   w 39 (cost 35): zero law holds; unary gives c r N j.
    \s. (\g. s g (g s)) G j       w 42; (\g n s. s g (g s) n) G j   w 46 at depth 0.
    All re-checked with rd.py here: they fail exactly by the trailing j on unary.
So the arity obstruction has a price tag: the cheapest zero-correct term that
fails only by one extra unary argument weighs 39, and every known repair costs
>= 7 (the 162 is that 39 + 7, as s I + absorber vs. s G + no absorber).

## 13. Why the 39-bit near miss cannot be repaired cheaply (handwritten)

Spine s P X j at depth 1, P closed, U = P F r. Unary needs U X j = c r N with j
rigid, so either U binds and erases its second argument, or U X reduces to a
lambda that erases j. Costs (on top of the needed pieces):
  U = I, X = V (absorber in X)            : P = I (4),  X = 28     -> the 162, 46
  U = \x u. c r x (absorber in U)         : P = \t. t t (\a x u. c a x) 34, X = 10 -> 58
  U = \x. x (c r), X = \k u. k (s s u)    : P = 29, X = 23 -> 62
  U = c r (no absorber)                   : the 39-bit near miss, fails by c r N j
The absorber is cheapest in X because X is at depth 1 and names nothing else;
in U it sits under the handler's binders and must name r and X as well.
Follow-up sent to the Codex thread (consult2_prompt.md).

## 14. Codex's depth-0 window, attacked by hand (handwritten case split)

Window: R = (\x n s. M) A j, m = 2, one c in A, 9 <= |A| <= 16, M c-free.
Budget: w = 4 + 6 + |M| + |A| <= 45, so |M| <= 26; each x leaf in M costs >= 4.
- x as first handler (s x Y.. n): one-c A of <= 16 bits with usable dispatch
  values are \t. t t c (K R / c r, 13), \t. t I c (R / c r, 15), \t. t K c (18, over),
  \t. t F c (17, over), \t u. t u (c u) (19, over); \t. t c, \t. c t, \t. t (\q. c),
  \t u. u c, \t u. t c, \t. t c t, \t. t (t c), \t. c (t t), \t. t c I all leave c or R
  in head position on zero. K R / c r dies by arity for every spine. R / c r needs
  Y = n on zero / N on unary containing the second x; x Q = Q I c puts a c into Y,
  which must vanish on unary because Y has to be exactly N -> Q = \a b. (N-producer)
  at depth >= 3, over budget.
- c-free first handler: s I _ n costs 15 of the 26, leaving 11 for a "_" holding
  both x leaves (>= 4 + 4 + 2 apps = 12): over. Any other c-free handler is >= 6.
- x-headed M = x Z..: with A = \t. t t c or \t. t c, c is handed to Z as a
  parameter and Z must contain a whole reader body (>= ~38): over.
Not covered: M with a redex on its head path, or a first handler that contains x
under a lambda (s (\b. .. x ..) ..). Budget suggests these are over as well
(a lambda handler costs >= 8 before its branches), but that is not checked.

## 15. Two-role helpers \t. t t X (handwritten)

H = \t. t t X gives s H = K R / X r and H s = s s X = R / N, so one helper is
both a first handler and an N-producer. X = c is Codex's G (arity fails);
X = F gives s H = K R / I, exactly s I's values, and H s = N:
  \s. (\h. s h (\u. s (\q. c) (h s))) (\t. t t F) j   laws hold; cost 60 by hand
(H 16 + let 4 + references against I 4 + s s u 12). Delta = \t. t t is the
X-free case (s Delta = K / r) and its families are closed.

## 16. Where j can live, three frames (handwritten summary)

(i) j common to both branches as the trailing operand (b R V j): the unary branch
    must absorb it; absorber >= 6 over the 22-bit s-junk core, frame >= 14 -> 46.
(ii) j only in the branch the zero bit keeps: R must be fetched there (s F j, 12),
    or by a handler that names the cell (j goes under its binders): 51 / 49 (165).
(iii) j inside an operand that is N on unary: the operand must keep j alive on zero
    (R j / N >= 18, j / N >= 25) and the dispatch must route it: 48 (164) / 53 (169).
Using the bit twice to select (R, c r) and (j, N) from one cell needs the cell
named (\b t u x. b t (c t) (b u x), 50 bits for the handler alone).

## 17. Codex follow-up: the depth-0 shared-let window is closed by a complete check

Window (Codex): R = (\x n s. M) A j, FV(A) = {c} with one c, 9 <= cost(A) <= 16,
M with exactly two x occurrences and no c, w <= 45. Budget forces cost(M) <= 35 - a
with minimum 19, so (#n, #s) in {(1,1), (1,2), (2,1)}. shared_window.py (Codex,
in this directory) generates every A (190) and every M (any lambda/app tree,
redexes included) in budget: 47,016 candidates. Re-run here: 0.91 s, 27 MB, one
thread: 46,772 fail zero, 178 fail unary n=1, 66 zero runs certified head-divergent
by explicit loops (Omega, G G -> G G c, G' G' -> G' G' (\u. c), H (K H) -> H (K H)),
0 unknown, 0 pass. I reviewed the generator: costs per leaf match the frame
(x at index d+2, n d+1, s d), A ranges over all one-c terms of the cost, failure
tests are definitive (whnf heads and normal forms), loop certificates are sound
because "has a whnf" is beta-invariant. Status: computer-checked, given Codex's
handwritten reduction to the window (closed A and m >= 3 excluded by the inlining
formula plus the closed direct-hoist family, under the minimality order).

Near-miss ladder (all rd.py-checked), each failing only on one side:
  \s. s (\x. x I c) j          w 28  zero R j;  unary c r j      (needs j/N: +25)
  \s. s G (s s j)              w 34  zero R;    unary c r N      (needs j kept on zero)
  \s. s G (s s c) j            w 39  zero R j;  unary c r N j    (surplus j on unary)
  \s. s I (s (\q.c) (s s s)) j w 40  zero R j;  unary c r N j    (absorber +6 -> 162)
G = \t. t t c. Every one is the same defect: the zero branch needs j as an extra
argument and the unary branch must not see it.

## 18. Close

REPORT.md written. No w <= 45 reader. Files here: NOTES.md, REPORT.md, t.py
(rd.py wrapper), consult*_prompt.md / consult*.out (Codex thread adv5-construct),
Codex's shared_window.py (+ .jsonl, .summary.json, re-run by me) and
repair_candidates.json. No tracked file touched, nothing committed.
