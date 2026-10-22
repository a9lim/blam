# Lane "fresh" notes

## Phase 1 — first-principles designs (written BEFORE reading interpreter.md / class-bound.md)

Cost metric: |M| = 2L + 4A + 2 + X. Applications dominate (24 x 4 = 96 of
162). 162 anatomy (brief): knot+let 22, \cont\list 4, reader 8, I 4, V 28,
NEXT header 18, ABS 41 (cell 24), APP 37 (lift 19).

Local audit of the 162 (handwritten): every module is locally tight under
its own interface — cell (24) is the cheapest code-consumer cell
`λb r. b a (r e)` I can find (alternatives: Scott-pair env + recursive lookup
combinator; K-wrapped args `λzx. zx (λ_.a) (λzy. zy e)` = 25 and breaks the
root contract since external args are not K-wrapped; env-as-function-of-code
= 32). Var value r is the cheapest value (s needs a junk top cell, see D4).
So a sub-162 must be a cross-module move. Designs below are priced against
the 162 anatomy; "+k" = k bits worse.

### D1  Split hnf `λc s. c (D s) (Sk s)` (decoder + skipper, two recursions)
Separate value decoder D and remainder skipper Sk (Sk(var) = s s u for free).
Prices: two knots or a pair; Sk alone >= ~27 (brief says remainder extractors
>= 27); D needs dispatch + Λ + S + calls Sk for the app split. Rough
>= 130 + 40. LOSES by > 20. (Also: D(01 M N) needs Sk M, recomputation.)

### D2  Top-down env-passing (HOAS λ) with double parse for the λ remainder
value of var = r env directly (no λargs), APP = v1 v2 (no S-lift, saves ~15),
but λ-body must be parsed under λarg so the remainder cannot escape: needs a
second parse `self env F' r2` with K'/F' projections, a root adapter
`λv. C (λz. v)` (~14) and an env parameter threaded through the knot.
LOSES by > 20.

### D3  Spread (curried) env: [λM]_k = [M]_{k+1}
ABS becomes `cont exp` (saves ~34) but APP needs S_k and var needs π_{k,n}:
the depth k must be tracked by a recursion. LOSES big.

### D4  Variable value = s (whole code incl. leading 1)
V = λu. cont s (s s u) = 25 (saves 3). The leading 1 skips the top cell, so
every env needs a junk top: env = λb r. r R, R = λzx zy. zx arg (args zx zy)
(tail via the outer wrapper). +8 wrapper, +5 tail access, +4 index shift.
Net +14. LOSES.

### D5  Deferred remainder ("hand over s; consumer computes s s u")
V = λu. s (λq.cont) s saves 9, but APP's second parse and the root must
convert (root adapter ~20, APP λrest + 3 apps ~16). LOSES (~+25).
Variant: idempotent strip f(s) = s (λb r. b s (r r b)) at every reader
entry: ~20 per entry. LOSES.

### D6  Explicit destructuring reader, NEXT inlined, no absorber, no I
E = λcont λlist. list (λb q. b (q NEXT) (cont q (q q b))).
q q b = N uses the bit b itself as the junk operand (no λu, no λq wrapper,
no I). Module cost 45 vs 44 (λcont λlist + reader + I + V), but NEXT moves
under λb λq: its 4 free-variable occurrences (intL x2, cont x2) cost +2
each = +8. Net +9. With NEXT let-bound at the λcont level instead: +4 let,
next leaf, -4 for NEXT's shallower frame: still ~+5..+9. LOSES.
Note: on the 0-path b = K is in scope inside NEXT (a free K) — unused.

### D7  Dispatch before parse: NEXT = λbit1. intL (bit1 A B)
A = λexp. cont (Λ exp), B = λexp. intL (λexp2. cont (S exp exp2)).
Two λexp (+2), bit1 one binder shallower (-1). Net +1 => 163.
CLOSEST so far. A, B no longer mention bit1, so NEXT = intL ∘ (cons A B).
Alternatives that read b2 via `r (cons A' B')` need two intL calls: +7.

### D8  Null-parser unification of ABS/APP
bit1 (λk. k exp) intL (λexp2. cont (λargs. bit1 (λarg. exp cell) (exp args (exp2 args))))
Saves one `cont ·` but pays the fake parser and a second bit1 use. +10.

### D9  Shared trailing operand through the bit: bit1 A B cont
K X Y Z = X Z: pass cont once, bind it shallow as λk in both arms.
ABS saves 1, APP +1, passing cont +7. +7. LOSES.

### D12 Reader with an "N-or-NEXT" operand
s I (s (λq.cont)) (s (λb q. b NEXT (q q b))): last operand is NEXT on a
0-tag and N on a variable (s P with P = λb q. b NEXT (q q b)). Correct, no
absorber, but 54 + let vs 40. +14. LOSES.

### D13 Pair return / stream-applied return (protocol change)
(a) internal parse returns a Scott pair λf. f v rest; the var pair is
λf. s (λq. f) (s s f) — f doubles as the skip junk (no separate absorber,
f at idx 1). But the reader always hands NEXT to the var arm first, and the
root needs E C s = C v N: adapter ~13. LOSES.
(b) "return by applying the rest": rest (K v) = K v b r merges return with
the next bit read. V = λu. s s u (s (λq.cont)): same app count; root needs
an adapter that re-conses b r. LOSES.

### D14 Trailing pass-through  E C s X =β C v rest X
Genuine identity (β, any X): extra trailing operands of a parse flow to its
continuation for free, no closure. Every use I tried has to be consumed
before the root C, or needs an explicit λrest because the stream sits
between the continuation and the trailing data. No win found.

### D15 Two-bit reads by self-application
s s X Y = (rest-after-first-token) Y: on a 0-tag Y b2 r2 (exactly NEXT's
call) and on a variable N Y. So `s s X NEXT` gives the 0-path with no I,
but loses the variable (it reads past it). s F X = r X loses b. Any
first-bit dispatch needs s I / s K / explicit λb. No win.

### Phase-1 summary
All designs priced lose; closest is D7 (dispatch-before-parse, 163). The
162 is a strong local optimum in the "bottom-up env-function compile,
code-as-lookup, CPS" family, and D1-D3 (the other families) lose by > 20.

### Check: D7 built (tmp/round4/fresh/d7.lam)
  163 bits  ok=667 skip=1 fail=0  tmp/round4/fresh/d7.lam
(162 control: 162 bits ok=667 skip=1 fail=0). Paper price exact.

## Phase 2 — against interpreter.md §6 and class-bound.md §5

| design | status |
|---|---|
| D1 split decoder+skipper | already priced: "Direct evaluation plus a separate syntax skipper" 293 |
| D2 top-down / parse under binder | already priced: "Parse under the binder: direct values" (226 as a universal machine) |
| D3 spread env | already priced in spirit: "Absolute de Bruijn levels" 449 (depth state) |
| D4 value = s | already priced: "Variable value list (keep the leading 1)"; whole-prefix values 170 / 185 |
| D5 deferred remainder | already priced: "Raw suffix returned, skip at parser entry" 247; thunk rest 202 |
| D6 explicit destructuring reader | already priced: "Handler reader with the zero arm inside the handler" 170 (class: NEXT at depth j pays 4/binder — my +8 is exactly that); Grok's `list H NEXT` 168 on the 165 |
| D7 dispatch before first parse | already priced on the 165 ("before the first parse" 172); on the 162 it is 163 (my measurement, not in the record's 162 table) |
| D8 null parser | already priced: "Optional second parse, no-input parser λk. k k" 177 |
| D9 shared operand via bit | already priced: "a shared argument of both arms" 169/169/170 (on the 165) |
| D12 N-or-NEXT operand | already priced: dual operands 172 |
| D13 pair / stream-applied return | already priced: parser returns a cell 211/226; root adapters 13-21 |
| D14 trailing pass-through | related: "Three operands after s I ... consumed before C" 179/184 |
| D15 two-bit read by s s | related: "Read both tag bits before dispatch" 193 |

Verdict: no phase-1 design is new. The record's lower-bound structure
(knot+refs >= 33 attained; value modules >= 81 attained under raw-tail values
and root transparency; reader w >= 30 proven, 46 attained) leaves the 48 bits
of plumbing (λcont λlist 4, reader apps+I 12, NEXT header sans intL ref 13,
ABS return 7, APP intL-app+λexp2+return 12) as the only unbounded region
outside the reader question.

## Further fresh mechanisms (after phase 2), each with its exact obstruction

### D16 Self-distributing ("S-cell") environment
If the environment satisfied `e x y = x e (y e)`, APP's value would be
`λargs. args exp exp2` (saves one application and one `args` leaf, 4 bits).
Obstruction (handwritten, exact): the same `e` must answer lookups
`e b' r' = b' a (r' t)`; with b' = K the S-law gives `e`, the lookup needs
`a`, so the S-cell has no slot for the argument. A 2-slot cell
`λx y. x A (y B)` is S-distributing iff A = B = e and a lookup cell iff
A = a, B = t; incompatible for every λ-value. Related to the record's
failing "Cell/APP alias" (164, fails), which keeps the lookup cell and
breaks at the root instead.

### Identity: a bit read as a stream (handwritten, checked by reduction)
For the 162's parser body P[cont,list] = list I V J,
`intL K' b r2 = J[K'] r2` for BOTH b = K and b = F: K I V J = I J, and on
F the variable arm degenerates, V[list := F] = λu. F (λq.c) (F F u) = λu. u.
So feeding the second tag bit to the parser as its stream erases the tag
entirely (the record's "r intL = bit1 value rest" uses the bit as the
continuation instead; this is the other orientation, and it is worse:
the tag is lost before any parse).

### D7 escapes (phase 3 target, see below)

## Phase 3 — the best failing design, D7 (163): exact obstruction

D7 is the 162 with NEXT = λbit1. intL (bit1 A B),
A = λexp. cont (Λ exp), B = λexp. intL (λexp2. cont (S exp exp2)).
Exact ledger against the 162 (handwritten, matches the battery: 163):
  +2  second λexp (the 162's K1 = λexp. bit1 ABS APP shares one λexp)
  -1  bit1 leaf one binder shallower (index 1 -> 0)
  0   everything else (A, B sit under λbit1 λexp exactly as ABS, APP did)
So D7 = 162 + 1 identically; the obstruction is that the tag test, once
moved above the first child's continuation, splits that continuation's
binder. Escapes checked:
  (a) η-reduce an arm. A = cont ∘ Λ and B = λexp. intL (cont ∘ S exp) are
      η-reducible only if the child's parse delivered Λ-wrapped values or
      took exp out of the closure. The first is a mode flag (record:
      203-219); the second via the trailing pass-through E C s X = C v rest X
      needs exp after the stream, i.e. an explicit λrest (+4..5). No escape.
  (b) A, B are bit1-free, so they can be abstracted: B' cont = ... with
      NEXT = λbit1. intL (bit1 A' B' cont) (closed arms taking cont):
      +6 (· cont) +4 (λcont x2) -2 -2 (cont shallow in A, B) +1 (intL
      deeper in B) = +7 over D7 => 170. No escape.
  (c) Read the tag through the cell, r (λb t. b A B) = b2 A B, and the
      stream as r F: dearer than λbit1. Two intL heads (r (cons A' B')):
      +7. No escape.
  (d) Dispatch later (inside the value, D8): +10. No escape.
Conclusion: in this NEXT family the 162's single shared λexp with the tag
tested inside it is optimal; dispatch-before-parse is exactly +1.

## The "158" trick in the 162 frame (record: on the 165, 158 fails / 174)
Reader family R = λs. s P X1 j. With P = λb. b b Q the zero arm is free
(K K Q r X1 j = K r X1 j = r j for ANY X1), but the variable arm is
Q r X1 j: c is handed one operand too many unless Q absorbs it.
Cheapest absorbers: Q = λq x u. c q x with X1 = s s s (P+X1 = 44) or
Q = λq x u. c q (q q u), X1 = s (47), against the 162's I + V = 32.
P = s gives s s X1 j: zero arm r j free, variable arm N j (wrong).
Within λs. s P X1 j with X2 = j, P = I is the cheapest zero-correct
choice; the variable work then sits in X1 at 28.

## Builds and calibration (battery + polish, all from the repo root)
| file | written | polished | battery line |
|---|---:|---:|---|
| d7.lam  (dispatch before first parse) | 163 | 163 | `163 bits  ok=667 skip=1 fail=0` |
| d7b.lam (D7 with closed arms, `bit1 A B cont`) | 170 | — | `170 bits  ok=667 skip=1 fail=0` |
| d6.lam  (handler reader, zero arm inside, b as skip junk) | 171 | 169 | `171 bits  ok=667 skip=1 fail=0` |
D6's letopt minimum let-binds NEXT at the λcont level:
(λa.a a)(λa.(λb c.(λd e. e (λf g. f (g d) (c g (g g f)))) NEXT) (a a)),
i.e. the class member R = (λn s. s (λb q. b (q n) (c q (q q b)))) j,
cost 53, depth 0, w = 53 => 116 + 53 = 169 exactly (class formula checks).
(Record lists "handler reader with the zero arm inside the handler" at 170;
this rendering is 169, still +7.) All paper prices matched the battery.
