# adv6 notes — constructive adversary on root lets (Claude, wave 5)

Helper: work/t.py (chk(r) prints rd.check plus Z/U1/U2 normal forms).
Weight in counts: w = 2L + 4V - 4 + tax + 4d (rootnf). d = 0 needs j at the
root spine (pending operand) or at application level inside A.

## 0. Orientation (read: BRIEF, BRIEF5, class-bound §2-3, adv5, rootnf,
rootlet, root, shared, SYNTHESIS tail)

- Any reader w <= 45 of any shape suffices constructively; proofs say the
  minimum would be a root let (λx. B) A C⃗, k <= 5 uses, w >= 4k+22+4d+tax.
- Lift: (λg. λs. B) H vs λs. (λg. B~) H: w(R') = w(R) + u_s - u_g + f_c(H)
  + 4 occ_j(H). A root let with j inside B has j at depth >= 2.
- Hoist: w((λa. R[a/j]) j) = cost(R) + d + f + 6. Needs cost+d+f <= 39.

## 1. Lift sign, linear-let savings (handwritten)

- Lift sign: root form (λg s. B) H is LIGHTER than λs. (λg. B~) H by
  u_s - u_g + f_c(H) + 4 occ_j(H) (s is index 0 at the root, g index 1).
  So the root form wins when the body uses the STREAM more than g (the
  PROMPT's prose has it the other way; the formula is what matters).
- With pending j: λs. (λg. B) H j has j at depth 1; its root forms are
  (λg s. B j) H (j depth 2, +4) or (λg n s. B n) H j (λn + app + n leaf).
  Measured: 42 / 45 / 46 for B = s g (g s), H = G = λt. t t c.
- Linear root let vs its contraction: saving S = (F-1)M - 6 - T (F = c's +
  4 j's of A, M = depth of x's use counting λs, T = c's + 4 j's of B).
  Only j-carrying A pays: A = j at depth 4 is the 165 (S = 5). A with j and
  the only c (F = 5, T = 0): S = 4M - 6, so a λ-rooted reader whose single
  {c,j}-closed subterm sits at depth M >= 3 with w <= 45 + 4M - 6 would do.
  Such a subterm must hold the zero-only j and the unary-only c, i.e. be a
  closed dispatcher λb. b Z c; readers put it at depth 1 (S = -2).

## 2. Designs priced (rd.py, n = 1..6)

| reader | w | note |
|---|---:|---|
| (λg s. s I (λu. s g (s s u)) j) (λq. c) | 56 | linear let of K c: +10 |
| (λg s. s (g I c) (s (g (λy. j) (s s)))) (λx y b t. b (x t) (y t)) | 90 | dispatcher factory |
| (λx n s. s x (x s) n) (λt. t t (λa y u. c a y)) j | 66 | G-absorber, correct |
| λs. (λx. s x (x s)) (λt. t t (λa y u. c a y)) j | 62 | same, d = 1, correct |
| (λn s. s (λb t. b I c t (b n (t t t)))) j | 59 | bit used twice |
| (λn s. s (λb t. b t (c t) (b n (t t t)))) j | 57 | same |
| (λn s. s (λb. b I c) (s K n (s s s))) j | 57 | hoisted 53 |

Arity fact (re-derived, adv5 table A): any head whose zero value is K r and
unary value c r (s G) is dead: zero needs two operands, unary one. So the
G-family near misses (39/41/42/46) are unrepairable while s G is the head.

## 3. Shared-helper application trees (the G family, generalized)

Family F1: R = (λh s. T) A, T an application tree over a copies of s,
k of h, one j; A closed except c. w = 14 + 4a + 5k + |A| (exact; G near
miss (λg s. s g (g s) j) G = 45 at a = k = 2, |G| = 13).
Family F2: R = (λh n s. T) A j, T over s^a h^k n: w = 13 + 4a + 6k + |A|.
Family F3: j inside A, T over s^a h^k: w = 4 + 4a + 5k + |A|.
Reasoned filters (handwritten): j is never a function (j Y must be erased,
taking the zero output's j with it); j's sibling contains h (s j, s s j,
s (s s) j are dead: rigid j head, j erased on zero, rigid r r).
Counts: open terms with one free c by size: <=13: 111, <=17: 944.
Identity: A = λt. t P Q gives s A = P r / Q r and A s = P K r Q / P F r Q;
in T = s h (h s) j with Q = c the unary run is c r (A s) j (arity dead), so
Q must absorb: Q = λa y u. c a y gives correct readers at 62-66 (§2).

## 4. Checks run (computer-checked; zero law + unary n=1..3 on rd's normalizer)

F1/F2 complete pinned cells (generator work/fam.py, runner work/runfam.py,
fuel 400, 0.5 s/candidate alarm; A ranges over EVERY open term with free c
of each cost, T over every application tree with the j filter):
- F1 (a,k) = (1,2) 22,656 | (2,2) 15,984 | (1,3) 8,520 | (2,3) 10,560 |
  (3,2) 12,288 | (1,4) 3,360 | (4,2) 11,520 | (3,3) 12,800 | (2,4) 5,600.
- F2 (1,2) 13,608 | (2,2) 10,224 | (1,3) 3,240 | (3,2) 8,448 | (2,3) 4,800.
- 0 passes. ~1,900 fuel cut-offs NOT certified (mostly h h self-feeding);
  these are evidence for the adversary question only, not exclusions.
- F3 (j inside A) NOT run: one-j/with-c arguments number 40,406 at cost
  <= 23 (×30 trees at (2,2)): over cap without further narrowing.

P1-root (types/narrow.py copy, untabled, laws 0,1,2, fuel 300):
prefix '(\g s. _) (\y. y _ _)', B = 45: 87,594 states, 0 solutions, 420
cut-offs (p1root.json). shared/cert.py certifies 393 (p1root_cert_*.txt);
the 27 left are (λg s. g g …) H with s absent from the term outside H (H is
outside λs, so its holes cannot hold s: the output cannot contain r), or a
closed head H H with H = λy. y A W, A one of Lemma SF's forms (shared lane),
or a closed growing head (H Q, Q X = X (λw. X w V)). So the root lift of
P1 has no reader with w <= 45, without minimality, modulo that handwritten
classification of 27 cut-offs (to be written out in REPORT).
- '(\g n s. _) (\y. y _ _) j' B=45: 18,892 states, 0 sol, 43 cut-offs: 40
  certified, 3 have s absent (body g g).  CLOSED.
- '(\g s. _) (\y. y _ _ _)': 20,287 states, 0 sol, 58 cut-offs: 54 cert,
  4 s-absent. CLOSED.  '(\g s. _) (\y z. _)': 51,340 states, 0 sol, 4
  cut-offs, all certified. CLOSED.
- '(\g s. _) (\y. y _)': OVERFLOW (>100k); split by y's argument:
  y y 9,112 st/1 cut (cert) | y c 13,934/0 | y j 75,294/1 (cert) |
  y (\z._) 10,985/20 (13 cert; 4 s-absent; 3 SF with W empty:
  H = λy. y (λz. y z V) or λy. y (λz. z (y z)), H Z -> Z A_Z, A_X Z -> X Z V
  or Z (X Z): Lemma SF's hypotheses hold) — all CLOSED, 0 solutions.
  Control: prefix '(\x s. s (\b. b (\u. x) _) _) (\k. _)' at B=52 finds the
  root lane's 52-reader (778 states).

## 5. Design pricing, placements of j (handwritten)

Three placements, cheapest known each: P1 trailing j absorbed on unary
(162, 46); P2 j inside an operand that is r j / N (164, 48); P3 j hoisted
into zero-only code (165, 49). Root-let attempts on each:
- P1: zero needs exactly two operands after a K r head; unary must absorb.
  Heads with unary value absorbing two args (λa b. V0) cost >= 22 more than
  I. Shared-Δ3 version (s x = s I's values, x s = s s s): 60.
- P2: outer handler (I / c r) and inner (K r / I) have opposite polarity;
  a common template λb. b P Q (F,c / K,F) costs 19 + uses: no gain.
- P3: D = λb. b Z c with Z r Y = Y n needs Z >= 14 (two binders + n leaf
  at index 4); D = 27; nothing shares with Y = s s s.
- Zero-λ parent + carrier sharing (x = λa k. k a feeds both W = C_t / c r
  and X = C_j / N): correct, 89.
Why sharing does not pay here: the 162's pieces are I (4), λq.c (7),
s s (6); a root let costs λ + app (4) + one leaf per use at index >= 1,
so sharing a piece of p bits k times saves (k-1)p - 4 - Σ(2+idx) < 0 for
p <= 7, k <= 3. The only large piece (V, 28) is used once.

## 6. Root form (λg s. B) A partition, B arbitrary (narrowing, B = 45)

All runs: 0 solutions. Cut-offs certified by shared/cert.py except the
listed s-absent ones (body g g: s never occurs, H's holes are outside λs, so
both laws give the same s-free value; the zero output needs r) and SF.
| A shape | states | cut-offs | uncertified (all s-absent unless noted) |
|---|---:|---:|---|
| λy. y | 72,394 | 0 | – |
| λy. y y / y c / y j | 9,112 / 13,934 / 75,294 | 1 / 0 / 1 | – |
| λy. y (λz. _) | 10,985 | 20 | 4 + 3 SF (W empty) |
| λy. y (y _) / y (c _) / y (j _) | 32,439 / 22,860 / 23,407 | 89 / 1 / 1 | 1 |
| λy. y ((λz. _) _) | 25,591 | 372 | 3 |
| λy. y (_ _ _) | 20,602 | 212 | 3 |
| λy. y _ _ (P1-root) | 87,594 | 420 | 27 (s-absent / SF / growing) |
| λy. y _ _ _ / _4 / _5 / _6 | 20,287 / 3,258 / 392 / 36 | 58 / 4 / 0 / 0 | 4 / 0 |
| λy z. _ | 51,340 | 4 | 0 |
| λy. c / c _ / c _ _ / c _3 / c _4 | 52,739 / 86,398 / 12,687 / 2,035 / 362 | 1/11/1/0/0 | 0 |
| λy. (λz. _) _ _ / _ _ _ | 76,301 / 19,524 | 204 / 36 | 3 / 0 |
| λy. (λz. _) _ | OVERFLOW | | open |
| λy. j | OVERFLOW | | reducible: = hoist at price 6 + Σ(2+|P|) - 3 n_u (root lane A2) |
| A not a λ | not run | | |
Plus (λg n s. _) (λy. y _ _) j: 18,892 states, 43 cut-offs, 3 s-absent.

## 7. Consult (Codex astra, high, read-only, thread adv6-construct)
Prompt consult/prompt1.md (raw state + closures + pricing); reply -> consult/reply1.md.

## 8. Depth-0 hoisted forms (narrowing, B = 45), all 0 solutions
| prefix | states | cut-offs | uncertified |
|---|---:|---:|---|
| (\g n s. _) (\y. y _) j | 77,084 | 92 | 8: 6 s-absent, 2 SF (H H _, s (H H)) |
| (\g n s. _) (\y. y _ _ _) j | 3,702 | 4 | 0 |
| (\g n s. _) (\y z. _) j | 91,741 | 4 | 0 |
| (\g n s. _) (\y. c _) j / c _ _ | 34,029 / 5,253 | 4 / 0 | 0 |
| (\g n s. _) (\y. (\z. _) _ _) j | 15,269 | 8 | 0 |
| (\n g s. _) j (\y. y _ _) | 30,665 | 157 | 3 s-absent |
| (\n g s. _) j (\y. y _) | OVERFLOW | | open |

## 9. More closures and probes
- (\g s. _) (\y. (\z. _) P) split by P: y 11,677/4 | c 12,736/1 | j 57,183/12
  | \w._ 6,828/1 | (_ _) 50,116/129 — all cut-offs certified, 0 solutions.
- (\g s. _) ((\y. _) _ ...) (let argument itself a redex): OVERFLOW at 1, 2, 3
  pending args. Open.
- rootlet SURVIVORS.tsv (580): rd normal order, fuel 3000, 0.4 s alarm: none
  satisfies the zero law (434 fuel, 146 time). Probe only, not a refutation.
- More hand designs (all >= 53): H (W j) with H = s (λb. b I c), W = s (λb t.
  b I (t t)) (53); W = s (λb. b I Δ) gives r j / N in 24 bits (vs s I (s s)
  j, 18), template x = λy b. b P y cannot serve both polarities.
- (\g n s. _) A j, more A: \y. y^4 572/0 | \y. c _3 853/0 | \y. (\z._) _
  47,549/14 (cert) | \y. (\z._) _3 3,106/1 (cert): 0 solutions.
  A = I and A = λy. c OVERFLOW; both reducible by the exact inlining price
  S = (k-1)|A| + (F-1)M - 4 - 2k - T: A = I gives S = 2k - 8 - M - T < 0
  (inline is strictly lighter, a hoist (λn s. M) j); A = λy. c gives
  S = 3k - 9 - T, negative for k <= 3.

## 10. Consult result (Codex astra, 12.5 min, 356k tokens in)
No reader <= 45. Four correct readers, verified here with rd (n = 1..6):
(\g s. s g (s (g I) (s s) j)) (\b. b F c) 63; (\g s. s (g F) (\r. c r (r r g))
(s g)) (\k. k j) 67 (J = λk. k j in three roles: J F = I, s J = j / r, filler);
(\g s. s I (\u. s (\q. c) (g s)) (g F)) (\t. t t j) 69; hand-off
(\k. k k j) (\g n s. s I (\u. s (\q. c) (s s g)) n) 70. Identity-helper price
(handwritten, Codex; rederived here): R = (λx. B) I C⃗ vs B[I/x] C⃗:
w(R) - w(R') = 8 + T_B + Σ(h_i - 2) >= -2 for k <= 5, and an applied use
contracts I A for 6 more, so R' is >= 4 lighter whenever some use is applied.

## 11. S1 partition complete except three pieces
(\g s. _) A, A = λy. M, M by head: y^0..y^8 (arity 7: 5 states, 8: pruned
at the root), c^0..c^8 (c^6 18, c^7 5, c^8 pruned), (λz._) P^1..P^7 (P^4
3,004/1 cert, P^5 236, P^6 9, P^7 2), λz._ ; all 0 solutions, every cut-off
certified or s-absent/SF. Open in S1: A = λy. j (OVERFLOW; = hoist family at
the A2 price), A = j (pure hoist, OVERFLOW; settled elsewhere under
minimality), A a redex (λy. _) P.. (OVERFLOW for P = j, c, λ and 1-3 args).
A = j P.. and A = λy. j P.. (P nonempty) are dead [H]: every residual of j is
then applied, and the zero output needs a bare j. A = c P.. (P nonempty):
the unary output's c must take r first, which a closed P cannot be, so every
copy is erased in both runs and the let is dispensable.
REPORT.md write refused by the harness (subagent rule): report returned as
final text instead.
