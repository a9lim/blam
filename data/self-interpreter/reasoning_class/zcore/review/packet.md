# Adversarial review request (zcore lane, round 4 wave 5) — find a hole

Context: BLC self-interpreter class bound. A reader R (free c, j; one source
j) must satisfy R Z(r) =beta r j and R U_n(N) =beta c U_(n-1)(N) N for all
n >= 1, where cons b r = \f. f b r, K = \x y. x (bit 0), F = \x y. y,
Z(r) = cons K r, U_0 = cons K N, U_n = cons F U_(n-1); r, N, c, j rigid.
Weight w(R) = BLC size with j priced 0 + 4 per lambda above j; for
R = \s. M, w = 6 + |M| where |M| is M's cost in frame [s,c] with j taxed 4
per lambda inside M. 162-optimality in the class <=> every reader w >= 46.
The 162 reader: \s. s I V j, V = \u. s (\q. c) (s s u) (w 46).

Please try hard to break the two claims below (counterexample reader,
or a false proof step). Files: /Users/a9lim/Work/blam/tmp/round4/zcore/
(zc.py, anchors.py, core23.py, twosite.py, uid.py; coord/rd.py is the
named-term normalizer, jn/dbn.py the de Bruijn enumerator/normalizer).

## Claim 1 (Lemma A, handwritten)
R = \s. M a reader, M = Ctx[Q] at a source position p, with
 (Hyg) FV(Q) within {s, c} (Q uses no binder of Ctx),
 (Zr)  Q[Z(r)/s] =beta r,
 (G0)  with sigma = [cons b r / s] (b, r fresh rigid) and h fresh rigid,
       Ctx[h] sigma head-reduces to h Y1 (exactly one argument), and
       Y1 =beta j in the zero instance (b:=K) and in every unary instance
       (b:=F, r:=U_(n-1)).
Then \s. Q j is a reader and w(\s. Q j) <= w(R), equality iff Ctx = [] j.
Proof: generic head steps of Ctx[h]sigma stay valid after h := Q sigma (no
capture, by Hyg), so Ctx[Q]sigma ->* (Q sigma)(Y1[Q sigma/h]); instantiate:
unary Q[U] j =beta c U N, zero Q[Z] j = r j. Cost: M's root is an
application (else zero output is a lambda), so |Ctx| >= 2; Q's free leaves
cost at least as much in place as at the top; j costs 0 in \s. Q j.
Let-closure extension: if Q also uses variables let-bound in Ctx
((\x. C1[...]) A, A hygienic up to outer lets), Q+ = (\x. Q) A is hygienic
and zero-r, \s. Q+ j is a reader, and Ctx pays the let's lambda, its
application node, A, and a separate delivery application, so |Q+ j| <= |M|.
Corollary A2: Q = Lets[s I X] => Lets[X] j = c U N on unary, and the
round-3 handoff check (all terms over [s,c] through 30 bits, all shapes,
probes n=1..3; solutions \u. s (\q.c) (s s X0), X0 in {u,s,c,I}, 28..30)
gives |Lets[X]| >= 28, so w(R) >= 46, equality iff R is the 162 reader.

## Claim 2 (Theorem T2, handwritten reduction + finite check)
A syntactic dispatch site in M is an occurrence of (a) s I W (s = the
stream variable), sigma = |s I| + 2 >= 10; (b) x A W where x is bound by an
abstraction \x. P occurring as the direct argument of a stream occurrence
s (\x. P), sigma = |x| + |A| + 4 >= 8; (c) s K A W, sigma >= 15. Deleting a
site (E W -> W) keeps the unary law (congruence; for (b):
s (\x. P) ->beta P[F/x] U on unary). Two sites are disjoint when neither
lies inside the other's E-part.
T2: if M has two disjoint syntactic sites then w(\s. M) >= 46.
Proof: |M| = |M''| + sigma1 + sigma2 with M'' a unary core. If j lies in a
deleted E-part, M'' is j-free so |M''| >= 22 (jn's L2', complete check)
and that site has sigma >= 10 (j under the handler lambda costs >= 4, or
s K j ...: >= 15), so |M| >= 40. If j in M'': |M''| >= 20; core23.py shows
there is no one-j unary core of exact cost 21, 22 or 23 (16,126 / 30,464 /
54,424 terms, all shapes; 4 caps at 22, all j-headed or Omega), and at 20
only s (\q. c) (s s j) (jn). So |M''| >= 24 (then |M| >= 40) or M'' is
core20 with sigma1 + sigma2 <= 19, each site sigma <= 11, so zero arms
A have cost <= 5. twosite.py re-inserts two sites into core20 in every
way (the only handler binder available is q of s (\q. c)): 84 / 144 / 228
candidates with |M| <= 39 (arm generators of depth 1/2/3), no reader.
Validation: with budget |M| <= 42 it finds exactly the 164
\s. s (\q. q F c) (s I (s s) j).

## What I want from you
1. A counterexample reader (any weight) to the *proof steps*: e.g. a reader
   meeting Hyg/Zr/G0 where \s. Q j is not a reader; a let-closure case where
   |Q+ j| > |M|; a syntactic site whose deletion breaks the unary law; a
   two-site configuration the enumeration misses.
2. Any reader with w <= 45 is of course a refutation of everything.
3. Verdict per claim: correct / broken / gap, with the exact step.
