Follow-up (same lane). Thanks -- I fixed twosite.py's filter (46/76/118
candidates, still no reader; budget 42 still only the 164). Three new
claims; please try to break each.

Claim 3 (T1, onesite.py). If a lambda-rooted reader body M has a
SYNTACTIC site (types a/b/c as before) with sigma >= 16, then |M| >= 40.
Proof: deleting it leaves a unary core of cost <= 23; core23.py and
core23free.py (exact cost, all shapes) show the unary cores through 23 bits
are exactly core20 = s(\q.c)(s s j), core22 = s(\q.c)(s s s),
core23 = s(\q.c)(s s c) (j-free counts: 20: 4,114 terms, 1 cap; 21: 7,194;
22: 13,332, 9 caps; 23: 23,746, 6 caps; all caps Omega-family or wrong
head/arity). onesite.py re-inserts one type-(b) or type-(c) site into each
core at every position with every arm A from jn's enum_terms (all shapes;
for core22/core23 the arm must carry j, taxed 4 per lambda above it in M),
budget |M| <= 39: 245 candidates, 0 readers. Budget 49: 87,039 candidates,
15 readers (w 52..55), e.g. \s. s (\q. q (\x y. x j) c) (s s s).
Corollary: a reader with w <= 45 has at most one syntactic site in its
whole body (two disjoint: T2; nested: the inner one sits in the outer
zero arm A, |A| >= 10, so the outer sigma >= 16), with sigma in [8,15].

Claim 4 (Lemma H, handwritten). Hoisted readers R = (\a. \s. M) j, any
number of a-occurrences, w(R) = 6 + |M|_[s,a,c] (j at the root costs 0).
Sites in M delete as before (congruence), leaving R'' = (\a. \s. M'') j
with the unary law. Claim: w(R'') >= 29, and >= 30 if a occurs in M''.
Proof: M''[c/a] is a j-free unary core over [s,c] (a's residuals are j's,
unary-dispensable; c is another rigid filler), and
|M''|_[s,a,c] = |M''[c/a]|_[s,c] + #(original c leaves): an a at local
depth d has index d+1 (3+d bits), same as the c replacing it in [s,c];
an original c has index d+2 vs d+1. #c_orig >= 1, |M''[c/a]| >= 22 (L2'),
so |M''| >= 23. If a occurs in M'' and |M''| = 23 then M''[c/a] = core22,
which has exactly one c leaf, which must be original: no a left,
contradiction; so |M''| >= 24.
Consequences: two disjoint sites => w >= 46 (a only in a deleted site:
that site has sigma >= 10 since a under the handler lambda costs >= 4,
or s K A >= 18: 29 + 10 + 8; a in M'': 30 + 8 + 8). One site with
sigma >= 17 => w >= 46. The hoisted 165 (sigma 20 around
(\n s. s (\b. c) (s s s)) j of weight 29) is covered.

Claim 5 (semantic sites). uid.py (hygienic E over [s,c], optional one j,
all shapes through 13 bits) and uidq.py (E over [q,s,c] with q := F,
through 11 bits): every zero-relevant unary identity E has |E| >= 6
(>= 8 if it carries j); below 12 bits the zero-relevant ones are s I and
q A (|A| <= 5), plus s (\y. q) (10) and s (q q) (11). Hence T2 holds for
two disjoint zero-relevant semantic sites with no new finite check.

Verdicts per claim, please, with the exact broken step if any.
