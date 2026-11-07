# nextctor: a cheaper NEXT of arbitrary syntax — constructive side

**No NEXT in the open regions was found.** Every design below was priced by
hand first, then checked with `chk.py` (lane-local: BLC pricer in the frame
[c, p], normal-order normalizer, rigid c, p, t, normal forms of both branch
laws compared). Cheapest per free-leaf count:

| F | best q | design | q + F (in the 162: 24+42+q+F) |
|---|---:|---|---:|
| 4 | 92 | canonical | 96 (162) |
| 4 | 93 | dispatch the first parse's continuation | 97 (163) |
| 4 | 96 | selected head `b c p` + merged binder | 100 |
| 3 | 99 | p-let (also widen's shareP) | 102 |
| 3 | 99 | c-let placed before λf (Codex's, `λb. p ((λC f. b (C Abs) (p (λg. C App))) c)`) | 102 |
| 3 | 101 | c as a shared third tag argument | 104 |
| 3 | 102 | single c via a no-op second parse `λk. k k` | 105 |
| 2 | 105 | both lets (widen's Qlet / shareParameters) | 107 |

The open regions need q <= 91 (F=4), q <= 94 (F=3), q <= 97 (F=2); a
direct 161 needs q + F <= 95. The nearest constructions sit 1 (canonical
92 against 91), 5 (99 against 94) and 8 (105 against 97) bits of q above the
regions. One complete interpreter was built, the 163-bit splice of the
cheapest non-canonical NEXT, to confirm the arithmetic; every other
candidate would be >= 166 in the 162. Complete sweeps (L5, L6) cover every
source within three β steps of the canonical NEXT and every long tag spine
with up to two shared arguments.

## 1. Complete interpreters

| file | written | polished | battery | idea |
|---|---:|---:|---|---|
| `contdisp163.lam` | 163 | 163 | `163 bits  ok=667 skip=1 fail=0` | the 162 with NEXT `λb. p (b (λf. c Abs) (λf. p (λg. c App)))` (q 93, F 4): confirms the splice arithmetic 24 + 42 + q + F |

Polish: `letopt --max-cuts 3` smallest 163; `--no-inline --max-cuts 2`
smallest 163; both renderings re-batteried `ok=667 skip=1 fail=0`.
No sub-162 claim.

## 2. NEXT ledger (all laws checked by `chk.py`; prices handwritten first, all matched)

Abs = `λe a. f (λx y. x a (y e))`, App = `λe. f e (g e)`, cell = `λx y. x a (y e)`.

| # | source | q | F | family / prompt route |
|---|---|---:|---:|---|
| 0 | `λb. p (λf. b (c Abs) (p (λg. c App)))` | 92 | 4 | canonical |
| 1 | `λb. p (b (λf. c Abs) (λf. p (λg. c App)))` | 93 | 4 | dispatch at the first parse's argument |
| 2 | `λb. p (λf. b c p (λz. b (λa. f (λx y. x a (y z))) (c (λe. f e (z e)))))` | 96 | 4 | selected head; one binder z is Abs's λe in ABS and APP's λg in APP |
| 3 | `(λP. λb. P (λf. b (c Abs) (P (λg. c App)))) p` | 99 | 3 | one p reference (let); also under λb: 99 |
| 4 | `(λP. λb. P (b (λf. c Abs) (λf. P (λg. c App)))) p` | 100 | 3 | p let + #1 |
| 5 | `(λC. λb. p (λf. b (C Abs) (p (λg. C App)))) c`; `λb. p (λf. (λC. b (C Abs) (p (λg. C App))) c)` | 100 | 3 | one c reference (let) |
| 5' | `λb. p ((λC f. b (C Abs) (p (λg. C App))) c)` | 99 | 3 | the c-let as p's argument (Codex's consult) |
| 6 | `λb. p (λf. b (λk. k Abs) (λk. p (λg. k App)) c)` | 101 | 3 | c as shared third tag argument |
| 7 | `λb. p (b (λk f. k Abs) (λk f. p (λg. k App)) c)` | 101 | 3 | same at the continuation level |
| 8 | `λb. p (λf. b (λk.k k) p (λg. c (λe. b (λa. f cell[e]) (f e (g e)))))` | 102 | 3 | one c serving both returns via a no-op second parse (prompt's "~+11") |
| 9 | same with the value dispatch outside λe | 103 | 3 | |
| 10 | `λb. p (λf. b (λh. c Abs[h]) (λh. p (λg. c App[h,g])) f)` | 103 | 4 | f as shared tag argument |
| 11 | `(λP C. λb. P (λf. b (C Abs) (P (λg. C App)))) p c` | 105 | 2 | both lets |
| 12 | `(λP. λb. P (λf. b (λk. k Abs) (λk. P (λg. k App)) c)) p` | 107 | 2 | p let + #6 |
| 13 | `λb. p (λf. (λk. b (k k) (p k)) (λg. c (λe. b ...)))` | 108 | 3 | shared continuation as a let (junk `k`; `b`/`f` junk 110/109) |
| 14 | `(λP. λb. P (λf. b (λk.kk) P (λg. c (λe. b ...)))) p` | 108 | 2 | p let + #8 |
| 15 | `λb. b (λk. p (λf. k Abs)) (λk. p (λf. p (λg. k App))) c` | 109 | 4 | dispatch first, c shared |
| 16 | `λb. (λk. p (b (k k) (λf. p (k f)))) (λf g. c (λe. b (λa. g cell) (f e (g e))))` | 114 | 3 | one continuation for ABS's first parse and APP's second |
| 17 | `λb. b (λP k. P (λf. k Abs)) (λP k. P (λf. P (λg. k App))) p c` | 113 | 2 | dispatch first, p and c shared (= widen's Qfour) |

No design reaches a region. The prompt's routes, priced: one c serving both
returns +10 (#8, needs a no-op parse and a second dispatch); one p serving
both parses +7 (#3); c from a tag argument +9 (#6); f from a tag argument
+11 (#10); dispatch moved to the first parse's argument +1 (#1); a binder
shared between ABS's value and APP's parse +4 (#2). Under rigid laws the
tag, the stream and the values cannot supply c or p at all (b is K/F, t, f, g
are rigid), so "obtaining c or p from an argument" reduces to routing the
frame's own leaf through a new binder.

## 3. Identities and lemmas

**L1 (computer-checked, complete).** A no-op parser, `N k t =β k X t` for
rigid k, t and some X, costs at least 8 bits: `noop.py` enumerates every
term of size <= 9 over the frame [c, p] and finds exactly `λk. k k` (8) and
`λk. k c` (9). So routing ABS's return through APP's second-parse
continuation pays >= 8 for the parser plus a selection between it and p.

**L2 (handwritten).** *A continuation shared by APP's second parse and
ABS's return must depend on the tag.* Let W have no free b (nor any
variable bound to a b-dependent term), and suppose `W =β c App(f,g)` with g
rigid (W is the body of the continuation p receives in the F branch). Then
for every X, `W[X/g] =β c (λe. f e (X e))` (β-equality is closed under
substitution), and this is never `=β c Abs(f)`: `λe. f e (X e)` is a head
normal form with one λ, head f and two arguments, `λe a. f (cell a e)` has
two λs, head f and one argument, and β-equal terms with head normal forms
have the same number of leading λs, the same head and the same number of
arguments. The same argument shows a b-free value V with
`V =β App(f,g)` (g rigid) gives `V[X/g] ≠β Abs(f)`. Hence one source c
serving both returns always pays a second tag test (b leaf >= 3 bits plus
two applications) on top of L1's parser: the floor behind #8, #9, #13, #16.

**L3 (handwritten).** *Long tag spines are two-arm merges at an
application.* `b B1 B2 Z1..Zm = (b B1 B2) Z1..Zm` is, node for node, the
two-arm merge of the prunes `T0 = B1 Z⃗`, `T1 = B2 Z⃗` at their common
application nodes, Z⃗ being their common right subtrees. So for a β-normal
source with arbitrary spine lengths, the only hypothesis of the
four-target merge proof that fails is normality of the prunes: `B1 Z⃗` may
be a redex. Long spines add nothing beyond source redexes whose argument
is shared by both arms. Two consequences:
- If z is vacuous in one arm (`B2 = λz. B2''`, z unused), then
  `b (B1 Z) B2''` has the same laws and is exactly 2 bits smaller (same
  applications, same Z depth, B2'' references one binder shallower), so a
  minimum counterexample has no shared argument erased by one arm.
- Push-in. With `B_k = λz. B_k'`, z linear in each arm at index i_k, Z
  having G_Z leaves free in Z and F_Z free c/p leaves, and s_k the leaves of
  B_k' that refer outside B_k, replacing the spine by
  `b B1'[Z/z] B2'[Z/z]` keeps both laws and changes
  `Δq = |Z| − 10 + (G_Z − 1)(i1 + i2) − s1 − s2`, `ΔF = F_Z`.
  For Z a single c or p leaf at binder depth d (|Z| <= d + 3, G_Z = F_Z = 1):
  `Δ(q + 3F) <= d − 4 − s1 − s2`, never positive for d <= 4. Shared
  single-leaf spine arguments with linear arms are therefore dominated in
  both potentials (q and q + 3F) at the depths where NEXT's leaves live.
  Arithmetic of the exact source counts; not Lean-checked.

**L4 (handwritten bookkeeping, standard).** Every λ and application node of
the normal forms NF0 = `p (λf. c Abs(f))`, NF1 = `p (λf. p (λg. c App(f,g)))`
is a residual of a node of Q (K's and F's λs cannot survive: neither normal
form has a vacuous λ or an `λy. y` subterm; the rigid t contributes only the
final application). The canonical Q is exactly the union of NF0's 18 nodes
and NF1's 16 sharing only the prefix `p·(λf. ·)` (3 nodes), plus 4 nodes
consumed in both branches (λb, the b leaf, two dispatch applications): 35
nodes, L 8, A 13, 14 leaves, size `70 + X` with index sum X = 22. As closed-up
material NF0 and NF1 have in common only the leaves p, c, f; every other
merge diverges immediately (heads c vs p, then λa vs c) and pays a tag test
per divergence, which is why #2 (one merged binder) costs +4. A shared λ
needs its two bodies to be instances of one source body, and since
substitution is capture-avoiding an argument cannot reach the shared
binder: `λh. c (λe. h e)` shares c, its application and λe, but each arm
then supplies a λe' that is consumed. This is a framing for the
residual/origin proof the widen lane suggested, not a bound.

**L5 (computer-checked, complete within the stated family; Codex's
argument for level 1, independently reproduced).** *Sources within three β
steps of Q0.* `invbeta*.py` enumerates every non-erasing inverse-β
expansion (any site, any argument liftable to the site, any nonempty
subset of its occurrences, nested choices excluded; contraction back is
asserted). Minimum q per F:

| sources | count | F=4 | F=3 | F=2 |
|---|---:|---:|---:|---:|
| one step above Q0 | 121 | 98 | 99 | — |
| two steps above Q0 | 16,157 | 104 | 105 | 105 |
| three steps above Q0 | 2,374,981 (17 s) | 106 | 105 | 111 |
| one / two steps above #1 (93) | — | 99 / 105 | 100 / 106 | — / 106 |
| one / two steps above #2 (96) | — | 102 / 108 | 103 / 109 | — / 109 |
| one / two steps above #6 (101, F 3) | — | — | 107 / 113 | 107 / 113 |

So every source with a non-erasing reduction path of length <= 3 to the
canonical Q0 is either Q0 or has q >= 98: none lies in a region, and none
gives q + F <= 95. Codex's closed form for level 1: sharing two occurrences
of a variable of index i, with E leaves free relative to the site, changes
size by `E + 4 − i`; Q0's only repeated arguments are p (+7), c (+7), f
(+10) and APP's e (+8), and it has no repeated compound argument. Erasing
expansions (vacuous binders) add `|N| + 4` and are omitted. The per-step
minimum increment falls (6, 3, 0) because an expansion can create
repeated material, so this does not extend to unbounded depth by
monotonicity.

**L6 (computer-checked, complete within the stated family).** *Long tag
spines on every dispatch base.* `spine.py` builds
`b (λz. X[z/SX]) (λz. Y[z/SY]) Z` for every Z liftable to the dispatch
point from a subterm of either arm and every pair of occurrence subsets
(not both empty), then a second shared argument the same way, then one
inverse-β expansion of each level-1 source; `spinecheck.py` verifies the
laws of all 215 spine sources. Bases: Q0, #1, and dispatch-first
`λb. b (p K_A) (p K_P)` (99). Minima: one shared argument F3 101 / F4 102
(Q0, #1), F3 105 (DF); two shared arguments >= 109 (F2 112); one shared
argument plus one expansion >= 106 (F2 107). None in a region.

## 4. Honest read

Inside the separated class's rigid laws I found no slack at all: the
cheapest non-canonical NEXT is 93 (F 4), the cheapest with three free
leaves 99, with two 105. Each route the prompt listed has an identifiable
floor (L1, L2, L3) and every measured instance clears the widen frontier
`q >= 92, q + 3F >= 104`: F=3 at 99 gives q + 3F = 108 (5 bits of q above
the region's 94), F=2 at 105 gives 111 (8 above 97), and no non-canonical
F=4 source found or swept is below 93. Removing free leaves cost +7 for one
and +13 for two in every family built or swept (L5, L6 are complete within
their families), against the 3 per leaf the frontier needs, so the F = 2 and
F = 3 regions look empty with room to spare; q <= 91 at F = 4 would need
sharing of material other than c/p leaves, and NF0, NF1 have none (L4).

The proof route I would take for the widen lane's open cases is the one L3
and L4 suggest: (i) long spines reduce to source redexes with arguments
shared by both arms (L3), (ii) such arguments are either one free leaf
(dominated by push-in at the relevant depths) or material whose residuals
must be common to NF0 and NF1, and (iii) the only common material is the
three leaves, so every sharing pays a consumed binder or a tag test per
shared node. Step (iii) is the real theorem and is not proved here.

A cheaper NEXT, if one exists, is outside the rigid laws: it would have to
use the genuine p (the reader `s I V Q`), the genuine streams (a variable's
value is its own code suffix), or the reader's binder s — i.e. the +17
embedding territory, not this lane's.

What the sweeps leave open, precisely: sources whose shortest non-erasing
path to a law-obeying normal base is four or more β steps; bases other
than Q0, #1, #2, #6 and dispatch-first (e.g. normal sources using the tag
as an argument or with one argument, `b b`, `b X` passed on); and erasing
steps that a later sharing step might repay. Codex's read (consult,
job cx-20261021-233815-7f07) agrees that the remaining opening is
tag-specific simplification or interacting redexes, not single lets.

## Files (all in this lane directory)

- `chk.py` — pricer in the frame [c, p] and rigid-law checker (normal forms
  of `Q K t`, `Q F t` against the targets).
- `noop.py` — L1. `invbeta.py`, `invbeta2.py`, `invbeta3.py`, `invbase.py` —
  L5. `spine.py`, `spinecheck.py` — L6.
- `contdisp163.lam` (+ two polished renderings `tmp*.blc`) — the splice.
- `consult1.md` / `consult1.out` — the Codex consult and its reply.
- `NOTES.md` — running notes.
