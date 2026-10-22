# Lane proof — is the 162 optimal once its knot and NEXT are fixed?

**Result in one line.** No sub-162 interpreter was found or built. In the
frame "knot and NEXT fixed", the question is exactly `|C| + 4d >= 40` for
the one-hole reader context `C` (the floor lane's `cost(R) + 4 depth(j) >= 46`
in their notation). I prove the head-form and reduction lemmas that make a
symbolic contract checker sound, and close the 162's own shape
`list I V NEXT` by exhaustive computation: of the 1,010,663 variable arms
`V <= 27` bits over all four frame names, none passes, 999,554 are refuted,
and 11,109 exhaust the budgets (6,692 of them β-reduce to refuted terms or
to one of 4,417 β-normal "pump" terms whose head reduction visibly never
terminates but is not certified). The bare-NEXT shape `list H NEXT` is
closed the same way to `|H| <= 27` (1,010,663 handlers, none passes, 8,829
capped) and the 164's dual-operand shape to `|H| <= 17`. The remaining shapes are handled by a hand case analysis with
stated hypotheses (β-normal context, head `list`, NEXT once). Several
lemmas I first wrote were false; the counterexamples are in §4. Nothing
here constructs a sub-162; §5 says where one could still hide.

Lane directory: `/Users/a9lim/Work/blam/tmp/round3/proof/`. Files:
`PROOF.md` (the case analysis), `NOTES.md` (running log), `frame.py`,
`sym.py`, `lab.py` (Python harness), `holecheck.rs`/`holecheck` (the Rust
checker), `s1_27_pass1.txt`, `s2_23.txt`, `s2_25.txt`, `s2_27.txt`,
`s3_17.txt` (enumeration outputs), `spot_s1.lam` (a correct 163). Compute:
single-threaded `rustc -O` binary, longest run 79 s; batteries 2 threads.

## 1. Complete interpreters built

| file / term | bits | battery | idea |
|---|---:|---|---|
| `spot_s1.lam`: `list I (\u. list (\q. cont) (list list list)) NEXT` | 163 | `163 bits ok=667 skip=1 fail=0` | the 162 with `list` instead of `u` as the skip's junk operand; the consumer binder `\u` is what the trailing NEXT costs, not the operand |
| `list (\b. b (\a.a) (\r \u. cont r (r r u))) NEXT` | 169 | 6/6 symbolic probes (golf162-claude's `c169_handlerI`) | handler with `I` zero arm, NEXT trailing |
| `list (\b \r. b r (\u. cont r (r r u))) NEXT` | 168 | 6/6 probes (Grok's) | bare-NEXT handler |
| `list (\b. b F cont) (list I (list list) NEXT)` | 164 | 6/6 probes (the known 164) | dual operand |
| `list (\b. b (\u \r. r NEXT) cont) (list list list)` | 170 | 6/6 probes | the 165's reader with NEXT inlined (`|C| = 36`, `d = 3`) |

No sub-162 claim. Every other term I tried is refuted (§4).

## 2. Exact identities, with proofs

Notation: `p = x x` (the parser), `s = cons b r`, `U_n(N) = 1^n 0 ++ N`,
`K`/`F` the bits, `NEXT_c = NEXT[cont := c]`, `B` the 162's reader body.

1. `p c I = c`; `p c K = p c F = NEXT_c`; `p c (K (K t)) = t NEXT_c`.
   *Proof.* `p c s = s I V NEXT_c`. For `s = I`: `I I V NEXT = V NEXT =
   I (\q.c) (I I NEXT) = (\q. c) NEXT = c`. For `s = K`: `K I V NEXT = I NEXT =
   NEXT`. For `s = F`: `F I V NEXT = V NEXT = F (\q.c) (F F NEXT) = F F NEXT =
   NEXT`. For `s = K (K t)`: `K (K t) I V NEXT = K t V NEXT = t NEXT`. (Checked
   with the real knot, `sym.py`: head forms after 8–13 steps.) So once one
   syntactic NEXT is present, `intL cont K` (18 bits) is a second copy; it
   cannot replace the first (`p c K` is defined through B: circular).
2. **Size identity of the frame.** `|E_B| = 122 + |C| + 4d`: knot and
   `\intL \cont \list` 26; NEXT `96 + 4d` (18 + 41 + 37 at depth 0 under
   `\list`; four free `cont`/`intL` leaves, each one bit deeper per λ of `C`
   above the hole). Checked by `frame.weighted`: the 162 (40, 0), the 164
   (42, 0), Grok's 168 (46, 0), the 165 inlined (36, 3 → 170).
3. **Reader-body translation.** A reader body `R` in the 165's frame
   `[s, next, cont, intL, x]` with `next` once at depth `d` and `c_R`
   leaves `cont`/`intL` gives `|C| = |R| − 3 − d − c_R`. A sub-162 from the
   rigid-law world therefore needs `|R| <= 42 + c_R − 3d`: a 43-bit body
   with `next` at depth 0, a 44-bit body with two `cont`/`intL` leaves at
   depth 0, etc. The 162's body is 44 with `c_R = 1`, `d = 0`; the 165's is
   43 with `d = 3`.
4. `\u. s (\q. cont) (s s s)` is a correct variable arm (the 163): on
   `U_n(N)` it erases `u = NEXT`, `s (\q. cont) = cont U_{n−1}(N)`,
   `s s s = N`.

## 3. Lower bounds and the checker

### 3.1 Lemmas (handwritten)

**L1 (head form).** If `E_B` is a self-interpreter, `B` has an hnf
`list A1 … Ak` (k >= 1) or `cont A1 A2`. *Proof.* `B[p, C, s] =β C (λz.M) N`
is solvable, so `B` is; its hnf `λy⃗. h A⃗` cannot start with a λ (an
abstraction is not β-equal to `C (λz.M) N`). `h = cont` forces two
arguments. `h = intL`: `k <= 1` leaves an abstraction; `k >= 2` gives
`p A1' A2' … →_h B[p, A1', A2'] A3' …`, whose head is again `intL` (a
substitution instance of the hnf), so the head reduction never stops and
`B[p, C, s]` has no hnf. `h = x`: `x A1 A2 A3 … →_h B[A1 A1, A2, A3] A4 …`
with head `x` again; same. ∎

**L2.** The hole is never the head of `C`'s hnf (`NEXT Y⃗` has head `intL`).

**L3 (recursive calls are head calls).** Every call `p k s'` that NEXT makes
is in head position of the whole term, so the contract forces
`B[p, k, 0:b2:r2] =β k val rest` and `B[p, k, U_n(N')] =β k U_{n−1}(N') N'`
for every `k` in the set `Conts` of continuations NEXT builds (`k1 = λe. b
(c A_e) (p k2^e)`, `k2 = λe2. c T_{e,e2}`), but not for the rigid root `C`
on variables (closed `M`). The 165's rigid reader laws are sufficient, not
necessary.

**L4 (rigid continuation).** In a head reduction of `B[p, k, s']` the
continuation `k` is contracted only when it reaches the head. Replacing it
by a rigid `κ`, the head reduction is identical up to that point, where it
stops at the hnf `κ A⃗`. Every head-reduction fact before that point is
uniform in `k`.

**L5 (same-stream re-entry).** Let `B[κ, Y] A⃗ →*_h p X Y A⃗'` with `κ`
rigid, no argument of `A⃗` consumed, all rigid placeholders untouched. Then
the head reduction is infinite: substituting `κ := X` the same path applies
to `p X Y A⃗' →_h B[X, Y] A⃗'`, forever. Likewise if `Y'` differs from `Y`
only in rigid placeholders, provided no placeholder older than the level
was substituted on the path (the substitution map would not be uniform).

**L6 (the var arm's κ-hnf).** On `U_n(N)` with `κ` rigid, `B[κ, U_n(N)]`
must head-reduce to `κ A1 A2` with `A1` acting as the variable's value on
every environment that arises and `A2 =β N`; any other rigid head, arity,
an abstraction, or a certified infinite head reduction refutes `B`.

### 3.2 The checker (`holecheck.rs`)

Scope: free indices 0 = N, 1 = C, 2 = P (the parser), 3 = G (the
generator). The probe `E_B C (<M> ++ N)` is head-reduced with the knot
unfolded on demand: `P X Y rest → B[list := Y, cont := κ_i, intL := P,
x := G] rest`, `κ_i` a fresh rigid placeholder for the level, and
`G X Y Z rest → B[list := Z, cont := κ_i, intL := X X, x := G] rest`. A
placeholder at the head is replaced by its continuation (L4). The hnf must
be `C A1 A2`; `A1`, `A2` are compared lazily, hnf by hnf, with `λz. M` and
`N` (normalizing under binders with rigid names). Verdicts: refuted — rigid
head `N`, head `P`/`G` with too few arguments, an abstraction, head `C` with
arity ≠ 2, a value/rest mismatch at some hnf level, an exact repeat of the
whole term along the head reduction, or a same-stream re-entry at an
active level (L5; a level is active until its placeholder reaches the
head; the rule is disabled once the path consumed an argument below the
level's spine base and, for the renaming variant, once an older level was
substituted); capped — fuel (250 head steps, 2,500 normalization steps) or
size (3,000 nodes) exhausted; never counted as refuted. Programs: `\x.x`,
`\x\y.x`, `(\x.x)(\x.x)`, `\x.x x`, `\x\y.y x`, `\x.(\y.y) x`, `\x\y.y`,
`(\x.x)(\x\y.x)`. Sanity: the 162's and the 163's arms pass both probes;
`\u. intL cont list` is refuted by L5.

### 3.3 Enumerations (computer-checked, single thread)

| slot | every fill over `[list, cont, intL, x]` | terms | pass | refuted | capped | time |
|---|---|---:|---:|---:|---:|---:|
| (S1) `list I _ NEXT` | `<= 27` bits (the 162's V is 28) | 1,010,663 | 0 | 999,554 | 11,109 | 79 s |
| (S2) `list _ NEXT` | `<= 27` bits (Grok's H is 40) | 1,010,663 | 0 | 1,001,834 | 8,829 | 85 s |
| (S3) `list _ (list I (list list) NEXT)` | `<= 17` bits (the 164's H is 18) | 2,528 | 0 | 2,527 | 1 | < 1 s |

Capped candidates of (S1): 6,692 are not β-normal; reducing each by at most
60 leftmost steps, 2,357 reach a `<= 27`-bit term the enumeration refuted
(hence refuted, by β-equality), 4,163 reach a β-normal capped term, 172 blow
up or exceed 27 bits. The 4,417 β-normal capped terms have heads `list`
1,174, `x` 1,074, `intL` 962, `u` 865, `cont` 342; all feed NEXT, the arm
itself, `I`, or a continuation to the parser as its "stream", and the stream
argument nests one level deeper at every unfold (trace of `\u. u list u` in
NOTES). Six-fold budgets refute about 2% of them. I believe every one
diverges (monotone, self-similar growth) but have no certificate; they are
listed with BLC codes in `s1_27_pass1.txt`. **So `|V| >= 28` in shape (S1)
is computer-checked for all but these 4,417 β-normal arms and their
β-expansions.**

### 3.4 The shape analysis (handwritten; full text in `PROOF.md`)

Under the hypotheses **(H-normal)** `C` is β-normal with the hole opaque,
**(H-head)** the hnf head is `list`, **(H-once)** NEXT occurs once, write
`C = list A1 … Ak`; after the first cell step `B[·, s] = A1 b r A2 … Ak`.
A sub-162 needs `|C| + 4d <= 39`.

- **d = 0.** The hole is a depth-0 operand. (S1) `A1 = I`, `k = 3`: the
  enumeration above (`|V| >= 28`, so `|C| >= 40`). (S2) `k = 2`, bare NEXT:
  `A1` is not `I` (zero arm `K r NEXT = r`), `K` (abstraction), `F` (loses
  the bit), a bare stream read (re-reads the first cell: the dispatch
  repeats one level deeper), `cont`-headed (arity), `intL`/`x`-headed
  (parses the Boolean `b`; the result is independent of `r`); so `A1 = λb.
  M` with `M` dispatching on `b` or binding the tail first: `λb. b Z W`
  needs `Z r NEXT = r NEXT`, i.e. `Z = I` (`K` fails, checked), and `W r NEXT
  = κ r N` needs `W = λr λu. κ r (r r u)` (29): 47; `λb λr. b r W'` needs
  `W' = λu. κ r (r r u)` (27): 46 (Grok); a tail-headed `λb λr. r Y⃗` >= 58.
  The enumeration confirms no `H <= 27`. (S3) hole inside a dual operand
  `T`: `T` must be `r NEXT` on zero and `N` on variables, hence contain an
  N-source (>= 10), a dispatch (`s I`, 6) and a node: `T = s I (s s) NEXT`
  (18) is minimal, and the handler must select `T` or `κ r T`: `λb. b F
  cont` (18); 42 (the 164). (S4) `A1 ≠ I`, `k = 3`: `λb. b K W` or `λb λr. b
  (λa. r) W'` with `W`/`W'` binding the tail, erasing `A2` and consuming
  NEXT: >= 52; data `A1` (`K`, `F`, `list`) lose the bit or the tail or put
  `N` at the head. (S5) `k >= 4`: on zero `r A3 … = A3 b2 r2 A4 …`, so `A3`
  must rebuild NEXT's call (`λb λr λn. n b r`, 19) or a trailing argument
  reaches `C`: >= 55; NEXT nested in an operand application `Y NEXT` is an
  η-expansion or a let around NEXT: strictly more.
- **d >= 1** (`|C| <= 35`): the zero arm must apply NEXT to the tail's
  cells from inside a λ (`λr. r NEXT` or `λb λr. b (r NEXT) …`), paying a
  binder, a leaf and a node (>= 6) that the trailing-operand trick makes
  free, plus `4d >= 4` on NEXT; with the var arm's floor (S1: 28; or a
  handler's 27 + binders) every arrangement is >= 44. Measured: the 165's
  reader inlined 48 (`|C| = 36`, `d = 3`), `list (λb. b (λr. r NEXT)
  (λr. cont r (r r r)))` 49, `list (λb λr. b (r NEXT) (cont r (r r list)))`
  50.

**Status of the hypotheses.** (H-normal) is only partly justified: a redex
of `C` not touching the hole with `Δ < 0` gives a smaller counterexample
(Lean `wire_beta_delta`), one that erases the hole leaves a NEXT-free body
`<= 41` bits (no such interpreter is known; the 37-bit global floor does
not exclude it), but redexes with `Δ >= 0` and hole-duplicating lets remain
(a let `(λy. M) Q` with NEXT in `Q`, `y` used twice, needs a two-use reader
`M <= 31` bits; `list I V y` has the trailing-operand problem and handlers
cost >= 50). (H-head): the `cont`-headed case is the twice-parsing
architecture; its NEXT is replaceable by `intL K`/`intL F` calls, so it
reduces to the same "no NEXT-free body `<= 41`" statement. (H-once): two
syntactic copies cost `>= 192`.

**What is therefore proved, and how.** `|C| + 4d >= 40` holds (i)
computer-checked, modulo the capped pumps, for shapes (S1) with `|V| <=
27`, (S2) with `|H| <= 27`, (S3) with `|H| <= 17`; (ii) by the handwritten
case analysis above for the other β-normal head-`list` shapes; (iii) not
at all outside (H-normal)/(H-head)/(H-once). Nothing is in Lean.

## 4. Counterexamples to my own attempted lemmas

1. **"A reader body must contain a `cont` leaf outside NEXT"** — false in
   general. NEXT's own `cont T` leaf can deliver a correct value: the APP
   value of `(λ.1)(var n)` is β-equal to `var n`, so a variable arm that
   fed NEXT the fake stream `01 00 10 1^n 0 N` (`NEXT F` on it) would be
   correct. Only a size-aware version survives: the six cons cells cost
   `>= 90` bits. The enumeration does not rely on the lemma.
2. **"`Z = K` is a valid zero arm in `λb. b Z W`"** — false: `K r NEXT = r`;
   the arm must be `I` (checked: `list (λb. b K W) NEXT` fails with an
   abstraction).
3. **"The 165's reader inlined costs 44 (`d = 2`)"** — wrong count: NEXT
   sits under `λb λu λr`, `d = 3`, `|C| = 36`, weighted 48, interpreter 170
   (matches the record's "`next` inlined").
4. **"`u (λa b n. n) list` is a 17-bit skip using the trailing NEXT"** —
   it re-parses the whole stream with a new continuation and loops
   (same-stream re-entry); refuted, not merely expensive.
5. **"Rigid `cont` in the var-arm check is complete"** — it is exact for
   the first continuation level (L4), but comparing an intermediate rest
   with the normal stream is only sufficient when the rest is a code
   suffix; the checker therefore compares only the final value and the
   final rest `N`, and runs the real continuations in between.
6. The first version of the checker normalized under binders at the wrong
   depth (placeholder indices off by the binder depth); fixed by
   instantiating bound variables with rigid names before head-reducing.

## 5. Honest read

Within the frame, the 162 is tight at every joint I could price: the
dispatch `s I` (6) is the only selector that keeps both the bit and the
tail; the zero arm costs nothing beyond the trailing NEXT; the variable arm
must spend a consumer binder on NEXT (2), reopen the stream for `cont r`
(12) and for the skip (12), plus one node — 28 — and a million-term
enumeration finds nothing cheaper (the only unresolved candidates are
growing pumps). The bare-NEXT and dual-operand shapes are priced by hand
and checked exhaustively in the same range; deeper NEXT positions pay 4 per
λ and a zero-arm binder. The floor lane's exact assembly `116 + cost + 4·
depth` is the same statement; its proven 22 and my checked/handwritten 46
differ by exactly the inventory the earlier reader-optimality attempts
could not make rigorous.

Where a sub-162 could still hide, if anywhere, in this frame:

- a β-normal head-`list` context outside the three enumerated slots with a
  genuinely different division of labour — my (S4)/(S5)/d >= 1 arguments
  are inventories, the kind that has been refuted before; a reviewer should
  attack (S3) (dual operands cheaper than 18 with a cheaper selector than
  `λb. b F cont`) and the `d = 1` handlers first;
- a non-normal context with a `Δ >= 0` redex, or a let that uses NEXT
  twice (`intL cont K` makes a second NEXT 18 bits once one exists — I did
  not find a reader that profits);
- outside the frame: everything the brief lists (another NEXT protocol, the
  value representation, the knot). The frame-internal evidence says the
  reader is not where the next gain is.

Next proof steps: (a) a divergence certificate for the 4,417 pumps — the
pattern is "stream_k+1 = W[stream_k]" with the inner stream consumed, so a
generalized re-entry rule needs an induction hypothesis about the inner
parse; (b) a Lean statement of L4/L5 (rigid-placeholder head reduction and
same-stream re-entry) would make the checker's soundness mechanical;
(c) the (S3)/(S4)/d >= 1 inventories could be replaced by the same checker
on templates with two holes if the budget allows (`list _ ~ NEXT` is 28M
pairs; pruning by the zero law on `_` first would make it feasible).
