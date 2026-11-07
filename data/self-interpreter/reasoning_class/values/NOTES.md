# Round 4, lane "values" — running notes

Frame conventions: 162 frames. V's body frame [u, list, cont, intL, x];
ABS frame (inside the value) [arg, args, exp, bit1, list, cont, intL, x];
cell frame adds [zy, zx] on top. Costs: λ 2, app 2, var idx i -> i+2.

## 0. The five parts in the 162 (bits)

| part | bits | note |
|---|---:|---|
| variable arm V = λu. list (λq. cont) (list list u) | 28 | VAL-part `list (λq.cont)` 12 incl. its app; REST `list list u` 12; λu 2; outer app 2 |
| cell λzx zy. zx arg (zy args) | 24 | leaves 3+4+2+5 = 14 |
| ABS value minus cell λargs λarg. exp (·) | 10 | |
| APP lift λargs. exp args (exp2 args) | 19 | |
| root adapter | 0 | transparency: val(M) =β λz.M |
| total | 81 | the other 81 bits are knot/reader/NEXT control |

Any representation must beat 81 in these five parts with the other 81
unchanged, or change the other 81 too.

## 1. Representation ledger (each priced on paper)

### 1.1 VAL cost floor inside V of shape λu. cont VAL REST  (handwritten)
V = 2 + 8 (4 apps) + cont 4 + |VAL| + REST(list list u: 3+3+2) = 22 + |VAL|.
VAL of ≤ 5 bits is a single frame variable; only `list` (= s) carries n.
So V ≤ 27 in this shape forces VAL = s (whole prefix), V = 25; every other
index-carrying VAL has |VAL| ≥ 6 (an application or a λ), V ≥ 28. The 162
attains 28 with the cont-absorbing variant `list (λq. cont)` (same 28).
VAL = list X (value X F r) costs 27 + |X| ≥ 29.

### 1.2 Whole-prefix values with a top-only junk layer (new pricing, dead)
With the 162 cell, U_n (cell a e) = U_(n-1) e: whole-prefix var n acts as
raw var n+1. Exact repair: give every body env one junk layer on top,
E_k = cell(X, raw_k). X is never read (whole-prefix lookups always enter
the top cell through F). Correct, but ABS must strip the parent's junk
(e F I = raw_(k-1)) and re-wrap: λe λa. exp (λb t. t (cell a (e F I))) or
the fused D(a,e) = λu t. t (λb t'. b a (t' (e u I))) = 49 bits. +25 vs +3.
The env lane's λu r. r H family (≥ 27; normal 34) is the cheap end of this.

### 1.3 Two-protocol D-cells (u-ignoring) (dead)
D(a,e) = λu t. t (λb t'. b a (e b t')) is correct for whole-prefix values
(u ignored, the parent re-entered through its own whole-prefix door with
b = F): 41 bits; it is the env lane's H = λb. b (K a) (e b) (34) with a
worse K-arm. No two-door cell can save: a whole-prefix lookup and a raw
child lookup both arrive as (F, t) and need different behaviour unless the
cell consumes F and then tests t (the λu r. r H shape).

### 1.4 `list cont` return: cont F r (V = 11 bits) (dead, every size)
s cont = cont F r hands value F and rest = the unary tail. The value is the
bit, the same for every index; the rest re-enters a parse at the unary
tail, which a constructor-parsing continuation reads as variable n-1 (or,
at the terminator, as a constructor from N). Index information is gone
from the value and the rest is not N. With the extra skip
(`list cont (list list u)`, V = 25) cont gets three arguments F r N; the
root C must receive exactly two from ABS/APP returns, and a continuation
cannot tell arity (round-3 §3.7), so ABS/APP would need 3-argument returns
and the root an adapter.

### 1.5 Scott-pair env (15) with code-driven lookup (dead, every size)
r (λf. f a e) = b' a e r': K-arm leaks r' (= N), F-arm is `e r'` (env
applied to code), and e r' = r' a' e'' = a' b'' r''' e'': head a'. The
orientation flips; recursion needs the step to be carried by the code
(fold, needs a fixpoint) or by the env (that is the 24-bit active cell).
Pricing the fold with self-application X X,
X = λb t x e. e (λa e'. b a (t x x e')): 54 bits, vs 9 saved.

### 1.6 Code-uniform wrapped values Φ[r] (dead; handwritten)
Values V_n = Φ[U_(n-1)(N)] for a fixed non-recursive context Φ. Φ can touch
the code only by applying it (r X = X b' r') or passing it. Whatever Φ does
at the first level, the recursion continues through the raw tail r', which
carries no Φ; so either the env cell re-wraps (cell = λb t. b a (t X e'),
X the wrapper: ≥ 24 + |X| + 2) or every deeper level is a raw lookup and
the cell meets the raw laws (≥ 24, Codex). Φ only adds cost. Offsets: only
q = 0 (raw, U_(n-1)) and q = 1 (whole prefix, U_n) are producible without
building cells (cons F s costs a λ and three applications).

### 1.7 Values that carry NEXT (absorber-free readers) (dead)
The absorber λu exists because V receives j = NEXT. Using j inside the
value instead: s j = j F r = intL (λexp. APPRET) r runs a parse of r; j s,
s (λq. j) = j r are parsers awaiting a stream, so as env-functions they
parse the env cell (`cell I V' j'` = a (V' e') j' with the 162 cell). A
cons with j as its first bit (λf. f j r) is a whole-prefix value with a
dearer build. No value can contain j usefully: every application of the
canonical NEXT is a parser (record §5).

### 1.8 Body-dependent ABS operation (closed under raw values)
ABS value λe λa. G(exp, a, e). When the body is an ABS/APP closure, exp is
λe'. M' and G must pass it exactly one valid environment (extra operands
reach the meaning: M' X ≠ M'); that environment is then the same object that
every variable lookup inside the body consumes, so it meets the uniform
lookup laws for arbitrary bodies, i.e. it is a uniform cell (≥ 24). G can
specialise only on variable bodies, and to do so it must test exp (code
streams versus closures), which costs an application and an operand at
least. So ABS ≥ 34 survives body dependence; the 17-bit favourable-body
cell is a one-body artifact. (Handwritten; the "test" claim is a cost
observation, not a proof that no cheap test exists.)

### 1.9 Whole-prefix: every other outer shape of D carries overhead
D F c must reduce to a (rigid) on c = cons K N, so D's hnf has at most two
leading λs (three leave a λ). Shapes: λu r. r H (env lane, ≥ 27, normal
34); λu r. r H1 H2 (H1 takes three arguments; cheapest found 49);
λu. u P Q.. (D F c = Q.. c, a junk P costs ≥ 4); bit1-headed (= K-wrap,
+5 over λu); list-headed (list X Y = X K (cons K B) Y: +8 before use).
Sentinel/insertion envs (λΣ λa. Σ Σ (λR. exp (λu t. t (cell a R)))): 59.
Whole prefix saves exactly 3 in V; every cell found costs ≥ 27 (+3).

## 2. Exchange-rate framework (the lane's organising result)

Generalise the separated class (class-bound.md §1) to a value representation
V = (V_n, Abs_V, App_V): reader law R U_n(N) =β c V_n(N) N (zero law
unchanged), NEXT branch laws with Abs_V, App_V in place of the canonical
constructors, root transparency. Size = 20 + 4 + |NEXT_V| + w(R) as in the
class (the 4·depth(j) accounting is unchanged: it counts NEXT's free leaves).

**Lemma T (converter transfer; handwritten, elementary).** Let κ be a term
with free variable c (and nothing else free) such that
κ V_n(N) N =β c U_(n-1)(N) N for every n ≥ 1, N rigid. If R' meets the
V-reader laws then R := R'[κ/c] meets the raw class reader laws.
*Proof.* Substitution commutes with β: R'[κ/c] Z(r) =β (r j)[κ/c] = r j,
and R'[κ/c] U_n =β (c V_n N)[κ/c] = κ V_n N =β c U_(n-1) N. ∎
Then contract the redexes κ T at applied occurrences (β-steps preserve the
laws). For whole prefix, κ = λv. v (λq. c): at an applied occurrence
`c T X…` the contracted form is `T (λq. c) X…`, exactly +3 bits (λq 2, c's
index +1); an unapplied occurrence costs +10; a let `(λk. R'[k/c]) κ` costs
+16 in cost and +4 in depth(j), +20 in weight, for any number of occurrences.

**Corollary.** w_raw,min ≤ w_V(R') + δ_V, δ_V the cheapest such rewrite of
R''s c-occurrences. Hence a member with representation V costs at least
116 + (|NEXT_V| − 92) + w_raw,min − δ_V: **V can beat raw only if
|NEXT_V| < 92 + δ_V.** (The 92 is the kernel-checked canonical NEXT bound;
|NEXT_V| is the literal NEXT for V.)

- Whole prefix: δ = 3 for a reader whose one c-occurrence is applied (the
  162 shape `c s ↦ s (λq. c)` is exactly this rewrite); |NEXT_V| = 92 + |D| − 24
  with the canonical NEXT around a whole-prefix cell D; the env lane's
  |D| ≥ 27 (shape λu r. r H, computer-assisted) gives |NEXT_V| ≥ 95 = 92 + δ.
  **So every whole-prefix member with a single applied c and an S1 cell
  costs at least the raw member R'[κ/c], i.e. lies at or above the
  separated class's own minimum.** Whole prefix can never be the escape.
- A V with |NEXT_V| < 92 must change the cell, ABS or the lift below
  their proven floors (24, 34, 19 under raw laws): only non-code-driven
  envs (Scott pairs, 83) or non-transparent values (leaky 90, alias ≈87)
  do, and they need a fold or an adapter (§1.5, §3).

### 2.1 Lemma T checked on three readers (computer-checked, lemmaT_check.py)
Laws checked by normalisation for n = 1..4 and the zero stream, rigid
c, j, N, r:
- 162 shape `\s. s I (\u. c s (s s u)) j` (whole prefix) -> the 162's own
  reader `\s. s I (\u. s (\q. c) (s s u)) j`: both laws hold, +3.
- c let-bound (unapplied occurrence) -> +10, laws hold.
- 165 shape with `(\r. c s)` -> `(\r. s (\q. c))`, +3, laws hold.

### 2.2 What else the reader can produce, with converters
The by-products of applying the stream are (F, r) pairs: s X = X F r. So
cheap reader values are s (whole prefix, converter +3), r (raw, 0), and
wrappings of r. Box values V_n = λf. f r (from s (λq r f. f r)) convert
for free (c T ↦ T c, +0), but their lookup box e = e r applies the env to
the code, so the env must be a stream consumer λs. s (cell-like) (+6 at
least): |NEXT_box| ≥ 98 > 92 + 0. Thunked values K r have lookups that
ignore the env: dead. Every value with a cheap converter has a NEXT at
least as much dearer; this is the general shape of the exchange rate:
a one-time conversion at the producer (the reader, once per occurrence)
is cheaper than a conversion at the consumer, because the consumer is the
uniform cell, which must perform it identically at every recursion level
(whole prefix: consume an F and then test, at every level).

### 2.3 Boundary of the whole-prefix corollary
Hypotheses: one c-occurrence heads the variable result (k = 1; for k
heading occurrences the rewrite costs 3k, the corollary needs |D| ≥ 24+3k);
NEXT is the canonical NEXT with its cell replaced by D; D has the S1 shape
λu r. r H (the env lane's 27). Outer overheads of other D shapes (§1.9):
the F-consuming and c-binding wrapper λu r. r (·) costs 8, the bit1-K
alternative 13 minus 2 index bits, a raw-style self-dispatch λb t. b J (t Y)
≥ 10 + the same handler. Not a proof for arbitrary D.

### 2.4 Lemma T in Lean (kernel-checked): LemmaT.lean
`Blc.ValuesLemmaT.transfer_reader : WReader R → Reader (transfer R)` where
WReader is the whole-prefix analogue of `SelfintClass.Reader` (scope
FreeUnder 2, zero instance `R Z ⇝ r j`, length-one instance
`R U_1(N) ⇝ c U_1(N) N`), `transfer R = substDec 1 κ (shift 1 0 R)`,
κ = λv. v (λq. c). New helper lemmas: beta_shift / betas_shift /
join_shift, freeUnder_shift, freeUnder_substDec. Instance:
`wp162_reader`, `wp162_transfer` (the 162-shape whole-prefix reader).
Axioms: propext, Quot.sound only. Compiles in well under a second against
the repo build (`LEAN_PATH=lean/.lake/build/lib/lean lean -j2`).
Contraction of the κ-redexes is then `Reader.beta` (already in the repo);
the +3-per-applied-occurrence size accounting is handwritten.

### 2.5 General-shape whole-prefix cell: size of the space
dcount.py: 211,642 terms of ≤ 26 bits in the ABS frame (8 free variables)
contain both a and e (100,160 at exactly 26). Too many for a hole check
under the brief; the general-shape bound stays the §1.9 sketch.

### 2.6 Parser-driven selectors without a mode (priced, dead)
The terminator problem of round-3 §22 can be avoided by testing the second
bit in the variable arm itself: V = λu. s (λq r. r (λb t. b (cont v1 t)
(intL (λv. cont (λp. p (λa. v))) r))) recurses through intL only while the
next bit is 1, returns v1 = λp. p K with rest t = N at the 0 (no skip,
no mode). Hand-derived, not run; ≈ 95 bits against 28; the Scott pair
saves 9. Dead by ≈ 58.

## 3. Follow-up: H3 in general (coordinator request, 2026-10-21)

Target: a theorem schema "any member with variable values V_n, its
constructors and NEXT_V is dominated by a raw-class member (canonical NEXT,
canonical knot, a FullReader) unless NEXT_V is below a δ-shifted frontier",
plugged into widen's frontier theorem (Widen.lean: arbitrary_assembly_lower,
reader_c_depth_charge, canonical_assembly_exact, frontier_dominated_full).

Key observation: widen's lower bound |E| ≥ 24 + cost R + q + F·depth R
(arbitrary_assembly_lower) needs only scope, one hole and the knot's
fixed-point law — no reader or NEXT laws. So for a V-member it holds
verbatim; the only place laws enter is the comparison reader, which we
build by conversion. Three conversions, all keeping one j-hole:
 (i)  substitution R[κ/c] (transfer): depth unchanged, cost +(|κ|−2) per
      c-occurrence when κ has one c leaf (exact: κ at depth d_i costs
      |κ| + d_i, the c leaf it replaces d_i + 2);
 (ii) share-and-hoist R* = (λa. λk. R) j κ: R is reused verbatim (its c is
      k, its j is a), depth 0, cost = cost R + depth R + 11 + |κ|,
      any number of c-occurrences;
 (iii) whole prefix only: contracting κ = λv. v (λq. c) at applied
      occurrences, +3 each (c T ↦ T (λq. c)), depth unchanged.
Frontier arithmetic: with δ = cost(R̃) − cost(R) and depth R̃ = depth R,
widen's case analysis goes through with q − δ in place of q: dominated
whenever q ≥ 92 + δ and q + 3F ≥ 104 + δ. For R*, dominated whenever
q + (F−1)·d ≥ 103 + |κ|, in particular q ≥ 103 + |κ| (F ≥ 2).

### 3.1 Lean, part 1 (kernel-checked; lean/ValuesH3.lean, imports a Widen
snapshot compiled locally to lean/Widen.olean, SHA-256 de3f4974…3443)
- VReader V R: zero law + ∀ n, R U_(n+1)(N) ⇝ c (V n) N.  Converter V κ:
  FreeUnder 1 κ and ∀ n, κ (V n) N ⇝ c U_n(N) N.
- transfer_fullReader: VReader V R → Converter V κ → (∀ n, occ 0 (V n) = 0)
  → FullReader (transfer κ R)   [all unary laws, not only the two probes].
- share κ R = (λa. λk. R) j κ; share_reduces (→* transfer), share_fullReader,
  share_cost = cost R + depth R + 11 + |κ|, share_depth = 0, share_hole = 1.
- share_dominated: any representation with a converter, ANY number of c
  occurrences, any NEXT source with ≥ 1 free leaf and |Q| ≥ 103 + |κ|:
  dominated by a raw-class member (canonical knot + canonical NEXT +
  a FullReader).
- shifted_frontier_dominated: any depth-preserving conversion R̃ with
  cost R̃ ≤ cost R + δ and NEXT price q ≥ 92 + δ, q + 3F ≥ 104 + δ, F ≥ 2:
  dominated (widen's case analysis with q − δ).

### 3.2 Lean, part 2 (kernel-checked, same file)
- kw d = λv. v (λq. c) at depth d; wp_converter : Converter wpV (kw 0)
  (wpV n = U_(n+1)(N), whole prefix), wpV_fresh.
- strip d: applied `c a` ↦ `a (λq. c)`, bare `c` ↦ kw d. strip_reach:
  transfer (kw 0) R →* strip 0 R. strip_cost: holeCost (strip) + 7·appOcc
  = holeCost R + 10·occ, i.e. **δ = 3a + 10u** (a applied, u bare c leaves),
  strip_occ / strip_occDepth: hole and its depth unchanged.
  FullReader.forward (laws survive forward β).
- wholePrefix_dominated: whole-prefix reader with ANY number of c
  occurrences, any NEXT source with F ≥ 2, q ≥ 92 + δ, q + 3F ≥ 104 + δ,
  δ = 10·occ − 7·appOcc: dominated by a raw-class member.
- wp162_reader (all unary laws, symbolic), wp162_occurrences (a = 1, u = 0,
  so δ = 3), wp162_strip : strip 0 wp162 = reader162 (by decide: the
  contracted strip of the whole-prefix 162-shape reader IS the 162's reader).
- floor_of_dominated: any raw full-reader floor b gives 116 + b for every
  dominated member (so the conditional 46 ⇒ 162 transfers).
Axioms: propext, Quot.sound (+ Classical.choice for the frontier case split).

Remaining whole-prefix hypotheses after this: (A) the NEXT-side price,
i.e. for NEXT = canonical with its cell replaced by D, |D| ≥ 24 + δ
(S1 shape: round 3 gives |D| ≥ 27 = 24 + 3, enough exactly for a = 1, u = 0);
(B) readers with a ≥ 2 need |D| ≥ 24 + 3a (or q ≥ 115 via share).

### 3.3 Lean, part 3: general converters, depth-preserving
- iterShift / trg / trg_price: substituting a one-leaf converter κ for c
  costs exactly |κ| − 2 per occurrence (holeCost + 2·occ = holeCost + |κ|·occ),
  hole and depth unchanged.
- transfer_dominated: any V with a one-leaf converter, any number of
  occurrences f: dominated if q ≥ 92 + f(|κ|−2) and q + 3F ≥ 104 + f(|κ|−2).
Axiom log: lean/ValuesH3.axioms.log.

### 3.4 What the domination theorems do NOT use
NEXT's branch laws, its constructors, its normality, its tag discipline: only
FreeUnder 2 Q, F ≥ 2 (≥ 1 for share) and the price. So the "canonical
constructors" half of H3 is gone outright; the "raw-tail values" half is
replaced by "a converter exists". The NEXT side for whole prefix is now
exactly the question |Q| ≥ 92 + δ (with q + 3F ≥ 104 + δ), and for the
canonical NEXT with its cell replaced by D that is |D| ≥ 24 + δ.

### 3.5 Whole-prefix cells of other shapes: the 8 − 5 structure (sketch)
S1 = wrapper λu r. r (·) (8 bits: discard the leading F, open the tail) +
handler H with the whole-prefix parent call e F t'. Round 3: H ≥ 19 with
redexes (so D ≥ 27), H ≥ 26 normal. Raw cell C ≥ 24. So D − C ≥ 8 − 5 = 3,
exactly the reader-side converter price: the cell pays the strip once more.
A general-shape proof would show every D ≤ 26 decomposes into a ≥ 8-bit
F-discard/tail-opening wrapper and a ≥ 19-bit handler; the 211,642-term
space rules out a pinned check without that narrowing. Not done.

### 3.6 Whole-prefix cells: shape I complete; heads classified
Frame for the class-level statement: the canonical NEXT's cell sits in
[a, e, f, b, c, p] (f the body value, b the ABS tag = K, c and p rigid);
the 162's own frame [a, e, exp, bit1, list, cont, intL, x] agrees on the
first six slots' roles that matter below.
- **Shape I, D = λu. λr. B, every B (redexes, frame variables, any head):
  complete, computer-checked** (shapeI_check.py, exhaustive generation,
  no pruning): 1,764 bodies of ≤ 22 bits contain a and e; 1,698 fail the
  index-one law, 66 the index-two law, 0 pass, 0 fuel-outs. Controls: the
  round-3 34-bit cell and a 41-bit bit1-using cell pass both laws, the raw
  24-bit cell fails (shapeI_control.py). Completeness: B must contain a,
  e and r (else D F c is independent of c), so ≥ 3 leaves; a 4th leaf at
  frame index ≥ 4 (f/exp or beyond) costs ≥ 23 > 22; hence only r, u, a, e
  and local binders occur, and the enumeration over all terms is complete.
  This strictly contains round 3's λu r. r H family.
- Shapes II (λu. M, M not a λ) and III (no leading λ), by spine head
  (counts in the class frame, headclass_count.py; counting only):
  rigid heads a, e, f, c, p: impossible (D F c keeps a rigid head with
  arguments); u-headed (II): `u P Q…` = Q… since u is always F, so a
  minimal cell has none (a lone `u P` gives D F c = c); b-headed (b = K):
  `b P Q…` = P… is strictly smaller, `λu. b P` ignores c, and III's `b P`
  (= λy. P) reduces non-strictly to the shape-II cell λu. P↑ whenever
  P has ≤ 5 free leaves, which every P of ≤ 19 bits with a and e does.
  Residue: **redex-headed cells** (a non-erasing head β-redex = a let;
  6,113 in II, 65,368 in III before any minimality filter). For a minimal
  cell, contracting the head redex (λx. P) N must not shrink it:
  (m−1)|N| − 4 − 2m + Σ_i δ_i (fl(N) − 1) − fl_above(P) ≥ 0 (m uses of x at
  depths δ_i). Sharing a single variable needs m ≥ 7 uses of e (never at
  ≤ 26 bits); linear lets need δ(fl(N) − 1) ≥ 6 + fl_above. A finished
  argument would close the remaining (N, m, δ) profiles; not done.

### 3.7 Codex review (astra/high, label values-review; review.out) and fixes
Verdict: proofs and δ accounting correct (all checked theorems re-run);
no defect. Findings folded in:
1. (high) Coverage: the converter must decode with j rigid. A
   correctness-compatible V can use NEXT as its decoder: V_n = j (λx y. U_n)
   with the dispatch-first NEXT Q = λb. b A B gives V_n[Q/j] →* U_n, and no
   rigid-j converter exists (substitute j := λz. I: every V_n becomes I).
   So the schema covers *NEXT-independent* representations; NEXT-dependent
   decoding is class-bound §5's "reader laws only for the actual NEXT".
   (The example is dear: the value contains U_n anyway, the reader shares j
   through a let, and the canonical NEXT λb. p (λf. b …) does not decode it.)
2. (medium) F ≥ 2 must be explicit once NEXT's laws are dropped. Fixed:
   vnext_two_leaves derives it from any ABS-branch reduction of the shape
   Q K t →* p (λf. c X) t, X arbitrary; wholePrefix_dominated_law uses it.
3. (medium) Domination is a source-size comparison, not equivalence;
   phrase (i) as "the inequality does not use NEXT's constructor laws".
4. (medium) Interface still retained: two-argument continuation with rest
   exactly N, the zero law, reader scope [c, j], one source j, hygienic
   insertion, opaque knot, converter without access to j or recursion.
5. (low) VReader itself has no freshness/scope condition on V n; freshness
   is a separate hypothesis (sufficient, stronger than semantic).
6. (low) For the literal wp162 (cost 39, depth 1; wp162_price), any knot
   with q + F ≥ 99 already gives ≥ 162 directly. For canonical-with-D,
   F ≥ 4 makes the second inequality automatic, so domination ⟺ |D| ≥ 24+δ
   whatever extra c/p leaves D has.
