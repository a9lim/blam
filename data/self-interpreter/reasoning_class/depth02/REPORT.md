# depth02 lane report (round 4): the reader bound at hole depths 0, 2, 3, 4

Lane directory `tmp/round4/depth02/`; running notes in `NOTES.md`. No reader
with w <= 45 was found, so nothing was spliced or battery-run. This lane
closes **all of depth >= 2** and **every depth-0 reader whose j is the direct
argument of a lambda**, under the minimum-counterexample order (w, L, d)
that prove46 already uses. One family at depth 0 is still open. The lane
also found two flaws in how STATE46 reduces depths, and both are repaired
here.

Status tags used below: **handwritten**, **computer-checked** (an exhaustive
filtered generation, a normal-order checker, and refutation certificates),
**Lean** (an existing kernel-checked theorem, used and cited, not new).

## 1. Interpreters built

None, and there is no sub-162 claim. One near-miss: at d=2, w=45, the reader
`\s. (\x. x x) (\x. s x (x x c) j)` satisfies the zero law and fails the
unary law. It is "self-application dispatch": W W -> s W (W W c) j, and on
a zero stream the bit K is fed back as W's argument (s K (K K c) j r .. ->
r j). On a unary stream the result is c F U'' j ...: the head is right, the
arity is wrong.

## 2. Two flags on the existing depth reduction (handwritten)

**F-1, minimality order.** STATE46 and reader30 s4-5 hand "d=2 with
w+f<=45" and "d=3, f=3" over to depth 0 by hoisting. But every depth-0
exclusion so far assumes a *minimum* counterexample (no erasing redex,
V>=f+5, prove46's tie-breaks). The hoist H(R) of a d=2 reader contracts back
to the lighter R, so H(R) is never a minimum, and those exclusions never
reach it. At d=3 with f=3, H(R) has the same weight and one more lambda, so
under (w, L, d) R is the minimum, not H(R). As written, then, the d=2
non-strip rows and the d=3, f=3 row were never covered. Results A and D
below close both directly, so the repaired reduction needs no hoisting at
depth >= 2.

**F-2, relaxed budgets for hoisted forms.** A minimum d=0 counterexample
R* = C'[(\a. B) j], with a linear at depth D in B, contracts to the reader
R' = C'[B[j/a]], and w(R*) = w(R') + 6 + F_B - 3D. When D<=2 the
contraction is lighter, or has equal weight with one lambda fewer. When D>=3,
R' can be any reader with cost(R') + D + F_B <= 39, and its own weight can
be **above 45**: up to 47 at d=3, f=1, and up to 50 at d=4. So no closure
of deep readers "at w<=45" covers the hoisted d=0 family. That includes
jn's taxed s-spine closures and the counts table, which dropped d=3 and d=4
altogether. Result C closes the family at the correct budget.

## 3. New exact identities and lemmas (handwritten, with proofs)

- **Budget arithmetic.** w = 2L + 4V - 4 + X + 4d. At d=3, L>=3 and
  V<=7; at d=4, V<=6; d>=5 is impossible. A lambda-rooted reader has X>=f.
  The Lean result `reader_nonlinear` gives V>=f+3.
- **Chain swap.** (\y1..ym a. P') Q1..Qm j and (\a y1..ym. P'') j Q1..Qm
  are beta-equal, with the same L and the same d, and their weights differ
  by exactly m*k_a - n_y. Here k_a counts the uses of a and n_y the uses of
  the y's. Proof: both reduce to P'[Q/y, j/a]; a's index rises by m and
  each y's falls by 1.
- **Copy lemma (let-bound j).** Take a minimum R* = C'[(\a. B) j] with a
  used k>=2 times. (i) Exactly one copy survives the zero run, and every
  other copy is erased in every run. (ii) Replace an erased copy at depth
  t>=1 in B by the index-0 bound variable at its position. The original
  reductions replay step for step, because the replaced leaf's residuals are
  exactly the erased positions, and the weight falls by t. So every
  non-surviving copy sits at depth 0 in B. A lambda-rooted B therefore
  forces k=1, and B is app-rooted. (iii) Replace those depth-0 copies by c
  (+1 bit each, again by replay) and contract. This gives
  w(R*) - 6 - c_B + 3D, so a survivor at D<=2 is lighter, or has equal
  weight and one lambda fewer. Hence D>=3.
- **Filter soundness.** F1: j is never in function position, because
  (j X) persists. F2: j is never inside a c-headed spine, because its
  residual stays under c. F12: a lambda-rooted reader's body is not a
  lambda. These hold for any reader. Fd: every source redex has delta>0,
  or delta=0 with no loss of lambdas, where delta is its exact contraction
  cost. Fd holds for a minimum and is computed in the frame of the term that
  is minimum. In a reader's own frame, a nonlinear redex whose argument
  contains j is **exempt**: contracting it would duplicate the source j, so
  minimality says nothing about it. My first d=2 run missed this
  exemption; section 4 records the correction and the full recheck.
- **Divergence patterns used as certificates.** (1) G-tower,
  G = \y. y (\w. y w J): G H^k(G) S ->+ G H^(k+1)(G) J^k S, with
  H(A) = \w. A w J. (2) Q-tower, Q = \x. x c (\y. x (\z. j)), with
  W_(k+1) = \y. W_k J: Q W_k Z ->+ Q W_(k+1) Z. Both reduce forever at the
  head, so they have no normal form.

## 4. Closed families

Common machinery (computer-checked). The generators are `rowgen.py`
(unfiltered), `gen.py` (Fd in the hoisted frame R*), `gen2.py` (gen.py with
Fd exempt on j's depth-0 path, for app-rooted contracted readers), `gen3b.py`
(Fd in the reader's own frame, corrected) and `gen4.py` (dummy j copies).
Each streams the exact count row (d, L, V, X, f, root). Their completeness
against an independent unfiltered generator plus a local-filter predicate
was checked on 17 rows (genval*.py: equal sets). Raw row counts match an
independent cost DP. The checker is jn's de Bruijn normal-order engine
(dbn.py, copied), with fuel 1500-3000 and exact normal-form equality, plus a
0.3 s alarm for terms that blow up exponentially. It recovers the 162
reader, the 165 reader (d=4), refute46's d=3 reader and the 53-weight
K-reader, each as the unique hit of its own row where that row was run.
Every refutation is definitive: either the zero law or the n=1/n=2 law
fails with a computed normal form, or one of these certificates applies:
- head-cycle (jn's `no_beta_eq_cert2`);
- erasure E (some head-reduct of R Z(r) has lost r or j);
- the two hand towers above;
- `blam adjudicate --no-oracle` (escalation engine) DIVERGE on
  `\c j r. R (cons K r)`. The encoding was validated: the 165's zero instance
  HALTs with the 13-bit normal form \c j r. r j, and Omega DIVERGEs.
Total hits in every family: **0**.

**Result A: depth >= 3** (any tie-break after weight). A d=4 reader, or a
d=3 reader with f<=2, hoists to a strictly lighter reader (Lean
`ReaderHoist`). For d=3 with f=3, every row of both roots, V in {6,7}, all
(L,X) with w<=45: 36 rows, 879,944 *unfiltered* terms, 0 hits, 0 caps, 4.1 s.
Hypotheses: Lean hoisting, Lean `reader_nonlinear`, and the arithmetic.

**Result B/C: j the argument of a linear lambda at depth 0.** Contracted
reader R' at depth D=3..9 with cost(R') + D + F_S0 <= 39. Hypotheses: R* is
minimum under (w, L, d), the handwritten soundness of the filters, and
V>=f+3.
- Lambda-rooted R': 426,290 terms, 487 caps (481 cycle, 6 whose stream
  binder is unused).
- App-rooted R': 2,798,914 terms; caps cleared by E, cycle, the hand towers
  and blam (48 + 5 DIVERGE).

**Result D: depth 2, every row** (w<=45, any f, both roots). Lambda-rooted:
2,843,684 terms (gen3b, including the 473,303-term recheck). App-rooted:
573,276 terms plus a 317,487-term recheck. All caps certified: 6,981 + 11,057
+ 9,444, the last one by hand (a G-tower). Hypotheses: minimum under
(w, L, d), the corrected Fd, F1, F2, F12, and V>=f+3. This covers STATE46's
six-pair strip and the rows that F-1 left uncovered.

**Result E: j let-bound at depth 0** (j the argument of a nonlinear lambda).
By the copy lemma, the generated object is R'' = C'[B[j/a]]: one j at depth
D>=3 plus 1-5 dummy copies at depth 0, with 2L + 4V + X + D + F_S0 <= 43.
D=3..9: 1,403,876 terms, 507 caps, all blam DIVERGE.

Together, B, C and E say: **in a minimum counterexample at depth 0, j is
never the direct argument of a lambda.** The chain swap also rules out every
spine whose head lambda-chain binds j with m*k_a <= n_y.

Two runs broke the two-minute rule: the first monolithic D=3 app-rooted run
(176 s, single thread) and one certification pass that the timeout killed.
After that, every chunk stayed at or under 23 s, and the leftover caps went
to blam at 2 threads.

## 5. What remains at these depths, and my read

**Open at d=0: case (d).** j is a later argument of a lambda-headed spine
that follows a profitable j-free let, (\y. P) Q1..Qm j ..., and the head
chain does not bind j ("short-chain", e.g. (\y. y B..) Q j), or binds it
with m*k_a > n_y. This is exactly *shared closed code applied before j*,
which is STATE46's sharing mechanism moved to depth 0. Filtered sizes are
226,890 terms at w<=37, growing about 3.3x per 2 bits, so roughly 2.5e7 at
w<=45. That is too big for a pinned check without another reduction.

**Next step.** A let-floating lemma for (d). Unfolding the let X =
(\y. P) Q to its whnf \a. X1 gives a case (b)/(c) reader, but a heavier one,
so the lemma has to price the sharing itself. Candidates are a swap that
moves j's binder into Q's position for short chains, or a value-semantics
DP over the closed shared code Q1. Q1 is closed over c, so its zero and
unary meanings can be memoised, as refute46's semcheck does for operands.

**Read.** For depth >= 2, and for j as a lambda argument at depth 0, the
bound w>=46 now holds without the gaps above. If a sub-162 reader exists in
the class, it is at depth 1 (jn's lane) or in case (d) at depth 0. Both
places are about *sharing code between roles*. The near-miss above shows a
third dispatch mechanism (feeding the bit back through self-application)
that none of the s-spine dispatch inventories model. It deserves one
pricing pass at d=1, where j is outside W.

Files: rd.py, dbn.py (copies); rowgen.py, gen.py, gen2.py, gen3.py,
gen3b.py, gen4.py; validate_rowgen.py, genval*.py, known.py, t3val.py;
runners t3all.py, t3app_*.py, runfam*.py, run_*.sh; certificates cert2.py,
certify_*.py, caps2blam.py, unknowns.py, toblc.py; logs *.log; caps *.pkl.
