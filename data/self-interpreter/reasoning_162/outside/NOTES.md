# Lane "outside" — notes (append-only)

Frame: 162 = knot/intL 22 + `\cont \list` 4 + reader apps 8 + I 4 + V 28
+ NEXT hdr 18 + ABS 41 + APP 37; (L,A,X)=(16,24,32).
Class bound (floor/lean138): opaque knot + canonical NEXT => >= 138 and
reader cost(R)+4 depth(j) >= 46 attained; sub-162 must break (a)-(e).

Already closed this round (do not redo): whole-prefix cells >= 27 (env),
NEXT variable-mode via first-tag guard 177 (next), knotless two-head >= 165
(recursion), dual operands 172/176 (adversary), boxes 265/276, Church 297
(archzoo), reader-carried knots 192/199, reset bootstraps 192.

## Log

### Setup
lab.py copied from values lane (parse with rigid free names, nf, size).
Battery on int162: `162 bits ok=667 skip=1 fail=0`, 1.9 s.

### Idea 1 — (a) single recursive call site (paper, dead)
Prize: with ONE `x x` site at depth d the knot needs no let: 12 + (2d+6)
= 18+2d vs 24+d+6 (let + second ref) → saves ~9 at d=3. Requires APP's
second parse to reuse NEXT's call. Checked three routes:
 (i) re-enter NEXT with a third mode m: `NEXT m rest = intL (λe. m ABS APP) rest`.
     m sees only ABS[e] = cont(absval e) and APP[e] = intL(λe2. cont(lift e e2));
     e is not recoverable from either (rigid cont head / parser awaiting
     stream; P c' I = c' gives λe2.cont(lift e e2), never bare e). Dead.
 (ii) pass e to the selector: `λe. m ABS APP e` with ABS,APP = λe.…: NEXT
     must then be NAMED to be re-entered from APP; a let `(λnext. reader) NEXT`
     puts NEXT outside its own scope, so APP cannot see `next` (NEXT is the
     let's argument). Naming NEXT via the knot instead (knot produces NEXT,
     root = `s F (x x c)` using "closed programs start with 0") duplicates
     the reader (root + inside NEXT) ≈ +45. Dead.
 (iii) `P c K = NEXT_c` to fetch NEXT: `x x c K` ≥ 25 bits per use. Dead.
Conclusion: body-parse and APP's second parse are distinct control points
with distinct continuations ⇒ two call sites. Depths: d1 ≥ 3 (cont, list,
bit1 — the second dispatch must bind b2 or be a handler; `r I X Y…` loses
r2 in the F arm), d2 ≥ 4 (APP's call needs exp). So opaque-knot overhead
≥ 26+3+4 = 33 = the 162's. The 165's let-next layout gives 31 but pays 4
(let) + the 14-bit zero arm.

### Idea 2 — variable arm using actual NEXT (paper, dead)
Var arm must yield `cont r N`. `NEXT A B C = intL (λe. A ABS APP) B C`;
with B = s (the var stream) → `A ABS[r] APP[r] N C`, need A ABS[r] APP[r]
= cont r — A has no r and cannot extract it (ABS[r] = cont(absval r) has
rigid head). B = J (λf. f I) → c' NEXT_c'. B = I → λe. A ABS[e] APP[e] (a
function of e, not cont). `NEXT K I` = cont∘absval — would make a
variable's value absval(r) = value of `λ.var n`, wrong representation.

### Idea 3 — `r intL = b2 value-or-rest` parse-twice (paper, dead)
P K r2 = value, P F r2 = rest (bit selects). Node-level parse-twice: ABS =
c (λargs arg. P K r2 (cell)) (P F r2), APP needs 4 P refs + root adapter;
exponential time and ≥ 6 parser references. Dead.

### Idea 4 — handler-form parser `λc λs. s (λb λr. b (r NEXT) (c r (r r r)))` (BUILT)
h166.lam: paper 166, battery `170 bits ok=667 skip=1 fail=0`. My paper price
missed that λs stays (NEXT at reader depth 3 → 116+42+12 = 170, exactly the
floor lane's formula). Lesson: NEXT's four c/p refs make every reader-local
binder above it cost 4; the 162's single λlist is the minimum (d=1), and a
handler form always has λs plus λb λr (d=3). In-class, not new in spirit.
Pure handler form without λs (`s (P c)`) needs a 13-bit root adapter: 172.

### Idea 5 — (e) non-CPS variants (paper, dead)
Pair return `λf. f v rest`: +8..10 per return (needs λrest at each consumer,
loses η on rest; CPS passes rest for free in ABS/APP). Stream-first `P s c`:
explicit r2 and λrest in APP (+8). Thunked rest `K N`: every parse site
forces (P k (K a) = a V_k NEXT_k off-domain) + root adapter. Krivine/direct
eval: value λz.Eval(code) needs a second traversal for N (293) unless fused
into CPS = the 162. Node-level parse-twice via `r intL` (P K r2 = value,
P F r2 = rest): exponential and ≥ 4 extra parser refs.

### Idea 6 — (c) joint value/env moves re-priced (paper, dead)
Absorbing values + leaky cell: cell 24→22, lift must wrap exp2 args
(λj. exp2 args: +4) → net +2 (recorded 169/170). Function env built for free
by the reader: `s (λq λe. e q) = λe. e r` (16) but the var arm then needs
explicit cont (+11) and the env is applied to code (cell 30): ≈ 177–179.
arg-before-args value: cell index total unchanged (5+4 either way) and needs
a root flip adapter. Scott-list env `λf. f a e'`: `r e = b a e' r'` — K leaks
r' (= the stream rest N, different per occurrence), F flips orientation.

### Idea 7 — second dispatch without binding b2 (paper, dead)
`r I X Y`: K r2 X Y = r2 Y, F r2 X Y = X Y — the F arm never sees r2, so APP
cannot parse. Any reading of the second bit that gives both arms r2 either
binds (λb2 λr2 handler) or is `r NEXT` with NEXT = λb2.…: the 162's.

### Tooling
idents.py: rigid-probe checks of the identities quoted in the notes/report
(lab.py normalizer; inner intL kept rigid, one unfolding where P c I = c is
needed). Gotcha: a stream applied to `\q. X` gives X r (q := b, then r);
to build `\e. e r` the handler needs THREE binders `\q \r \e. e r` (18 bits).
Consult sent to Codex (astra, label outside-claimA) attacking the
single-call-site closure; result goes in consult_a.out.

### Idea 8 — (d) the actual NEXT on a variable stream (checked, dead)
I3 (idents.py): `NEXT K U_n = c (absval U_{n-1}) N`. NEXT's ABS mode on the
variable's own stream computes the skip for free but returns the value of
`λ. var n` (it parses `00 1^n 0`), not `var n`. `NEXT (λa λp. Q) s = Q N`
(constant continuation: the parser does the skip) gives the var arm
`λu. u (λa λp. s (λq. cont)) s` = 32 > 28. No application of NEXT yields
bare `cont` or `cont r`: every mode is `intL (λe. m ABS[e] APP[e])`, a
parser awaiting a stream; `P c I = c` only returns that continuation.

### Idea 1 revisited — "single call site" is a renaming
NEXT' m = intL (m kA kP) (select-first). APP's re-entry `next (K (K k2))`
IS `intL k2` under another name: the saving would be the intL let (4) +
one 6-bit reference, but `next` must be nameable from APP, which costs a
let (4) + a 6-bit `next` reference + the wrapper λa λp (+4, index shifts).
Strictly worse. Recursion overhead decomposes 33 = 12 (knot shell) + 4
(let) + 6 (x x) + 5 + 6 (refs) = 26 + d1 + d2, d1 = 3 (NEXT inline under
cont, list, bit1 — any shallower placement needs a let, +4), d2 = 4.

### Report
REPORT.md sections 1–3 written; section 3.1 (Codex consult) and section 4
(honest read) pending the consult.
Section 4 written. Waiting on the Codex consult (boegaadb9) to fill 3.1.

### Idea 8 built: d166.lam — `λu. u (λa λp. list (λq. cont)) list` (FAILS)
Paper 166, measured 165, battery `165 bits ok=0 skip=1 fail=667` (fuel on
every program). Cause: the variable arm delegates the skip to the parser's
variable arm on the SAME stream: P k U_n → V NEXT → NEXT (λa λp. k r) U_n →
intL (λe. k r) U_n → the variable arm again, with a growing constant
continuation. The identity `NEXT (λa λp. Q) U_n = Q N` holds for the 162's
parser (checked, n=1..3) but not for a parser whose own variable arm is
defined through it — the recursion never bottoms out (the slot search's
"VAR unknowns re-parse the same stream forever" family). So in (d) the
parser cannot do the skip for the variable arm at any price: self-reference.
Confirmed: whnf of d166's parser on U_1 (inner intL rigid) is
`intL (λe. (λa λp. U_1 (λq. c)) (c (absval e)) …) U_1` — the parser applied
to a new continuation and the SAME stream U_1. Loop diagnosis stands.

### Codex consult (outside-claimA) landed
Verdict: Claim A is false as an architecture-wide SCOPE argument, true in the
literal 162 frame. Let-floating moves the depths: NEXT hoisted above λlist →
(2,3), 166 (β-equal to the 162); APP's continuation hoisted → (4,2), 176;
dispatch helper H = λp λa λd λb. p (b a d), NEXT = H p KA KP → parser refs
not under the bit binder, 183. Self-passing NEXT 187 (my 186). All four pass
the battery (Codex's files: consult_claim_a/). No sub-162, no single-site
layout below the 9-bit allowance. Correct statement: recursion overhead =
26 + d1 + d2 where the depths trade against lets and index costs; the
exhaustive letopt (0–3 cuts) on the 162's core already covers those trades
and finds 162 unique. My scope claim must be downgraded in the report.
REPORT.md finalized: section 3(a) downgraded to the conditional claim, 3.1
added, Codex's four terms in the table (re-batteried here).
