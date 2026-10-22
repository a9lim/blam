# single lane report (round 4, wave 5): (R-a) single-dispatch readers

**Result: (R-a) is closed for minimum readers below 46** (Codex reviewed the decisive
theorem and reran every check from scratch; §5).  The closing statement is stronger than (R-a) needs:

> **Theorem S.** No reader `R = λs. M` with `w(R) ≤ 45`, no λ of `M` above `j`, and a
> syntactic dispatch site (`s I W`, `x A W` with `λx. P` a direct argument of an `s`
> occurrence, or `s K A W`) exists.  More generally, no such reader contains an application
> `E W` with `j ∉ E W`, `|E| ≥ 6`, whose deletion `E W → W` keeps the unary laws `U1`, `U2`.

With class-bound §3's settled depth results (a minimum reader below 46 has `j` at depth ≤ 1,
and a depth-0 `j` is never a λ's argument), every λ-rooted minimum reader below 46 has `j`
at M-depth 0, and hoisted readers are not minima.  So no λ-rooted minimum reader below 46
carries a syntactic site at all.  That closes (R-a) (one site, σ 8–15), and also T1/T2/A2-
type readers, the opener family and (i)–(ii) wherever they carry a syntactic site; (iii)'s
under-applied dispatch is covered when it saves ≥ 8 bits (§3.5).

What remains below 46 (λ-rooted): readers with **no** unary-deletable application — the
cell-1 bit is never applied to two literal arguments; every dispatch is under-applied, a
let-shared dispatcher with an incompatible call, a bit passed as data, or stream
self-application (`s s`, `s (s K)`).  Plus application-rooted (root-let) readers.

No sub-162 interpreter.  All files in `tmp/round4/single/`; notes in `NOTES.md` §§0–18.

## 1. Interpreters built

None; no reader with `w ≤ 45` exists in the families examined.  Positive controls only
(`insert_ctl.py`): the core `V j` plus one insertion recovers exactly the 162's reader at
`|M| = 40`; `X29 j` recovers exactly the 47-reader at 41; `core20` plus one site through 42
gives nothing (as T1/T2 predict: the 164 needs two).

## 2. Exact identities and lemmas (all handwritten, small and checkable)

- **Site prices.** `σ(s I W) = 10 + i_s`; `σ(x A W) = |x| + |A| + 4`; `σ(s K A W) = 15 + i + |A|`
  with `|A| = 4i` when `A = j`.  A `(c)` site below 46 is exactly `s K j W` at M-depth 0:
  without `j` in `A`, `σ ≥ 17` and T1 applies; with `j` in `A` the core is j-free, so
  `39 ≥ 22 + 15 + |A|` (j-free cores cost ≥ 22; Codex rechecked all 16,459 j-free terms
  through 21) gives `|A| ≤ 2`, and a compound `A` holding `j` at depth 0 costs ≥ 4 (Codex's
  repair of my write-up).  Then `σ = 15` and the core is a j-free term of at most 24 bits.
- **Cheap sites.**  `σ = 8` iff the site is `x x W` (the only 6-bit unary identity is
  `v0 v0` with `v0 = F`); `σ = 9` iff `x t W` or `x u W`.
- **Touch lemma** (uses minimality).  A minimum reader's site is touched on the zero run and
  on some unary run (else replacing it by `W`, resp. by its zero arm, is lighter).
- **First dispatch.**  The generic head normal form of `M[cons b r/s]` is `b`- or `r`-headed.
  First dispatches coming from `s s`, `s (s I)`, `s (s F)`, `s t` or a `(c)` site are dead.
- **j outside the site.**  For a syntactic site `E W`, `j ∉ W` (the zero run discards `W`), and
  `j ∈ A` of an `x A W` site puts `j` under `λx`.  So `j` keeps its position when the site is
  deleted, except `s K j W`.
- **Prop Q-j.**  If `M = Q j` (`j` the last root operand, M-depth 0) and `Q` holds a site with
  savings `σ`, then `w = 8 + |X| + σ` with `X = Q[site → W]` and `X j = c U N` on unary, so by
  acheck `w ≥ 36 + σ`, and `≥ 37 + σ` unless `X = V`.  No minimality.
- **Theorem P** (Lemma A plus minimality).  With `j` at M-depth 0 its parent `Y j` has `Y`
  hygienic; if the head reduction presents `Y` with `j` as its only pending argument, a
  minimum reader is literally `λs. Y j`.
- **Lemma ZD.**  Let `S` be the largest unary-dead subterm of the core containing `j`.  Then
  `M'' = M'[S → s]` is a j-free unary core and `|M| = σ + |M''| + |S| − 2`.  If `|S| ≥ 9` then
  `M''` is `core22` and `S` sits in `s s S`, where the zero run erases it; one site cannot both
  fix the zero head and save `S` (`zd.py` confirms: 116 insertions, none R- or S-headed).
  Every smaller `S ≠ j` is j-headed, c-headed or erases `j` on zero.  So `j`'s parent is
  unary-needed in a minimum (R-a) reader.  (Superseded by Theorem S, kept as a tool.)

## 3. Impossibility results, with hypotheses and status

All weights are `w = cost + 4·depth(j)`; "reader" means both laws for every `n`; "j at
M-depth 0" means `R = λs. M` with no λ of `M` above `j`.  Probe caveat: narrowing tests
`U1, U2`; every insertion is tested on the zero law and `U1..U3`; a refutation at the probes
is a refutation.  Every run below stayed under 100,000 states or terms, 2 minutes, one
thread, small memory.

**3.1 `(c)` sites** (computer, `ccase.py`; no minimality beyond T1 for `σ ≥ 16`).  All
80,976 j-free terms of cost 22–24 give exactly three unary cores (`core22`, `core23`,
`s (λq.c) (s s I)`); all 27 insertions of `s K j` at λ-depth-0 positions fail zero.

**3.2 acheck through 29 bits** (computer, narrowing).  The only `X` over `[s, c]` with
`|X| ≤ 29` and `X j = c U N` on `U1, U2` are `V = λu. s (λq.c) (s s u)` and
`X29 = λu. s (λq.c) (s s s)`.  λ-rooted `X`: one template, 12,740 states; application-rooted
`X = X1 X2` split by `X1`: `s` 18,649 states, λ 39,754, application 45,761, all empty
(`c`-headed `X1` dies at once).  Two fuel cut-offs, `G G` with `G = λx. x ((λy. x) _)` and
`H H` with `H = λx. x (I x)`; both `G` and `H` reduce to `Δ = λx. x x` whatever the
filler, so both are `Ω` (Codex's cleaner proof of my handwritten one).  This extends Codex's repaired acheck (through 28) by one bit.

**3.3 Theorem S** (computer-checked partition + handwritten reductions).  Hypotheses: a
reader `λs. M`, `w ≤ 45`, `j` at M-depth 0, and an application `E W` in `M` with
`|E| ≥ 6`, `j ∉ E W`, such that `M[E W → W]` satisfies `U1, U2`; or a syntactic site
(which satisfies these, apart from `s K j W`, which is 3.1).  Conclusion: impossible.
Proof: the core `M' = M[E W → W]` has `|M'| ≤ 31` and `j` at the same path `p` (all
application nodes, `j` an argument).  For each `p`, untabled needed narrowing
(`types/narrow.py --prefix`, which fixes `p` and leaves every sibling a hole) lists every
unary core as templates; fillers are expanded within the slack; then every j-free `E` at
every position with `|M| ≤ 39` is inserted and both laws tested.
- `p = R`: by 3.2 `M' ∈ {V j, X29 j}`; `pathR.py`: 253 insertions, 0 readers.
- `p = L^a R` (`j` a non-last root operand): templates `(λu. s (λq.c)) j (s s _)`,
  `(λu. s) j (λq.c) (s s _)`, `(λu. s) j (λq.c) (s (λx. s s))`; `alpha.py` 2,501 insertions.
- `p = RR`: 80,695 states, 61 templates, 113 cores, 49,043 insertions (`beta1.py`).
- every other `p` of length 3–7 (`paths.py`): length 3: 85,351 states, 17,726 insertions;
  4: 57,900 / 7,361; 5: 27,640 / 214; 6: 9,552 / 0; 7: 2,226 / 0.  Length ≥ 8: the prefix
  alone costs `6 + 4·8 = 38 > 37`.
- 0 readers in every run.  Fuel cut-offs: five in all (`L R` two, `RR` one, the `X` splits
  two), each the `G G` or the `H H` loop of 3.2, without a head normal form.
Totals (disclosed): the decisive narrowing runs sum to about 447,000 states (path R and the
`X` splits 117k, `L^a R` 67k, `RR` 81k, the other paths 182k) and the insertions to about
77,000, in about 130 runs, none over the cap; two exploratory runs stopped at the 100k-state
limit and were not used (`\s. (_ _) j` and `_ j` at 37), and one exploratory run of 82k
states (`\s. _ j` at 36) was superseded by the split runs.  The template list is `cores37.txt`
(110 templates).  Validation: `xcheck.py` and `xcheck23.py` compare brute force over every
term with `j` at M-depth 0 against the union of the path narrowings: cost ≤ 22 (60,427
terms) and exactly 24 (92,788 terms) agree on every core whose `j` is not applied (the one
extra brute-force core at 24, `s (λq.c) (s s (j s))`, applies `j`, which a reader never does).

Theorem S is sharp: at `w = 46` the 162's reader has the site `s I V` with `j` at M-depth 0,
and the same pipeline at one more bit of budget recovers it (and the 47-reader at 47).

**3.4 Corollary for (R-a)** (uses minimality only through class-bound §3's settled depth
results).  A minimum reader below 46 that is λ-rooted has `j` at M-depth 0, and a hoisted
`(λa. λs. M) j` is a depth-0 reader whose `j` is a λ's argument, which is never a minimum.
So no minimum reader below 46 that is λ-rooted or hoisted has a syntactic site: **(R-a) is
empty**, and so are the λ-rooted T1/T2/A2-type, opener, (i) and (ii) readers wherever they
carry a syntactic site, and let-shared dispatchers whose unary calls are all compatible
(zcore's S1 makes their dispatch unary-deletable with `j ∉ E W`, since the let argument sits
under its λ).  (iii)'s under-applied dispatch is not a syntactic site; 3.5 covers it when
`|x| + |A| ≥ 10`.

**3.5 Small replacements** (computer, `rev_small.py`).  For the same readers, no j-free
subterm `E` can be replaced by `I` (`|E| ≥ 12`, 30,832 cases), `F` (`|E| ≥ 14`, 16,124) or
`K` (`|E| ≥ 15`, 12,335) keeping `U1, U2`.  So under-applied bit dispatches `x A`
(`F A →β I` on unary) with `|x| + |A| ≥ 10` are excluded too.  The reverse of zcore's S2
edit (`rev_s2.py`: inline a selector call's `A`, delete the dispatch) has no candidate within
`|M| ≤ 39`, but the review (§5) found it proves less than I first claimed: it covers a
dispatcher `λy. y A W` with the dispatch at the body's root, `A` free of `y` and of the let
body's binders, and exactly one call `g K`.  Two disjoint selector calls of at least 7 bits
are excluded by a direct count (Codex): the calls cost ≥ 22, their let body ≥ 24, the
dispatcher ≥ 12, the let 4, and `j`'s application 2, so `|M| ≥ 42`.  Not covered: `A`
depending on `y`, a dispatch below the dispatcher's root, selector aliases under 7 bits, and
nested selector calls.

## 4. Honest read and next step

**What changed.**  The (R-a) residue was "one site, σ 8–15, core 24–31 bits, too many to
enumerate".  The obstacle was enumerating cores *by cost*; enumerating them *by the
unary law* is small.  Needed narrowing on the unary laws alone, with `j`'s position pinned
as a prefix (j is unary-dead, so narrowing never places it), lists every λ-rooted unary core
of `w ≤ 37` in 110 templates; any unary-preserving simplification that saves ≥ 8 bits lands
in that list, and its reverse is a finite insertion.  That closed the site case outright,
with no case analysis on the site, the redexes or the sharing.

**Where a sub-162 could still hide.**  Only in readers that have no cheap unary-deletable
structure at all:
1. a let-shared dispatcher with an incompatible unary call that is not a cheap selector
   ((R-b); witnesses R99, R93 at 93–99): a call `g c`, `g s`, `g t`, `g j` or `g g` reuses
   both arms, so neither deleting the dispatch nor inlining the call simplifies the reader;
2. under-applied bit dispatches `x A` with `|x| + |A| ≤ 9`, whose second argument arrives by
   reduction (with the cell's tail as that argument the unary run reads cell 2);
3. stream self-application dispatches (`s (s K)` is `K` on zero, `r` on unary; replacing it
   by `s F` saves only 5 bits);
4. application-rooted (root-let) readers, where the same narrowing overflows (`_ j` at 37).
I think 1 is the real frontier: it is the only mechanism that lets one computation serve
both roles without a deletable arm (§3.5 excludes only the simplest selector-call cases).

**Next step (technique).**  (a) For (R-b) with non-selector calls, deletion arguments run
out; the natural finite route is two-law needed narrowing with the shared-dispatcher skeleton
as the prefix (`\s. (\g. _) (\y. y _ _) …`, both laws, `w ≤ 45`), where the zero law prunes
much harder than in the unary-only runs; zcore's FC1/FC2 are its two smallest cells.  A
probe (`NOTES.md` §15, not a result): `\s. (\g. _) (\y. y _ _)` with both laws at
`w ≤ 45` has 13,481 states and no reader, but 90 fuel cut-offs, still uncertified (the 20
printed all have let body `g g`, i.e. `λs. H H`); certifying them would exclude every reader
`λs. (λg. B) (λy. y A W)` below 46, whatever `B`.  (b) Raise the core budget to `w ≤ 39`
(simplifications saving ≥ 6): the big paths grow about 1.5× per bit and would need a proved
single-role tabling lemma (with `j` fixed in the prefix and `c` forced needed, the
orphan-merging bug of the types review should not arise; that needs a proof).  (c) For
root-let readers, the analogue needs a different prefix family (the stream arrives after
`j`).

## 5. Review

Codex (astra, high effort; thread `single-thmS-review`; `review/codex1.out`,
`review/THEOREM_S_REVIEW.md`): **correct as a computer-assisted exclusion**, no
counterexample.  It reran `ccase.py`, the four `X` narrowings, `pathR.py`, the controls,
`xcheck.py`, and the whole path partition from scratch (126 paths of length 2–7: 329,895
states, 76,845 insertions, 0 hits, 0 uncertified caps; 21.8 s, two workers), and audited the
narrowing's completeness (head holes may become λs when `betanormal` is off; the missing-`c`
charge is conservative; fillers and inserted `E` use the right frame; the length bound
`6 + 4ℓ`).  Repairs adopted: the explicit budget argument for `j ∈ A` in a `(c)` site (§2);
type (b) means the source contains `s (λx. P)` literally; the general form needs
`j ∉ E W`, not just `j ∉ E` (with `W = j` in function position a deletion can leave `j`
applied).  It also tried 76 local absorber repairs of the 39-bit near miss through weight 47,
all failing.  Not re-proved: class-bound §3's depth results, which the minimum-reader
corollary uses.

A second consult (same thread; `review/codex2.out`, `review/ADDON_REVIEW.md`) checked §3.5:
`rev_small.py` **correct** (all three runs reproduced; the 247 expanded cores rebuilt
independently, exact set equality; consequences hold for a genuine cell-bit binder, i.e.
`s (λx. P)` in the source).  `rev_s2.py`: the restricted computation is correct, but my
general S2 claim was **broken as a proof** (S2's forward edit is not a plain copy of `A`
when `A` mentions `y`, the dispatch may sit below the root, selectors may be cheap local
aliases, and the docstring promised pair calls the code does not try); §3.5 now states only
the restricted result and Codex's two-call count.

## Files

`ccase.py` (+`ccase_ctl.py`), `zd.py`, `insert.py` (helpers; `insert_ctl.py` controls),
`alpha.py`, `beta1.py`, `narrow_all.py`, `paths.py`, `pathR.py`, `j1s.py`, `xcheck.py`,
`xcheck23.py`, `convany.py`, `rev_I.py`, `rev_small.py`, `rev_s2.py`, `path_*.json`,
`beta1.json`, `cores37.txt` (the 110 core templates), `count29.py`, `review/`.  The narrowing
engine is `tmp/round4/types/narrow.py`, unchanged.  Reproduce from this directory, e.g.
`python3 paths.py 4 LLLR` (about 10 s) or `python3 beta1.py beta1.json`.
