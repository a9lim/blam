# d1open lane report (round 4): jn's open depth-1 families

No reader with w <= 45 was found, so there is no sub-162 and nothing to
splice.  Status of the four families I was given:

| family | status |
|---|---|
| (c) `s (\b. b X Y) T1..Tq`, q >= 3 | **closed**: a handwritten reduction, then a small check (famc2) |
| (a) `s (\b. B) T`, B 22..31 bits, T <= 9 | **closed for every B whose head path has no beta-redex**. Open: B with a redex on its head path |
| (e) gap found: `s (\b. B) T1..Tq`, q >= 2, B general | closed with the same exception, plus one skeleton left open because its check exceeds the cap: `s (\b. b X1) T1 T2` |
| (b) `s (s P ..) ..` | **closed for every head path with no beta-redex** (3,401 skeletons). Open: redex heads |
| (d) the lambda-s body is a redex | open (only close46's constraints apply) |

Combined statement (computer-checked at probes n = 1..3, on top of jn's
core lemmas and checks): **every s-spine reader `\s. s A1 .. Ak` whose
first operand reaches its first dispatch through s-expansions,
lambda-bindings and variable heads only (no beta-redex on that head path;
the off-path pieces are arbitrary terms) has w >= 46.** That covers jn's
I, K, `b X Y` families, all of (a), (b), (c) and (e) without head redexes.
The exceptions are the single open (e) skeleton above, plus 11 over-cap
skeletons that are covered instead by jn's checks or by handwritten
arguments (section 3).

Probe caveat: like jn's and refute46's checks, every computer check tests the laws at n = 1..3
only.  A refutation at the probes is a refutation for the class.

## 1. Interpreters built

None.  Positive controls: the generated checker finds the record's 164
`\s. s (\b. b F c) (s I (s s) j)` at exactly w = 48 (validate164.py).
famb/skel also find a constructed m = 3 reader and its relatives at
53..58 (sk_validate2.py).

## 2. New exact lemmas (handwritten unless marked)

**Unary-replacement (deletion) lemma.** Let M be a reader body, with
w = 6 + |M| in core pricing (j charged 4 per lambda inside M).  Suppose Q is
a subterm and Q' a term with the same value on every unary probe; for
example, Q = E X1 X2 with E equal to F on unary (a dispatcher bit b, or
s K) and Q' = X2.  Then M' = M[Q -> Q'] is a unary core (j-free if j lay in
Q).  Through 22 bits the only cores are `s (\q.c) (s s j)` (20) and the
j-free `s (\q.c) (s s s)` (22) [jn cores.py / lcheck L2, re-run here].  So
unless M' is one of those two, |M'| >= 23 and **w >= 29 + (|Q| - |Q'|)**.
Corollaries:
- A dispatch E X1 X2 has |X1|_w <= 12 - |E|.  With the bit b at index 0
  this gives |X1| <= 10, and j is not in X1: a j-carrying X1 of at most
  10 bits is j-headed on zero.
- No reader with w <= 45 contains `s K X1 X2`.  `s (s K Q1) A2` is
  excluded too (the savings are 17 + |Q1|).
- The T** bound used in famb is the case E = b.
- The 162 and the 164 both carry 10 bits that are dead on unary, and
  zero-compatible unary cores of exactly 30 bits (`V j`;
  `s (\b.c) (s I (s s) j)`).  Keeping j alive on zero is what lifts the
  core from 23 to 30.

**s-elimination lemma.** Inside `\b. \x. ..` (the dispatcher binders hold
the stream's bit and tail on every input), replacing `s P` by `P b x` keeps
the reader's behaviour on every input.  At p = 1 and local depth d', with
close46 (6), the cost change for `P = \u. P'` is

    Delta = m_u (1 + d') - 4 - G1,

and a second binder bound to x adds at most -6 - G2 + (m_v - 1) d'.  Take a
counterexample that is lex-minimal (weight, then lambda count) in the
lambda-dispatcher family.  Then Delta >= 1, which forces m_u >= 5 + G1;
the budget kills that case.  The same holds at p = 2, where
Delta = 2 m_u - 4 - G1.  So s-headed bodies at p >= 1 whose first operand
is a lambda have no minimal counterexample.

**Family (c) reduction.** For `s (\b. b X Y) T1..Tq` with q >= 3,
T** = `s (\b. Y) T1..Tq` is a unary core with q + 1 >= 4 operands, so
|T**| >= 23.  That forces |X| <= 10 for every q and q <= 5, and j cannot
sit in X.

**Operand facts (sec. 0 of NOTES).**
- Apart from j and `\x.j`, every j-carrying T of at most 9 bits is
  rigid-headed, so it dies on zero.
- With T = j, the laws `B r j = r j` / `c r' N` are equivalent to
  `B r =be r` / `B r' = \y. c r' N` (y vacuous).  So family (a1) asks
  exactly whether `s (\b. B)` can replace the 162's `s I V`.

## 3. Computer checks (all within the coordinator cap: <= 100k terms per check, < 2 min, < 1 GB, 1 thread)

- **famc2.py (family c).** j-free X <= 10 bits, against every tuple of T
  meanings (all T <= 14 bits), for q = 3..5, then every Y in budget: no
  reader.  0.2 s, 0 caps.
- **famb.py / famb2.py (b-headed bodies).** Shape `\^p. b A1..Am` with q
  trailing operands, p <= q+1: 61 + 12 runs, no reader.  Validated against
  jn's fam_bxy3 (it reproduces jn's 2 unary triples exactly).
  - WOFF = 3/4 reruns (w <= 48/49) close the s-headed p >= 1 bodies with
    A1 in {b, b Q..}, through s-elimination at +3/+4 bits.
- **famdr.py / famdr2.py (x-headed bodies).** `\x y1..yq. x A1`, q = 1..4:
  no reader.
- **famy.py.** y-headed bodies at q = 1 (j forced to depth 4): no reader.
- **skel.py + hskel.py (two-sided first-dispatch skeleton checker plus a
  generator of every head path).**
  - Head paths are built from lambda-binders, variable heads (bit, tail,
    T-binders, bound pieces) and s-chains: nesting up to 8 deep, at most 8
    lambdas and at most 8 operands.  The generator is saturated: raising
    any of these limits adds no skeleton.
  - Both branches are resolved symbolically.
  - Unary templates use placeholders, and the zero heads get the full
    budget.
  - Results:
    - **run_gen e**: every redex-free lambda-dispatcher body, 3,115
      skeletons.
    - **run_gen b**: family (b), 3,401 skeletons.
    - Neither finds a reader.
  - Over-cap skeletons:
    - 11 coincide with closures done elsewhere:
      - jn: fam_bxy, fam_bxy3, the K family, s I/case1b, smallB,
        bodies.py;
      - this lane: famb;
      - handwritten.
    - 4 were rerun under the cap with handwritten zero-head bounds from
      the replacement lemma (run_big2.py, run_open_e.py): no reader.
    - 1 remains open (sec. 5).
- **Cap audit (audit_caps*.py).**
  - Every hole term the pools excluded for a capped probe contains a
    closed unsolvable subterm, or is unsolvable under every instantiation.
    Such a subterm is never needed in a valid reader, so it can be
    replaced by a 2-bit term.
  - The capped unary templates are either certified by a head cycle, or
    are `j Omega` / `T Omega`.

## 4. Errors found and fixed

All are recorded in NOTES.

1. **The y-head is not dead.** I had first said a y head (the binder of a
   trailing operand) is dead.  It is live whenever T is function-valued:
   T = s gives a 2-bit copy of s.  These bodies are now covered.
2. **Over-tight caps in skel.py.** skel.py reserved 2 bits per hole, but a
   depth-1 hole can be a bare j costing 0.  The affected caps were
   2 bits too tight.  Fixed, and everything rerun.
3. **Unary head carrying j.** skel.py enumerated the unary head j-free
   even when that hole also feeds the zero side.  1,485 affected
   skeletons were rerun; there are still no hits.
4. **Cap breaches, early and later.**
   - Early runs:
     - The supplementary `fam_bxy.py 26` (more than 100k terms) predates
       the cap.
     - `fam_bxy.py 27` reached 5 GB and was killed.  Never repeat it.
   - After the cap:
     - Two chunk runs exceeded 100k-term pools.
     - One over-cap run of the open (e) skeleton happened before I added
       the gate.
   - None of these runs is counted; every claim above rests on compliant
     reruns.

## 5. What remains (exact)

1. **The one open (e) skeleton.** It is
   `\s. s (\b. b X1) T1 T2`, with laws:

       zero:  X1 T1 T2 = r j
       unary: T1 b' r'' T2 = c (cons b' r'') N

   So T1 is a second-cell handler that also receives T2.  Even with the
   replacement bound |X1| <= 16, its check needs about 228k terms.  The
   best constructions I found need 31 bits or more against a budget of 25,
   for example T1 = `\p q. c (s F)` with T2 = `s s j`.  A structural bound
   would close it: a second-cell handler with one helper operand costs
   >= 24 (jn found no bare handler through 27 bits).
2. **Redexes on the head path** in families (a), (b) and (e), and family
   (d).  A count-only extension of the generator to head redexes gives
   about 6.4e5 skeletons (a loose upper bound).  That is a broad sweep, so
   I did not run it.  close46's kernel-checked rules prune them in a
   minimum reader:
   - no erasing redex;
   - every linear redex satisfies (F-1) D >= 7 + G;
   - non-linear redexes are let-sharing with
     (m-1)|A| + (F-1) D > 2m + 4 + G.
3. **Not mine, but uncovered.** Root-redex readers (close46 shape R), and
   s-spine readers whose first operand is itself a redex.

## 6. Honest read

- **Where a sub-162 could still hide.** Every redex-free way of getting to
  the first dispatch is now closed.  What is left is sharing: lets and
  beta-redexes on the head path, i.e. families (d) and R, where one piece
  is used by both branches.  That fits the history: every past gain came
  from a cross-module sharing move.
- **The structural target.** It is a "zero-compatible core" theorem:
  - the unary core left after deleting zero-only material costs >= 30
    when j survives on zero;
  - equivalently, the 23..29-bit unary cores are all j-erasing on zero.
  - The two lemmas in sec. 2 reduce 46 to exactly this, for readers whose
    dispatch is a source occurrence.
- **A technique that could reach it.** Classify the cores by how they
  erase j (absorber / stream-K / a second dispatch).  Price each mechanism
  with jn's L1/L2 for depth-1 pieces.  Then use close46's weighted beta
  balance to carry the bound through lets, instead of enumerating them.

Files (all under /Users/a9lim/Work/blam/tmp/round4/d1open/):
- Running record: NOTES.md.
- Checkers: skel.py, hskel.py, run_gen.py, famb.py, famb2.py, famdr.py,
  famdr2.py, famy.py, famc.py, famc2.py, run_big2.py, run_open_e.py,
  audit_caps.py, audit_caps2.py, validate164.py.
- Logs: gen5_*, gen6_*, fame_*, famb*_*.log.
