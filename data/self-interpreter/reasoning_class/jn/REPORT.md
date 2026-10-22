# jn lane report (round 4)

(Saved by the coordinator from the lane's returned text; the lane's write
was blocked by its harness. Full running record: NOTES.md.)

No reader of weight <= 45 was found; no sub-162. L1 and L2 hold as stated.
L3 is false as an additive lemma; in its place the dispatcher families were
closed one at a time for operands of any shape, with one gap left.

Every computer check enumerates every term of every shape (redexes
included) with the class's exact cost model (j priced 0 plus 4 per λ above
it), probing n = 1..3, so an empty check is a real refutation for the class.
Fuel or size caps were not counted as failures: each got a sound
certificate (a head cycle on the term or on its η-normal form — a β-normal
form exists iff a βη-normal form does, Barendregt 15.1.5 — or a target
constant c/N absent from the term, or a closed Ω subterm). Every check ends
with zero uncertified caps apart from one certified by hand (noted).

## 1. Interpreters

None built. The checkers rediscover only the record's known 164,
`\s. s (\b. b F c) (s I (s s) j)` (w 48), as the single answer in their
validation runs.

## 2. New exact identities (handwritten, checked by normalization)

- r-doubler: `s (\x. s P) = P b r r` on the generic cell s = cons b r.
- A second minimal j/N operand: `s (\x. s (\b. b F)) j = b F r r j` (zero:
  F r j = j; unary: r r j = K N j = N), 25 bits, tying `s K j (s s s)`; it
  reuses j as the N-extractor's erased operand.
- First-dispatch normal form (the precise "dispatcher" of L3). For
  R = \s. M, head-reducing M[cons b r/s] simulates both instances step for
  step, so the hnf is either `b A B C` (zero: A C = r j; unary: B C = c r N)
  or `r A` (second-cell case). 162 = b r V j; 164 = b F c r T;
  165 = b X c r (s s s). Without duplication, j sits in A (zero-only, erased
  on unary for free by F) or in C (shared, so unary must erase it), never
  in B.
- Depth-1 dispatch inventory: the bit reaches head position only through
  s I = b r, s K = b (11 bits), s s = b b r r (dead), s (\x. x X Y),
  s (\x. x X), s (\x y. B), or the doublers.

## 3. Lemmas

- L1 (computer-checked, lcheck.py): Y with free s, c and one rigid j,
  Y[Z(r)] = j and Y[U_n] = N ⇒ cost(Y) >= 25 (j taxed 4 per λ inside Y).
  410,069 terms; exactly two meet the law at 25 (above); 56 caps, all
  Ω-family.
- L2 (absorbing arm): round-3 handoff check (all shapes up to 30 bits):
  minimum 28, the 162's family.
- L2′ (arm without j, computer-checked): T[U_n] = c U_(n-1) N ⇒ cost >= 22;
  unique at 22: s (\q.c) (s s s).
- Core lemmas (computer-checked, cores.py): unary core (one j allowed,
  must be erased) >= 20, through 22 bits only s (\q.c) (s s j); zero core
  >= 12 (s F j, s s s j). The 162 pays exactly 20 bits of dispatch overhead
  over the unique unary core; the 164 pays 22.
- L3 false as an additive lemma: the 164's c lives in the dispatcher, its
  N in the shared operand T, and j serves both the zero routing and s s's
  erased operand. Corrected version: the first-dispatch case analysis:

| Reader shape (j at any depth, taxed) | Status |
|---|---|
| s I A2 A3 | Closed: A3 = j by L2; A3 ≠ j: case1b.py, every pair \|A2\|+\|A3\| <= 27: none |
| s K A2 .. Ak, any k | Closed, handwritten from the core lemmas |
| s (\b. b X Y) T | Closed: fam_bxy.py, \|X\|+\|Y\|+\|T\| <= 25 (75k Y, 52k T): none; validation at 28 finds exactly the 164 |
| s (\b. b X Y) T1 T2 | Closed: fam_bxy3.py; the two unary survivors are the unary core in disguise and lose j on zero |
| s (\b. B) T, B any term | Closed for \|B\| <= 21 and \|T\| <= 21 (fam_lamB.py; 994 caps all certified; validation finds the 164), and for \|B\| <= 9 (smallB.py, bodies.py; one leftover cap, a self-application with no hnf, certified by hand) |
| every λ-rooted reader body <= 25 bits | none exists, so λ-rooted readers have w >= 32 |

K argument (budget Σ|Ai| <= 30 − 2k): j in A2 ⇒ A3..Ak is a j-free unary
core (>= 22) ⇒ |A2| <= 2 ⇒ A2 is literally j [close46's repair; the lane
had written s], which fails the zero law by keeping head j; j in Ai, i >= 4
⇒ A3..Ak is a unary core of <= 22 bits, i.e. s (\q.c) (s s j), and every
spine split leaves s s j in the shared tail, which is r on zero: zero loses j.

## 4. Honest read and next step

The unary core is unique at 20 bits, and the 162 is the reader whose whole
source is used by the unary branch (its zero branch costs nothing beyond the
s I _ j frame). Every closed dispatcher family pays >= 20 bits of overhead.
Inside the class a sub-162 can now only hide in: a big λ-dispatcher
(22–31 bits) with a trailing operand of <= 9 bits (the natural case is the
two-operand s H j shape); an s-headed or redex first operand; λb. b X Y with
k >= 4; redex bodies and application-rooted readers. The lane's judgement
(not a proof): none holds a reader of weight 45.

Brute force is finished at this scale (λ-rooted bodies up to 27 bits
already took 5.7 GB; ~2×10⁹ λ-rooted d=1 readers at w <= 45). Proposed
next technique: a "hole" decomposition, cost(R) = the unary-needed core
(with zero-only holes priced 0) + the cost of filling the holes, aiming at
the theorem "any zero-completable unary core costs >= 40" (alongside a
meet-in-the-middle search over the first dispatch, which the coordinator is
not pursuing, per a9's no-broad-search guidance).
