# Minimality filters used by narrowmin.py, and why each is sound for minimum readers

Order: a **minimum** is a global minimum, among readers satisfying the zero law and the unary
law at every length with exactly one source `j`, of (weight, source λ count, depth of `j`)
(class-bound §3). Every filter is a property every minimum has at every source position. None
holds for arbitrary readers, so every result obtained with them is a statement about minimum
readers only ("no minimum reader below 46 has shape X"), unlike adv6's no-minimality runs.

**Why filtering complete subterms is sound inside needed narrowing.** The search reaches a
reader R* of weight <= B along the path that refines holes exactly as in R* (narrow.py's
completeness argument). On that path every refined position agrees with R*; a subterm with no
unrefined hole is therefore literally R*'s subterm at the same position and depth. Each filter
reads only complete subterms (or, for LIN0 and ERASE, a complete λ-body with the argument
still open, which is also R*'s). If R* is a minimum it passes every filter, so pruning never
loses it. Filters run only on leaf fills, the only refinements that can complete a subterm.
Tabling (narrow2) is NOT used: filters depend on the partial term's past, not only on its
residual problem, so the residual memo would no longer be sound.

Notation for a redex `(λx. B) A` at absolute depth δ: `m` uses of x in B at λ-depths summing
to `D`; `F` = outer leaves of A (bound outside A, or c), j counted 4; `G` = outer leaves of B
other than x, j counted 4; `w(A)` its weight at δ. Exact contraction price
`S = (m−1)w(A) + (F−1)D − 2m − 4 − G` (SelfintLocalCost.weighted_beta_at, [L]); the
implementation was audited against direct contraction on 13,605 random redexes (audit.py, [C]).

| filter | statement | proof |
|---|---|---|
| ERASE | no redex with m = 0 | SelfintLocalCost.minimum_source_non_erasing [L] |
| LIN | m = 1: (F−1)D ≥ 7 + G | SelfintLocalCost.minimum_linear_source_charge [L] (Lex) |
| LIN0 | m = 1 and the use at λ-depth 0 (D = 0): impossible, decided before A is complete | LIN with D = 0 [L] |
| SHARE | m ≥ 2, j ∉ A: S ≥ 0 | SelfintLocalCost.minimum_source_sharing_charge [L] |
| SHARE0 | m ≥ 2, j ∉ A, S = 0, A λ-free: excluded | contraction ties weight and changes λ count by (m−1)L(A)−1 = −1 [H on L arithmetic] |
| ETA | no λx. P x with x ∉ P | rootcert minimum_no_eta [L] |
| ROOTJ | root redex (λx.b) a C⃗ with j ∈ a: 3 d_A ≤ (m−1)(wire a − 3) + f(D+m) + f_C | SelfintSourceCost.minimum_argument_charge [L] |
| PROF | root redex: w ≥ 4k + 22 + 4d + tax | rootnf RootProfile.root_weight_tax_charge [L] |
| JAPP | source j is never the head of an application | every residual of an applied rigid j stays applied; the zero output `r j` has j bare [H] |
| JINC | j never inside an argument of a c-headed spine | residuals stay inside c-applications; `r j` contains no c [H] |
| JCOPY | m ≥ 2, j ∈ A: excluded when, for every choice of retained copy, contracting and renaming the other copies to c is lex-smaller | β keeps the laws; the zero output holds exactly one colour, renaming the others (rigid → rigid) commutes with reduction and leaves every output unchanged; saving 3h−2 per copy (rootlow repair_price [L]) [H] |
| NF-vanish | no complete subterm X has a normal-order reduct with no j, or with every j copy dead (JAPP/JINC sense) | R =β R[X'/X]; free variables are never created, dead copies stay dead [H] |
| NF-div | complete X with no whnf (cert.py criterion C1, valid for open X): if j ∈ X, j is dead; if j ∉ X, X is never reduced on a terminating normal-order run, so replacing it by c keeps every law and is lex-smaller | [H] |
| NF-lex | complete X with a normal form X*: excluded if R[X*/X], colour-repaired as in JCOPY, is lex-smaller for every retained copy | R =β R[X*/X] [H] |

Used as the residue's definition, not as filters proved here: j at depth ≤ 1 (depth ≥ 2 closed
under minimality, depth02 Results A/D [C]); `--rootk` restricts the root multiplicity to 2–4
(linear root lets closed, rootlow [C+L]; k+d = 5 closed, rootlet/rootcert [C+L]). Where a run
used `--rootk 0,99` it depends on neither. Optional `--jarg` (no `(λy.P) j` at depth 0, depth02
Results B/C/E [C]) is used by no final result.

# Cut-off certificates (every one shows a law fails for EVERY filling of the open holes)

All run on the zero-law probe `R Z` with holes as rigid constants; a head step whose head is not
a hole lifts to every filling (shared lane §3.0). Methods, in the order certgen.py tries them:

- **cert.py** (shared lane): C1 head cycle `S ->+ S e⃗` (low-water refinement), C2 hnf mismatch.
- **W5** (certw5.py; review_types §5, generalized to trailing W⃗) [H]: `A = λa b. b H b W⃗` gives
  `A X A Y⃗ ->h A H' A W⃗' Y⃗`: same head, second argument A again; no hnf.
- **SR** (certgen.py, self-reproducing head) [H]: if `h c1..cp` with an abstracted subset of the
  c_i fresh rigid constants (never in head position) head-reduces, without popping below its p
  arguments, to `h T1..Tp R⃗` with T_i = c_i at every kept position, then substituting the actual
  arguments gives `h X⃗ Y⃗ ->h+ h X⃗' R⃗' Y⃗` with the kept positions unchanged, forever.
- **SF'** (certsf.py; shared lane Lemma SF, relaxed) [H]: dispatcher `h = λz. z A⃗` (closed),
  templates = every λ- or redex-spine subterm of h's body in argument position, each with its
  free variables as parameters; B = {h} ∪ {template instances with S' parameters} ∪ {closed
  terms head-reducing to a B-λ}; S' = spines `X0 A1 ..` with X0 ∈ B and A1 ∈ S' (later
  arguments arbitrary). If `h #Z` and every template instance applied to `#Z` head-reduce
  (>= 1 step, no fresh constant forced) to an S'-head with an S'-first argument, the head-state
  invariant "X0 ∈ B applied to a first argument in S'" is preserved forever: no hnf. A first
  version skipped checking `h #Z` itself and accepted `Δ(λz. z (z (z (z (z F)))) W)`, whose run
  puts W at the head; caught by inspection and fixed before any recorded use.
- **re-narrowing** at fuel 3000 from the cut-off's show-string (a cut-off is a fuel limit, not a
  verdict; e.g. `(λx. x ((x x) W))(λz. z (z (z (z I))))` needs W since `A A ≡ I`).
- **Hand proofs** [H], cell H1: `A = λa b. a (λd. a d V)` (chains 𝒢), `λa b. a (λd. d (a d))`
  (towers H^n, induction P(m,n)), `λa b. a b (a b)` (states A T_k T_m R⃗), `λa b. b (b (a a) b)`
  (P-like invariant, reached at step 5, checked by script); cell H1b: `λz w s. Δ3 (w s)`
  (SF with a 2-ary base: every head state has >= 3 arguments).
