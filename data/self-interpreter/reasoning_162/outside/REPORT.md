# Lane "outside": a self-interpreter outside the proved class

**No sub-162 interpreter found.** The lane priced, on paper and with the exact
formula `|M| = 2L + 4A + 2 + X`, the cheapest mechanism for each of the five
class assumptions (a)–(e) that a sub-162 must break. Every mechanism prices at
or above 170 before polishing, and in each case the obstruction is a specific
scope or arity fact, stated below with its hypotheses. Six candidates were built (two by me, four by a Codex consult): a pricing
control (paper 166, measured 170), a (d)-mechanism arm (165, fails by
self-reference), and four recursion-layout variants at 166–187 that refute
my scope version of the recursion claim without threatening the 162. The
honest read is in section 4: inside the CPS/closure architecture the 162's
skeleton is forced obligation by obligation, and every non-CPS or non-closure
architecture I can price pays at least 8 for the loss of η on the remainder
or for a public adapter.

All files are in `tmp/round3/outside/`: `NOTES.md` (append-only log),
`h166.lam`, `d166.lam`, `idents.py` (22 rigid-probe identity checks, all pass), `lab.py`
(copied from the values lane), `consult_a.md`/`consult_a.out` (one Codex
consult, section 3.1). No tracked file was modified. Compute: six batteries
(2 s each, four of them re-runs of the consult's files), one identity script (ms), one consult. No enumeration or sweep.

## 1. Complete interpreters

| File | As written | Polished | Battery line | Idea |
|---|---:|---:|---|---|
| `h166.lam` | 170 | not polished (in-class, see below) | `170 bits  ok=667 skip=1 fail=0  tmp/round3/outside/h166.lam` | Handler-form reader with the zero arm inside the handler: `λc λs. s (λb λr. b (r NEXT) (c r (r r r)))`, the 162's NEXT unchanged. |
| `consult_claim_a/hoist_next.lam` (Codex) | 166 | β-equal to the 162 | `166 bits  ok=667 skip=1 fail=0` | NEXT let-bound above `λlist`: recursive depths (2,3), knot+refs 31; the let and the reader's indices cost 4 more. |
| `consult_claim_a/hoist_app.lam` (Codex) | 176 | β-equal to the 162 | `176 bits  ok=667 skip=1 fail=0` | APP's continuation `λe. p (λe2. c (lift e e2))` let-bound above the reader: depths (4,2), knot+refs 32. |
| `consult_claim_a/select_helper.lam` (Codex) | 183 | not polished | `183 bits  ok=667 skip=1 fail=0` | Dispatch helper `H = λp λa λd λb. p (b a d)`, `NEXT = H p KA KP`: `r NEXT = p (b KA KP) r2`, neither parser reference under the bit binder. |
| `consult_claim_a/selfpassing.lam` (Codex) | 187 | not polished | `187 bits  ok=667 skip=1 fail=0` | One parser self-application site (24 bits) inside a self-passed NEXT; the surrounding code grows by 34. |
| `d166.lam` | 165 | — (fails) | `165 bits  ok=0 skip=1 fail=667  tmp/round3/outside/d166.lam` | (d) Variable arm `λu. u (λa λp. list (λq. cont)) list`: NEXT with a constant continuation re-parses the variable's stream to do the skip; circular (section 3d). |

The paper price was 166; the measured 170 is exactly the floor lane's class
formula `116 + cost(R) + 4·depth(j)` with `cost(R) = 42` and NEXT at
reader-local depth 3 (`λs`, `λb`, `λr`) against the 162's depth 1. The reader
itself costs the same 40 as the 162's (`c r` 9 + `r r r` 10 against
`s (λq. cont)` 12 + `s s u` 12, paid back by `λb λr` and the two
applications). The lesson is the one the floor lane's coefficient encodes:
NEXT's four `cont`/`intL` references make every reader-local binder above the
hole cost 4, so the 162's single `λlist` is the minimum and any handler form
(`λb λr` plus the surviving `λs`) is at least +8 there. It is a member of the
proved class and polishing cannot take it below the class bound; it was built
only to calibrate my pricing, which it corrected (I had dropped `λs`).

## 2. Identities (all checked with rigid probes in `idents.py`)

Notation: `K = λx y. x`, `F = λx y. y`, `I = λx. x`, `cons b r = λf. f b r`,
`Z_R = cons K R`, `U_n(N) = 1ⁿ0 ++ N`, `P c s = s I V_c NEXT_c` the 162's
parser with `intL` opaque, `V_c = λu. s (λq. c) (s s u)`,
`absval e = λargs λarg. e (cell arg args)`.

- **I1.** `NEXT_c K I = λe. c (absval e)` and `NEXT_c F I = λe. intL (λe2. c (lift e e2))`.
  Proof: `NEXT_c b I = intL (λe. b ABS APP) I`, and `P k I = k` because with
  `s = I` the reader is `I I V_k k = V_k k` and `V_k[s := I] = λu. (λq. k) (I I u) = λu. k`.
  Consequence (section 3): no application of NEXT yields bare `c` or `c r`;
  every mode is a parser awaiting a stream, and `I` only returns that mode's
  continuation.
- **I2.** `NEXT_c K U_n(N) = c (absval U_{n−1}(N)) N` for `n ≥ 1`.
  Proof: `NEXT_c K s = intL (λe. c (absval e)) s` and the variable law
  `P k U_n = k U_{n−1} N`. NEXT's ABS mode on a variable's own stream does
  the skip for free but returns the value of `λ. var n` (it parses `00 1ⁿ0`),
  not of `var n`. Likewise `NEXT_c (λa λp. Q) s = Q N` on a variable stream
  (constant continuation; the parser does the skip).
- **I3.** `s K = b` for `s = cons b r` (`Z_R K = K`, `U_n K = F`); `s F = r`;
  `s (s s) = R R` on `Z_R` and `N r` on `U_n` (the adversary lane's
  correction, re-checked).
- **I4.** Handler-form reader law: `H = λb λr. b (r X) (c r (r r r))` gives
  `Z_R H = R X` and `U_n H = c U_{n−1} N` (`r r r = N` by the unary diagonal
  `U_m U_m = K N`). This is `h166.lam`'s reader.
- **I5.** A stream applied to a handler supplies the bit, then the tail:
  `U_n (λq. X) = X U_{n−1}`; so building the function-environment value
  `λe. e r` from the stream needs three binders, `U_n (λq λr λe. e r) = λe. e U_{n−1}`
  (18 bits in the reader frame, not 16 as first priced).
- **I6.** Off-domain identities of the 162 parser, re-checked:
  `P c K = P c F = NEXT_c`, `P c I = c`, `P c (K (K X)) = X NEXT_c`,
  `P c J = c NEXT_c` for `J = λf. f I`.

## 3. Obstructions and prices, by class assumption

Each item states the mechanism, its exact hypotheses, and the price. All are
handwritten pricing arguments with the formula `2L + 4A + 2 + X`; the
identities they rest on are the checked I1–I6; nothing here is in Lean.
"Depth" is 0-based de Bruijn index.

### (a) Recursion not supplied by an opaque knot around the whole parser

**Two recursive call sites.** Hypotheses: CPS parser `P c s` returning
`c value rest`; the body/first-child parse and APP's second parse are both
parses of a stream with a continuation. The two continuations differ
(`λexp. b2 ABS APP` captures the second tag; `λexp2. cont (lift exp exp2)`
captures `exp`), so the two parses are two syntactic occurrences of the
parser, and the Lean knot bound `26 + d1 + d2` applies with `d1, d2` the
0-based depths of those occurrences.

**What I claimed, and what survives.** I claimed `d1 ≥ 3` and `d2 ≥ 4` as
scope facts (the first call under `cont`, `list`, `b2`; the second under
`λexp`), hence ≥ 33 architecture-wide. The Codex consult (3.1) refuted the
scope version with four passing terms: let-floating moves the depths —
NEXT hoisted above `λlist` gives (2,3) and 31 (the 165's layout, 166 here);
APP's continuation hoisted gives (4,2) and 32 (176); a dispatch helper
`H = λp λa λd λb. p (b a d)` with `NEXT = H p KA KP` keeps both parser
references out of the bit binder (183). Each saves 1–2 on the knot and pays
4–21 in lets and indices. The correct statement is therefore: *in the literal
162 frame the recursion costs 33, and every relocation of the references
trades depth against a let or an index tax*; those trades are exactly the
cut configurations the exhaustive `letopt` run (0–3 cuts over the 162's
167-bit core, 4.5M configurations) already prices, with 162 the unique
minimum. The depth argument adds nothing beyond that search; I withdraw it
as an independent bound.

**A single call site is a renaming, not a saving** (this part stands). The
algebra works in select-first form: `NEXT' m = intL (m kA kP)`, and APP
re-enters as `NEXT' (λa λp. k2)` with `k2 = λexp2. cont (lift exp exp2)` —
but that *is* `intL k2`. The supposed saving (drop the `intL` let, 4, and one
6-bit reference) requires `next` to be nameable from inside `kP`, which is
inside NEXT' itself. A let `(λnext. reader) NEXT'` places NEXT' outside the
scope of `next`; a second knot costs ≥ 20; self-passing prices at 186 (mine)
and 187 (Codex's spelling, built and passing); making NEXT the knotted object
with the root shortcut `λc λs. s F (knot c)` duplicates the ~40-bit reader
inside NEXT; fetching NEXT through the off-domain `P c K = NEXT_c` (I6) costs
`x x c K` ≥ 25 per use. In the canonical (non-select-first) form the third
mode is impossible outright: it sees only `ABS[e] = cont (absval e)` (rigid
head at the root) and `APP[e] = intL (λe2. cont (lift e e2))` (a parser; by
I1 `APP[e] I = λe2. cont (lift e e2)` with `e` in function position), so `e`
is not extractable. Codex found no single-site layout below the 9-bit
allowance either.

### 3.1 The Codex consult (`consult_a.md` → `consult_a.out`, files in `consult_claim_a/`)

One consult, astra tier, framed as an attack on the scope claim above, with
the 162, the size formula and my three failed single-site routes as evidence.
Verdict: "Claim A is false as an architecture-wide scope argument; no
sub-162; no single-site construction below the nine-bit saving." It supplied
the four constructions in the table of section 1, which I re-ran through the
battery (all `667/1/0`). I adopt its correction in full: the depth bound is a
statement about the literal frame, and the exhaustive letopt is the result
that actually closes let-floating. Its remaining caution — that extending any
recursion bound to the whole CPS/closure architecture "requires pricing
let-floating, continuation closure creation, and shared dispatch together" —
is the right description of what a proof would need.

### (b) NEXT not separable from the reader

NEXT is under `λlist` in the 162 and could read the current stream
(`list` at 3 bits), but on a 0-tag stream the only useful fields are
`r = list F` (11), `b2 = list F K` (20), `r2 = list F F` (19), all dearer
than the free `r NEXT = NEXT b2 r2`. Sharing syntax between the variable arm
(`list (λq. cont)`) and ABS's `cont (absval exp)` is blocked by scope: the
arm is outside NEXT's `λexp`. A two-bit handler reader
(`s (λb1 λr1. r1 (λb2 λr2. b1 (b2 ABS APP) VAR))`) loses the shared body
parse (`intL` appears in both ABS and APP, each with explicit `r2`): ≈ 199.

### (d) Reader laws only for the actual NEXT

Hypotheses: the reader may apply `j = NEXT_c` to anything. By I1/I2 every
application of NEXT is `intL (λe. m ABS[e] APP[e]) B C…`: a parser applied to
`B`. With `B = s` (the variable's own stream) the result is `m ABS[r] APP[r] N C…`
and `m` cannot produce `cont r` (no access to `r`; `ABS[r]` has rigid head
`cont`). With `m = K`: `cont (absval r) N` — the right shape, the wrong value
(the term `λ. var n`; a representation shift to `absval(r)` for variables
makes `rep(var n) e` a function `λa. lookup(n, a::e)`, which no cell or lift
repairs because the contract fixes the encoding). With a constant
continuation `m = λa λp. Q` the 162's parser performs the skip (`Q N`,
checked for n = 1..3), suggesting the variable arm `λu. u (λa λp. s (λq. cont)) s`;
built as `d166.lam` (165 bits) it fails every program by fuel: the arm
delegates the skip to the parser's *own* variable arm on the same stream,
which delegates again with a growing constant continuation and never bottoms
out. The identity holds for the 162's parser, not for a parser whose variable
arm is defined through it. So the parser cannot do the variable arm's skip at
any price: it is self-reference, not cost. With `B = I` the result
is a continuation `λe. m ABS[e] APP[e]`, never `cont`. `B = J` gives
`m ABS[NEXT] APP[NEXT]`. So the actual NEXT offers the variable arm nothing
below 28, and the zero arm `r j` is already free.

### (e) Not a CPS parser

- Pair return `λf. f value rest`: every consumer needs `λv λrest` and an
  explicit `rest` reference, and loses η on the remainder (CPS passes it for
  free in ABS and APP): ≥ +8 per return site (the recorded 211/226).
- Stream-first `P s c`: `λr2`/`λrest` and explicit middle arguments at both
  parse sites (+8), and a root flip `λc λs. P s c` (+13); recorded 201–208.
- Thunked remainder `K N`: `P k (K a) = a V_k NEXT_k` (I6-type off-domain
  law), so every parse site must force, plus a root adapter (recorded 202).
- Direct evaluation `λz. Eval code z`: the remainder needs a second traversal
  (293) unless fused into one CPS traversal, which is the 162.
- Node-level parse-twice using `r intL = b2 value-or-rest` (`P K r2` = value,
  `P F r2` = rest): correct in principle, exponential in time, and needs ≥ 4
  extra parser references plus a root adapter; priced > 230.
- Krivine-style "APP pushes, ABS pops" (ABS = `cont exp`, APP builds the
  cell): a λ in value position is no longer a function — `λx.x` at the root
  evaluates to a lookup in the junk `z`. Fails the contract; η-only
  constructions of this kind are the recorded 237.

### (c) Value/environment protocol (priced here for completeness; other lanes own it)

- Absorbing values + leaky cell (`λzx. zx arg (λzy. zy args)`): the leaked
  junk at the K step is the stream rest `N`, different per occurrence; the
  lift must wrap `exp2 args` as `λj. exp2 args` (+4) against −2 on the cell:
  net +2 (recorded 169/170).
- Function environment built by the reader: `s (λq λr λe. e r) = λe. e r`
  (I5, 18 bits) but the variable arm then needs an explicit `cont` (+11) and
  the environment is applied to code (cell 30): ≈ 177–179 (recorded 177).
- Scott-list environment `λf. f a e'`: `r e = b a e' r'` — K leaks `r'`
  (= `N`), F flips orientation (`e' r'`); the recorded Scott-pair failure.
- `arg`-before-`args` values: the cell's index total is unchanged (5+4) and a
  root flip adapter is needed; no saving even before the adapter.
- Whole-prefix values (V = 25): the env lane's cell bound ≥ 27 eats the 3.

## 4. Where a sub-162 could hide

Inside the CPS/closure architecture the 162's skeleton is forced obligation
by obligation, and each obligation sits at a searched or proved minimum:

| obligation | 162 | why it is tight |
|---|---:|---|
| knot + two recursive references | 33 | Lean `26 + d1 + d2` in the literal frame; relocating the references is a let-floating trade that the exhaustive letopt prices (section 3a, 3.1) |
| first dispatch | 12 | `s I` + 3 applications; a handler binds `b, r` but pays `λb λr` and NEXT depth |
| second dispatch | 9 | `λb2` + `b2 ABS APP`; `r I X Y` loses `r2` in the F arm |
| strip `cont r` | 12 | `s (λq. cont)`; whole-prefix values save 3 and cost ≥ 27 at the cell |
| skip `N` | 12 | `s s u`; the handler's `r r r` (10) needs `λr` |
| erase NEXT | 4 | `λu … u` (the force is needed anyway) |
| closure + cell | 41 | slot-searched (558M fills in the 168 frame); cell ≥ 24 under weak laws |
| second parse + lift | 37 | slot-searched; lift ≥ 19 |

The two historic gains (165, 162) each let a Scott structure's own
application do a branch's work. The one such move left untried by this
analysis is making the *second* dispatch free the way `s I` makes the first
free; it is blocked by a scope fact (the F arm of `r I …` loses `r2`), not by
a search. Everything outside the architecture that I could price pays for
losing η on the remainder (pairs, stream-first, thunks: +8 or more per site)
or for a public adapter (handler-form root 13, mode flips 12–21), and the
measured record agrees (every non-canonical protocol ≥ 164, every correct one
≥ 170 except the in-class 164).

If a sub-162 exists, my read is that it is **in-class**, in the floor lane's
reader problem: a reader `R(c, j)` with `cost(R) + 4·depth(j) ≤ 45`, of a shape
that is neither `s I V j` (V ≥ 28 by golf162's case analysis with a checked
base, reported in this round's brief as exhaustive through 27-bit arms), nor
`s X j` with a handler (X ≥ 38, fusion lane), nor `list H S` (handler × skip
jointly excluded to 164). Such a reader would have
to obtain `cont r` and `N` for less than 24 bits combined without a
handler binder and without a second reader-local λ above NEXT — for example
by a stream self-application that yields both at once (`s s = K N` yields
only `N`; `s (s s) = N r` on variables puts them in the wrong order and is
`R R` on constructors). Proving `cost(R) + 4d ≥ 46` for every shape is the
next proof step; the handwritten reader bound reported in the brief is 30
(under review), and the gap 30–45 is where every remaining in-class hope
lives. Outside the class I have no
candidate below 170 and a priced obstruction for each of (a), (b), (d), (e).
