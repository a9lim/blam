# Round 4, lane "values": variable values, environments and constructors chosen jointly with the reader

**No sub-162 interpreter; no design survived paper pricing, so none was
written as a .lam file.** The lane's result is a transfer principle that
closes the value side of the problem relative to the separated class:
any alternative variable value that a reader can produce converts back to
the raw value at a small, explicit cost at the reader's continuation
occurrence (Lemma T, kernel-checked), and every representation priced
pays at least that much more in NEXT. Consequently a value change can
only ever *move* bits between the reader and NEXT; for the whole-prefix
value the exchange is exactly even at best, and a whole-prefix sub-162
would imply a raw-value reader of weight below 46, i.e. a sub-162 already
inside the separated class. The open question stays the reader-weight
question of class-bound.md §4, unchanged by any value representation.

**Follow-up (§6):** Lemma T is now a kernel-checked theorem schema for an
arbitrary representation with a NEXT-independent converter, any number of
continuation occurrences and any NEXT source above a δ-shifted frontier
(`lean/ValuesH3.lean`, reviewed adversarially by Codex). The whole-prefix
cell bound is complete for every two-λ cell; the residue is redex-headed
cells. One coverage gap: values that use NEXT as their decoder.

Files (all in `tmp/round4/values/`): `NOTES.md` (every idea, in order),
`LemmaT.lean` (kernel-checked transfer), `lemmaT_check.py`,
`wp_cells_check.py`, `headcount.py`, `dcount.py`, `lab.py`. Computation: three
normalisation scripts (well under a second each) and one Lean file
(under a second); no search, no battery run (nothing to battery).

## 1. Complete interpreters built

None. Every representation below was priced on paper first and lost
before a term was worth writing; the cheapest whole-prefix machines
(169/170) are already in the record.

## 2. The five parts in the 162, and the ledger of representations

| part | 162 bits |
|---|---:|
| variable arm `λu. list (λq. cont) (list list u)` | 28 |
| cell `λzx zy. zx arg (zy args)` | 24 |
| ABS value minus cell `λargs λarg. exp (·)` | 10 |
| APP lift `λargs. exp args (exp2 args)` | 19 |
| root adapter (transparency) | 0 |
| **total** | **81** |

Representations priced (Δ against the 81; details NOTES §1–2):

| representation | Δ | why it loses |
|---|---:|---|
| whole prefix `U_n`, S1 cell λu r. r H | ≥ 0 (normal ≥ +7) | V −3; cell ≥ 27 (env lane), normal 34 |
| whole prefix, top-only junk layer (exact repair of the off-by-one) | +22 | cell 49 (checked) |
| whole prefix, two-door cell `λu t. t (λb t'. b a (e b t'))` | +14 | cell 41 (checked); same S1 family |
| whole prefix, sentinel/insertion env | +22 | ABS value 59 (hand count, not run) |
| `list cont`: `cont F r` (V 11) | dead | value is the bit; rest is the unary tail; with the skip, 3 args at a 2-arg root |
| Scott-pair env (15) with code-driven lookup | dead | orientation flips every level |
| Scott pairs + curried selectors via a self-applied fold | ≥ +40 | the fold `X X` alone ≈ 50 bits vs 9 saved |
| parser-driven selectors, second-bit test in the variable arm (no mode) | ≈ +58 | variable arm ≈ 95 (hand count, not run) |
| wrapped code values Φ[r] | ≥ 0 | depth ≥ 2 is raw again; Φ only adds |
| box values `λf. f r` (converter free) | ≈ +6 (priced, not bounded) | lookup `box e = e r` needs a stream-consuming env |
| values containing NEXT (absorber-free readers) | dead | every NEXT application is a parser awaiting a stream |
| body-dependent ABS | ≥ 0 | closures force one uniform env, i.e. a uniform cell |
| non-transparent (leaky −2, alias −5, pairs −9) + root adapter | ≥ +6 | cheapest adapter ≥ 15 + |A| |

The reader can cheaply produce only two index-carrying values: applying
the stream yields `(F, r)` pairs (`s X = X F r`), so the cheap values are
`s` (whole prefix) and `r` (raw, via `s (λq. c)`). In the 162's variable
operand shape `λu. cont VAL REST`, `|V| = 22 + |VAL|`, and a VAL under 6
bits is a frame variable, `I` or `λq. u`, so `|V| ≤ 27` forces `VAL = s`.

## 3. New exact identities (with proofs)

1. **Converter transfer (Lemma T).** If κ has only `c` free and
   `κ V_n(N) N =β c U_(n-1)(N) N` for all n, and R' satisfies
   `R' Z(r) =β r j`, `R' U_n(N) =β c V_n(N) N`, then `R'[κ/c]` satisfies the
   separated class's raw reader laws. *Proof:* substitution commutes with
   β; `(r j)[κ/c] = r j`, `(c V_n N)[κ/c] = κ V_n N =β c U_(n-1) N`. ∎
   Kernel-checked for the class's own law instances (zero and length one):
   `LemmaT.lean`, `Blc.ValuesLemmaT.transfer_reader` (axioms: propext,
   Quot.sound), with `wp162_transfer` instantiating it on the whole-prefix
   reader `λs. s I (λu. c s (s s u)) j`. In the class the rewrite acts on
   R alone, before NEXT is inserted for j, so NEXT's own c is untouched.
   Refinement (handwritten, residual tracking): only the occurrences
   whose residual heads the variable result need rewriting; the others can
   stay `c`, because each of their residuals is erased in both laws'
   reductions (the results `r j`, `c V_n N` contain no other c) and `c T`
   is never itself a redex, so the same reduction sequence goes through.
2. **Whole-prefix converter** `κ = λv. v (λq. c)`: `κ U_n N → U_n (λq. c) N
   → (λq. c) F U_(n-1) N → c U_(n-1) N` (3 head steps). Contracting κ at an
   applied occurrence turns `c T X…` into `T (λq. c) X…`: **exactly +3
   bits** (λq, and one index bit on c). Unapplied occurrence +10; a let
   `(λk. R'[k/c]) κ` +16 cost and +1 depth of j (+20 weight). On the 162
   shape the rewrite is literally `c s ↦ s (λq. c)`, i.e. the 162's own
   variable arm. Checked by normalisation on three readers
   (`lemmaT_check.py`: 162 shape +3, let-bound c +10, 165 shape +3).
3. **Whole-prefix cells** (all lookups `U_n env_3 = a_(4-n)`, n = 1..3,
   checked by `wp_cells_check.py`):
   `λu t. t (λb t'. b a (e b t'))` (41: the parent re-entered through its
   own whole-prefix door with b = F) and the top-junk repair
   `λu t. t (λb t'. b a (t' (e u I)))` (49: each cell carries a raw cell,
   extracted from the parent by `e F I`). With the 162's raw cell, a
   whole-prefix code looks up one binder too far (`U_1 → a2`, checked).
4. **Stream by-products.** For a variable stream `s = cons F r`,
   `s X = X F r` is the only thing an application of s can deliver, so the
   reader's index-carrying values without new cells are s and r; `s Δ`
   (Δ = λx. x x) is also r on a variable and K on a zero cell, but costs
   8 bits of Δ.

## 4. Lower bounds and impossibility arguments

**4.1 Exchange rate (corollary of Lemma T; handwritten arithmetic over the
kernel-checked class theorem).** Generalise the class to a representation
V: reader law `R U_n = c V_n N`, NEXT_V the literal NEXT for V. Size is
`116 + (|NEXT_V| − 92) + w(R)` as in class-bound.md §2 (same four free
NEXT leaves, same depth charge). Lemma T gives a raw reader of weight
≤ w(R) + δ_V, δ_V the cost of rewriting R's heading c-occurrences.
Hence **a V-member below 162 implies a raw class reader of weight
< 46 + δ_V − (|NEXT_V| − 92)**. A representation can only help if its
NEXT costs less than 92 + δ_V.

**4.2 Whole prefix is never an independent escape.** Hypotheses: exactly
one c-occurrence heads the variable result and it is applied (δ = 3);
NEXT is the canonical NEXT with its cell replaced by a uniform
whole-prefix cell D of the S1 shape `λu r. r H` (H any term, redexes and
frame variables allowed). Then `|NEXT_V| − 92 = |D| − 24 ≥ 3` by the
env lane's computer-assisted |D| ≥ 27, so a whole-prefix sub-162 implies
a raw class reader of weight < 46, i.e. a sub-162 inside the separated
class itself. Status: Lemma T kernel-checked; the δ = 3 count and the
assembly handwritten; |D| ≥ 27 computer-assisted (round 3). Outside:
k ≥ 2 heading c-occurrences (the rewrite costs 3k), other D shapes
(4.3), non-canonical NEXT around D.

**4.3 Other whole-prefix cell shapes carry overhead (handwritten sketch,
not a proof).** D F c must reduce to rigid a on c = cons K N, so D's hnf
has ≤ 2 leading λs; c must be bound and applied to a function receiving
both bit and tail (list and bit1, the only non-rigid frame values, lose
the tail). The S1 wrapper costs 8; the alternatives found cost more:
bit1-headed (13, minus at most 2 index bits), raw-style self-dispatch
`λb t. b J (t Y)` (≥ 10 plus the same handler), `λu r. r H1 H2` (H1 takes
three arguments; cheapest found 49), `λu. u P Q…` (≥ 4 of junk). A
complete check is out of scope here: 211,642 terms of ≤ 26 bits in the
ABS frame contain both a and e (`dcount.py`), far above the brief's
hole-search limit, and the reasoning that would narrow them to S1 is the
missing step.

**4.4 The variable operand (handwritten).** In the 162's shape
`λu. cont VAL REST` with REST = `list list u`, |V| = 22 + |VAL|; a VAL of
≤ 5 bits is a frame variable, `I` or `λq. u`, and only `list` carries n, so
|V| ≤ 27 forces whole prefix (25). `list X` values cost 27 + |X| ≥ 29.

**4.5 Code-uniform values (handwritten).** For V_n = Φ[U_(n-1)(N)] with a
fixed non-recursive Φ, the lookup recursion continues through the raw
tail, which carries no Φ; the cell either re-wraps (≥ 24 + |X| + 2) or
meets the raw lookup laws at depth ≥ 2 (≥ 24, Codex). Φ only adds.

**4.6 Body-dependent ABS (handwritten).** When the body is a closure,
the ABS value must pass it exactly one environment (extra operands reach
the meaning), and every lookup inside the body consumes that same object,
so it obeys the uniform lookup laws: ABS ≥ 34 survives body dependence
under raw values. (A cheap code/closure test is not excluded, only
priced: an application and an operand at least.)

**4.7 Values carrying NEXT, and `cont F r` (handwritten, every size).**
`s j`, `j s`, `s (λq. j)` and any value whose head is NEXT start or await
a parse; applied to an env cell they parse the cell. `s cont = cont F r`
hands the bit as value and the unary tail as rest; adding the skip gives
three arguments to a continuation that must, at the root, receive two.

**4.8 Selectors and non-transparency (pricing, not bounds).** Scott-pair
envs save 9 but need curried selectors, i.e. a fold over the unary code;
the cheapest fold found is a self-applied step of ≈ 50 bits (round 3
checked that no closed T ≤ 24 does it). Non-transparent savings (leaky 2,
alias 5, pairs 9) are all below the cheapest root adapter (≥ 15 + |A|).

## 5. Honest read

Values are not where a sub-162 hides. The 162's value protocol is the
cheapest point of a closed exchange: the code drives the lookup, the cell
carries the recursion's next step (`t e`), the reader strips the leading 1
once for 3 bits, and every alternative either moves that 3-bit conversion
into the uniform cell (where it must be repeated at every recursion level
and costs more) or needs recursion or an adapter. The principle behind
every row of §2: *a conversion is cheapest at the producer, once per
variable occurrence, never at the uniform consumer.*

What this changes for the coordinated effort: the separated class's open
question (every raw reader has w ≥ 46) does not get easier by changing the
value: for whole prefix this is 4.2 (under its hypotheses), and for the
other cheaply producible values it is the pricing of §2, not a theorem.
A sub-162 must come from (a) a raw-value reader of weight < 46 (the
close46/refute46 question, untouched here), (b) NEXT control or knot
changes outside the class, or (c) a representation with |NEXT_V| < 92,
which needs a non-code-driven environment (a fold the reader must pay
for) or non-transparent values (an adapter). The next proof step on the
value side is to make 4.2 unconditional: a general-shape bound |D| ≥ 27
for every uniform whole-prefix cell (the S1 enumeration plus a
completeness argument for 4.3's shapes), and a version of Lemma T's
accounting for k ≥ 2 heading occurrences. On the construction side, the
only lever I would still pull is (c) with the parser's own recursion
producing selectors. Round 3 priced a second mode at ≥ 20 against 17
saved; testing the second bit inside the variable arm removes the mode
(NOTES §2.6) but the arm then costs ≈ 95 bits, so I see no route there
either. A genuinely new technique on this side would have to be an
environment whose lookup recursion is carried by something other than
the env cell's `t e` and costs less than the 24-bit cell, and I know of
no candidate.

## 6. Follow-up: H3 replaced by an arbitrary value representation

Everything in this section is in `lean/ValuesH3.lean` (kernel-checked;
axioms propext, Quot.sound, and Classical.choice for the frontier case
split; `lean/ValuesH3.axioms.log`). It imports a snapshot of the widen
lane's `Widen.lean` (SHA-256 de3f4974…3443) compiled locally as module
`Widen`. Build from `/Users/a9lim/Work/blam/lean`:
`LEAN_PATH=.lake/build/lib/lean:/Users/a9lim/Work/blam/tmp/round4/values/lean lean -j2 /Users/a9lim/Work/blam/tmp/round4/values/lean/ValuesH3.lean`
(a few seconds).

### 6.1 The schema

A **representation** is any family `V : ℕ → Term`. A **V-reader** R
(`VReader V R`) has free c, j, the class's zero law `R Z(r) =β r j`, and
`R U_(n+1)(N) =β c (V n) N` for every n. A **converter** κ
(`Converter V κ`) has only c free and `κ (V n) N =β c U_n(N) N` for every
n. Separately: `occ c (V n) = 0` (syntactic freshness), one source j.

Let E = T[λp c. R[Q/j]] with any opaque fixed-point knot T, any V-reader
R and **any NEXT source Q** (scope [c, p] only; no branch laws, no
constructors, no normality). Then E is dominated by a raw-class member
(canonical knot, canonical NEXT, a FullReader with one hole), i.e.
`∃ R', FullReader R' ∧ occ j R' = 1 ∧ |knot[R', canonicalNext]| ≤ |E|`,
whenever one of these price conditions holds (q = |Q|, F = free c/p leaves
of Q, f = c-occurrences of R):

| theorem | conversion | hypothesis on NEXT |
|---|---|---|
| `share_dominated` | `(λa. λk. R) j κ`: R reused verbatim, depth 0, cost + depth + 11 + |κ| | F ≥ 1, q ≥ 103 + |κ| (any f) |
| `transfer_dominated` | R[κ/c], κ with one free leaf: exactly +(|κ| − 2) per occurrence, depth kept | F ≥ 2, q ≥ 92 + δ, q + 3F ≥ 104 + δ, δ = f(|κ| − 2) |
| `wholePrefix_dominated(_law)` | contracted strip: applied `c a ↦ a (λq. c)` +3, bare `c ↦ λv. v (λq. c)` +10, depth kept | same frontier with δ = 3a + 10u |
| `shifted_frontier_dominated` | any depth-preserving raw FullReader R̃ with cost ≤ cost R + δ | same frontier with that δ |

`floor_of_dominated` then transfers any raw full-reader floor: under the
reader-46 conjecture every member meeting one of these hypotheses has at
least 162 bits. The proof uses widen's law-free source bound
`|E| ≥ 24 + cost R + q + F·depth R` (`arbitrary_assembly_lower`) for the
candidate, and the exact canonical prices for the comparison readers; the
frontier case split is widen's with q − δ in place of q.
`vnext_two_leaves` discharges F ≥ 2 from any ABS-branch reduction of the
canonical shape `Q K t →* p (λf. c X) t`, X an arbitrary constructor body.

**Pinned δ for the whole prefix.** `wp_converter` (κ = λv. v (λq. c)),
`wp162_reader` (the whole-prefix reader λs. s I (λu. c s (s s u)) j obeys
all unary laws), `wp162_occurrences` (a = 1, u = 0, so δ = 3), and
`wp162_strip : strip 0 wp162 = reader162`: the contracted conversion of the
whole-prefix 162-shape reader is literally the 162's reader. Readers with
two or more continuation occurrences are now covered exactly
(δ = 3a + 10u, or the occurrence-free share bound), which removes the
round-1 hypothesis "one heading occurrence".

### 6.2 What the schema removes, and what it keeps

The domination inequality uses none of NEXT's branch laws, constructors,
normality or tag discipline: only its scope, F and its price. So the
"canonical constructors" half of H3 is gone, and "raw-tail values" is
replaced by "V has a converter that decodes without NEXT". Kept (Codex
review, finding 4): a two-argument continuation whose rest is exactly N,
the zero law `r j`, reader scope [c, j] and one source j with hygienic
insertion, the opaque knot, and a converter with no access to j, the
recursion or reader-local state. Domination is a source-size comparison
with a canonical member, not an equivalence of interpreters.

### 6.3 Coverage gap found by the review: NEXT-dependent decoding

A representation may use NEXT itself as its decoder (Codex): with the
dispatch-first NEXT `Q = λb. b A B` (A, B the canonical branch targets),
`V_n = j (λx y. U_n(N))` gives `V_n[Q/j] →* U_n(N)`, and there is a
one-hole reader for it; but no converter with j rigid exists (substituting
j := λz. I sends every V_n to I). Such members are outside the schema:
they are class-bound.md §5's "reader laws only for the actual NEXT". The
known instances are dear (the value still contains U_n, the reader must
share j through a let, and with the canonical NEXT λb. p (λf. b … …) an
application `j X` is a parser call, not a decoder), but no bound is
proved for them.

### 6.4 The NEXT side for the whole prefix

With δ = 3 a member is dominated unless q ≤ 94, or F = 2 and q ≤ 100, or
F = 3 and q ≤ 97. For the literal wp162 (cost 39, depth 1, `wp162_price`)
any knot with q + F ≥ 99 already gives ≥ 162 directly. For the canonical
NEXT with its cell replaced by a whole-prefix cell D (q = 68 + |D|,
F ≥ 4), domination holds **iff |D| ≥ 24 + δ = 27**, whatever extra c/p
leaves D has. The cell question is therefore exactly "is every uniform
whole-prefix cell at least 27 bits?". Progress (cell frame
[a, e, f, b, c, p]: body value f rigid, ABS tag b = K, c, p rigid):

- **Shape I, D = λu. λr. B with any body B (redexes, frame variables, any
  head): no cell ≤ 26, complete and computer-checked**
  (`shapeI_check.py`, `shapeI_check.json`). All 1,764 bodies of ≤ 22 bits
  that contain a and e are generated exhaustively; 1,698 fail the index-one
  law, 66 the index-two law, none pass, none run out of fuel. Positive
  controls (round 3's 34-bit cell, a 41-bit cell using the tag as K) pass,
  the raw 24-bit cell fails (`shapeI_control.py`). Completeness by hand: B
  must contain a, e and r (otherwise D F c does not depend on c), and a
  fourth leaf at frame index ≥ 4 already costs 23 > 22, so only r, u, a, e
  and local binders occur. This strictly contains round 3's λu r. r H.
- **Shapes II (λu. M, M not a λ) and III (no leading λ), by spine head**
  (handwritten; counts from `headclass_count.py`, counting only): rigid
  heads a, e, f, c, p are impossible; a u-headed spine `u P Q…` equals
  `Q…` (u is always F), so a size-minimal cell has none, and `u P` alone
  gives D F c = c; a b-headed spine `b P Q…` equals `P…` and is strictly
  smaller, `λu. b P` ignores c, and III's `b P` reduces without growth to
  the shape-II cell λu. P↑ (P has ≤ 5 free leaves at ≤ 19 bits).
- **Residue: redex-headed cells** (a non-erasing head β-redex, i.e. a let:
  6,113 terms in shape II and 65,368 in shape III before any filter, too
  many to check under the brief). For a size-minimal cell the head redex
  `(λx. P) N` must not shrink on contraction:
  `(m−1)|N| − 4 − 2m + Σ δ_i (fl(N) − 1) − fl_above(P) ≥ 0` for m uses of x
  at depths δ_i. Sharing a single variable would need m ≥ 7 uses of e, and
  a linear let needs δ(fl(N) − 1) ≥ 6 + fl_above. Closing the remaining
  (N, m, δ) profiles is the one missing step for an unconditional
  whole-prefix theorem. Not done.

The structural reason the cell must pay again (sketch): S1 is an 8-bit
wrapper λu r. r (·) (discard the leading F, open the tail) around a
handler whose parent call is `e F t'`; round 3 has the handler ≥ 19 with
redexes, the raw cell is ≥ 24, so D − C ≥ 8 − 5 = 3 = δ. The cell strips
once more, uniformly, at every lookup level.

### 6.5 Review

Fresh-context Codex review (astra, high effort, label values-review;
`review_prompt.md`, `review.out`): it re-ran both Lean files, found no
proof or accounting defect, confirmed δ = 3a + 10u and |κ| − 2 per
occurrence, and raised the coverage gap of 6.3 (high), the explicit
F ≥ 2 (fixed by `vnext_two_leaves`), the size-comparison reading of
domination, the retained interface of 6.2, the freshness wording, and
the direct q + F ≥ 99 bound for wp162. All are folded in above.

### 6.6 Honest read after the follow-up

On the value side H3 is now a theorem schema with one explicit gap
(NEXT-dependent decoding) and one price question (the cell bound outside
shape I, reduced to redex-headed cells). The value representation cannot
be the escape for any NEXT-independent representation: every one is
dominated as soon as NEXT pays the converter's price again, and for the
whole prefix that price is exactly the 3 bits the reader saves. The next
step on this side is the let-profile analysis of 6.4, in the style of
widen's AdminBeta budget; on the coverage side, a bound for values that
use NEXT as their decoder, which belongs with the "reader laws only for
the actual NEXT" escape of class-bound.md §5.
