# bridgeadv lane report (round 4)

(Saved by the coordinator from the lane's returned text; the lane's write
was refused by its harness. Running notes: NOTES.md; scripts: eng/.)

No reader with w <= 45; no interpreter built. Every computer check tests
n = 1..3, fuel-outs count as failures (audit §4). The check engine is jn's
dbn.py with one fix (size checked every 4 steps, not 64; self-application
terms could hang).

## 1. Candidates (rd.py)

| source | w | outcome |
|---|---:|---|
| `\s. (\x. x x) (s I) j` | 26 | zero law holds; unary gives j |
| `\s. (\x. x x) (s (\b. b b c)) j` | 36 | zero holds; unary gives c r (c r) j |
| `\s. (\x. s I (\u. s (\q.c) (s s u)) x) j` | 57 | passes (hoisted 162, j through a let) |
| `\s. (\x. s K x x) (s I V) j` | 70 | passes (shares the whole 162 body) |
| `\s. (\x. s (\b. b F x) ((\y. s I (s s) j) x)) c` | 75 | passes (164 with an empty share; checker validation) |

## 2. What a let can save (handwritten)

For (\x. B) A with k uses of x, use i under m_i of B's own λs (M = Σ m_i),
f_A free leaves of A, T = B's other leaves pointing above λx (+4 if j in B):

    S = (k−1)|A| + (f_A−1)M − 4 − 2k − T      (j not in A)

(checked on share46's D-let reader: 68 → 63, S = −5). Consequences:
linear lets never pay (S = (f_A−1)m₁ − 6 − T); a let used in one spine
operand can be pushed in without raising w (into operand >= 2: jn-closed
territory; into the first operand: A1 becomes a redex, open); S <= 0 and j
not in A ⇒ contracting gives a one-j reader no heavier; j in A with k >= 2
duplicates j (own checks needed); a let needs TWO PRODUCTIVE USES (use
whose reduced expansion is bigger than the use), else removable at
(f_A−1)m₁ − 6 − T. Why G_c costs 67: g F → I is unproductive by 7 bits, so
G_c is in effect a linear let of a 31-bit term for the 28-bit V plus
overhead (46 + 21); every factory whose other role is a closed selector
(I 4, F 6, K 7) has the same problem; s G_c gives C1/r, cons-shaped
arguments give c r r on zero. Largest saving under w <= 45 (top-level let,
j trailing) by k = 2..6: ≈22, 36, 45, 46, 39; maximisers are pure
self-application combinators B = x x … x (T = 0). Counting alone allows a
let-contracted reader of about 91 bits: **no bounded-sharing bridge follows
from accounting; it must use semantics**, and these combinators are where.
For k = 2 a let repays only when |A| >= 9 + T − (f_A−1)M.

## 3. Bridge results (full w <= 45 budget, all shapes)

- Shared lets over jn's s I spine: closed (j in B: handwritten, every k;
  j in A: tl_i2.py, 39,747 pairs, 706 pass zero, none read; j trailing:
  impossible).
- Unary cores through 28 bits (cores2.py, cores28.log): 2,598,873 terms,
  67 cores, 0 uncertified caps; none at 21–23 bits; the only core <= 23 is
  s (\q.c) (s s j) (20); every core is c-headed on Z(r); every core erases
  j inside the argument of s s or by an erasing redex applied to j.
- Shared lets over jn's s K spine: closed (handwritten + core catalogue).
- Self-application families (delta.py): \s. (\x. x x) A j, |A| <= 27
  (~588k), and j inside A, <= 29 (~4.8M): 0 readers; B = x x x, x (x x)
  (j trailing |A| <= 23, j in A <= 25), x x x x (|A| <= 19): 0 readers.
- Shared let across a general λ-dispatcher and operands (sl_lam.py,
  sl_gen.py), \s. (\x. s (\b. B) T1 [T2]) A [j], x in >= 2 of B, T1, T2:
  one operand 59k/18k/424k/1.2k, two operands 44k/13.6k/13.6k/328k/1.1k
  (j trailing / in T(1) / in T2 / in A / in B): 0 readers.
- x at the head, one operand (tlx.py), \s. (\x. x T1) A j, x in T1, S > 0:
  697k + 485k: 0 readers (the unrun A = 26–27 chunk forces T1 = x, closed
  above).

## 4. Audit

A reader must contain c, so unresolved c-free terms fail. All timeouts and
all but 16 fuel caps lack c; the 16 rerun at fuel 50,000 do not normalise;
one checked by hand (A = \x0. x0 (s x0 x0 c): s A A c →* A, A A loops).
Not fully audited: logs printing only the first 8–16 unresolved terms
(tlx_t45_a/b, tlx_trail41, dxxx, dxxp, sdelta).

## 5. Open, and the next step

Open: top-level lets over spines with >= 3 operands after a λ-dispatcher;
x-headed lets with two operands or j in A/T; lets above λs and general
application-rooted readers (paper argument only); nested lets and closed
post-processors; non-let redex A1; Δ-style terms (zero law at 26 bits, but
need u u j = c r N for some unary value u — no general semantic lemma).
Proposed: a DP over zero/unary meanings with a shared parameter, plus the
S formula, push-in and two-productive-uses lemmas.

## 6. Compute disclosure

These runs exceeded the coordinator's later 100k-term cap (all before the
note arrived, none over ~95 s): cores2.py 28 (2.6M), delta.py runs
(225k–2.2M each), sl_lam gamma (424k), sl_gen a (328k), tlx chunks (697k,
485k). The last tlx chunk was killed when the note arrived.
