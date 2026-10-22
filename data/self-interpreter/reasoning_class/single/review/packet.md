# Adversarial review request: "Theorem S" (single lane, round 4 wave 5)

Repo /Users/a9lim/Work/blam (branch dev). Read-only review; do NOT write files outside
/Users/a9lim/Work/blam/tmp/round4/single/review/ (you may write scratch scripts there).
Context: BRIEF at tmp/round4/BRIEF.md, docs/classical/self-interpreter/class-bound.md §1-3
(the separated class; w = cost + 4 depth(j); readers R with R Z(r) = r j, R U_n(N) = c U_(n-1)(N) N).
My lane notes: tmp/round4/single/NOTES.md (§§1-11). Please try hard to BREAK the claim.

## Claim (Theorem S)
Let R = \s. M be a reader (both laws, all n) with w(R) <= 45 such that no lambda of M lies
above the single j ("j at M-depth 0"), and M contains a syntactic dispatch site D:
 (a) s I W, (b) x A W where \x. P is a direct argument of an occurrence of s and D is in P,
 (c) s K A W.
Then no such R exists.
Corollary: with class-bound §3's settled depth results (a minimum reader below 46 has its hole
at depth <= 1, and a depth-0 hole is never the argument of a lambda), no lambda-rooted
MINIMUM reader below 46 has a syntactic site, and hoisted (\a.\s.M) j are excluded already.

## Proof outline
1. sigma(D) = |E| + 2 >= 8 where D = E W (E = s I, x A, s K A). Deleting D (E W -> W) keeps
   the unary law for every n (zcore's deletion lemma, Codex-reviewed). So M' = M[D -> W] is
   a unary core with |M'| = |M| - sigma <= 39 - 8 = 31, i.e. w(\s.M') <= 37.
2. Where is j? If j is in W, the zero run discards W (K A W -> A, s I W -> R), so j is lost.
   If j is in the (b) arm A, it is under \x (depth >= 1), excluded. So j is outside D except
   (c) with A = j, i.e. D = s K j W at M-depth 0, sigma = 15, M' j-free with |M'| <= 24:
   ccase.py enumerates all 80,976 j-free terms of cost 22..24 (j-free cores need >= 22):
   3 cores; all 27 insertions of s K j at lambda-depth-0 positions fail zero.
3. Otherwise j keeps its position in M'. Its path p from M's root is all application nodes
   (j at M-depth 0) and j is the argument at the end (if j were applied, the zero run would
   apply j).  Partition by p:
   - p = R (M' = X j, |X| <= 29): X j = c U N on unary. Codex's repaired acheck: only
     V = \u. s (\q.c) (s s u) through 28. Needed narrowing (types/narrow.py, untabled,
     laws U1,U2, B = 37): lambda-rooted X: one template \u. s (\q.c) (s s _), filler <= 3 bits
     -> X in {V, X29 = \u. s (\q.c) (s s s)}; application-rooted X split by X1 in X = X1 X2:
     (s _) 18,649 states / ((\y._) _) 39,754 / ((_ _) _) 45,761, 0 templates (c-headed X1
     dies). pathR.py: every insertion E W into V j and X29 j with |M| <= 39: 0 readers.
   - p != R, length 2..7: for every such p, narrow.py with prefix "\s. <p-term>" (holes as
     siblings; laws U1,U2; B = 37) lists every unary core with j at p as templates with
     unrefined holes (fillers); fillers are expanded with every term within the slack
     39 - 8 - |template|; then every insertion E W (E any j-free term in W's frame with
     |M| <= 39, every position incl. inside fillers, root, leaves) is tested on zero and
     U1..U3. 0 readers. Length >= 8: prefix cost 6 + 4*8 = 38 > 37.
   Files: alpha.py (L^aR), beta1.py (generic insertion over a narrow_all.py JSON), paths.py,
   insert.py (helpers), narrow_all.py (wrapper dumping all solutions), path_*.json, beta1.json.
4. Fuel cut-offs in the narrowing: only two loop shapes, (\x. x x) G with
   G = \x. x ((\y. x) _) and (\x. x x) H with H = \x. x (I x); both have no hnf (hand proof).

## Controls run
- insert_ctl.py: V j + one insertion at budget 40 -> exactly the 162; X29 j at 41 -> the
  47-reader; core20 + one site through 42 -> none.
- xcheck.py: brute force over 60,427 one-j terms (j at depth 0) of cost <= 22 vs narrowing on
  every path of length <= 5 at B = 28: both give exactly core20 (path RR).

## What I want from you
1. Any reader that contradicts the claim (w <= 45, j at M-depth 0, a syntactic site). Try
   constructions, not just reading.
2. Logical gaps: is the path partition complete? Is the claim "j outside D" right? Is the
   narrowing (untabled narrow.py with --prefix) complete for the unary laws, including holes
   in head position becoming lambdas (redexes)? Is the filler expansion bound right? Does the
   insertion enumerate every syntactic site (E's frame, cost accounting with j's tax)?
3. Reproduce at least: ccase.py, the four X-narrowings, pathR.py, and two or three path runs
   (e.g. python3 tmp/round4/single/paths.py 4 LLLR from that directory; it needs ~30 s).
Reply with verdict (correct / broken / unsure), concrete counterexamples or gaps, and what
you reproduced.
