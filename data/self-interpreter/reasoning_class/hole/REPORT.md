# hole lane report (round 4)

(Saved by the coordinator from the lane's returned text; the lane's write
was refused by its harness. Full record: NOTES.md §0–10.) Tags: [H]
handwritten, [C] computer-checked (all term shapes, n = 1..3), [K] Lean.

No reader with w <= 45; w >= 46 not proved in general. Produced: an exact,
syntax-free hole decomposition, and a reduction of every λ-rooted depth-1
reader to one core family plus three small residual cases.

## 1. Definitions and identities [H]

- Unary-dispensable position: replacing it by Ω keeps the unary law for
  every n (n = 1 included). Need_U = the rest; Need_Z likewise for Z(r).
- Transfer lemma: along the normal-order run of R on an input, if no
  residual of a position set S is ever touched (contains, is, or is the
  operator of a contracted redex) and none survives into the normal form,
  every filling of S runs the same redexes to the same normal form
  (everything left of the leftmost-outermost redex is frozen).
  Consequences: p is dispensable iff its residuals are never touched and
  none survives (a residual/origin definition valid for all n and any
  redexes); dispensable positions are jointly dispensable (same
  deterministic run; no stability theorem); need sets are ancestor-closed,
  so the unary core C_U and zero core C_Z are unique.
- Exact split: w = cost(Need_U) + cost(Need_Z \ Need_U) + Σ_B cost + 4d(j),
  B = positions neither law needs (each >= 2, exactly 2 in a minimum
  reader); j is always a unary hole and zero-needed; every c leaf is a zero
  hole.
- The literal target "every zero-completable core >= 42 at d = 1" is false
  (164's core 38 with its zero filler F 6; 165's core 33; the core of
  \s. s (\b. b (\t w. t j) c) (s s s) is 28); the correct form charges the
  fillers: w = core + fillers + 4d.
- Measured splits (need.py), shared + unary-only + zero-only + neither + 4d:
  162: 14 + 26 + 0 + 2 + 4 = 46; 164: 28 + 10 + 6 + 0 + 4 = 48;
  165: 28 + 5 + 14 + 2 + 0 = 49.
- The 162's u leaf is needed by neither law (receives j, erased by the
  terminal K): the 162 is a 40-bit unary core, one 2-bit filler, and j at
  depth 1; its absorber \u is vacuous inside the core.

## 2. Structural lemmas [H]

- The dispatch is shared: every head step of R (cons b r) before its first
  b- or r-headed normal form happens on both inputs.
- Erasers: c is erased on zero, and j on unary, only by a stream bit (first
  F, a deeper F, the terminal K) or by a source binder vacuous when
  contracted, all after the dispatch. Routing j into the slot of s s erases
  it on zero too, so that routing is unary-only (162's absorber) or a second
  bit test in a shared operand (164's s I (s s) j).
- The zero output node r j always comes from a source application.
- Duality: on unary the zero core's Böhm tree is hole-headed; on zero the
  unary core yields r (h ..) or is hole-headed.
- On unary, the zero output node is zero-only (165), contracted with an
  "r / absorber" operator (162, 164), or survives into c U N.

## 3. Theorem 10.1: λ-rooted readers, j at depth 1 [H reduction + C]

Anchor at j's parent X (depth 1, context-free). On zero, X is touched and
its hnf persists: nf X[Z] is r j (shape A) or j (shape B). On unary, X is
erased untouched or its hnf persists with a rigid value (N, c, c U, c U N)
or a λ-value. In the rigid cases X's residuals are never applied, so the
reader is a wrapper C' around a rigid hole: w = 2 + |C'| + |X| + 4.

Checks, complete through the stated bound [C]: operand P with P[Z] = r,
P[U] = c U (plemma.py, <= 20 bits, 9,265 terms): min 20, exactly
s (\b. b I c) and s I (s (\q.c)). Shape-A operands (depth1.py/xlemma.py,
<= 25): (r j)/N min 18 unique s I (s s) j; (r j)/c 18; (r j)/U 24; no c U,
no mixed. Shape-A wrappers (wlemma.py, <= 25): only non-trivial is N-outer,
min 24, unique s (\b. b F c) x (the 164's) ⇒ shape-A wrappers give w >= 48.
Shape B and erased (depth1b.py, depth1a_E.py, <= 22, <= 66k terms): X
"j / tail" s (\b. b j) 14; j/c 18; no j/N, j/cU, j/cUN through 22;
wrappers: identity-on-unary s I I x min 16 unique; N-outer 22; no erasing,
c, cU, U wrapper through 22. All fuel caps audited (closed Ω-family in head
position, or j/c/Z-headed).

**Theorem 10.1.** A λ-rooted reader with j at depth 1 and w <= 45 lies in:
- R1: \s. Y j with Y[Z] =βη r and Y[U] j = c U N; by round 3's L2 check
  every absorbing arm through 30 bits is \u. s (\q.c) (s s X), which fails
  zero, so 31 <= |Y| <= 37 (the 162 has 38). The 162's own family.
- R2: X zero-only (<= 16 bits, X[Z] = r j, erased on unary) inside a
  23–27-bit wrapper returning x on zero and c U N on unary.
- R3: wrapper s I I x with a 23-bit X, X[Z] = j, X[U] = c U N.
- R4: X with a λ-value on unary (e.g. s (\b. b j)), where the rigid-hole
  argument fails; if it holds anyway the wrapper costs >= 23.
Closed: shape A with non-trivial wrapper (w >= 48); j/N operand in shape B
(w >= 53, via L1); shape-B c and c U (empty); X erased in shape B (never
minimal); tail-valued shape A if the rigid-hole argument holds (w >= 56).

## 4. Compute

25-bit runs (371k–410k terms, 63 MB, ~2 s) ran before the coordinator's
100k cap. Two runs discarded without output: a 27-bit wrapper run reaching
5.8 GB and a pair run stopped by a 1.5 GB watchdog. After the cap: <= 66k
terms, < 100 MB. The persistence and rigid-hole steps are handwritten and
unreviewed.

## 5. Next step

Apply the same anchor inside Y for R1: Y's unary outer node (· N) is at
depth 1 (context-free: same wrapper/operand treatment) or under the
absorber's binder (the absorbed variable's occurrences are needed by
neither law, like the 162's u, so that context is removable at a fixed
index-shift price). Depth-0 (\y. P) Q.. j: contract the head let first
(close46's exact price), then anchor at the binder receiving j. Also open:
R2–R4 and application-rooted depth-1 readers.
